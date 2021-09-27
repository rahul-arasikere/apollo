/******************************************************************************
 * Copyright 2018 The Apollo Authors. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *****************************************************************************/

.globl ctx_swap
.type  ctx_swap, @function
ctx_swap:
      pushw %rdi
      pushw %r12
      pushw %r13
      pushw %r14
      pushw %r15
      pushw %rbx
      pushw %rbp
      movw %rsp, (%rdi)

      movw (%rsi), %rsp
      popw %rbp
      popw %rbx
      popw %r15
      popw %r14
      popw %r13
      popw %r12
      popw %rdi
      ret
