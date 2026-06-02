# basic_calculator

---

## Synchronous ALU Calculator

This module implements a synthesizable, synchronous 8-bit **ALU (Arithmetic Logic Unit) Calculator** designed in Verilog. It processes two 8-bit inputs on the rising edge of a clock signal to perform a variety of arithmetic, logical, and bit-shift operations based on a 3-bit operational selection bus.

### Key Features

**Synchronous Execution:** All mathematical and logical operations are registered and synchronized to the rising edge of the master clock.


**Versatile Instruction Set:** Supports basic arithmetic (addition, subtraction, multiplication, division), bitwise logic (AND, OR), and bit manipulation (left shift, right shift).


**Safe Fallback Design:** Features a default case state that clears the output to zero if an invalid or undefined operand code is encountered.



---

### Port Descriptions

 **clk** (Input, 1-bit): Master Clock signal. Operations are evaluated and registered on its rising edge.


 
**A** (Input, 8-bit): Primary 8-bit parallel data input operand.


 
**B** (Input, 8-bit): Secondary 8-bit parallel data input operand.

 
**operand** (Input, 3-bit): Operation selection bus used to decide the functioning mode of the calculator.

 
**result** (Output, 8-bit): Registered parallel data output bus displaying the calculation outcome.



---

### Operational Truth Table (Instruction Set)

The module decodes the 3-bit `operand` input to route the calculated value to the `result` register:

* 
**3'b000 (Addition):** Adds operand A and operand B ($A + B$).


* 
**3'b001 (Subtraction):** Subtracts operand B from operand A ($A - B$).


* 
**3'b010 (Multiplication):** Multiplies operand A by operand B ($A \times B$).


* 
**3'b011 (Division):** Divides operand A by operand B ($A / B$).


* 
**3'b100 (Bitwise AND):** Computes the bitwise AND logic between A and B ($A \ & \ B$).


* 
**3'b101 (Bitwise OR):** Computes the bitwise OR logic between A and B ($A \ | \ B$).


* 
**3'b110 (Logical Shift Left):** Shifts operand A left by 1 bit position ($A \ll 1$).


* 
**3'b111 (Logical Shift Right):** Shifts operand A right by 1 bit position ($A \gg 1$).


* 
**Default State:** Outputs zero (`8'b0`) for any unhandled execution anomalies.



---

### Design Implementation Notes

> ⚠️ **Bit-Width and Overflow Notice:** The `result` output bus is constrained to 8 bits. Operations like multiplication ($A \times B$) or addition ($A + B$) can easily exceed 8 bits of data depending on the inputs. This module does not output carry-out or overflow flags; any bit overflow beyond the 8-bit limit will be truncated. Ensure the instantiation wrapper accounts for potential bit truncation during high-value calculations.
> 
>
