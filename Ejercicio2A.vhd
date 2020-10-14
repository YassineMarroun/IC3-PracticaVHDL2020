----------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity cirCombinacional is
	generic(n :integer);
	port(error	:out std_logic;
	     cuenta	:out std_logic_vector(n-1 downto 0);
	     x 	:in std_logic_vector(2**(n-1)-1 downto 0));
end entity cirCombinacional;

architecture cirCombinacional of cirCombinacional is
begin
	process(x)
		variable tempCuenta :unsigned(n-1 downto 0);
		-- La variable iniSecuencia se pone a 1 al detectar
		-- el inicio de la primera secuencia de ceros
		variable iniSecuencia :std_logic;
		-- La variable finSecuencia se pone a 1 al detectar
		-- el final de la primera secuencia de ceros
		variable finSecuencia :std_logic;
	begin
		error <= '0';
		iniSecuencia := '0';
		finSecuencia := '0';
		tempCuenta := (others => '0');
	 	for i in 0 to 2**(n-1)-1 loop
			if(finSecuencia = '1' and x(i) = '0') then
				tempCuenta := (others => '0');
				error <= '1';
				exit;
			elsif(iniSecuencia = '1' and x(i) = '1') then
				finSecuencia := '1';
			elsif(x(i) = '0') then
				iniSecuencia := '1';
				tempCuenta := tempCuenta + 1;
			end if;
		end loop;
		cuenta <= std_logic_vector(tempCuenta);
	end process;
end cirCombinacional;
----------------------------------