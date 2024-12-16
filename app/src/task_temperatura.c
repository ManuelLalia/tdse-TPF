/*
 * task_temperatura.c
 *
 *  Created on: Dec 12, 2024
 *      Author: Grupo 2
 */

/********************** inclusions *******************************************/
/* Project includes. */
#include "main.h"

/* Demo includes. */
#include "logger.h"
#include "dwt.h"

/* Application & Tasks includes. */
#include "board.h"
#include "app.h"
#include "task_temperatura_attribute.h"
#include "task_system_attribute.h"
#include "task_system_interface.h"

/********************** macros and definitions *******************************/
#define G_TASK_TMP_CNT_INIT			0ul
#define G_TASK_TMP_TICK_CNT_INI		0ul

#define DEL_BTN_XX_MIN				0ul
#define DEL_BTN_XX_MED				25ul
#define DEL_BTN_XX_MAX				50ul

/********************** external data declaration ****************************/
extern ADC_HandleTypeDef hadc1;
extern ADC_HandleTypeDef hadc2;

/********************** internal data declaration ****************************/

const task_temperatura_cfg_t task_temperatura_cfg_list[] = {
	{EV_SYS_XX_TMP_INTERNO, 40, &hadc1},
	{EV_SYS_XX_TMP_SENSOR, 10, &hadc2},
};

#define TEMPERATURA_CFG_QTY	(sizeof(task_temperatura_cfg_list)/sizeof(task_temperatura_cfg_t))

task_temperatura_dta_t task_temperatura_dta_list[] = {
	{0, 0},
	{0, 0},
};

#define TEMPERATURA_DTA_QTY	(sizeof(task_temperatura_dta_list)/sizeof(task_temperatura_dta_t))

/********************** internal functions declaration ***********************/
HAL_StatusTypeDef ADC_Poll_Read(ADC_HandleTypeDef* hadc, uint16_t *value);


/********************** internal data definition *****************************/

/********************** external data declaration ****************************/
uint32_t g_task_temperatura_cnt;
volatile uint32_t g_task_temperatura_tick_cnt;

/********************** external functions definition ************************/
void task_temperatura_init(void *parameters) {
	/* Print out: Task Initialized */
	LOGGER_LOG("  %s is running - Task Temperatura\r\n", GET_NAME(task_temperatura_init));
	LOGGER_LOG("  %s is a Internal and external temperature reading\r\n", GET_NAME(task_temperatura));

	g_task_temperatura_cnt = G_TASK_TMP_CNT_INIT;

	/* Print out: Task execution counter */
	LOGGER_LOG("   %s = %lu\r\n", GET_NAME(g_task_temperatura_cnt), g_task_temperatura_cnt);

	g_task_temperatura_tick_cnt = G_TASK_TMP_TICK_CNT_INI;
}

void task_temperatura_update(void *parameters) {
	const task_temperatura_cfg_t *p_task_temperatura_cfg;
	task_temperatura_dta_t *p_task_temperatura_dta;
	bool b_time_update_required = false;

	/* Update Task Sensor Counter */
	g_task_temperatura_cnt++;

	/* Protect shared resource (g_task_sensor_tick_cnt) */
	__asm("CPSID i");	/* disable interrupts*/
    if (G_TASK_TMP_TICK_CNT_INI < g_task_temperatura_tick_cnt) {
    	g_task_temperatura_tick_cnt--;
    	b_time_update_required = true;
    }
    __asm("CPSIE i");	/* enable interrupts*/

    while (b_time_update_required) {
		/* Protect shared resource (g_task_sensor_tick_cnt) */
		__asm("CPSID i");	/* disable interrupts*/
		if (G_TASK_TMP_TICK_CNT_INI < g_task_temperatura_tick_cnt) {
			g_task_temperatura_tick_cnt--;
			b_time_update_required = true;

		} else {
			b_time_update_required = false;
		}
		__asm("CPSIE i");	/* enable interrupts*/

    	for (uint32_t index = 0; TEMPERATURA_CFG_QTY > index; index++) {
    		/* Update Task Sensor Configuration & Data Pointer */
			p_task_temperatura_cfg = &task_temperatura_cfg_list[index];
			p_task_temperatura_dta = &task_temperatura_dta_list[index];

			uint16_t value;
			if (HAL_OK != ADC_Poll_Read(p_task_temperatura_cfg->hadc, &value)) {
				continue;
			}

			p_task_temperatura_dta->value = value;

			if (p_task_temperatura_dta->value_previo > p_task_temperatura_dta->value + p_task_temperatura_cfg->variacion_max || \
					p_task_temperatura_dta->value > p_task_temperatura_dta->value_previo  + p_task_temperatura_cfg->variacion_max) {

				// put_event_tmp_task_system(p_task_temperatura_cfg->event, p_task_temperatura_dta->value);
				p_task_temperatura_dta->value_previo = p_task_temperatura_dta->value;
			}
		}
    }
}

HAL_StatusTypeDef ADC_Poll_Read(ADC_HandleTypeDef* hadc, uint16_t *value) {
	HAL_StatusTypeDef res = HAL_ADC_Start(hadc);

	if (HAL_OK == res) {
		res = HAL_ADC_PollForConversion(hadc, 0);

		if (HAL_OK == res) {
			*value = HAL_ADC_GetValue(hadc);
		}
	}

	return res;
}

/********************** end of file ******************************************/
