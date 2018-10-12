library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

Entity FourBit_FA is
    Port ( a, b : in  STD_LOGIC_VECTOR (3 downto 0);
           cin  : in  STD_LOGIC;
           sum : out  STD_LOGIC_VECTOR (3 downto 0);
           cout : out  STD_LOGIC);
End FourBit_FA;

Architecture Structural of FourBit_FA is

	component TwoBit_FA is
		Port ( a, b : in  STD_LOGIC_VECTOR(1 downto 0);
				 cin  : in  STD_LOGIC;
				 sum	: out  STD_LOGIC_VECTOR(1 downto 0);
				 cout : out  STD_LOGIC);
	End component;
	
	signal mid_carry : STD_LOGIC;

begin

	FA0:TwoBit_FA port map (a(1 downto 0), b(1 downto 0), cin, sum(1 downto 0), mid_carry);
	FA1:TwoBit_FA port map (a(3 downto 2), b(3 downto 2), mid_carry, sum(3 downto 2), cout);

End Structural;

