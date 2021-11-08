library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_unsigned.all;

entity tb_att4 is
end tb_att4;

architecture att4 of tb_att4 is 

component att4 is 
    port( entradaA, entradaB : in STD_LOGIC_VECTOR (3 downto 0);
            gt,eq,lt : out STD_LOGIC);
end component; 


signal x,y : STD_LOGIC_VECTOR(3 downto 0);
signal maior,menor,igual : STD_LOGIC;
begin
instance_att4: att4 port map (entradaA =>x,entradaB =>y,gt =>maior,lt =>menor,eq =>igual);
x <= x"1", x"2" after 20 ns, x"4" after 40 ns, x"1" after 60 ns, x"7" after 80 ns;
y <= x"1", x"6" after 20 ns, x"2" after 40 ns, x"4" after 60 ns, x"5" after 80 ns;
end att4;
