
let () =
  In_channel.read_all "swuecho.json" 
  |> Hacknews_j.user_of_string
  |> fun user ->
  let open Hacknews_t in
  (* Print the results of the parsing *)
  printf "Title: %s\n" user.id

