(* Auto-generated from "hacknews.atd" *)


type user = Hacknews_t.user = {
  about: string;
  created: int;
  delay: int;
  id: string;
  karma: int;
  submitted: int list
}

let write__1 = (
  Ag_oj_run.write_list (
    Yojson.Safe.write_int
  )
)
let string_of__1 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__1 ob x;
  Bi_outbuf.contents ob
let read__1 = (
  Ag_oj_run.read_list (
    Ag_oj_run.read_int
  )
)
let _1_of_string s =
  read__1 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_user : _ -> user -> _ = (
  fun ob x ->
    Bi_outbuf.add_char ob '{';
    let is_first = ref true in
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"about\":";
    (
      Yojson.Safe.write_string
    )
      ob x.about;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"created\":";
    (
      Yojson.Safe.write_int
    )
      ob x.created;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"delay\":";
    (
      Yojson.Safe.write_int
    )
      ob x.delay;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"id\":";
    (
      Yojson.Safe.write_string
    )
      ob x.id;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"karma\":";
    (
      Yojson.Safe.write_int
    )
      ob x.karma;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"submitted\":";
    (
      write__1
    )
      ob x.submitted;
    Bi_outbuf.add_char ob '}';
)
let string_of_user ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_user ob x;
  Bi_outbuf.contents ob
