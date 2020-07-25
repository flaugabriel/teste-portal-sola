/* cache8.h
 * Copyright (c) 2011, Peter Ohler
 * All rights reserved.
 */

#ifndef OX_CACHE8_H
#define OX_CACHE8_H

#include "ruby.h"
#include "stdint.h"

typedef struct _cache8	*Cache8;
typedef uint64_t	slot_t;
typedef uint64_t	sid_t;

extern void	ox_cache8_new(Cache8 *cache);
extern void	ox_cache8_delete(Cache8 cache);

extern slot_t	ox_cache8_get(Cache8 cache, sid_t key, slot_t **slot);

//extern void	ox_cache8_print(Cache8 cache);

#endif /* OX_CACHE8_H */
