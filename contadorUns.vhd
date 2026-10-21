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
	component saidaS1 is
		port( entA, entB, entC: in bit;
				saida: out bit);
	end component saidaS1;

	begin
	-- instaciacao nominal
		s01:saidaS1 port map( entA => A, entB => B, entC => C, saida => S1);
	
end architecture main;
	