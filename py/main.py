"Demo of a factorial calculator given user input from stdin."


def factorial(n: int) -> int:
    """Calculates factorial given not negative int input.

    Args:
        n: Not negative int input.

    Returns:
        Factorial value, i.e. n! = n * (n - 1) * (n - 2) * ... * 2 * 1
    """
    return 1 if n < 2 else n * factorial(n - 1)


def read_stdin() -> int:
    """Reads user's input from stdin.

    Returns:
        Input integer.

    Raises:
        ValueError: raises in case input is not an integer.
    """
    return int(input())


def cycle() -> None:
    "Performs an execution in infinite cycle."
    print("input int")
    try:
        i = read_stdin()
        if i < 0:
            raise Exception("input must be not negative")
    except ValueError:
        print("unprocessable input, it must be an int")

    print(f"factorial of {i} is {factorial(i)}")


def main() -> None:
    "The program entrypoint."
    while True:
        cycle()


if __name__ == "__main__":
    main()
