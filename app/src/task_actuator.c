/********************** inclusions *******************************************/
/* Project includes. */
#include "main.h"

/* Demo includes. */
#include "logger.h"
#include "dwt.h"

/* Application & Tasks includes. */
#include "board.h"
#include "app.h"
#include "task_actuator_attribute.h"
#include "task_actuator_interface.h"

/********************** macros and definitions *******************************/
#define G_TASK_ACT_CNT_INIT			0ul
#define G_TASK_ACT_TICK_CNT_INI		0ul

#define DEL_LED_XX_BLI				500ul
#define DEL_LED_XX_MIN				0ul

/********************** internal data declaration ****************************/
const task_actuator_cfg_t task_actuator_cfg_list[] = {
	{ID_LED_PUEDE_PASAR,  	LED_A_PORT,  LED_A_PIN, LED_A_ON,  LED_A_OFF, DEL_LED_XX_BLI},
	{ID_LED_ADVERTENCIA,	LED_B_PORT,  LED_B_PIN, LED_B_ON,  LED_B_OFF, DEL_LED_XX_BLI},
	{ID_LED_ACTIVADO,  		LED_C_PORT,  LED_C_PIN, LED_C_ON,  LED_C_OFF, DEL_LED_XX_BLI},
	{ID_LED_DESACTIVADO,  	LED_D_PORT,  LED_D_PIN, LED_D_ON,  LED_D_OFF, DEL_LED_XX_BLI},
	{ID_BUZZER_ULULALERO,  	BUZ_A_PORT,  BUZ_A_PIN, BUZ_A_ON,  BUZ_A_OFF, DEL_LED_XX_BLI},
};

#define ACTUATOR_CFG_QTY	(sizeof(task_actuator_cfg_list)/sizeof(task_actuator_cfg_t))

task_actuator_dta_t task_actuator_dta_list[] = {
	{DEL_LED_XX_MIN, false, ST_LED_XX_OFF, EV_LED_XX_OFF, false},
	{DEL_LED_XX_MIN, false, ST_LED_XX_OFF, EV_LED_XX_OFF, false},
	{DEL_LED_XX_MIN, false, ST_LED_XX_OFF, EV_LED_XX_OFF, false},
	{DEL_LED_XX_MIN, false, ST_LED_XX_ON,  EV_LED_XX_ON,  false},
	{DEL_LED_XX_MIN, false, ST_LED_XX_OFF, EV_LED_XX_OFF, false},
};

#define ACTUATOR_DTA_QTY	(sizeof(task_actuator_dta_list)/sizeof(task_actuator_dta_t))

/********************** internal functions declaration ***********************/

/********************** internal data definition *****************************/
const char *p_task_actuator 		= "Task Actuator";
const char *p_task_actuator_ 		= "Límitador y Baliza de Sistema con Sirena";

/********************** external data declaration ****************************/
uint32_t g_task_actuator_cnt;
volatile uint32_t g_task_actuator_tick_cnt;

/********************** external functions definition ************************/
void task_actuator_init(void *parameters) {
	const task_actuator_cfg_t *p_task_actuator_cfg;
	task_actuator_dta_t *p_task_actuator_dta;
	task_actuator_st_t state;
	task_actuator_ev_t event;
	bool b_event;

	/* Print out: Task Initialized */
	LOGGER_LOG("  %s is running - %s\r\n", GET_NAME(task_actuator_init), p_task_actuator);
	LOGGER_LOG("  %s is a %s\r\n", GET_NAME(task_actuator), p_task_actuator_);

	g_task_actuator_cnt = G_TASK_ACT_CNT_INIT;

	/* Print out: Task execution counter */
	LOGGER_LOG("   %s = %lu\r\n", GET_NAME(g_task_actuator_cnt), g_task_actuator_cnt);

	for (uint32_t index = 0; index < ACTUATOR_DTA_QTY; index++) {
		/* Update Task Actuator Configuration & Data Pointer */
		p_task_actuator_cfg = &task_actuator_cfg_list[index];
		p_task_actuator_dta = &task_actuator_dta_list[index];

		/* Print out: Index & Task execution FSM */
		LOGGER_LOG("   %s = %lu", GET_NAME(index), index);

		state = p_task_actuator_dta->state;
		LOGGER_LOG("   %s = %lu", GET_NAME(state), (uint32_t)state);

		event = p_task_actuator_dta->event;
		LOGGER_LOG("   %s = %lu", GET_NAME(event), (uint32_t)event);

		b_event = p_task_actuator_dta->flag;
		LOGGER_LOG("   %s = %s\r\n", GET_NAME(b_event), (b_event ? "true" : "false"));

		GPIO_PinState led_state = p_task_actuator_cfg->led_off;
		switch (p_task_actuator_dta->state) {
			case ST_LED_XX_OFF:
				state = p_task_actuator_cfg->led_off;
				break;

			case ST_LED_XX_ON:
				state = p_task_actuator_cfg->led_on;
				break;
		}

		HAL_GPIO_WritePin(p_task_actuator_cfg->gpio_port, p_task_actuator_cfg->pin, led_state);
	}

	g_task_actuator_tick_cnt = G_TASK_ACT_TICK_CNT_INI;
}

