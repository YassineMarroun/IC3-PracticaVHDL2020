----------------------------------
-- Banco de pruebas del circuito Ejercicio 1
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity bp_funcionF1F2 is
	constant RETARDO :time := 20 ns; -- Retardo usado en el test
end entity bp_funcionF1F2;

architecture bp_funcionF1F2 of bp_funcionF1F2 is
	
	-- Declaracion de las senhales locales
	signal F1, F2	:std_logic;
	signal x, y, z	:std_logic;
	
	-- Declaracion de los componentes
	component funcionF1F2 is
		port(F1, F2	:out std_logic;
		     x, y, z	:in std_logic);
	end component funcionF1F2;
	begin
		-- Instancia del circuito de test
		UUT :component funcionF1F2 port map
			(F1, F2, x, y, z);
		vector_test :process is
			variable valor :unsigned(2 downto 0);
			begin
				-- Generar todos los posibles valores de entrada
				for i in 0 to 7 loop
					valor := to_unsigned(i,3);
					x <= std_logic(valor(2));
					y <= std_logic(valor(1));
					z <= std_logic(valor(0));
					wait for RETARDO;
				end loop;
				wait;	-- Final de la simulacion
		end process vector_test;
end architecture bp_funcionF1F2;
----------------------------------