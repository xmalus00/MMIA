/*
 * sct.h
 *
 *  Created on: 19. 2. 2020
 *      Author: student
 */
#include "stm32f0xx.h"

#ifndef SCT_H_
#define SCT_H_

void sct_led(uint32_t value);
void sct_init(void);
void sct_value(uint16_t value, uint8_t led);


#endif /* SCT_H_ */
