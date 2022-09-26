library ieee;
use ieee.std_logic_1164.all;
    Entity Register8 is
        Port(Data : in std_logic_vector(7 downto 0);
            Load, Clk : in std_logic;
            Q : out std_logic_vector(7 downto 0));
        end Register8;


        Architecture behav of Register8 is
            Signal storage : std_logic_vector(7 downto 0);
                begin
                    process(Data, Load, Clk) begin
                        if (Clk'event and Clk = '1' and Load = '1') then 
                            storage <= Data;
                        elsif (Clk'event and Clk = '0') then 
                            Q <= storage;
                        end if; 
                    end process;
                end;
