let fizz = "Fizz\n"
let buzz = "Buzz\n"
let fizzbuzz = "FizzBuzz\n"

let fb n =
  match n mod 3, n mod 5 with
    | 0, 0 -> print_string fizzbuzz
    | 0, _ -> print_string fizz
    | _, 0 -> print_string buzz
    | _, _ -> Printf.printf "%s\n" (string_of_int n)

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
  for i = 1 to number do fb i done
