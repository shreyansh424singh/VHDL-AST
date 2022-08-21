library ieee; 
use ieee.std_logic_1164.all; 
USE IEEE.STD_LOGIC_UNSIGNED.ALL;


entity testbench is    
end testbench; 

architecture fum of testbench is 

component Program_Memory_64x32 is
    port (  
        rd        : out std_logic_vector(31 downto 0);
        ad        : in std_logic_vector(7 downto 0)
        ); 
    end component; 

    signal out1:  std_logic_vector (31 downto 0) := (others => "0");
    signal in1:   std_logic_vector (7 downto 0) := (others => "0");

begin 

DUT: 
    Program_Memory_64x32 
    port map (out1, in1); 

    process 
    begin 
    wait for 100 ns;
    in1 <= "00000000";
    wait for 100 ns;

    in1 <= "00000100";
    wait for 100 ns;

    in1 <= "00001000";
    wait for 100 ns;

    in1 <= "00001100";
    wait for 100 ns;

    in1 <= "00010000";
    wait for 100 ns; 

    ASSERT FALSE REPORT "Test done. Open EPWave to see signals." SEVERITY NOTE;
    wait;
 end process; 
end;