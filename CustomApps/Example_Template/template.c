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
 * @file    template.c
 * @brief   Standard Time Energy C file template
 * @author  Leandro Pereira
 * @date    30/10/2023
 *
 **********************************************************************************************************************/

/***********************************************************************************************************************
 * Time Energy Naming Convention
 * Module/Folder       Module
 * file                module_name.h
 * Global Struct       ModulePascalCase
 * Local Struct        PascalCase
 * Struct Members      camelCase
 * 
 * Enum                ModulePascalCase
 * Enum Members        MODULE_ALL_CAPS
 * 
 * Macros              _lower_case
 * Constants           ALL_CAPS (can be defined with #define or const)
 * 
 * Pointer Variables: add a p_ to the prefix. For global variables it would be gp_var, 
 *                    for local variables p_var, for const variables p_VAR.
 * Public functions    Module_Pascal_Case
 * Private functions   Pascal_Case
 * Trivial variables   i,x,n,f etc...
 * Local variables     camelCase
 * Global variables    g_camelCase
 **********************************************************************************************************************/

/***********************************************************************************************************************
 * INCLUDES
 **********************************************************************************************************************/

#include "template.h"

/***********************************************************************************************************************
 * LOCAL MACROS
 **********************************************************************************************************************/

#define _swap_int16(x) (((unsigned short)(x) >> 8) | ((unsigned short)(x) << 8))

//The #define directive can be use to define MACROS or CONSTANTS, the location of the declaration in this section
// or in the section below is based on the type of the declaration, if it is a MACRO it should be declared in this
// section, if it is a CONSTANT it should be declared in the section below.

/***********************************************************************************************************************
 * LOCAL COSNTANTS 
 **********************************************************************************************************************/

#define MACRO 1

const int LOCAL_CONSTANT = 2;

/***********************************************************************************************************************
 * LOCAL TYPES DECLARATIONS
 **********************************************************************************************************************/
typedef struct {
    int dataMember;
} StructDeclaration;

typedef enum {
    ENUM_MEMBER = 0
} EnumDeclaration;

/***********************************************************************************************************************
 * LOCAL VARIABLES
 **********************************************************************************************************************/

int localVariable = 0;
int * p_localVariable = &localVariable;

/***********************************************************************************************************************
 * LOCAL FUNCTIONS DECLARATION
 **********************************************************************************************************************/

static void Private_Function(int var1, int var2);

/***********************************************************************************************************************
 * LOCAL FUNCTIONS
 **********************************************************************************************************************/

/***********************************************************************************************************************
 * @brief  Template_Private_Function
 *
 * @param var1      - var1 description
 * @param var2      - var2 description
 *
 * @return void
 *
 **********************************************************************************************************************/
static void Private_Function(int var1, int var2){
    int localVariable = var1 + var2;
}


/***********************************************************************************************************************
 * PUBLIC FUNCTIONS
 **********************************************************************************************************************/

/***********************************************************************************************************************
 * @brief  Template_Public_Function
 *
 * @param var1      - var1 description
 * @param var2      - var2 description
 *
 * @return void
 *
 **********************************************************************************************************************/
void Template_Public_Function(float var1, int var2) {
    int resultVar = var1 * var2;
}
/***********************************************************************************************************************
 * END OF FILE
 **********************************************************************************************************************/


// --- Copyng section ---
// Copy this section below when creating a new file for a .c file

/***********************************************************************************************************************
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <https://www.gnu.org/licenses/>.
 *
 * @file    template.c
 * @brief   Standard Time Energy C file template
 * @author  Leandro Pereira
 * @date    30/10/2023
 *
 **********************************************************************************************************************/


/***********************************************************************************************************************
 * INCLUDES
 **********************************************************************************************************************/

/***********************************************************************************************************************
 * MACROS
 **********************************************************************************************************************/

/***********************************************************************************************************************
 * LOCAL COSNTANTS
 **********************************************************************************************************************/

/***********************************************************************************************************************
 * LOCAL TYPES DECLARATIONS
 **********************************************************************************************************************/

/***********************************************************************************************************************
 * LOCAL VARIABLES
 **********************************************************************************************************************/

/***********************************************************************************************************************
 * LOCAL FUNCTIONS DECLARATION
 **********************************************************************************************************************/

/***********************************************************************************************************************
 * LOCAL FUNCTIONS
 **********************************************************************************************************************/

/***********************************************************************************************************************
 * PUBLIC FUNCTIONS
 **********************************************************************************************************************/

/***********************************************************************************************************************
 * END OF FILE
 **********************************************************************************************************************/



