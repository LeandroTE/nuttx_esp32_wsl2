/***********************************************************************************************************************
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * ATTENTION:  This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <https://www.gnu.org/licenses/>.
 *
 * @file    template.h
 * @brief   Standard Time Energy C file template
 * @author  Leandro Pereira
 * @date    30/10/2023
 * @company Time Energy
 *
 **********************************************************************************************************************/

#ifndef TEMPLATE_H_
#define TEMPLATE_H_

/***********************************************************************************************************************
 * INCLUDES
 **********************************************************************************************************************/

#include <stdint.h>
//Include in header files only those declarations that are required for 
//the header file to work correctly and as expected when using the header file's contents.
//Adding multiple include statements to a header file can cause problems

/***********************************************************************************************************************
 * MACROS
 **********************************************************************************************************************/

#define _swap_int16(x) (((unsigned short)(x) >> 8) | ((unsigned short)(x) << 8))

//The #define directive can be use to define MACROS or CONSTANTS, the location of the declaration in this section
// or in the section below is based on the type of the declaration, if it is a MACRO it should be declared in this
// section, if it is a CONSTANT it should be declared in the section below.

/***********************************************************************************************************************
 * COSNTANTS
 **********************************************************************************************************************/

#define VALUE 4

const int GLOBAL_CONSTANT = 2;

/***********************************************************************************************************************
 * GLOGAL TYPES DECLARATIONS
 **********************************************************************************************************************/

typedef struct {
    int dataMember;
} TemplateStructDeclaration;

typedef enum {
    ENUM_MEMBER = 0
} TemplateEnumDeclaration;
/***********************************************************************************************************************
 * GLOBALS VARIABLES
 **********************************************************************************************************************/

int g_globalVariable
int * gp_PointerToGlobalVariable = &g_globalVariable;

/***********************************************************************************************************************
 * PUBLIC FUNCTIONS
 **********************************************************************************************************************/

void Template_Public_Function(float var1, int var2);

/***********************************************************************************************************************
 * END OF FILE
 **********************************************************************************************************************/
#endif /* TEMPLATE_H_ */


// --- Copyng section ---
// Copy this section below when creating a new file for a .h file

/***********************************************************************************************************************
 * © 2023 Time Energy Ltd. All rights reserved.
 *
 * ATTENTION: This file contains confidential information and cannot be
 * reproduced or distributed (in whole or in part), without prior written
 * authorization from Time Energy.
 *
 * @file    template.h
 * @brief   Standard Time Energy C file template
 * @author  Leandro Pereira
 * @date    30/10/2023
 * @company Time Energy
 *
 **********************************************************************************************************************/

/***********************************************************************************************************************
 * INCLUDES
 **********************************************************************************************************************/

/***********************************************************************************************************************
 * MACROS
 **********************************************************************************************************************/

/***********************************************************************************************************************
 * COSNTANTS
 **********************************************************************************************************************/

/***********************************************************************************************************************
 * GLOGAL TYPES DECLARATIONS
 **********************************************************************************************************************/

/***********************************************************************************************************************
 * GLOBALS VARIABLES
 **********************************************************************************************************************/

/***********************************************************************************************************************
 * PUBLIC FUNCTIONS
 **********************************************************************************************************************/

/***********************************************************************************************************************
 * END OF FILE
 **********************************************************************************************************************/
