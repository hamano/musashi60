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

#pragma once

#include "quantum.h"

/* This is a shortcut to help you visually see your layout.
 *
 * The first section contains all of the arguments representing the physical
 * layout of the board and position of the keys.
 *
 * The second converts the arguments into a two-dimensional array which
 * represents the switch matrix.
 */

#define XXX KC_NO

#define LAYOUT( \
              LF1, LE1, LD1, LC1, LB1,           RB1, RC1, RD1, RE1, RF1,           \
    LG2, LH2, LF2, LE2, LD2, LC2, LB2,           RB2, RC2, RD2, RE2, RF2, RH2, RG2, \
    LG3, LH3, LF3, LE3, LD3, LC3, LB3, LA3, RA3, RB3, RC3, RD3, RE3, RF3, RH3, RG3, \
    LG4, LH4, LF4, LE4, LD4, LC4, LB4, LA4, RA4, RB4, RC4, RD4, RE4, RF4, RH4, RG4, \
    LG5, LH5,           LD5, LC5, LB5, LA5, RA5, RB5, RC5, RD5,           RH5, RG5  \
) \
{ \
    { XXX, LB1, LC1, LD1, LE1, LF1, XXX, XXX }, \
    { XXX, LB2, LC2, LD2, LE2, LF2, LG2, LH2 }, \
    { LA3, LB3, LC3, LD3, LE3, LF3, LG3, LH3 }, \
    { LA4, LB4, LC4, LD4, LE4, LF4, LG4, LH4 }, \
    { LA5, LB5, LC5, LD5, XXX, XXX, LG5, LH5 },	\
    { XXX, RB1, RC1, RD1, RE1, RF1, XXX, XXX },	\
    { XXX, RB2, RC2, RD2, RE2, RF2, RG2, RH2 }, \
    { RA3, RB3, RC3, RD3, RE3, RF3, RG3, RH3 }, \
    { RA4, RB4, RC4, RD4, RE4, RF4, RG4, RH4 }, \
    { RA5, RB5, RC5, RD5, XXX, XXX, RG5, RH5 }	\
}