void task_actuator_update(void *parameters) {
	const task_actuator_cfg_t *p_task_actuator_cfg;
	task_actuator_dta_t *p_task_actuator_dta;
	bool b_time_update_required = false;

	/* Update Task Actuator Counter */
	g_task_actuator_cnt++;

	/* Protect shared resource (g_task_actuator_tick_cnt) */
	__asm("CPSID i");	/* disable interrupts*/
    if (G_TASK_ACT_TICK_CNT_INI < g_task_actuator_tick_cnt) {
    	g_task_actuator_tick_cnt--;
    	b_time_update_required = true;
    }
    __asm("CPSIE i");	/* enable interrupts*/

    while (b_time_update_required) {
		/* Protect shared resource (g_task_actuator_tick_cnt) */
		__asm("CPSID i");	/* disable interrupts*/
		if (G_TASK_ACT_TICK_CNT_INI < g_task_actuator_tick_cnt) {
			g_task_actuator_tick_cnt--;
			b_time_update_required = true;

		} else {
			b_time_update_required = false;
		}
		__asm("CPSIE i");	/* enable interrupts*/

    	for (uint32_t index = 0; ACTUATOR_DTA_QTY > index; index++) {
    		/* Update Task Actuator Configuration & Data Pointer */
			p_task_actuator_cfg = &task_actuator_cfg_list[index];
			p_task_actuator_dta = &task_actuator_dta_list[index];

			switch (p_task_actuator_dta->state) {
				case ST_LED_XX_OFF:

					if (p_task_actuator_dta->flag && EV_LED_XX_ON == p_task_actuator_dta->event) {
						HAL_GPIO_WritePin(p_task_actuator_cfg->gpio_port, p_task_actuator_cfg->pin, p_task_actuator_cfg->led_on);
						p_task_actuator_dta->state = ST_LED_XX_ON;
						p_task_actuator_dta->flag = false;

					} else if (p_task_actuator_dta->flag && EV_LED_XX_BLINK_ON == p_task_actuator_dta->event) {
						HAL_GPIO_WritePin(p_task_actuator_cfg->gpio_port, p_task_actuator_cfg->pin, p_task_actuator_cfg->led_on);
						p_task_actuator_dta->state = ST_LED_XX_ON;
						p_task_actuator_dta->blink_ev = true;
						p_task_actuator_dta->flag = false;
						p_task_actuator_dta->tick = p_task_actuator_cfg->max_tick;

					} else if (p_task_actuator_dta->flag && EV_LED_XX_BLINK_OFF == p_task_actuator_dta->event && p_task_actuator_dta->blink_ev) {
						p_task_actuator_dta->blink_ev = false;
						p_task_actuator_dta->flag = false;

					} else if (p_task_actuator_dta->blink_ev && p_task_actuator_dta->tick > 0) {
						p_task_actuator_dta->tick--;

					} else if (p_task_actuator_dta->blink_ev && p_task_actuator_dta->tick == 0) {
						HAL_GPIO_WritePin(p_task_actuator_cfg->gpio_port, p_task_actuator_cfg->pin, p_task_actuator_cfg->led_on);
						p_task_actuator_dta->state = ST_LED_XX_ON;
						p_task_actuator_dta->tick = p_task_actuator_cfg->max_tick;

					}

					break;

				case ST_LED_XX_ON:

					if (p_task_actuator_dta->flag && EV_LED_XX_OFF == p_task_actuator_dta->event && !p_task_actuator_dta->blink_ev)
					{
						HAL_GPIO_WritePin(p_task_actuator_cfg->gpio_port, p_task_actuator_cfg->pin, p_task_actuator_cfg->led_off);
						p_task_actuator_dta->state = ST_LED_XX_OFF;
						p_task_actuator_dta->flag = false;

					} else if (p_task_actuator_dta->flag && EV_LED_XX_BLINK_OFF == p_task_actuator_dta->event && p_task_actuator_dta->blink_ev) {
						p_task_actuator_dta->blink_ev = false;
						p_task_actuator_dta->flag = false;
						HAL_GPIO_WritePin(p_task_actuator_cfg->gpio_port, p_task_actuator_cfg->pin, p_task_actuator_cfg->led_off);
						p_task_actuator_dta->state = ST_LED_XX_OFF;

					} else if (p_task_actuator_dta->blink_ev && p_task_actuator_dta->tick > 0) {
						p_task_actuator_dta->tick--;

					} else if (p_task_actuator_dta->blink_ev && p_task_actuator_dta->tick == 0) {

						HAL_GPIO_WritePin(p_task_actuator_cfg->gpio_port, p_task_actuator_cfg->pin, p_task_actuator_cfg->led_off);
						p_task_actuator_dta->state = ST_LED_XX_OFF;
						p_task_actuator_dta->tick = p_task_actuator_cfg->max_tick;

					}

					break;

				default:

					break;
			}
		}
	}
}


/********************** end of file ******************************************/
