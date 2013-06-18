/*
 * Copyright (c) 2005, Eric Crahen
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is furnished
 * to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
 * WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
 * CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 *
 */

#ifndef __ZTATOMICCOUNTIMPL_H__
#define __ZTATOMICCOUNTIMPL_H__

#include <asm/atomic.h>
#include <assert.h>

namespace ZThread {

typedef struct atomic_count_t {

  atomic_t count;

  atomic_count_t() {
    atomic_t init = ATOMIC_INIT(0);
    count = init;
  }

  ~atomic_count_t() {
    assert(atomic_read(&count) == 0);
  }

} ATOMIC_COUNT;


AtomicCount::AtomicCount() {

  _value = reinterpret_cast<void*>(new ATOMIC_COUNT);

}

AtomicCount::~AtomicCount() {

  delete reinterpret_cast<ATOMIC_COUNT*>(_value);

}

void AtomicCount::increment() {

  atomic_inc(&reinterpret_cast<ATOMIC_COUNT*>(_value)->count);

}

bool AtomicCount::decrement() {

  return atomic_dec_and_test(&reinterpret_cast<ATOMIC_COUNT*>(_value)->count);

}

};

#endif // __ZTATOMICCOUNTIMPL_H__
