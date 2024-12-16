#ifndef BOARD_INC_BOARD_H_
#define BOARD_INC_BOARD_H_

/********************** CPP guard ********************************************/
#ifdef __cplusplus
extern "C" {
#endif

/********************** inclusions *******************************************/

/********************** macros ***********************************************/
#define NUCLEO_F103RC		(0)
#define NUCLEO_F401RE		(1)
#define NUCLEO_F446RE		(2)
#define NUCLEO_F429ZI		(3)
#define NUCLEO_F439ZI		(4)
#define NUCLEO_F413ZH		(5)
#define STM32F429I_DISCO1	(6)

#define BOARD (NUCLEO_F103RC)

/* STM32 Nucleo Boards - 64 Pins */
#if ((BOARD == NUCLEO_F103RC) || (BOARD == NUCLEO_F401RE) || (BOARD == NUCLEO_F446RE))

#define BTN_A_PIN		BTN_A_Pin
#define BTN_A_PORT		BTN_A_GPIO_Port
#define BTN_A_PRESSED	GPIO_PIN_RESET

#define BTN_B_PIN		BTN_B_Pin
#define BTN_B_PORT		BTN_B_GPIO_Port
#define BTN_B_PRESSED	GPIO_PIN_RESET

#define BTN_C_PIN		BTN_C_Pin
#define BTN_C_PORT		BTN_C_GPIO_Port
#define BTN_C_PRESSED	GPIO_PIN_RESET

#define DSW_A_PIN		DSW_A_Pin
#define DSW_A_PORT		DSW_A_GPIO_Port
#define DSW_A_PRESSED	GPIO_PIN_SET

#define DSW_B_PIN		DSW_B_Pin
#define DSW_B_PORT		DSW_B_GPIO_Port
#define DSW_B_PRESSED	GPIO_PIN_SET

#define LED_A_PIN		LED_A_Pin
#define LED_A_PORT		LED_A_GPIO_Port
#define LED_A_ON		GPIO_PIN_RESET
#define LED_A_OFF		GPIO_PIN_SET

#define LED_B_PIN		LED_B_Pin
#define LED_B_PORT		LED_B_GPIO_Port
#define LED_B_ON		GPIO_PIN_RESET
#define LED_B_OFF		GPIO_PIN_SET

#define LED_C_PIN		LED_C_Pin
#define LED_C_PORT		LED_C_GPIO_Port
#define LED_C_ON		GPIO_PIN_RESET
#define LED_C_OFF		GPIO_PIN_SET

#define LED_D_PIN		LED_D_Pin
#define LED_D_PORT		LED_D_GPIO_Port
#define LED_D_ON		GPIO_PIN_RESET
#define LED_D_OFF		GPIO_PIN_SET

#define BUZ_A_PIN		BUZ_A_Pin
#define BUZ_A_PORT		BUZ_A_GPIO_Port
#define BUZ_A_ON		GPIO_PIN_SET
#define BUZ_A_OFF		GPIO_PIN_RESET

#endif/* STM32 Nucleo Boards - 144 Pins */

#if ((BOARD == NUCLEO_F429ZI) || (BOARD == NUCLEO_F439ZI) || (BOARD == NUCLEO_F413ZH))

#define BTN_A_PIN		USER_Btn_Pin
#define BTN_A_PORT		USER_Btn_GPIO_Port
#define BTN_A_PRESSED	GPIO_PIN_SET
#define BTN_A_HOVER		GPIO_PIN_RESET

#define LED_A_PIN		LD1_Pin
#define LED_A_PORT		LD1_GPIO_Port
#define LED_A_ON		GPIO_PIN_SET
#define LED_A_OFF		GPIO_PIN_RESET

#endif

/* STM32 Discovery Kits */
#if (BOARD == STM32F429I_DISCO1)

#define BTN_A_PIN		B1_Pin
#define BTN_A_PORT		B1_GPIO_Port
#define BTN_A_PRESSED	GPIO_PIN_SET
#define BTN_A_HOVER		GPIO_PIN_RESET

#define LED_A_PIN		LD3_Pin
#define LED_A_PORT		LD3_GPIO_Port
#define LED_A_ON		GPIO_PIN_SET
#define LED_A_OFF		GPIO_PIN_RESET

#endif

/********************** typedef **********************************************/

/********************** external data declaration ****************************/

/********************** external functions declaration ***********************/

/********************** End of CPP guard *************************************/
#ifdef __cplusplus
}
#endif

#endif /* BOARD_INC_BOARD_H_ */

/********************** end of file ******************************************/