let read_user = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    Yojson.Safe.read_lcurl p lb;
    let field_about = ref (Obj.magic 0.0) in
    let field_created = ref (Obj.magic 0.0) in
    let field_delay = ref (Obj.magic 0.0) in
    let field_id = ref (Obj.magic 0.0) in
    let field_karma = ref (Obj.magic 0.0) in
    let field_submitted = ref (Obj.magic 0.0) in
    let bits0 = ref 0 in
    try
      Yojson.Safe.read_space p lb;
      Yojson.Safe.read_object_end lb;
      Yojson.Safe.read_space p lb;
      let f =
        fun s pos len ->
          if pos < 0 || len < 0 || pos + len > String.length s then
            invalid_arg "out-of-bounds substring position or length";
          match len with
            | 2 -> (
                if String.unsafe_get s pos = 'i' && String.unsafe_get s (pos+1) = 'd' then (
                  3
                )
                else (
                  -1
                )
              )
            | 5 -> (
                match String.unsafe_get s pos with
                  | 'a' -> (
                      if String.unsafe_get s (pos+1) = 'b' && String.unsafe_get s (pos+2) = 'o' && String.unsafe_get s (pos+3) = 'u' && String.unsafe_get s (pos+4) = 't' then (
                        0
                      )
                      else (
                        -1
                      )
                    )
                  | 'd' -> (
                      if String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 'l' && String.unsafe_get s (pos+3) = 'a' && String.unsafe_get s (pos+4) = 'y' then (
                        2
                      )
                      else (
                        -1
                      )
                    )
                  | 'k' -> (
                      if String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 'r' && String.unsafe_get s (pos+3) = 'm' && String.unsafe_get s (pos+4) = 'a' then (
                        4
                      )
                      else (
                        -1
                      )
                    )
                  | _ -> (
                      -1
                    )
              )
            | 7 -> (
                if String.unsafe_get s pos = 'c' && String.unsafe_get s (pos+1) = 'r' && String.unsafe_get s (pos+2) = 'e' && String.unsafe_get s (pos+3) = 'a' && String.unsafe_get s (pos+4) = 't' && String.unsafe_get s (pos+5) = 'e' && String.unsafe_get s (pos+6) = 'd' then (
                  1
                )
                else (
                  -1
                )
              )
            | 9 -> (
                if String.unsafe_get s pos = 's' && String.unsafe_get s (pos+1) = 'u' && String.unsafe_get s (pos+2) = 'b' && String.unsafe_get s (pos+3) = 'm' && String.unsafe_get s (pos+4) = 'i' && String.unsafe_get s (pos+5) = 't' && String.unsafe_get s (pos+6) = 't' && String.unsafe_get s (pos+7) = 'e' && String.unsafe_get s (pos+8) = 'd' then (
                  5
                )
                else (
                  -1
                )
              )
            | _ -> (
                -1
              )
      in
      let i = Yojson.Safe.map_ident p f lb in
      Ag_oj_run.read_until_field_value p lb;
      (
        match i with
          | 0 ->
            field_about := (
              (
                Ag_oj_run.read_string
              ) p lb
            );
            bits0 := !bits0 lor 0x1;
          | 1 ->
            field_created := (
              (
                Ag_oj_run.read_int
              ) p lb
            );
            bits0 := !bits0 lor 0x2;
          | 2 ->
            field_delay := (
              (
                Ag_oj_run.read_int
              ) p lb
            );
            bits0 := !bits0 lor 0x4;
          | 3 ->
            field_id := (
              (
                Ag_oj_run.read_string
              ) p lb
            );
            bits0 := !bits0 lor 0x8;
          | 4 ->
            field_karma := (
              (
                Ag_oj_run.read_int
              ) p lb
            );
            bits0 := !bits0 lor 0x10;
          | 5 ->
            field_submitted := (
              (
                read__1
              ) p lb
            );
            bits0 := !bits0 lor 0x20;
          | _ -> (
              Yojson.Safe.skip_json p lb
            )
      );
      while true do
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_object_sep p lb;
        Yojson.Safe.read_space p lb;
        let f =
          fun s pos len ->
            if pos < 0 || len < 0 || pos + len > String.length s then
              invalid_arg "out-of-bounds substring position or length";
            match len with
              | 2 -> (
                  if String.unsafe_get s pos = 'i' && String.unsafe_get s (pos+1) = 'd' then (
                    3
                  )
                  else (
                    -1
                  )
                )
              | 5 -> (
                  match String.unsafe_get s pos with
                    | 'a' -> (
                        if String.unsafe_get s (pos+1) = 'b' && String.unsafe_get s (pos+2) = 'o' && String.unsafe_get s (pos+3) = 'u' && String.unsafe_get s (pos+4) = 't' then (
                          0
                        )
                        else (
                          -1
                        )
                      )
                    | 'd' -> (
                        if String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 'l' && String.unsafe_get s (pos+3) = 'a' && String.unsafe_get s (pos+4) = 'y' then (
                          2
                        )
                        else (
                          -1
                        )
                      )
                    | 'k' -> (
                        if String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 'r' && String.unsafe_get s (pos+3) = 'm' && String.unsafe_get s (pos+4) = 'a' then (
                          4
                        )
                        else (
                          -1
                        )
                      )
                    | _ -> (
                        -1
                      )
                )
              | 7 -> (
                  if String.unsafe_get s pos = 'c' && String.unsafe_get s (pos+1) = 'r' && String.unsafe_get s (pos+2) = 'e' && String.unsafe_get s (pos+3) = 'a' && String.unsafe_get s (pos+4) = 't' && String.unsafe_get s (pos+5) = 'e' && String.unsafe_get s (pos+6) = 'd' then (
                    1
                  )
                  else (
                    -1
                  )
                )
              | 9 -> (
                  if String.unsafe_get s pos = 's' && String.unsafe_get s (pos+1) = 'u' && String.unsafe_get s (pos+2) = 'b' && String.unsafe_get s (pos+3) = 'm' && String.unsafe_get s (pos+4) = 'i' && String.unsafe_get s (pos+5) = 't' && String.unsafe_get s (pos+6) = 't' && String.unsafe_get s (pos+7) = 'e' && String.unsafe_get s (pos+8) = 'd' then (
                    5
                  )
                  else (
                    -1
                  )
                )
              | _ -> (
                  -1
                )
        in
        let i = Yojson.Safe.map_ident p f lb in
        Ag_oj_run.read_until_field_value p lb;
        (
          match i with
            | 0 ->
              field_about := (
                (
                  Ag_oj_run.read_string
                ) p lb
              );
              bits0 := !bits0 lor 0x1;
            | 1 ->
              field_created := (
                (
                  Ag_oj_run.read_int
                ) p lb
              );
              bits0 := !bits0 lor 0x2;
            | 2 ->
              field_delay := (
                (
                  Ag_oj_run.read_int
                ) p lb
              );
              bits0 := !bits0 lor 0x4;
            | 3 ->
              field_id := (
                (
                  Ag_oj_run.read_string
                ) p lb
              );
              bits0 := !bits0 lor 0x8;
            | 4 ->
              field_karma := (
                (
                  Ag_oj_run.read_int
                ) p lb
              );
              bits0 := !bits0 lor 0x10;
            | 5 ->
              field_submitted := (
                (
                  read__1
                ) p lb
              );
              bits0 := !bits0 lor 0x20;
            | _ -> (
                Yojson.Safe.skip_json p lb
              )
        );
      done;
      assert false;
    with Yojson.End_of_object -> (
        if !bits0 <> 0x3f then Ag_oj_run.missing_fields p [| !bits0 |] [| "about"; "created"; "delay"; "id"; "karma"; "submitted" |];
        (
          {
            about = !field_about;
            created = !field_created;
            delay = !field_delay;
            id = !field_id;
            karma = !field_karma;
            submitted = !field_submitted;
          }
         : user)
      )
)
let user_of_string s =
  read_user (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
