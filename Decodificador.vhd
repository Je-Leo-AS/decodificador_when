--Exercicio 2) When
library IEEE;
use IEEE.std_logic_1164.all;

entity Decodificador is
port
(
A: in  std_logic_vector(2 downto 0);
S: out std_logic_vector(7 downto 0)

);
end Decodificador;
architecture hardware of Decodificador is
begin
	
	S <= "00000001" when A = "000" else
		 "00000010" when A = "001" else
	     "00000100" when A = "010" else
	     "00001000" when A = "011" else
	     "00010000" when A = "100" else
	     "00100000" when A = "101" else
	     "01000000" when A = "110" else
	     "10000000" when A = "111";
			
end hardware;