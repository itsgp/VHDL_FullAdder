library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

Entity TwoBit_FA is
	Port ( a, b : in  STD_LOGIC_VECTOR(1 downto 0);
			 cin  : in  STD_LOGIC;
          sum	: out  STD_LOGIC_VECTOR(1 downto 0);
			 cout : out  STD_LOGIC);
End TwoBit_FA;

Architecture Structural of TwoBit_FA is

	component OneBit_FA is
		Port ( a, b, cin : in   STD_LOGIC;
				 sum, cout : out  STD_LOGIC);
	End component;
	
	signal mid_carry : STD_LOGIC;

begin

	FA0:OneBit_FA port map (a(0), b(0), cin, sum(0), mid_carry);
	FA1:OneBit_FA port map (a(1), b(1), mid_carry, sum(1), cout);

End Structural;

