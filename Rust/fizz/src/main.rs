fn main() {
    let num =
        match std::env::args().skip(1).next() {
            None => 5,
            Some (x) => x.parse::<u16>().unwrap()
        };
    println!("Number {}", num);
    fizz(num);
}

fn fizz(n: u16){
    for x in 1..(n+1) {
        let output =
            match (x % 3 == 0, x % 5 == 0) {
                (true, true) =>  "FizzBuzz".to_string(),
                (true, false) => "Fizz".to_string(),
                (false, true) => "Buzz".to_string(),
                (false, false) => format!("{}", x)
            };

        println!("{}", output)
    }
}
