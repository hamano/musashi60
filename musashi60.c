/* Copyright 2021 HAMANO Tsukasa
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

#include "analog.h"
#include "print.h"
#include "pointing_device.h"
#include "musashi60.h"

// Optional override functions below.
// You can leave any or all of these undefined.
// These are only required if you want to perform custom actions.

static int is_left;
static int is_master;

void keyboard_pre_init_kb(void) {
    //debug_enable = true;
    is_left = is_keyboard_left();
    is_master = is_keyboard_master();
}

#ifdef POINTING_DEVICE_ENABLE

#define POINTING_H_PIN F4
#define POINTING_V_PIN F5
#define POINTING_SPEED 6
#define POINTING_MAX ((1 << (9 - POINTING_SPEED)) - 1)

static report_mouse_t mouseReport = {};

void pointing_device_init(void) {
    setPinInput(POINTING_H_PIN);
    setPinInput(POINTING_V_PIN);
}

void musashi60_set_mouse(uint8_t x, uint8_t y) {
    mouseReport.x = ( x >> 4 ) - 8;
    mouseReport.y = ( y >> 4 ) - 8;
    if (mouseReport.x < 0) mouseReport.x++;
    if (mouseReport.y < 0) mouseReport.y++;
    if (mouseReport.x || mouseReport.y ) {
        dprintf("set_mouse: %d, %d\n", mouseReport.x, mouseReport.y);
	pointing_device_set_report(mouseReport);
    }
}

void musashi60_set_wheel(uint8_t x, uint8_t y) {
    mouseReport.h = ( x >> 6 ) - 2;
    mouseReport.v = ( y >> 6 ) - 2;
    if (mouseReport.h < 0) mouseReport.h++;
    if (mouseReport.v < 0) mouseReport.v++;
    mouseReport.v *= -1;
    if ( mouseReport.h || mouseReport.v ) {
        dprintf("set_wheel: %d\n", mouseReport.v);
        pointing_device_set_report(mouseReport);
    }
}

void pointing_device_task(void) {
    uint8_t x, y;
    x = (analogReadPin(POINTING_H_PIN) >> 2);
    y = (analogReadPin(POINTING_V_PIN) >> 2);
    if ( is_master ) {
        musashi60_set_wheel(x, y);
    } else {
        musashi60_send_axis(x, y);
    }
    pointing_device_send();
}

#endif

/*
void matrix_init_kb(void) {
    // put your keyboard start-up code here
    // runs once when the firmware starts up

    matrix_init_user();
}

void matrix_scan_kb(void) {
    // put your looping keyboard code here
    // runs every cycle (a lot)

    matrix_scan_user();
}

bool process_record_kb(uint16_t keycode, keyrecord_t *record) {
    // put your per-action keyboard code here
    // runs for every action, just before processing by the firmware

    return process_record_user(keycode, record);
}

bool led_update_kb(led_t led_state) {
    // put your keyboard LED indicator (ex: Caps Lock LED) toggling code here

    return led_update_user(led_state);
}
*/
