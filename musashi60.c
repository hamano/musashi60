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

#ifdef POINTING_DEVICE_ENABLE

#define POINTING_H_PIN F4
#define POINTING_V_PIN F5
#define POINTING_SPEED 6
#define POINTING_MAX ((1 << (9 - POINTING_SPEED)) - 1)

report_mouse_t mouseReport = {};
int hand;

void pointing_device_init(void) {
    //debug_enable = true;
    hand = is_keyboard_left();
    setPinInput(POINTING_H_PIN);
    setPinInput(POINTING_V_PIN);
}

void musashi60_mouse_task(int16_t x, int16_t y) {
    mouseReport.x = x;
    mouseReport.y = y;
    pointing_device_set_report(mouseReport);
    pointing_device_send();
}

void musashi60_wheel_task(int16_t x, int16_t y) {
    mouseReport.v = -1 * y;
    pointing_device_set_report(mouseReport);
    pointing_device_send();
}

void pointing_device_task(void) {
  int16_t x,y;
  x = (analogReadPin(POINTING_H_PIN) >> POINTING_SPEED) - POINTING_MAX;
  y = (analogReadPin(POINTING_V_PIN) >> POINTING_SPEED) - POINTING_MAX;
  if (x > 0) {
    x--;
  }
  if (y > 0) {
    y--;
  }
  if (x || y) {
    dprintf("x, y: %d, %d\n", x, y);
    if (hand) {
      // left
      musashi60_wheel_task(x, y);
    } else {
      // right
      musashi60_mouse_task(x, y);
    }
  }
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
