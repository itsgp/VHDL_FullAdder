library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

Entity My_AND is
    Port ( a, b : in   STD_LOGIC;
           c    : out  STD_LOGIC);
End My_AND;

Architecture Structural of My_AND is

begin

c <= a AND b;

End Structural;

