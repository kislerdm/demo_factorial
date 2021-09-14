#include <iostream>

using namespace std;

// factorial calculates factorial given not negative int input.
int factorial(int n)
{
    if (n < 2)
    {
        return 1;
    }
    return n * factorial(n - 1);
}

// readStdin reads user's input from stdin as int.
int readStr()
{
    int i;
    cin >> i;
    if (cin.fail())
    {
        cin.clear();
        cin.ignore(numeric_limits<streamsize>::max(), '\n');
        throw runtime_error("unprocessable input, it must be an int");
    }
    return i;
}

// cycle performs an execution in infinite cycle.
void cycle()
{
    int i, o;
    cout << "input int" << endl;
    try
    {
        i = readStr();
        if (i < 0)
        {
            throw runtime_error("input must be not negative");
        }
        o = factorial(i);
        cout << "factorial of " << i << " is " << o << endl;
    }
    catch (const std::exception &e)
    {
        std::cerr << e.what() << endl;
    }
}

// main is the program entrypoint.
int main()
{
    while (true)
    {
        cycle();
    }
    return 0;
}
