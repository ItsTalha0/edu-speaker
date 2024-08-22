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
	gpio_init(7);
	gpio_set_dir(7,GPIO_IN);
	gpio_set_dir(LED_PIN,GPIO_OUT);
	stdio_init_all();
	uart_init(uart0,9600);
	//	uart_set_baudrate(uart0,9600);
	//	uart_set_baudrate(uart1,9600);
	char play[8] = {0x7E,0xFF,0x06,0x03,0x00,0x00,0x03,0xEF};
	char p[10] = {0x7E,0xFF,0x06,0x0D,0x00,0x00,0x00,0xFE,0xEE,0xEF};
	char pause[8] = {0x7E,0xFF,0x06,0x0E,0x00,0x00,0x00,0xEF};
	char next[8] = {0x7E,0xFF,0x06,0x01,0x00,0x00,0x00,0xEF};
	gpio_put(LED_PIN,1);
	uint led_state = 1;
	char counter  = 0;
	bool play_status = 0; //0 for puase 1 for play
						  //play[6]=0x06;
	for(int i=0;i<8;i++)
		uart_putc(uart0,play[i]);
	while (true) 
	{
		if( gpio_get(5) )
		{
			sleep_ms(200);

			while( !gpio_get(5) )
			{
				if( gpio_get(6) )
				{
					sleep_ms(200);
					counter++;
				}
				if( gpio_get(7) )
				{
					sleep_ms(200);
					counter--;
				}
			}
			sleep_ms(200);
			//printf("%d is counter value\n",counter);
			if(counter > 0)
			{
				play[6] =counter;
				//printf("play initiated\n");
				//sleep_ms(100);
				for(int i=0;i<8;i++)
					uart_putc(uart0,play[i]);
			}


			counter=0;
		}

	}
}



