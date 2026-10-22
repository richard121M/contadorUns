library ieee;
use ieee.std_logic_1164.all;

entity contadorUns is
	port(
		A,B,C : in bit;
		S1,S2 : out bit
	);
end contadorUns;

architecture main of contadorUns is


	component portaS1 is
		port( entA, entB, entC: in bit; 
				saida: out bit);
	end component portaS1;
	
	component portaS2 is
		port( entA, entB, entC: in bit; 
				saida: out bit);
	end component portaS2;
	
	
	begin
		ps1:portaS1 port map( entA => A, entB => B, entC => C, saida => S1);
		ps2:portaS2 port map( entA => A, entB => B, entC => C, saida => S2);
end architecture main;
	