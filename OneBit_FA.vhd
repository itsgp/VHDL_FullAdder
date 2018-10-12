library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

Entity OneBit_FA is
    Port ( a, b, cin : in   STD_LOGIC;
           sum, cout : out  STD_LOGIC);
End OneBit_FA;

Architecture Structural of OneBit_FA is

	component My_AND is
		Port ( a, b : in   STD_LOGIC;
				 c    : out  STD_LOGIC);
	End component;
	
	component My_OR is
		Port ( a, b : in   STD_LOGIC;
				 c    : out  STD_LOGIC);
	End component;
	
	component My_XOR is
		Port ( a, b : in   STD_LOGIC;
				 c    : out  STD_LOGIC);
	End component;
	
	signal andOne_out, andTwo_out, andThree_out, orOne_out, xorOne_out : STD_LOGIC;

begin

	-- carry_out implementation
	
	andOne:My_AND port map (a, b, andOne_out);
	andTwo:My_AND port map (b, cin, andTwo_out);
	andThree:My_AND port map (a, cin, andThree_out);
	
	orOne:My_OR port map (andOne_out, andTwo_out, orOne_out);
	orTwo:My_OR port map (orOne_out, andThree_out, cout);
	
	-- Sum implementation
	
	xorOne:My_XOR port map (a, b, xorOne_out);
	xorTwo:My_XOR port map (xorOne_out, cin, sum);

End Structural;

