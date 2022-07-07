4893
+34.3
345.353
-24
-34.54e35
+23E243
23E+243
23e-243
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Register_File_16x32 is
  port(
    rd1        : out std_logic_vector(31 downto 0);
    rd2        : out std_logic_vector(31 downto 0);
    wd         : in  std_logic_vector(31 downto 0);
    writeEnable : in  std_logic;
    rad1     : in  std_logic_vector(3 downto 0);
    rad2     : in  std_logic_vector(3 downto 0);
    wad      : in  std_logic_vector(3 downto 0);
    clk      : in  std_logic
    );
end Register_File_16x32;
    

architecture behavioral of Register_File_16x32 is
  type registerFile is array(0 to 15) of std_logic_vector(31 downto 0);
  signal registers : registerFile;
begin 
  rd1 <= registers(to_integer(unsigned(rad1))); 
  rd2 <= registers(to_integer(unsigned(rad2)));

process (clk) is
  begin
    if writeEnable = '1' then
      registers(to_integer(unsigned(wad))) <= wd;        --write only if writeEnable is 1 and clock is triggered
    end if;
  end process;
end behavioral;