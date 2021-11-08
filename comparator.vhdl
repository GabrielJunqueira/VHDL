library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_unsigned.all;
entity att4 is
    port(
        entradaA : in STD_LOGIC_VECTOR (3 downto 0);
        entradaB : in STD_LOGIC_VECTOR (3 downto 0);
        gt : out STD_LOGIC;
        eq : out STD_LOGIC;
        lt : out STD_LOGIC
    );
end att4;

architecture arc_att4 of att4 is
begin 
        with entradaA = entradaB select
                eq <= '1' when true, 
                                        '0' when others;

        with entradaA > entradaB select
                gt <= '1' when true,
                                        '0' when others;

        with entradaA < entradaB select
                lt <= '1' when true, 
                                        '0' when others;

end arc_att4;
