import board

from kmk.kmk_keyboard import KMKKeyboard as _KMKKeyboard
from kmk.matrix import DiodeOrientation
from kmk.matrix import intify_coordinate as ic

class KMKKeyboard(_KMKKeyboard):
    row_pins = (board.GP10, board.GP11, board.GP12, board.GP13, board.GP14)
    col_pins = (board.GP22, board.GP21, board.GP20, board.GP19, board.GP18, board.GP17, board.GP16)
    diode_orientation = DiodeOrientation.COLUMNS
    coord_mapping = []
    coord_mapping.extend(ic(0, x) for x in range(6))
    coord_mapping.extend(ic(0, x) for x in range(8, 14))
    coord_mapping.extend(ic(1, x) for x in range(14))
    coord_mapping.extend(ic(2, x) for x in range(14))
    coord_mapping.extend(ic(3, x) for x in range(6))
    coord_mapping.extend(ic(3, x) for x in range(8, 14))
    coord_mapping.extend(ic(4, x) for x in range(3, 9))

