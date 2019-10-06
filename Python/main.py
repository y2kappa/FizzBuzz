import argparse

def fizz (n):
    for i in range (1, n+1):
        if i % 15 == 0:
            print ("FizzBuzz")
        elif i % 5 == 0:
            print ("Buzz")
        elif i % 3 == 0:
            print ("Fizz")
        else:
            print (i)

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "-n",
        "--number",
        dest="number",
        help="FizzBuzz limit")

    args = parser.parse_args()
    value = 10
    if args.number is not None:
        value = int (args.number)

    fizz(value)