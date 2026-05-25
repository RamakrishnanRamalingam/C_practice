///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// SIMPLE RTOS EXAMPLE
// ----------------------------------
//
// This is a simple RTOS example. 4 LEDs are connected to lower half of
// PORTB of a PIC18F452 microcontroller. The program consists of 4
// tasks:
//
// Task task_B0 flashes the LED connected to port RB0 every 250ms.
// Task task_B1 flashes the LED connected to port RB1 every 500ms.
// Task task_B2 flashes the LED connected to port RB2 every second
// Task task_B3 flashes the LED connected to port RB3 every 2 seconds.
//
// The microcontroller is operated from a 4MHz crystal
//
// Programmer: Dogan Ibrahim
// Date: September, 2007
// File: RTOS1.C
//
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//#include<24HJ256GP206A.h>
//#include "C:\NEWNES\PROGRAMS\rtos.h"
//#include <16f877A.h>
#include <24HJ256GP210.h>
#fuses HS,NOWDT,PUT4,NOPROTECT
#use delay (clock=16000000)
#use rtos(timer=1,minor_cycle=100us)
//
// Define which timer to use and minor_cycle for RTOS
//
//#use rtos(timer=0, minor_cycle=10ms)
//
// Declare TASK 1 - called every 250ms
//   
   
#task(rate=1s, max=10us)
void task_B0()
{
output_toggle(PIN_B0); // Toggle RB0

}
//
// Declare TASK 2 - called every 500ms
//
#task(rate=500ms, max=10us)
void task_B1()
{
output_toggle(PIN_B1); // Toggle RB1

}
//
// Declare TASK 3 - called every second
//
#task(rate=250ms, max=10us)
void task_B2()
{
output_toggle(PIN_B2); // Toggle RB2
}
//
// Declare TASK 4 - called every 2 seconds
//
#task(rate=120ms, max=10us)
void task_B3()
{
output_toggle(PIN_B3); // Toggle RB3
}

//
// Start of MAIN program
//


void main()
{
set_tris_b(0x00); // Configure PORTB as outputs
rtos_run(); // Start RTOS
}
