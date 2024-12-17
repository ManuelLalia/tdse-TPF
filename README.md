# Taller de Sistemas Embebidos TPF - Grupo 2
El sistema de control se encarga de contabilizar la cantidad de autos entrantes a un estacionamiento, donde se tiene en cuenta las limitaciones físicas del mismo proporcionando dos parámetros configurables, los cuales son una advertencia de llenado y la máxima capacidad del estacionamiento.

En su modo normal, se usa el display para obtener la información esencial del sistema, como la cantidad de autos y los parámetros mencionados anteriormente. En su modo set up, el sistema usa el display para permitirle al usuario configurar los parámetros.

SystemCoreClock     => 64MHz (15.625nS)
SysTick Rate Hertz  => 1000 ticks per second (1mS)

app.c (app.h)
 Endless loop, ejecuta las tareas de sensores, temperatura, sistema, 
 actuadores y display, activando la secuencia cuando un evento
 es transmitido de los sensores.

task_sensor.c (task_sensor.h, task_sensor_attribute.h) 
 Controlando los botones y Dip Switch

task_temperatura.c (task_temperatura.h, task_temperatura_attribute.h) 
 Lectura de los sensores de temperatura interno y externo
 mediante un ADC

task_system.c (task_system.h, task_system_attribute.h) 
 Intermediario de los sistemas normal y set up, controlando
 el estado del sistema

task_normal.c (task_normal.h, task_normal_attribute.h) 
 Estado normal de ejecución, contando el ingreso y egreso de
 autos al estacionamiento, limitado por su máxima capacidad

task_set_up.c (task_set_up.h, task_set_up_attribute.h) 
 Estado set up de ejecución, permitiendo modificar los parámetros
 de capacidad máxima y advertencia de capacidad

task_system_interface.c (task_system_interface.h)
 Permite la comunicación entre los sensores y los ADC de 
 temperatura, con el sistema intermediario, de forma desacoplada
 y modularizada
 
task_actuator.c (task_actuator.h, task_actuator_attribute.h) 
 Límitador y Baliza de Sistema con Sirena

task_actuator_interface.c (task_actuator_interface.h)
 Permite la comunicación entre los sistemas (normal y set up)
 con los actuadores de forma desacoplada y modularizada

task_display.c (task_display.h) 
 LCD Display

task_display_interface.c (task_display_interface.h)
 Permite la comunicación entre los sistemas (normal y set up)
 con el display de forma desacoplada y modularizada

logger.h (logger.c)
 Utilities for Retarget "printf" to Console

dwt.h
 Utilities for Mesure "clock cycle" and "execution time" of code
