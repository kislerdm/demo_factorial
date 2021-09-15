<?php
// factorial calculates factorial given not negative int input.
function factorial($n)
{
    if ($n < 2) {
        return 1;
    }
    return $n * factorial($n - 1);
}

// readStdin reads user's input from stdin as int.
function readStdin()
{
    fscanf(STDIN, "%d\n", $i);
    return $i;
}

// cycle performs an execution cycle.
function cycle()
{
    echo "input int\n";
    $i = readStdin();
    if ("${i}" == "")
    {
        echo "unprocessable input, it must be an int\n";
    } else {
        if ($i < 0)
        {
            echo "input must be not negative\n";
        } else {
            $o = factorial($i);
            echo "factorial of ${i} is ${o}\n";
        }
    }
}

// main is the program entrypoint.
function main()
{
	while (1)
    {
		cycle();
	}
}

main()
?>
