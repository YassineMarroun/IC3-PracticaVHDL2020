--------------------------------
architecture funcionF1F2 of funcionF1F2 is
begin
	F1 <= (x and z) or (x and y);
	F2 <= x or (y and z);
end architecture funcionF1F2;
--------------------------------