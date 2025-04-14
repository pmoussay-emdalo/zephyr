/* linker.ld - Linker command/script file
 *
 * Copyright (c) 2025 Microchip Technology Inc
 *
 * SPDX-License-Identifier: Apache-2.0
 */

SECTION_PROLOGUE(.resource_table,, SUBALIGN(0x10))
{
	__rsctable_start = .;
	KEEP(*(.resource_table*))
	__rsctable_end = .;
} GROUP_LINK_IN(ROMABLE_REGION)
__rsctable_load_start = LOADADDR(.resource_table);
