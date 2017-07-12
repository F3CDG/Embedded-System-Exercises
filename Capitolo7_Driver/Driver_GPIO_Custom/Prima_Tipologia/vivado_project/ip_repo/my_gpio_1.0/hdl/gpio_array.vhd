----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.06.2017 09:43:01
-- Design Name: 
-- Module Name: gpio_array - Structural
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

entity gpio_array is
    generic(gpio_size : natural := 8);
    Port ( pad_out : in STD_LOGIC_VECTOR (gpio_size-1 downto 0);
           pad_rw_n : in STD_LOGIC_VECTOR (gpio_size-1 downto 0);
           pad_en : in STD_LOGIC_VECTOR (gpio_size-1 downto 0);
           pad_in : out STD_LOGIC_VECTOR (gpio_size-1 downto 0);
           pad : inout STD_LOGIC_VECTOR (gpio_size-1 downto 0));
end gpio_array;

architecture Structural of gpio_array is

    component gpio is
    Port ( pad_out : in STD_LOGIC;
           pad_rw_n : in STD_LOGIC;
           pad_en : in STD_LOGIC;
           pad_in : out STD_LOGIC;
           pad : inout STD_LOGIC);
    end component;

begin

    GPIO_ARRAY_INST : for i in 0 to gpio_size-1 generate
        GPIO_INST : gpio port map(
            pad_out => pad_out(i),
            pad_rw_n => pad_rw_n(i),
            pad_en => pad_en(i),
            pad_in => pad_in(i),
            pad => pad(i)
        );
    end generate;


end Structural;
