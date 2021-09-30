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
      pushw %edi
      pushw %e12
      pushw %e13
      pushw %e14
      pushw %e15
      pushw %ebx
      pushw %ebp
      movw %esp, (%edi)

      movw (%esi), %esp
      popw %ebp
      popw %ebx
      popw %e15
      popw %e14
      popw %e13
      popw %e12
      popw %edi
      ret
