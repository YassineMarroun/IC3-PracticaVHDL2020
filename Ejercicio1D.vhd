--------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

architecture circuito of funcionF1F2 is
	signal sA1, sA2, sA3 :std_logic;
	-- Declaracion de las clases de los componentes
	component and2E is
		port(f 		:out std_logic;
		     x0, x1	:in std_logic);
	end component and2E;

	component or2E is
		port(f 		:out std_logic;
		     x0, x1	:in std_logic);
	end component or2E;
	begin
		-- Instanciacion y conexion de los componentes
		AND1 :component and2E port map (sA1, x, z);
		AND2 :component and2E port map (sA2, x, y);
		AND3 :component and2E port map (sA3, y, z);
		OR1  :component or2E port map (F1, sA1, sA2);
		OR2  :component or2E port map (F2, x, sA3);
end architecture circuito;
--------------------------------