
# ICS3203-CAT2-Assembly

## Author

Karanja, Austin Matubia - 148478

### Tasks Overview

1. **Control Flow and Conditional Logic**
   - Classifies an input number as "POSITIVE," "NEGATIVE," or "ZERO" using branching logic.
2. **Array Manipulation with Looping and Reversal**
   - Accepts an array of integers, reverses the array in place, and outputs the result.
3. **Modular Program with Subroutines for Factorial Calculation**
   - Computes the factorial of an input number using a subroutine, managing registers with the stack.
4. **Data Monitoring and Control Using Port-Based Simulation**
   - Simulates sensor value monitoring to control a motor or trigger an alarm.

## Compiling and Running Instructions

1. Ensure you have an assembler such as NASM installed on your system.
2. Compile the code with the following command:
   ```
   nasm -f elf64 <filename.asm> e.g task1.asm
   ```
3. Link the object file:
   ```
   ld -o <output_file> <filename.o>
   ```
4. Run the program:
   ```
   ./<output_file>
   ```

## Challenges and Insights

- **Task 1**: Choosing between conditional and unconditional jumps required careful thought to maintain readability while ensuring correct flow control.
- **Task 2**: Reversing an array in place without using additional memory was challenging but achieved by swapping elements iteratively.
- **Task 3**: Managing registers efficiently with the stack highlighted the importance of modular programming in assembly.
- **Task 4**: Simulating hardware interactions required understanding memory manipulation and conditional logic effectively.


