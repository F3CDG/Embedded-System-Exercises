-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
-- Date        : Sun Jul  9 20:33:51 2017
-- Host        : daniele-Inspiron-7559 running 64-bit Ubuntu 16.04.2 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/daniele/Sistemi_Embedded/Esercitazione_7/Driver/Esercitazione_7/Driver_GPIO_Xilinx/Terza_tipologia/vivado_project/project_gpio/project_gpio.srcs/sources_1/bd/design_for_gpio/ip/design_for_gpio_xlconcat_0_0/design_for_gpio_xlconcat_0_0_stub.vhdl
-- Design      : design_for_gpio_xlconcat_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_for_gpio_xlconcat_0_0 is
  Port ( 
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );

end design_for_gpio_xlconcat_0_0;

architecture stub of design_for_gpio_xlconcat_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "In0[0:0],In1[0:0],dout[1:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "xlconcat,Vivado 2016.4";
begin
end;
