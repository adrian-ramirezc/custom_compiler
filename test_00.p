// FUNCTION DEFINITION (OUTSIDE MAIN FUNCTION)
def my_func ()
    print 4;
    return 15;

// FUNCTIONS WITH SAME ARG NAMES
def func_with_args (arg1, arg2)
    print arg1 + arg2;
    return arg2;

def func3 (arg3, arg4, arg5)
    return 3;

// STARTING POINT FOR PROGRAM
def main ()
    print func3 (arg3 = 1, arg4 = 2, arg5 = 3);

    // FUNCTION WITH ARGS
    print func_with_args (arg1 = 1, arg2 = 1);

    // FUNCTION CALL (multiple times, assign to a variable)
    print my_func();
    my_func();
    let abc = my_func();
    print abc;

    // AND, OR, NOT
    print  !True; //0
    print !False; //1

    print True && True; //1
    print True && False; //0
    print False && False; //0

    print True || True; //1
    print True || False; //1
    print False || False; //0

    // COMPARISON OPERATORS
    let num1 = 10;
    let num2 = 25;

    print num1 != num2; //1
    print num1 != num1; //0

    print num1 == num2; // 0
    print num1 == num1; // 1

    print num1 <= num1; //1
    print num1 <= num2; //1
    print num2 <= num1; //0

    print num1 >= num2; //0
    print num1 >= num1; //1
    print num2 >= num1; //1

    print num1 > num2; //0
    print num2 > num1; //1
    print num1 < num2; //1
    print num2 < num1; //0

    print 32;

    // BOOLEAN CONSTANTS
    let boolean_var = True;
    print boolean_var;
    print True;
    print False;

    // LIST OF VARIABLES DEF
    let a, b, c;

    // ARRAY DEFINITION
    let mylist [5];

    // WHILE DO 
    let x = 10;
    while (x)   
        do
            print x;
            x = x - 1;
    endwhile;


    // IF THEN ELSE CONDITION
    if (0)
        then
            print 1;
        else 
            print 0;
    endif;

    /*

    This 
    is 
    a
    Multi
        Line
    Comment

    */

    // ASK USER FOR AN INPUT
    let user_input = input();
    print user_input;

    // OPERATIONS WITH VARIABLES
    let adrian  = 25;
    print adrian - 20;

    // VARIABLE DEFINITION
    let y;
    // VARIABLE ASSIGNMENT
    y=20;
    print y;

    // VARIABLE DEFINITION AND ASSIGNMENT
    let mines = 25;
    print mines;

    // PARENTHESES
    print 1-((5+2)+2-3);

    // ARITHMETIC OPERATIONS
    print 3*2;
    print 11/3;
    print 1-5+2;
    print 4+5;
    print 3;
    ;
    print 42;

    exit(5);
    return 0;
