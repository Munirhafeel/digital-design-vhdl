// 4 bit 8 to 1 mux

library ieee;
use iee.std_logic_1164.all;
    entity mux_8to1_16_bit is
        port ( sel : in std_logic_vector(2 downto 0);
              din0, din1, din2, din3, din4, din5, din, din7 : in std_logic_vector(3 downto 0);
              Z : out std_logic_vector(3 downto 0));
    end mux_8to1_16_bit;

    architecture dataflow of mux_8to1_16_bit is
        begin
            with sel select
                Z <= din0 when "000",
                     din1 when "001",
                     din2 when "010",
                     din3 when "011",
                     din4 when "100",
                     din5 when "101",
                     din6 when "110",
                     din7 when "111";            
        end dataflow;
