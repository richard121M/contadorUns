-- bibliotecas e pacotes
library ieee;
use ieee.std_logic_1164.all;

-- entidade
entity saidaS1 is
	port(
		entA,entB,entC : in bit;
		saida : out bit
	);
end saidaS1;

-- Arquitetura
architecture behav of saidaS1 is
	begin
	saida <= ((entA and entB) or (entA and entC) or (entB and entC));
end architecture behav;
	