// Allows us to avoid unnecessary allocations
use std::borrow::Cow;

fn main() {
    let num =
        match std::env::args().skip(1).next() {
            None => 5,
            Some (x) => x.parse::<u32>().unwrap()
        };

    println!("Number {}", num);

    (1..(num+1)).map(|n| match (n%3, n%5) {
        (0, 0) => "FizzBuzz".into(),
        (0, _) => "Fizz".into(),
        (_, 0) => "Buzz".into(),
        _ => Cow::from(n.to_string())
    }).for_each(|n| println!("{}", n));
}
