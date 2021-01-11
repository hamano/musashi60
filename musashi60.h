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
              LE1, LD1, LC1, LB1, LA1, RA1, RB1, RC1, RD1, RE1,           \
    LG2, LF2, LE2, LD2, LC2, LB2, LA2, RA2, RB2, RC2, RD2, RE2, RF2, RG2, \
    LG3, LF3, LE3, LD3, LC3, LB3, LA3, RA3, RB3, RC3, RD3, RE3, RF3, RG3, \
              LE4, LD4, LC4, LB4, LA4, RA4, RB4, RC4, RD4, RE4,           \
                   LE5, LD5, LC5, LB5, RB5, RC5, RD5, RE5                 \
) \
{ \
    { LA1, LB1, LC1, LD1, LE1, XXX, XXX }, \
    { LA2, LB2, LC2, LD2, LE2, LF2, LG2 }, \
    { LA3, LB3, LC3, LD3, LE3, LF3, LG3 }, \
    { LA4, LB4, LC4, LD4, LE4, XXX, XXX }, \
    { XXX, LB5, LC5, LD5, LE5, XXX, XXX }, \
    { RA1, RB1, RC1, RD1, RE1, XXX, XXX }, \
    { RA2, RB2, RC2, RD2, RE2, RF2, RG2 }, \
    { RA3, RB3, RC3, RD3, RE3, RF3, RG3 }, \
    { RA4, RB4, RC4, RD4, RE4, XXX, XXX }, \
    { XXX, RB5, RC5, RD5, RE5, XXX, XXX }  \
}
