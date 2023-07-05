/**
 ******************************************************************************
 * File Name          : main.c
 * Date               : 09/10/2014 11:13:03
 * Description        : Main program body
 ******************************************************************************
 *
 * COPYRIGHT(c) 2014 STMicroelectronics
 *
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:
 *   1. Redistributions of source code must retain the above copyright notice,
 *      this list of conditions and the following disclaimer.
 *   2. Redistributions in binary form must reproduce the above copyright notice,
 *      this list of conditions and the following disclaimer in the documentation
 *      and/or other materials provided with the distribution.
 *   3. Neither the name of STMicroelectronics nor the names of its contributors
 *      may be used to endorse or promote products derived from this software
 *      without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
 * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
 * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *
 ******************************************************************************
 */

#include "xnucleoihm02a1.h"
#include "l6470.h"
#include "microstepping_motor.h"
#include "example.h"
#include "example_usart.h"
#include "stm32f4xx_it.h"

/**
 * @defgroup   MotionControl
 * @{
 */

/**
 * @addtogroup BSP
 * @{
 */

/**
 * @}
 */
/* End of BSP */

/**
 * @addtogroup MicrosteppingMotor_Example
 * @{
 */

/**
 * @defgroup   ExampleTypes
 * @{
 */

#define MICROSTEPPING_MOTOR_EXAMPLE        //!< Uncomment to performe the standalone example
// #define MICROSTEPPING_MOTOR_USART_EXAMPLE  //!< Uncomment to performe the USART example
#if ((defined(MICROSTEPPING_MOTOR_EXAMPLE)) && (defined(MICROSTEPPING_MOTOR_USART_EXAMPLE)))
#error "Please select an option only!"
#elif ((!defined(MICROSTEPPING_MOTOR_EXAMPLE)) && (!defined(MICROSTEPPING_MOTOR_USART_EXAMPLE)))
#error "Please select an option!"
#endif
#if (defined(MICROSTEPPING_MOTOR_USART_EXAMPLE) && (!defined(NUCLEO_USE_USART)))
#error "Please define "NUCLEO_USE_USART" in "stm32fxxx_x-nucleo-ihm02a1.h"!"
#endif

/**
 * @}
 */
/* End of ExampleTypes */

/**
 * @brief The FW main module
 */
int main(void)
{
  /* NUCLEO board initialization */
  NUCLEO_Board_Init();

  /* X-NUCLEO-IHM02A1 initialization */
  BSP_Init();

#ifdef NUCLEO_USE_USART
  /* Transmit the initial message to the PC via UART */
  USART_TxWelcomeMessage();
#endif
  __GPIOA_CLK_ENABLE();
  __GPIOB_CLK_ENABLE();
  __GPIOC_CLK_ENABLE();
//  GPIO_InitTypeDef GPIO_InitStruct;
//  GPIO_InitStruct.Pin = GPIO_PIN_8;
//  GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
//  GPIO_InitStruct.Pull = GPIO_PULLDOWN;
//  GPIO_InitStruct.Speed = GPIO_SPEED_FAST;
//  HAL_GPIO_Init(GPIOC, &GPIO_InitStruct);
//
//  GPIO_InitStruct.Pin = GPIO_PIN_9;
//  HAL_GPIO_Init(GPIOC, &GPIO_InitStruct);
//
//  GPIO_InitStruct.Pin = GPIO_PIN_10;
//  HAL_GPIO_Init(GPIOC, &GPIO_InitStruct);
//
//  GPIO_InitStruct.Pin = GPIO_PIN_11;
//  HAL_GPIO_Init(GPIOC, &GPIO_InitStruct);

    GPIO_InitTypeDef GPIO_InitStruct;
	GPIO_InitStruct.Pin = GPIO_PIN_0;
	GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
	GPIO_InitStruct.Pull = GPIO_PULLDOWN;
	GPIO_InitStruct.Speed = GPIO_SPEED_FAST;
	HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);


	GPIO_InitStruct.Pin = GPIO_PIN_1;
	GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
	GPIO_InitStruct.Pull = GPIO_PULLDOWN;
	GPIO_InitStruct.Speed = GPIO_SPEED_FAST;
	HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);


	GPIO_InitStruct.Pin = GPIO_PIN_8;
	GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
	GPIO_InitStruct.Pull = GPIO_PULLDOWN;
	GPIO_InitStruct.Speed = GPIO_SPEED_FAST;
	HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

	GPIO_InitStruct.Pin = GPIO_PIN_9;
	GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
	GPIO_InitStruct.Pull = GPIO_PULLDOWN;
	GPIO_InitStruct.Speed = GPIO_SPEED_FAST;
	HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);
	int direction = 1;
	L6470_Run(0, 1, 10000);
	L6470_Run(1, 1, 10000);

  // Motor id, direction, speed
  while (1)
  {

	  if(HAL_GPIO_ReadPin(GPIOA, GPIO_PIN_0) == 0){
		  USART_Transmit(&huart2, (uint8_t*)"pinA5\n");
		  L6470_Run(0, 1, 20000);
	  }
	  else if(HAL_GPIO_ReadPin(GPIOA, GPIO_PIN_1) == 0){
		  USART_Transmit(&huart2, (uint8_t*)"pinA6\n");
		  L6470_Run(0, 0, 20000);
	  }
	  else if(HAL_GPIO_ReadPin(GPIOA, GPIO_PIN_8) == 0){
		  USART_Transmit(&huart2, (uint8_t*)"pinA7\n");
		  L6470_Run(1, 1, 20000);
	  }
	  else if(HAL_GPIO_ReadPin(GPIOA, GPIO_PIN_9) == 0){
		  USART_Transmit(&huart2, (uint8_t*)"pinB6\n");
		  L6470_Run(1, 0, 20000);
	  }
  }

#if defined(MICROSTEPPING_MOTOR_EXAMPLE)
  /* Perform a batch commands for X-NUCLEO-IHM02A1 */
  MicrosteppingMotor_Example_01();

  /* Infinite loop */
  while (1)
    ;
#elif defined(MICROSTEPPING_MOTOR_USART_EXAMPLE)
  /* Fill the L6470_DaisyChainMnemonic structure */
  Fill_L6470_DaisyChainMnemonic();

  /* Infinite loop */
  while (1)
  {
    /* Check if any Application Command for L6470 has been entered by USART */
    USART_CheckAppCmd();
  }
#endif
}

#ifdef USE_FULL_ASSERT

/**
 * @brief Reports the name of the source file and the source line number
 * where the assert_param error has occurred.
 * @param file: pointer to the source file name
 * @param line: assert_param error line source number
 * @retval None
 */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
    ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}

#endif

/**
 * @}
 */
/* End of MicrosteppingMotor_Example */

/**
 * @}
 */
/* End of MotionControl */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
