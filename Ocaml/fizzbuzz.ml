let generate n =
  let rec aux i =
    if i > n then
      ()
    else
      begin
        let output =
          match i mod 3 = 0, i mod 5 = 0 with
          | true, true -> "FizzBuzz"
          | true, false -> "Fizz"
          | false, true -> "Buzz"
          | false, false -> string_of_int i
        in
        Printf.printf "%s \n" output;
        aux (i+1)
      end
  in
  aux 1



let () =
  let default_value = 10 in
  let number =
    if Array.length Sys.argv = 2 then
      let arg = Sys.argv.(1) in
      try int_of_string arg
      with Failure _ ->
        Printf.printf "Cmdline arg %s can't be converted to int \n." arg;
        default_value
    else
      (Printf.printf "Cmdline arg not provided, using %d.\n" default_value;
      default_value)
  in

  Printf.printf "Starting FizzBuzz for %d \n" number;
  generate number
