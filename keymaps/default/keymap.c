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

// Defines names for use in layer keycodes and the keymap
enum layer_names {
    _BASE,
    _RAISE,
    _LOWER
};

// Defines the keycodes used by our macros in process_record_user
enum custom_keycodes {
    SMILE = SAFE_RANGE
};

#define RAISE LT(_RAISE, KC_BSPC)     // Tap for BackSpace, hold for Raise
#define LOWER LT(_LOWER, KC_BSPC)     // Tap for BackSpace, hold for Lower
#define MT_LGUI MT(MOD_LGUI, KC_BSLS) // Tap for BackSlash, hold for LGUI
#define MT_RGUI MT(MOD_RGUI, KC_MINS) // Tap for HENKAN, hold for RGUI
#define MT_LALT MT(MOD_LALT, KC_MHEN) // Tap for MUHENKAN, hold for LALT
#define MT_RALT MT(MOD_RALT, KC_HENK) // Tap for HENKAN, hold for RALT
#define MT_LCTL MT(MOD_LCTL, KC_TAB)  // Tap for Tab, hold for LCTL
#define MT_RCTL MT(MOD_RCTL, KC_ENT)  // Tap for Enter, hold for RCTL
#define MT_LSFT MT(MOD_LSFT, KC_SPC)  // Tap for Space, hold for LSFT
#define MT_RSFT MT(MOD_RSFT, KC_SPC)  // Tap for Space, hold for RSFT
#define CT_PGUP LCTL(KC_PGUP) // Ctrl + PageUp
#define CT_PGDN LCTL(KC_PGDN) // Ctrl + PageDown
#define ALT_GRV LALT(KC_GRV)

const uint16_t PROGMEM keymaps[][MATRIX_ROWS][MATRIX_COLS] = {
  [_BASE] = LAYOUT(
            KC_1,   KC_2,   KC_3,   KC_4,   KC_5,   KC_6,   KC_7,   KC_8,   KC_9,   KC_0,           \
    KC_ESC, KC_Q,   KC_W,   KC_E,   KC_R,   KC_T,   KC_Y,   KC_U,   KC_I,   KC_O,   KC_P,   KC_EQL, \
    KC_GRV, KC_A,   KC_S,   KC_D,   KC_F,   KC_G,   KC_H,   KC_J,   KC_K,   KC_L,   KC_SCLN,KC_MINS,\
    KC_LGUI,KC_Z,   KC_X,   KC_C,   KC_V,   KC_B,   KC_N,   KC_M,   KC_COMM,KC_DOT, KC_SLSH,KC_QUOT,\
    	            MT_LALT,MT_LSFT,MT_LCTL,LOWER,  RAISE,  MT_RCTL,MT_RSFT,MT_RALT                 \
  ),
  [_RAISE] = LAYOUT(
            KC_F1,  KC_F2,  KC_F3,  KC_F4,  KC_F5,  KC_F6,  KC_F7,  KC_F8,  KC_F9,  KC_F10,         \
    KC_APP, KC_EXLM,KC_AT,  KC_HASH,KC_DLR, KC_PERC,KC_CIRC,KC_AMPR,KC_ASTR,KC_LPRN,KC_RPRN,KC_PIPE,\
    KC_PIPE,KC_NO,  KC_NO,  KC_NO,  KC_NO,  KC_NO,  KC_LEFT,KC_DOWN,KC_UP,  KC_RGHT,KC_LBRC,KC_LCBR,\
    KC_BSLS,KC_BTN1,KC_BTN3,KC_BTN2,KC_NO,  KC_NO,  CT_PGUP,KC_PGDN,KC_PGUP,CT_PGDN,KC_RBRC,KC_RCBR,\
                    _______,_______,_______,_______,_______,_______,_______,_______                 \
  ),
  [_LOWER] = LAYOUT(
            KC_F11, KC_F12, KC_F13, KC_F14, KC_F15, KC_VOLU,KC_VOLD,KC_MUTE,DEBUG,  RESET,          \
    KC_APP, KC_1,   KC_2,   KC_3,   KC_4,   KC_5,   KC_6,   KC_7,   KC_8,   KC_9,   KC_0,   KC_BSLS,\
    KC_BSLS,_______,_______,_______,_______,_______,CT_PGUP,KC_PGDN,KC_PGUP,CT_PGDN,KC_LBRC,KC_LCBR,\
    _______,_______,_______,_______,_______,_______,_______,_______,_______,_______,KC_RBRC,KC_RCBR,\
                    _______,_______,_______,_______,_______,_______,_______,_______	                \
  )
};

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
    switch (keycode) {
    case SMILE:
        if (record->event.pressed) {
            SEND_STRING(":)");
        } else {
            // when keycode QMKBEST is released
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
