library ieee;
use ieee.std_logic_1164.all;
    entity tristate_buffer14 is
        port( input : in std_logic_vector(13 downto 0);
            enable : in std_logic;
            output : out std_logic_vector(13 downto 0)); 
        end tristate_buffer14;

    architecture behav of tristate_buffer14 is
        begin
            output <= input when enable ='1' else "ZZZZZZZZZZZZZZ"
        end behav;