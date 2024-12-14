/********************** inclusions *******************************************/
/* Project includes. */
#include "main.h"

/* Demo includes. */
#include "logger.h"
#include "dwt.h"

/* Application & Tasks includes. */
#include "board.h"
#include "task_system.h"
#include "task_actuator.h"
#include "task_display.h"
#include "task_sensor.h"
#include "task_temperatura.h"

/********************** macros and definitions *******************************/
#define G_APP_CNT_INI		0ul
#define G_APP_TICK_CNT_INI	0ul

#define TASK_X_WCET_INI		0ul
#define TASK_X_DELAY_MIN	0ul

typedef struct {
	void (*task_init)(void *);		// Pointer to task (must be a
									// 'void (void *)' function)
	void (*task_update)(void *);	// Pointer to task (must be a
									// 'void (void *)' function)
	void *parameters;				// Pointer to parameters
} task_cfg_t;

typedef struct {
    uint32_t WCET;				// Worst-case execution time (microseconds)
} task_dta_t;

/********************** internal data declaration ****************************/
const task_cfg_t task_cfg_list[]	= {
		{task_sensor_init, 		task_sensor_update, 	 NULL},
		{task_temperatura_init, task_temperatura_update, NULL},
		{task_system_init, 		task_system_update, 	 NULL},
		{task_actuator_init,	task_actuator_update, 	 NULL},
		{task_display_init,		task_display_update, 	 NULL},
};

#define TASK_QTY	(sizeof(task_cfg_list)/sizeof(task_cfg_t))

/********************** internal functions declaration ***********************/

/********************** internal data definition *****************************/
const char *p_sys	= " Sistema de Control de Estacionamiento\r\n";
const char *p_app	= " TPF – Grupo 02\r\n";

/********************** external data declaration ****************************/
uint32_t g_app_cnt;
uint32_t g_app_time_us;

volatile uint32_t g_app_tick_cnt;

task_dta_t task_dta_list[TASK_QTY];

/********************** external functions definition ************************/
void app_init(void) {
	uint32_t index;

	/* Print out: Application Initialized */
	LOGGER_LOG("\r\n");
	LOGGER_LOG("%s is running - Tick [mS] = %d\r\n", GET_NAME(app_init), (int)HAL_GetTick());

	LOGGER_LOG(p_sys);
	LOGGER_LOG(p_app);

	g_app_cnt = G_APP_CNT_INI;

	/* Print out: Application execution counter */
	LOGGER_LOG(" %s = %d\r\n", GET_NAME(g_app_cnt), (int)g_app_cnt);

	/* Go through the task arrays */
	for (index = 0; TASK_QTY > index; index++)
	{
		/* Run task_x_init */
		(*task_cfg_list[index].task_init)(task_cfg_list[index].parameters);

		/* Init variables */
		task_dta_list[index].WCET = TASK_X_WCET_INI;
	}

	cycle_counter_init();
}

void app_update(void) {
	uint32_t index;
	uint32_t cycle_counter;
	uint32_t cycle_counter_time_us;

	/* Check if it's time to run tasks */
	if (G_APP_TICK_CNT_INI < g_app_tick_cnt){
    	g_app_tick_cnt--;

    	/* Update App Counter */
    	g_app_cnt++;
    	g_app_time_us = 0;

    	/* Go through the task arrays */
    	for (index = 0; TASK_QTY > index; index++) {
			cycle_counter_reset();

    		/* Run task_x_update */
			(*task_cfg_list[index].task_update)(task_cfg_list[index].parameters);

			cycle_counter = cycle_counter_get();
			cycle_counter_time_us = cycle_counter_time_us();

			/* Update variables */
	    	g_app_time_us += cycle_counter_time_us;

			if (task_dta_list[index].WCET < cycle_counter_time_us)
			{
				task_dta_list[index].WCET = cycle_counter_time_us;
			}
	    }
    }
}

void HAL_SYSTICK_Callback(void) {
	g_app_tick_cnt++;

	g_task_sensor_tick_cnt++;
	g_task_temperatura_tick_cnt++;
	g_task_system_tick_cnt++;
	g_task_actuator_tick_cnt++;
}

/********************** end of file ******************************************/
