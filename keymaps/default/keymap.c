/* Copyright 2020 HAMANO Tsukasa
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

// Defines names for use in layer keycodes and the keymap
enum layer_names {
    _BASE,
    _RAISE,
    _LOWER
};

// Defines the keycodes used by our macros in process_record_user
enum custom_keycodes {
    QMKBEST = SAFE_RANGE,
    QMKURL
};

#define RAISE MO(_RAISE)
#define LOWER MO(_LOWER)
#define MT_LALT MT(MOD_LALT, KC_MHEN) // Tap for Alt, hold for Muhenkan
#define MT_RALT MT(MOD_RALT, KC_HENK) // Tap for Alt, hold for Henkan

const uint16_t PROGMEM keymaps[][MATRIX_ROWS][MATRIX_COLS] = {
  [_BASE] = LAYOUT(
                    KC_1,   KC_2,   KC_3,   KC_4,   KC_5,                     KC_6,   KC_7,   KC_8,   KC_9,   KC_0,                   \
    KC_GRV, KC_EQL, KC_Q,   KC_W,   KC_E,   KC_R,   KC_T,                     KC_Y,   KC_U,   KC_I,   KC_O,   KC_P,   KC_LBRC,KC_RBRC,\
    KC_BSLS,KC_MINS,KC_A,   KC_S,   KC_D,   KC_F,   KC_G,   KC_ESC,   KC_BSPC,KC_H,   KC_J,   KC_K,   KC_L,   KC_SCLN,KC_QUOT,KC_MENU,\
    KC_LGUI,KC_LSFT,KC_Z,   KC_X,   KC_C,   KC_V,   KC_B,   KC_TAB,   KC_ENT, KC_N,   KC_M,   KC_COMM,KC_DOT, KC_SLSH,KC_RSFT,KC_RGUI,\
            KC_LSFT,                MT_LALT,KC_LCTL,LOWER,  KC_SPC,   KC_SPC, RAISE,  KC_RCTL,MT_RALT,                KC_RSFT         \
  ),
  [_RAISE] = LAYOUT(
                    KC_F1,  KC_F2,  KC_F3,  KC_F4,  KC_F5,                    KC_F6,  KC_F7,  KC_F8,  KC_F9,  KC_F10,                 \
    KC_HOME,KC_PGUP,KC_EXLM,KC_AT,  KC_HASH,KC_DLR, KC_PERC,                  KC_CIRC,KC_AMPR,KC_ASTR,KC_LPRN,KC_RPRN,_______,_______,\
    KC_END, KC_PGDN,KC_MS_L,KC_MS_D,KC_MS_R,KC_NO,  KC_NO,  KC_APP,   KC_NO,  KC_LEFT,KC_DOWN,KC_UP,  KC_RGHT,KC_NO,  KC_NO,  KC_HOME,\
    KC_NO,  _______,KC_NO,  KC_NO,  KC_NO,  KC_NO,  KC_NO,  KC_NO,    KC_NO,  KC_HOME,KC_END, KC_PGUP,KC_PGDN,KC_NO,  _______,KC_END, \
            _______,                _______,_______,_______,_______,  _______,_______,_______,_______,                _______         \
  ),
  [_LOWER] = LAYOUT(
                    KC_F11, KC_F12, KC_F13, KC_F14, KC_F15,                   KC_F16, KC_F17, KC_F18, KC_F19, KC_F20,                 \
    KC_MUTE,KC_VOLU,KC_1,   KC_2,   KC_3,   KC_4,   KC_5,                     KC_6,   KC_7,   KC_8,   KC_9,   KC_0,   _______,_______,\
    _______,KC_VOLD,KC_MS_L,KC_MS_D,KC_MS_R,_______,KC_ESC, KC_APP,   KC_NO,  KC_MS_L,KC_MS_D,KC_MS_U,KC_MS_R,KC_NO,  KC_NO,  KC_HOME,\
    _______,_______,KC_NO,  KC_NO,  KC_NO,  _______,KC_TAB, _______,  KC_NO,  KC_ENT, KC_BTN1,KC_BTN3,KC_BTN2,KC_NO,  KC_NO,  KC_END, \
            _______,                        _______,_______,_______,_______,  _______,_______,_______,_______,        _______         \
  )
};

/*
bool process_record_user(uint16_t keycode, keyrecord_t *record) {
    switch (keycode) {
        case QMKBEST:
            if (record->event.pressed) {
                // when keycode QMKBEST is pressed
                SEND_STRING("QMK is the best thing ever!");
            } else {
                // when keycode QMKBEST is released
            }
            break;
        case QMKURL:
            if (record->event.pressed) {
                // when keycode QMKURL is pressed
                SEND_STRING("https://qmk.fm/\n");
            } else {
                // when keycode QMKURL is released
            }
            break;
    }
    return true;
}

void matrix_init_user(void) {

}

void matrix_scan_user(void) {

}

bool led_update_user(led_t led_state) {
    return true;
}
*/
