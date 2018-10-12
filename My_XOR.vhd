library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

Entity My_XOR is
    Port ( a, b : in   STD_LOGIC;
           c    : out  STD_LOGIC);
End My_XOR;

Architecture Structural of My_XOR is

begin

c <= a XOR b;

End Structural;

