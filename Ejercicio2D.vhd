---------------------------------
-- Banco de pruebas
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity bp_cirCombinacional is
	constant N :integer :=3;
end entity bp_cirCombinacional;

architecture bp_cirCombinacional of bp_cirCombinacional is
	signal error	:std_logic;
	signal cuenta	:std_logic_vector(2 downto 0);	-- Conectar salidas UUT
	signal x	:std_logic_vector(3 downto 0);	-- Conectar entradas UUT

	component cirCombinacional is
	generic(n :integer :=N);
	port(error	:out std_logic;
	     cuenta	:out std_logic_vector(n-1 downto 0);
	     x 		:in std_logic_vector(2**(n-1)-1 downto 0));
	end component cirCombinacional;

	type vector_test is array(0 to 5) of std_logic_vector(3 downto 0);
	type error_array is array(0 to 5) of std_logic;
	type cuenta_array is array(0 to 5) of std_logic_vector(2 downto 0);
	
	constant x_constant :vector_test :=
		("0000", "0001", "0110", "1010", "1110", "1111");
	constant error_constant :error_array :=
		('0', '0', '1', '1', '0', '0');
	constant cuenta_constant :cuenta_array :=
		("100", "011", "000", "000", "001", "000");

	begin
	-- Instanciar y conectar UUT
	uut :component cirCombinacional
		port map (error, cuenta, x);

	gen_vec_test :process
		variable num_errores :integer := 0;	-- Vector de test
	begin
		for i in 0 to 5 loop
			x <= x_constant(i);
			wait for 10 ns;
			if (error /= error_constant(i)) or (cuenta /= cuenta_constant (i)) then
				report("Error en el dato de entrada ("& integer'image(i) & ").");
				num_errores := num_errores + 1;
			end if;
		end loop;
		report ("Se han registrado " & integer'image(num_errores) & " errores.");
		wait;
	end process gen_vec_test;
end architecture bp_cirCombinacional;
---------------------------------