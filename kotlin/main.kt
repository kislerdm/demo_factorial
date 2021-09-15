// factorial calculates factorial given not negative int input.
fun factorial(n: Int): Int {
    if (n < 2) {
        return 1
    }
    return n * factorial(n - 1)
}

// readStdin reads user's input from stdin as int.
fun readStdin(): Int {
    return readLine()!!.toInt()
}

// cycle performs an execution cycle.
fun cycle() {
    println("input int")
    var i: Int? = try { readStdin() } catch (e: Exception) { null }
    if (i == null) {
        println("unprocessable input, it must be an int")
    } else {
        if (i < 0) {
            println("input must be not negative")
        } else {
            println("factorial of ${i} is ${factorial(i)}")
        }
    }
}

// main is the program entrypoint.
fun main() {
    while (true) {
        cycle()
    }
}
