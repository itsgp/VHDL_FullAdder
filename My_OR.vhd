library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

Entity My_OR is
    Port ( a, b : in   STD_LOGIC;
           c    : out  STD_LOGIC);
End My_OR;

Architecture Structural of My_OR is

begin

c <= a OR b;

End Structural;

