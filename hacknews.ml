
let swuecho_json = "
{
  about : \"great\",
  created : 1277430665,
  delay : 0,
  id : \"swuecho\",
  karma : 96,
  submitted : [ 8560746, 8560737, 8313001, 8185298, 8158766, 8126920, 8126917, 7776277, 7763895, 7763847, 7763832, 7695043, 7216206, 6958068, 6955206, 6932961, 6358429, 5508632, 5276108, 5239330, 4417926, 4414349, 4394917 ]
}" ;;

let () = Hacknews_j.user_of_string swuecho_json
    |> (fun user -> 
            print_endline  user.Hacknews_t.about;
            print_endline  user.Hacknews_t.id;)


