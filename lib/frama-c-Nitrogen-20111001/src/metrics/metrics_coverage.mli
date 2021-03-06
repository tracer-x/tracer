(**************************************************************************)
(*                                                                        *)
(*  This file is part of Frama-C.                                         *)
(*                                                                        *)
(*  Copyright (C) 2007-2011                                               *)
(*    CEA (Commissariat � l'�nergie atomique et aux �nergies              *)
(*         alternatives)                                                  *)
(*                                                                        *)
(*  you can redistribute it and/or modify it under the terms of the GNU   *)
(*  Lesser General Public License as published by the Free Software       *)
(*  Foundation, version 2.1.                                              *)
(*                                                                        *)
(*  It is distributed in the hope that it will be useful,                 *)
(*  but WITHOUT ANY WARRANTY; without even the implied warranty of        *)
(*  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the         *)
(*  GNU Lesser General Public License for more details.                   *)
(*                                                                        *)
(*  See the GNU Lesser General Public License version 2.1                 *)
(*  for more details (enclosed in the file licenses/LGPLv2.1).            *)
(*                                                                        *)
(**************************************************************************)

val compute_syntactic: Kernel_function.t -> Cil_datatype.Varinfo.Set.t
(** List of functions that can be syntactically reached from the function *)

val compute_semantic: unit -> Cil_datatype.Varinfo.Set.t
(** Functions analyzed by the value analysis *)

val pp_reached_from_function: Format.formatter -> Kernel_function.t -> unit
(** Pretty-print the functions that can be syntactically reached from the
    parameter *)

val pp_value_coverage:
  unit -> (Format.formatter -> unit) * (Format.formatter -> unit)
(** Return two fonctions that pretty-print the coverage reached by the value
    analysis wrt. the functions syntactically reachable from main *)

val pp_stmts_reached_by_function: Format.formatter -> unit

(*
Local Variables:
compile-command: "make -C ../.."
End:
*)
