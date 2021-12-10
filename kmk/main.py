import board
import digitalio

import pwmio
import time
from kb import KMKKeyboard

from kmk.keys import KC
from kmk.modules.layers import Layers
from kmk.modules.modtap import ModTap
from kmk.modules.split import Split, SplitSide, SplitType

led = digitalio.DigitalInOut(board.GP25)
led.direction = digitalio.Direction.OUTPUT
led.value = True

hand_pin = digitalio.DigitalInOut(board.GP28)
hand_pin.direction = digitalio.Direction.INPUT
is_left = hand_pin.value

keyboard = KMKKeyboard()
keyboard.tap_time = 100
keyboard.debug_enabled = True

layers_ext = Layers()
modtap_ext = ModTap()

if is_left:
    print('left side')
    split_side = SplitSide.LEFT
    data_pin = board.GP5
    data_pin2 = None
else:
    print('right side')
    split_side = SplitSide.RIGHT
    data_pin = board.GP4
    data_pin2 = None

split = Split(
    split_side=split_side,
    split_type=SplitType.UART,
#    split_flip=True,
    data_pin=data_pin,
    data_pin2=data_pin2,
#    target_left=False,
#    split_target_left=False,
#    data_pin2=data_pin2
    debug_enabled=True
)

keyboard.modules = [layers_ext, modtap_ext, split]

LOWER = KC.MO(1)
RAISE = KC.MO(2)
ADJUST = KC.MO(3)
MT_LALT = KC.MT(KC.MHEN, KC.LALT)
MT_RALT = KC.MT(KC.HENK, KC.LALT)
RESET = KC.RESET

keyboard.keymap = [
    [  # QWERTY
        # ------+--------+--------+--------+--------+--------+                 +--------+--------+--------+--------+--------+--------+
        KC.BSLS, KC.N1,   KC.N2,   KC.N3,   KC.N4,   KC.N5,                     KC.N6,   KC.N7,   KC.N8,   KC.N9,   KC.N0,   KC.EQL, \
        # ------+--------+--------+--------+--------+--------+--------+--------+--------+--------+--------+--------+--------+--------+
        KC.GRV,  KC.Q,    KC.W,    KC.E,    KC.R,    KC.T,    KC.ESC,  KC.DEL,  KC.Y,    KC.U,    KC.I,    KC.O,    KC.P,    KC.MINS,\
        # ------+--------+--------+--------+--------+--------+--------+--------+--------+--------+--------+--------+--------+--------+
        KC.LGUI, KC.A,    KC.S,    KC.D,    KC.F,    KC.G,    KC.TAB,  KC.BSPC, KC.H,    KC.J,    KC.K,    KC.L,    KC.SCLN, CT_QUOT,\
        # ------+--------+--------+--------+--------+--------+--------+--------+--------+--------+--------+--------+--------+--------+
        KC.LSFT, KC.Z,    KC.X,    KC.C,    KC.V,    KC.B,                      KC.N,    KC.M,    KC.COMM, KC.DOT,  KC.SLSH, SF_MINS,\
        # ------+--------+--------+--------+--------+--------+--------+--------+--------+--------+--------+--------+--------+--------+
                                   MT_LALT, KC.LCTL, KC.SPC,  LOWER,   RAISE,   KC.ENT,  KC.RCTL, MT_RALT
        # ------+--------+--------+--------+--------+--------+--------+--------+--------+--------+--------+--------+--------+--------+
    ]
]

if __name__ == '__main__':
    keyboard.go()
