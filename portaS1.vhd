library ieee;
use ieee.std_logic_1164.all;

entity portaS1 is
	port(
		entA,entB,entC : in bit;
		saida : out bit
	);
end portaS1;

architecture behav of portaS1 is
	begin
	saida <= ((entA and entB) or (entA and entC) or (entB and entC));
end architecture behav;
	