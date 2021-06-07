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
#include QMK_KEYBOARD_H
//#include "musashi60.h"

// Defines names for use in layer keycodes and the keymap
enum layer_names {
    _QWERTY,
    _RAISE,
    _LOWER
};

// Defines the keycodes used by our macros in process_record_user
enum custom_keycodes {
    SMILE = SAFE_RANGE,
	JS_CAL // joystick calibration
};

#define RAISE MO(_RAISE)
#define LOWER MO(_LOWER)
#define MT_LALT MT(MOD_LALT, KC_MHEN) // Tap for MUHENKAN, hold for LALT
#define MT_RALT MT(MOD_RALT, KC_HENK) // Tap for HENKAN, hold for RALT
#define CT_PGUP LCTL(KC_PGUP) // Ctrl + PageUp
#define CT_PGDN LCTL(KC_PGDN) // Ctrl + PageDown
#define ALT_GRV LALT(KC_GRV)

const uint16_t PROGMEM keymaps[][MATRIX_ROWS][MATRIX_COLS] = {
  [_QWERTY] = LAYOUT(
    KC_BSLS,KC_1,   KC_2,   KC_3,   KC_4,   KC_5,                   KC_6,   KC_7,   KC_8,   KC_9,   KC_0,   KC_EQL,  \
    KC_GRV, KC_Q,   KC_W,   KC_E,   KC_R,   KC_T,   KC_ESC, KC_DEL, KC_Y,   KC_U,   KC_I,   KC_O,   KC_P,   KC_MINS,\
    KC_LGUI,KC_A,   KC_S,   KC_D,   KC_F,   KC_G,   KC_TAB, KC_BSPC,KC_H,   KC_J,   KC_K,   KC_L,   KC_SCLN,KC_QUOT,\
    KC_LSFT,KC_Z,   KC_X,   KC_C,   KC_V,   KC_B,                   KC_N,   KC_M,   KC_COMM,KC_DOT, KC_SLSH,KC_RSFT,\
    	                    MT_LALT,KC_LCTL,KC_SPC, LOWER,  RAISE,  KC_ENT, KC_RCTL,MT_RALT                         \
  ),
  [_RAISE] = LAYOUT(
    KC_NO,  KC_F1,  KC_F2,  KC_F3,  KC_F4,  KC_F5,                  KC_F6,  KC_F7,  KC_F8,  KC_F9,  KC_F10, KC_NO,  \
    KC_PIPE,KC_EXLM,KC_AT,  KC_HASH,KC_DLR, KC_PERC,KC_APP, KC_HOME,KC_CIRC,KC_AMPR,KC_ASTR,KC_LPRN,KC_RPRN,KC_EQL, \
    _______,KC_1,   KC_2,   KC_3,   KC_4,   KC_5,   KC_MENU,KC_END, KC_LEFT,KC_DOWN,KC_UP,  KC_RGHT,KC_LBRC,KC_BSLS,\
    _______,KC_6,   KC_7,   KC_8,   KC_9,   KC_0,                   CT_PGUP,KC_PGDN,KC_PGUP,CT_PGDN,KC_RBRC,_______,\
                            _______,_______,_______,_______,_______,_______,_______,_______                         \
  ),
  [_LOWER] = LAYOUT(
    KC_NO,  KC_F11, KC_F12, KC_F13, KC_F14, JS_CAL,                 KC_VOLU,KC_VOLD,KC_MUTE,DEBUG,  RESET,  KC_NO,  \
    KC_BSLS,KC_1,   KC_2,   KC_3,   KC_4,   KC_5,   KC_APP, _______,KC_6,   KC_7,   KC_8,   KC_9,   KC_0,   KC_PLUS,\
    _______,KC_1,   KC_2,   KC_3,   KC_4,   KC_5,   _______,_______,CT_PGUP,KC_PGDN,KC_PGUP,CT_PGDN,KC_LCBR,KC_PIPE,\
    _______,KC_6,   KC_7,   KC_8,   KC_9,   KC_0,                   KC_BTN1,KC_HOME,KC_END, KC_RGHT,KC_RCBR,_______,\
                            _______,_______,_______,_______,_______,_______,_______,_______                         \
  )
};

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
    switch (keycode) {
    case SMILE:
        if (record->event.pressed) {
            SEND_STRING(":)");
        }
        break;
    case JS_CAL:
        if (record->event.pressed) {
//            musashi60_calibration();
        }
        break;
    }
    return true;
}

/*
void matrix_init_user(void) {

}

void matrix_scan_user(void) {

}

bool led_update_user(led_t led_state) {
    return true;
}
*/
