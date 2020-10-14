----------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

architecture cirCombiCircuito of cirCombinacional is
begin
	error <= (not x(2) and x(1) and not x(0)) or (not x(3) and x(2) and not x(1)) or (not x(3) and x(2) and not x(0));
	cuenta(2) <= (not x(3) and not x(2) and not x(1) and not x(0));
	cuenta(1) <= (not x(3) and not x(2) and x(0)) or (x(3) and not x(2) and not x(1)) or (x(3) and not x(1) and not x(0));
	cuenta(0) <= (not x(3) and x(0) and not(x(2) xor x(1))) or (x(3) and not x(2) and not(x(1) xor x(0))) or (x(3) and x(2) and (x(1) xor x(0)));
end cirCombiCircuito;
----------------------------------