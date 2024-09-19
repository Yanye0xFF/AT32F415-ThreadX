/*
 * main.c
 * @brief
 * Created on: Sep 18, 2024
 * Author: Yanye
 */
#include "stdint.h"
#include "rtthread.h"
#include "tx_api.h"
#include "at32f415_gpio.h"

// PF7
#define SYSLED_CLEAR()     (GPIOF->clr = 0x80u);
#define SYSLED_SET()   (GPIOF->scr = 0x80u);

int user_main(uint32_t param) {
    (void)param;

    uint32_t reg;
    CRM_REG(CRM_GPIOF_PERIPH_CLOCK) |= CRM_REG_BIT(CRM_GPIOF_PERIPH_CLOCK);
    // sysled: PF7 outpp
    reg = GPIOF->cfglr;
    reg &= 0x0FFFFFFF;
    reg |= 0x20000000;
    GPIOF->cfglr = reg;

    rt_kprintf("user_main\n");

    while(1) {
        SYSLED_CLEAR();
        tx_thread_sleep(200);
        SYSLED_SET();
        rt_kprintf("hello ThreadX\r\n");
        tx_thread_sleep(200);
    }
    return 0;
}


