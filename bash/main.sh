# factorial calculates factorial given not negative int input.
factorial() {
    fact=1
    num=$1
    while [ ${num} -gt 1 ]
        do
            fact=$((fact * num))
            num=$((num - 1))
        done
    echo ${fact}
}

# readStdin reads user's input from stdin as int.
readSrdin() {
    (
    read r
    if [[ ($((r + 1)) -eq 1) && (${r} != 1) ]]; then
        exit 1
    fi
    echo ${r}
    )
}

# cycle performs an execution cycle.
cycle() {
    echo "input int"
    i=$(readSrdin)
    if [ $? -eq 1 ]; then
        echo "unprocessable input, it must be an int"
    else
        if [ ${i} -gt 0 ]; then
            o=$(factorial ${i})
            echo "factorial of ${i} is ${o}"
        else
            echo "input must be not negative"
        fi
    fi
}

# main is the program entrypoint.
main() {
    while true; do
        cycle
    done
}

main
