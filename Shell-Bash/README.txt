
***************
*** sintaxe ***
*************** 

#!/bin/bash -> bash script.

$1 -> first param.
$@ -> all params.
$? -> exit code.

exit 0 -> successful operation.
exit 1 -> failed operation (generic).
exit 2 to 255 -> failed operation (custom).

VARIABLE -> variable.
$VARIABLE -> access the variable value.
${VARIABLE} -> access the variable value.

echo "" -> terminal output.
echo -e "" -> enables interpretation of escape codes after backslash.

    \a -> alert (bell).
    \b -> rewind.
    \c -> suppress next output.
    \e -> escape character.
    \f -> page feed (FF).
    \n -> newline (NL).
    \r -> carriage return (CR).
    \t -> horizontal tab.
    \v -> vertical tab.
    
printf "" -> powerful terminal output (better than echo).

    \\ -> displays a backslash character.
    \b -> displays a backspace character.
    \n -> displays a new line.
    \r -> displays a carriage return.
    \t -> displays a horizontal tab.
    \v -> displays a vertical tab.

    %b     -> print the argument while expanding backslash escape sequences.
    %q     -> print the argument shell-quoted, reusable as input.
    %d, %i -> print the argument as a signed decimal integer.
    %u     -> print the argument as an unsigned decimal integer.
    %o     -> print the argument as an unsigned octal integer.
    %x, %X -> print the argument as an unsigned hexadecimal integer. %x prints lower-case letters and %X prints upper-case.
    %e, %E -> print the argument as a floating-point number in exponential notation. %e prints lower-case letters and %E prints upper-case.
    %a, %A -> print the argument as a floating-point number in hexadecimal fractional notation. %a prints lower-case letters and %A prints upper-case.
    %g, %G -> print the argument as a floating-point number in normal or exponential notation, whichever is more appropriate for the given value and precision. %g prints lower-case letters and %G prints upper-case.
    %c     -> print the argument as a single character.
    %f     -> print the argument as a floating-point number.
    %s     -> print the argument as a string.
    %%     -> print a literal % symbol.
    
    -     -> Left align the printed text within the field. By default, the text is right-aligned.
    +     -> Prefix the numbers with a + or - signs. By default, only negative numbers are prefixed with a negative sign.
    0     -> Pads numbers with leading zeros rather than space.
    blank -> Prefix the positive numbers with a blank space and negative numbers with a minus (-).
    #     -> An alternative format for numbers.

read VARIABLE -> terminal input to variable.
read -p "" VARIABLE -> terminal output + terminal input.

command -> runs the command
$(command) -> runs the command and captures its output.

if ->

    if [ condition ]; then
        ...
    elif [[ condition && condition ]] || [[ condition && condition ]]; then
        ...
    else
        ...
    fi

operators -> 

    -eq -> True if is equal.
    -ne -> True if is not equal.
    -lt -> True if is less than.
    -le -> True if is less than or equal.
    -gt -> True if is greater than.
    -ge -> True if is greater than or equal.

    -z -> True if string is empty.
    -n -> True if string is not empty.
     = -> True if the strings are equal.
    != -> True if the strings are not equal.

    -d -> True if file is a directory.
    -e -> True if file exists.
    -f -> True if file exists and is a regular file.
    -r -> True if file is readable by you.
    -s -> True if file exists and is not empty.
    -w -> True if the file is writable by you.
    -x -> True if the file is executable by you.

for ->

    for VARIABLE in VARIABLE; do
        ...
    done



****************
**** colors ****
**************** 

# Reset
NC='\033[0m'              # No color

# Regular Colors
Black='\033[0;30m'        # Black
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Blue='\033[0;34m'         # Blue
Purple='\033[0;35m'       # Purple
Cyan='\033[0;36m'         # Cyan
White='\033[0;37m'        # White

# Bold
BBlack='\033[1;30m'       # Black
BRed='\033[1;31m'         # Red
BGreen='\033[1;32m'       # Green
BYellow='\033[1;33m'      # Yellow
BBlue='\033[1;34m'        # Blue
BPurple='\033[1;35m'      # Purple
BCyan='\033[1;36m'        # Cyan
BWhite='\033[1;37m'       # White

# Underline
UBlack='\033[4;30m'       # Black
URed='\033[4;31m'         # Red
UGreen='\033[4;32m'       # Green
UYellow='\033[4;33m'      # Yellow
UBlue='\033[4;34m'        # Blue
UPurple='\033[4;35m'      # Purple
UCyan='\033[4;36m'        # Cyan
UWhite='\033[4;37m'       # White

# Background
On_Black='\033[40m'       # Black
On_Red='\033[41m'         # Red
On_Green='\033[42m'       # Green
On_Yellow='\033[43m'      # Yellow
On_Blue='\033[44m'        # Blue
On_Purple='\033[45m'      # Purple
On_Cyan='\033[46m'        # Cyan
On_White='\033[47m'       # White

# High Intensity
IBlack='\033[0;90m'       # Black
IRed='\033[0;91m'         # Red
IGreen='\033[0;92m'       # Green
IYellow='\033[0;93m'      # Yellow
IBlue='\033[0;94m'        # Blue
IPurple='\033[0;95m'      # Purple
ICyan='\033[0;96m'        # Cyan
IWhite='\033[0;97m'       # White

# Bold High Intensity
BIBlack='\033[1;90m'      # Black
BIRed='\033[1;91m'        # Red
BIGreen='\033[1;92m'      # Green
BIYellow='\033[1;93m'     # Yellow
BIBlue='\033[1;94m'       # Blue
BIPurple='\033[1;95m'     # Purple
BICyan='\033[1;96m'       # Cyan
BIWhite='\033[1;97m'      # White

# High Intensity backgrounds
On_IBlack='\033[0;100m'   # Black
On_IRed='\033[0;101m'     # Red
On_IGreen='\033[0;102m'   # Green
On_IYellow='\033[0;103m'  # Yellow
On_IBlue='\033[0;104m'    # Blue
On_IPurple='\033[0;105m'  # Purple
On_ICyan='\033[0;106m'    # Cyan
On_IWhite='\033[0;107m'   # White
