/**
 * Copyright (c) 2020 Raspberry Pi (Trading) Ltd.
 *
 * SPDX-License-Identifier: BSD-3-Clause
 */

#include <stdio.h>
#include "pico/stdlib.h"

int main() {
	const uint LED_PIN= PICO_DEFAULT_LED_PIN;
	
	gpio_init(LED_PIN);
	gpio_set_dir(LED_PIN,GPIO_OUT);
    stdio_init_all();
	uart_init(uart0,9600);
//	uart_set_baudrate(uart0,9600);
//	uart_set_baudrate(uart1,9600);
		char play[8] = {0x7E,0xFF,0x06,0x0D,0x00,0x00,0x00,0xEF};
		char pause[8] = {0x7E,0xFF,0x06,0x0E,0x00,0x00,0x00,0xEF};
		char next[8] = {0x7E,0xFF,0x06,0x01,0x00,0x00,0x00,0xEF};
    while (true) {
        //printf("hello\n");
        sleep_ms(500);
		gpio_put(LED_PIN,1);
        //printf("%c%c%c%c%c%c%c%c",0x7E,0xFF,0x06,0x0D,0x00,0x00,0x00,0xEF);
		//char m[8] = "hellom\n";
		for(int i=0;i<8;i++)
        uart_putc(uart0,play[i]);

		sleep_ms(5000);
		
		for(int i=0;i<8;i++)
        uart_putc(uart0,next[i]);
		sleep_ms(1000);	
		for(int i=0;i<8;i++)
        uart_putc(uart0,pause[i]);

		sleep_ms(500);

		gpio_put(LED_PIN,0);
    }
}
