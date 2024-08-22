/**
 * Copyright (c) 2020 Raspberry Pi (Trading) Ltd.
 *
 * SPDX-License-Identifier: BSD-3-Clause
 */

#include <stdio.h>
#include "pico/stdlib.h"
#include <string.h>

const uint d1=2;
const uint d2=3;
const uint A=4;
const uint B=5;
const uint C=6;
const uint D=7;
const uint E=8;
const uint F=9;
const uint G=10;
const uint one[][7] = {
						{ 1,1,1,1,1,1,0 }, //0
						{ 0,0,0,0,1,1,0 }, //1
						{ 1,1,0,1,1,0,1 }, //2
						{ 1,1,1,1,0,0,1 }, //3
						{ 0,1,1,0,0,1,1 }, //4
						{ 1,0,1,1,0,1,1 }, //5
						{ 1,0,1,1,1,1,1 }, //6
						{ 1,1,1,0,0,0,0 }, //7
						{ 1,1,1,1,1,1,1 }, //8
						{ 1,1,1,1,0,1,1 }
						};//9


void 
int main() {
	const uint LED_PIN= PICO_DEFAULT_LED_PIN;
	gpio_init(11);
	gpio_init(12);
	gpio_init(13);
	gpio_set_dir(11,GPIO_IN);
	gpio_set_dir(12,GPIO_IN);
	gpio_set_dir(13,GPIO_IN);
	//gpio_set_dir(LED_PIN,GPIO_OUT);
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
	gpio_init(d1);
	gpio_init(d2);
	gpio_init(A);
	gpio_init(B);
	gpio_init(C);
	gpio_init(D);
	gpio_init(E);
	gpio_init(F);
	gpio_init(G);
	
	gpio_set_dir(d1,GPIO_OUT);
	gpio_set_dir(d2,GPIO_OUT);
	gpio_set_dir(A,GPIO_OUT);
	gpio_set_dir(B,GPIO_OUT);
	gpio_set_dir(C,GPIO_OUT);
	gpio_set_dir(D,GPIO_OUT);
	gpio_set_dir(E,GPIO_OUT);
	gpio_set_dir(F,GPIO_OUT);
	gpio_set_dir(G,GPIO_OUT);
    stdio_init_all();

	gpio_put(d1,0);
	gpio_put(d2,1);
	gpio_put(A,1);
	gpio_put(B,0);
	gpio_put(C,0);
	gpio_put(D,1);
	gpio_put(E,1);
	gpio_put(F,1);
	gpio_put(G,1);

	sleep_ms(1000);
	for( int j=0;j<10;j++ ){
		for( int i=4;i<=10;i++ )
		{
			gpio_put(i,one[j][i-4]);
		}
		sleep_ms(2000);
	}

	while (false) 
	{
		if( gpio_get(11) )
		{
			sleep_ms(200);

			while( !gpio_get(11) )
			{
				if( gpio_get(12) )
				{
					sleep_ms(200);
					counter++;
				}
				if( gpio_get(13) )
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
				char cnt[10];
				sprintf(cnt,"%d",counter);
				for(int i=0;i<8;i++)
					uart_putc(uart0,play[i]);
			}


		}

	}
}




