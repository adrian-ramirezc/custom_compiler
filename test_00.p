// FUNCTION DEFINITION
def my_func ()
    print 4;
fed; 

// STARTING POINT FOR PROGRAM
def main ()

    // FUNCTION CALL
    my_func();

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

    // VARIABLE DEFINITION
    let y;
    // VARIABLE ASSIGNMENT
    y=20;
    print y;
    // VARIABLE DEFINITION AND ASSIGNMENT
    let z = 111;
    print z;

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

    // ASK USER FOR AN INPUT
    let user_input = input;
    print user_input;


    /*

    This 
    is 
    a
    Multi
        Line
    Comment

    */

    // VARIABLE DEFINITION AND ASSIGNMENT
    let adrian_ramirez_ = 25;

    // VARIABLE ASSIGNMENT
    adrian_ramirez_ = 30;
    print adrian_ramirez_;

    // OPERATIONS WITH VARIABLES
    print adrian_ramirez_ - 30;

    // PARENTHESES
    print 1-((5+2)+2-3);

    // BASIC OPERATIONS
    print 3*2;
    print 11/3;
    print 1-5+2;
    print 4+5;
    print 3;
    ;
    print 42;
fed;
