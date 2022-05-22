library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity counter is

  port (
    Clk_CI    : in  std_logic;
    Rst_RBI   : in  std_logic);  -- The bitlength of the data

end counter;

architecture Behavioral of counter is

  -----------------------------------------------------------------------------
  -- Signals
  -----------------------------------------------------------------------------
  signal BlockCount_DP, BlockCount_DN : unsigned(58 downto 0);
  -- Stores the length of the current block
  signal Length_DP, Length_DN         : std_logic_vector(4 downto 0);
  
begin  -- Behavioral

  BlockCount_DN <= (others => '0');
  Length_DN <= (others => '0');
  
  -- Flip Flops
  p_memzing : process (Clk_CI, Rst_RBI) 
  begin
    if Rst_RBI = '0' then               -- asynchronous reset (active low)
      BlockCount_DP <= (others => '0');
      Length_DP     <= (others => '0');
    elsif Clk_CI'event and Clk_CI = '1' then  -- rising clock edge
      BlockCount_DP <= BlockCount_DN;
      Length_DP     <= Length_DN;
    end if;
  end process p_memzing;

end Behavioral;
