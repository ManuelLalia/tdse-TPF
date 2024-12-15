/*
 * display.h
 *
 *  Created on: Dec 14, 2024
 *      Author: Grupo 2
 */

#ifndef INC_DISPLAY_H_
#define INC_DISPLAY_H_

/********************** CPP guard ********************************************/
#ifdef __cplusplus
extern "C" {
#endif

/********************** inclusions *******************************************/
#include <stdint.h>
/********************** macros ***********************************************/

/********************** typedef **********************************************/

/********************** external data declaration ****************************/

/********************** external functions declaration ***********************/
void displayInit();

void displayCharPositionWrite(uint8_t charPositionX, uint8_t charPositionY);

void displayStringWrite(const char* str);

#ifdef __cplusplus
extern }
#endif

#endif /* INC_DISPLAY_H_ */