/**
 * Copyright (c) 2020 Raspberry Pi (Trading) Ltd.
 *
 * SPDX-License-Identifier: BSD-3-Clause
 */

#include <stdio.h>
#include "pico/stdlib.h"
#include <string.h>

const uint rs=8;
const uint en=9;
const uint d4=10;
const uint d5=11;
const uint d6=12;
const uint d7=13;
void pulse()
{
	gpio_put(en,1);
	sleep_ms(5);
	gpio_put(en,0);
	sleep_ms(5);
}

void send2lcd4(BinNum)
{
	gpio_put(d4,((BinNum  & (1)) >> 0));
	gpio_put(d5,((BinNum  & (2)) >> 1));
	gpio_put(d6,((BinNum  & (4)) >> 2));
	gpio_put(d7,((BinNum  & (8)) >> 3));
	pulse();
}

void send2lcd8(BinNum)
{
	gpio_put(d4,((BinNum  & (16)) >> 4));
	gpio_put(d5,((BinNum  & (32)) >> 5));
	gpio_put(d6,((BinNum  & (64)) >> 6));
	gpio_put(d7,((BinNum  & (128)) >> 7));
	pulse();
	gpio_put(d4,((BinNum  & (1)) >> 0));
	gpio_put(d5,((BinNum  & (2)) >> 1));
	gpio_put(d6,((BinNum  & (4)) >> 2));
	gpio_put(d7,((BinNum  & (8)) >> 3));
	pulse();
}	
	
void clear_disp()
{
	gpio_put(rs,0);
	send2lcd8(01);
	sleep_ms(2);
}

void simple_display_init()
{
	
	gpio_put(rs,0);
	send2lcd4(3);
	send2lcd4(3);
	send2lcd4(3);
	send2lcd4(2);
	send2lcd8(40);
	send2lcd8(12);//4bit 2 lines.
	send2lcd8(06);//lcd on,blink of
	send2lcd8(12);//increment cursor no display shift
	send2lcd8(01);//clear screen
	sleep_ms(4);

}


void write_to_disp(char *word,int length)
{
	gpio_put(rs,1 );
	int i=0;
	while(i<length)
	{
		send2lcd8(word[i]);
		i++;
	}
}


int main() {
	const uint LED_PIN= PICO_DEFAULT_LED_PIN;
	gpio_init(7);
	gpio_init(5);
	gpio_init(6);
	gpio_set_dir(7,GPIO_IN);
	gpio_set_dir(5,GPIO_IN);
	gpio_set_dir(6,GPIO_IN);
	gpio_set_dir(LED_PIN,GPIO_OUT);
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
	gpio_init(LED_PIN);
	gpio_init(rs);
	gpio_init(en);
	gpio_init(d4);
	gpio_init(d5);
	gpio_init(d6);
	gpio_init(d7);
	
	gpio_set_dir(LED_PIN,GPIO_OUT);
	gpio_set_dir(rs,GPIO_OUT);
	gpio_set_dir(en,GPIO_OUT);
	gpio_set_dir(d4,GPIO_OUT);
	gpio_set_dir(d5,GPIO_OUT);
	gpio_set_dir(d6,GPIO_OUT);
	gpio_set_dir(d7,GPIO_OUT);
    stdio_init_all();

	simple_display_init();
	//clear_disp();
	write_to_disp("yay",3);
	sleep_ms(2000);
	clear_disp();
	write_to_disp("manpreet",8);

	while (true) 
	{
		if( gpio_get(5) )
		{
			sleep_ms(200);
			clear_disp();
			write_to_disp("set pressed",strlen("set pressed"));

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
				char cnt[10];
				clear_disp();
				sprintf(cnt,"%d",counter);
				write_to_disp(cnt,strlen(cnt));
				for(int i=0;i<8;i++)
					uart_putc(uart0,play[i]);
			}


		}

	}
}




