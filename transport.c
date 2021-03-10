#include <string.h>
#include <stddef.h>

#include "config.h"
#include "matrix.h"
#include "quantum.h"
#include "musashi60.h"
#include "print.h"

#ifdef CONSOLE_ENABLE
#    include "print.h"
#endif

#define ROWS_PER_HAND (MATRIX_ROWS / 2)

#if defined(USE_I2C)

#else  // USE_SERIAL

#    include "serial.h"

typedef struct _Serial_s2m_buffer_t {
    // TODO: if MATRIX_COLS > 8 change to uint8_t packed_matrix[] for pack/unpack
    matrix_row_t smatrix[ROWS_PER_HAND];
    uint8_t axis_x;
    uint8_t axis_y;
} Serial_s2m_buffer_t;

typedef struct _Serial_m2s_buffer_t {
} Serial_m2s_buffer_t;

volatile Serial_s2m_buffer_t serial_s2m_buffer = {};
volatile Serial_m2s_buffer_t serial_m2s_buffer = {};
uint8_t volatile status0                       = 0;

enum serial_transaction_id {
    GET_SLAVE_MATRIX = 0,
};

SSTD_t transactions[] = {
    [GET_SLAVE_MATRIX] =
        {
            (uint8_t *)&status0,
            sizeof(serial_m2s_buffer),
            (uint8_t *)&serial_m2s_buffer,
            sizeof(serial_s2m_buffer),
            (uint8_t *)&serial_s2m_buffer,
        },
};

void transport_master_init(void) { soft_serial_initiator_init(transactions, TID_LIMIT(transactions)); }

void transport_slave_init(void) { soft_serial_target_init(transactions, TID_LIMIT(transactions)); }

#        define transport_rgblight_master()
#        define transport_rgblight_slave()

bool transport_master(matrix_row_t matrix[]) {
#    ifndef SERIAL_USE_MULTI_TRANSACTION
    if (soft_serial_transaction() != TRANSACTION_END) {
        return false;
    }
#    else
    transport_rgblight_master();
    if (soft_serial_transaction(GET_SLAVE_MATRIX) != TRANSACTION_END) {
        return false;
    }
#    endif

    // TODO:  if MATRIX_COLS > 8 change to unpack()
    for (int i = 0; i < ROWS_PER_HAND; ++i) {
        matrix[i] = serial_s2m_buffer.smatrix[i];
    }

#    ifdef POINTING_DEVICE_ENABLE
    musashi60_set_mouse(serial_s2m_buffer.axis_x, serial_s2m_buffer.axis_y, 0);
#    endif

    return true;
}

void transport_slave(matrix_row_t matrix[]) {
    transport_rgblight_slave();
    // TODO: if MATRIX_COLS > 8 change to pack()
    for (int i = 0; i < ROWS_PER_HAND; ++i) {
        serial_s2m_buffer.smatrix[i] = matrix[i];
    }
}

#endif

void musashi60_send_axis(uint8_t x, uint8_t y) {
    serial_s2m_buffer.axis_x = x;
    serial_s2m_buffer.axis_y = y;
}
