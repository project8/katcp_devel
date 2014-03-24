/*
 * tdestroy.h
 *
 *  Created on: Mar 24, 2014
 *      Author: nsoblath
 */

#ifndef TDESTROY_H_
#define TDESTROY_H_

// tdestroy is a GNU extension and therefore not available on Mac OS X
// this will allow compiling on a mac, but will create a memory leak
//#ifndef _GNU_SOURCE
#if defined(__APPLE__) || defined(__MACH__)
void tdestroy(void *root, void (*free_node)(void *nodep));
#endif
//#endif

#endif /* TDESTROY_H_ */
