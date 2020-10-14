----------------------------
-- NOT de 1 entrada
library IEEE;
use IEEE.std_logic_1164.all;

entity not1E is
	port(y	:out std_logic;
	     x	:in std_logic);
end entity not1E;

architecture not1E of not1E is
begin
	y <= not x;
end architecture not1E;
----------------------------

----------------------------
-- XOR de 2 entradas
library IEEE;
use IEEE.std_logic_1164.all;

entity xor2E is
	port(y		:out std_logic;
	     x0, x1	:in std_logic);
end entity xor2E;

architecture xor2E of xor2E is
begin
	y <= x0 xor x1;
end architecture xor2E;
----------------------------

----------------------------
-- AND de 3 entradas
library IEEE;
use IEEE. std_logic_1164. all;
entity and3E is
	port(y		:out std_logic;
	     x0, x1, x2	:in std_logic);
end entity and3E;

architecture and3E of and3E is
begin
	y <= x0 and x1 and x2;
end architecture and3E;
----------------------------

----------------------------
-- AND de 4 entradas
library IEEE;
use IEEE. std_logic_1164. all;
entity and4E is
	port(y			:out std_logic;
	     x0, x1, x2, x3	:in std_logic);
end entity and4E;

architecture and4E of and4E is
begin
	y <= x0 and x1 and x2 and x3;
end architecture and4E;
----------------------------

----------------------------
-- OR de 3 entradas
library IEEE;
use IEEE.std_logic_1164.all;

entity or3E is
	port(y		:out std_logic;
	     x0, x1, x2	:in std_logic);
end entity or3E;

architecture or3E of or3E is
begin
	y <= x0 or x1 or x2;
end architecture or3E;
----------------------------