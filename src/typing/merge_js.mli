(**
 * Copyright (c) 2014-present, Facebook, Inc.
 * All rights reserved.
 *
 * This source code is licensed under the BSD-style license found in the
 * LICENSE file in the "flow" directory of this source tree. An additional grant
 * of patent rights can be found in the PATENTS file in the same directory.
 *)

val merge_component_strict: Context.t list -> Context.t list ->
  (Context.t * string * Modulename.t * Context.t) list ->
  (string * string * Context.t) list ->
  (string * Modulename.t * Context.t) list ->
  Context.t ->
  unit

val restore: Context.t ->
  Context.t list -> Context.t -> unit

val merge_lib_file:
  Context.t ->
  Context.t ->
  Errors.ErrorSet.t * Errors.ErrorSuppressions.t

module ContextOptimizer: sig
  val sig_context : Context.t list -> SigHash.t
end
