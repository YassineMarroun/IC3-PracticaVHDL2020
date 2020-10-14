--------------------------------
-- AND de 2 entradas
library IEEE;
use IEEE.std_logic_1164.all;

entity and2E is
	port(f		:out std_logic;
	     x0, x1	:in std_logic);
end entity and2E;

architecture and2E of and2E is
begin
	f <= x0 and x1;
end architecture and2E;
--------------------------------


--------------------------------
-- OR de 2 entradas
library IEEE;
use IEEE.std_logic_1164.all;

entity or2E is
	port(f		:out std_logic;
	     x0, x1	:in std_logic);
end entity or2E;

architecture or2E of or2E is
begin
	f <= x0 or x1;
end architecture or2E;
--------------------------------