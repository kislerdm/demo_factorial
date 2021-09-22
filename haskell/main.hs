module Main where
import Control.Monad

-- 'factorial' calculates factorial given not negative int input.
factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n-1)

-- 'readStdin' reads user's input from stdin as int.
readStdin :: IO Int
readStdin = do
    line <- getLine
    return (read line :: Int)

-- 'cycleStep' performs an execution cycle.
cycleStep :: IO ()
cycleStep = do
    putStrLn("input int")

    i <- readStdin
    if i < 0
        then putStrLn("input must be not negative")
        else putStrLn("factorial of " ++ show(i) ++ " is " ++ show(factorial i))

-- 'main' is the program entrypoint.
main :: IO ()
main = forever(cycleStep)
