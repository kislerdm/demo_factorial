const readline = require('readline').createInterface({
    input: process.stdin,
    output: process.stdout
}),
    regex = /[0-9]+/;

// factorial calculates factorial given not negative int input.
function factorial(n) {
    return n < 2 ? 1 : n * factorial(n - 1);
}

// readStdin reads user's input from stdin as int.
function readStdin(i) {
    if (!i.match(regex)) {
        throw "unprocessable input, it must be an int";
    } else {
        return parseInt(i);
    }
}

// cycle performs an execution in infinite cycle.
async function cycle() {
    return new Promise(() => {
        readline.question(`input int\n`, input => {
            i = readStdin(input);
            try {
                if (i < 0) {
                    console.error("input must be not negative");
                } else {
                    console.log(`factorial of ${i} is ${factorial(i)}`);
                }
            } catch (err) {
                console.error(err);
            }
            readline.close();
        })
    })
}

// main is the program entrypoint.
async function main() {
    while (true) {
        await cycle();
    }
}

main()
