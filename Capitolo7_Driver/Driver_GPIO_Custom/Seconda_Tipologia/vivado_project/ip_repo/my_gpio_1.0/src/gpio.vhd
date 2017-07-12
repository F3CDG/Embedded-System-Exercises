----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.06.2017 09:30:29
-- Design Name: 
-- Module Name: gpio - Dataflow
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity gpio is
    Port ( pad_out : in STD_LOGIC;
           pad_rw_n : in STD_LOGIC;
           pad_en : in STD_LOGIC;
           pad_in : out STD_LOGIC;
           pad : inout STD_LOGIC);
end gpio;

architecture Dataflow of gpio is

begin

    pad_in <= pad when pad_en='1' else '0';
    pad <= pad_out and pad_en when pad_rw_n='0' else 'Z';

end Dataflow;
