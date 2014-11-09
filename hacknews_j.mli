(* Auto-generated from "hacknews.atd" *)


type user = Hacknews_t.user = {
  about: string;
  created: int;
  delay: int;
  id: string;
  karma: int;
  submitted: int list
}

val write_user :
  Bi_outbuf.t -> user -> unit
  (** Output a JSON value of type {!user}. *)

val string_of_user :
  ?len:int -> user -> string
  (** Serialize a value of type {!user}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_user :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> user
  (** Input JSON data of type {!user}. *)

val user_of_string :
  string -> user
  (** Deserialize JSON data of type {!user}. *)

