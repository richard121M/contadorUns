library ieee;
use ieee.std_logic_1164.all;

entity portaS2 is
	port(
		entA,entB,entC : in bit;
		saida : out bit
	);
end portaS2;

architecture behav of portaS2 is
	begin
	saida <= ((not(entA) and (entB xor entC)) or (entA and (entB xnor entC)));
end architecture behav;
	