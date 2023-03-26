(* Set Force when [-f|--force] flag is provided *)
type force_flag =
    | NoForce
    | Force

(** Clear all local changes unrecoverably. *)
val clear : force_flag -> unit

(** Push the current branch to origin. *)
val push : force_flag -> unit

(** Rebase local branch on top of origin/<branch>. *)
val rebase : string option -> unit

(** Stash all local changes. *)
val stash : string option -> unit

(** Switch to a new branch and update to the latest version of origin. *)
val switch : string -> unit

(** Sync local branch with the remote branch. *)
val sync : force_flag -> unit

(** Unstash latest changes. *)
val unstash : unit -> unit
