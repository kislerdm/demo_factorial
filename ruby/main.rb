# factorial calculates factorial given not negative int input.
def factorial(n)
    return n < 2 ? 1 : n * factorial(n-1);
end

# readStdin reads user's input from stdin as int.
def readStdin()
    iStr = gets
    if !iStr.match("[0-9]+")
        raise "unprocessable input, it must be an int"
    end
    return iStr.to_i
end

# cycle performs an execution cycle.
def cycle()
    puts "input int"
    begin
        i = readStdin()
    rescue RuntimeError => e
        puts e
    else
        if i < 0
            puts "input must be not negative"
        else
            puts "factorial of #{i} is #{factorial(i)}"
        end
    end
end

# main is the program entrypoint.
def main()
    while true
        cycle()
    end
end

if __FILE__ == $0
    main()
end
