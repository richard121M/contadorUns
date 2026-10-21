-- bibliotecas e pacotes
library ieee;
use ieee.std_logic_1164.all;

-- entidade
entity contadorUns is
	port(
		A,B,C : in bit;
		S1,S2 : out bit
	);
end contadorUns;

-- Arquitetura
architecture main of contadorUns is
--		component somaS1 is
		
--	   end component somaS1;
	begin
	S1 <= (
			(not(A) and B and C) or
			(A and not(B) and C) or
			(A and B and not(C)) or
			(A and B and C)
	);
	S2 <= (
			(not(A) and not(B) and C) or
			(not(A) and B and not(C)) or
			(A and not(B) and not(C)) or
			(A and B and C)
	);
	
end architecture main;
	