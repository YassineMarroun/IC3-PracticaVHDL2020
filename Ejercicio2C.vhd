--------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

architecture cirCombiPLogicas of cirCombinacional is
	signal nx0, nx1, nx2, nx3, NOTsXOR1, NOTsXOR2				:std_logic;
	signal sXOR1, sXOR2, sXOR3						:std_logic;
	signal sAND1, sAND2, sAND3, sAND4, sAND5, sAND6, sAND7, sAND8, sAND9	:std_logic;
	-- Declaracion de las clases de los componentes
	component not1E is
		port(y	:out std_logic;
		     x	:in std_logic);
	end component not1E;

	component xor2E is
		port(y 		:out std_logic;
		     x0, x1	:in std_logic);
	end component xor2E;

	component and3E is
		port(y 		:out std_logic;
		     x0, x1, x2	:in std_logic);
	end component and3E;

	component or3E is
		port(y 		:out std_logic;
		     x0, x1, x2	:in std_logic);
	end component or3E;

	component and4E is
		port(y 			:out std_logic;
		     x0, x1, x2, x3	:in std_logic);
	end component and4E;

	begin
		-- Instanciacion y conexion de los componentes
		NOT1 :component not1E port map (nx3, x(3));
		NOT2 :component not1E port map (nx2, x(2));
		NOT3 :component not1E port map (nx1, x(1));
		NOT4 :component not1E port map (nx0, x(0));
		XOR1 :component xor2E port map (sXOR1, x(2), x(1));
		XOR2 :component xor2E port map (sXOR2, x(1), x(0));
		XOR3 :component xor2E port map (sXOR3, x(1), x(0));
		NOT5 :component not1E port map (NOTsXOR1, sXOR1);
		NOT6 :component not1E port map (NOTsXOR2, sXOR2);
		AND1 :component and3E port map (sAND1, nx2, x(1), nx0);
		AND2 :component and3E port map (sAND2, nx3, x(2), nx1);
		AND3 :component and3E port map (sAND3, nx3, x(2), nx0);
		AND4 :component and3E port map (sAND4, nx3, nx2, x(0));
		AND5 :component and3E port map (sAND5, x(3), nx2, nx1);
		AND6 :component and3E port map (sAND6, x(3), nx1, nx0);
		AND7 :component and3E port map (sAND7, nx3, x(0), NOTsXOR1);
		AND8 :component and3E port map (sAND8, x(3), nx2, NOTsXOR2);
		AND9 :component and3E port map (sAND9, x(3), x(2), sXOR3);
		OR1  :component or3E port map (error, sAND1, sAND2, sAND3);
		OR2  :component or3E port map (cuenta(0), sAND7, sAND8, sAND9);
		OR3  :component or3E port map (cuenta(1), sAND4, sAND5, sAND6);
		AND10  :component and4E port map (cuenta(2), nx3, nx2, nx1, nx0);
end architecture cirCombiPLogicas;
--------------------------------

