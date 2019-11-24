-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Sun Nov 10 22:21:51 2019
-- Host        : DESKTOP-P038UOU running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ vga_rom_sim_netlist.vhdl
-- Design      : vga_rom
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bindec is
  port (
    ena_array : out STD_LOGIC_VECTOR ( 10 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bindec;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bindec is
begin
ENOUT: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => addra(2),
      I1 => addra(3),
      I2 => addra(0),
      I3 => addra(1),
      O => ena_array(0)
    );
\ENOUT__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => addra(2),
      I1 => addra(3),
      I2 => addra(1),
      I3 => addra(0),
      O => ena_array(1)
    );
\ENOUT__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => addra(3),
      I1 => addra(1),
      I2 => addra(2),
      I3 => addra(0),
      O => ena_array(2)
    );
\ENOUT__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => addra(3),
      I1 => addra(0),
      I2 => addra(2),
      I3 => addra(1),
      O => ena_array(3)
    );
\ENOUT__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => addra(3),
      I1 => addra(2),
      I2 => addra(1),
      I3 => addra(0),
      O => ena_array(4)
    );
\ENOUT__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => addra(2),
      I1 => addra(1),
      I2 => addra(3),
      I3 => addra(0),
      O => ena_array(5)
    );
\ENOUT__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => addra(2),
      I1 => addra(0),
      I2 => addra(3),
      I3 => addra(1),
      O => ena_array(6)
    );
\ENOUT__6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => addra(2),
      I1 => addra(3),
      I2 => addra(1),
      I3 => addra(0),
      O => ena_array(7)
    );
\ENOUT__7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => addra(1),
      I1 => addra(0),
      I2 => addra(2),
      I3 => addra(3),
      O => ena_array(8)
    );
\ENOUT__8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => addra(1),
      I1 => addra(2),
      I2 => addra(3),
      I3 => addra(0),
      O => ena_array(9)
    );
\ENOUT__9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => addra(0),
      I1 => addra(2),
      I2 => addra(3),
      I3 => addra(1),
      O => ena_array(10)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_mux is
  port (
    douta : out STD_LOGIC_VECTOR ( 8 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 3 downto 0 );
    clka : in STD_LOGIC;
    DOADO : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \douta[7]_INST_0_i_1_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \douta[7]_INST_0_i_1_1\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ram_douta : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \douta[7]_INST_0_i_1_2\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \douta[7]_INST_0_i_1_3\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \douta[7]_INST_0_i_1_4\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \douta[7]_INST_0_i_1_5\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \douta[7]_INST_0_i_2_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \douta[7]_INST_0_i_2_1\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \douta[7]_INST_0_i_2_2\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \douta[7]_INST_0_i_2_3\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \douta[7]_INST_0_i_2_4\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \douta[7]_INST_0_i_2_5\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \douta[7]_INST_0_i_2_6\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \douta[7]_INST_0_i_2_7\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    DOPADOP : in STD_LOGIC_VECTOR ( 0 to 0 );
    \douta[8]_INST_0_i_1_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \douta[8]_INST_0_i_1_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \douta[8]_INST_0_i_1_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \douta[8]_INST_0_i_1_3\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \douta[8]_INST_0_i_1_4\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \douta[8]_INST_0_i_1_5\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \douta[8]_INST_0_i_2_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \douta[8]_INST_0_i_2_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \douta[8]_INST_0_i_2_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \douta[8]_INST_0_i_2_3\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \douta[8]_INST_0_i_2_4\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \douta[8]_INST_0_i_2_5\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \douta[8]_INST_0_i_2_6\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \douta[8]_INST_0_i_2_7\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_mux;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_mux is
  signal \douta[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \douta[0]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \douta[0]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \douta[0]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \douta[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[1]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \douta[1]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \douta[1]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \douta[1]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \douta[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[2]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \douta[2]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \douta[2]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \douta[2]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \douta[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[3]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \douta[3]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \douta[3]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \douta[3]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \douta[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[4]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \douta[4]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \douta[4]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \douta[4]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \douta[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[5]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \douta[5]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \douta[5]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \douta[5]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \douta[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[6]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \douta[6]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \douta[6]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \douta[6]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \douta[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[7]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \douta[7]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \douta[7]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \douta[7]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \douta[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[8]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \douta[8]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \douta[8]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \douta[8]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal sel_pipe : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal sel_pipe_d1 : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
\douta[0]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \douta[0]_INST_0_i_1_n_0\,
      I1 => \douta[0]_INST_0_i_2_n_0\,
      O => douta(0),
      S => sel_pipe_d1(3)
    );
\douta[0]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[0]_INST_0_i_3_n_0\,
      I1 => \douta[0]_INST_0_i_4_n_0\,
      O => \douta[0]_INST_0_i_1_n_0\,
      S => sel_pipe_d1(2)
    );
\douta[0]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[0]_INST_0_i_5_n_0\,
      I1 => \douta[0]_INST_0_i_6_n_0\,
      O => \douta[0]_INST_0_i_2_n_0\,
      S => sel_pipe_d1(2)
    );
\douta[0]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => DOADO(0),
      I1 => \douta[7]_INST_0_i_1_0\(0),
      I2 => sel_pipe_d1(1),
      I3 => \douta[7]_INST_0_i_1_1\(0),
      I4 => sel_pipe_d1(0),
      I5 => ram_douta(0),
      O => \douta[0]_INST_0_i_3_n_0\
    );
\douta[0]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \douta[7]_INST_0_i_1_2\(0),
      I1 => \douta[7]_INST_0_i_1_3\(0),
      I2 => sel_pipe_d1(1),
      I3 => \douta[7]_INST_0_i_1_4\(0),
      I4 => sel_pipe_d1(0),
      I5 => \douta[7]_INST_0_i_1_5\(0),
      O => \douta[0]_INST_0_i_4_n_0\
    );
\douta[0]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \douta[7]_INST_0_i_2_0\(0),
      I1 => \douta[7]_INST_0_i_2_1\(0),
      I2 => sel_pipe_d1(1),
      I3 => \douta[7]_INST_0_i_2_2\(0),
      I4 => sel_pipe_d1(0),
      I5 => \douta[7]_INST_0_i_2_3\(0),
      O => \douta[0]_INST_0_i_5_n_0\
    );
\douta[0]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \douta[7]_INST_0_i_2_4\(0),
      I1 => \douta[7]_INST_0_i_2_5\(0),
      I2 => sel_pipe_d1(1),
      I3 => \douta[7]_INST_0_i_2_6\(0),
      I4 => sel_pipe_d1(0),
      I5 => \douta[7]_INST_0_i_2_7\(0),
      O => \douta[0]_INST_0_i_6_n_0\
    );
\douta[1]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \douta[1]_INST_0_i_1_n_0\,
      I1 => \douta[1]_INST_0_i_2_n_0\,
      O => douta(1),
      S => sel_pipe_d1(3)
    );
\douta[1]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[1]_INST_0_i_3_n_0\,
      I1 => \douta[1]_INST_0_i_4_n_0\,
      O => \douta[1]_INST_0_i_1_n_0\,
      S => sel_pipe_d1(2)
    );
\douta[1]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[1]_INST_0_i_5_n_0\,
      I1 => \douta[1]_INST_0_i_6_n_0\,
      O => \douta[1]_INST_0_i_2_n_0\,
      S => sel_pipe_d1(2)
    );
\douta[1]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => DOADO(1),
      I1 => \douta[7]_INST_0_i_1_0\(1),
      I2 => sel_pipe_d1(1),
      I3 => \douta[7]_INST_0_i_1_1\(1),
      I4 => sel_pipe_d1(0),
      I5 => ram_douta(1),
      O => \douta[1]_INST_0_i_3_n_0\
    );
\douta[1]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \douta[7]_INST_0_i_1_2\(1),
      I1 => \douta[7]_INST_0_i_1_3\(1),
      I2 => sel_pipe_d1(1),
      I3 => \douta[7]_INST_0_i_1_4\(1),
      I4 => sel_pipe_d1(0),
      I5 => \douta[7]_INST_0_i_1_5\(1),
      O => \douta[1]_INST_0_i_4_n_0\
    );
\douta[1]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \douta[7]_INST_0_i_2_0\(1),
      I1 => \douta[7]_INST_0_i_2_1\(1),
      I2 => sel_pipe_d1(1),
      I3 => \douta[7]_INST_0_i_2_2\(1),
      I4 => sel_pipe_d1(0),
      I5 => \douta[7]_INST_0_i_2_3\(1),
      O => \douta[1]_INST_0_i_5_n_0\
    );
\douta[1]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \douta[7]_INST_0_i_2_4\(1),
      I1 => \douta[7]_INST_0_i_2_5\(1),
      I2 => sel_pipe_d1(1),
      I3 => \douta[7]_INST_0_i_2_6\(1),
      I4 => sel_pipe_d1(0),
      I5 => \douta[7]_INST_0_i_2_7\(1),
      O => \douta[1]_INST_0_i_6_n_0\
    );
\douta[2]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \douta[2]_INST_0_i_1_n_0\,
      I1 => \douta[2]_INST_0_i_2_n_0\,
      O => douta(2),
      S => sel_pipe_d1(3)
    );
\douta[2]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[2]_INST_0_i_3_n_0\,
      I1 => \douta[2]_INST_0_i_4_n_0\,
      O => \douta[2]_INST_0_i_1_n_0\,
      S => sel_pipe_d1(2)
    );
\douta[2]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[2]_INST_0_i_5_n_0\,
      I1 => \douta[2]_INST_0_i_6_n_0\,
      O => \douta[2]_INST_0_i_2_n_0\,
      S => sel_pipe_d1(2)
    );
\douta[2]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => DOADO(2),
      I1 => \douta[7]_INST_0_i_1_0\(2),
      I2 => sel_pipe_d1(1),
      I3 => \douta[7]_INST_0_i_1_1\(2),
      I4 => sel_pipe_d1(0),
      I5 => ram_douta(2),
      O => \douta[2]_INST_0_i_3_n_0\
    );
\douta[2]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \douta[7]_INST_0_i_1_2\(2),
      I1 => \douta[7]_INST_0_i_1_3\(2),
      I2 => sel_pipe_d1(1),
      I3 => \douta[7]_INST_0_i_1_4\(2),
      I4 => sel_pipe_d1(0),
      I5 => \douta[7]_INST_0_i_1_5\(2),
      O => \douta[2]_INST_0_i_4_n_0\
    );
\douta[2]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \douta[7]_INST_0_i_2_0\(2),
      I1 => \douta[7]_INST_0_i_2_1\(2),
      I2 => sel_pipe_d1(1),
      I3 => \douta[7]_INST_0_i_2_2\(2),
      I4 => sel_pipe_d1(0),
      I5 => \douta[7]_INST_0_i_2_3\(2),
      O => \douta[2]_INST_0_i_5_n_0\
    );
\douta[2]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \douta[7]_INST_0_i_2_4\(2),
      I1 => \douta[7]_INST_0_i_2_5\(2),
      I2 => sel_pipe_d1(1),
      I3 => \douta[7]_INST_0_i_2_6\(2),
      I4 => sel_pipe_d1(0),
      I5 => \douta[7]_INST_0_i_2_7\(2),
      O => \douta[2]_INST_0_i_6_n_0\
    );
\douta[3]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \douta[3]_INST_0_i_1_n_0\,
      I1 => \douta[3]_INST_0_i_2_n_0\,
      O => douta(3),
      S => sel_pipe_d1(3)
    );
\douta[3]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[3]_INST_0_i_3_n_0\,
      I1 => \douta[3]_INST_0_i_4_n_0\,
      O => \douta[3]_INST_0_i_1_n_0\,
      S => sel_pipe_d1(2)
    );
\douta[3]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[3]_INST_0_i_5_n_0\,
      I1 => \douta[3]_INST_0_i_6_n_0\,
      O => \douta[3]_INST_0_i_2_n_0\,
      S => sel_pipe_d1(2)
    );
\douta[3]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => DOADO(3),
      I1 => \douta[7]_INST_0_i_1_0\(3),
      I2 => sel_pipe_d1(1),
      I3 => \douta[7]_INST_0_i_1_1\(3),
      I4 => sel_pipe_d1(0),
      I5 => ram_douta(3),
      O => \douta[3]_INST_0_i_3_n_0\
    );
\douta[3]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \douta[7]_INST_0_i_1_2\(3),
      I1 => \douta[7]_INST_0_i_1_3\(3),
      I2 => sel_pipe_d1(1),
      I3 => \douta[7]_INST_0_i_1_4\(3),
      I4 => sel_pipe_d1(0),
      I5 => \douta[7]_INST_0_i_1_5\(3),
      O => \douta[3]_INST_0_i_4_n_0\
    );
\douta[3]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \douta[7]_INST_0_i_2_0\(3),
      I1 => \douta[7]_INST_0_i_2_1\(3),
      I2 => sel_pipe_d1(1),
      I3 => \douta[7]_INST_0_i_2_2\(3),
      I4 => sel_pipe_d1(0),
      I5 => \douta[7]_INST_0_i_2_3\(3),
      O => \douta[3]_INST_0_i_5_n_0\
    );
\douta[3]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \douta[7]_INST_0_i_2_4\(3),
      I1 => \douta[7]_INST_0_i_2_5\(3),
      I2 => sel_pipe_d1(1),
      I3 => \douta[7]_INST_0_i_2_6\(3),
      I4 => sel_pipe_d1(0),
      I5 => \douta[7]_INST_0_i_2_7\(3),
      O => \douta[3]_INST_0_i_6_n_0\
    );
\douta[4]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \douta[4]_INST_0_i_1_n_0\,
      I1 => \douta[4]_INST_0_i_2_n_0\,
      O => douta(4),
      S => sel_pipe_d1(3)
    );
\douta[4]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[4]_INST_0_i_3_n_0\,
      I1 => \douta[4]_INST_0_i_4_n_0\,
      O => \douta[4]_INST_0_i_1_n_0\,
      S => sel_pipe_d1(2)
    );
\douta[4]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[4]_INST_0_i_5_n_0\,
      I1 => \douta[4]_INST_0_i_6_n_0\,
      O => \douta[4]_INST_0_i_2_n_0\,
      S => sel_pipe_d1(2)
    );
\douta[4]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => DOADO(4),
      I1 => \douta[7]_INST_0_i_1_0\(4),
      I2 => sel_pipe_d1(1),
      I3 => \douta[7]_INST_0_i_1_1\(4),
      I4 => sel_pipe_d1(0),
      I5 => ram_douta(4),
      O => \douta[4]_INST_0_i_3_n_0\
    );
\douta[4]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \douta[7]_INST_0_i_1_2\(4),
      I1 => \douta[7]_INST_0_i_1_3\(4),
      I2 => sel_pipe_d1(1),
      I3 => \douta[7]_INST_0_i_1_4\(4),
      I4 => sel_pipe_d1(0),
      I5 => \douta[7]_INST_0_i_1_5\(4),
      O => \douta[4]_INST_0_i_4_n_0\
    );
\douta[4]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \douta[7]_INST_0_i_2_0\(4),
      I1 => \douta[7]_INST_0_i_2_1\(4),
      I2 => sel_pipe_d1(1),
      I3 => \douta[7]_INST_0_i_2_2\(4),
      I4 => sel_pipe_d1(0),
      I5 => \douta[7]_INST_0_i_2_3\(4),
      O => \douta[4]_INST_0_i_5_n_0\
    );
\douta[4]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \douta[7]_INST_0_i_2_4\(4),
      I1 => \douta[7]_INST_0_i_2_5\(4),
      I2 => sel_pipe_d1(1),
      I3 => \douta[7]_INST_0_i_2_6\(4),
      I4 => sel_pipe_d1(0),
      I5 => \douta[7]_INST_0_i_2_7\(4),
      O => \douta[4]_INST_0_i_6_n_0\
    );
\douta[5]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \douta[5]_INST_0_i_1_n_0\,
      I1 => \douta[5]_INST_0_i_2_n_0\,
      O => douta(5),
      S => sel_pipe_d1(3)
    );
\douta[5]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[5]_INST_0_i_3_n_0\,
      I1 => \douta[5]_INST_0_i_4_n_0\,
      O => \douta[5]_INST_0_i_1_n_0\,
      S => sel_pipe_d1(2)
    );
\douta[5]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[5]_INST_0_i_5_n_0\,
      I1 => \douta[5]_INST_0_i_6_n_0\,
      O => \douta[5]_INST_0_i_2_n_0\,
      S => sel_pipe_d1(2)
    );
\douta[5]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => DOADO(5),
      I1 => \douta[7]_INST_0_i_1_0\(5),
      I2 => sel_pipe_d1(1),
      I3 => \douta[7]_INST_0_i_1_1\(5),
      I4 => sel_pipe_d1(0),
      I5 => ram_douta(5),
      O => \douta[5]_INST_0_i_3_n_0\
    );
\douta[5]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \douta[7]_INST_0_i_1_2\(5),
      I1 => \douta[7]_INST_0_i_1_3\(5),
      I2 => sel_pipe_d1(1),
      I3 => \douta[7]_INST_0_i_1_4\(5),
      I4 => sel_pipe_d1(0),
      I5 => \douta[7]_INST_0_i_1_5\(5),
      O => \douta[5]_INST_0_i_4_n_0\
    );
\douta[5]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \douta[7]_INST_0_i_2_0\(5),
      I1 => \douta[7]_INST_0_i_2_1\(5),
      I2 => sel_pipe_d1(1),
      I3 => \douta[7]_INST_0_i_2_2\(5),
      I4 => sel_pipe_d1(0),
      I5 => \douta[7]_INST_0_i_2_3\(5),
      O => \douta[5]_INST_0_i_5_n_0\
    );
\douta[5]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \douta[7]_INST_0_i_2_4\(5),
      I1 => \douta[7]_INST_0_i_2_5\(5),
      I2 => sel_pipe_d1(1),
      I3 => \douta[7]_INST_0_i_2_6\(5),
      I4 => sel_pipe_d1(0),
      I5 => \douta[7]_INST_0_i_2_7\(5),
      O => \douta[5]_INST_0_i_6_n_0\
    );
\douta[6]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \douta[6]_INST_0_i_1_n_0\,
      I1 => \douta[6]_INST_0_i_2_n_0\,
      O => douta(6),
      S => sel_pipe_d1(3)
    );
\douta[6]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[6]_INST_0_i_3_n_0\,
      I1 => \douta[6]_INST_0_i_4_n_0\,
      O => \douta[6]_INST_0_i_1_n_0\,
      S => sel_pipe_d1(2)
    );
\douta[6]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[6]_INST_0_i_5_n_0\,
      I1 => \douta[6]_INST_0_i_6_n_0\,
      O => \douta[6]_INST_0_i_2_n_0\,
      S => sel_pipe_d1(2)
    );
\douta[6]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => DOADO(6),
      I1 => \douta[7]_INST_0_i_1_0\(6),
      I2 => sel_pipe_d1(1),
      I3 => \douta[7]_INST_0_i_1_1\(6),
      I4 => sel_pipe_d1(0),
      I5 => ram_douta(6),
      O => \douta[6]_INST_0_i_3_n_0\
    );
\douta[6]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \douta[7]_INST_0_i_1_2\(6),
      I1 => \douta[7]_INST_0_i_1_3\(6),
      I2 => sel_pipe_d1(1),
      I3 => \douta[7]_INST_0_i_1_4\(6),
      I4 => sel_pipe_d1(0),
      I5 => \douta[7]_INST_0_i_1_5\(6),
      O => \douta[6]_INST_0_i_4_n_0\
    );
\douta[6]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \douta[7]_INST_0_i_2_0\(6),
      I1 => \douta[7]_INST_0_i_2_1\(6),
      I2 => sel_pipe_d1(1),
      I3 => \douta[7]_INST_0_i_2_2\(6),
      I4 => sel_pipe_d1(0),
      I5 => \douta[7]_INST_0_i_2_3\(6),
      O => \douta[6]_INST_0_i_5_n_0\
    );
\douta[6]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \douta[7]_INST_0_i_2_4\(6),
      I1 => \douta[7]_INST_0_i_2_5\(6),
      I2 => sel_pipe_d1(1),
      I3 => \douta[7]_INST_0_i_2_6\(6),
      I4 => sel_pipe_d1(0),
      I5 => \douta[7]_INST_0_i_2_7\(6),
      O => \douta[6]_INST_0_i_6_n_0\
    );
\douta[7]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \douta[7]_INST_0_i_1_n_0\,
      I1 => \douta[7]_INST_0_i_2_n_0\,
      O => douta(7),
      S => sel_pipe_d1(3)
    );
\douta[7]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[7]_INST_0_i_3_n_0\,
      I1 => \douta[7]_INST_0_i_4_n_0\,
      O => \douta[7]_INST_0_i_1_n_0\,
      S => sel_pipe_d1(2)
    );
\douta[7]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[7]_INST_0_i_5_n_0\,
      I1 => \douta[7]_INST_0_i_6_n_0\,
      O => \douta[7]_INST_0_i_2_n_0\,
      S => sel_pipe_d1(2)
    );
\douta[7]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => DOADO(7),
      I1 => \douta[7]_INST_0_i_1_0\(7),
      I2 => sel_pipe_d1(1),
      I3 => \douta[7]_INST_0_i_1_1\(7),
      I4 => sel_pipe_d1(0),
      I5 => ram_douta(7),
      O => \douta[7]_INST_0_i_3_n_0\
    );
\douta[7]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \douta[7]_INST_0_i_1_2\(7),
      I1 => \douta[7]_INST_0_i_1_3\(7),
      I2 => sel_pipe_d1(1),
      I3 => \douta[7]_INST_0_i_1_4\(7),
      I4 => sel_pipe_d1(0),
      I5 => \douta[7]_INST_0_i_1_5\(7),
      O => \douta[7]_INST_0_i_4_n_0\
    );
\douta[7]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \douta[7]_INST_0_i_2_0\(7),
      I1 => \douta[7]_INST_0_i_2_1\(7),
      I2 => sel_pipe_d1(1),
      I3 => \douta[7]_INST_0_i_2_2\(7),
      I4 => sel_pipe_d1(0),
      I5 => \douta[7]_INST_0_i_2_3\(7),
      O => \douta[7]_INST_0_i_5_n_0\
    );
\douta[7]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \douta[7]_INST_0_i_2_4\(7),
      I1 => \douta[7]_INST_0_i_2_5\(7),
      I2 => sel_pipe_d1(1),
      I3 => \douta[7]_INST_0_i_2_6\(7),
      I4 => sel_pipe_d1(0),
      I5 => \douta[7]_INST_0_i_2_7\(7),
      O => \douta[7]_INST_0_i_6_n_0\
    );
\douta[8]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \douta[8]_INST_0_i_1_n_0\,
      I1 => \douta[8]_INST_0_i_2_n_0\,
      O => douta(8),
      S => sel_pipe_d1(3)
    );
\douta[8]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[8]_INST_0_i_3_n_0\,
      I1 => \douta[8]_INST_0_i_4_n_0\,
      O => \douta[8]_INST_0_i_1_n_0\,
      S => sel_pipe_d1(2)
    );
\douta[8]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[8]_INST_0_i_5_n_0\,
      I1 => \douta[8]_INST_0_i_6_n_0\,
      O => \douta[8]_INST_0_i_2_n_0\,
      S => sel_pipe_d1(2)
    );
\douta[8]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => DOPADOP(0),
      I1 => \douta[8]_INST_0_i_1_0\(0),
      I2 => sel_pipe_d1(1),
      I3 => \douta[8]_INST_0_i_1_1\(0),
      I4 => sel_pipe_d1(0),
      I5 => ram_douta(8),
      O => \douta[8]_INST_0_i_3_n_0\
    );
\douta[8]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \douta[8]_INST_0_i_1_2\(0),
      I1 => \douta[8]_INST_0_i_1_3\(0),
      I2 => sel_pipe_d1(1),
      I3 => \douta[8]_INST_0_i_1_4\(0),
      I4 => sel_pipe_d1(0),
      I5 => \douta[8]_INST_0_i_1_5\(0),
      O => \douta[8]_INST_0_i_4_n_0\
    );
\douta[8]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \douta[8]_INST_0_i_2_0\(0),
      I1 => \douta[8]_INST_0_i_2_1\(0),
      I2 => sel_pipe_d1(1),
      I3 => \douta[8]_INST_0_i_2_2\(0),
      I4 => sel_pipe_d1(0),
      I5 => \douta[8]_INST_0_i_2_3\(0),
      O => \douta[8]_INST_0_i_5_n_0\
    );
\douta[8]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \douta[8]_INST_0_i_2_4\(0),
      I1 => \douta[8]_INST_0_i_2_5\(0),
      I2 => sel_pipe_d1(1),
      I3 => \douta[8]_INST_0_i_2_6\(0),
      I4 => sel_pipe_d1(0),
      I5 => \douta[8]_INST_0_i_2_7\(0),
      O => \douta[8]_INST_0_i_6_n_0\
    );
\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => '1',
      D => sel_pipe(0),
      Q => sel_pipe_d1(0),
      R => '0'
    );
\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => '1',
      D => sel_pipe(1),
      Q => sel_pipe_d1(1),
      R => '0'
    );
\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => '1',
      D => sel_pipe(2),
      Q => sel_pipe_d1(2),
      R => '0'
    );
\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => '1',
      D => sel_pipe(3),
      Q => sel_pipe_d1(3),
      R => '0'
    );
\no_softecc_sel_reg.ce_pri.sel_pipe_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => '1',
      D => addra(0),
      Q => sel_pipe(0),
      R => '0'
    );
\no_softecc_sel_reg.ce_pri.sel_pipe_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => '1',
      D => addra(1),
      Q => sel_pipe(1),
      R => '0'
    );
\no_softecc_sel_reg.ce_pri.sel_pipe_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => '1',
      D => addra(2),
      Q => sel_pipe(2),
      R => '0'
    );
\no_softecc_sel_reg.ce_pri.sel_pipe_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => '1',
      D => addra(3),
      Q => sel_pipe(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init is
  port (
    ram_douta : out STD_LOGIC_VECTOR ( 8 downto 0 );
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__3_n_0\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_01 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_02 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_03 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_04 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_05 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_06 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_07 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_08 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_09 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_00 => X"DFDFDFDFBFBFBFBFBFBFBFBFBFBFBF9F9F9FBFBFBFBFBFBFBFBFBFBF9F9E9E9E",
      INIT_01 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_02 => X"FFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_03 => X"FFFFFFFFFFFFFFFFFFFFFFDFDFDFDFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_04 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_05 => X"FFFFFFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_06 => X"DFDFDFDFFFFFDFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF",
      INIT_07 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_08 => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDFDFBFDF",
      INIT_09 => X"BFBFBFBFBFBF9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9FBFBFBFBFBFBFBF",
      INIT_0A => X"DFDFDFDFDFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_0B => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_0C => X"FFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFDFDFDFDFDFFFDFDFDFDFDF",
      INIT_0D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0F => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFFFFFFFFFFFDFFFFFFFFF",
      INIT_10 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFDFFFDFDFDFDF",
      INIT_11 => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_12 => X"9F9F9F9F9FBFBFBF9F9F9F9F9FBFBF9FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_13 => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9F9F9F9F9F",
      INIT_14 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFBFBFBF",
      INIT_15 => X"DFDFDFDFDFDFDFDFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_16 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDF",
      INIT_17 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_18 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_19 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1A => X"BFBFBFBFBFBFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_1B => X"9FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDFDFDFBFBFBFBFBFBFBFBFBFBF",
      INIT_1C => X"DFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9F9F9F9F",
      INIT_1D => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFDFBFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_1E => X"FFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_1F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_20 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_21 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_22 => X"DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_23 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_24 => X"BFBFBFBFBFDFBFDFDFBFDFDFDFDFDFDFDFDFDFDFBFBFBFDFBFDFDFDFDFDFDFDF",
      INIT_25 => X"BF9F9F9F9F9F9F9F9F9F9F9F9F9F9F9FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_26 => X"DFDFDFDFDFBFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_27 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_28 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDF",
      INIT_29 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF",
      INIT_2A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2C => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2D => X"BFBFBFBFBFBFBFBFBFBFBFDFBFDFDFDFDFDFDFDFDFDFBFDFDFDFDFDFDFDFDFDF",
      INIT_2E => X"9F9F9F9FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_2F => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9F9F9F9F9F9F9F9F9F9F9F",
      INIT_30 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFDFBFBFBFBFBF",
      INIT_31 => X"DFDFDFDFFFDFDFDFDFDFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_32 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_33 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_34 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_35 => X"DFDFDFDFDFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFFF",
      INIT_36 => X"BFDFDFDFDFDFDFDFDFDFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_37 => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDFDFBF",
      INIT_38 => X"BFBFBFBFBFBFBFBFBF9FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_39 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFBFDFBFDFBFBFBFDFDFDFBFBFBFDFDFBFBFBFBF",
      INIT_3A => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_3B => X"FFFFFFFFFFFFFFDFDFDFFFFFFFFFDFDFDFDFDFDFDFDFDFDFFFFFFFDFDFDFFFDF",
      INIT_3C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3E => X"FFFFFFFFFFFFFFFFFFFFDFFFFFFFDFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3F => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFFFFFDFFFFF",
      INIT_40 => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDFDFDFBFDFDFDFDFDFDFDFDFDFBFDF",
      INIT_41 => X"BFBF9FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_42 => X"BFDFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9FBFBFBFBFBFBFBFBFBF",
      INIT_43 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFDFDFDFDFDFDFDFBFBFBFBF",
      INIT_44 => X"FFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_45 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_46 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_47 => X"FFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_48 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFDFDF",
      INIT_49 => X"DFDFDFDFDFDFDFBFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_4A => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDFDFDFDFDFDFDFDF",
      INIT_4B => X"BFBFBFBFBFBFBFBFBFBF9FBFBFBFBFBFBFBFBFBFBF9F9E9E9E9E9E9E9E9E9E9E",
      INIT_4C => X"DFDFDFDFDFDFDFDFBFDFDFDFDFDFDFDFBFDFDFDFDFDFDFBFBFBFBFBFBFBFBFBF",
      INIT_4D => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_4E => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_4F => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_50 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_51 => X"DFDFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFFFDFDFFFDFDFDFFFDFDFDFDFDFDFDF",
      INIT_52 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_53 => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDFDFBFBFDFDFDF",
      INIT_54 => X"BFBFBFBFBFBFBFBFBFBF9FBFBFBFBFBFBFBFBFBF9F9F9F9F9F9F9F9FBFBFBFBF",
      INIT_55 => X"DFDFDFDFBFDFDFDFBFBFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9FBF",
      INIT_56 => X"FFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFDFDFDF",
      INIT_57 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFF",
      INIT_58 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_59 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFFFFFFF",
      INIT_5A => X"FFFFFFFFFFFFDFDFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5B => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFF",
      INIT_5C => X"DFDFDFDFDFDFDFDFDFDFDFBFDFDFDFBFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_5D => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDF",
      INIT_5E => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9FBF",
      INIT_5F => X"FFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFDFDFBFDFDFBFBF",
      INIT_60 => X"FFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFFFFFFF",
      INIT_61 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_62 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_63 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_64 => X"DFDFDFDFDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFFFFFDFFF",
      INIT_65 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_66 => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDFDFDFDFDFDFDFDFDFDFBFDFDF",
      INIT_67 => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9F9F9F9F9F9F9F9F9F9FBFBFBFBF",
      INIT_68 => X"DFDFDFDFDFDFDFDFDFDFDFDFBFDFDFDFBFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_69 => X"DFDFDFDFDFDFDFDFDFDFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_6A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFFDFDFDFDFDFDFDF",
      INIT_6B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6D => X"DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6E => X"DFDFDFDFDFDFDFDFDFDFDFDFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFDF",
      INIT_6F => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_70 => X"BFBFBFBFBFBF9F9F9F9F9F9F9F9F9F9F9F9FBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_71 => X"BFBFBFDFBFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_72 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_73 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFDF",
      INIT_74 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_75 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_76 => X"DFFFFFDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_77 => X"FFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFFFFFDFDFDFDFDFDFDFFFFFDFDF",
      INIT_78 => X"BFBFBFBFBFBFBFBFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_79 => X"BF9F9FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_7A => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_7B => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFDFDFBFDFDFBFBFBFBFBFBF",
      INIT_7C => X"FFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_7D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7F => X"DFDFBFBFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => ram_douta(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => ram_douta(8),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__3_n_0\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => addra(14),
      I1 => addra(15),
      I2 => addra(13),
      I3 => addra(12),
      O => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__3_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized0\ is
  port (
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized0\ : entity is "blk_mem_gen_prim_wrapper_init";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized0\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_01 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_02 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_03 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_04 => X"FFFFFFFFFFFFFFFFFFFE00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_05 => X"FFFFFFFFE007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_06 => X"3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_07 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC40",
      INITP_08 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF03FFFFFFFFFF",
      INITP_09 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF09FFFFFFFFFFFFFFFFFFFFF",
      INITP_0A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFBF1DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0B => X"FFFFFFFFFFFFFFFFFFF3DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0C => X"FFFFFFEFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFDF",
      INITP_0F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE63DFFFFFFFFFFFF",
      INIT_00 => X"DFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFDFDFFFFFFFDFDFDFDFDFDFDFDFFFFFFF",
      INIT_01 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_02 => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDFDFBFBFBFBFBFBFDFDFDFDFBFDFDFDF",
      INIT_03 => X"DFDFDFBFBFBFBFBFBFBFBFBF9F9FBFBFBF9FBFBFBF9E9EBFBFBFBFBFBFBFBFBF",
      INIT_04 => X"DFBFBFBFDFBFBFBFDFDFDFDFDFDFBFDFDFDFDFBFBFBFBFBFBFBFBFBFBFDFDFDF",
      INIT_05 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_06 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFFFDFDFDFDFDFDFDFDFDF",
      INIT_07 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_08 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFFF",
      INIT_09 => X"FFFFFFFFDFDFDFDFDFDFFFFFFFFFFFFFFFFEDEDE9E9D7D9D7D9DBEFEFFFFFFFF",
      INIT_0A => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFFFFFDFDFDFFFFFFFFFFFFFFF",
      INIT_0B => X"DFDFDFDFDFDFBFBFBFBFBFBFDFDFDFDFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_0C => X"9F9FBFBFBF9E9E9EBF9F9EBF9F9FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDF",
      INIT_0D => X"DFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_0E => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFDFBFDFDFDFDF",
      INIT_0F => X"DFDFDFDFDFDFDFDFDFDFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_10 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_11 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFFFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_12 => X"DFDFDFDFDFFFFF7D5C5C7C9D7D7D7D9DFEFFFFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_13 => X"DFDFDFDFDFDFDFFFFFDFFFFFFFDFDFDFDFDFDFDFDFDFDFFFDFDFDFDFDFDFFFDF",
      INIT_14 => X"BFDFDFDFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_15 => X"BFBF9F9F9F9F9F9FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_16 => X"BFBFBFBFBFDFDFDFDFDFDFBFBFBFBFBFBFBFBFBF9F9FBFBFBF9FBFBFBF9E9EBF",
      INIT_17 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFBFDFBFDFDFDFDFDFDFBFBFBFBFBFBFBFBFBFBF",
      INIT_18 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_19 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFFFDF",
      INIT_1A => X"FFFFFFFFFFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1B => X"5C3C3B3BBDDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1C => X"FFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFFFFFFFFFFFFFFFDFDE1B1B3B5B5B",
      INIT_1D => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFDFFFFFFF",
      INIT_1E => X"BFBFDFBFBFBFBFDFDFDFDFDFDFBFBFDFBFBFBFBFDFDFDFDFBFDFDFDFDFDFDFDF",
      INIT_1F => X"BFBF9FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9FBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_20 => X"DFBFBFDFDFDFDFDFDFDFDFBFBFBFBFBFBFDFBFBFBFBFBFBFBFDFDFDFDFDFDFBF",
      INIT_21 => X"FFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_22 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_23 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_24 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_25 => X"FFFFDFFFFFFFFFFFFFFFFFFFFFDFBEB9B9B8D9FAFBFAFAFA3B9CDEFFFFFFFFFF",
      INIT_26 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF",
      INIT_27 => X"DFDFDFBFDFDFDFDFBFDFDFDFDFDFDFDFDFDFDFBFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_28 => X"9F9F9F9F9F9F9F9FBFBFBF9EBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDF",
      INIT_29 => X"DFDFDFDFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9FBFBFBFBFBFBFBF9F9F",
      INIT_2A => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFDFDFDFDFDFDFDFBF",
      INIT_2B => X"FFFFFFFFDFDFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_2C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2E => X"FFDF3C985756579899999898D91BBDDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2F => X"DFDFDFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFDFDFDFFFFFFFFFFFFFFFFFFF",
      INIT_30 => X"DFDFDFDFDFDFDFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_31 => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDFDF",
      INIT_32 => X"BFBFBFBFBFBFBFBFBFBF9FBFBFBFBFBFBFBF9F9F9F9F9F9F9F9F9F9FBFBFBF9F",
      INIT_33 => X"DFDFDFDFDFDFDFDFDFBFBFBFDFDFDFDFDFDFBFDFDFDFBFBFDFBFBFBFBFBFBFBF",
      INIT_34 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_35 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFFFDFDFDFDFDF",
      INIT_36 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_37 => X"B8B97CFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_38 => X"FFFFFFFFFFFFFFFFDFDFDFFFFFFFFFFFFFFFFFFFFFBFB95715F4155658789897",
      INIT_39 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFDFDFFFFFFFFFFFFF",
      INIT_3A => X"BFBFBFBFBFBFBFBFBFBFBFDFBFBFBFBFBFDFDFDFBFBFBFDFDFDFDFBFDFDFDFDF",
      INIT_3B => X"BF9FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9F9FBF9FBFBFBFBFBFBFBFBFBFBFBF",
      INIT_3C => X"BFDFDFBFDFDFBFDFDFBFDFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9F",
      INIT_3D => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_3E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFDFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_3F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_40 => X"FFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_41 => X"FFFFDFFFFFFFFFFFFF5D3715B3B3D4F63677775656571BFFDFDFFFFFFFFFFFFF",
      INIT_42 => X"DFDFDFDFDFDFDFDFDFDFDFDFFFFFDFFFFFFFFFFFFFDFDFDFFFFFFFDFDFDFDFFF",
      INIT_43 => X"BFBFBFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_44 => X"9F9F9F9FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDFBFBFDF",
      INIT_45 => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9FBF9FBFBFBFBFBFBFBF9F9F9F",
      INIT_46 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFBFBFBFDFDFDFBFDFDF",
      INIT_47 => X"FFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_48 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_49 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4A => X"717274D635565714D315BADEDEFFFFFFFFFFFFFFFFFFFFDFDFFFFFFFFFFFFFFF",
      INIT_4B => X"FFFFDFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFFFFFFFDFFFFFFFFFDEFEFAF5B3",
      INIT_4C => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFFFDFDF",
      INIT_4D => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFBFDFBFBFBFBFBFBFBFDFDFDFDFDFDFDF",
      INIT_4E => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9E9F9F9F9F9F9FBFBFBFBFBFBFBFBF",
      INIT_4F => X"DFDFDFDFDFDFDFDFBFDFDFDFDFDFDFDFDFBFDFDFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_50 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_51 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDF",
      INIT_52 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_53 => X"DFFFFFFFFFFFFFFFFFDFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_54 => X"DFDFDFDFDFDFDFFFFFFFDFFFFFFFFFDEFF999452315253B5565636F4B3D499DE",
      INIT_55 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFDFFFDFDFFFFFDFDFDFDFDFDFFFDFDFDF",
      INIT_56 => X"BFBFBFBFBFBFBFBFBFBFBFBFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_57 => X"BFBFBFBFBF9F9F9F9FBFBFBFBFBFBFBFBFBFBF9FBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_58 => X"DFDFDFDFDFBFDFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_59 => X"FFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFDFDFDF",
      INIT_5A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFFFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_5B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5D => X"FFFFFFFFDED69432113253B51516D5B392B499BDFFFFFFFFFFFFFFFFFFDFFFFF",
      INIT_5E => X"DFDFDFFFFFFFDFDFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFFFFFFFFFFF",
      INIT_5F => X"BFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_60 => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDFBFDFDFDFDFDFDF",
      INIT_61 => X"DFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9FBFBFBFBF9FBFBF",
      INIT_62 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFDFDFDFDFDFDFDFDFDFBFBFBFBFDFDF",
      INIT_63 => X"FFDFFFFFFFDFDFFFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFDFDFDFDFDFDFDFDFDF",
      INIT_64 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_65 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_66 => X"D4D5B4B392D458DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_67 => X"FFFFFFFFFFDFDFDFDFDFDFDFDFDFDFFFFFFFFFFFFFFFFFBEBED612D132325394",
      INIT_68 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFDFDFDFDFFFFFFFFF",
      INIT_69 => X"BFBFBFBFBFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFDFDFDFDFDFDFDFDFDFDF",
      INIT_6A => X"BFBFBFBFBFBFBFBFBFBFBFBF9FBFBFBFBF9E9F9FBFBFBFBFBFBFBFBFBFBFBFDF",
      INIT_6B => X"DFDFDFDFBFDFDFDFDFDFDFDFDFDFBFBFBFBFDFDFDFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_6C => X"DFDFDFDFDFDFDFDFDFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_6D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFFFFDFDFDFDFDFDFDF",
      INIT_6E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6F => X"DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_70 => X"DFDFDFFFFFDFFFFFFFDFDFDF5C94F1B1121232525273537272D479DEFFFFFFFF",
      INIT_71 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFDFDFDFDFDFDFFFDFDFDFDFDFDFDF",
      INIT_72 => X"BFBFBFBFBFBFBFBFBFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_73 => X"9FBFBFBFBF9F9F9FBFBFBFBF9FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_74 => X"DFBFDFDFDFDFBFDFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_75 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFDFDFDFDFDFDFDF",
      INIT_76 => X"FFFFFFFFFFFFFFFFDFDFDFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFDFDF",
      INIT_77 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_78 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_79 => X"1B5312D2F21211F0F1F2125251D478DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7A => X"DFDFDFDFFFFFDFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFFFFFFFFFFFFFFFDFDF",
      INIT_7B => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_7C => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFBFBFBFBFBFDFBFBFBFBFBFBFBFBFDFDF",
      INIT_7D => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_7E => X"DFDFDFDFDFDFDFDFDFDFDFDFBFDFDFDFDFDFDFDFDFBFDFDFDFBFBFBFBFBFBFBF",
      INIT_7F => X"FFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena_array(0),
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized1\ is
  port (
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized1\ : entity is "blk_mem_gen_prim_wrapper_init";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized1\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4C1DFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_01 => X"FFFFFFFFFFFFFFFFFFFFFFFFFF781DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_02 => X"FFFFFFFFFFFFFFF701DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_03 => X"FFFFE01DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_04 => X"FFFFFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_05 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC01DFFF",
      INITP_06 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC01DFFFFFFFFFC1E7F",
      INITP_07 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800DFFFFFFFFFC003FFFFFFFFFFFF",
      INITP_08 => X"FFFFFFFFFFFFFFFFFFFFFFFF800DFFFFFFFFF8001FFFFFFFFFFFFFFFFFFFFFFF",
      INITP_09 => X"FFFFFFFFFFFFF8005FFFFFFFFF0039FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0A => X"FF8085FFFFFFFFF007DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0B => X"FFFE007DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9EC1FFFFF",
      INITP_0D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3FC5FFFFFFFFC0FCFFFF",
      INITP_0E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF807DFFFFFFFFC3F0BFFFFFFFFFFFFFF",
      INITP_0F => X"FFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFF8380FFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_00 => X"FFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFDF",
      INIT_01 => X"FFFFFFFFFFDFDFFFFFFFFFFFDFDFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_02 => X"729458BEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_03 => X"FFDFDFDFDFDFDFDFDFDFDFFFFFFFFFFFDFFFFFDEDA53F2F21312F1D090B0D132",
      INIT_04 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFDFDFDFFFFFDFFFFFFFFFFF",
      INIT_05 => X"BFBFBFDFDFDFDFDFDFBFDFDFDFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_06 => X"BFBFBFBFBFBFBFBFBF9F9F9F9F9F9F9FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_07 => X"BFDFDFDFDFDFDFDFDFBFDFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_08 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_09 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_0A => X"DFDFDEDEDEDEFFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFFFFFFFFFFF",
      INIT_0B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFFFFFFFDFDF",
      INIT_0C => X"FFFFFFFFDFFFFFFE9953123212F2B190704FB031739457BDFFDFFFFFFFFFFFFF",
      INIT_0D => X"DFDFDFDFDFDFDFFFFFDFFFFFDFDFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFFF",
      INIT_0E => X"DFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_0F => X"9F9F9F9FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDF",
      INIT_10 => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9F9F9F",
      INIT_11 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFDFDFDFDFDFDFBFBFBFDFDF",
      INIT_12 => X"FFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_13 => X"FFFFDFFFFFFFFFFFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_14 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFFFFFDFBEBE9D9D9D9DBDDFFFDFFFFF",
      INIT_15 => X"F2F1B04F706FD03293B436BDFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_16 => X"DFDFDFDFDFDFDFDFFFDFDFDFDFDFDFDFDFDFDFFFFFFFFFFFDFFFFFFE37531212",
      INIT_17 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFDFDFDF",
      INIT_18 => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDFDFBFDFDFDFDFDFDFDFDFDFDF",
      INIT_19 => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_1A => X"DFDFDFDFDFDFDFDFBFDFDFDFDFDFBFDFDFDFDFDFDFDFBFBFBFBFBFBFBFBFBFBF",
      INIT_1B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFFF",
      INIT_1C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFF",
      INIT_1D => X"FFFFFFFFFFFEDE7D5C5C5C7D7C5C5C7D9EFFFFFFFFFFFFFFFFFFFFFFFFDFFFFF",
      INIT_1E => X"FFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1F => X"FFFFFFFFFFFFFFFFFFFFFFFFDFFFFEFEF73312F2B0D08F0D4F90D01193B416BD",
      INIT_20 => X"DFDFDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_21 => X"DFDFDFDFDFBFDFDFDFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_22 => X"9EBFBFBFBFBFBF9F9FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDF",
      INIT_23 => X"DFDFBFDFDFDFDFDFDFDFDFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_24 => X"DFDFDFDFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFDFDFDF",
      INIT_25 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_26 => X"5B5B5B3C3C7DBEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_27 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDE5C3BFA1B1B3B",
      INIT_28 => X"DFFFFFFEB612D1B0B0B08F0D4F8FAF1193D436BEDFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_29 => X"FFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFFFFFFFFFFFFFFFFFFF",
      INIT_2A => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFF",
      INIT_2B => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDFDFDFDFDFBFDFDFDFDFDFDF",
      INIT_2C => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9F9FBFBFBF",
      INIT_2D => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFDFDFDFDFDFDFBFBFBFBFBFBFBFDFDF",
      INIT_2E => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFDFDFDFDFDFDFDF",
      INIT_2F => X"DFDFDFDFDFDFDFDFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_30 => X"DFDFDFDFDFDFDFDFDFFFFFFFDE9DFBBAD9B9FA1A1A1A1AFAFA1B7DFFFFFFDFDF",
      INIT_31 => X"4F6FB01172D457DEDFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_32 => X"DFDFDFDFFFDFDFDFDFDFDFFFDFDFDFDFDFDFFFFFDFFFFF9D5512D1D0B0B08F4E",
      INIT_33 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFDFFFDFDFFFDFDFDFDFDFDF",
      INIT_34 => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_35 => X"BFBFBFBFBFBFBF9EBFBFBFBFBFBFBF9F9FBFBFBF9F9F9F9F9FBFBFBFBFBFBFBF",
      INIT_36 => X"DFDFDFDFBFBFBFBFBFDFDFDFDFDFDFDFDFBFDFDFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_37 => X"DFDFDFDFDFDFDFDFDFDFDFDFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_38 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDF",
      INIT_39 => X"BE1BB9997898D9F9F9D9D998B9D91ADDDEFFFFFFFFFFFFFFFFFFFFFFDFFFFFFF",
      INIT_3A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF",
      INIT_3B => X"FFFFFFFFFFFFFFFFDFFFFF9D34D1B0B0B08F4E2D4F6FD0F052B477FEDEFFFFFF",
      INIT_3C => X"DFDFDFDFDFDFDFFFFFFFFFDFFFFFDFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFFF",
      INIT_3D => X"DFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_3E => X"BFBFBF9F9FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDFDFDFDF",
      INIT_3F => X"DFDFDFDFDFBFDFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_40 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFDF",
      INIT_41 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_42 => X"7797D99DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFFFFF",
      INIT_43 => X"FFFFFFFFFFFFFFFFFFFFDFFFFFFFFFFFFFFFFFBE7CB978785898D9F9D9B95877",
      INIT_44 => X"34D08F6F6F4E4E4E4F8FD0F011B497FFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_45 => X"FFFFDFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFDFFFFF9D",
      INIT_46 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFFFFFDF",
      INIT_47 => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDFDFDFDFDFBFDFDFDFDFDFDFDFDFDFDF",
      INIT_48 => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9F9FBFBFBFBFBFBFBF",
      INIT_49 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFDFBFBFBFBFBFBFDFDFBFBFBFBF",
      INIT_4A => X"FFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_4B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4C => X"FFFFFFFFFFDFFF7CFAB897775898B8D8B857F6F5F515579DFFDFFFFFFFFFFFFF",
      INIT_4D => X"F17397FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDF",
      INIT_4E => X"DFDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFDFFFFF9D33B04E6F6F6F4E4E2F6FAFD0",
      INIT_4F => X"DFDFFFFFFFDFDFDFDFDFDFDFDFDFDFDFFFDFDFFFDFDFDFDFDFFFDFDFDFDFDFDF",
      INIT_50 => X"BFBFBFBFBFBFBFBFBFBFDFDFDFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_51 => X"BFBFBFBFBFBFBFBFBFBFBF9F9FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_52 => X"DFDFDFDFDFDFBFDFDFDFDFDFDFBFDFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_53 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_54 => X"FFFFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDF",
      INIT_55 => X"7898B8B877F6B57372B457BDDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_56 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFFFFFFFFFDFFFDE3BD9987777",
      INIT_57 => X"FFFFFFFFDFFFFF9D33AF4E4E4E2E2D2DEE0D4E6FB012B8FFFFFFFFFFFFFFFFFF",
      INIT_58 => X"DFDFDFDFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFFFFFFF",
      INIT_59 => X"DFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFFFDFDFDFDFDFDFDF",
      INIT_5A => X"9FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDF",
      INIT_5B => X"DFDFDFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9F",
      INIT_5C => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFDFDFDFDFDF",
      INIT_5D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF",
      INIT_5E => X"BEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5F => X"FFFFFFFFFFFFDFFFFFFFFFFFDFDF5CFAD997777737565776159453313152B8FE",
      INIT_60 => X"ECECEC0CADEC0D0D4EB098FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_61 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFF9D338F2DEC",
      INIT_62 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_63 => X"BFBFBFBFBFBFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_64 => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9FBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_65 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFBFDFDFDFDFDFDFDFBFDFDFBFBFBFBFBFBFBF",
      INIT_66 => X"FFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_67 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_68 => X"DF9DFAFA98773616F5D4F4D47331F1AF11737CFFDEDFFFFFFFFFFFFFFFFFFFFF",
      INIT_69 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF",
      INIT_6A => X"FFFFFFFFFFFFFFFFFFFFFFFFDFFFFF7CF22ECC8B8B8CCCECACED0D2D9032D9DF",
      INIT_6B => X"DFDFDFDFDFDFDFDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFFFFFFF",
      INIT_6C => X"BFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_6D => X"BFBFBFBFBFBFBF9FBF9E9E9EBFBFBFBFBFBFBFBFBFBFBFBFDFDFDFDFDFDFDFBF",
      INIT_6E => X"DFBFBFDFBFBFBFBFBFBFDFDFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_6F => X"DFDFDFDFDFDFDFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_70 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_71 => X"F0AFAFD01157FEFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_72 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFFFFFFFDE9E3BF9B87756F5D592525231",
      INIT_73 => X"DFFFFE7C54F1B0907090D0B0B111315152B4F9DFFFFFFFFFDFDFDFDFDFDFDFDF",
      INIT_74 => X"DFDFFFDFDFDFDFDFDFFFDFDFDFDFDFDFDFFFDFFFDFDFDFDFDFDFDFDFDFDFFFDF",
      INIT_75 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_76 => X"9FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_77 => X"DFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9F9F9F9F9F",
      INIT_78 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFDFDFDFDFDFDFDFDFDF",
      INIT_79 => X"FFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFDFDFDF",
      INIT_7A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7B => X"FFFFFFFFFFFFFEBE1CFAF9B87636D57431D0AF6E8FAF6EB0327CFFFFFFFFFFFF",
      INIT_7C => X"327292B3B3F5F9DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7D => X"DFDFDFDFDFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFF7C7574745353533353",
      INIT_7E => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFDFFFFFFFFFFFFFDFDF",
      INIT_7F => X"BFBFBFBFDFDFDFBFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena_array(0),
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized10\ is
  port (
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized10\ : entity is "blk_mem_gen_prim_wrapper_init";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized10\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized10\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"FFFFFFFFFFFFFFFFFFFE83FFFF016FFFF80183FFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_01 => X"FFFFFFFFE01FFFEE1667E7001C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_02 => X"FFFFC2673E200387FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_03 => X"0000BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC03",
      INITP_04 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD83FFBF02E43E0",
      INITP_05 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF83FFFC04C438000017FFFFFF",
      INITP_06 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFF9C3FFFB01C00000001FFFFFFFFFFFFFFFFFF",
      INITP_07 => X"FFFFFFFFFFFFFFFFF5C3FFFC01C00001E06FFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_08 => X"FFFFFE9F3FFF001C00001B05FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_09 => X"C003C00000E0BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0A => X"07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3F1FE",
      INITP_0B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB7F3FFF0038000016",
      INITP_0C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6FF3FD000780010001FFFFFFFFFF",
      INITP_0D => X"FFFFFFFFFFFFFFFFFFFFFFFFE8FF3FFF00F03038003FFFFFFFFFFFFFFFFFFFFF",
      INITP_0E => X"FFFFFFFFFFFFFD3FF1FF001F830BC007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0F => X"FFB7FF7FF801F871B000BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_00 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFDFDFDFDFBFDFDFBFBFBFBF",
      INIT_01 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_02 => X"FFFFFFFFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDF",
      INIT_03 => X"1152723111F0F0F0B0B08F8F4E0D0DCCCC0D2D4E6FD1743BBEDFFFFFFFFFDFFF",
      INIT_04 => X"CB8B6A2A2A2A8BED2D6E0D0D2E4E2DEC0CCBCBAF101010101010315172939211",
      INIT_05 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDE9D90EE2E2E6E8F6FEDACCC6A8A8BABCCCBEC",
      INIT_06 => X"BFBF9F9FBFBFBFBFBFBFBFBFBFBFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFDF",
      INIT_07 => X"9E9E9E9E9E9F9E9E9E9F9F9F9F9F9F9FBF9F9F9FBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_08 => X"BFBFBFBFBF9EBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9E9E9E9E9E",
      INIT_09 => X"DFDFDFDFBFBFBFBFDFDFDFDFDFBFDFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_0A => X"DFDFDFDFDFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_0B => X"DFDFDFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_0C => X"4E0E0EEDCDED2D4FB1F3597EFFDFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_0D => X"4E0D0DEC0CCAEBAFF03110EFF0103131727252D0F0111111F1D0B08F8F8F6F6E",
      INIT_0E => X"BFDE5C4F0E0E4F6F8F6E0DCC8B4A8BCC8BACAB6BAC8C8B6B6CCDED2ECD8BAC0D",
      INIT_0F => X"BFBFBFBFDFDFDFDFDFDFDFDFDFDFDFDFDFBFDFDFDFBFDFDFDFDFDFDFDEDFDFDF",
      INIT_10 => X"9F9F9F9F9F9F9FBFBF9F9F9F9E9E9EBEBFBFBFBFBF9FBFBFBFBFBFBFBFBFBFBF",
      INIT_11 => X"BF9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9F9E9E9E9E9E9E",
      INIT_12 => X"BFBFDFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9EBFBFBFBFBFBF",
      INIT_13 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFBFDFDFDFDFDFDFDFDFDFDFBFBFBFBFBFBFBFBF",
      INIT_14 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_15 => X"DFFFFFDFDFDFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFFFDFDFDFDFDFDF",
      INIT_16 => X"F0CF3152525232F1D0F111F1B06F8F6F6F8F6E4E4E0EEECDED0E4E4FF2755DDF",
      INIT_17 => X"AB8B6A8B8B8B8B8B6BACCDCDCDCD8C6BACCD0D4E2E0CEC0C0C89EA8EF0101010",
      INIT_18 => X"BFBFBFBFBFBFDFDFDFBFDFDFDFDFDFDFDFDFDFFFBFBEFA0E0E2E0E8F8F2EECAB",
      INIT_19 => X"BE9E9EBFBEBE9F9F9F9F9F9F9F9FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_1A => X"BEBEBE9E9E9E9E9E9E9E9E9E9E9F9E9E9E9E9E9E7F7F7F7F7F9F9FBFBF9F9F9F",
      INIT_1B => X"BFBFBFBFBFBFBFBFBFBFDFBFBEBEBEBEBEBEBEBEBFBEBEBEBEBEBEBEBEBEBEBE",
      INIT_1C => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFBFBFBFBFBF",
      INIT_1D => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFDF",
      INIT_1E => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_1F => X"AF6E4E6E6E6E4E4E4E0E0E2F0E4F90D153BADFDFFFFFFFFFFFFFDFDFDFDFDFDF",
      INIT_20 => X"4B4B8BCC4E0D4E2D0D2DEC0CCB48EB6EF010F0EFCFF03152321111D08FD0F1F0",
      INIT_21 => X"DFDFDFDFDFDFDFDFDFBE37CDCC2E2E6F8F4EEC8BABCC8BCBECCCABECED0DEC6B",
      INIT_22 => X"BFBFBFBFBFBFBFBFBFBFBFBFDFDFDFDFDFDFDFDFDFDFDFDFDFBFDFDFDFDFDFDF",
      INIT_23 => X"9E9E9E9E9E9E9E9E9F9F9F9F9F9F9FBFBF9F9F9FBEBEBEBEBFBFBFBFBFBFBFBF",
      INIT_24 => X"BEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBE9E9E9E9E9E9E9EBE9E",
      INIT_25 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBEBEBEBEBE",
      INIT_26 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_27 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDF",
      INIT_28 => X"4F6FB033179DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_29 => X"8A680B8EF010EFCFAFF0311111F1F1AF8FAFD0AF8F4E2D2D4E4E4E2D0D0E2E2F",
      INIT_2A => X"AC0D4E8F6F4EECCC6A8BABCCCCCCCCCCAC8B6B4A6BAC2D2D0D2E2D8E4DEC0C0C",
      INIT_2B => X"DFDFDFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBF9E3C13ED",
      INIT_2C => X"9E9EBFBFBFBFBFBFBEBEBEBFDFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_2D => X"9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E",
      INIT_2E => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9E9E9E9E",
      INIT_2F => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFDFDFDFDFDFDFBFDFDFBFBFBF",
      INIT_30 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_31 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_32 => X"D0B0B08F6E6F6F4E4E0D2E0D0D0D0D0D0D2E2E2E70D1F2B55CFFFFFFFFFFDFDF",
      INIT_33 => X"8BABCCCCACACACCDED0DEDED2E6E4D6D2C0C2CCB49690BAEF0F0CFCF8EAFF0F0",
      INIT_34 => X"BFBFBFBFBFBFBFBFBFDFDFDFBFBEDF9E3C174FAC8BAC2EB0900DCCABAB6A4A6A",
      INIT_35 => X"BFBFBF9F9F9F9F9F9FBFBFBFBFBFBFBFBFBFBFBFDFDFDFBFBFBFBFBFBFBFBFBF",
      INIT_36 => X"9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9F9F9F9F9F9FBF9F9F9F9F9F9EBEBFBF",
      INIT_37 => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E",
      INIT_38 => X"DFDFDFDFDFDFBFBFDFBFBFBFBFBFBFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_39 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_3A => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_3B => X"CCECEC0D2D4E2E70B11274FADEBFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_3C => X"8F4E4D4D2C4D4DAA49892CAED0D0AFAE8E8EAFB0B06F6F6E6E6F6F6F6F2E0DED",
      INIT_3D => X"BEBE9E1B37120DAB8BAB0D4EB02EAB4A4A6A8BCCECCCCCCCCCCCCDCD8CAC2E4E",
      INIT_3E => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDFDF",
      INIT_3F => X"9E9E9E9E7F7F9F9F9F9FBF9F9F9F9F9F9EBEBFBEBEBEBF9F9F9F9F9F9F9FBFBF",
      INIT_40 => X"BFBFBFBF9EBFBFBFBFBFBFBFBFBFBF9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E",
      INIT_41 => X"DFDFBFDFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_42 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFDFDFDFDF",
      INIT_43 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_44 => X"DFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_45 => X"CFAF8E8E8E8FAF8F6F4E2E0D4E4E4E6E6F2D2DEDED0DECED0D4E4EB0F25499DE",
      INIT_46 => X"906FCC6A8B4A4A6A6A6BABABACACCCCC0D2E2E2D2E2D4D6E4D2C0B4928AA4CAE",
      INIT_47 => X"BFBFBFDFDFDFDFDFDFDFDFDFDFBFBFDFBFDFDFDFBEBE1B5753B00CAB8BABECED",
      INIT_48 => X"9F9F9F9F9E9EBEBEBEBEBF9FBFBFBFBFBF9FBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_49 => X"BFBFBF9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9F9F9F9F9F9F9F9F",
      INIT_4A => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9E9E9EBFBFBFBFBFBFBFBFBF",
      INIT_4B => X"DFDFDFDFDFDFDFDFDFDFDFDFDFBFDFDFDFDFDFDFDFDFDFBFDFDFBFBFBFBFBFBF",
      INIT_4C => X"FFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_4D => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFDFDFDFDFDFDF",
      INIT_4E => X"2D2E4E4E6E2D0C0CEDEDED0D4D6E6EF153389DFFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_4F => X"CBEC0C2D2D0C0C2D4D6E2D2D2D0CEB2768EBAECFCF8E6D6E4E8E8F8F4E2D2D0D",
      INIT_50 => X"DFBEBEDFDFBFBFDFDF5D78B4F04EACAB8ACBCCED4E4E2ECC8B4A8AAB8BABEC0D",
      INIT_51 => X"BFBFBFBFBF9FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDFDFDFDFDFDFDFDF",
      INIT_52 => X"9E9E7E7E7E7E7E7E7E7E7E7E9F9F9F9F9F9F9F9F9F9F9FBF9E9E9EBFBFBFBF9F",
      INIT_53 => X"BFBFBFBFBFBFBFBF9EBF9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E",
      INIT_54 => X"DFBFBFBFBFBFBFBFBFBFBFBFBFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_55 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_56 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_57 => X"6E8FD1F2167DDEFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_58 => X"4E0C6907A92C8EAFAF6D2D2D6E8E8F8E4D2D4E0D0D2D2E2E4E2D0CEC0DECED2E",
      INIT_59 => X"4ECB8A6A6A8BCCCC0D0DCCACECCCAB8A8B6A6AAB8BCBECEC0C2D4D4D4D2D4D6E",
      INIT_5A => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBEBFBFDFDFBFDF5DB99411",
      INIT_5B => X"7F7F7F7F7F9F9F9F9F9F9FBF9E9E9EBFBFBFBF9F9F9F9F9F9F9FBE9E9E9E9E9E",
      INIT_5C => X"BEBEBEBEBEBEBEBEBEBEBE9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E",
      INIT_5D => X"DFDFBFBFBFBFBFBFBFBFBFBFBFDFDFDFBEBEBEBEBEBEBEBEBEBEBFBFBEBEBEBE",
      INIT_5E => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_5F => X"DFFFDFDFDFFFDFFFDFDFDFDFDFDFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_60 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_61 => X"4D4E4E2D2D2D0DED0D0D0D0D4E0D2D2D2E2E2E6F6FF1F1D55CDEDFFFDFDFDFDF",
      INIT_62 => X"8B8ACBCBCBEC0DEC0D2D2D2D2D0C2C2D0C2D4D6E2DAB0849CB0C6D8E8E2D0C0C",
      INIT_63 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFBF5D9894318EEB6A6A6A8BABCCAC0D0EED8B",
      INIT_64 => X"9E9E9E9E9E9E9EBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDF",
      INIT_65 => X"9E9E9E9E9E9EBEBE9E9E9E9E9E9E9E9E9E9E9E9E9F9F9F9F9F9F9F9F9F9F9FBF",
      INIT_66 => X"BEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBE",
      INIT_67 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_68 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_69 => X"FFFFFFFFDFFFFFFFFFFFFFDFDFDFFFFFFFFFFFFFDFFFFFFFFFDFDFDFDFDFDFDF",
      INIT_6A => X"2D0D2D2D2E4F4EAFD1D2943BDEFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6B => X"2C4D0C2C2D4D6D6DEC49086A0B2C8E6D6D4DECCB0C2D2D2D0D2DECCCEC0D0D0D",
      INIT_6C => X"BFBE7DDAB4F06E0C8A494A4A8BABCCCC0D2EED8B8BAB8ACBCBACCBCCCCCCECEC",
      INIT_6D => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDFDFDFDFDFDFDFBFBF",
      INIT_6E => X"9E9E9E9E9E9E9E9E9F9F9E9E9E9E9E9E9E9E9E9F9E9EBF9E9E9E9E9F9F9FBFBF",
      INIT_6F => X"BF9F9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E",
      INIT_70 => X"DFBFBFBFDFDFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_71 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFDFBFBFDFBFBFBFBFBFBF",
      INIT_72 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_73 => X"DEFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_74 => X"EC0C4D2D2D0CABAB0C2D2D0DEC0DCCCCECED0D2D2D0D2D0D4E4E90F0F2751CBE",
      INIT_75 => X"6B8BACED0D0E0DCCABAB8AAB8BCCECAB0D0C2D4E4D0C0C2D4D4D4DEBAB49098A",
      INIT_76 => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDFBF7DD9D4F04EECAB492A094A",
      INIT_77 => X"9F9F9F9F9F9F9F9F9E9EBF9E9E9E9E9F9F9F9F9F9F9FBEBFBFBFBFBFBFBFBFBF",
      INIT_78 => X"9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9F9F9F9F",
      INIT_79 => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9E9E9E9E9E9E9E9E9E9E9E",
      INIT_7A => X"DFDFDFDFDFDFDFBFDFBFDFDFBFDFDFDFDFDFDFBFDFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_7B => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_7C => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_7D => X"EC0DECED0D0D2E2E2D0D2E4E4E8FD0F053DCBEFFFFDFBFDFDFDFDFDFDFDFDFDF",
      INIT_7E => X"8BCCECECEC0C2D2D2D0C2D2D2D0C0BEBAA08298BCC0C2C0C0CEC8BAB0D2D0DEC",
      INIT_7F => X"BFBFBFBFBFBFDFBF7DFAF5108FEC8A49294A0A4A6B8BACED0DEDEDCCABAB6AAB",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena_array(0),
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized11\ is
  port (
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized11\ : entity is "blk_mem_gen_prim_wrapper_init";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized11\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized11\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"1F97FF8017FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_01 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA7FFFFF0F",
      INITP_02 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4FFFFFFF83FF7FF002FF",
      INITP_03 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9FFFFFDC07FBFFF007FFFFFFFFFFFFF",
      INITP_04 => X"FFFFFFFFFFFFFFFFFFFFFD1FFFFF021FFFFDC00FFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_05 => X"FFFFFFFFFFA3FFFFFF83FFBF9003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_06 => X"7FFFFF307FF0E000DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_07 => X"0C000BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4",
      INITP_08 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF47FFFFF803FF",
      INITP_09 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE87FFFFFC008200003FFFFFF",
      INITP_0A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0FFFFFFFF03800005FFFFFFFFFFFFFFFFF",
      INITP_0B => X"FFFFFFFFFFFFFFFFFFA0FFFFFFFD8380000BFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0C => X"FFFFFFF61FFFFFFFE39C0003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0D => X"FFFFFF9DFC005FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0E => X"0BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF43FF",
      INITP_0F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE87FFFFFFFFC3FF0",
      INIT_00 => X"9E9E9E9F9F9F9F9F9F9FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFBF",
      INIT_01 => X"9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E7F7F9F9F9F9F9F9F9F9F9F9F9E9EBF9E",
      INIT_02 => X"BFBFBFBFBFBFBFBFBF9EBFBFBFBFBFBFBFBFBFBF9E9E9E9E9E9E9E9E9E9E9E9E",
      INIT_03 => X"BFDFDFDFDFDFDFBFDFDFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_04 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFDFDF",
      INIT_05 => X"DFDFDFDFFFDFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_06 => X"6F90D153DA9EFFDFFFDFDFDFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFDFDFDFDF",
      INIT_07 => X"0C2C0CAA49498AECEC0C0DEC2DEC8BCCCCECCCABACCCCCCCED2D2D2E4E2D4EAF",
      INIT_08 => X"0DAB6A292A2A2A2A6B8BACCCCCECCCCCAB8B6AABABCCECED2D0D0D0CECECECEC",
      INIT_09 => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDFDFDFDFBFDF9D3B15318F",
      INIT_0A => X"9E9E9E9E7E9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9FBF9F9F9FBFBFBFBFBFBF",
      INIT_0B => X"9E9E9E9E9E9E9EBF9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E",
      INIT_0C => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9EBFBFBFBFBFBF9E9E9E9E9E9E",
      INIT_0D => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFDFDFDFDFDFDFDFDFDFBFDFDFDFDF",
      INIT_0E => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_0F => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFFFFFDFDFDFDFFFDFFFDFDFDFDFDF",
      INIT_10 => X"0DECACCCACCCACACACCCCCCC0D4E2D2D4D4E4E8FB1F254DB9EDFDFDFDFDFFFFF",
      INIT_11 => X"ABCBECCBABABABCBCCCDEDEDEDCDCCCCEC0C0C2C2C0CCB694969ABCCECECEDED",
      INIT_12 => X"BFBFBFBFBFBFBFBEDEDEDEDFBFDFBF3C3631D06EEC8A4A0909090A0A4B6B8BAB",
      INIT_13 => X"9F9F9F9F9F9F9F9F9F9F9F9E9E9EBEBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_14 => X"9E9E9E9E9E9E9E9E9E9E9E7E9E9E9E9E9E9E9E9E9E9E9E9E7E7F9F9F9F9F9F9F",
      INIT_15 => X"BFBFBFBFBFBFBF9EBFBFBFBFBFBF9F9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E",
      INIT_16 => X"DFDFDFDFBFBFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_17 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_18 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_19 => X"4E4E2E4E4E6E90D1F1743BBEDFFFBFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_1A => X"EDED0D0D0C2D2D2D0CEBAA49698ACBCBEC0DEDCCEDCCACACCCCCCCECCCCCEDED",
      INIT_1B => X"9F9F5D9973D08FEDCB8B6A2A29090A0A2A4A8BABABABCBCBAB8BECECECED0DED",
      INIT_1C => X"9E9EBFBFBFBFBFBFBFBFBFBFBFBFBF9EBFBFBFBFBFBFBFBFBFBFBFBFBFDFBFBF",
      INIT_1D => X"9E9E9E9E9E9E9E9E9E9E9E9E7F7F9F9F9F9F9F7F9F9F9F9F9F9F9F9F9F9F9F9E",
      INIT_1E => X"BFBEBEBEBEBEBEBEBEBEBEBEBEBEBEBE9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E",
      INIT_1F => X"DFDFDFDFBFBFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBEBEBEBEBFBEBEBEBEBEBF",
      INIT_20 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFDFDFDFDFDFDF",
      INIT_21 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_22 => X"DEDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_23 => X"CBABCCECECECECCCECCCACACACEC0DECCCCC0D0E2E4F6F6F8F90B1F2D61BBDFE",
      INIT_24 => X"4A2A2A2A2A6A6BABAB6A8AAB8AABABEC0C0D0D0C0D0CEC2D2D0C0CECEBCBAA49",
      INIT_25 => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBF9FBFBFBFBF9F9E5DBA33D16F0DCCAB8A6A4A",
      INIT_26 => X"7E9E9F9F9F9F9F9F9E9F9F9F9F9F9F9E9E9E9E9E9E9EBFBFBFBFBFBFBFBFBFBF",
      INIT_27 => X"BEBEBEBEBEBE9E9E9E9E9E9E9F9F9F9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E",
      INIT_28 => X"DFDFDFDFDFDFDFDFDFBFBEBEBEBEBEBEBFBEBEBEBEBEBEBEBEBEBEBEBEBEBEBE",
      INIT_29 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFBFBFDFDFDFDFDFDFDFDF",
      INIT_2A => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_2B => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_2C => X"CC0D0DEC0D2D2D2E2E8F6FB090F213F75CBEFFFFFFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_2D => X"8AABCBABECECECECEC0C0D0D0D0DECECABABAAAAABECECCCCC0DECECCCCCCCCC",
      INIT_2E => X"BFBFBFBFBF9FBF9E5DB9B5D06F2DEDACAB6A6A4A4A4A2A4A2A6B8BABAB6A6A8A",
      INIT_2F => X"9F9F9F9F9F9F9F9E9EBF9E9EBFBF9E9E9EBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_30 => X"9E9E9E9E9E9E9E7E9E9E9E9E9E9E9E9E9E9E9E9E7E9E9F9F9F9F9F9F9F9F9F9F",
      INIT_31 => X"9FBFBFBFBFBF9EBFBFBFBF9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E",
      INIT_32 => X"BFBFBFBFBFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9F",
      INIT_33 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFBFBF",
      INIT_34 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_35 => X"1233387DBEDFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_36 => X"0CECECCBABABCBCBECECCCED0E2D0D0DECCCEC2D0D2D2D2D2D6E6E4F6F90B1D1",
      INIT_37 => X"2DECCC8BAA6A6A4A4A4A4A4B4A6B8B8B8B8B6A496AABCCCC0D0CECEC0C0C0D0C",
      INIT_38 => X"BFBF9E9E9EBFBFBFBFBFBFBFBFBF9EBFBFBFBFBFBFBFBEBFBFBFBF5CFAF5D08F",
      INIT_39 => X"9E9E9E9E9E9E9E9E7F7F9F9F9F7F9F9F9F9F9F9F9F9F9F9F9F7F9F9E9EBF9E9E",
      INIT_3A => X"9E9E9E9E9E9E9E9E9E9EBFBFBF9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E",
      INIT_3B => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9E9EBFBFBFBFBF9EBFBFBFBF9E",
      INIT_3C => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFDFDFDFDFDFDFBFDFBFDFDFBFBFBFBFBF",
      INIT_3D => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_3E => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_3F => X"0E2D0D0DECEC0D2D0D2D4D4E6E8E6E4F6F90D1F233BA9EDFFFDFDFDFDFDFDFDF",
      INIT_40 => X"6B6B6B6A6A6A4A6A8B8BCCACEC0C0C0C2D2D2D2D0D0DECCCCBEBCBECECCCCCED",
      INIT_41 => X"BFBFBFBFBFBFBFBFBFBFDEDEBFBFBE1A3631AE6D2CEBCCAB8A6A6A4A4A6A6B6B",
      INIT_42 => X"7F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9E9EBE9E9EBFBF9E9E9EBFBFBFBFBFBFBF",
      INIT_43 => X"9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E7E7E7E7E7E7E7F7E7F7F",
      INIT_44 => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBF9EBFBFBFBFBFBFBFBFBFBF9EBFBFBF9E9E9E",
      INIT_45 => X"DFDFDFBFDFDFDFDFDFBFDFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_46 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_47 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_48 => X"6F6F4E6F90F112D61BDEDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_49 => X"CBEC0C0D2D0C2D2D2D2D0D0CEC0D0D0D0D0DEC0D2D0D0D2D0D0D0D2D2D0D2E4F",
      INIT_4A => X"BF9E3C5751AF8E2D0CCBAB8B6A4A6A4A6A6A8B8B8B8B6A4A494A6A8BABABCBAB",
      INIT_4B => X"9F9F9F9F9F9F9F9F9F9F9E9E9EBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDFDFDFBF",
      INIT_4C => X"9E9E9E9E9E9E9E9E9E7E7E7E7E7E7E7E7F7F7E7E7F9F9F9F9F9F9F9F9F9F9F9F",
      INIT_4D => X"9E9E9E9E9E9E9E9E9E9E9E9E9E9EBFBFBF9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E",
      INIT_4E => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9EBFBFBFBFBFBFBF",
      INIT_4F => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFBFDFDFDFDFDFDFBFDFDF",
      INIT_50 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_51 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_52 => X"2D2DECCCEC0D0C2D4D2D0D0D0D2D2D2D2E4E2E4F70908FD0B032587DDFFFDFDF",
      INIT_53 => X"6A4A4A4A6A4A8BAB8B8B6A2929296A6A8ACBCBCBCCCCECECECECECEC0D2D2D2D",
      INIT_54 => X"BFBFBFBFBFBFBFBFBFBFBF9F9FBFBFDFDFDEBF9F7F3C9973CF6E2E0DEDECAB8B",
      INIT_55 => X"7E7E7E7E7F7F7E7F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9E9E",
      INIT_56 => X"9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E7E7E7E",
      INIT_57 => X"BFBFBFBFBFBFBFBFBFBFBFBF9EBFBFBFBFBFBFBF9E9E9E9E9E9E9E9E9E9E9E9E",
      INIT_58 => X"DFDFDFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_59 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_5A => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_5B => X"0D0D2D2D2D4E4E4F6F8FD0F274FA9DBFDFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_5C => X"49496A6AABABCBCBCCCBCCCCCCEC0CECEC0D0D0D2D0CCCCCED2D2D2D2D2D2D0D",
      INIT_5D => X"9FBFBEBFDEDEBE9E7DDAB5F18F4E2D0DEDCCAB8B4A2A4A4A6B6B8B8B8B6A6A4A",
      INIT_5E => X"7F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9E9EBFBFBFBFBFBFBFBFBFBFBF9F",
      INIT_5F => X"9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E7D7D9E9E9E7F7F7E7F7F9F9F9F",
      INIT_60 => X"BEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBE9E9E9EBE9E9E9E9E9E9E",
      INIT_61 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBEBE",
      INIT_62 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBEBFBFDFDFDFDFDF",
      INIT_63 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFDF",
      INIT_64 => X"5CBEDFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_65 => X"CBABCC0C0C0CECECCC0C0CECCCEC0D0C0C0D2D2D2D2D2D2D2D2D2E6F6FB012F7",
      INIT_66 => X"4E2D0DECECCB8B8A6A494A498B8B8B6B4A2A4A4929496A6A8A8AABABCBABABAB",
      INIT_67 => X"9FBF9F9F9F9E9E9E9EBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBEBEBE7DDAF612B0",
      INIT_68 => X"9E9E7E7E7E7E7E7E9E9E9E9E9E9E7E9E9E7E9E7E9E9E9E9E9E9E9E9E9E9E9E9E",
      INIT_69 => X"BEBEBEBEBEBEBEBEBEBEBEBEBE9E9E9E9E9F9E9E9E9E9E9E9E9E9E9E9E9E9E9E",
      INIT_6A => X"BFBFBFBFBFBFBFBFBFBFDFBEBFBEBEBEBEBEBEBEBEBFBEBEBEBEBEBEBEBEBEBE",
      INIT_6B => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBF",
      INIT_6C => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_6D => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_6E => X"ECECECECECEC0C0D0D2D0D2D4E2D4E70B032987DDFBFDFDFDFDFDFDFDFDFDFDF",
      INIT_6F => X"6A6A6A6B2A4A4A2949496A498A8A8A6AABABABABABCBCBCBEC0C0CECECEC0CEC",
      INIT_70 => X"BFBFBFBFBFBFBFBF9FBF9EBFBEBE7D1B1653F18F2E2DECABABAB6A494A29294A",
      INIT_71 => X"7E7E7E7E9E7E7E7E9E9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9E9E9E9E9E9E",
      INIT_72 => X"9E9E9E9E9E9F9E9E7E7E7E7E7E7E7E7E7E7E7E7E7E9E7E7E7E7E7E7E7E7E7E7E",
      INIT_73 => X"BFBFBFBFBFBFBFBFBFBFBF9F9FBFBFBF9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E",
      INIT_74 => X"BFBFBFBFBFBFBFBFBFBFDFDFDFDFDFDFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_75 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBF",
      INIT_76 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_77 => X"4E8FB0D154FABDDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_78 => X"29496A8AAB8B8B8BABABCBABABCB0C0D0D0CECECECECECECECECCCEC0D4E4E4E",
      INIT_79 => X"BF9E3B9853F0AF4E0DCCCCABAB8B4A2909294A4A4A4A6A6B2A2949496A694949",
      INIT_7A => X"7F7F7F7F7F7F7F9F9F9F9F9F9F9F9E9E9E9E9E9E9EBF9E9E9E9E9EBF9FBF9E9F",
      INIT_7B => X"9E9E9E9E9E9E9E9E9E9E7E7E7E7E7E7E7E7E7E7E7E7E7E7F9F7F7F7F7E7F7F7F",
      INIT_7C => X"9EBFBFBF9EBFBF9FBFBFBFBFBFBF9E9E9E9E9E9E9E9E9E9E9E9F9E9E9E9E9E9E",
      INIT_7D => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9E",
      INIT_7E => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFDFDFDFBFBFBFBFDFDFDFBFBF",
      INIT_7F => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena_array(0),
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized12\ is
  port (
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized12\ : entity is "blk_mem_gen_prim_wrapper_init";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized12\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized12\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD07FFFFFFFFF1FF01FFFFFFFFFF",
      INITP_01 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFA0FFFFFFFFFFEFF01FFFFFFFFFFFFFFFFFFFFF",
      INITP_02 => X"FFFFFFFFFFFFFFF61FEFFFFFFFFFFF0BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_03 => X"FFFE43FDFDFFFFFFFFF97FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_04 => X"FFFFFFFE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_05 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC83FFFDF",
      INITP_06 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF90FFFF8FFFFFFFFE3FF",
      INITP_07 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF20FFFF0FFFFFFE84FFFFFFFFFFFFFF",
      INITP_08 => X"FFFFFFFFFFFFFFFFFFFFFFE43FFFF0FFFFFFE07FFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_09 => X"FFFFFFFFFFFE83FFFF8FFFFFFF2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0A => X"D0FFFFFAFFFFFFE5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0B => X"FFFC3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA0FFFFFEFFF",
      INITP_0D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF21FFFFE7FFFFFF8FFFFFFF",
      INITP_0E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF41FFFFE7FFFFFF17FFFFFFFFFFFFFFFFF",
      INITP_0F => X"FFFFFFFFFFFFFFFFFFFE83FFFF87FFFFFF2FFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_00 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_01 => X"CBCCABCC0D0C0CECCCABABCCCCCCECEC0D2D2D4E6FB0D1D63CBEDEFFFFDFDFDF",
      INIT_02 => X"8B4A2929090929292A4A4A0A2A4A29494949496A49296A6A8A8B8A6A8B8BABAB",
      INIT_03 => X"9F9F9E9E9E9E9E9EBFBFBFBFBFBFBFBFBFBFBF9F9E3DB953F1AF6E4D0DCCAB8B",
      INIT_04 => X"7E7E7E7E7E7E7E7E7E7E7E7F9F7E7F7E9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F",
      INIT_05 => X"BFBF9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E7E7E",
      INIT_06 => X"DFDFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9F",
      INIT_07 => X"BFDFDFDFDFDFDFDFBFDFBFDFDFDFDFBFBFBFBFBFBFBFBFBFBFBFDFDFDFBFBFBF",
      INIT_08 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBF",
      INIT_09 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_0A => X"CCCCECEB2C2C4E8FAFF1373CBFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_0B => X"294A490808294A4A6A8AAB8B8A8A6A6AABABABABCBCBABCBECECEB0BEBABAB8B",
      INIT_0C => X"9E9E9EBE9EBF9F7F3DBAD5F1F16E4D2CECAB6B6A4A4A09092929292A292A2A29",
      INIT_0D => X"7F7E7F7F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9E9E9E9E9E9E9E9E9E9E",
      INIT_0E => X"9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E7E7E7E9E7E7E7E7E7E7E7E7E7E7F",
      INIT_0F => X"BFBFBFBF9F9E9E9E9E9E9E9EBEBEBEBEBEBEBE9E9E9E9E9E9E9E9E9E9E9F9E9E",
      INIT_10 => X"DFDFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_11 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFDFDFDFDFDFDFDFBFBFBFDF",
      INIT_12 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_13 => X"DFDFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_14 => X"8A6A6A6A8A8B8A8BABABAB8BABAB8ACBEBEBAB6A6A4A8BCA0B2C8E6F52B87CBE",
      INIT_15 => X"B04E0CEBAA8B6A6A2A2909E909090929294A0929292929292809292A6A8A8B8A",
      INIT_16 => X"9F9F9F9F9F9F9F9F9F9F9E9E9E9E9E9E9E9E9E9E9E9E9E9E9EBF9F7EFBF612B0",
      INIT_17 => X"9E9E9E9E9E9E7E7E7E9E7E7E7E7E7E7E7E7E7F7F7F7E7F9F7F9F9F9F9F9F9F9F",
      INIT_18 => X"BEBEBEBEBEBEBE9E9E9E9E9E9E9E9E9E9E9F9E9E9E9E9E9E9E9E9E9E9E9E9E9E",
      INIT_19 => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9F9E9E9E9E9E9E9E",
      INIT_1A => X"DFDFDFDFDFDFBFDFBFDFDFDFDFDFDFDFBFBFDFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_1B => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_1C => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_1D => X"ABABABAB8B8A8A8AAB8AAAAACB4E2E73FB9EBFFFFFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_1E => X"09090929292AE90909290829292909296A6A8A8A6A8A6A6A8A8A8A8A8B8B8B8B",
      INIT_1F => X"9E9E9E9E9E9E9E9E9E9E9EBFBFBF7DFB1712B08F6E4EECCBAA6A4A4A0909E809",
      INIT_20 => X"7D7D7D7D7E7E7F7E7F7E7E9F9F7F7F7F9F9F9F9F9F9F9F9F9F9F9F9F9F9E9E9E",
      INIT_21 => X"9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E7E9E9E7D",
      INIT_22 => X"BFBFBFBEBEBEBFBFBFBFBFBF9FBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBE9E",
      INIT_23 => X"DFDFDFDFDFDFDFDFBFBFBFDFDFDFDFDFDFBFDFDFDFDFDFDFDFDFDFDFDFDFDFBF",
      INIT_24 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_25 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDF",
      INIT_26 => X"2D90D51A9EDFDFBFFFDEFEDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF",
      INIT_27 => X"294909296A6A8A8A8A8A6A6A8A8A8AABABABAB8AABABAB8B8B8B8BAB8AAAEC0C",
      INIT_28 => X"9F7DDA1632CF8F6E2D0DECAB8A6A4A49290909292929294A2909E80808080908",
      INIT_29 => X"9E7E9E9E9E9E9E9E9F9F9F9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9F",
      INIT_2A => X"9E9E9E9E9E9E9E9E9E9E9E7E7E7E9E7E7E7E7E7E7E7E7E7E7E7E9E9E9E7E7E9E",
      INIT_2B => X"BFBEBEBEBEBEBEBEBEBEBEBEBEBEBE9E9E9E9E9E9E9E9F9E9E9E9E9E9E9E9E9E",
      INIT_2C => X"BFBFBFBFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBEBEBEBEBEBFBF9F9F9FBF",
      INIT_2D => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFBF",
      INIT_2E => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_2F => X"DFDFDFFFFFFFDFDFDFDFDFDFDFDFDFDFFFFFFFDFDFBFDFDFDFDFDFDFDFDFDFDF",
      INIT_30 => X"8A8A8AAB8A8A8AABABABCBCCABCCABABCCCBCC2EF2785CBDDFBFDFDFDFDFDEDF",
      INIT_31 => X"6A6A4A290909092909292A2909E9C8E808080808280809494A6A8A8A8A6A6A6A",
      INIT_32 => X"9F9F9F9F9F9E9E9E9E9EBFBFBF9E9E9EBF9EBF9F7EFB1631CFAE4D2DECCBCB8A",
      INIT_33 => X"7E7E9E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E9F7E7E7E9F9F9F9F9F",
      INIT_34 => X"9E9EBE9E9E9E9E9E9E9E9F9E9E9E9E9E9E7E7E7E7E7E7E7E7E7E7E9E9E9E7E7E",
      INIT_35 => X"BFBFBFBFBFBFBFBFBFBF9EBFBFBFBFBF9FBF9E9E9F9E9E9E9E9E9E9E9E9E9E9E",
      INIT_36 => X"BFBFBFBFBFDFDFDFDFDFDFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_37 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_38 => X"DFDFDFDFDFDFDFDFBFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_39 => X"EC0C0D2E4E1237FB9EBEBEFEBEDFDFDFDFDFBEDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_3A => X"E9E8C8E809290808280909294A496A8A8A6A6A8B8BAB8AAB8A6A8B8BABCCEB0B",
      INIT_3B => X"BF9E9E9EBF9EBF7EFC3731D0AE6D2D0CCBAB8A49494A2A2909090909292A4A29",
      INIT_3C => X"7E7E7F7F7F7E7E7E7E7E7F9F7F7F7F9F9F9F9F7F7F7F7F7F7F7F9E9E9E9E9E9E",
      INIT_3D => X"9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E7E7E7E7E7E7E7E9E7E7E7E7E7E7E7E7E7E",
      INIT_3E => X"BFBFBFBF9FBFBFBFBFBEBFBF9E9E9E9EBFBEBEBFBFBFBF9E9E9E9E9E9E9E9F9E",
      INIT_3F => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDFDFDFDFDFDFDFDFDFBFBFBFBFBFBF9EBF",
      INIT_40 => X"DFBFDFDFDFDFDFDFBFBFBFBFDFDFDFDFDFDFDFDFDFDFDFDFBFDFDFDFDFDFDFDF",
      INIT_41 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_42 => X"DDDEDFBFBFBFBEDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFDFDF",
      INIT_43 => X"296A6A8A6A8A8AABABAB8BABABABABABABCBEA0B0B4D2EB0161BBEBFBFBFDFFE",
      INIT_44 => X"6D4DEBCBAA8A6A49492A2929292A4A4A4A4A2A29E9C8C8E82929292949292909",
      INIT_45 => X"7F7E7E7F7F7F7E9F9F9F9F9F9F9F9E9E9E7E9E9E9E9E9E9EBFBF7EFC5873CF8E",
      INIT_46 => X"9E9E9E7E7E7E7E9E9E9E7E7E7E7E7E7E7E7E7E7E7E7E7F7F7F7E7E7E7E7E7F9F",
      INIT_47 => X"9E9E9E9EBFBFBF9E9F9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E",
      INIT_48 => X"DFDFBFBFBFBFBFBFBFBFBFBFBFBF9FBFBFBFBFBFBF9EBFBFBFBFBFBFBFBFBFBF",
      INIT_49 => X"BFDFDFDFDFDFDFDFDFDFDFDFBFDFDFDFDFDFDFDFBFBFBFBFBFBFBFDFDFDFDFDF",
      INIT_4A => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFBFDFDFDFDFDFDFDF",
      INIT_4B => X"DFDFDFDFDFFFFFFFFFDFDFDFDFDFDFDFBFBFDFDFDFBFDFDFDFDFDFDFDFDFDFDF",
      INIT_4C => X"ABABCBCBCBCBCBEB2D2E12985B7DBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_4D => X"09092A4A4A4A292908C8E8E80929494949492908496A8B6A6A6A8A8B8A8B8BAB",
      INIT_4E => X"9E9E9E9E9E9E9E9E9E9EBF9FBF9E3B7853F1AF8E4D0CCB8BAB8A6A4A4A4A2A29",
      INIT_4F => X"7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7F9F7E9E9E7E7E7E9E9E9E7E9E9E",
      INIT_50 => X"9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E7E7E7E7E7E7E7E7E",
      INIT_51 => X"BFBF9FBFBFBFBFBFBF9F9E9E9E9E9E9E9E9E9E9E9E9E9E9E9F9F9F9E9F9E9E9E",
      INIT_52 => X"BFDFDFDFDFDFDFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_53 => X"DFDFDFDFDFDFDFDFDFBFBFBFBFDFDFDFDFDFDFDFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_54 => X"DFDFDFDFBFBFBFBFBFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_55 => X"9DBFDFDFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_56 => X"0829494949494929294A8A6A6A6A8A8B8A8A8BABAAAACBAACBCBEB0C6E12583C",
      INIT_57 => X"7F3D9894F1B06F2DECAAAB6A6A4A4A49494A2A2929294A4A6A6A492908E808E8",
      INIT_58 => X"7E7E7E7E7E7E7F9F9E9E9E9E9E9E9E7E7E7E9E9E9E9E9E9E9E9E9E9E9E7EBF9F",
      INIT_59 => X"9E9E9E9E9E9E9E9E9E9E9E9E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E",
      INIT_5A => X"9E9E9E9E9E9E9E9E9E9E9E9E9F9F9F9E9F9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E",
      INIT_5B => X"BFBFBFDFBFBFBFBFBFDFBFBFBFBFBFBFBFBFBFBFBFBF9FBFBFBFBFBFBFBE9E9E",
      INIT_5C => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_5D => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFDFDF",
      INIT_5E => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_5F => X"6A6A8A8B8A8A8BAA8A8AABABCBEC2B6DF0373C9EBFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_60 => X"4A29492929292A2A294A4A4A49492908080808E8082949292929494929496A6A",
      INIT_61 => X"9E9E9E9E9E7E9E9E9E9E9E9E9E9E9E9E9E7E9F7E7EDAD5F1D08F4E0CEBAB8A4A",
      INIT_62 => X"9E9E7E7D7D7E7E7E7E7D7D7D7D7D7D7D7E7E7E7E7E7E7E7E7E7E7E9F7E7E7E7E",
      INIT_63 => X"9F9F9E9E9E9E9EBEBEBEBEBE9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E",
      INIT_64 => X"DFBEBEBEBFBFBFBFBFBFBFBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBE",
      INIT_65 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFDFDFDFDFDFDFBFDFDFDFDFDFDFDFDFDF",
      INIT_66 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_67 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_68 => X"EC0D6DCFF51B7EBFBFBFBEDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_69 => X"292908E8E8080808294949494949496A49496A6A8A8A8A8A8A8A8AAA8A8AABCC",
      INIT_6A => X"9E9E9E9E7E9E7E7DFB1632AF8F6E0DECCB8A8A4A492929292929294A4A4A4A4A",
      INIT_6B => X"7E7E7E7E7E7E7E7E7E7E7E7E7E7E9E9E9E9E9E9E7E9E9E9E9E7E9E9E9E9E9E9E",
      INIT_6C => X"9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E7E7E7E9E9E9E7E7E7E7E7E7E7E7E7E7E",
      INIT_6D => X"BFBFBFBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBE9F9E9E9E9E9E9E9E9E9E9E9E",
      INIT_6E => X"DFBFBFBFBFBFBFBFBFBFBFDFDFDFDFDFDFDFBFBFBFBEBFBEBFBFBF9FBFBFBFBF",
      INIT_6F => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFDFDFDFDFDFDFDFDF",
      INIT_70 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_71 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_72 => X"49494A4A4A494A6A8A8A8A8A6A6A6AAA8A8A8BAC0D8FCFB3FA7DBFDFBFDFDFDF",
      INIT_73 => X"4D4D0CEBAA6A6A49292949292909294A4A4A2929290908E8E808282929494949",
      INIT_74 => X"7E7E7E7E9E9E9E7E9E9E9E9E9E9E7E7E7E9E9E9E9E9E9E9E9E7E5D1B3712AF8F",
      INIT_75 => X"9E9E9E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E",
      INIT_76 => X"9E9E9E9E9E9E9E9E9F9E9E9E9E9E9E9E9E9E9E9E9E9E7E9E9E9E9E9E9E9E9E9E",
      INIT_77 => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9FBFBFBFBFBFBFBF9E9E9E9E9E9E9E9E9E",
      INIT_78 => X"DFDFDFDFBFBFBFDFBFBFBFBFDFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_79 => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDFDF",
      INIT_7A => X"DFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_7B => X"6A8A8BAAAA8AABCD4ED053985C9EDFDFBFBFBFBFBFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_7C => X"2909094A4A2A090908E8E8E8E80828494929492828494A4A4A494A6A6A8A8A8A",
      INIT_7D => X"9E9E9E9E7E9E9E9E9E9E7E9E9F5D3C9973D0AF6D2C0CCBAB8A6A6A4909292929",
      INIT_7E => X"7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7F7F7F7E7E7E9E9E9E9E9E",
      INIT_7F => X"9E9E9E7E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E7E7E7E7E7E7E7E7E",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena_array(0),
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized13\ is
  port (
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized13\ : entity is "blk_mem_gen_prim_wrapper_init";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized13\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized13\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"FFFFFFFFD07FFFE07FFFFFE5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_01 => X"FFFE8FFFFFFC7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_02 => X"8BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA07",
      INITP_03 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF60FFFFE0FFFFFF",
      INITP_04 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE03FFFF80FFFFFF97FFFFFFFFF",
      INITP_05 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFC83FFFFC0FFFFFF1FFFFFFFFFFFFFFFFFFFFF",
      INITP_06 => X"FFFFFFFFFFFFFFFF907FFFC81FFFFFC2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_07 => X"FFFFF20FFFFE03FFFFF85FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_08 => X"807F7FFF83FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_09 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE41FFFF",
      INITP_0A => X"0000000000000000000000000000000000000000FFFFFFF7007FFFFFFFFF817F",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000002000000000",
      INITP_0F => X"00000000000000064538376C801000000800000069E2C4000D9B5701E3800000",
      INIT_00 => X"BFBFBF9FBFBFBFBFBFBFBF9EBFBFBFBFBFBFBFBFBFBFBFBFBF9E9EBE9F9E9E9E",
      INIT_01 => X"DFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDFDFDFDFDFDFBFBFBFBFBFBF",
      INIT_02 => X"BFBFDFDFDFBFBFBFDFBFDFDFDFDFDFDFBFDFDFDFDFDFDFDFBFBFBFDFBFBFBFBF",
      INIT_03 => X"DFBFBFBFDFDFDFBFBFBFDFDFDFBFBFBFDFDFDFBFBFBFDFDFDFBFBFBFDFDFDFBF",
      INIT_04 => X"9EDFFFDFDFDFBFDFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_05 => X"E80828082829082969694A4A4A494A6A8A8A8A8A8A8B8BAACAABCC2E8F52585D",
      INIT_06 => X"7E1CBAB4D08F4E4D0BEBAA8A6A694A2909292929494A29292A2909E9E8E8C8E8",
      INIT_07 => X"7E7E7E7E7E7E7E7E7E7F7F7F7E7E7E7E9E9E9E7E9E7E9E9E7E9E9E9E9E7EBE9E",
      INIT_08 => X"9E9E9E9E9E9E9E9E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E5D5D5D7E7E7E7E",
      INIT_09 => X"BFBFBFBFBFBFBFBFBFBFBFBF9EBFBFBF9E9E9E9E9E9E9EBF9EBF9E9E9E9E9E9E",
      INIT_0A => X"BFBFBFBFBFBFBFDFDFDFDFDFDFBFBFBFBFBFBFBEBEBFBFBFBFBFBFBFBFBF9EBF",
      INIT_0B => X"DFDFDFBFDFDFDFDFBFBFBFDFDFDFDFDFDFDFDFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_0C => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFDF",
      INIT_0D => X"DFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_0E => X"29496A6A8A8B8A8AAAAAAAEAEAEC4E70D1F61C9EBFBFDFDFDFDFDFBFDFDFDFDF",
      INIT_0F => X"4A4949492908082929294929292908E708C8C8C7080808090809090929494A49",
      INIT_10 => X"7E7E7E7E7E7E7E9E7E9E7E9E9E7E7E7F7FBF9E9D5CBAD5F18F6E4E2D0CCBAB8A",
      INIT_11 => X"7E7E7E7E7E7E7E7E7E7E7E7E7E5D5E5E7E7E7E7E5D5D7E7E7E7E7E7E7E7E7E7E",
      INIT_12 => X"9E9E9E9F9E9E9E9E9E9E9E9E9E9E9E7E9E9E9E9E9E9E9E9E9E9E9E9E9E7E7E7E",
      INIT_13 => X"BFBFBFBFBFBFBFBEBEBFBFBFBFBFBFBFBFBF9F9E9E9E9E9E9E9E9E9E9E9E9E9E",
      INIT_14 => X"DFDFDFDFDFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_15 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFBFBFBFBFDFDFDFBFBFBFBF",
      INIT_16 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_17 => X"EB2D8FB174FA7DBFBFBFBFDFDFDFBFBFDFDFDFDFDFBFDFDFDFDFDFDFDFDFDFDF",
      INIT_18 => X"290808E7C8A7A7C7080829090809090829294A49494A6A6A6A6A8A8A8A89A9CA",
      INIT_19 => X"9E7E7E7F7F7E7D5CDAF612B08E4D0D0CECABAB6A494949492929292949294949",
      INIT_1A => X"7E5D7D7D7D7D7D7D5D5D7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E9E7E9E9E9E",
      INIT_1B => X"9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E",
      INIT_1C => X"BFBFBFBFBFBFBEBEBEBEBEBEBEBEBEBEBEBEBEBE9E9E9E9E9E9E9E9E9E9E9E9E",
      INIT_1D => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDFDFDFDFDFBFBEBFBFBFBFBEBEBFBFBF",
      INIT_1E => X"DFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_1F => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_20 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_21 => X"0809292949496A4A496A6A6A6A6A6A6A8AAACACBEC4EB033787CBEDFBFDFDFDF",
      INIT_22 => X"6E2CECECCBABAA6949494949494949494929292808E8E7E7C7A7C7C708082809",
      INIT_23 => X"7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E9E7E9E9E9E9E7E7F9F9F7E5DDA37F1D08E",
      INIT_24 => X"9E9E9E9E9E9E7E9E9E9E7E7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D5D5D7E7E",
      INIT_25 => X"BEBEBEBEBEBEBEBEBE9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E",
      INIT_26 => X"DFDFBFDFDFDFDFDFDFDFBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBE",
      INIT_27 => X"DFBEBFBFDFDFDFBFBFBFBFBFBFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_28 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_29 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_2A => X"6A6A6A8AAACBEBEC2E8FD1F63BBDBFBFBEDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_2B => X"69494949492928080808E7C7C7C8E8E808080829292929294A6A6A6A6A6A6A6A",
      INIT_2C => X"7E7E7E9E7E9E7E9E7E9E9F9F7F7EDA3733AF8E6D4C0CEBCBABAA8A6949494949",
      INIT_2D => X"7E7E7E7E7E7E7E7E7E7E7E7E7E7D7D7D7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E",
      INIT_2E => X"9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E7E7E7E7E9E7E7E7E7E7E9E9E7E7E7E",
      INIT_2F => X"BEBFBFBFBFBFBFBEBEBEBEBE9E9E9E9E9E9E9E9E9E9EBFBEBEBEBEBF9E9E9E9E",
      INIT_30 => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFBFBFBFBFBFDFBFBF",
      INIT_31 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_32 => X"DFDFDFDFDFDFDFDFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFDFDF",
      INIT_33 => X"9DBFDFBFBFBFBFDFDFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFBFDFDFDFDF",
      INIT_34 => X"A7E8E80808080829292929294A6A6A4A6A6A6A6A6A69698AAACB0C2E6F9095B9",
      INIT_35 => X"5DFB3753D08F6E2D0CEBCBCBAA6A6A6A492929496969496A4908E8E808E7C7C7",
      INIT_36 => X"7E5E5E5E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E9E9E9E9E9E7E9E9E9E7E9E7E7E",
      INIT_37 => X"9E9E9E9E9E7E7E7E7E9E7E7E7E7E7E9E9E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E",
      INIT_38 => X"9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E",
      INIT_39 => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBEBFBFBFBFBFBFBFBEBEBEBE",
      INIT_3A => X"DFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_3B => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_3C => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFDFBFDFDFDFDFDFDFDFDFDFDFDFDFBFDFDFDF",
      INIT_3D => X"4A4A4A4A6A6A6A6A696969AACB0C4D6F9012995CBF9FBFBFBFBFBFDFDFDFBFBF",
      INIT_3E => X"8A6A6A6A4949494949494949294908E7C7C7A7A7C7E808082808082908292929",
      INIT_3F => X"7E7E7E7E7E7E7E9E9E9E9E9E7E9E9E9E9E9E7D5CFB3773AF8F6E4D0CEBCBCBAB",
      INIT_40 => X"7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E5D5D5D5D5D5D5D7E7E7E7E7E7E7E7E",
      INIT_41 => X"9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E7E7E7E7E7E7E7E",
      INIT_42 => X"BFBFBFBFBFBFBFBFBEBFBFBFBFBFBFBEBFBFBFBFBFBFBF9E9E9E9E9E9E9E9E9E",
      INIT_43 => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_44 => X"DFBFBFBFBFBFDFDFDFDFDFBFBFBFBFBFBFBFDFDFDFDFBFBFBFBFBFBFBFBFBFBF",
      INIT_45 => X"DFDFBFBFDFDFDFDFDFBFBFBFBFDFDFDFBFDFDFDFBFBFBFDFDFDFBFBFBFBFDFDF",
      INIT_46 => X"EB2D6E8FD1373BBEBFBFBFBFDFDFBFDFDFDFBFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_47 => X"08E8C7C7E7C7C7C7E808080808284909E82949494A4A4A4A8A6A6A6A696989CB",
      INIT_48 => X"7E7E7E7E7E7E5CFB58748F8E6E4E2DEBEBEBCBAB6A4949496A6A6A6A49294929",
      INIT_49 => X"FFFFFFFFFFFFFFFFFFFFFFFF5D5D5D5D5D7E5E5E7E7E7E7E5E7E7E7E7E7E7E7E",
      INIT_4A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_50 => X"6A6A8A8B8B8B8B8BACCCCDCDEDEDEDEDED0D2E4E8FD0F05278BDFFFFFFFFFFFF",
      INIT_51 => X"D0AF8F6F4E2D0D0D0DECCCCCCCCCCCACABABAB8B6A4A292929292929294A6A6A",
      INIT_52 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9D1B17745311",
      INIT_53 => X"6262626262626262626262626262626262626161616161616161616161616161",
      INIT_54 => X"6262626262626262626262626262626262626262626262626262626262626262",
      INIT_55 => X"6262626262626262626262626262626262626262626262626262626262626262",
      INIT_56 => X"6262626262626262626262626262626262626262626262626262626262626262",
      INIT_57 => X"6262626262626262626262626262626262626262626262626262626262626262",
      INIT_58 => X"6262626262626262626262626262626262626262626262626262626262626262",
      INIT_59 => X"4040404041414121412121618161816161626262626262626262626262626262",
      INIT_5A => X"4141414141402020202020202020202020202020202020202020202020204040",
      INIT_5B => X"6262626262626262626262626262416141404020204040404041404040414141",
      INIT_5C => X"0000000000000000000000000000000000000000626262626262626262626262",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0101010101010101010100000000000000000000000000000001000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000010101000101",
      INIT_65 => X"2020002000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"2100202021002121200000200020000021000000000000212021006100004100",
      INIT_67 => X"2000002041202020202100002000202000000000000000200000002100202020",
      INIT_68 => X"0020000020000000200000004100410041002000000000412000212000000000",
      INIT_69 => X"0000212100410000200020000000002020000021202120200000002000000021",
      INIT_6A => X"2000212020204100412100202100202120002020200041004120212000000000",
      INIT_6B => X"0000000000000000000000000000000000002100410020002000204120200020",
      INIT_6C => X"0000000100000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000010101000000",
      INIT_6F => X"2100000000014100000000000000004100006100000000002000000000000000",
      INIT_70 => X"0000A30021000000002121000000210000000000002100000041000021000000",
      INIT_71 => X"214100212141216200002101000000000000000000C400002100C70000000000",
      INIT_72 => X"2100210021012100412141210021004149000021002141214100214121416201",
      INIT_73 => X"2100000000000000000000620000210000000000002100216241210021004121",
      INIT_74 => X"0000000000000000410000412100002100000000000000000041000000000000",
      INIT_75 => X"0020000000002000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000010100000000000000000000000000000000",
      INIT_78 => X"8ECF7600EB10558EAEE300000000000000000000000000000000000000000000",
      INIT_79 => X"197200393525CB96D700F414AF00D7B7413D31140096766E002100000000E4F8",
      INIT_7A => X"EC9735F415380025869604E462E41449F06E6AD3B34D8A290000000000000008",
      INIT_7B => X"21000000760000000000000000010000000000004100210000000000A3920000",
      INIT_7C => X"3519830000000000210031660000000000000000000000000000000000000000",
      INIT_7D => X"005D7200397629E8D439A796D800B31808EC96F80035352DE4B7B7E435153100",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000012141F89649",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000001000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena_array(0),
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized14\ is
  port (
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized14\ : entity is "blk_mem_gen_prim_wrapper_init";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized14\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized14\ is
  signal ena_array : STD_LOGIC_VECTOR ( 15 to 15 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000342C2F10A0000002A6282B5102D5601019208A421C980000000000000000",
      INITP_01 => X"42804AE81A9B0A85E01D0040004362A001E08000000000000000000000000000",
      INITP_02 => X"209906660500900810E1200CE800000000000000000000000000000000505184",
      INITP_03 => X"5D005012330049C0000000000000000000000000000000959924922004AE950B",
      INITP_04 => X"08C800000000000000000000000000000002CAC34295802080A8AA490A540C03",
      INITP_05 => X"0000000000000000000000000000000000030000000000008C00414000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"756A08A3AECBC700009600412100C78A000082142D2D9200AECB69758EB20000",
      INIT_03 => X"CB2DB7CB496A0000100092F800000000002100CF650000B60000140000E49200",
      INIT_04 => X"30008E41CFA3F0CF0055001408C310040892A3008A0866F445F049F069962996",
      INIT_05 => X"511030317200F3D32172D3A2006155312D92F00008348E00BB920C00AFD36210",
      INIT_06 => X"00003500142D8635E47200768A29000055821400D3000000000000410082F300",
      INIT_07 => X"00000000000000000000000000002021A37266EF0055006ACB007600669631A3",
      INIT_08 => X"0000000000000000000000000000000001000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"200081616100308E2CEF96EBD3925159A6490000200000000000000000000000",
      INIT_0C => X"000000000041004179C700B2510086CF0065CF0071EB55386500D7000092A200",
      INIT_0D => X"CF6D555120EB49008A4910D78E6D8A0400920051EB417120EB6D200071000830",
      INIT_0E => X"00EBAAA6EF000C8AF700106575005504FB715120F7006DA29E085192E3FFC36D",
      INIT_0F => X"61750000EB184D001482002000000000006510009600D70014AEC7825500C3D3",
      INIT_10 => X"0000004100D338A20075000C490092AA712441140000DB148EC318F3C3CF00D3",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"96341459AE8A2020200000000000000000000000000000000000000000000000",
      INIT_15 => X"0061000CCB61F300F704EF0020009265000055C300006161000082518EEF5100",
      INIT_16 => X"0071C39230F7108E8AC3512869D30020CF611014200000002020007124000018",
      INIT_17 => X"1800554120E3D300342082758EF3AAC759A2BA611055C718008EA600AA24CF30",
      INIT_18 => X"00000020000451007500D70014AEC7413400E314002C28241000AAAA5500EF45",
      INIT_19 => X"EF00F3AE450000C73000D700003400F324D300D7008214005900B600B2000020",
      INIT_1A => X"000000000000000000000000000000000000000000000000249200B6007500E7",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"4120042C00F334AE0000088A0041C3F349240000CFAA6934556D002000000000",
      INIT_1F => X"AAEF490CB64D51CF61000000204120209255410CF3CBCB717900AA140800AE92",
      INIT_20 => X"0051828275007500498EE3AE003441008AB2F3D355F7000000B200002810C7F7",
      INIT_21 => X"CF0092D36130F3E30C28E7C36D717100C7D3EF0055B2AE0051142000EFEB00F7",
      INIT_22 => X"C324F35100CB1428247138458A558AA6B6F38200000000200000340010001000",
      INIT_23 => X"000000000000000000002041203055824DD710008EF3862055AE08929A41A634",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"002000C386822000AE4500284500000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"044900206586C3E382EB000000EB0000008600E30000E345E324000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000E72400410000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000202000000020",
      INIT_32 => X"2041200000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000020200020002000000000002020",
      INIT_34 => X"0000002020000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000204141202041200000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000002020412020202000000000412020202000202000000020000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000202020000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000002020200000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000020000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000200000002000",
      INIT_47 => X"0000000000000000000000000020000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena_array(15),
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => addra(13),
      I1 => addra(12),
      I2 => addra(14),
      I3 => addra(15),
      O => ena_array(15)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized15\ is
  port (
    douta : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized15\ : entity is "blk_mem_gen_prim_wrapper_init";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized15\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized15\ is
  signal CASCADEINA : STD_LOGIC;
  signal CASCADEINB : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B\ : label is "PRIMITIVE";
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_01 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_02 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_03 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_04 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_05 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_06 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_07 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_08 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_09 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_10 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_11 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_12 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_13 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_14 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_15 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_16 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_17 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF",
      INIT_18 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FFFFFFFFFFFF",
      INIT_19 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0F7FFFFFFFFFFFFFFFFFFFFF",
      INIT_1A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFC0E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1B => X"FFFFFFFFFFFFFFFFF80C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1C => X"FFFFFF8003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8003F",
      INIT_1F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8003FFFFFFFFFFFF",
      INIT_20 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8003FFFFFFFFFFFFFFFFFFFFFFF",
      INIT_21 => X"FFFFFFFFFFFFFFFFFFFFFFFFFF8003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_22 => X"FFFFFFFFFFFFFFF8003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_23 => X"FFFF0003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_24 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_25 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0003FFF",
      INIT_26 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0003FFFFFFFFFFFFFF",
      INIT_27 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0003FFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_28 => X"FFFFFFFFFFFFFFFFFFFFFFFF0003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_29 => X"FFFFFFFFFFFFF0003FFFFFFFFFFFC7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2A => X"FF0083FFFFFFFFFFF83FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2B => X"FFFFFF83FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1EC3FFFFF",
      INIT_2D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3FC3FFFFFFFFFF003FFF",
      INIT_2E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0003FFFFFFFFFC007FFFFFFFFFFFFFF",
      INIT_2F => X"FFFFFFFFFFFFFFFFFFFFFF0003FFFFFFFFFC007FFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_30 => X"FFFFFFFFFFF0007FFFFFFFFFC00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_31 => X"0003FFFFFFFFF820FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_32 => X"FF001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_33 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0003FFFFFFF",
      INIT_34 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0003FFFFFFFFC001FFFFFF",
      INIT_35 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0007FFFFFFFF8003FFFFFFFFFFFFFFFFF",
      INIT_36 => X"FFFFFFFFFFFFFFFFFFFF0007FFFFFFFF0007FFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_37 => X"FFFFFFFFE0003FFFFFFFE0007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_38 => X"07FFFFFFFE000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_39 => X"01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00",
      INIT_3A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0007FFFFFFFF0",
      INIT_3B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0003FFFFFFFF041FFFFFFFFF",
      INIT_3C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFE0003FFFFFFFF023FFFFFFFFFFFFFFFFFFFF",
      INIT_3D => X"FFFFFFFFFFFFFFFFFE0003FFFFFFFC007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3E => X"FFFFFFE0001FFFFFFFC007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3F => X"FFFFFFFC00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_40 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0001",
      INIT_41 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0001FFFFFFF800F",
      INIT_42 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0001FFFFFFF801FFFFFFFFFFFF",
      INIT_43 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFC0001FFFFFFF001FFFFFFFFFFFFFFFFFFFFFFF",
      INIT_44 => X"FFFFFFFFFFFFFFFCE001FFFFFFE003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_45 => X"FFFFC0001FFFFFFC003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_46 => X"FFFF8007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_47 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0001FF",
      INIT_48 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0001FFFFFF8007FFF",
      INIT_49 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0001FFFFFF800FFFFFFFFFFFFFFF",
      INIT_4A => X"FFFFFFFFFFFFFFFFFFFFFFFFC0001FFFFFF000FFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4B => X"FFFFFFFFFFFFFC0001FFFFF8001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4C => X"FFC0001FFFFE0101FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4D => X"EE003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0003FFFF",
      INIT_4F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0003FFFFEC003FFFFFF",
      INIT_50 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0003FFFFF0003FFFFFFFFFFFFFFFFF",
      INIT_51 => X"FFFFFFFFFFFFFFFFFFFFFFC0003FFFFF0007FFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_52 => X"FFFFFFFFFFFC0003FFFFF8007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_53 => X"C0003FFFF84007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_54 => X"00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_55 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80003FFFF80",
      INIT_56 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80007FFFE0000FFFFFFFFF",
      INIT_57 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80007FFFE0001FFFFFFFFFFFFFFFFFFFF",
      INIT_58 => X"FFFFFFFFFFFFFFFFFFFF80007FFFC0001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_59 => X"FFFFFFFFF80007FFF80003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5A => X"007FFF80003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80",
      INIT_5C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80007FFF00007",
      INIT_5D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00007FFE0000FFFFFFFFFFFF",
      INIT_5E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFF00007FFC0000FFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5F => X"FFFFFFFFFFFFFFFFFF00007FF80001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_60 => X"FFFFFFF00003FF80003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_61 => X"3FF00007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_62 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000",
      INIT_63 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00003FE0000FFFF",
      INIT_64 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00003FE0400FFFFFFFFFFFFFFF",
      INIT_65 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFC00001FE0301FFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_66 => X"FFFFFFFFFFFFFFFC00001FE0003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_67 => X"FFFFE00000FE0007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_68 => X"C0007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_69 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC000007",
      INIT_6A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80000018000FFFFFFF",
      INIT_6B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000001FFFFFFFFFFFFFFFFFF",
      INIT_6C => X"FFFFFFFFFFFFFFFFFFFFFFFFE0000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6D => X"FFFFFFFFFFFFFE0000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6E => X"FF8000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6F => X"0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_70 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00000000",
      INIT_71 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000000001FFFFFFFFFF",
      INIT_72 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000001FFFFFFFFFFFFFFFFFFFFF",
      INIT_73 => X"FFFFFFFFFFFFFFFFFFFFFFDC00000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_74 => X"FFFFFFFFFFFBC00000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_75 => X"BC0000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_76 => X"FFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_77 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBC0000001FF",
      INIT_78 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00000007FFFFF9FFFFFF",
      INIT_79 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80000007FFFFFBFFFFFFFFFFFFFFFFF",
      INIT_7A => X"FFFFFFFFFFFFFFFFFFFFFFC0000007FFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7B => X"FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7C => X"F000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7D => X"F97FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000003FFFF",
      INIT_7F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000007F1FFC0FFFFFFFFF",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "LOWER",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15 downto 0) => addra(15 downto 0),
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => CASCADEINA,
      CASCADEOUTB => CASCADEINB,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => '1',
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
\DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000F807F01FFFFFFFFFFFFFFFFFFFF",
      INIT_01 => X"FFFFFFFFFFFFFFFFFFFFF00001F00140FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_02 => X"FFFFFFFFFF003F70000039FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_03 => X"FFFFC0000E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_04 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_05 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0001CF",
      INIT_06 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80073FFFFFFFFFFFF",
      INIT_07 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7FFFFFFFFFFFFFFFFFFFFFFF",
      INIT_08 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_09 => X"FFFFFFFFFFFFFFEFB3FFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0A => X"FFFFF47FF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3FFFC8FFF1F",
      INIT_0D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6BF839FFB0FFE1FFFFFFFFFFFF",
      INIT_0E => X"FFFFFFFFFFFFFFFFFFFFFFFFFF40000100370FF83FFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0F => X"FFFFFFFFFFFFFF0000000003600003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_10 => X"FF00000000001400003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_11 => X"00000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F",
      INIT_12 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8C00000000080",
      INIT_13 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FA001CC00100007FFF",
      INIT_14 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFF000001FF803EC0008000FFFFFFFFFFFFFFF",
      INIT_15 => X"FFFFFFFFFFFFFFFFFF00001FFFE3FFE0018000FFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_16 => X"FFFFFFE0001FFFFFFFFFC032001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_17 => X"FFFFFFFFF8820001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_18 => X"40381FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3FEF",
      INIT_19 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3FFFFFFFFFFC038",
      INIT_1A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7FFFFFFFFFF80B1807E3FFFFFF",
      INIT_1B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFC7FFFFFFFFFE004003C63FFFFFFFFFFFFFFFFF",
      INIT_1C => X"FFFFFFFFFFFFFFF87FFFFFFFF8000200FC07FFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1D => X"FFFF87FFFFE1C00000003FC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1E => X"E20040007FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1F => X"01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF87FFFE3",
      INIT_20 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF87FFF87E00060007FC",
      INIT_21 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF07FFFDFE00060003FE01FFFFFFFFF",
      INIT_22 => X"FFFFFFFFFFFFFFFFFFFFFFFF07FFF3FE00060001FC03FFFFFFFFFFFFFFFFFFFF",
      INIT_23 => X"FFFFFFFFFFFFF07FFFFBE00044000F803FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_24 => X"FF07FFFE7E00040000F807FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_25 => X"00400007E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_26 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE07FFF03E0",
      INIT_27 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE07FC007E000000003E1F",
      INIT_28 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE07FC00FA000000007F1FFFFFFFFFFFF",
      INIT_29 => X"FFFFFFFFFFFFFFFFFFFFFE03FFF3F180000000FE3FFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2A => X"FFFFFFFFFFE01FFCF6740000001F03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2B => X"03F83FCCC0000001F07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2C => X"00001F07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE",
      INIT_2D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE01FFFF38C00",
      INIT_2E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE01FFC1F0C0000003F0FFFF",
      INIT_2F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00FE1F81E0000007C1FFFFFFFFFFFFFFF",
      INIT_30 => X"FFFFFFFFFFFFFFFFFFFE83FFFF016000000181FFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_31 => X"FFFFFFFFE01FFFEE160000001C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_32 => X"FFFFC26000000383FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_33 => X"00007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE03",
      INIT_34 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF83FFBF02E0000",
      INIT_35 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD83FFFC04C00000000FFFFFFF",
      INIT_36 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFDC3FFFB01C00000000FFFFFFFFFFFFFFFFFF",
      INIT_37 => X"FFFFFFFFFFFFFFFFF9C3FFFC01C00001E01FFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_38 => X"FFFFFF1F3FFF001C00001B03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_39 => X"C003C00000E07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3A => X"0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3F1FE",
      INIT_3B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7F3FFF0038000016",
      INIT_3C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FF3FD000780010000FFFFFFFFFF",
      INIT_3D => X"FFFFFFFFFFFFFFFFFFFFFFFFF0FF3FFF00F03038001FFFFFFFFFFFFFFFFFFFFF",
      INIT_3E => X"FFFFFFFFFFFFFE3FF1FF001F830BC003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3F => X"FFC7FF7FF801F871B0007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_40 => X"1F97FF800FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_41 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7FFFFF0F",
      INIT_42 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FFFFFFF83FF7FF001FF",
      INIT_43 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1FFFFFDC07FBFFF003FFFFFFFFFFFFF",
      INIT_44 => X"FFFFFFFFFFFFFFFFFFFFFE1FFFFF021FFFFDC007FFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_45 => X"FFFFFFFFFFC3FFFFFF83FFBF9000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_46 => X"7FFFFF307FF0E0003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_47 => X"0C0007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8",
      INIT_48 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF87FFFFF803FF",
      INIT_49 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF07FFFFFC008200000FFFFFF",
      INIT_4A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0FFFFFFFF03800003FFFFFFFFFFFFFFFFF",
      INIT_4B => X"FFFFFFFFFFFFFFFFFFC0FFFFFFFD83800007FFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4C => X"FFFFFFF81FFFFFFFE39C0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4D => X"FFFFFF9DFC003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4E => X"07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF83FF",
      INIT_4F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF07FFFFFFFFC3FF0",
      INIT_50 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE07FFFFFFFFF1FF00FFFFFFFFFF",
      INIT_51 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFC0FFFFFFFFFFEFF03FFFFFFFFFFFFFFFFFFFFF",
      INIT_52 => X"FFFFFFFFFFFFFFF81FFFFFFFFFFFFF07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_53 => X"FFFF83FFFFFFFFFFFFF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_54 => X"FFFFFFFE1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_55 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03FFFFF",
      INIT_56 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0FFFFFFFFFFFFFE7FF",
      INIT_57 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0FFFFFFFFFFFE83FFFFFFFFFFFFFF",
      INIT_58 => X"FFFFFFFFFFFFFFFFFFFFFFF83FFFFFFFFFFFE0FFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_59 => X"FFFFFFFFFFFF03FFFFFFFFFFFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5A => X"E0FFFFFFFFFFFFE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5B => X"FFFC7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0FFFFFFFFF",
      INIT_5D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1FFFFFFFFFFFF87FFFFFF",
      INIT_5E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFF0FFFFFFFFFFFFFFFFFF",
      INIT_5F => X"FFFFFFFFFFFFFFFFFFFF03FFFFFFFFFFFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_60 => X"FFFFFFFFE07FFFFFFFFFFFE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_61 => X"FFFFFFFFFFFC3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_62 => X"87FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC07",
      INIT_63 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFF",
      INIT_64 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF83FFFFFFFFFFFF8FFFFFFFFFF",
      INIT_65 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFF03FFFFFFFFFFFF0FFFFFFFFFFFFFFFFFFFFF",
      INIT_66 => X"FFFFFFFFFFFFFFFFE07FFFFFFFFFFFC1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_67 => X"FFFFFC0FFFFFFFFFFFF83FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_68 => X"FFFFFFFF87FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_69 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFF",
      INIT_6A => X"0000000000000000000000000000000000000000FFFFFFF8007FFFFFFFFF80FF",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000080000000000000000000",
      INIT_6F => X"00000000000000014A41C10040000000000000008401E70192084100C9800000",
      INIT_70 => X"00001180040C00000000AAA82B088C7ADC0010006C010CE80000000000000000",
      INIT_71 => X"0E0000406B0082C5C6CE08C20081250001D14000000000000000000000000000",
      INIT_72 => X"800AA14A019880011820000C1C000000000000000000000000000000021902A4",
      INIT_73 => X"F50016AA11308E40000000000000000000000000000000009000008000040632",
      INIT_74 => X"0090000000000000000000000000000000008868052A000080C8220C00D08008",
      INIT_75 => X"0000000000000000000000000000000000000000000000004044000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "UPPER",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15 downto 0) => addra(15 downto 0),
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => CASCADEINA,
      CASCADEINB => CASCADEINB,
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOADO_UNCONNECTED\(31 downto 1),
      DOADO(0) => douta(0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => '1',
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized16\ is
  port (
    douta : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized16\ : entity is "blk_mem_gen_prim_wrapper_init";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized16\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized16\ is
  signal CASCADEINA : STD_LOGIC;
  signal CASCADEINB : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B\ : label is "PRIMITIVE";
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_01 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_02 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_03 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_04 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_05 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_06 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_07 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_08 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_09 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_10 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_11 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_12 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_13 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_14 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_15 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_16 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_17 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_18 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_19 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_20 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_21 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_22 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_23 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_24 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_25 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_26 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_27 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_28 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_29 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2A => X"FFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE13FFFFFF",
      INIT_2D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC03FFFFFFFFFFFFFFFFF",
      INIT_2E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_30 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_31 => X"FFFFFFFFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_32 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_33 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_34 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_35 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_36 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_37 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_38 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_39 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFF",
      INIT_3C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFFFFFFFFFFFFFFF",
      INIT_3D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_40 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_41 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_42 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_43 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_44 => X"FFFFFFFFFFFFFFFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_45 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_46 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_47 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_48 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_49 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4C => X"FFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_50 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_51 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_52 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_53 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_54 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_55 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_56 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_57 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_58 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_59 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_60 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_61 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_62 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_63 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_64 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFF",
      INIT_65 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_66 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_67 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_68 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_69 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_70 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_71 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_72 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_73 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_74 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_75 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_76 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_77 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_78 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_79 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "LOWER",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15 downto 0) => addra(15 downto 0),
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => CASCADEINA,
      CASCADEOUTB => CASCADEINB,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => '1',
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
\DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_01 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_02 => X"FFFFFFFFFFFFFFFFFFFFC7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_03 => X"FFFFFFFFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_04 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_05 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3F",
      INIT_06 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FFFFFFFFFFFFF",
      INIT_07 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC001FFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_08 => X"FFFFFFFFFFFFFFFFFFFFFFFFFE007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_09 => X"FFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0A => X"FFFF03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF07FFFFF",
      INIT_0D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FFFFFFFFFFFFFFFFF",
      INIT_0E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0F => X"FFFFFFFFFFFFFFFFFFFFFFFF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_10 => X"FFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_11 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_12 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F",
      INIT_13 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF05FFE33FFEFFFFFFFF",
      INIT_14 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE007FC13FFF7FFFFFFFFFFFFFFFFFF",
      INIT_15 => X"FFFFFFFFFFFFFFFFFFFFFFE0001C001FFE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_16 => X"FFFFFFFFFFE0000000003FCDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_17 => X"00000000077DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_18 => X"BFC7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC010",
      INIT_19 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00000000003FC7",
      INIT_1A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000000007F4E7F81FFFFFFF",
      INIT_1B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFF80000000001FFBFFC39FFFFFFFFFFFFFFFFFF",
      INIT_1C => X"FFFFFFFFFFFFFFFF8000000007FFFDFF03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1D => X"FFFFF800001E3FFFFFFFC03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1E => X"1FFFFFFF800FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80001C",
      INIT_20 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8000781FFFFFFF803",
      INIT_21 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8000201FFFFFFFC01FFFFFFFFFFF",
      INIT_22 => X"FFFFFFFFFFFFFFFFFFFFFFFFF8000C01FFFFFFFE03FFFFFFFFFFFFFFFFFFFFFF",
      INIT_23 => X"FFFFFFFFFFFFFF8000041FFFFFFFF07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_24 => X"FFF8000181FFFFFFFF07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_25 => X"FFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_26 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8000FC1F",
      INIT_27 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF803FF81FFFFFFFFC1FF",
      INIT_28 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF803FF05FFFFFFFF80FFFFFFFFFFFFF",
      INIT_29 => X"FFFFFFFFFFFFFFFFFFFFFFFC000C0E7FFFFFFF01FFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2A => X"FFFFFFFFFFFFE003098BFFFFFFE0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2B => X"FC07C0333FFFFFFE0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2C => X"FFFFE0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0000C73FF",
      INIT_2E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE003E0F3FFFFFFC0FFFFF",
      INIT_2F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF01E07E1FFFFFF83FFFFFFFFFFFFFFFF",
      INIT_30 => X"FFFFFFFFFFFFFFFFFFFF7C0000FE9FFFFFFE7FFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_31 => X"FFFFFFFFFFE00011E9FFFFFFE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_32 => X"00003D9FFFFFFC7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_33 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC",
      INIT_34 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7C0040FD1FFFF",
      INIT_35 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7C0003FB3FFFFFFFFFFFFFFF",
      INIT_36 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFE3C0004FE3FFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_37 => X"FFFFFFFFFFFFFFFFFE3C0003FE3FFFFE1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_38 => X"FFFFFFE0C000FFE3FFFFE4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_39 => X"3FFC3FFFFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0E01",
      INIT_3B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80C000FFC7FFFFE9",
      INIT_3C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00C02FFF87FFEFFFFFFFFFFFFFF",
      INIT_3D => X"FFFFFFFFFFFFFFFFFFFFFFFFFF00C000FF0FCFC7FFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3E => X"FFFFFFFFFFFFFFC00E00FFE07CF43FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3F => X"FFF8008007FE078E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_40 => X"E068007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_41 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000F0",
      INIT_42 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000007C00800FFFFF",
      INIT_43 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0000023F804000FFFFFFFFFFFFFFFF",
      INIT_44 => X"FFFFFFFFFFFFFFFFFFFFFFE00000FDE000023FFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_45 => X"FFFFFFFFFFFC0000007C00406FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_46 => X"800000CF800F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_47 => X"F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_48 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8000007FC00",
      INIT_49 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8000003FF7DFFFFFFFFFFF",
      INIT_4A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FC7FFFFFFFFFFFFFFFFFFFFFF",
      INIT_4B => X"FFFFFFFFFFFFFFFFFFFF000000027C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4C => X"FFFFFFFFE00000001C63FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4D => X"0000006203FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00",
      INIT_4F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8000000003C00F",
      INIT_50 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8000000000E00FFFFFFFFFFFF",
      INIT_51 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000100FFFFFFFFFFFFFFFFFFFFFFF",
      INIT_52 => X"FFFFFFFFFFFFFFFFE0000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_53 => X"FFFFFC00000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_54 => X"00000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_55 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00000",
      INIT_56 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000001FFF",
      INIT_57 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000017FFFFFFFFFFFFFFF",
      INIT_58 => X"FFFFFFFFFFFFFFFFFFFFFFFFC000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_59 => X"FFFFFFFFFFFFFC000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5A => X"FF0000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5B => X"0003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000",
      INIT_5D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0000000000007FFFFFFF",
      INIT_5E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000000000000FFFFFFFFFFFFFFFFFFF",
      INIT_5F => X"FFFFFFFFFFFFFFFFFFFFFC000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_60 => X"FFFFFFFFFF8000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_61 => X"000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_62 => X"7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8",
      INIT_63 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000",
      INIT_64 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000000000007FFFFFFFFFF",
      INIT_65 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFC000000000000FFFFFFFFFFFFFFFFFFFFFF",
      INIT_66 => X"FFFFFFFFFFFFFFFFFF8000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_67 => X"FFFFFFF0000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_68 => X"000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_69 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0000",
      INIT_6A => X"0000000000000000000000000000000000000000FFFFFFFFFF80000000007FFF",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"00000000000000066CDB366EC0200000080000047C421800D9B3760126000000",
      INIT_70 => X"000044262950A802FB6344C58052410520B00122804012140000000000000000",
      INIT_71 => X"44802A8900AAE8B43030520900980B24022F0000000000000000000000000000",
      INIT_72 => X"A294AD015E24301102822012F000000000000000000000000000000006429331",
      INIT_73 => X"0A00C991060101800000000000000000000000000000005420A552A802A89088",
      INIT_74 => X"00000000000000000000000000000000000664993264C02A36064CC14A047C45",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "UPPER",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15 downto 0) => addra(15 downto 0),
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => CASCADEINA,
      CASCADEINB => CASCADEINB,
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOADO_UNCONNECTED\(31 downto 1),
      DOADO(0) => douta(0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => '1',
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized17\ is
  port (
    douta : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized17\ : entity is "blk_mem_gen_prim_wrapper_init";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized17\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized17\ is
  signal CASCADEINA : STD_LOGIC;
  signal CASCADEINB : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B\ : label is "PRIMITIVE";
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"000000000000000001FFFFFFFFFFFFFFFFFFFFFF01FC00000000000000000000",
      INIT_01 => X"00000FFFFFFFFFFFFFFFFFFFFFFFF00F800000000000000000000FFFDFBC0000",
      INIT_02 => X"FFFFFFFFFFFFFFBFFF00F800000000000000000000FFFDF80000000000000000",
      INIT_03 => X"FFE0000000000000000000000000000FFFFFC000000000000000000000FFFFFF",
      INIT_04 => X"00000000000000000000FFFFFFC00000000000000000007FFFFFFFFFFFFFFFFF",
      INIT_05 => X"000000000FFFFFBC00000000000000000007FFFFFFFFFFFFFFFFFFFFFFFF01F8",
      INIT_06 => X"FFFBC0000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFF03F800000000000",
      INIT_07 => X"0000000000007FFFFFFFFFFFFFFFFFFFFFFFFF01FC00000000000000000000FF",
      INIT_08 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FC000000000000000FFFFFBC000000",
      INIT_09 => X"FFFFFFFFFFFFFFFFFFFFB00FC000000000000000FFFFFC000000000000018003",
      INIT_0A => X"FFFFFFFFF90084000000000000000FFFFFCFF0000000000018003FFFFFFFFFFF",
      INIT_0B => X"000000000000000000FFFFFE000000000000018000DFFFFFFFFFFFFFFFFFFFFF",
      INIT_0C => X"0000000FFFFFEFF000000000000000087FFFFFFFFFFFFFFFFFFFFFFF80001A00",
      INIT_0D => X"FC000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FC00004000",
      INIT_0E => X"000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FC000040000000000FFFF",
      INIT_0F => X"CFDFFFFFFFFFFFFFFFFFFFFFFFFFFF81FE000000000000000FFFFFC000000000",
      INIT_10 => X"FFFFFFFFFFFFFFFFFFFFFFFF8000C000000000FFFFFC000000000000000003FF",
      INIT_11 => X"FFFFFFFBFFFFFF8000000000000FFFDE00000000000000000FFFBDFDFFFFFFFF",
      INIT_12 => X"0070000000000002FFFDE08000000000000000FFFFFF9FFFFFFFFFFFFFFFFFFF",
      INIT_13 => X"00000FFFFE00000000000003801FFFEFFFFFFFFFFF7FFFFFFFFFFFBFFFFF8000",
      INIT_14 => X"90000000000000011FFEFFF3FFFFFFFFFFFFFFFFFFFFE0000000000000000000",
      INIT_15 => X"00000FFFEFE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8000000000000FFFFFE",
      INIT_16 => X"3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8000000000000FFFFFC00000000000",
      INIT_17 => X"FFFFFFFFFFFFFFFFFFFFFFF9000000000000FFFFFC0000000000000000FFFFEF",
      INIT_18 => X"FFFFFFFFFFFFF003000000000FFFFFC0000000000000071FFFC4FBFFFFFFFFFF",
      INIT_19 => X"FF003000000000FFFFFC000000000000C0FFFF8C781FFFFFFFFFFFFFFFFFFFFF",
      INIT_1A => X"000FFFFFC000000000000C07FFF0B68FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1B => X"0000000000C07FDFBFABBFFBFFFFFFFFFFFFFFFFFFFD7FFF8000000000000000",
      INIT_1C => X"07FDFF83B9FFFFFFFFFFFFFFFFFFFFFFBDFFF6000000000000000000FFFFFE80",
      INIT_1D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFE0000000000000C",
      INIT_1E => X"FFFFFFFFFFFFFFFFFFFFFF002C00000000FFEFC0000000000000C07FFFB8019F",
      INIT_1F => X"FFFFFFFFFFF003000000000FFEFC0000000000000C07FFFF51F9FFFFFFFFFFFF",
      INIT_20 => X"003000000000FFFFE0000000000000007FFFDCEA7FFFFFFFFFFFFFFFFFFFFFFF",
      INIT_21 => X"0FFFFE0000000000008007FFDB59F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF97F",
      INIT_22 => X"00000008007FFDBC0F5FFFFFFFFE7FBF3FFFFFFFFFFFFFFFFFD7F00300000000",
      INIT_23 => X"01DDCB35FFFFFFFFC7FCE3FBFFFFFFF80000000100000000000000FFFFE00000",
      INIT_24 => X"FFFFFCFFF63FFFFFFFFFFFFFFC00000000000000000FFFFE0000000000008000",
      INIT_25 => X"FFFFFFFFFFFFFFEFFFFF000200000000FFFFE0000000000004007FFDD9A7FFFF",
      INIT_26 => X"FFFFFFFFF000200000000FFFFE0000000000004007FFDF034DFFFFFFFFFFBFBB",
      INIT_27 => X"0200000000FFFFE0000000000004007FFDF0605FFFFFFFFFFFF9FFFFFFFFFFFF",
      INIT_28 => X"FFF000000000000003FFFFDFD835FFFFFFF9BFFFBFFFFFFFFFFFFFFFFFFFFFE0",
      INIT_29 => X"0000007FFFFDDDD11DFFFFFF9BFEE5FFFFFFFFFFFFFFFFFFFFFF80200000000F",
      INIT_2A => X"DFDF67DFFFFFF9FFF15FFFFFFFFFFFFFFFFFFFFFE80200000000FE7E00000000",
      INIT_2B => X"FFFCFE4FFFFFFEFFFFFE000000000000000000000FE7F000000000000003FFFF",
      INIT_2C => X"FFFFFFFFFFFFFC0000200000000000FFFF78800000000000005FFDDC397FFFFF",
      INIT_2D => X"FFEFFFFF80000000000FFF0180000000000203FFFFDD403FFFFFFFFFDE16DFFF",
      INIT_2E => X"00000000FFF1180000000000207FFFFDD7E6BDFFFFFFFFC977FFFFFFFFFFFFFF",
      INIT_2F => X"0180000000000203FFFFDF749DFFFFFFFF3C9F23FFFFFFFFFFFFFFFFFFFFE800",
      INIT_30 => X"00003FFFFF26CBFFFFFFFFF314EFFFFFFFFFFFFFFFFFFFFFFF00040000000F87",
      INIT_31 => X"4F7FFFFFFFFE0484FFFFFFFFFFFFFFFFFFFFFFE00040000000FEEE0000000000",
      INIT_32 => X"CCA8CDFFFFFFFFFFFFFFFFFFFFFE00000000000FEEE000000000000003FFFFE2",
      INIT_33 => X"FFFFFFE000180000000000000000FEEF000000000008003FFFFF30F7FFFFFFFF",
      INIT_34 => X"FFFFFFE0000000000FFFF4000000000060001FFFE7EC7DFFFFFFFDE8E49FFFFF",
      INIT_35 => X"000000FFFF000000000002003BFFFEE2A9DFFFFFFF9B99CBFFFFFFFFFFFFFFFF",
      INIT_36 => X"00000000002003FFFFEE08BDDFFFFFFE63E7FFFFFFFFFFFFFFFFFFFFFFFE0040",
      INIT_37 => X"003FFFFEE10BCDFFFFFF2D6CFFFFFFFFFFFFFFFFFFFFFFFFE0040000000F7FE2",
      INIT_38 => X"06FFFFFEECF427FFFFFFFFFFFFFFFFFFFFFFFF0040000000F7FE000000000002",
      INIT_39 => X"FDFFFFFFFFFFFFFFFFFFFFFFFFF0040000000FFFF8000000000001FFFFFFE53D",
      INIT_3A => X"FFFFFFFFFDFFFFFE0000000000FFFF1000000000003FFFFFFE76382FFFFFDF06",
      INIT_3B => X"000000000000000FFFF8000000000001FFFFFFF5F386FFFFFFFC08BFFFFFFFFF",
      INIT_3C => X"0000FFFFDC0000000000000FFFFFF819FFFFFFFF6D1BFFFFFFFFFFFFFE000180",
      INIT_3D => X"0000000001FFFFFFFE0089FFFFFFBB18BFFFFFFFFFFFFFFFFFFFFFFFFFC00000",
      INIT_3E => X"FFFFFFE010AE7FFFFA2FAE3FFFFFFFFFFFFFFFFFFFFFFFFC000000000FFF0000",
      INIT_3F => X"FFFFFF147173FFFFFFFFFFFFFFFFFFFFFFFFE000000000FFF00000000000003F",
      INIT_40 => X"FFFFFFFFFFFFFFFFFFFFFFFFE0004000000FFF00000000000003FFFFFFFD3DEC",
      INIT_41 => X"FFFFFFFFEFFFFE0004000000FFF18000000000003FFFFFFFDEB3EBBFFEF1D36F",
      INIT_42 => X"5020000000000FFF50000000000003FFFFFFFE923BBBFFEF1A87FFFFFFFFFFFF",
      INIT_43 => X"00FFF18000000000001FFFFFFFDE695BBFFED9486FFFFFFFFFFFFFFFFFFFFC00",
      INIT_44 => X"0000000007FFFFFE4F0DBBFBFB2BC5FFFFFFFFFFFEFFFF800000000000000000",
      INIT_45 => X"FFFFC21C4BBF9F15E41FFFFFFFFFFFFFFFFFFFFFFFAFFC004000000FFFFC0000",
      INIT_46 => X"F0FE95C6FFFFFFFFFFFFFFFFFFFFFFFAFFC004000000FF800000000001801FFF",
      INIT_47 => X"FFFFFFFFFFFFFFFFFFFFBFFE004000000FF800000000001803FFFFFFFE67B6BB",
      INIT_48 => X"FFFFFFFFFFFFE004000000FF000000000000001FFFFFFFF24BEFBF9F8A9A2FFF",
      INIT_49 => X"FC004000000FF0000000000000FFFFFFFFCCC889E7FFC277BFFFFFFFFFFFFFFF",
      INIT_4A => X"FF8200000000000FFFFFFFFCCC5E3E7FFE49807FFFFFFFFFFFFFFFFFFFFFDFFF",
      INIT_4B => X"0000FFFFFFFFFCC7C0FFFFBB809FFFFFFFFFFFFFFFFFFFFFBC00000000000000",
      INIT_4C => X"FFFEF82FFFFD2421FFFFFFFFFFFFFFFFF80000400000000000000FF800000000",
      INIT_4D => X"1DA99FFFFFFFFFFFFFFFFFFFFFFFFFFFC004000000FFF7C0000000000003FFFF",
      INIT_4E => X"FFFFFFFFFFFFFFFFFFFFFC004000000FFF020000000000FFFFFFFFFA4FEAFFFF",
      INIT_4F => X"FFFFFFFFFFE004000000FFF000000000000FFFFFFFFFD47FDFFFF87981FFFFFF",
      INIT_50 => X"0040000007FF000000000000FFFFFFFFF9B2FDFFFEBF9C9FFFFFFFFFFFFFFFFF",
      INIT_51 => X"8000000000000FFFFFFFFC97E4BFC7F8BBC7CFFFFFFFFFFFFFFFFFFFFFFFFFFC",
      INIT_52 => X"00FFFFFFFFCDCFC9DCFF4E057EFFFFFFFFFFFFFFFFFFFFFFFFFFC004000000BF",
      INIT_53 => X"BA76BDDFFC9C63FFFFFFFFFFFFFFFFFBFFFB000000000000000FF80200000000",
      INIT_54 => X"88FFFFFFFFFFFFFFFFFFBFFFCC00000000000000FF8000000000000FFBFFFFFE",
      INIT_55 => X"FFFFFFFFFFFFFFFFFFFC004000000FFF000000000000FFBFFFFFFB87E3FFFBD4",
      INIT_56 => X"FFFFFFFFC004000000FFF020000000000FFFFFFFFFE80E7FFFFB7EA7FFFFFFFF",
      INIT_57 => X"00000003FF000000000000FFFFFFFFFEB077FFFFFCCDFFFFFFFFFFFFFFFFFFFF",
      INIT_58 => X"00000000000FFFFFFFFD190BBFFE4C43AFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00",
      INIT_59 => X"FFFFFFFFD140F3FFFB0F71FFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000000007F80",
      INIT_5A => X"1F7FFFC1FD3FFFFFFFFFFFFFFFFFFFFFFFFFFFFC000000000FF8000000000000",
      INIT_5B => X"7FFFFFFFFFFFFFFFFF80003000000000000000FF8000000000000FFFFFFFFD90",
      INIT_5C => X"FFFFFFFFFFFF000000000000000FFBFE0000000000003C0FFFF0013BFFD0FF47",
      INIT_5D => X"FDFFFFC004000000FF8000000000000FFFFFFFBF68043FFA8FE767FFFFFFFFFF",
      INIT_5E => X"00000FF8004000000000FFFFFFFFF50CDBFFC3FC7FFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5F => X"000000000FFFFFFFFE56C7BFF93FFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0040",
      INIT_60 => X"FFFFFFE16335CF0E0CBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8040000003F0000",
      INIT_61 => X"ECFBC7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC04000000FF0000000000000FF",
      INIT_62 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFC04000000FF8000000000018FFFFFFFFC0873",
      INIT_63 => X"FFFFFF8003000000000000000FF8000000000018FFFFFFFFF60B42FAB7F13FFF",
      INIT_64 => X"00004000000000FFFFC0000000018007FFFFFCEAFEDFC9CC3FFFFFFFFFFFFFFF",
      INIT_65 => X"000F8F000000000018FFFFFFFDFC8E1FF8DB467FFFFFFFFFFFFFFFFFFFFFFFFC",
      INIT_66 => X"0000018FFFFFFF8F68C787B1C37BFFFFFFFFFFFFFFFFFFFFFFFFDFFFFF004000",
      INIT_67 => X"FFFCBA3C75054FE5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD004000000F8F04000",
      INIT_68 => X"57FC7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000000000F87000000000018FFFF",
      INIT_69 => X"FFFFFFFFFFFFFFFFFFFFFFFFC000000000C7F000000000018FFFFFFF8F2F9F18",
      INIT_6A => X"FFFFFFFFFFFFFC000000000C7F000000000018FFFFFFF983B9FE38973FFFFFFF",
      INIT_6B => X"000000000000C7F000000000018FFFFFFFF47F9FE001ED5FFFFFFFFFFFFFFFFF",
      INIT_6C => X"007F7C00000000180007FFFF93B96618107CFFF8FFFFFFFFFFFFFFFF80003000",
      INIT_6D => X"00018FFFFFFFE7BFD400083CFFFFEFFFFFFFFFFFFFFFFFFFFFDF0FFC00000000",
      INIT_6E => X"FFFBFE3183817FFFFFFFFFFFFFFFFFFFFFFFFFFFF3FFC0000000000780000000",
      INIT_6F => X"01FFFCFFFFFFFFFFFFFFFFFFFFFFFFCFFE000000000078020000000018FFFFFF",
      INIT_70 => X"FFFFFFFFFFFFFFFFFFFFFFE040000000070000000000018FFFFFFF617FE00800",
      INIT_71 => X"FFFFFFFFFFFC040000000E7F00000000007F01FFFFE6F61E05FA8D1F3FBEFFFF",
      INIT_72 => X"C000000000E7F00000000000003FFFFE8FADF0F7007BE7FF7FFFFFFFFFFFFFFF",
      INIT_73 => X"7F00000000000001FFFFFD89AFEFF8C3FFFFFBFFFFFFFFFFFFFFFFFFFFBDF0FF",
      INIT_74 => X"0000007FFFD4B09FEF181FFFFFFFFFFFFFFFFFFFFFC00010000000000000000E",
      INIT_75 => X"9A0DFEFB05E7FFF7FFFFFFFFFFFFFFFFFFFFFFFFFE000000000027F7C0000000",
      INIT_76 => X"FFF8DFFFFFFFFFFFFFFFFFFFFFFFFFE0040000000E7F00000000000001FFFFFF",
      INIT_77 => X"FFFFFFFFFFFFFFFFFFFE0040000000E7F00000000000003FFFFF3B9DD3EFE0DD",
      INIT_78 => X"FFFFFFFFE0000000004E7F00000000000003FFFFD4DC0F3F3601FFFF9FFFFFFF",
      INIT_79 => X"0000000FFE7F0000000000103FFFC72B86F1F2623FFFE5DFFFFFFFFFFFFFFFFF",
      INIT_7A => X"E6000000000103FFFC503C430B5E03FFF26FFFFFFFFFFFFFFFFFFFFEFFFFFE00",
      INIT_7B => X"101FFFEAF1E7E07FFE7FFF073FFFFFFFFFFFFFFFFFFFE00001E0000000004FE7",
      INIT_7C => X"8013EDDFBFF3DAFFFFFFFFFFFEFFF800180000000000000000FFFF0000000000",
      INIT_7D => X"453FFFFFFFFFFFFFFFFFFFFFFFFE00000000017FFFF400000000000007FF8F1D",
      INIT_7E => X"FFFFFFFFFFFFFFFFE0000000001FFFFE0000000000001FFFF5FFDBD83FC7F838",
      INIT_7F => X"FFFFFF00000000000FFFE0000000000003FFFBBFBDF7428BF13F0A2CFFFFFFFF",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "LOWER",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15 downto 0) => addra(15 downto 0),
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => CASCADEINA,
      CASCADEOUTB => CASCADEINB,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => '1',
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
\DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"000000FFFE0000000000003FFFBBFFBE1336EF580C7AFFFFFFFFFFFFFFFFFFFF",
      INIT_01 => X"000000000003FE053FFBE330B5FFCF3567FFFFFFFFFFFFFFFFFFFFFFFF183000",
      INIT_02 => X"1FE1EFFFBF69C230600B063FFFFFFFFFFFFFFFFFFFEFFFF183000000000FE700",
      INIT_03 => X"5FFF0B6B8987FFFFFFFFFFFFFFF3FFFE0000000000000000FE70400000000000",
      INIT_04 => X"BDFFFFFFFFFFFFE3000000000000000000000FFF00000000000001FE1BFFF3C4",
      INIT_05 => X"FFFFFFFFFFFFFF800000000000FFFF5000000000000063DFFE39FFFFFEFA0157",
      INIT_06 => X"FFF800000000000FFFF4000000000001FE75FFF3FFFFE93E9D393BFFFFFFFFFF",
      INIT_07 => X"0000FFFF4000000000003FE7BFFFFFFFFABFFAD822AFFFFFFFFFFFFFFFFFFFFF",
      INIT_08 => X"0000000000E067FFFFFFFF9FFF37F004FFFFFFFFFFFFFFFFFFFFFFFF80000000",
      INIT_09 => X"2C7FFFFEFF97FFE60D05AFFFFFFFFFFFFFFFFFFFFFFF0810000000000FFFF400",
      INIT_0A => X"D3F37BF0F3FFFFFFFFFFFFFFFFFFFFFFF8810000000000FFFFE0000000000024",
      INIT_0B => X"FFFFFFFFFFFFEFFFB000000000000000000FFFFE000000000002030FFFF83301",
      INIT_0C => X"FEFFF6000000000000000000FFFFE0000000000020EFFFF37941E9B7BE043C3F",
      INIT_0D => X"C010000000000FFFFE0000000000011CFDF80D9BBBE8317ACB9FFFFFFFFFFFFF",
      INIT_0E => X"00FFFFE0000000000011AEDC0A4B18CEE01C5676BFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0F => X"000000011A4B0F465ECF10BAA3C01FFFFFFFFFFFFFFFFFFFFFFFFC0100000000",
      INIT_10 => X"7F405B445F2009C90AFFFFFFFFFFFFFFFFFFFFFFF80000000000000FFFFE0000",
      INIT_11 => X"F9589DD3FFFFFFFFFFFFFFFFFFFFFF80000000000000FFFFE00000000000117F",
      INIT_12 => X"FFFFFFFFFFFFFFFFFFF80000000000000FF8FE0000000000011A4069A6AEFA00",
      INIT_13 => X"0000000000000000000018FFFFE00000000000138FB8BC8B1D3988253E13FFFF",
      INIT_14 => X"00000000000FFFFE0000000000013F61C88EC952DE2DD851B7FFFFFFFEFFFF00",
      INIT_15 => X"FFFFF0000000000003A04C3F87B5FAE60EBE44FFFFFFFFDFFFFFFFF800000700",
      INIT_16 => X"0000001607343195133FDAFD459FFFFFFFFFFFFFFFFFBFFFFFF8000000000000",
      INIT_17 => X"34DD4439429E7E41BFFFFFFFFFFFFFFFFFFFFFF80000000000000FFFDE000000",
      INIT_18 => X"320BFFFFFFFFFFFFFFFFFFFFFFFF80000000000000FFFDF0000000000002A2B6",
      INIT_19 => X"FFFFFFFFFFFFFFFFF80800000000000FFFFE00000000000009F23FFFF1C26F6A",
      INIT_1A => X"FFFFFF80800000000000FFFFE000000000000023E7FFB4092F571441D7FFFFFF",
      INIT_1B => X"000000000FFFFE000000000000A31F7F7F8211230F07E83FFFFFFFFFFFFFFFFF",
      INIT_1C => X"FFE000000000000EA03DD0FA69D2B62B7CC37FFFFFFFFFF88000200000000000",
      INIT_1D => X"00002200FC66F11D83B097C7BBFFFFFFFFFFDFFFF000003800000000000000FF",
      INIT_1E => X"22A3285F070F4F3FFFFFFFFFFFFFFFDFFFFFC00000000000000FFFFE00000000",
      INIT_1F => X"CCE3FFFFFFFFFFFFFFFFFFFFC000000000000000FFFBE000000000001E703C12",
      INIT_20 => X"FFFFFFFFFFFFFD000000000000000FFFBE00000000000167C0C3E10F1D87EEF0",
      INIT_21 => X"FFF0000000000FC000FFFFE0000000000010E301147B72907E15F30FFFFFFFFF",
      INIT_22 => X"00FC000FFFFC0000000000004A8E4EC3556B8785BEF7FFFFFFFFFFFFFFFFFFFF",
      INIT_23 => X"C0000000000009F466E3AAC7B87C4D57EFFFFFFFFFFFFFFFFFFFFFFC00000000",
      INIT_24 => X"07FB3D19880CFA05C4583FFFFFFFFFFFFC0000000000000000000008407FFFFF",
      INIT_25 => X"53987DEA47E7FFFFFFFFFFFFFFEFFFFFE00000000001FC040FFFFF0000000000",
      INIT_26 => X"7FFFFFFFFFFFFFFFFFFFFF00400000000FC000FFFFE020000000001F7041DD66",
      INIT_27 => X"FFFFFFFFFFF0040000000084000FFFFE020000000008B1A3A6F6497FCF94CB74",
      INIT_28 => X"0000000000084000FFFFE0200000000F96631E35ACB7CCC219658FFFFFFFFFFF",
      INIT_29 => X"FC000FFFFE00000000001661EB12B70BFF5EC2801F7FFFFFFFFFFFFFFFFFFFFE",
      INIT_2A => X"0000000000587D2B1E16BD2FEC316D77FFFFFFFFFFFFFFFFFFFFE00000000000",
      INIT_2B => X"80D1F3C6C89EEDAB37BF7FFFFFFFFFFFFFDEFFFFFE00000000001DC200FFFFE0",
      INIT_2C => X"F61AF73BFFFFFFF7F000078E000000000000000000643FFFFFFE000000000005",
      INIT_2D => X"FFFF7FFFFFFEFFFFFFE0000000000007C080FFFFE000000000015A61F195FD49",
      INIT_2E => X"FFFFFFFE000000000000FC080FFFFE004000000005FC80D02A761D6BCE717F7F",
      INIT_2F => X"00000000068087FFFFE3040000000059EFD9CB477C40F97123F7FFFFFFFFFFFF",
      INIT_30 => X"010FFFFE3840000000041D8E8AFCEFC1AC000E7C7FFFFFFFFFFFFFFFFFFFF000",
      INIT_31 => X"400000006C550F337E7D38E3036FFFFFFFFFFFFFFFFFFF3FF003000000000000",
      INIT_32 => X"904ABDB38E886005BFFFFFFFFFFFFFFBFFBBFF003000000000000000FFFFE040",
      INIT_33 => X"3E11A3FFFFFFFFFFFFF8000220700000000000001FFBFFFFFFFC0400000021A5",
      INIT_34 => X"000001FC0000000000000000000001FFFFFFFFE04040000006506D95ABDF1475",
      INIT_35 => X"FFFF8010000000000008087FFFFF000000000081AD1FCB4B114F27C91A380000",
      INIT_36 => X"000000008087FFFFFFFC00000000763A3E85580B89A380C7FFFFFFFFFFFFFFFF",
      INIT_37 => X"4FFFFFFFC0000000DAD79FCFC506C984F9EEFFFFFFFFFFFFFFFFFFFFFC010000",
      INIT_38 => X"0000037F66CF61F97C6F039FDFFFFFFFFFFFFFFFFFFFFF800000000000000008",
      INIT_39 => X"60CA27CFFB01DFFFFFFFFFFFFFFFFFFFFFF8000000000000000200FFFFE00400",
      INIT_3A => X"7BFFFFFFFFFFFFEFFFFFFFFF80000000000000003FFFFFE0001018006CF77346",
      INIT_3B => X"E71E00000000800000000000000FFFFFFFFFFFFF818001CC23F603397F4CEAF0",
      INIT_3C => X"0000000000000001FFFFFFFFFE00071800195E78390019587E0E05FFFFFFFFFF",
      INIT_3D => X"0000000BFFFFFFFE00801007884F41FB07CBD84064170000F003C78000000000",
      INIT_3E => X"FFFFFFF8010042BAE1D458E6C3800702BFFFFFFFFFFFFFFFFFFFC20080000000",
      INIT_3F => X"00612E1D5C061D3882202BFFFFFFFFFFFFFFFFFFFC200800000000000000BFFF",
      INIT_40 => X"2C0BB9010E3FFFFFFFFFFFFFFFFFFFC000800000000000000800FFFFFFFF8010",
      INIT_41 => X"FFFFFFFFFFFFFFFFFFFD000A00000000000009FFFFFFFFE008000645A0F30E0E",
      INIT_42 => X"FFFFFFFFF000000000000000009FFFFFFFFEFFF180E78A173B839ED879A01DBF",
      INIT_43 => X"000000000000FFFFFFFFFFFFFFFF180E2BA13FA0079317CD037DFFFFFFFFFFFF",
      INIT_44 => X"03E1FFFFFFFFFE001180C2571B9600883FE5C008400000000000000000000000",
      INIT_45 => X"FFFF80E10C4960B8710C06F8B889980000000000000000000000000000000000",
      INIT_46 => X"7807C480C0F2E900287FFFFFFFFFFFFFFFFFFFE0040000000000001001FFFFFF",
      INIT_47 => X"3EE00FFFFFFFFFFFFFFFFFFFFFFE00400000000000011E3FC0FFFFFFFFFE10CB",
      INIT_48 => X"FFFFFFFFFFFFFFFF0000000000000000008207FFFFFFFFBFE1090581E5C07FD9",
      INIT_49 => X"FFFF00020000000000001801FFFFFFFFFFF8023C3698AE518BFECFFA805FFFFF",
      INIT_4A => X"0000000000001FFFFFFFFFFFFFE7CD5CAFE08407FFFE9913FFFFFFFFFFFFF6FF",
      INIT_4B => X"FFFFFFFFFFFFFFFEFFA5C8FF98701BFFEFA43FFFFFFFFFFFFFEFFFFFF0002000",
      INIT_4C => X"FFB001F43B8F00F7C023FF1180000000000000000000000000000000000007FF",
      INIT_4D => X"F006FF0033F0380000000000000000003F000000000000000007BFFFFFFFFFFF",
      INIT_4E => X"6823FFFFFFFFFFDFFFFFFFF8000000000000000000FFFFFFFFFFFFFF81E20A20",
      INIT_4F => X"FFFFFFFFFFC000000000000000000010007FFFFFFFFFFFFC20C403003FFC81D8",
      INIT_50 => X"000E00000000000000000007FFFFFFFFFF818429CC09C68FE099E6E3FFFFFFFF",
      INIT_51 => X"000FC0017FFFFFFFFFFFFFFFEF94B1001C20FF178E1800001FFF8001FFFFFFFC",
      INIT_52 => X"FFFFFFFFFFFFFFFCBF3041C000EE2538E00000FFF8000FFFFFFFC00000000000",
      INIT_53 => X"FFFA2347023E0000FE1BC000000FFF8000FFFFFE0000000000000000FE001FFF",
      INIT_54 => X"E00001E71500000000000000000000000000000000000823FFFFFFFFFFFFFFFF",
      INIT_55 => X"000001000000007F00000000000000000082FDF7FFFFFFFFFFFFFFFFC6E46035",
      INIT_56 => X"0FFFF000000000000000000FE4087FFFFFFFFFFFFFEF5CC9C607FE0010FFE680",
      INIT_57 => X"00000000000060408401FFFFFFFFFFFFF4C8B44273FC050C79086000003FF800",
      INIT_58 => X"002084001FFFFFFFFFFFFFEF3280CF1F81D7CD80C6000003FF8001FF80000000",
      INIT_59 => X"FFFFFFFFFFF2F27C1CA02801F07C0000007F03FFFFFFC0000004700000000000",
      INIT_5A => X"FCDF43CB8AC01F8500000007F03FFFFFFF8000000000000000000002087FFFFF",
      INIT_5B => X"0079680000000000000000380000000000000000000020FFFFFFFFFFFFFFFFFF",
      INIT_5C => X"000000000000000000000000000000007FCFFFFFFFFFFFFFFFFFF39D8079F1FD",
      INIT_5D => X"0000000000000000000002003FFFFFFFFFFFFFFFFB1B30033F0FF006D2800000",
      INIT_5E => X"00000000002003FFFFFFFF7FFFFFFFB7B6018373FE007B400000000000000000",
      INIT_5F => X"1FC001FFFFF7FFFFFFF752E0187667E0041C0000000000000000000001080000",
      INIT_60 => X"FFFFFFFFB75E041F7DFE001D9000000000000000000000108000000000000002",
      INIT_61 => X"F2026E7FC0B3D1800000000000000000070FC000000018000000000000FFFFFF",
      INIT_62 => X"DA180000000000000000000000000000018000000001FFFFFFFFF17FFFFDFDCC",
      INIT_63 => X"00000000000000000000001800000001FFFFFFFFFF37FFFFFF689F0268E4F801",
      INIT_64 => X"0000000000000000007FFFFFFFFFFFF17FFFFF3359FF8C0E3D80369180000000",
      INIT_65 => X"81E000003FFFFFFFFFFFFFFFFFFCFB3081C01F3802E018000000000000000000",
      INIT_66 => X"FFFFFFFFFF8F7FFF2FA70FB911F1006AC1800000000000000000000000000000",
      INIT_67 => X"F7FFF76E79F53217F07C0C180000000000000000000000000000081E000001FF",
      INIT_68 => X"78027F05C300000000000000000000000000000000000002013FFF7FFFFFFF00",
      INIT_69 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF07F7FFE08AFF2",
      INIT_6A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0EF81F4F7FF006ABF",
      INIT_6B => X"00000000000000000000000000000FFF1FFE38023000FE0C0727FFFFFFFFFFFF",
      INIT_6C => X"0800000000000012000000000000000000000000000000000000000000000000",
      INIT_6D => X"02012000000000000000000000000000000008100280008004000000000A8100",
      INIT_6E => X"00000000000000000000000000900040001000C288B583964500042000020040",
      INIT_6F => X"000000000000000D668851988010000008000A00901DD40012A283036A400000",
      INIT_70 => X"000175A124D088128BE6200E1B4402F89C101804C61204700000000000000000",
      INIT_71 => X"CA00422B489AEA2FF6541EC805C96EA0385B4000000000000000000000000000",
      INIT_72 => X"36159602646CC0104EA13316100000000000000000000000000000001448A25D",
      INIT_73 => X"67846F8084078AC000000000000000000000000000000005A921508002A3200B",
      INIT_74 => X"104800000000000000000000000000000012C484B45440009B3EE88D4AA23C03",
      INIT_75 => X"0000000000000000000000000000000000024000000000004B44138000000000",
      INIT_76 => X"0000000000000000000000000000000000000000400000000000000000000000",
      INIT_77 => X"0000000000000000000000000080400000000000000190000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "UPPER",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15 downto 0) => addra(15 downto 0),
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => CASCADEINA,
      CASCADEINB => CASCADEINB,
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOADO_UNCONNECTED\(31 downto 1),
      DOADO(0) => douta(0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => '1',
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized18\ is
  port (
    douta : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized18\ : entity is "blk_mem_gen_prim_wrapper_init";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized18\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized18\ is
  signal CASCADEINA : STD_LOGIC;
  signal CASCADEINB : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B\ : label is "PRIMITIVE";
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_01 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0002043FFFF",
      INIT_02 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000207FFFFFFFFFFFFFFFF",
      INIT_03 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000003FFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_04 => X"FFFFFFFFFFFFFFFFFFFF0000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_05 => X"FFFFFFFFF0000043FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_06 => X"00043FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_07 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00",
      INIT_08 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000043FFFFFF",
      INIT_09 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000003FFFFFFFFFFFFFFFFFF",
      INIT_0A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000300FFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0B => X"FFFFFFFFFFFFFFFFFF000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0C => X"FFFFFFF00000100FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0D => X"03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000",
      INIT_0F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000003FFFFFFFFF",
      INIT_10 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000003FFFFFFFFFFFFFFFFFFFF",
      INIT_11 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFF00021FFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFF",
      INIT_12 => X"FFFFFFFFFFFFFFFD00021F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_13 => X"FFFFF00001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_14 => X"6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_15 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000001",
      INIT_16 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000003FFFFFFFFFFF",
      INIT_17 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000003FFFFFFFFFFFFFFFFFFFDFF",
      INIT_18 => X"FFFFFFFFFFFFFFFFFFFFFFFFF000003FFFFFFFFFFFFFFFFFFFDFFFFFFFFFFFFF",
      INIT_19 => X"FFFFFFFFFFFFFF000003FFFFFFFFFFFFFFFFFFFC1FFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1A => X"FFF000003FFFFFFFFFFFFFFFFFFFF1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1B => X"FFFFFFFFFFFFFFFFFF9C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1C => X"FFFFFFB0C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000017F",
      INIT_1D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00001FFFFFFFFFFFFFF",
      INIT_1E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00103FFFFFFFFFFFFFFFFFFFFB081F",
      INIT_1F => X"FFFFFFFFFFFFFFFFFFFFFFF00103FFFFFFFFFFFFFFFFFFFFD161FFFFFFFFFFFF",
      INIT_20 => X"FFFFFFFFFFFF00001FFFFFFFFFFFFFFFFFFFF7FE5FFFFFFFFFFFFFFFFFFFFFFF",
      INIT_21 => X"F00001FFFFFFFFFFFFFFFFFFFD7E35FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_22 => X"FFFFFFFFFFFFFFDFE35FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_23 => X"FFFFF575FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00001FFFFF",
      INIT_24 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00001FFFFFFFFFFFFFFFF",
      INIT_25 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00001FFFFFFFFFFFFFFFFFFFFE41FFFF",
      INIT_26 => X"FFFFFFFFFFFFFFFFFFFFF00001FFFFFFFFFFFFFFFFFFFFFC3DFFFFFFFFFFFFFF",
      INIT_27 => X"FFFFFFFFFF00001FFFFFFFFFFFFFFFFFFFFF83DFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_28 => X"000FFFFFFFFFFFFFFFFFFFFF000DFFFFFFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_29 => X"FFFFFFFFFFFFF010DFFFFFFFFFFFF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0",
      INIT_2A => X"FF0369FFFFFFFFFFFE5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0181FFFFFFFF",
      INIT_2B => X"FFFFFF89FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0180FFFFFFFFFFFFFFFFFFF",
      INIT_2C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000877FFFFFFFFFFFFFFFFFF03F5FFFFF",
      INIT_2D => X"FFFFFFFFFFFFFFFFFFF000FE7FFFFFFFFFFFFFFFFFFF7FD1FFFFFFFFFFE73FFF",
      INIT_2E => X"FFFFFFFF000EE7FFFFFFFFFFFFFFFFFFF809DFFFFFFFFFF187FFFFFFFFFFFFFF",
      INIT_2F => X"FE7FFFFFFFFFFFFFFFFFFFF7FDFFFFFFFFFEE07FFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_30 => X"FFFFFFFFFFFEFFDFFFFFFFFFD807FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF078",
      INIT_31 => X"CFFDFFFFFFFFF901FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0111FFFFFFFFFF",
      INIT_32 => X"FF30CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0111FFFFFFFFFFFFFFFFFFFFF",
      INIT_33 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFF0110FFFFFFFFFFFFFFFFFFFFE8FFDFFFFFFF",
      INIT_34 => X"FFFFFFFFFFFFFFFFF0000BFFFFFFFFFFFFFFFFFFFEEFFDFFFFFFFFC967FFFFFF",
      INIT_35 => X"FFFFFF0000FFFFFFFFFFFFFFFFFFFFE2F7DFFFFFFFFDE1FFFFFFFFFFFFFFFFFF",
      INIT_36 => X"FFFFFFFFFFFFFFFFFFFE0F7DFFFFFFF9BC07FFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_37 => X"FFFFFFFFE1F7DFFFFFFFCE807FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0801D",
      INIT_38 => X"FFFFFFFFF6C83FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0801FFFFFFFFFFFF",
      INIT_39 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00007FFFFFFFFFFFFFFFFFFFF3E",
      INIT_3A => X"FFFFFFFFFFFFFFFFFFFFFFFFFF0000EFFFFFFFFFFFFFFFFFFFD7C7FFFFFFFEF4",
      INIT_3B => X"FFFFFFFFFFFFFFF00007FFFFFFFFFFFFFFFFFFFDFC7FFFFFFFFE2FFFFFFFFFFF",
      INIT_3C => X"FFFF000023FFFFFFFFFFFFFFFFFFFFE7EFFFFFFFCE45FFFFFFFFFFFFFFFFFFFF",
      INIT_3D => X"FFFFFFFFFFFFFFFFFFFF78FFFFFFFDE27FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3E => X"FFFFFFFFE06FFFFFFFC83BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000FFFF",
      INIT_3F => X"FFFFFFE881FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000FFFFFFFFFFFFFFF",
      INIT_40 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000FFFFFFFFFFFFFFFFFFFFFEC1DA",
      INIT_41 => X"FFFFFFFFFFFFFFFFFFFFFFFF000E7FFFFFFFFFFFFFFFFFFFE0EFEFFFFFFE1867",
      INIT_42 => X"FFFFFFFFFFFFF000AFFFFFFFFFFFFFFFFFFFFC19FFFFFFFFE307FFFFFFFFFFFF",
      INIT_43 => X"FF000E7FFFFFFFFFFFFFFFFFFFDE1FBFFFFFFE705FFFFFFFFFFFFFFFFFFFFFFF",
      INIT_44 => X"FFFFFFFFFFFFFFFFB8F3FFFFFFCC05FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_45 => X"FFFFC5802FFFFFF9843FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00003FFFF",
      INIT_46 => X"FFFF19C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF007FFFFFFFFFFFFFFFFF",
      INIT_47 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF007FFFFFFFFFFFFFFFFFFFFFD878EFF",
      INIT_48 => X"FFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFCFB7EFFFFEF3187FFF",
      INIT_49 => X"FFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFC377EFFFFFC679FFFFFFFFFFFFFFF",
      INIT_4A => X"007DFFFFFFFFFFFFFFFFFFFFC021EFFFFD8E00FFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4B => X"FFFFFFFFFFFFFC003DFFFFC3001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4C => X"FFE007FFFFF831E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF007FFFFFFFF",
      INIT_4D => X"81CF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00083FFFFFFFFFFFFFFFFF",
      INIT_4E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000FDFFFFFFFFFFFFFFFFFFFF8017FFFF",
      INIT_4F => X"FFFFFFFFFFFFFFFFFFFF000FFFFFFFFFFFFFFFFFFFFF88001FFFF67E31FFFFFF",
      INIT_50 => X"FFFFFFFFF800FFFFFFFFFFFFFFFFFFFFF80101FFFF6FE1BFFFFFFFFFFFFFFFFF",
      INIT_51 => X"7FFFFFFFFFFFFFFFFFFFFF801B5FFFE7FC07FFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_52 => X"FFFFFFFFFFFC0037FFFCB3F93FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF40",
      INIT_53 => X"C0017FFFC053AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF007FDFFFFFFFF",
      INIT_54 => X"F07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF007FFFFFFFFFFFFFFFFFFFFF",
      INIT_55 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFF000FFFFFFFFFFFFFFFFFFFFFC001FFFFC10",
      INIT_56 => X"FFFFFFFFFFFFFFFFFF000FDFFFFFFFFFFFFFFFFFFF9001FFFF837F2FFFFFFFFF",
      INIT_57 => X"FFFFFFFC00FFFFFFFFFFFFFFFFFFFFF9300FFFF07F31FFFFFFFFFFFFFFFFFFFF",
      INIT_58 => X"FFFFFFFFFFFFFFFFFFFFE101BFFF0FBC1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_59 => X"FFFFFFFFFE4013FFE3F081FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF807F",
      INIT_5A => X"013FFE7E027FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF007FFFFFFFFFFFF",
      INIT_5B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF007FFFFFFFFFFFFFFFFFFFFF60",
      INIT_5C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFF00401FFFFFFFFFFFFFFFFFFF7009BFFE7003B",
      INIT_5D => X"FFFFFFFFFFFFFFFF007FFFFFFFFFFFFFFFFFFFFFF009BFFCF0007FFFFFFFFFFF",
      INIT_5E => X"FFFFF007FFBFFFFFFFFFFFFFFFFFFE0C0BFF9C000FFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5F => X"FFFFFFFFFFFFFFFFFE66C91FF2C004FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_60 => X"FFFFFFFE60F7FE70037FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0FFFF",
      INIT_61 => X"DFDC0037FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFF",
      INIT_62 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF007FFFFFFFFFFFFFFFFFFFFFF7F3",
      INIT_63 => X"FFFFFFFFFFFFFFFFFFFFFFFFF007FFFFFFFFFFFFFFFFFFFFDFFBC1FCD00EFFFF",
      INIT_64 => X"FFFFFFFFFFFFFF00003FFFFFFFFFFFFFFFFFFCF5FE3FEFC3C7FFFFFFFFFFFFFF",
      INIT_65 => X"FFF070FFFFFFFFFFFFFFFFFFFFFF7E01FEE338FFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_66 => X"FFFFFFFFFFFFFFFBF7C01FDE00BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_67 => X"FFFFBBFC04F9B01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF070FBFFF",
      INIT_68 => X"9803BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF078FFFFFFFFFFFFFFFF",
      INIT_69 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF380FFFFFFFFFFFFFFFFFFFFF3F8007",
      INIT_6A => X"FFFFFFFFFFFFFFFFFFFFFFF380FFFFFFFFFFFFFFFFFFFF43F80000C8F7FFFFFF",
      INIT_6B => X"FFFFFFFFFFFF380FFFFFFFFFFFFFFFFFFFF47F80000215FFFFFFFFFFFFFFFFFF",
      INIT_6C => X"FF8083FFFFFFFFFFFFFFFFFF83B800181FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6D => X"FFFFFFFFFFFFF03FC000003DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6E => X"FE43FE3180015FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF87FFFFFFF",
      INIT_6F => X"03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF87FDFFFFFFFFFFFFFFFF",
      INIT_70 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FFFFFFFFFFFFFFFFFFFFE93FE00800",
      INIT_71 => X"FFFFFFFFFFFFFFFFFFFFF180FFFFFFFFFFFFFFFFFFFC1F7E05F8003FFFFFFFFF",
      INIT_72 => X"FFFFFFFFFF180FFFFFFFFFFFFFFFFFFFC01BF0F70007FFFFFFFFFFFFFFFFFFFF",
      INIT_73 => X"80FFFFFFFFFFFFFFFFFFF81EEFEFF8C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_74 => X"FFFFFFFFFFC5ECFFEF183FFFFF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1",
      INIT_75 => X"1FCFFEFB039FFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8083FFFFFFF",
      INIT_76 => X"FFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF180FFFFFFFFFFFFFFFFFFF4",
      INIT_77 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF180FFFFFFFFFFFFFFFFFFF01DDFFEFE03B",
      INIT_78 => X"FFFFFFFFFFFFFFFFFFB180FFFFFFFFFFFFFFFFFFE3383FFFF603FFFFE1FFFFFF",
      INIT_79 => X"FFFFFFF00180FFFFFFFFFFFFFFFFFEF5C5FFFE627FFFFA3FFFFFFFFFFFFFFFFF",
      INIT_7A => X"19FFFFFFFFFFFFFFFFCFD9BFFBBE07FFFF97FFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7B => X"FFFFFFFDFF989FF3FEFFFFF85FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB018",
      INIT_7C => X"F4FF3FDFFFFC1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFF",
      INIT_7D => X"877FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE80000BFFFFFFFFFFFFFFFFBFFB",
      INIT_7E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFE00001FFFFFFFFFFFFFFFFFBFFBFE7F3FFFFFF",
      INIT_7F => X"FFFFFFFFFFFFFFFFF0001FFFFFFFFFFFFFFFFF7FFBFE3F3EFFC3F3CFFFFFFFFF",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "LOWER",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15 downto 0) => addra(15 downto 0),
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => CASCADEINA,
      CASCADEOUTB => CASCADEINB,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => '1',
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
\DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"FFFFFF0001FFFFFFFFFFFFFFFFE7FFFF98F9CF807040FFFFFFFFFFFFFFFFFFFF",
      INIT_01 => X"FFFFFFFFFFFFFFFEFFFFF98F69FBC83A3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_02 => X"FFFFDFFFFEF342A1BFFE8E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF018FF",
      INIT_03 => X"3FFFAB80303BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF018FBFFFFFFFFFFF",
      INIT_04 => X"DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000FFFFFFFFFFFFFFFFFDFFFFE0",
      INIT_05 => X"FFFFFFFFFFFFFFFFFFFFFFFFFF0000AFFFFFFFFFFFFFFFBFFFFFFFFFFEB200D3",
      INIT_06 => X"FFFFFFFFFFFFFFF0000BFFFFFFFFFFFFFFFBFFFFFFFFF0FE3DACFDFFFFFFFFFF",
      INIT_07 => X"FFFF0000BFFFFFFFFFFFFFFF7FFFFFFFFC7FDDE09FDFFFFFFFFFFFFFFFFFFFFF",
      INIT_08 => X"FFFFFFFFFFFFFFFFFFFFFFFFFDC997F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_09 => X"DFFFFFFFFFFBFFE050FA2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000BFF",
      INIT_0A => X"3FFFA68F04FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00001FFFFFFFFFFFFF",
      INIT_0B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00001FFFFFFFFFFFFFFFFFFFFEFFE",
      INIT_0C => X"FFFFFFFFFFFFFFFFFFFFFFFF00001FFFFFFFFFFFFFFFFFFFD6BE0B7FF15BC0CF",
      INIT_0D => X"FFFFFFFFFFFFF00001FFFFFFFFFFFFFFFFFFF26000D3FFC9D419FFFFFFFFFFFF",
      INIT_0E => X"FF00001FFFFFFFFFFFFFDFFFF00A18F35FF135073FFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0F => X"FFFFFFFFF9F4F05DFFCC24050FC061FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_10 => X"004E04BB8DE00239F43FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00001FFFF",
      INIT_11 => X"FDD76027FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00001FFFFFFFFFFFFFE0",
      INIT_12 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00701FFFFFFFFFFFFFE006E5FA002D3",
      INIT_13 => X"FFFFFFFFFFFFFFFFFFFFE700001FFFFFFFFFFFFF7FBF3D751D32D7FF400DBFFF",
      INIT_14 => X"FFFFFFFFFFF00001FFFFFFFFFFFFE09E0F7007AD361678103FFFFFFFFFFFFFFF",
      INIT_15 => X"00000FFFFFFFFFFFFF200FC003880161F1BE1C7FFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_16 => X"FFFFFFE7FFC0319C0037C10FCF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_17 => X"37DD400158A47CF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00021FFFFFF",
      INIT_18 => X"428FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00020FFFFFFFFFFFFEC206",
      INIT_19 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00001FFFFFFFFFFFFEDF23FFFF0001E3D",
      INIT_1A => X"FFFFFFFFFFFFFFFFFFFF00001FFFFFFFFFFFFDBFFFFFB40003CF7A29D5FFFFFF",
      INIT_1B => X"FFFFFFFFF00001FFFFFFFFFFFFBBFFFFFF8000E6139810BFFFFFFFFFFFFFFFFF",
      INIT_1C => X"001FFFFFFFFFFFFB3FFFD0FA0636F48583FBFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1D => X"FFFFB3FFFC1808FD8797483F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00",
      INIT_1E => X"999F287F40F0C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00001FFFFFFFF",
      INIT_1F => X"3DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00041FFFFFFFFFFFF77FFC0E",
      INIT_20 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFF00041FFFFFFFFFFFFF7FFC033D8FD87F40F",
      INIT_21 => X"FFFFFFFFFFFFF03FFF00001FFFFFFFFFFFF77FFF26160F987FB20FDFFFFFFFFF",
      INIT_22 => X"FF03FFF00003FFFFFFFFFFFFB37FC3C922FB87F881F7FFFFFFFFFFFFFFFFFFFF",
      INIT_23 => X"3FFFFFFFFFFFE67820F0183FB87F94FFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_24 => X"FF02C71C0B83FB07F897FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7BF800000",
      INIT_25 => X"33A87E0C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE03FBF00000FFFFFFFFFF",
      INIT_26 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03FFF00001FDFFFFFFFFFE07F83211E",
      INIT_27 => X"FFFFFFFFFFFFFFFFFFFFFF7BFFF00001FDFFFFFFFFFE46601851A77CCFE0F0EF",
      INIT_28 => X"FFFFFFFFFFF7BFFF00001FDFFFFFFFFFF070000B5277FCFC1F84FFFFFFFFFFFF",
      INIT_29 => X"03FFF00001FFFFFFFFFFEF01C8F388E7FF5F80FFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2A => X"FFFFFFFFFFE85DD8718A7F3FF03EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2B => X"80F03E3527FFFE4BCFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE23DFF00001F",
      INIT_2C => X"EFE4F8F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9BC0000001FFFFFFFFFFFE",
      INIT_2D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF83F7F00001FFFFFFFFFFEE80E008983BF",
      INIT_2E => X"FFFFFFFFFFFFFFFFFFFF03F7F00001FFBFFFFFFFFEC0FFCEE019FEFC098F7FFF",
      INIT_2F => X"FFFFFFFFF97F7800001CFBFFFFFFFFE80FC0780183FF818EFFFFFFFFFFFFFFFF",
      INIT_30 => X"FEF00001C7BFFFFFFFFE81FEFE00003E700FFDBFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_31 => X"BFFFFFFFCD9BFF068002C703FD7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_32 => X"FFC3801031707FF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00001FBF",
      INIT_33 => X"3FFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00400000003FBFFFFFFDDB9",
      INIT_34 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000000001FBFBFFFFFF9F9BFF1E0050382",
      INIT_35 => X"FFFFFFFFFFFFFFFFFFF7F7800000FFFFFFFFFF7F91FFF810303007F7F7FFFFFF",
      INIT_36 => X"FFFFFFFF7F7800000003FFFFFFFFDDBDFE002A0809FC7E7FFFFFFFFFFFFFFFFF",
      INIT_37 => X"B00000003FFFFFFFE8CA7FCC0226C18707EFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_38 => X"FFFFFD5FB93F001B7C7F7C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7",
      INIT_39 => X"E005A7CFFCFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFF00001FFBFF",
      INIT_3A => X"F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC000001FFFEFE7FFF323F1BE",
      INIT_3B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000007E7FFE34BFF7FF00AB7CFF8F",
      INIT_3C => X"FFFFFFFFFFFFFFFE0000000001FFF8E7FFE617F9F900033FFFF9FE7FFFFFFFFF",
      INIT_3D => X"FFFFFFF400000001FF7FEFF8637F1FFF0067E7FF9FCFFFFFFFFFFFFFFFFFFFFF",
      INIT_3E => X"00000007FEFFBDCDE1FD40063C7FF8F97FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3F => X"FFA9DE1FDC0642C77FDF77FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4000",
      INIT_40 => X"0DFC46FFE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FF000000007FEF",
      INIT_41 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6000000001FF7FFF9BD3FF3FE0E",
      INIT_42 => X"FFFFFFFFFFFFFFFFFFFFFFFFFF6000000001000E7F1893EF3F8380C7864FFCFF",
      INIT_43 => X"FFFFFFFFFFFF0000000000000000E7F1C23EFFE00010E832FFDFFFFFFFFFFFFF",
      INIT_44 => X"FC1E0000000001FFEE7F3C67E7FE000100023FF3FFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_45 => X"00007F1EF3AE7F7FF1000000477667FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_46 => X"9FFFFC00000D16FFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFE000000",
      INIT_47 => X"C11FFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEE1C03F0000000001EF37",
      INIT_48 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7DF800000000401EF6B9FFFFC00000",
      INIT_49 => X"FFFFFFFFFFFFFFFFFFFFE7FE000000000007FDC3D71FFFF180010001FE7FFFFF",
      INIT_4A => X"FFFFFFFFFFFFE0000000000000183060FFFF840000017FEFFFFFFFFFFFFFFFFF",
      INIT_4B => X"000000000000000100060FFFF870000017F3FFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4C => X"004FFE0043FFFFF7C00000FE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800",
      INIT_4D => X"FFFFFF00000FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8400000000000",
      INIT_4E => X"FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000007E1C8C3F",
      INIT_4F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFF80000000000003C107FFFFFFFC0007",
      INIT_50 => X"FFFFFFFFFFFFFFFFFFFFFFF800000000007E7831F3FE3BFFE0801F1FFFFFFFFF",
      INIT_51 => X"FFF03FFE800000000000000010373EFFE3FFFF0781EFFFFFFFFFFFFFFFFFFFFF",
      INIT_52 => X"0000000000000001C7CFFE3FFFFE3D0BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_53 => X"0004BC78FDC1FFFFFE1B7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF01FFE000",
      INIT_54 => X"1FFFFFE00EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7DC0000000000000000",
      INIT_55 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7D0208000000000000000017079FCA",
      INIT_56 => X"FFFFFFFFFFFFFFFFFFFFFFF01BF78000000000000010A2F1F9F801FFFFFFEDFF",
      INIT_57 => X"FFFFFFFFFFFF9FBF7BFE0000000000000B4F3FBF8C03FFFC7EFFFFFFFFFFFFFF",
      INIT_58 => X"FFDF7BFFE00000000000000B83FFF0E07FFFCF3FFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_59 => X"00000000000C7C7FFF1FC7FFF053FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5A => X"2F1FFFF0743FFF82FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF7800000",
      INIT_5B => X"FFF89FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF000000000000000000",
      INIT_5C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8030000000000000000009E1FFFE0E02",
      INIT_5D => X"FFFFFFFFFFFFFFFFFFFFFDFFC000000000000000045C3FFFC0F00FFEC1FFFFFF",
      INIT_5E => X"FFFFFFFFFFDFFC00000000000000004FC7FFFC0C01FFF93FFFFFFFFFFFFFFFFF",
      INIT_5F => X"E03FFE000000000000095CFFFF81801FFC33FFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_60 => X"000000003F9FFFE00001FF826FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD",
      INIT_61 => X"FDFC80003FF80E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7FFFFFFFFFFFF000000",
      INIT_62 => X"A9E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7FFFFFFFFE000000000000000205F0",
      INIT_63 => X"FFFFFFFFFFFFFFFFFFFFFFE7FFFFFFFE0000000000000000003F1FFF800007FF",
      INIT_64 => X"FFFFFFFFFFFFFFFFFF800000000000000000001F61FFF000027FF13E7FFFFFFF",
      INIT_65 => X"7E1FFFFFC0000000000000000001FC3FFE0000C7FE03E7FFFFFFFFFFFFFFFFFF",
      INIT_66 => X"00000000000000002FC7FFC1000EFFE33E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_67 => X"000005727FFE30000FFC23E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFF7E1FFFFFE00",
      INIT_68 => X"800000FFC2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFEC0008000000000",
      INIT_69 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000AF2FFF",
      INIT_6A => X"0000000000000000000000000000000000000000FFFFFFE8F001F80000FFE77F",
      INIT_6B => X"00000000000000000000000000000000E001FFFFFFFF01FFFFF8000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000042020000000",
      INIT_6F => X"000000000000000600BA70F0200000000000000CD0D4BA0043AB0403C9C00000",
      INIT_70 => X"0000908D02884806033062CC2F046855B03011061E4322CC0000000000000000",
      INIT_71 => X"08400A737980899E849A488000532426017C8000000000000000000000000000",
      INIT_72 => X"062F626A35C480000AA2102C8C000000000000000000000000000000050302DD",
      INIT_73 => X"C9008E2305130C0000000000000000000000000000000051B121542800262032",
      INIT_74 => X"1C80000000000000000000000000000000014E5AA40BE000B330E60D3070F443",
      INIT_75 => X"00000000000000000000000000000000000200000000000007C4528000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "UPPER",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15 downto 0) => addra(15 downto 0),
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => CASCADEINA,
      CASCADEINB => CASCADEINB,
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOADO_UNCONNECTED\(31 downto 1),
      DOADO(0) => douta(0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => '1',
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized19\ is
  port (
    douta : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized19\ : entity is "blk_mem_gen_prim_wrapper_init";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized19\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized19\ is
  signal CASCADEINA : STD_LOGIC;
  signal CASCADEINB : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B\ : label is "PRIMITIVE";
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_01 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_02 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_03 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_04 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_05 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_06 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_07 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_08 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_09 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_10 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_11 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_12 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_13 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_14 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_15 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_16 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_17 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_18 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_19 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1B => X"FFFFFFFFFFFFFFFFF87FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1C => X"FFFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFF",
      INIT_1F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAE9FFFFFFFFFFFFF",
      INIT_20 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF801BFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_21 => X"FFFFFFFFFFFFFFFFFFFFFFFFFF800BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_22 => X"FFFFFFFFFFFFFFF000BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_23 => X"FFFF010BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_24 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_25 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0001FFF",
      INIT_26 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0003FFFFFFFFFFFFFF",
      INIT_27 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0003FFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_28 => X"FFFFFFFFFFFFFFFFFFFFFFFF0003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_29 => X"FFFFFFFFFFFFF0103FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2A => X"FF0363FFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2B => X"FFFFFFF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03F7FFFFF",
      INIT_2D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FF3FFFFFFFFFFF83FFF",
      INIT_2E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0003FFFFFFFFFFE03FFFFFFFFFFFFFF",
      INIT_2F => X"FFFFFFFFFFFFFFFFFFFFFF0803FFFFFFFFFF007FFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_30 => X"FFFFFFFFFFF1003FFFFFFFFFE00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_31 => X"3003FFFFFFFFFE00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_32 => X"FFC0DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_33 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7003FFFFFFF",
      INIT_34 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1003FFFFFFFFF665FFFFFF",
      INIT_35 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD003FFFFFFFFE01FFFFFFFFFFFFFFFFFF",
      INIT_36 => X"FFFFFFFFFFFFFFFFFFFFF003FFFFFFFFC003FFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_37 => X"FFFFFFFFFE003FFFFFFFF0007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_38 => X"01FFFFFFFF003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_39 => X"FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEC0",
      INIT_3A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8001FFFFFFFF8",
      INIT_3B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0001FFFFFFFFCFFFFFFFFFFF",
      INIT_3C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFC0001FFFFFFFF07FFFFFFFFFFFFFFFFFFFFF",
      INIT_3D => X"FFFFFFFFFFFFFFFFFC0007FFFFFFFE03BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3E => X"FFFFFFC0001FFFFFFFF03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3F => X"FFFFFFFF017FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_40 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC01C1",
      INIT_41 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0E01FFFFFFFE06F",
      INIT_42 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1800FFFFFFFC06FFFFFFFFFFFF",
      INIT_43 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFDE000FFFFFFF805FFFFFFFFFFFFFFFFFFFFFFF",
      INIT_44 => X"FFFFFFFFFFFFFFFFF800FFFFFFF007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_45 => X"FFFFC7801FFFFFFE043FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_46 => X"FFFFE1C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_47 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0781FF",
      INIT_48 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0001FFFFFFC187FFF",
      INIT_49 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0001FFFFFF8797FFFFFFFFFFFFFF",
      INIT_4A => X"FFFFFFFFFFFFFFFFFFFFFFFFC0001FFFFFF000FFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4B => X"FFFFFFFFFFFFFC0003FFFFFC000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4C => X"FFE0001FFFFFC1E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4D => X"FE0F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0001FFFF",
      INIT_4F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0003FFFFF8033FFFFFF",
      INIT_50 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0003FFFFF001BFFFFFFFFFFFFFFFFF",
      INIT_51 => X"FFFFFFFFFFFFFFFFFFFFFFC0003FFFFF0003FFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_52 => X"FFFFFFFFFFF80003FFFFFC017FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_53 => X"80003FFFFFE027FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_54 => X"00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_55 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80003FFFFEF",
      INIT_56 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80003FFFFC802FFFFFFFFF",
      INIT_57 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF83003FFFF8000FFFFFFFFFFFFFFFFFFFF",
      INIT_58 => X"FFFFFFFFFFFFFFFFFFFF81007FFFF0001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_59 => X"FFFFFFFFF8400FFFFC0003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5A => X"00FFFF80003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80",
      INIT_5C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80007FFF80007",
      INIT_5D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00007FFF0000FFFFFFFFFFFF",
      INIT_5E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFF00C07FFE0000FFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5F => X"FFFFFFFFFFFFFFFFFF86C0FFFC0001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_60 => X"FFFFFFE0600BFF80001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_61 => X"3FE00003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_62 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000C",
      INIT_63 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0043FFF10007FFF",
      INIT_64 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0001FFF1C00FFFFFFFFFFFFFFF",
      INIT_65 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFC001FFFF0301FFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_66 => X"FFFFFFFFFFFFFFFC003FFFE0001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_67 => X"FFFFC403FBFE0003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_68 => X"E0007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_69 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8C07FFF",
      INIT_6A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBC07FFFF000FFFFFFF",
      INIT_6B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB807FFFFC02FFFFFFFFFFFFFFFFFF",
      INIT_6C => X"FFFFFFFFFFFFFFFFFFFFFFFF7C47FFE7E01FFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6D => X"FFFFFFFFFFFFFFC03FFFFFC3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6E => X"FFBC01CE7FFEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_70 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEC01FF7FF",
      INIT_71 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE081FA07FFFFFFFFFFFF",
      INIT_72 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00F08FFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_73 => X"FFFFFFFFFFFFFFFFFFFFFFFC1010073FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_74 => X"FFFFFFFFFFBBC30010E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_75 => X"FC300104FFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_76 => X"FFFF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB",
      INIT_77 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE200101FFF",
      INIT_78 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00009FFFFFFF9FFFFFF",
      INIT_79 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800019DFFFFFF9FFFFFFFFFFFFFFFFF",
      INIT_7A => X"FFFFFFFFFFFFFFFFFFFFFFC00401FFFFFFF9FFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7B => X"FFFFFFFFFFFF000001FFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7C => X"F800003FFFFFE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7D => X"F87FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000003FFFF",
      INIT_7F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000007FFFFC07FFFFFFFF",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "LOWER",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15 downto 0) => addra(15 downto 0),
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => CASCADEINA,
      CASCADEOUTB => CASCADEINB,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => '1',
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
\DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF60001FFFFF83FFFFFFFFFFFFFFFFFFFF",
      INIT_01 => X"FFFFFFFFFFFFFFFFFFFFF60063FC37C08FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_02 => X"FFFFFFFFFF033D7FC00025FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_03 => X"FFFFC400097FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_04 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_05 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF82008F",
      INIT_06 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3DEBFFFFFFFFFFFF",
      INIT_07 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF27FFFFFFFFFFFFFFFFFFFFFFF",
      INIT_08 => X"FFFFFFFFFFFFFFFFFFFFFFFFFEFD0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_09 => X"FFFFFFFFFFFFFFEFD7FFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0A => X"FFFF4A7FF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFBC7FF1F",
      INIT_0D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3FFF983FE1FFFFFFFFFFFF",
      INIT_0E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFF5E701BFF30BF81FFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0F => X"FFFFFFFFFFFFFFA000301BFF603F83FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_10 => X"FFB000000C1FF606003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_11 => X"02100003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F",
      INIT_12 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1FF901FA002C0",
      INIT_13 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00403DFF1D3EC0010001FFFF",
      INIT_14 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFE00181037FFFFFFFFFFFFFF",
      INIT_15 => X"FFFFFFFFFFFFFFFFFE200FFFFC7FFFE001BE1CFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_16 => X"FFFFFFE7FFFFCE63FFCFC03FC78FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_17 => X"C822BFFEB8867CF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_18 => X"4227DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFDF9",
      INIT_19 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCE0DC0000FFFFE38",
      INIT_1A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDC000004BFFFFCF180E37FFFFFF",
      INIT_1B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFC0000007FFFE14303FFBFFFFFFFFFFFFFFFFF",
      INIT_1C => X"FFFFFFFFFFFFFFFBC0002F05FFF10E01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1D => X"FFFFBC0003FFF80278507FFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1E => X"7680D7807FFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1F => X"FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8003FC",
      INIT_20 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF78003FAF28027807FF",
      INIT_21 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF78000F5F00067802FFFDFFFFFFFFF",
      INIT_22 => X"FFFFFFFFFFFFFFFFFFFFFFFFFC003DBF000478017FF5FFFFFFFFFFFFFFFFFFFF",
      INIT_23 => X"FFFFFFFFFFFFFF801F6FF80047801BFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_24 => X"FEFC071BF78004F800EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_25 => X"0C47800FFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_26 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF8000FEFE",
      INIT_27 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF81FFF8FE0803000FFEF",
      INIT_28 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFF0FE0803001FFDFFFFFFFFFFFF",
      INIT_29 => X"FFFFFFFFFFFFFFFFFFFFFFFE080C7FE000A000FFDFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2A => X"FFFFFFFFFFF7A2078FFE00C0003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2B => X"7F0FC1FBE000000BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2C => X"0000FFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F0007E7F00",
      INIT_2E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F003F1FF000000FFFFFFF",
      INIT_2F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F03F87FF000001FFEFFFFFFFFFFFFFFF",
      INIT_30 => X"FFFFFFFFFFFFFFFFFFFF7E0101FFE000000FFDFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_31 => X"FFFFFFFFF3E000F9FE000003FF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_32 => X"003C7FF000007FF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_33 => X"3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5E",
      INIT_34 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7C00E1FFB0000",
      INIT_35 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E0007FFF00007FFF7FFFFFF",
      INIT_36 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFA3C001FFF60809FFFEFFFFFFFFFFFFFFFFFF",
      INIT_37 => X"FFFFFFFFFFFFFFFFF33C0033FFE6C187FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_38 => X"FFFFFE60C000FFE77C7F7FFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_39 => X"1FFE67CFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3A => X"F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC40E01",
      INIT_3B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8C00800FFC77CFFFF",
      INIT_3C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF980606FFFCFFFFFFFEFFFFFFFFFF",
      INIT_3D => X"FFFFFFFFFFFFFFFFFFFFFFFFF380E000FF9FFFFFFFDFFFFFFFFFFFFFFFFFFFFF",
      INIT_3E => X"FFFFFFFFFFFFFEF01E02BFF9FFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3F => X"FFCE01E023F9BFFFFFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_40 => X"F3FFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_41 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C00C01F1",
      INIT_42 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1C00C07C7F3FFFFFFDFF",
      INIT_43 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3C0001FFFEFFFFFFFFFFFFFFFFFFFFF",
      INIT_44 => X"FFFFFFFFFFFFFFFFFFFFFE780001FFFEFFFFFFF7FFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_45 => X"FFFFFFFFFFCF80000EFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_46 => X"E00003FFFFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_47 => X"FFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB",
      INIT_48 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3E00003FFFFF",
      INIT_49 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E0000E7FFFFFFFFEFFFFFF",
      INIT_4A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7F00007BFFFFFFFFDFFFFFFFFFFFFFFFFF",
      INIT_4B => X"FFFFFFFFFFFFFFFFFFC7F000078FFFFFFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4C => X"FFFFFFF87C0000083FFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4D => X"000000FFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FC0",
      INIT_4F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F800000003FFFF",
      INIT_50 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E000000001F7FFEFFFFFFFFFF",
      INIT_51 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFD7C000000000F87FDFFFFFFFFFFFFFFFFFFFFF",
      INIT_52 => X"FFFFFFFFFFFFFFF9F80000000001C2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_53 => X"FFFF3F800000000001E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_54 => X"0000001FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_55 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7F80000",
      INIT_56 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFE0000000000001BFF",
      INIT_57 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FC0000000000385FFFFFFFFFFFFFF",
      INIT_58 => X"FFFFFFFFFFFFFFFFFFFFFFF3FC0000000000307FFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_59 => X"FFFFFFFFFFFF7F80000000000FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5A => X"CFE000000000007DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5B => X"0007BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFE00000000",
      INIT_5D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FC0000000000137FFFFFF",
      INIT_5E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F8000000000007FFFFFFFFFFFFFFFFFF",
      INIT_5F => X"FFFFFFFFFFFFFFFFFFFE5F000000000003EFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_60 => X"FFFFFFFFDFE000000000007DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_61 => X"000000000007BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_62 => X"7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FF",
      INIT_63 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFE00000000000",
      INIT_64 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE77E00000000000F7FFFFFFFFF",
      INIT_65 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFEFFC00000000001EFFFFFFFFFFFFFFFFFFFFF",
      INIT_66 => X"FFFFFFFFFFFFFFFFCFF800010000001EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_67 => X"FFFFF97D800030000003DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_68 => X"0000000039FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_69 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2FD000",
      INIT_6A => X"0000000000000000000000000000000000000000FFFFFFF0FFFE000000001F7F",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000002000000000",
      INIT_6F => X"00000000000000064438376C801000000800000069E2C4000D9B5701E3800000",
      INIT_70 => X"0000342C2F10A0000002A6282B5103D5601019208A421C980000000000000000",
      INIT_71 => X"42804AE81A9B0A85E01D0040004362A001E08000000000000000000000000000",
      INIT_72 => X"209906660500900810E1200CE800000000000000000000000000000000505184",
      INIT_73 => X"5D005012330049C0000000000000000000000000000000959924922004AE950B",
      INIT_74 => X"08C800000000000000000000000000000002CAC34295802080A8AA490A540C03",
      INIT_75 => X"0000000000000000000000000000000000030000000000008C00414000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "UPPER",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15 downto 0) => addra(15 downto 0),
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => CASCADEINA,
      CASCADEINB => CASCADEINB,
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOADO_UNCONNECTED\(31 downto 1),
      DOADO(0) => douta(0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => '1',
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized2\ is
  port (
    DOADO : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DOPADOP : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized2\ : entity is "blk_mem_gen_prim_wrapper_init";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized2\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized2\ is
  signal ena_array : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"FFFFFFFFFFFFFF9FFFFFFFF03007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_01 => X"FFFDFFFFFFFE0621FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_02 => X"E0E02FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_03 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFDFFFFFFF",
      INITP_04 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFDFFFFFFFC3E03FFFFFF",
      INITP_05 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFF9FFFFFFF87807FFFFFFFFFFFFFFFFF",
      INITP_06 => X"FFFFFFFFFFFFFFFFFFFEFFF9FFFFFFF8F80BFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_07 => X"FFFFFFFFFFFFDFFFFFFF1E40FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_08 => X"F9FFFFFFF1801FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_09 => X"00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FFFFFFE0C",
      INITP_0B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFDFFFFFFE0C43FFFFFFFFF",
      INITP_0C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFDFFFFFFC0E21FFFFFFFFFFFFFFFFFFFF",
      INITP_0D => X"FFFFFFFFFFFFFFFFFDFFFCFFFFFFE3E03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0E => X"FFFFFFDFF8EFFFFFFE3E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0F => X"FFFFFFC3E37FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_00 => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_01 => X"DFDFDFDFDFDFDFDFBFDFBFDFDFDFDFDFDFDFDFDFBFDFBFBFBFBFBFBFBFBFBFBF",
      INIT_02 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_03 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF",
      INIT_04 => X"57169332D08E2D0D4E8FB0B158DEFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_05 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFFF7CD9D9D9B8",
      INIT_06 => X"FFFFFFFFFFFFDFDFDFFFFF5BD59494B47373535393729292D315D8DEDEFFFFFF",
      INIT_07 => X"DFDFDFDFDFDFDFDFDFFFFFDFFFFFFFFFFFFFDFDFDFDFDFDFDFFFFFFFFFFFFFFF",
      INIT_08 => X"BFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_09 => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDFDFBFBFBFBFBF",
      INIT_0A => X"BFBFBFBFBFBFDFDFBFDFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_0B => X"DFDFDFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFBF",
      INIT_0C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_0D => X"9CFFFFFFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0E => X"FFFFFFFFFFFFFFFFFFFFDFFFFFFF9DFAB998977736F573F18F2DEC4D4EB0B095",
      INIT_0F => X"B4B4B4D494947373937292B3D3F5B8DEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_10 => X"DFDFDFDFDFFFDFDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFFFFFDF3B",
      INIT_11 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFDFDFDFDF",
      INIT_12 => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDFDFDFDFDFDFDFDF",
      INIT_13 => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_14 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFDFBFDFDFBF",
      INIT_15 => X"FFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFDFDFDFDFDFDFDF",
      INIT_16 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_17 => X"FFDE5CB998571616B47332B08F2D0D2D4E8F12D9FEFFFFFFDFDFFFFFFFFFFFFF",
      INIT_18 => X"D4F5B8BEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_19 => X"DFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFFFDFFFFAB4D4B4D4B49373737392B3D3",
      INIT_1A => X"DFDFDFDFDFDFDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDF",
      INIT_1B => X"DFBFBFBFBFBFBFBFBFBFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_1C => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_1D => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFBFDFBFDFDFBFBFDFDFDFDFDFDFDFBFBFBFBF",
      INIT_1E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_1F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_20 => X"6F0D0D6EB0D0D5DDFFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_21 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7CD9985736D574323232B0",
      INIT_22 => X"FFFFFFDFFFFFFF99D4B4B3D4B39373727392B3D3D4F5B8BEFFFFFFFFFFFFFFFF",
      INIT_23 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_24 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_25 => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDFDFBFDFDFDFDFDFDFDFDFDF",
      INIT_26 => X"DFDFBFDFBFDFDFBFBFDFDFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_27 => X"FFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_28 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFF",
      INIT_29 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2A => X"FFFFFFFFFFFFFFDFDEFA987716D5943211F1D08F6F4E4E8FF1535CFEFFFFFFFF",
      INIT_2B => X"9372727252527292D31598BEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2C => X"FFFFDFDFDFDFDFFFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFDFFFFFDF57B4B3B3B3",
      INIT_2D => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2E => X"BFBFBFBFBFBFBFBFDFDFBFBFBFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_2F => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_30 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFBFBFBFBFDFDFBFDFDFBFBFDFBFDF",
      INIT_31 => X"FFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_32 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_33 => X"F493531111F0AFAF6F908FB03298FEFFFFDFDFDFFFFFDFFFFFFFFFFFFFFFFFFF",
      INIT_34 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDF7C985635",
      INIT_35 => X"FFFFFFFFFFFFFFFFFFDFFFFFFFFFDE37B4F4D4D49251523152527292D315979D",
      INIT_36 => X"DFDFDFDFDFDFDFDFDFDFFFDFDFDFDFDFDFDFDFDFDFFFDFDFDFDFDFFFFFDFDFDF",
      INIT_37 => X"BFBFBFDFBFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_38 => X"BFBFBFBFBFBFBFBFBFBFBFBFBF9FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_39 => X"DFDFDFBFDFDFDFDFDFDFDFDFBFDFDFBFBFDFDFDFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_3A => X"DFDFDFDFDFDFDFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_3B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDF",
      INIT_3C => X"949DFEFFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFDF9FFA971492723211F0F010D0AF8F8FAFD0",
      INIT_3E => X"FFDFBEF693D4B3B37251525152527292B3F5977CFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3F => X"FFFFFFFFFFFFFFFFFFFFDFDFDFDFDFFFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_40 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFDF",
      INIT_41 => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDFDFBFBFBFDFBFDFDFDFDFDFDFDFDF",
      INIT_42 => X"BFDFDFBFBFDFDFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_43 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFDFDFDFDFDFDF",
      INIT_44 => X"DFDFDFDFDFDFDFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFDFDFDF",
      INIT_45 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_46 => X"FFFFDE7CD8D856B453F190709090908F8EAFD1333CFFFFFFFFFFFFFFFFFFFFFF",
      INIT_47 => X"525272739315767CFEFFFFFFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFFFFFFF",
      INIT_48 => X"DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5CD5B493735273735232",
      INIT_49 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFDFFFFFFFFFDFDFDFDFDFDFDFDFDF",
      INIT_4A => X"BFBFBFBFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_4B => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_4C => X"DFDFDFDFDFDFDFDFDFDFDFDFBFBFDFBFBFBFBFBFBFDFBFBFBFDFBFDFBFBFBFBF",
      INIT_4D => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_4E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFFFFFFFDFDF",
      INIT_4F => X"0E2E4E6F6DCFF178DEFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_50 => X"DFDFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFFFFFFFFFFFBDFAD8775656D412900E",
      INIT_51 => X"FFFFFFFFFFFFFFFFFFFF1AD5B37252525232321231725252B315565BFEFFFFDF",
      INIT_52 => X"DFDFDFDFFFDFDFDFDFDFFFDFDFDFDFDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_53 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_54 => X"BFBFBFBFBFBFBFBFBFBF9F9F9FBFBFBFBFBFBFBFBFBFBFBFBFBFDFDFDFBFDFDF",
      INIT_55 => X"DFBFDFDFDFDFDFDFDFDFDFBFBFDFDFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_56 => X"DFDFDFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_57 => X"FFFFFFFFFFFFFFFFDFDFDFDFDFDFDFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_58 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_59 => X"FFFFFFDFDFFFFFFFFFDE5BFAB8975615F593F16F0EED0D4E8E8F537DFFFFFFFF",
      INIT_5A => X"93725252523232323151525293F4353BFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5B => X"DFDFDFDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9D4",
      INIT_5C => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFFFFFFFFFFFDF",
      INIT_5D => X"BFBFBFBFBFBFBFBFBFBFBFBFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_5E => X"DFDFDFDFDFDFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_5F => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_60 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDF",
      INIT_61 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_62 => X"97765515D49332D08F0DCC2D6EF1FAFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_63 => X"93F4151ADEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFFFFFFFFF9CFAD9",
      INIT_64 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFF98D4725131315252523251515272",
      INIT_65 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFFFFF",
      INIT_66 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFF",
      INIT_67 => X"BFBFBFBFBFBFBFBF9FBFBFBFBFBFBF9FBFBFBFBFBFBFBFBFBFBFBFBFDFDFDFDF",
      INIT_68 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFBFBFBFBFBF",
      INIT_69 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_6A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDF",
      INIT_6B => X"8F16DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6C => X"FFFFFFFFFFFFFFFFFFFFFFDFDFFFFFDFBD3A19B89755F4B4B47331F1D0AF6E0D",
      INIT_6D => X"FFFFDFDFFFFE579331101030315252315051515272D415D9DEFFFFFFFFFFFFFF",
      INIT_6E => X"FFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFFFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6F => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFFFFFFFFFFF",
      INIT_70 => X"BFBFBF9FBFBFBFBFBFBFBFBFBFBFBFBFDFDFDFDFBFBFBFDFDFDFDFDFDFDFDFDF",
      INIT_71 => X"BFBFBFBFBFBFBFBFBFBFBFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9FBFBFBF",
      INIT_72 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBF",
      INIT_73 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_74 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_75 => X"DFFFFFFF9C1919B79635F4B4933231F1D0B0AFAF533BFFFFFFFFFFFFFFFFFFFF",
      INIT_76 => X"315151312FEFAFAF1051D498BEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF",
      INIT_77 => X"DFDFDFDFFFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFFEFE567231301030",
      INIT_78 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFFFDFDFDFDFDFDFDFDFDFDFDFDFFFDFDFDFDFDF",
      INIT_79 => X"BFBFBFBFBFBFBFBFBFBFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_7A => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9FBFBFBFBFBFBF9FBFBFBFBFBFBFBFBF",
      INIT_7B => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFDFDFDFDFDFDFDFDFBFDFDFDF",
      INIT_7C => X"FFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_7D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7E => X"533131F1D0F0111057FEDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7F => X"DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFF9D3A19D8967514B393",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => DOADO(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => DOPADOP(0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena_array(3),
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => addra(14),
      I1 => addra(15),
      I2 => addra(13),
      I3 => addra(12),
      O => ena_array(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized20\ is
  port (
    douta : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized20\ : entity is "blk_mem_gen_prim_wrapper_init";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized20\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized20\ is
  signal CASCADEINA : STD_LOGIC;
  signal CASCADEINB : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B\ : label is "PRIMITIVE";
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_01 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_02 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_03 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_04 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_05 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_06 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_07 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_08 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_09 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_10 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_11 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_12 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_13 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_14 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_15 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_16 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_17 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_18 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_19 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_20 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_21 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_22 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_23 => X"FFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_24 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_25 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_26 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_27 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_28 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_29 => X"FFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2A => X"FFFC9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0BFFFFF",
      INIT_2D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800FFFFFFFFFFFFFFFFF",
      INIT_2E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_30 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_31 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_32 => X"FFFF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_33 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_34 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9BFFFFFF",
      INIT_35 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3FFFFFFFFFFFFFFFFF",
      INIT_36 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_37 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_38 => X"FFFFFFFFFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_39 => X"01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF01FFFFFFFFF",
      INIT_3C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF83FFFFFFFFFFFFFFFFFFFF",
      INIT_3D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3E => X"FFFFFFFFFFFFFFFFFFFFC7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3F => X"FFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_40 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3F",
      INIT_41 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1FFFFFFFFFFF9F",
      INIT_42 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7FFFFFFFFFFF9FFFFFFFFFFFF",
      INIT_43 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFE1FFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_44 => X"FFFFFFFFFFFFFFFC07FFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_45 => X"FFFFF87FFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_46 => X"FFFFFE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_47 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF87FFF",
      INIT_48 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7FFFF",
      INIT_49 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF86FFFFFFFFFFFFFFF",
      INIT_4A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4C => X"FFDFFFFFFFFFFE1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4D => X"FFF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFF",
      INIT_4F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFFFFF",
      INIT_50 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7FFFFFFFFFFFFFFFFF",
      INIT_51 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_52 => X"FFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_53 => X"FFFFFFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_54 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_55 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_56 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFFF",
      INIT_57 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_58 => X"FFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_59 => X"FFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5F => X"FFFFFFFFFFFFFFFFFFF93FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_60 => X"FFFFFFFF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_61 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_62 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_63 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFF",
      INIT_64 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3FFFFFFFFFFFFFFFFF",
      INIT_65 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_66 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_67 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_68 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_69 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_70 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_71 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_72 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_73 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_74 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_75 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_76 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_77 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_78 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_79 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "LOWER",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15 downto 0) => addra(15 downto 0),
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => CASCADEINA,
      CASCADEOUTB => CASCADEINB,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => '1',
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
\DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFFFFFFFFFFFFFF",
      INIT_01 => X"FFFFFFFFFFFFFFFFFFFFFFFF9FFFFFFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_02 => X"FFFFFFFFFFFCFFFFFFFFC3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_03 => X"FFFFFFFFF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_04 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_05 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7DFEBF",
      INIT_06 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C227FFFFFFFFFFFF",
      INIT_07 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC001FFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_08 => X"FFFFFFFFFFFFFFFFFFFFFFFFFE017FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_09 => X"FFFFFFFFFFFFFFF04FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0A => X"FFFF09FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF33FFFFF",
      INIT_0D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF47FFFFFFFFFFFFFFFF",
      INIT_0E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0F => X"FFFFFFFFFFFFFFFFFFFFFFFF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_10 => X"FFFFFFFFF3FFF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_11 => X"FFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_12 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE05FFD3F",
      INIT_13 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC200E2C13FFEFFFE7FFF",
      INIT_14 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000001FFE7EFCFFFFFFFFFFFFFFF",
      INIT_15 => X"FFFFFFFFFFFFFFFFFFDFF0000000001FFE41E3FFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_16 => X"FFFFFFF80000000000003FC0387FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_17 => X"000000000779830FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_18 => X"BDC03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000",
      INIT_19 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000001C7",
      INIT_1A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00000000000030E7F00BFFFFFF",
      INIT_1B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFC000000000001FBCFC007FFFFFFFFFFFFFFFFF",
      INIT_1C => X"FFFFFFFFFFFFFFFC00000000000FF9FE0007FFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1D => X"FFFFC000000007FFFFEF8000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1E => X"0F7FFFFF80003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1F => X"03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8000000",
      INIT_20 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80000020F7FFFFF800",
      INIT_21 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80000040FFFFFFFC0003FFFFFFFFF",
      INIT_22 => X"FFFFFFFFFFFFFFFFFFFFFFFF00000180FFFFFFFE000BFFFFFFFFFFFFFFFFFFFF",
      INIT_23 => X"FFFFFFFFFFFFF000006007FFFFFFE0007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_24 => X"FF000718007FFFFFFF0007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_25 => X"FFFFFFF000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_26 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000001",
      INIT_27 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000001FFFFFFF001F",
      INIT_28 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000000001FFFFFFE003FFFFFFFFFFFF",
      INIT_29 => X"FFFFFFFFFFFFFFFFFFFFFE000800001FFFFFFF003FFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2A => X"FFFFFFFFFFE000000001FFFFFFC003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2B => X"000000001FFFFFF4007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2C => X"FFFF000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE",
      INIT_2D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000000000FF",
      INIT_2E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000000000FFFFFF000FFFF",
      INIT_2F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000000000FFFFFE001FFFFFFFFFFFFFFF",
      INIT_30 => X"FFFFFFFFFFFFFFFFFFFE000000001FFFFFF003FFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_31 => X"FFFFFFFFE000000001FFFFFC00BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_32 => X"0000000FFFFF800FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_33 => X"C0007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00",
      INIT_34 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000000000FFFF",
      INIT_35 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC000000000FFFF8000FFFFFFF",
      INIT_36 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFC000000001F7F60001FFFFFFFFFFFFFFFFFF",
      INIT_37 => X"FFFFFFFFFFFFFFFFFC00000000193E78001FFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_38 => X"FFFFFF800000000083808003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_39 => X"0000183000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3A => X"0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80000",
      INIT_3B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000830000",
      INIT_3C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00000000000000001FFFFFFFFFF",
      INIT_3D => X"FFFFFFFFFFFFFFFFFFFFFFFFFC00000000000000003FFFFFFFFFFFFFFFFFFFFF",
      INIT_3E => X"FFFFFFFFFFFFFF000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3F => X"FFF00000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_40 => X"000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_41 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00000000",
      INIT_42 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00000000000000003FF",
      INIT_43 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00000000000000003FFFFFFFFFFFFF",
      INIT_44 => X"FFFFFFFFFFFFFFFFFFFFFF80000000000000000FFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_45 => X"FFFFFFFFFFF00000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_46 => X"00000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_47 => X"000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC",
      INIT_48 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00000000000",
      INIT_49 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80000000000000001FFFFFF",
      INIT_4A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80000000000000003FFFFFFFFFFFFFFFFF",
      INIT_4B => X"FFFFFFFFFFFFFFFFFFF8000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4C => X"FFFFFFFF8000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4D => X"0000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4E => X"07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000",
      INIT_4F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00000000000000",
      INIT_50 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC000000000000001FFFFFFFFFF",
      INIT_51 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFE8000000000000003FFFFFFFFFFFFFFFFFFFFF",
      INIT_52 => X"FFFFFFFFFFFFFFFE0000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_53 => X"FFFFC000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_54 => X"000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_55 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8000000",
      INIT_56 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000007FF",
      INIT_57 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000003FFFFFFFFFFFFFF",
      INIT_58 => X"FFFFFFFFFFFFFFFFFFFFFFFC00000000000000FFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_59 => X"FFFFFFFFFFFF800000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5A => X"F000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5B => X"00007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0000000000",
      INIT_5D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00000000000000FFFFFFF",
      INIT_5E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000000000000FFFFFFFFFFFFFFFFFF",
      INIT_5F => X"FFFFFFFFFFFFFFFFFFFFA00000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_60 => X"FFFFFFFFE000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_61 => X"0000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_62 => X"07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00",
      INIT_63 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000000000000",
      INIT_64 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF880000000000000FFFFFFFFFF",
      INIT_65 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000001FFFFFFFFFFFFFFFFFFFFF",
      INIT_66 => X"FFFFFFFFFFFFFFFFF000000100000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_67 => X"FFFFFE800000300000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_68 => X"0000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_69 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD00000",
      INIT_6A => X"0000000000000000000000000000000000000000FFFFFFFF00000000000000FF",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000080000000000000000000",
      INIT_6F => X"00000000000000014B41C10040000000000000008401E70192084100C9800000",
      INIT_70 => X"00001180040C00000000AAA82B088C7ADC0010006C010CE80000000000000000",
      INIT_71 => X"0E0000406B0082C5C6CE08C20081250001D14000000000000000000000000000",
      INIT_72 => X"800AA14A019880011820000C1C000000000000000000000000000000021902A4",
      INIT_73 => X"F50016AA11308E40000000000000000000000000000000009000008000040632",
      INIT_74 => X"0090000000000000000000000000000000008868052A000080C8220C00D08008",
      INIT_75 => X"0000000000000000000000000000000000000000000000004044000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "UPPER",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15 downto 0) => addra(15 downto 0),
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => CASCADEINA,
      CASCADEINB => CASCADEINB,
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOADO_UNCONNECTED\(31 downto 1),
      DOADO(0) => douta(0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => '1',
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized21\ is
  port (
    douta : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized21\ : entity is "blk_mem_gen_prim_wrapper_init";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized21\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized21\ is
  signal CASCADEINA : STD_LOGIC;
  signal CASCADEINB : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B\ : label is "PRIMITIVE";
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_01 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_02 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_03 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_04 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_05 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_06 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_07 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_08 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_09 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_10 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_11 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_12 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_13 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_14 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_15 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_16 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_17 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_18 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_19 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_20 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_21 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_22 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_23 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_24 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_25 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_26 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_27 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_28 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_29 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_30 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_31 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_32 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_33 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_34 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_35 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_36 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_37 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_38 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_39 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_40 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_41 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_42 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_43 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_44 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_45 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_46 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_47 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_48 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_49 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_50 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_51 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_52 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_53 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_54 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_55 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_56 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_57 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_58 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_59 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_60 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_61 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_62 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_63 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_64 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_65 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_66 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_67 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_68 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_69 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_70 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_71 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_72 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_73 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_74 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_75 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_76 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_77 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_78 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_79 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "LOWER",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15 downto 0) => addra(15 downto 0),
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => CASCADEINA,
      CASCADEOUTB => CASCADEINB,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => '1',
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
\DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_01 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_02 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_03 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_04 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_05 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F",
      INIT_06 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFFFFFFF",
      INIT_07 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_08 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_09 => X"FFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0A => X"FFFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFFFF",
      INIT_0D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFF",
      INIT_0E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_10 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_11 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_12 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_13 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_14 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_15 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_16 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_17 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_18 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_19 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_20 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFFFFF",
      INIT_21 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFF",
      INIT_22 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_23 => X"FFFFFFFFFFFFFFFFFF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_24 => X"FFFFF8E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_25 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_26 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_27 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_28 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_29 => X"FFFFFFFFFFFFFFFFFFFFFFFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_30 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_31 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_32 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_33 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_34 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_35 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_36 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_37 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_38 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_39 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_40 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_41 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_42 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_43 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_44 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_45 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_46 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_47 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_48 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_49 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_50 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_51 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_52 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_53 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_54 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_55 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_56 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_57 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_58 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_59 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_60 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_61 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_62 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_63 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_64 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_65 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_66 => X"FFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_67 => X"FFFFFFFFFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_68 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_69 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6A => X"0000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"00000000000000066CDB366EC0200000080000047C421800D9B3760126000000",
      INIT_70 => X"000044262950A802FB6344C58052410520B00122804012140000000000000000",
      INIT_71 => X"44802A8900AAE8B43030520900980B24022F0000000000000000000000000000",
      INIT_72 => X"A294AD015E24301102822012F000000000000000000000000000000006429331",
      INIT_73 => X"0A00C991060101800000000000000000000000000000005420A552A802A89088",
      INIT_74 => X"00000000000000000000000000000000000664993264C02A36064CC14A047C45",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "UPPER",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15 downto 0) => addra(15 downto 0),
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => CASCADEINA,
      CASCADEINB => CASCADEINB,
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOADO_UNCONNECTED\(31 downto 1),
      DOADO(0) => douta(0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => '1',
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized3\ is
  port (
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized3\ : entity is "blk_mem_gen_prim_wrapper_init";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized3\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized3\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__2_n_0\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1C1E",
      INITP_01 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF01FEFFFFFF07B3F",
      INITP_02 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE03FEFFFFFE0706FFFFFFFFFFFF",
      INITP_03 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFE03FEFFFFFC0FDFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_04 => X"FFFFFFFFFFFFFFFEE3F6FFFFFC1FFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_05 => X"FFFFE0086FFFFF83E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_06 => X"FFF07C3BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_07 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0006FF",
      INITP_08 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFE0783FFFF",
      INITP_09 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FEFFFFE07837FFFFFFFFFFFFFF",
      INITP_0A => X"FFFFFFFFFFFFFFFFFFFFFFFFFC08EFFFFC0E03FFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0B => X"FFFFFFFFFFFFFF800FFFFFC7002FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0C => X"FFF800FFFFF9F107FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0D => X"91C0DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800DFFFF",
      INITP_0F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB801DFFFF13F8DFFFFFF",
      INIT_00 => X"FFFFFFFFFFFFFFFFFFFFDFDFFFFE1631F0EFEF101010D08FEFCFF03152119358",
      INIT_01 => X"DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFFFDFDFDFFFFFFFFF",
      INIT_02 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_03 => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDFDFBFBFBFDFDF",
      INIT_04 => X"DFDFDFBFBFBFBFDFDFDFDFDFDFDFDFDFBFDFDFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_05 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_06 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDF",
      INIT_07 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_08 => X"FFFFFFFFFFFFFFFFFFDEBD5AF9F9B75655F4B37211F01010EFF051B47EFFDFFF",
      INIT_09 => X"FFFEF632D08E8E8E6D6E8F315232537394B4F577FEFFFFDFFFFFFFFFFFFFFFFF",
      INIT_0A => X"FFFFFFDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFFFFF",
      INIT_0B => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0C => X"BFBFBFBFBFBFBFBFBFBFBFBFDFDFDFBFBFDFDFDFDFDFBFBFDFDFDFDFDFDFDFDF",
      INIT_0D => X"BFBFBFBFBFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_0E => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFBFBFBFBFBFBF",
      INIT_0F => X"DFDFDFDFDFDFDFDFDFDFDFDFDFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_10 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_11 => X"D8D8975535D49352F1F0F0F0EF315298FFDFFFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_12 => X"925152739393F457DDFFDFDFDFFFDFDFDFDFDFDFDFFFFFFFFFFFFFFFFFDE9CF9",
      INIT_13 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFFFFEB5F1AF6E6D4D4DAF3172",
      INIT_14 => X"DFDFDFDFDFDFDFDFDFFFDFDFDFDFDFDFDFDFDFDFDFDFFFDFDFDFDFDFDFDFDFDF",
      INIT_15 => X"DFBFBFBFBFDFDFBFBFDFBFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_16 => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9FBFBFBFBFBFBFBFBFBFBFBF",
      INIT_17 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFBFBF",
      INIT_18 => X"FFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_19 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1A => X"3152D57CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1B => X"FFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBDF9F9B8775614D49252313110F010",
      INIT_1C => X"DFDFDFDFDFDFFFFFFFFF94902D2D4D8ECFF03171B25151515151B336DDFFFFDF",
      INIT_1D => X"FFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1E => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFFF",
      INIT_1F => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDFDFDFDFDFDFDFDFDFBFBF",
      INIT_20 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_21 => X"FFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_22 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFFFFFFF",
      INIT_23 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_24 => X"DFDFDFFFDE3AF9B8771615D393523111101110105252D9FEFFFFFFFFFFFFFFFF",
      INIT_25 => X"ECECEC2D8EF0103050300F10F051B357DDFFFFDFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_26 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFF744E",
      INIT_27 => X"DFDFDFDFDFDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_28 => X"BFBFBFBFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_29 => X"BFDFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFBFBFBF",
      INIT_2A => X"DFDFDFDFDFDFDFDFDFBFDFDFDFDFDFDFDFDFDFDFDFDFDFBFDFDFDFDFDFDFDFDF",
      INIT_2B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_2C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFFF",
      INIT_2D => X"723111F0F0F0F01032D57CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2E => X"CF309277DDFFDFDFFFFEFFFFFFFFFFFFFFFFFFFFFFFFDFBD5BF9B8975615D493",
      INIT_2F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFF94F14E0C0C0D4D8EAEEF0FCF8E8E",
      INIT_30 => X"DFDFDFDFDFDFFFFFFFDFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFFFFFFFFFFFFF",
      INIT_31 => X"DFDFDFBFBFBFBFDFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_32 => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDFDFDF",
      INIT_33 => X"DFDFDFDFDFDFDFDFDFDFDFBFBFBFBFBFBFBFBFBFBFDFBFBFBFBFBFBFBFBFBFBF",
      INIT_34 => X"FFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFDFDF",
      INIT_35 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_36 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_37 => X"FFFFFFFFFFFFFFFFDFDFFF5CFAF9977635F5B4725211D0CFD0D011315298FEFF",
      INIT_38 => X"FFFFDFFFFFFED552D0D0D0CFAF6D4D6D6D8E8FD0F172F477DDFFDFDFFFFFFFFF",
      INIT_39 => X"DFDFDFFFFFFFFFDFDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3A => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFDFDFDF",
      INIT_3B => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDFDFDFDFDFBFBFBFBFBFBFBFBFDFDF",
      INIT_3C => X"DFDFDFDFDFDFDFDFBFDFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_3D => X"DFDFDFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBF",
      INIT_3E => X"FFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_3F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_40 => X"D998977615F5935231F0F0D0F0F03131B47CFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_41 => X"31100F0F103151727293B398DDFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFDFBEB9",
      INIT_42 => X"DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEB55211315252",
      INIT_43 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFFFDFFFFFFFFFFFDFDFDFDFDFDFDFDFDF",
      INIT_44 => X"BFDFDFBFDFDFDFDFDFDFDFBFDFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_45 => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_46 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFDFDFDFDFDFDFDFDFBFDFDFBF",
      INIT_47 => X"FFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFDFDFDFDFDFDFDFDF",
      INIT_48 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFFFFFFFFF",
      INIT_49 => X"D0CF101278DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4A => X"BEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFBD3BB8B89776561594733110CFEFCF",
      INIT_4B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFDEB43151103131F0101010515050507192B399",
      INIT_4C => X"DFFFFFDFDFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4D => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_4E => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDFBFDFDFDFDFDFDFDFBF",
      INIT_4F => X"DFDFDFDFDFDFBFBFBFBFBFBFBFBFBFBFBFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_50 => X"DFDFDFDFDFDFDFDFDFDFDFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_51 => X"DFDFDFDFDFDFDFDFDFDFDFDFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_52 => X"FFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_53 => X"DFFFFFFFFF9DB99777563616943332F1F0CFCFD0F0EF31735CFFDFFFFFFFFFFF",
      INIT_54 => X"FFBD74311010CFCFAFCFEFCF10EFEFEF3051B3DABEFFFFFFFFFFDFDFDFDFDFDF",
      INIT_55 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFF",
      INIT_56 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFDFDFDFDFDFFFDFDFDFDF",
      INIT_57 => X"9FBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDFDFDFBFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_58 => X"DFDFDFDFDFDFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDFDFBFBFBFBFBFBFBF",
      INIT_59 => X"DFDFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_5A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFF",
      INIT_5B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5C => X"F190906FAFAFCFD0F1F05257DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5D => X"CFCFCFEF1031D41BDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDE3A773615F5D493",
      INIT_5E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBD743110F0CFAFAFCFCFCF",
      INIT_5F => X"DFDFDFDFDFDFDFDFDFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFFF",
      INIT_60 => X"DFDFDFDFDFDFDFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_61 => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDFDF",
      INIT_62 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBF",
      INIT_63 => X"FFFFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDF",
      INIT_64 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_65 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_66 => X"FFFFFFFFFFFFFFFFFFDFDFDF9DB856F5D5D4B452B0B04FED0D4D8ED0F111731A",
      INIT_67 => X"FFFFFFFFFFFFFFFFBE7D335210F0CFAEAECEAEAEAFAEAECF1051F43BFEFFFFFF",
      INIT_68 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_69 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFFFFFFFFFFFFFFF",
      INIT_6A => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDFDFDFDFDFDFBFDFDFDFDF",
      INIT_6B => X"DFDFDFBFBFBFBFBFBFBFBFBFBFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_6C => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_6D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDF",
      INIT_6E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6F => X"3B5614F4365615D47312D1B08F4D4DAF115216DEFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_70 => X"31F0AEAEAEAECE8DAFAEAEEF0F71355BFEFFFFFFDFDFFFFFDFFFFFFFFFFFFFFF",
      INIT_71 => X"DFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFDE3C5352",
      INIT_72 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFFFDFDFDFDFDFDFDFDFFFDFDFDFDFDFDFDFDF",
      INIT_73 => X"BFBFBFBFBFBFBFBFDFDFDFDFDFDFDFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_74 => X"BFDFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_75 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFDFDFDFDFDFDFDFDF",
      INIT_76 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_77 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_78 => X"31EF8EAF1153D9DEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_79 => X"0F91759CFEDFDFDFDFDFFFFFFFFFFFFFFFDFFFBDD9B755F41515F5F4B4321211",
      INIT_7A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFB533210CEAEAE8E8DAE8DAFAEAE0F",
      INIT_7B => X"DFDFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFF",
      INIT_7C => X"DFDFDFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_7D => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDFDFDF",
      INIT_7E => X"DFDFDFDFDFDFDFDFDFDFDFBFDFDFDFDFDFDFDFDFBFDFDFBFBFBFBFBFBFBFBFBF",
      INIT_7F => X"FFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__2_n_0\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => addra(15),
      I1 => addra(13),
      I2 => addra(12),
      I3 => addra(14),
      O => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__2_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized4\ is
  port (
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized4\ : entity is "blk_mem_gen_prim_wrapper_init";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized4\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized4\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB000DFFFF0FFEFFFFFFFFFFFFFFFFFF",
      INITP_01 => X"FFFFFFFFFFFFFFFFFFFFFFB000DFFFE0FFCBFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_02 => X"FFFFFFFFFFFB001DFFFE07FCBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_03 => X"A001FFFFC7BF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_04 => X"E17FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_05 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF001FFFF87F",
      INITP_06 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF001BFFF9FFF1FFFFFFFFF",
      INITP_07 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF001BFFF1E3FEFFFFFFFFFFFFFFFFFFFF",
      INITP_08 => X"FFFFFFFFFFFFFFFFFFFFE001BFFF3C00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_09 => X"FFFFFFFFFE003BFFE7800DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0A => X"03BFFE7800FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF60",
      INITP_0C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6001BFFCF003F",
      INITP_0D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0003FFDC0077FFFFFFFFFFF",
      INITP_0E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000BFFB8007FFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0F => X"FFFFFFFFFFFFFFFFFEC001BFF7800FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_00 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_01 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_02 => X"FFFFFFFFFFDEFF3B98969635F5D4D4D493527251513010AF11947CDEFFFFFFFF",
      INIT_03 => X"FFFFFFFFFFB95331EF8ECFAE8D6D8DAEAFAFAFEF2F9176BDFFFFFFFFFFFFFFFF",
      INIT_04 => X"DFDFDFDFDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_05 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFF",
      INIT_06 => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDFDFDFDFDFDFBFDFDFDFDFDFDFDFDF",
      INIT_07 => X"DFDFDFDFDFDFDFDFBFDFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_08 => X"DFDFDFDFDFDFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBF",
      INIT_09 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_0A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0B => X"D49393B3927271715030F0F13258DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0C => X"8E6E8E8EAE8FB0EF4F9178BFDFFFFFFFFFFFFFFFFFFFFFFFFFFE9CB856767656",
      INIT_0D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEB85210AEAFAFAE",
      INIT_0E => X"DFDFDFDFDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFFFFF",
      INIT_0F => X"BFDFDFBFDFDFDFDFDFDFDFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_10 => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_11 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFBFBFBFBFBFBFBFBFDFBFBF",
      INIT_12 => X"FFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFDFDFDFDF",
      INIT_13 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_14 => X"32FADEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFFFFFFF",
      INIT_15 => X"DFFFFFFFDFFFFFFFFFFFFFFFFFFE1A777614353615F59352315151715110AFD0",
      INIT_16 => X"FFFFFFFFFFFFFFFFFFDFFFFFDE575210EFCF8E8EAE6E8E8E8E6FB00F4FB2D9DF",
      INIT_17 => X"DFDFDFDFDFDFDFFFDFDFDFDFDFDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_18 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFDF",
      INIT_19 => X"DFDFDFDFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDFDFDFDFDFDFBF",
      INIT_1A => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_1B => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_1C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDF",
      INIT_1D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1E => X"FF7C985635D3B2B3D415D3723030301110F0AFF1947CDEFFDFFFFFFFFFFFFFFF",
      INIT_1F => X"DE3672F0CF8EAF8E8E8E8E8E6D6EB00F4FD31BDFDFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_20 => X"DFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_21 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFDFFFFFFFFFFFFFFFFFFFFFDFDFDFDF",
      INIT_22 => X"BFBFBFBFBFBFBFBFDFDFDFDFDFDFDFDFDFDFDFBFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_23 => X"DFDFDFDFDFDFDFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFBFBFBFBF",
      INIT_24 => X"DFDFDFDFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_25 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_26 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_27 => X"715010F0AFAFD032B9DEFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_28 => X"AD8ED02F70F33BFFFFFFFFFFFFFFFFFFFFFFFFDEDED9975514D3925193B3B392",
      INIT_29 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEF55210CFAFAF8E8EAEAEAE",
      INIT_2A => X"DFDFDFFFFFDFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFFFFFFFFFFFFF",
      INIT_2B => X"DFDFDFDFDFDFDFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_2C => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_2D => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFBFBFBFBFBFBFBFBFDFBFBFBFBFBFBF",
      INIT_2E => X"FFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_2F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_30 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFFFFFFF",
      INIT_31 => X"FFFFFFFFFFFFFEFE7B7735F4D27251101131505070705130EFF0F0B55CDFFFFF",
      INIT_32 => X"FFFFFFFFFFDFFFFFBDD57231CFAEAF8E8E8E8E8DADAECF2F90147DDFDFFFFFFF",
      INIT_33 => X"DFDFDFFFDFDFDFDFDFDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_34 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFDFDFDFDFDF",
      INIT_35 => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDFDFDFDFDFDFBFDFDFDFDF",
      INIT_36 => X"DFDFDFBFDFDFDFDFDFDFDFDFBFDFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_37 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_38 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDF",
      INIT_39 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3A => X"923131F0CFCF0F0F0F2F3010103152D9FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3B => X"CE8E8E8E8E8E8E8DACCEF02F91359DDFDFFFFFFFFFFFFFFFFFFEFEDDF97614D3",
      INIT_3C => X"DFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFF7DB45210",
      INIT_3D => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDF",
      INIT_3E => X"BFBFBFBFBFBFBFBFDFDFDFDFDFDFDFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_3F => X"BFDFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_40 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFDFDFDFDFDFDFDFDF",
      INIT_41 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_42 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_43 => X"3131F55CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_44 => X"B236DEFFFFFFFFFFFFFFDFFFFFFFDD9A9635D3925110F0F0AF8ECFCFEFEEEFF0",
      INIT_45 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5BB452CFAFAE8E6E8EAEAEAEADCEEF50",
      INIT_46 => X"DFDFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFFFFFFFFFDFDFDFDFDFDF",
      INIT_47 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_48 => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDFDFDF",
      INIT_49 => X"DFDFDFDFDFDFDFDFDFDFDFBFDFDFDFDFDFDFDFDFDFBFDFDFBFBFBFBFBFBFBFBF",
      INIT_4A => X"FFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_4B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4D => X"FFFFDCF775D3925110EFCFCFAE8EAEAEAEAEAFF05193B9DEDFFFFFFFFFFFFFFF",
      INIT_4E => X"FFFFFFFF3B7352D0CF6E6E8E8EAEAEAEAEEE2F509357DEFFFFFFFFFFFFFFDFFF",
      INIT_4F => X"DFDFDFDFDFDFDFDFDFDFFFFFFFDFDFDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_50 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFF",
      INIT_51 => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_52 => X"BFBFBFBFBFBFBFBFBFBFBFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_53 => X"DFDFDFDFDFDFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBF",
      INIT_54 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_55 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_56 => X"AEAE8E8E8EAED0F031F59DFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_57 => X"8E8EAECEAEEF0E0F9357DDFFFFFFFFFFFFFFFFFFFFFF7B76349251300FEFAEAE",
      INIT_58 => X"FFDFDFDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFA7331F0AF8E8E6E",
      INIT_59 => X"DFDFDFDFDFDFDFDFDFDFFFDFDFDFDFDFDFDFDFFFDFDFDFDFDFDFDFDFDFDFDFFF",
      INIT_5A => X"BFBFBFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_5B => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_5C => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_5D => X"FFFFFFFFFFFFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDF",
      INIT_5E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_60 => X"FFFFFFFFFFFFFFFFFF9D9815B2511010CFAE8DAECEAEAEAE8ECF1032B41BFFFF",
      INIT_61 => X"FFFFFFFFFFFFFFFFFFFFFFBE575331EFAE6E8E8E8E8E8ECFAFAEEE0F5136DDFF",
      INIT_62 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_63 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_64 => X"BFBFBEBEBEBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_65 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_66 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_67 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDF",
      INIT_68 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_69 => X"5130EFEFCEAEADAD8D8DAEAEAE10315278BEFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6A => X"D57331F0CFAF8F8F8E8EAE8EAFAECDEFF035BCFFFFFFFFFFFFFFFFFFDE1A3693",
      INIT_6B => X"DFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFFFDFBE",
      INIT_6C => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFDFDFDFDF",
      INIT_6D => X"BFBFBFBFBFBFBFBFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_6E => X"BFBFBFBFBFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_6F => X"DFDFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFBFBFBF",
      INIT_70 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_71 => X"FFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_72 => X"CF1052F57DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_73 => X"6EAEADAD1035BBFFFFFFFFFFFFFFDEFF7C77D43110CFAEAEADCEAD8D8D8DAECE",
      INIT_74 => X"DFDFDFDFDFDFDFDFDFDFDFFFDFDFFFDFDFFFDF5C945210CFAE8F6F6F4E6E8E8E",
      INIT_75 => X"DFDFDFDFDFDFFFDFDFDFDFDFDFDFDFFFDFDFDFDFDFDFDFDFDFDFFFDFDFDFDFDF",
      INIT_76 => X"BFBFBFBFBFBFBFBFBFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_77 => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_78 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFDFDFDFDFDFDFBFDFDFBFBFBFBFBF",
      INIT_79 => X"FFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFDFDFDFDFDFDFDFDF",
      INIT_7A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7C => X"FFFFFF9DB8F5721010EFAE8EADADADAD8DADEEEF3172D319FFFFFFFFFEFFFFFF",
      INIT_7D => X"DFDFFFFFFFFFFF99D532CF8E8D4E4E6F4E4E6E8E8FAEEE2F91145ADFFFFFFFFF",
      INIT_7E => X"DFFFFFFFDFDFDFDFDFDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7F => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFFFFFFFDF",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena_array(0),
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized5\ is
  port (
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized5\ : entity is "blk_mem_gen_prim_wrapper_init";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized5\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized5\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"FFFFFFEE007DFE7001DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_01 => X"CFEC003BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_02 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFF",
      INITP_03 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFCFDC0037FFF",
      INITP_04 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFC798407FFFFFFFFFFFFFFF",
      INITP_05 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE39C30EFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_06 => X"FFFFFFFFFFFFFFFFFFFFE01000DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_07 => X"FFFF9FFFFF01801BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_08 => X"3803FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_09 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFF8",
      INITP_0A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7C037FFFFFF",
      INITP_0B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FFFFFFFC06FFFFFFFFFFFFFFFFFF",
      INITP_0C => X"FFFFFFFFFFFFFFFFFFFFFFFF1FFFFFFFF06FFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0D => X"FFFFFFFFFFFFF1FFFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0E => X"FE7FFFFFFFFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0F => X"F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_00 => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDFBFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_01 => X"DFDFDFDFDFDFBFDFDFDFDFDFBFDFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_02 => X"DFDFDFDFDFDFDFDFDFDFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_03 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDF",
      INIT_04 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_05 => X"8E8D8EAECECEEF30529498DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_06 => X"8E4D6E8E6EAECFEFF010305172D3D79CFEFFFFFFFFFEDEFA3692102FCEAE8E8E",
      INIT_07 => X"DFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFFFDFFFBD36B45210CF",
      INIT_08 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFFFDFFFFFFFDFFFFFDFDFDFDFDFDFDFDF",
      INIT_09 => X"BFBFBFBFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_0A => X"BFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_0B => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFBFBFBF",
      INIT_0C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFF",
      INIT_0D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0E => X"DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0F => X"519235F9BDFFFFDFFEBD3A57D472CFCEAEAE6E4D6E8E8EAECECE0F5173579EFF",
      INIT_10 => X"FFFFFFFFFFFFFFFFFFDFDFFFFFFF7C36B3927151311030303051515192725131",
      INIT_11 => X"DFDFFFDFFFDFDFFFFFDFDFFFDFDFDFDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_12 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_13 => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDFDFDFDFDFDF",
      INIT_14 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFBFDFDFDFDFDFBFDFDFBFBFBFBFBFBFBFBFBF",
      INIT_15 => X"FFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_16 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_17 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_18 => X"9331D06E6E6E6E6E4D6E8EAECEEF5152167DDFDFDFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_19 => X"FFFFB9D5737292929292527272B3B3B3B2B2727292B314B75ABDFEDE9C1998F5",
      INIT_1A => X"DFDFDFDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFFF",
      INIT_1B => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFFFDFFFFFFFDFFFFF",
      INIT_1C => X"BFBFBFBFBFBFBFBFBFBFBFBFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_1D => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBEBFDFDFDFDFDFDFBFBFBF",
      INIT_1E => X"FFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_1F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_20 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_21 => X"CE0F52F53BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_22 => X"93B4B3D4D2D29272B3D33496F85A7B7B7BD876B352F1F16E2DEB2C4D4D6D8EAE",
      INIT_23 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDE37B573729293B3725272",
      INIT_24 => X"DFDFDFDFDFDFDFFFFFFFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFFF",
      INIT_25 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_26 => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDFDFDFDFBFBFBF",
      INIT_27 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFDFDFDFDFDFDFDFDFDFBF",
      INIT_28 => X"FFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_29 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2B => X"B6D8193939B735933211F1D08F0CEBEB0C6D8EAE0F31B4FADEFFFFFFFFFFFFFF",
      INIT_2C => X"FFFFFFFFFFFFFFFFDE9DF5949392727273725272B3B3B3D4F3F3B2B3B3D3F454",
      INIT_2D => X"FFDFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2E => X"DFDFBFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFF",
      INIT_2F => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDFDFDFBFBFBFDFDFDFDFDFDFDFDF",
      INIT_30 => X"DFDFDFDFDFDFDFDFBFBFDFBFBFBFBFBFBFDFBFBFBFBFBFBFBFBFBFBFBFDFBFBF",
      INIT_31 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_32 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFDFDFDFDFDFDF",
      INIT_33 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_34 => X"AF6E6D4D4D6D6EAF515298DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_35 => X"52727232323131515292B3D3F3F4B3B3B3D3D313557697B7F9B73572F0F0D0CF",
      INIT_36 => X"DFDFDFDFDFDFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFFFFF1BF5B3",
      INIT_37 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFDFFFDFDFFFFFDFDFFFDFDFDFDF",
      INIT_38 => X"BEBFBFBFBFDFDFDFBFBFBFBFDFBFBFBFBFBFBFDFDFDFBFBFDFDFDFDFDFDFDFDF",
      INIT_39 => X"DFDFDFDFBFDFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_3A => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFDFDF",
      INIT_3B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_3C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3D => X"FEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3E => X"B3D3B3B3B3D3F3F334557656979735B311AFCFCEAE8EAE8EAEAECE1052169CFF",
      INIT_3F => X"FFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFFFB915D4B3927252533151515172D3B2",
      INIT_40 => X"DFDFDFDFDFDFFFFFFFDFFFFFFFDFFFFFDFDFDFDFDFDFDFDFDFDFFFFFFFFFFFFF",
      INIT_41 => X"DFDFDFDFDFDFDFDFDFDFBFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_42 => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDFDFBFBFBFBF",
      INIT_43 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFDFDFDFDFDFDFBFDFDFDFBFBFBFBF",
      INIT_44 => X"FFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFDFDFDFDFDFDFDFDF",
      INIT_45 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFFFFFFFFFFFFF",
      INIT_46 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_47 => X"7636F593318F8E8EAEAEAECECEEF5093D41AFEFFFFDEDFFFFFFFFFFFFFFFFFFF",
      INIT_48 => X"FFFFFFFEDD37D5D4D4D4935272513151519292B3D3D3D3B3B3B3B4D4F4353556",
      INIT_49 => X"FFDFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF",
      INIT_4A => X"DFDFDFDFDFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFF",
      INIT_4B => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_4C => X"DFDFDFBFBFBFBFBFBFBFBFBFBFBFBFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_4D => X"DFDFDFDFDFDFDFDFDFDFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_4E => X"FFFFFFFFFFFFFFFFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDF",
      INIT_4F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_50 => X"EFEF92F598BDFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_51 => X"72313152729292B3D3F3D4D4D4B4B4B3B3D4F41514F4D5B472106E6DAF8E8EAE",
      INIT_52 => X"DFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFFE3BF5F5F5D4B49372",
      INIT_53 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFDFDFFFDFDFDFDFDFDFDFDF",
      INIT_54 => X"BFBFBFBFBFBFBFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFDFDFDFDFDFDF",
      INIT_55 => X"DFDFDFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_56 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_57 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFF",
      INIT_58 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFF",
      INIT_59 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5A => X"B3B4D4B4B4D4D4F4F4F4B4D4B372F08E8E8E8EAEAE51B3165CFFFFFFFFFFFFFF",
      INIT_5B => X"FFFFFFFFFFFFFFFFDFFFFFFEB9361515F4B3727272515151729292B3D3D3D4D4",
      INIT_5C => X"DFDFDFDFDFDFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFFFFFFFFF",
      INIT_5D => X"DFDFDFDFDFDFDFDFDFDFDFDFDFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_5E => X"DFDFDFDFDFBEBEBEBEBEBEBEBEBEBEBEBFBFBFBFBFBFBFBFBFBFBFBFDFDFDFDF",
      INIT_5F => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_60 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_61 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_62 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_63 => X"B3939251CFAFAFAFF072D4D9DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_64 => X"565615F5F4B3729272927151519292D3B3D3D39393B4D4B3B3D4D4B3B3D4D4D4",
      INIT_65 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDEBD",
      INIT_66 => X"DFDFDFDFDFDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_67 => X"BFBFBFBFBFBFBFBFBFBFBFBFBFDFDFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_68 => X"DFDFDFDFDFDFDFDFDFDFDFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_69 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_6A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_6B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6C => X"FFFFFFFFFFFFFFFFFFDEBDBDDDFEFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6D => X"517272B392B393729393939393D4D4B3D3D4D4D4D4D3D3D3B351313192F5577C",
      INIT_6E => X"DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDF3B365535F5F4B3527231725151",
      INIT_6F => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_70 => X"BFDFDFDFDFDFDFDFDFDFDFBFBFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_71 => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_72 => X"DFDFDFDFDFBFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFBFBFBFBFBFBFBFBFBFBFDF",
      INIT_73 => X"FFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_74 => X"DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_75 => X"7A7B9CDDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_76 => X"73B3B3B3D4D4F4F4F4D3F3D4D4D3B2B21456F9FEFFFFDFFFFFFEDEDEBD9C9C7B",
      INIT_77 => X"FFFFDFFFFFFFBE9856D3F4D4F4B3725131513151527272939292725272939352",
      INIT_78 => X"DFDFDFFFFFDFDFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFF",
      INIT_79 => X"BFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_7A => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDFDFDFDFDFDFBF",
      INIT_7B => X"DFDFDFDFDFDFDFBFDFDFDFDFDFBFDFDFDFDFDFDFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_7C => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFDFDFDFDF",
      INIT_7D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDF",
      INIT_7E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7F => X"F4D3F3F476987BFFDEFFDFDFFFBD9CBDBC9C9B7A7A5A3A5BBDFFFFFFFFFFFFFF",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena_array(0),
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized6\ is
  port (
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized6\ : entity is "blk_mem_gen_prim_wrapper_init";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized6\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized6\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3FFFFFFFF",
      INITP_01 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1EFFFFFFFE3FFFFFFFFF",
      INITP_02 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC067FFFFFFE7FFFF7FFFFFFFFFFFFFFF",
      INITP_03 => X"FFFFFFFFFFFFFFFFFFFFF822FFFFFFFC7FFFC3FFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_04 => X"FFFFFFFFFF8427FFFFFFCFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_05 => X"4BFFFFFFE09FFF01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_06 => X"FFF03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8",
      INITP_07 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF04BFFFFFFE0B",
      INITP_08 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF001FFFF7FF8FFFD07FFFFFF",
      INITP_09 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0187DFFBFF9FFFC05FFFFFFFFFFFFFFFFF",
      INITP_0A => X"FFFFFFFFFFFFFFFFFFC0103BFFBFFBFF8005FFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0B => X"FFFFFFFC018093F3FF7F80003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0C => X"8C7F3FE0200003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0D => X"06FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8638",
      INITP_0E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FF9EE1F3FC0000",
      INITP_0F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3FF9EF3F1F80E003F7FFFFFFFF",
      INIT_00 => X"D3F47231305131517272529292727272939393939393B3D4D4B3D3D3D3F4F4F4",
      INIT_01 => X"DFDFDFDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFF3C377714B372",
      INIT_02 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFDFDFDFDFDFDFDF",
      INIT_03 => X"BFBFBFBFBFBFBFBFBFDFDFDFDFDFDFDFDFDFDFBFBFBFDFDFDFDFDFDFDFDFDFDF",
      INIT_04 => X"BFDFDFBFBFDFDFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_05 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFDFDFDFDF",
      INIT_06 => X"FFFFDFDFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFF",
      INIT_07 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_08 => X"BDBDBCBCBC9B7B7A7A3B3A1A1ABDFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_09 => X"7272729373939373739393B4D4D4D3D3F4D3D3F3F4F4F43577D9BEFFFFFFFEFE",
      INIT_0A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFD9565656167373B372F03130317251515172",
      INIT_0B => X"DFDFDFDFDFDFDFDFDFFFFFFFFFFFFFFFDFFFFFFFFFFFFFDFDFDFDFDFDFFFFFFF",
      INIT_0C => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_0D => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_0E => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFBFBFBFBFDFBFBFBFDFBFDFBFBFBFBF",
      INIT_0F => X"FFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_10 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFDFDFFFFFFFFFFFFFFFFF",
      INIT_11 => X"D85BFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFFFFFFF",
      INIT_12 => X"B4D49393B3B3D3D3D3F4F456B81BDFFFFFFFFEBD9CBCBCBC9B9B7A7A5A3A3A19",
      INIT_13 => X"FF9D77565656363656F431F0F0103172513131517272927252727373937373B3",
      INIT_14 => X"FFFFFFFFDFDFDFDFDFDFFFDFDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFDFFF",
      INIT_15 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFFF",
      INIT_16 => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_17 => X"DFDFDFDFDFDFDFDFDFDFDFBFBFDFDFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_18 => X"DFDFDFDFDFDFDFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_19 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDF",
      INIT_1A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1B => X"FA5CDFFFDEDEBDBDDDBC9C9B9B7A5A5A3919F8D7B7D89CFFFFFFFFFFFFFFFFFF",
      INIT_1C => X"1030729231313151515172725272937352737393B3B3B3939292D3F4D4D51597",
      INIT_1D => X"DFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA57565615F577F87651EF",
      INIT_1E => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFFFFFFFFFFFDF",
      INIT_1F => X"BFBFBFBFBFBFBFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_20 => X"DFDFDFDFDFDFDFDFBFBEDFDFDFDFDFDFDFBEBEBEBEBEBEBEBEBEBEBEBFBFBFBF",
      INIT_21 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_22 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDF",
      INIT_23 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_24 => X"7A7A391919D8D7969676F9DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_25 => X"7272937352527293B3B3B39293B3F4F4D4F677D91A3B9DDFDEBD9CDDBCBC9B9B",
      INIT_26 => X"FFFFFFFFFFFFFFFFBD77567615D41598F8B7B2EFF05192925130101030305172",
      INIT_27 => X"FFFFFFFFFFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_28 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFFFFFFFFFFFFFFF",
      INIT_29 => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDFDFDF",
      INIT_2A => X"DFDFDFDFDFDFDFBFDFDFDFDFDFDFDFDFDFDFDFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_2B => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_2C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDF",
      INIT_2D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2E => X"B3B3F314153677D819B9FA5C7CBDDD9C9B9B9B7B5A5A3918F8D7B775555557BD",
      INIT_2F => X"35F415B819D7D3311051D3925131111110305171717272725231527293937292",
      INIT_30 => X"FFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFFFFFFFFFFE1A565655",
      INIT_31 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFFF",
      INIT_32 => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDFDFDFDFDFDFBFBFBFBFBFDFDFDFDF",
      INIT_33 => X"BFBFBFBFBFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_34 => X"DFDFDFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFBFBF",
      INIT_35 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_36 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_37 => X"BDBD9CBC9B9B7A5A39391918D7B796551415F6BEFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_38 => X"513111110F105051517272725252527272725293D3D3D314355696D718D83A9C",
      INIT_39 => X"DFDFDFDFDFDFDFDFDFFFFFFFFFFFFFBD7776765535F436D819B7F4723072B372",
      INIT_3A => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFDFDFDFDFDFDFDFDFFFDFDFDFDFDF",
      INIT_3B => X"BFBFBFBFDFDFDFDFDFDFDFBFBFBFDFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_3C => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_3D => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFDFDFDFDFDFDFDFDFBFDFDFBFBFBFBFBF",
      INIT_3E => X"FFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFDFDFDFDFDFDFDFDF",
      INIT_3F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_40 => X"B7B896551493F6BDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_41 => X"F0105172929272B3B3D3B3D3F43596F7597A9B7B9CBC7B7A7A595A3A3919F818",
      INIT_42 => X"FFFFDF1B77979796143597F9F87614D392B25131513110100F0F505151517231",
      INIT_43 => X"DFDFDFDFDFFFFFFFDFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFFF",
      INIT_44 => X"DFDFDFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_45 => X"BFBFBFBFBFBFBFBFBFBEBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDFDFDFDFDFDFBF",
      INIT_46 => X"DFDFDFBFDFDFDFDFDFDFDFDFDFBFDFDFDFBFBFBFBFBFBFDFDFDFDFDFDFDFBFBF",
      INIT_47 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_48 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDF",
      INIT_49 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4A => X"B437B85B5A7B9B9A9A9A7A7A391919191919F8D7D7B79755347216DEFFFFFFFF",
      INIT_4B => X"1876143555F45130100FEF0F0F1030515172715111F051729251317293B372B3",
      INIT_4C => X"FFFFFFDFDFDFDFDFDFFFFFFFFFFFFFFFDFFFFFFFFFFE7D787798B8773676B839",
      INIT_4D => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFDFFFFFFF",
      INIT_4E => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDFDFBFDFDFDFBFDFDFDFDFDFDFDFDF",
      INIT_4F => X"BFBFBFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9E9E9E",
      INIT_50 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFBFBFBFBFBFBF",
      INIT_51 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_52 => X"FFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_53 => X"39F8F9D8D8D8F8D7D797967634F457FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_54 => X"0F0F30307192725110F031515131517292B3D3B4B477195A7A7A7A5A59593919",
      INIT_55 => X"DFDFDFDFDFDFFFFFFFFEDA9898B898979797B839F8553496D796B35110CF0F0F",
      INIT_56 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFDFDFDFDFDFDFFFDFDFDFDFDFDFDFDFDF",
      INIT_57 => X"BFBFBFDFBFBFDFBFBFBFDFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_58 => X"DFDFDFDFDFDFBFBEBEBEBEBEBEBEBEBEBFBEBEBEBEBFBFBFBFBFBFBFBFBFBFBF",
      INIT_59 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFBFBFBFDF",
      INIT_5A => X"FFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_5B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5C => X"35153BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5D => X"51515172729293B3761939393959391918F8F8F8F8F8F8D8B7B7D7B7B6967675",
      INIT_5E => X"D9FAF9D8D8B7F95A195555D7D8B7751471CFCE0FEFEF303030717251EFCF3131",
      INIT_5F => X"DFDFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFF5CD9B9",
      INIT_60 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_61 => X"BEDEBEBEBEBEBEBEBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDFDFDFBFDFDFBFBF",
      INIT_62 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBEBEBEBEBEBEBEBEBE",
      INIT_63 => X"FFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_64 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_65 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_66 => X"F8F818F8B7F8D8D8D8D8F8D8B7B79675555535155637DEDFFFFFFFFFFFFFFFFF",
      INIT_67 => X"19F8B7769210AEADEF0F103030517251EFEF3131517151725272D3B7F8F8F8F8",
      INIT_68 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFBED9F9D9FA3A3AF9F8D81A5B195596F8",
      INIT_69 => X"DFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6A => X"BFBFBFBFBFBFBFBFDFDFDFDFDFDFDFBFDFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_6B => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBEBEBEBEBEBFBFBFBF",
      INIT_6C => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFDFDFDFDFDFDFDFDFDFDFBFBFBF",
      INIT_6D => X"FFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFDFDFDFDFDFDFDF",
      INIT_6E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFFF",
      INIT_6F => X"7676341313F3D415B45CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_70 => X"10515151F0D03131515151515192D7D7F8D7B796969676767656D7D7D7B7B7B7",
      INIT_71 => X"FFFFFFDF3BD8F8193B5B5B5A3A195B7B3976B718391939D7B37130EECEEFEF10",
      INIT_72 => X"DFDFDFDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFFFFFFFFFFFFF",
      INIT_73 => X"DFDFDFBFBFBFDFDFDFDFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_74 => X"BFBFBFBFBFBFBFBFBFBFBFBEBFBEBEBEBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDF",
      INIT_75 => X"DFDFDFDFBFBFDFBFBFBFBFBFDFDFDFDFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_76 => X"DFDFDFDFDFDFDFDFDFDFDFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_77 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDF",
      INIT_78 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_79 => X"92D7B7B796553535D4F4F4143555B7D7D7B676765514D2B2B1717273B9FFFFDF",
      INIT_7A => X"5A397B9B3AB7F8393A5A7AD8929291308DAE101030515231F0AFF03131317130",
      INIT_7B => X"DFDFDFDFDFDFFFDFDFDFDFDFDFDFFFFFFFFFFFFFFFDEFF9DD9D8185A7C7C7B5B",
      INIT_7C => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFDFDF",
      INIT_7D => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDFDFBFBFBFDFDFDFDFBFDF",
      INIT_7E => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_7F => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFDFDFBFDFDF",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena_array(0),
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized7\ is
  port (
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized7\ : entity is "blk_mem_gen_prim_wrapper_init";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized7\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized7\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFF3FFBEF0F0F07F80F8FFFFFFFFFFFFFFFFFFFF",
      INITP_01 => X"FFFFFFFFFFFFFFFEFFFBEF8F0F0FFEBEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_02 => X"FFFFC7FFFEFCC0AFC0FEAA7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_03 => X"1FFFA000A8CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_04 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7FFFE0",
      INITP_05 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF87FEFFFFFFFF000050",
      INITP_06 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FFFFFFFFE0F0004401FFFFFFFFFF",
      INITP_07 => X"FFFFFFFFFFFFFFFFFFFFFFFF3FFFFFFFF83FFFF3801FFFFFFFFFFFFFFFFFFFFF",
      INITP_08 => X"FFFFFFFFFFFFFFFFFFE7E19FFDFCA000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_09 => X"FFFFFFC0180154F7D4002FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0A => X"0006498006FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDD00000",
      INITP_0C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBB00300003C003B9000FF",
      INITP_0D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0000009407C60093001FFFFFFFFFFFFF",
      INITP_0E => X"FFFFFFFFFFFFFFFFFFFFC00000BFFFFEFFC33007DFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0F => X"FFFFFFFFF80000FDFFFC3FFC67FFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_00 => X"FFFFFFDFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_01 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_02 => X"F47676B776753414F392501030CF6EB8FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_03 => X"92B2F391EF8ECFEF10315130EFAECFF0515130D3D7D7B77655D39293525292D3",
      INIT_04 => X"DFDFFFFFFFFFFFFFFFDEDE1BD9F9387A7C7C5B7B5B5A5B7B3AD8193A3A7A5AD7",
      INIT_05 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDF",
      INIT_06 => X"BFBFBFBFBFBFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_07 => X"BFBFBFBFBFBFBFBF9EBFBFBFBFBFBFBFBFBFBFBFBF9EBFBFBFBFBFBFBFBFBFBF",
      INIT_08 => X"DFDFDFDFDFDFDFDFBFBFBFDFDFDFBFDFDFBFDFDFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_09 => X"FFFFDFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_0A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0B => X"6AE8CC369CFFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0C => X"CE2C6DEE0F10F419D8975615D39230111031517272D4F415F415D2F2713030AF",
      INIT_0D => X"1919597B9B9B7B7B7B5B5B7B39F8595A5B7C3A9771B2F3B230CECFEF31313030",
      INIT_0E => X"DFDFDFDFDFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFFFFFFFFFFFDFFF5CF9",
      INIT_0F => X"DFDFBFDFDFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_10 => X"BFBFBFBFBFBFBFBF9F9E9E9EBFBFBFBFBFBFBFBFBFBFBFBFDFDFDFDFDFDFDFDF",
      INIT_11 => X"DFBFBFDFBFBFDFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9EBFBFBF",
      INIT_12 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFDF",
      INIT_13 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFDFDFDFDFDFDFDFDF",
      INIT_14 => X"FFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_15 => X"7131CFAEAEAEEFEF10315151927171EF108E8A8729AFF576D99DDFFFFFFFFFFF",
      INIT_16 => X"3919595A5B5B3A5672B3B393510FAFCF52B3155757573657D5561957F5F5B3B3",
      INIT_17 => X"DFDFFFDFDFDFDFDFDFDFDFFFFFFFFFFFDFBEDAD9F9195A5A7B7B5B7B5A5B7B5B",
      INIT_18 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFDFDFDFDFDFDF",
      INIT_19 => X"BEBEBEBEBFBFBFBFBFBFBFBFDFBFBFBFBFBFBFDFDFDFBFBFBFBFDFDFDFDFDFDF",
      INIT_1A => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFDFBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBE",
      INIT_1B => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFDFDFDFDFDFBFBFBFBF",
      INIT_1C => X"FFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFDF",
      INIT_1D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1E => X"2FEF10D0CB66C70D31F597D8191ADEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1F => X"76D8F85A7B5B7BBEDEBE9D9D9DBD9C5B1A36526ECFCFCFAE8D8DAEAECFAEEFEF",
      INIT_20 => X"FFFFDFDFDF1BB9F9F9395A5B7B7B5B7B3A5A5B3A19195A7B7B7C1A9776767677",
      INIT_21 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFFF",
      INIT_22 => X"DFDFDFDFDFDFDFDFDFDFBFDFDFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFFFDF",
      INIT_23 => X"DFDFDFBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBFBFBFBFBFBFBFDFDFBFBFBF",
      INIT_24 => X"DFDFDFDFDFDFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_25 => X"DFDFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_26 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_27 => X"18191BDEFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_28 => X"5C5C5B7C7C9C3AD42D4EAFAE6C6C6D6D6D6D6D8D8DCE4EA7058BD0B33677D8D8",
      INIT_29 => X"7B9B7B7B3A5A5BF919197A7B5B5B5B7B7B7B7B9CBB9B9B9C9C9C9C7C7C7D7C7C",
      INIT_2A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFDEBE9DB9B9D9F8193A5B",
      INIT_2B => X"DFBFDFDFDFDFDFDFDFDFDFDFBFDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2C => X"9EBFBFBFBF9E9E9EBFBFBFBFBFBFBFBFBFBFBFBFDFDFDFBFDFBFDFBFBFDFDFBF",
      INIT_2D => X"BFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_2E => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFBFBFBFBF",
      INIT_2F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFFFFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_30 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_31 => X"2C0C0C2C0C0C4C4D0B6925E88F521597B8B8F8D7D7B7D97CFFFFDFFFFFFFFFFF",
      INIT_32 => X"3A5B7B5A5A7B7B9C9B9B7B7C7C7C7C5B5B3A1AD9785757B91B1B3BBCB84F2D2C",
      INIT_33 => X"DFDFDFDFDFDFDFFFFFFFDEDE1BB9D9F9193A5A7B9B9B7B5B5B7B7B3A1919395A",
      INIT_34 => X"BFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFDFDFDFDFDFFFDF",
      INIT_35 => X"BFBFBFBFBFBFBFBFBFBFBFBFDFBFDFBFBFBFBFBFBFBFDFDFDFDFDFDFDFDFDFDF",
      INIT_36 => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9EBFBFBFBF9E9E9EBFBFBFBF",
      INIT_37 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFBFDFDFDFDFBFDFDFBFBFBFBFBFBFBFBFBFBF",
      INIT_38 => X"FFFFFFDFDFDFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_39 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3A => X"B33677B8F9D9D8B6D6B6981BFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3B => X"3B3B3B3B3BDA995878FA3A7B9DDEDEBDBE1AECEBCBCBCCECECEBCB8AA786CC11",
      INIT_3C => X"DAF93A39395A7A7B7B9B5B5A5B5B3A5B5A7A5A5A5B5A5A39397A5A7B7B7B5B5B",
      INIT_3D => X"DFDFDFDFDFDFDFDFDFDFDFDFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFFFFFFFDE9D",
      INIT_3E => X"DFBFDFBFBFDFDFBFBFBFDFDFDFDFDFDFDFDFDFDFBFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_3F => X"BFBFBFBFBFBFBFBF9EBFBFBFBF9FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_40 => X"DFDFBFDFDFDFBFDFDFBFBFBFBFBFBFBFBFBFDFDFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_41 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_42 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDF",
      INIT_43 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_44 => X"9D9E7D9DBD9DB8498B8BCCABAB8B87052A8F521556B8B8B8B8D8B896967657B9",
      INIT_45 => X"3A3A3A5A5A5A393A3A1919F8F839393A3A3A19F9D9D9FA1A1ABADA3C5D5C7C7C",
      INIT_46 => X"DFDFDFDFDFFFFFFFDFDFDFFFFFFFFFFFDFFFBD3B1A3A5A59395A5A5B5B5B5A5A",
      INIT_47 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_48 => X"9F9F9F9FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFBFBFBFBFDFDFBFDFDFDFDF",
      INIT_49 => X"BFBFDFBFBFBFBFBFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9E9E9E9F9F9F",
      INIT_4A => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFDFDFBFDFDFDFBFDFDFBFBFBF",
      INIT_4B => X"FFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_4C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4D => X"4AC446EDF1D53698B8B8B8B8B8B8B7975635F577FFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4E => X"B7D8F91918F8F8D8977676B89778DA1CFC1CFC1CFC1CFBFB1B7C9C11E92A4A8A",
      INIT_4F => X"FFFFFFDFDF9D5B3A5A3A3A3A5A5A5A5A3B3A3A19393919193919F9F9F9D7D7B6",
      INIT_50 => X"BFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFFFDFFFFF",
      INIT_51 => X"BFBFBFBFBFBFBFBFBFBFBFDFBFBFBFBFBFDFDFDFDFBFDFDFDFDFDFDFDFDFDFBF",
      INIT_52 => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBF9E9E9E9F9F9F9F9F9F9FBFBFBFBFBFBFBFBF",
      INIT_53 => X"DFDFDFDFDFBFBFBFDFBFBFDFBFBFBFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_54 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_55 => X"FFFFFFFFFFFFFFFFFFDFFFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF",
      INIT_56 => X"B897977635D494B9FFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_57 => X"365799DB9ABBBBBBBADBBA99BA1B5AD8C809E98783E84E11B37697B8D8D8D8B8",
      INIT_58 => X"3939391A1A19F9193919F839F8D8B797777696569697D8F9D7B7B79777565635",
      INIT_59 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFDE5C1A1A3939191919",
      INIT_5A => X"BFBFBFBFBFBFDFDFDFBFDFDFDFDFDFDFDFDFDFBFBFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_5B => X"BEBEBEBEBEBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_5C => X"DFDFDFDFDFBFDFDFDFDFDFDFDFDFDFDFDFBFDFDFDFDFDFBFBEBEBEBEBEBEBEBE",
      INIT_5D => X"DFDFDFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFDF",
      INIT_5E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_5F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_60 => X"79993A5A4A4683E54A0DD09214B6F8D7D7D7B79796775614B3D4D51AFFFFFFFF",
      INIT_61 => X"B7D776B73556763656567697969676563514F4F4B4D558DA3859595959597979",
      INIT_62 => X"DFFFFFDFFFFFFFFFDFFEDD3A1AF9193919F91919F8F8F8F9F9F9D8D8B7B73939",
      INIT_63 => X"DFDFDFDFDFDFDFBFBFDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF",
      INIT_64 => X"BFBFBFBFBFBFBFBFBFBFBFBFDFBFBFBFBFBFBFDFDFDFDFDFDFDFBFBFBFBFDFDF",
      INIT_65 => X"DFDFDFDFDFBFDFDFDFDFDFBEBFBEBEBEBEBEBEBEBEBEBEBEBFBFBFBFBFBFBFBF",
      INIT_66 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFDFDFDFDFDFDFDFDFDFBFDFDFDFDFDFDF",
      INIT_67 => X"FFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFDFDFDFDFDFDFDFDFDFDF",
      INIT_68 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_69 => X"559575D796B77696753535B3D373F5DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6A => X"3514351535B3F4D47293167837F7F818181838581737B8F8ECE1878B0E8F11B3",
      INIT_6B => X"F9D8F8D7F8F8D8D8F8D8D8D8B89797977696979756565635F53636F515F43535",
      INIT_6C => X"DFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFFFFFF9EDE1AD9",
      INIT_6D => X"DFBFBFBFBFBFBFDFDFDFDFDFDFDFDFDFDFDFBFBFBFDFDFDFDFDFDFBFBFDFDFDF",
      INIT_6E => X"BFBF9EBFBFBFBFBFBFBFBFBFBF9F9F9F9F9F9F9FDFDFBFBFBFBFBFBFBFBFBFBF",
      INIT_6F => X"DFDFBFBFDFBFBFBFBFBFBFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_70 => X"DFDFDFDFDFDFDFDFDFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_71 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFFFDFDFDFDFDF",
      INIT_72 => X"727357DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_73 => X"F675B6D6D6D6F6F6D6F676D7AF668BED6FF172D3345455751435353414D3B372",
      INIT_74 => X"7776775635143514F415F49393B473D5D4D4F4D3D3F4F4D39292313110119437",
      INIT_75 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFFFFFDEDE1BB7D8B89797B7B7D8B7B7B7B7B797",
      INIT_76 => X"BFBFBFBFBFBFBFBFBFDFDFDFDFDFDFBFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_77 => X"BF9F9FBFBF9F9F9FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_78 => X"DFBFBFBFBFBFDFDFDFBFBFBFDFBFBFBFBFBFBFBFBFBF9EBFBFBFBFBFBFBFBFBF",
      INIT_79 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFDFDFDFDFDFDFBFDF",
      INIT_7A => X"FFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFDFDF",
      INIT_7B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7C => X"EF09CCB0F1327293D3F3F3D3B3B3B3B3B39272517293FAFEFFFFFFFFFFFFFFFF",
      INIT_7D => X"3253127393729292B3D3D3B39292F0CFAFAF32F5B5347595B5B5D5D595B41575",
      INIT_7E => X"FFFFFFFF9D78979777977697767656567676765636161514D3B3F4727272F032",
      INIT_7F => X"DFDFDFBFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena_array(0),
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized8\ is
  port (
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized8\ : entity is "blk_mem_gen_prim_wrapper_init";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized8\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized8\ is
  signal ena_array : STD_LOGIC_VECTOR ( 9 to 9 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"00FE07FFC1BFE43FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_01 => X"7FC2E7FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF60",
      INITP_02 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF73FFFE00FA090",
      INITP_03 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FA001CC03F001FFFFF",
      INITP_04 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC01FF803EC06480197FFFFFFFFFFFFFF",
      INITP_05 => X"FFFFFFFFFFFFFFFFFE80401FFFE3FFE0018063FFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_06 => X"FFFFFFF0001FFFFFFFFFC032086FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_07 => X"FFFFFFFFF8820007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_08 => X"40A87FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3FEF",
      INITP_09 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3FFFFFFFFFFC038",
      INITP_0A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7FFFFFFFFFF80B1827EDFFFFFF",
      INITP_0B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFA7FFFFFFFFFE074003C67FFFFFFFFFFFFFFFFF",
      INITP_0C => X"FFFFFFFFFFFFFFFE7FFFFFFFF807FA06FC0BFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0D => X"FFFFC7FFFFE1C1FFFFC13FC17FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0E => X"ED7FBFFF7FF03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0F => X"02FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF47CFFE2",
      INIT_00 => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDFDFBFBFBFBFBFBFBFBFBFBFBFDFDFDF",
      INIT_01 => X"DFBFBFBFDFDFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9E9EBFBFBFBEBEBFBF",
      INIT_02 => X"DFDFDFDFDFDFDFDFDFDFDFBFDFDFDFDFDFDFBFDFDFBFBFBFBFBFDFBFBFBFDFBF",
      INIT_03 => X"FFFFFFDFDFDFDFDFDFDFDFDFDFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_04 => X"FFFFFFFFFFFFFFFFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFF",
      INIT_05 => X"515151725152513192B47DDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_06 => X"51108E8E4D6EF19534F33475547474947372B314D06B0DB0D1D1325272D39251",
      INIT_07 => X"3536153535353515D4B3D4B3725272F0AFCFAFF0EF3211317251927251305151",
      INIT_08 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFFFFBF6F43556563555",
      INIT_09 => X"BFBFBFBFBFBFBFDFDFBFDFDFDFBFDFDFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_0A => X"BFBFBFBFBF9E9E9E9EBF9F9E9E9F9F9FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_0B => X"DFDFDFDFDFDFDFBFDFDFBFBFBFBFDFBFBFBFBFBFBFBFBFBFDFDFDFBFBFBFBFBF",
      INIT_0C => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFBFBFDFDF",
      INIT_0D => X"FFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFFFFFFFFDFDFDFDFDFDFDFDFDF",
      INIT_0E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0F => X"F31313121210939412534F2E90D011F0105130F0EF101031515273929236DEFF",
      INIT_10 => X"1111318E0D4D4D0C6DAF8ECF3131511010F010EFF0AF4D2DEC2EB0339171D2D2",
      INIT_11 => X"DFDFDFDFDFDFDFDFDFDFDFDE58B4D3F41415F4F4D4D5D5F5F4B3D3F3B2725110",
      INIT_12 => X"DFBFBFBFBFBFDFDFDFDFDFDFDFDFDFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_13 => X"9F9F9F9FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDF",
      INIT_14 => X"BFBFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9F9E9E9E9F9F9F",
      INIT_15 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFBFBF",
      INIT_16 => X"FFFFFFFFDFDFDFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_17 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFFFFFFFFFFFFFFFFFFF",
      INIT_18 => X"4ECFCFCFAECFCFAFCFF0F03192737231521AFFDFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_19 => X"AECFCFAEAF8E8E6E8E6E0DCCAB8B2EB1EFCF50B1B1B1D1D1D1D07353333312ED",
      INIT_1A => X"95739293B3D4B3B3D4F5B4B39352727251F0AE8E8F6EAF2DABABABCBCB0CEB4D",
      INIT_1B => X"DFDFDFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBE",
      INIT_1C => X"BFBFBF9FBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDFDFBFBFBFBFBFDFDFDFDFDFDF",
      INIT_1D => X"BEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBFBF9E9EBFBFBFBFBFBFBFBFBFBFBF",
      INIT_1E => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBEBEDFDFDFDFDFDFDF",
      INIT_1F => X"FFFFFFFFFFFFFFFFFFDFDFDFDFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_20 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFFFFFFFFF",
      INIT_21 => X"52F1F15257FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_22 => X"8B8BED0E6DCE0E2F4F4F8FB08F1212F3F334F20DEB2D4D6D6D8D6E6E8FCFF072",
      INIT_23 => X"1031F0CFCF6D4D2D0C2D2DEC8B4A6A498AAA698ACB2C4C4D6D2C2C0C0C0CAB8B",
      INIT_24 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFFDE1B531111115131315151523231",
      INIT_25 => X"BFBFBFDFDFBFDFDFDFBFDFDFDFBFDFDFDFDFDFDFDFDFDFBFDFDFDFFFFFFFFFFF",
      INIT_26 => X"BEBEBEBEBEBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDFDFDFDFDFBFBF",
      INIT_27 => X"DFDFDFBFBFBFBFBFBFBFBFBFDFBFBFBFBFBEBEBEBEBEBEBEBEBEBEBFBEBEBEBE",
      INIT_28 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFDFDFDFDFDFDFDFDF",
      INIT_29 => X"FFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_2A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFFFFF",
      INIT_2B => X"B0D1D2F2F3B2918BEB2C2C0C0C4D4E8FAF31108FAFD052B45CFFFFDFFFFFFFFF",
      INIT_2C => X"6A292929698A2928498AEB0B4D0CCBCBCBCBAB6B6A8BCCAD6CCDEE0E2E6F8FB0",
      INIT_2D => X"DFDFDFDFDFFFDE5732F18FD0CFAFCFD0D011F0D0AFAF6D4D4D2C0CEBCBEBCCAB",
      INIT_2E => X"DFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_2F => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFDFBFBFBFBFBFBFBFDFDFDFBFBFBFDFDFDFDF",
      INIT_30 => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9EBFBFBF9F9E9E9E9F9E9E9E9E9E9E",
      INIT_31 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFBFBFBFBFBFBFDFBFBFBFBFBFBFBFBFBF",
      INIT_32 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_33 => X"DFDFDFDFDFDFDFDFDFDFDFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_34 => X"2D4E8FAF318F6FD0D0327337FFFFFFDFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_35 => X"EBCBCBCBABABABABAB8B4A4A6CADEDEDCDEC2D6E8F4EB0F2B1B16C8B0C2DEC2D",
      INIT_36 => X"2D2D2E2D0D4E8F6E2D2C0CEBEBEBCBAA8A694A4A4A290908496A49292949ABEB",
      INIT_37 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFF7DB5F16E6E4E",
      INIT_38 => X"BFBFDFBFBFBFBFBFBFBFBFBFBFDFDFBFBFBFBFBFBFBFDFDFDFDFDFDFDFDFDFDF",
      INIT_39 => X"BFBFBFBFBF9EBFBFBFBF9EBFBEBFBFBFBFBFBFBF9F9F9F9F9FBFBFBFBF9F9F9F",
      INIT_3A => X"DFBFDFDFBFDFDFDFDFDFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_3B => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_3C => X"FFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_3D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3E => X"4A090A6BAC2D6E4DEC4ED0D1900E6B6E8E6E2D4E6E8FD08F2D6F6F90F111733B",
      INIT_3F => X"AAAA89496949494929292949286A8B4A8B8BABECEBECCBCB6A8ACBCCECECCC6A",
      INIT_40 => X"DFDFDFDFDFDFDFDFDFDFDFDFFFDFDA948F2DECABCCAB8BABECABEC0CCB8A8AAA",
      INIT_41 => X"DFBFBFBFBFDFDFDFDFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_42 => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFBFBFBFBFBFBFBFDFDF",
      INIT_43 => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9EBFBFBFBFBFBF",
      INIT_44 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFBFDFDFBFDFDFBFBFBFBFBFBF",
      INIT_45 => X"FFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_46 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_47 => X"2E8C6F8F4F6F4EB011B0AB86692C8EAFF032F6BDFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_48 => X"49498A8A8B8BACCCEDECABAB8B8BABCCEDED0E2E4E4E0E6F4E4ECC8BAC6F4F70",
      INIT_49 => X"FFBE38338F0DCC8B8B4A4A4A8B8B8A8A8A8A89696A6949494969494929494949",
      INIT_4A => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_4B => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDFBFBFDFDFDFDFDFDFDFDFDF",
      INIT_4C => X"BFBFBF9EBFBFBFBFBFBFBF9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9EBFBFBFBF",
      INIT_4D => X"DFDFDFDFDFBFBFBFBFBFBFBFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_4E => X"DFDFDFDFDFDFDFDFDFDFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_4F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_50 => X"2848EBCF1152F9DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_51 => X"ABABCCCDED0E6F6F4F6F6F90CD0DEDCD0E6F6FEDAC6FB06F4FB012B00DACAB8A",
      INIT_52 => X"4A6A4A29496989694A4A4A6949494A4A6A8A6A6A8A898AABABABACACEDACABCC",
      INIT_53 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFDE7D95D24ECC8B4A4A292949",
      INIT_54 => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_55 => X"9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9EBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_56 => X"DFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9EBFBFBFBFBFBFBF9E",
      INIT_57 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFDFDFDFDFDFBF",
      INIT_58 => X"FFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFDF",
      INIT_59 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5A => X"6F4A4EB08F6F0D0DD08FAFF1F1B0CCCCCCED0D2D0CAACB0DB0949CFEFFFFFFFF",
      INIT_5B => X"49696A6A6A6A6A6A8AAAAACBCBCCECCCABABABCCABABCC0D2E6F8FB0D03252B4",
      INIT_5C => X"DFDFDFDFDFDFDFFFFFFB34B16ECC8B4A4A092929294A4A492849694969698A6A",
      INIT_5D => X"BFBFBFBFBFBFBFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_5E => X"BEBEBEBEBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_5F => X"DFDFDFDFDFBFBFBFBFBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBE",
      INIT_60 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_61 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFFFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_62 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFF",
      INIT_63 => X"CCABCCEDECEC2D2D4D6E6EB012B9FEDEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_64 => X"CBECECCBCB2C0D0D0D0D4E8FF07293F493317272934EAC6FD04EAF8FF031106E",
      INIT_65 => X"4EEC6B4A4A09092929294A6949694969898AAA8AABABCBCCAB8B8B8BABAB8AAB",
      INIT_66 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEFFF61390",
      INIT_67 => X"BFBFBFBFDFDFDFDFDFDFBFBFBFBFBFBFBFBFDFDFDFDFDFDFDFDFDFBFDFDFDFDF",
      INIT_68 => X"BEBEBEBFBFBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBFBFBFBFBFBFBFBF",
      INIT_69 => X"DFDFDFDFDFDFDFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBEBEBEBEBEBEBE",
      INIT_6A => X"DFDFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_6B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_6C => X"169DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6D => X"93F4D4D4D452729293B3F16E6EF0F010F02DABABCCCCCCECECEC2D2D6EAFF052",
      INIT_6E => X"496969898989AACBCBECED4E4E0D0DECECEC0D0C6EAFCF103030517292B3F493",
      INIT_6F => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF9D95F18F4DEC8B4A2A29292929294949",
      INIT_70 => X"BFBFBFBFBFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFDFDFDFDFDFDFDFDFDF",
      INIT_71 => X"9E9E9E9E9E9E9E9E9E9E9E9EBFBFBFBFBFBFBFBFBFBFBFBFBFDFBFBFBFBFBFBF",
      INIT_72 => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9F9E9E9E9E9E",
      INIT_73 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFBFBFBFBFBFBFDFBFBFBFBF",
      INIT_74 => X"DFDFDFDFDFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFDFDFDFDFDFDFDFDF",
      INIT_75 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_76 => X"8FAB498AABEBEBCBCCECECEC0C0C0D2D6EAF32941BFFFFFFFFFFFFDEDFDFDFDF",
      INIT_77 => X"2A8BED2E32B41552AF1030500F307192F414F4B393D4F4B3D393939393737352",
      INIT_78 => X"DFDFDFFFFB12D06F4EEC6B6B4A09E8E809494A4969898AC9CACAEB0C4E2E8BA8",
      INIT_79 => X"BFBFBFBFBFBFBFBFBFBFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_7A => X"9F9F9F9F9F9F9F9F9F9F9F9FBFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_7B => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBEBFBF9FBFBFBFBFBFBFBFBFBFBFBF9E9E9E",
      INIT_7C => X"DFDFDFBFDFDFBFDFDFDFDFDFDFDFDFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_7D => X"DFDFDFDFDFDFDFDFDFDFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_7E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDF",
      INIT_7F => X"0C0C4E4E8FD05357DEFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena_array(9),
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => addra(14),
      I1 => addra(13),
      I2 => addra(15),
      I3 => addra(12),
      O => ena_array(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized9\ is
  port (
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized9\ : entity is "blk_mem_gen_prim_wrapper_init";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized9\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized9\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF07EFF84E77F9FFF7FC",
      INITP_01 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF87FFFD3E76F9FFFBFE07FFFFFFFFF",
      INITP_02 => X"FFFFFFFFFFFFFFFFFFFFFFFF87FFF27E26F9FFF9FC0DFFFFFFFFFFFFFFFFFFFF",
      INITP_03 => X"FFFFFFFFFFFFF87C3F9BE07FBBFF8F80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_04 => X"FE07E0067E07FBFFE8F81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_05 => X"7FBFFC07E37FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_06 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF07F8303E0",
      INITP_07 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF07FC007E07FFFFE03E2F",
      INITP_08 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF07BC00FA07FFFFC07F3FFFFFFFFFFFF",
      INITP_09 => X"FFFFFFFFFFFFFFFFFFFFFE03E3F3F18FFFFFC0FE1FFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0A => X"FFFFFFFFFFE01FFCF674FFFFFC1F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0B => X"03F83FCCCFFFFFC1F0BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0C => X"FFFC1F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE",
      INITP_0D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE01FFFF38CFF",
      INITP_0E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE01FFC1F0CBFFFF83F17FFF",
      INITP_0F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00FE1F81EFFFFF07C2FFFFFFFFFFFFFFF",
      INIT_00 => X"0E2F7092F31435B372D3D4B3D392B3B393937252D0EC6A49ABCBCBCBECEC0C0C",
      INIT_01 => X"6A4A08E80909292949698ACAEA0B2C2D0D0947E96B8CCD2EF132D451AF30502F",
      INIT_02 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF58F28F6E4EED8B4A",
      INIT_03 => X"BFDFBFBFBFBFBFBFBFBFBFBFBFBFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFBFDF",
      INIT_04 => X"BFBFBFBFBFBFBFBFBFBFBFBFBF9E9E9E9EBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_05 => X"DFDFDFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_06 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFDFDFDFDFDFDF",
      INIT_07 => X"DFDFDFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_08 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_09 => X"B493939372727232118FEC4A6AABCBCBCBCBEC0C2D2D4E6EAF11955DDFFFFFFF",
      INIT_0A => X"CBCB2DECC8872A8B6B8C8C4EF1319210CE0F10F010307192D33414B393D4D4B3",
      INIT_0B => X"DFDFDFDFFFFFFFFFDFFFDFDED5F18F4F2ECD8B4A4A49694928494949494989AA",
      INIT_0C => X"BFBFDFDFDFDFDFDFDFDFDFDFDFDFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFDFDF",
      INIT_0D => X"9E9E9E9E9E9F9F9F9F9F9F9F9FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_0E => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBEBEBEBEBEBEBEBE9E9E9E9E9E",
      INIT_0F => X"DFDFDFDFDFDFDFDFDFDFDFDFBFBFDFBFBFBFBFBFBFBFBFDFBFBFBFBFBFBFBFBF",
      INIT_10 => X"FFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_11 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFFFFFFFFFFFFFFFFFFF",
      INIT_12 => X"29498AABCBEC0C2D4E6E6E6E3153B9DFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_13 => X"8FF031EFCE0F51F030717292F43514D3B3F4F4B4B37293735231111111D06FAB",
      INIT_14 => X"53D0B06F2FCD8A2908290829696A694969AACBEB0C0C6A66A7ABCCACCD6B6B4E",
      INIT_15 => X"BFBFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFDFDFDFDFDFDFFFFFFFFFDFFFDF9C",
      INIT_16 => X"9FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_17 => X"BFBFBFBFBFBFBFBEBEBEBEBEBEBEBE9E9E9E9E9EBE9E9E9E9E9E9E9E9F9F9F9F",
      INIT_18 => X"BFBFDFDFDFDFDFDFDFDFDFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_19 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_1A => X"FFFFFFFFFFFFFFDFDFDFDFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_1B => X"11F6BD9EDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1C => X"F414F4B3D414F4D4B35272727252111111D08F0D8B2949ABEC2D2D4E4E6FAFCF",
      INIT_1D => X"A7E86A8ACBECECEBAA86864ACC0CEDCCAC4BAC2E4ED0F0EFEF305131517292B3",
      INIT_1E => X"DFDFDFDFDFBFDFDFDFDFDFDFDFDFDFDFDFFFDF1B12D0AF4E2ECC8B8B4A09C7A6",
      INIT_1F => X"BFBFBFBFBFBFBFBFBFBFDFBFBFBFBFBFBFBFBFBFBFBFBFDFDFDFDFDFDFDFDFDF",
      INIT_20 => X"BEBEBEBEBEBEBEBEBE9E9E9E9E9E9E9E9F9F9F9F9FBFBFBFBFBFBFBFBFBFBFBF",
      INIT_21 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFBFBEBEBFBEBEBEBEBEBEBEBEBEBEBEBEBEBEBE",
      INIT_22 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_23 => X"FFFFFFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDF",
      INIT_24 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_25 => X"927211F011D1B06ECCAB4A29AB0D0D4E6E6FAF11741BFFDFFFFFFFFFFFFFFFFF",
      INIT_26 => X"2DECECCC4A8BCD0D6EAFAFAEEF303152727272B3F435F492D4F4D4D3B3725272",
      INIT_27 => X"FFFFFFDFDFFFDF78D1906F4E2EEDCC294A4A08E8C7460446A7C7C7C7C749EC2D",
      INIT_28 => X"BFDFDFDFDFBFBFDFDFDFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_29 => X"9E9E9E9EBFBFBFBF9FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_2A => X"BFBFBEBFBFBFBFBFBFBFBFBFBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBE9E9E9E",
      INIT_2B => X"DFDFDFDFDFBFDFDFDFDFDFDFDFDFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_2C => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_2D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDF",
      INIT_2E => X"2A8BED2D4ED0113299BEDFDFDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2F => X"CF305172939393B3F415B352D4D4D4B3939372727352F1D0D0D1B06F2DCC8B2A",
      INIT_30 => X"2DACACAC6B494A6A29E8C7C7E8E849CB2D4D6E2D2D2ECC6BACACED2E6F6E6EAE",
      INIT_31 => X"BFBFBFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFF6B06F6E4E",
      INIT_32 => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFBFBFDFBFBFDFBFBFBFBF",
      INIT_33 => X"9E9E9EBEBEBEBEBEBEBEBE9E9E9E9E9E9E9E9E9E9E9E9E9E9F9F9F9F9FBFBFBF",
      INIT_34 => X"BFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_35 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFDFBFBFBFBFBF",
      INIT_36 => X"FFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_37 => X"FEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_38 => X"B3B3D3B393937252723211D0B0B1906F2E0DCCAC6B4AAC0D6FB031159DFFFFFF",
      INIT_39 => X"2D0D4D8E6E4E4E2D4ECC4A8B8BCCED4E4E2D4DAEEF505172939393D4D4F49352",
      INIT_3A => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFBE74906F4E2D0DCC8B4A2A4AABCCCCEC0D2D",
      INIT_3B => X"BFBFBFBFBFBFBFBFBFBFBFBFDFBFBFDFBFBFBFBFBFBFBFBFDFDFDFDFDFDFDFDF",
      INIT_3C => X"BFBFBFBFBF9E9E9E9E9E9E9E9F9F9F9F9FBFBFBFBFBFBFBFBFBFBFBFBFBF9FBF",
      INIT_3D => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9EBF9FBFBFBFBFBFBFBFBF9F",
      INIT_3E => X"DFDFDFDFDFDFDFDFDFDFDFDFDFBFDFDFDFDFDFDFBFDFDFBFBFBFBFBFBFBFBFBF",
      INIT_3F => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_40 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFFFFFFFFDFDFDFDFDF",
      INIT_41 => X"8F90704F0EEDCCCC8C8BACCD0DF1931AFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_42 => X"EC0DCC2E2D2D4DAEEF517193937272D4D4F5D472D3B3B3B3939372525232D08F",
      INIT_43 => X"FFDF9E334F4E2D0C2DEDCC6B29E80829CCEC2D6E6E8E8E4D0D0C2D2E8B4A8B8B",
      INIT_44 => X"DFBFBFDFDFDFDFDFDFDFDFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_45 => X"9F9F9F9F9FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDFDF",
      INIT_46 => X"BFBFBFBFBFBFBF9EBFBF9FBFBFBFBFBFBFBFBF9FBF9E9E9E9E9E9E9E9E9E9E9E",
      INIT_47 => X"DFDFDFDFDFDFDFDFDFBFDFDFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_48 => X"FFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBF",
      INIT_49 => X"FFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_4A => X"6FD158DFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4B => X"929272B3D3D4D393D4B3B372B3B393727211B08F8F8F6F0EEDCCCCEDEDEDED2E",
      INIT_4C => X"CCCC49E8C7E8294A8A8B8AAB0C0DAC6A4AACACCD2E0E0DECEC2D2DAE10519292",
      INIT_4D => X"BFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFDFDFDF9DF24F6F6E2E2E2ECDCC",
      INIT_4E => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_4F => X"BEBEBEBEBEBEBE9E9E9E9E9E9E9E9E9E9E9E9E9E9F9F9F9F9FBFBFBFBFBFBFBF",
      INIT_50 => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9F9E9E9EBE",
      INIT_51 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFBFBFBFBFBFBFBFBFBFDF",
      INIT_52 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_53 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF",
      INIT_54 => X"939373321111D08F8F6F0EEDACCCECCD0E4E4E6F11537DFFDFFFFFFFFFFFDFFF",
      INIT_55 => X"EC6B6BAB0DCCCC0D2EEDCCEC0CEC4DAF10519292717151B3D3D4D372B3B3B372",
      INIT_56 => X"DFDFDFDFDFDFFFFFDFDE9CD12E2E2D2E2E0E2EACABABECECAB6A4A8BABEC2D6E",
      INIT_57 => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDFDFDFDFDFDFDFDFDF",
      INIT_58 => X"9E9E9E9E9E9E9E9E9F9F9F9F9FBFBFBFBFBFBF9FBEBFBFBFBFBFBEBFBFBFBFBF",
      INIT_59 => X"BFBFBFBFBFBFBFBFBFBFBFBFBEBFBFBEBEBEBEBEBEBEBEBEBEBEBEBEBE9E9E9E",
      INIT_5A => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_5B => X"DFDFDFDFDFDFDFDFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_5C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_5D => X"ACACECED0E4F8FB012B9BEFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5E => X"EBEC2DAE1071929271515192B3B3B35272B3B372939372321111F18F6F6E2EED",
      INIT_5F => X"0E2E2D2E4E2ECDEDCCAB8BCBEC0C0C4D4D2DECAB6B6BABEDEDED2E0DCCAC0D2D",
      INIT_60 => X"BFBFBFBFBFBFBFBFBFBFDFDFDFBFDFDFDFDFDFDFDFDFDFDFDFFFFFDFDFDE9DD1",
      INIT_61 => X"9F9F9F9FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFBFBF",
      INIT_62 => X"BEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBE9E9E9E9E9E9E9EBEBEBE9F9F9F9F",
      INIT_63 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBEBEBEBEBEBEBEBEBEBE",
      INIT_64 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_65 => X"FFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFFFFFFFF",
      INIT_66 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_67 => X"D3D3B33172B3B372927252321111F1B04E4E2EEDACCCCCED0E4E8FD1D69DDFFF",
      INIT_68 => X"2949494929292929ABCCCCED4E2D8B6BAC2E4E2DEBEB2C8E3030517171515192",
      INIT_69 => X"BFDFDFDFDFDFDFDFDFDFDFDFDFDFFFDFDFDE9DD22E2E4E2E4E8F4EED8B8B6A49",
      INIT_6A => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBF",
      INIT_6B => X"BEBEBFBEBEBE9E9E9E9E9E9E9E9E9E9E9F9F9FBFBFBFBF9FBFBFBFBFBFBFBFBF",
      INIT_6C => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9E9E9EBFBEBE9EBE",
      INIT_6D => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFBFBFBFBF",
      INIT_6E => X"DFDFDFDFDFDFDFDFDFFFFFFFDFDFDFDFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_6F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_70 => X"11F0B08F4E0DCCCCACCCECED2E4FB033FADFFFDFDFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_71 => X"6B8B6BCC2E2E2E0CCBEC0C8E30F0105150305192B3B393317272727293523232",
      INIT_72 => X"DFDFDFDFDFDE9DD20E0D4E4E6F6F0DEDCC8B8A6A6A6A6A8BABCB0C0D2E2E2EEC",
      INIT_73 => X"BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDFDFDFDFDFDFDFDF",
      INIT_74 => X"9E9E9E9E9F9F9F9FBF9F9F9F9FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFBFBFBF",
      INIT_75 => X"BFBFBFBFBFBFBFBFBFBFBFBF9E9E9EBFBF9E9EBEBEBEBE9E9E9E9E9E9E9E9E9E",
      INIT_76 => X"BFBFBFBFBFBFBFBFBFBFBFBFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_77 => X"DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_78 => X"FFFFFFDFDFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF",
      INIT_79 => X"4F8F12169EFFDFDFDFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7A => X"101010311010517292B392315252525272311111F1B08F6F4EECCCCCCCED0D0E",
      INIT_7B => X"908F0E0DABCCCBCBCBCCEC2D4D0D0DECCC6A4A4A8B0D2D0D0E4E2DECEBECCB8E",
      INIT_7C => X"BFBFBFBFBFBFBFBFBFBFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDE9DD20E2D2E6F",
      INIT_7D => X"9FBFBFBFBEBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF",
      INIT_7E => X"9EBF9EBFBFBE9EBFBEBF9E9E9E9E9E9E9E9E9E9E9E9E9E9E9F9F9F9FBF9F9F9F",
      INIT_7F => X"DFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9E9E9E9EBFBFBF",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena_array(0),
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width is
  port (
    ram_douta : out STD_LOGIC_VECTOR ( 8 downto 0 );
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width is
begin
\prim_init.ram\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init
     port map (
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      ram_douta(8 downto 0) => ram_douta(8 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized0\ is
  port (
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized0\ : entity is "blk_mem_gen_prim_width";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized0\ is
begin
\prim_init.ram\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized0\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(7 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(7 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(0),
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      ena_array(0) => ena_array(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized1\ is
  port (
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized1\ : entity is "blk_mem_gen_prim_width";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized1\ is
begin
\prim_init.ram\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized1\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(7 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(7 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(0),
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      ena_array(0) => ena_array(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized10\ is
  port (
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized10\ : entity is "blk_mem_gen_prim_width";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized10\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized10\ is
begin
\prim_init.ram\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized10\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(7 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(7 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(0),
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      ena_array(0) => ena_array(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized11\ is
  port (
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized11\ : entity is "blk_mem_gen_prim_width";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized11\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized11\ is
begin
\prim_init.ram\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized11\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(7 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(7 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(0),
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      ena_array(0) => ena_array(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized12\ is
  port (
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized12\ : entity is "blk_mem_gen_prim_width";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized12\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized12\ is
begin
\prim_init.ram\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized12\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(7 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(7 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(0),
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      ena_array(0) => ena_array(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized13\ is
  port (
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized13\ : entity is "blk_mem_gen_prim_width";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized13\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized13\ is
begin
\prim_init.ram\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized13\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(7 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(7 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(0),
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      ena_array(0) => ena_array(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized14\ is
  port (
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized14\ : entity is "blk_mem_gen_prim_width";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized14\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized14\ is
begin
\prim_init.ram\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized14\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(7 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(7 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(0),
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized15\ is
  port (
    douta : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized15\ : entity is "blk_mem_gen_prim_width";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized15\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized15\ is
begin
\prim_init.ram\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized15\
     port map (
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      douta(0) => douta(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized16\ is
  port (
    douta : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized16\ : entity is "blk_mem_gen_prim_width";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized16\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized16\ is
begin
\prim_init.ram\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized16\
     port map (
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      douta(0) => douta(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized17\ is
  port (
    douta : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized17\ : entity is "blk_mem_gen_prim_width";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized17\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized17\ is
begin
\prim_init.ram\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized17\
     port map (
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      douta(0) => douta(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized18\ is
  port (
    douta : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized18\ : entity is "blk_mem_gen_prim_width";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized18\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized18\ is
begin
\prim_init.ram\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized18\
     port map (
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      douta(0) => douta(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized19\ is
  port (
    douta : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized19\ : entity is "blk_mem_gen_prim_width";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized19\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized19\ is
begin
\prim_init.ram\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized19\
     port map (
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      douta(0) => douta(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized2\ is
  port (
    DOADO : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DOPADOP : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized2\ : entity is "blk_mem_gen_prim_width";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized2\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized2\ is
begin
\prim_init.ram\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized2\
     port map (
      DOADO(7 downto 0) => DOADO(7 downto 0),
      DOPADOP(0) => DOPADOP(0),
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized20\ is
  port (
    douta : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized20\ : entity is "blk_mem_gen_prim_width";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized20\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized20\ is
begin
\prim_init.ram\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized20\
     port map (
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      douta(0) => douta(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized21\ is
  port (
    douta : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized21\ : entity is "blk_mem_gen_prim_width";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized21\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized21\ is
begin
\prim_init.ram\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized21\
     port map (
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      douta(0) => douta(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized3\ is
  port (
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized3\ : entity is "blk_mem_gen_prim_width";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized3\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized3\ is
begin
\prim_init.ram\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized3\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(7 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(7 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(0),
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized4\ is
  port (
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized4\ : entity is "blk_mem_gen_prim_width";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized4\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized4\ is
begin
\prim_init.ram\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized4\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(7 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(7 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(0),
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      ena_array(0) => ena_array(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized5\ is
  port (
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized5\ : entity is "blk_mem_gen_prim_width";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized5\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized5\ is
begin
\prim_init.ram\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized5\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(7 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(7 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(0),
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      ena_array(0) => ena_array(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized6\ is
  port (
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized6\ : entity is "blk_mem_gen_prim_width";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized6\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized6\ is
begin
\prim_init.ram\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized6\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(7 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(7 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(0),
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      ena_array(0) => ena_array(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized7\ is
  port (
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized7\ : entity is "blk_mem_gen_prim_width";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized7\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized7\ is
begin
\prim_init.ram\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized7\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(7 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(7 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(0),
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      ena_array(0) => ena_array(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized8\ is
  port (
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized8\ : entity is "blk_mem_gen_prim_width";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized8\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized8\ is
begin
\prim_init.ram\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized8\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(7 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(7 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(0),
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized9\ is
  port (
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized9\ : entity is "blk_mem_gen_prim_width";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized9\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized9\ is
begin
\prim_init.ram\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized9\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(7 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(7 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(0),
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      ena_array(0) => ena_array(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_generic_cstr is
  port (
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clka : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_generic_cstr;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_generic_cstr is
  signal ena_array : STD_LOGIC_VECTOR ( 14 downto 1 );
  signal ram_douta : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \ramloop[10].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[10].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[10].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[10].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[10].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[10].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[10].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[10].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[10].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[15].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[15].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[15].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[15].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[15].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[15].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[15].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[15].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[15].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[6].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[6].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[6].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[6].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[6].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[6].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[6].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[6].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[6].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_8\ : STD_LOGIC;
begin
\bindec_a.bindec_inst_a\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bindec
     port map (
      addra(3 downto 0) => addra(15 downto 12),
      ena_array(10 downto 6) => ena_array(14 downto 10),
      ena_array(5 downto 2) => ena_array(8 downto 5),
      ena_array(1 downto 0) => ena_array(2 downto 1)
    );
\has_mux_a.A\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_mux
     port map (
      DOADO(7) => \ramloop[3].ram.r_n_0\,
      DOADO(6) => \ramloop[3].ram.r_n_1\,
      DOADO(5) => \ramloop[3].ram.r_n_2\,
      DOADO(4) => \ramloop[3].ram.r_n_3\,
      DOADO(3) => \ramloop[3].ram.r_n_4\,
      DOADO(2) => \ramloop[3].ram.r_n_5\,
      DOADO(1) => \ramloop[3].ram.r_n_6\,
      DOADO(0) => \ramloop[3].ram.r_n_7\,
      DOPADOP(0) => \ramloop[3].ram.r_n_8\,
      addra(3 downto 0) => addra(15 downto 12),
      clka => clka,
      douta(8 downto 0) => douta(8 downto 0),
      \douta[7]_INST_0_i_1_0\(7) => \ramloop[2].ram.r_n_0\,
      \douta[7]_INST_0_i_1_0\(6) => \ramloop[2].ram.r_n_1\,
      \douta[7]_INST_0_i_1_0\(5) => \ramloop[2].ram.r_n_2\,
      \douta[7]_INST_0_i_1_0\(4) => \ramloop[2].ram.r_n_3\,
      \douta[7]_INST_0_i_1_0\(3) => \ramloop[2].ram.r_n_4\,
      \douta[7]_INST_0_i_1_0\(2) => \ramloop[2].ram.r_n_5\,
      \douta[7]_INST_0_i_1_0\(1) => \ramloop[2].ram.r_n_6\,
      \douta[7]_INST_0_i_1_0\(0) => \ramloop[2].ram.r_n_7\,
      \douta[7]_INST_0_i_1_1\(7) => \ramloop[1].ram.r_n_0\,
      \douta[7]_INST_0_i_1_1\(6) => \ramloop[1].ram.r_n_1\,
      \douta[7]_INST_0_i_1_1\(5) => \ramloop[1].ram.r_n_2\,
      \douta[7]_INST_0_i_1_1\(4) => \ramloop[1].ram.r_n_3\,
      \douta[7]_INST_0_i_1_1\(3) => \ramloop[1].ram.r_n_4\,
      \douta[7]_INST_0_i_1_1\(2) => \ramloop[1].ram.r_n_5\,
      \douta[7]_INST_0_i_1_1\(1) => \ramloop[1].ram.r_n_6\,
      \douta[7]_INST_0_i_1_1\(0) => \ramloop[1].ram.r_n_7\,
      \douta[7]_INST_0_i_1_2\(7) => \ramloop[7].ram.r_n_0\,
      \douta[7]_INST_0_i_1_2\(6) => \ramloop[7].ram.r_n_1\,
      \douta[7]_INST_0_i_1_2\(5) => \ramloop[7].ram.r_n_2\,
      \douta[7]_INST_0_i_1_2\(4) => \ramloop[7].ram.r_n_3\,
      \douta[7]_INST_0_i_1_2\(3) => \ramloop[7].ram.r_n_4\,
      \douta[7]_INST_0_i_1_2\(2) => \ramloop[7].ram.r_n_5\,
      \douta[7]_INST_0_i_1_2\(1) => \ramloop[7].ram.r_n_6\,
      \douta[7]_INST_0_i_1_2\(0) => \ramloop[7].ram.r_n_7\,
      \douta[7]_INST_0_i_1_3\(7) => \ramloop[6].ram.r_n_0\,
      \douta[7]_INST_0_i_1_3\(6) => \ramloop[6].ram.r_n_1\,
      \douta[7]_INST_0_i_1_3\(5) => \ramloop[6].ram.r_n_2\,
      \douta[7]_INST_0_i_1_3\(4) => \ramloop[6].ram.r_n_3\,
      \douta[7]_INST_0_i_1_3\(3) => \ramloop[6].ram.r_n_4\,
      \douta[7]_INST_0_i_1_3\(2) => \ramloop[6].ram.r_n_5\,
      \douta[7]_INST_0_i_1_3\(1) => \ramloop[6].ram.r_n_6\,
      \douta[7]_INST_0_i_1_3\(0) => \ramloop[6].ram.r_n_7\,
      \douta[7]_INST_0_i_1_4\(7) => \ramloop[5].ram.r_n_0\,
      \douta[7]_INST_0_i_1_4\(6) => \ramloop[5].ram.r_n_1\,
      \douta[7]_INST_0_i_1_4\(5) => \ramloop[5].ram.r_n_2\,
      \douta[7]_INST_0_i_1_4\(4) => \ramloop[5].ram.r_n_3\,
      \douta[7]_INST_0_i_1_4\(3) => \ramloop[5].ram.r_n_4\,
      \douta[7]_INST_0_i_1_4\(2) => \ramloop[5].ram.r_n_5\,
      \douta[7]_INST_0_i_1_4\(1) => \ramloop[5].ram.r_n_6\,
      \douta[7]_INST_0_i_1_4\(0) => \ramloop[5].ram.r_n_7\,
      \douta[7]_INST_0_i_1_5\(7) => \ramloop[4].ram.r_n_0\,
      \douta[7]_INST_0_i_1_5\(6) => \ramloop[4].ram.r_n_1\,
      \douta[7]_INST_0_i_1_5\(5) => \ramloop[4].ram.r_n_2\,
      \douta[7]_INST_0_i_1_5\(4) => \ramloop[4].ram.r_n_3\,
      \douta[7]_INST_0_i_1_5\(3) => \ramloop[4].ram.r_n_4\,
      \douta[7]_INST_0_i_1_5\(2) => \ramloop[4].ram.r_n_5\,
      \douta[7]_INST_0_i_1_5\(1) => \ramloop[4].ram.r_n_6\,
      \douta[7]_INST_0_i_1_5\(0) => \ramloop[4].ram.r_n_7\,
      \douta[7]_INST_0_i_2_0\(7) => \ramloop[11].ram.r_n_0\,
      \douta[7]_INST_0_i_2_0\(6) => \ramloop[11].ram.r_n_1\,
      \douta[7]_INST_0_i_2_0\(5) => \ramloop[11].ram.r_n_2\,
      \douta[7]_INST_0_i_2_0\(4) => \ramloop[11].ram.r_n_3\,
      \douta[7]_INST_0_i_2_0\(3) => \ramloop[11].ram.r_n_4\,
      \douta[7]_INST_0_i_2_0\(2) => \ramloop[11].ram.r_n_5\,
      \douta[7]_INST_0_i_2_0\(1) => \ramloop[11].ram.r_n_6\,
      \douta[7]_INST_0_i_2_0\(0) => \ramloop[11].ram.r_n_7\,
      \douta[7]_INST_0_i_2_1\(7) => \ramloop[10].ram.r_n_0\,
      \douta[7]_INST_0_i_2_1\(6) => \ramloop[10].ram.r_n_1\,
      \douta[7]_INST_0_i_2_1\(5) => \ramloop[10].ram.r_n_2\,
      \douta[7]_INST_0_i_2_1\(4) => \ramloop[10].ram.r_n_3\,
      \douta[7]_INST_0_i_2_1\(3) => \ramloop[10].ram.r_n_4\,
      \douta[7]_INST_0_i_2_1\(2) => \ramloop[10].ram.r_n_5\,
      \douta[7]_INST_0_i_2_1\(1) => \ramloop[10].ram.r_n_6\,
      \douta[7]_INST_0_i_2_1\(0) => \ramloop[10].ram.r_n_7\,
      \douta[7]_INST_0_i_2_2\(7) => \ramloop[9].ram.r_n_0\,
      \douta[7]_INST_0_i_2_2\(6) => \ramloop[9].ram.r_n_1\,
      \douta[7]_INST_0_i_2_2\(5) => \ramloop[9].ram.r_n_2\,
      \douta[7]_INST_0_i_2_2\(4) => \ramloop[9].ram.r_n_3\,
      \douta[7]_INST_0_i_2_2\(3) => \ramloop[9].ram.r_n_4\,
      \douta[7]_INST_0_i_2_2\(2) => \ramloop[9].ram.r_n_5\,
      \douta[7]_INST_0_i_2_2\(1) => \ramloop[9].ram.r_n_6\,
      \douta[7]_INST_0_i_2_2\(0) => \ramloop[9].ram.r_n_7\,
      \douta[7]_INST_0_i_2_3\(7) => \ramloop[8].ram.r_n_0\,
      \douta[7]_INST_0_i_2_3\(6) => \ramloop[8].ram.r_n_1\,
      \douta[7]_INST_0_i_2_3\(5) => \ramloop[8].ram.r_n_2\,
      \douta[7]_INST_0_i_2_3\(4) => \ramloop[8].ram.r_n_3\,
      \douta[7]_INST_0_i_2_3\(3) => \ramloop[8].ram.r_n_4\,
      \douta[7]_INST_0_i_2_3\(2) => \ramloop[8].ram.r_n_5\,
      \douta[7]_INST_0_i_2_3\(1) => \ramloop[8].ram.r_n_6\,
      \douta[7]_INST_0_i_2_3\(0) => \ramloop[8].ram.r_n_7\,
      \douta[7]_INST_0_i_2_4\(7) => \ramloop[15].ram.r_n_0\,
      \douta[7]_INST_0_i_2_4\(6) => \ramloop[15].ram.r_n_1\,
      \douta[7]_INST_0_i_2_4\(5) => \ramloop[15].ram.r_n_2\,
      \douta[7]_INST_0_i_2_4\(4) => \ramloop[15].ram.r_n_3\,
      \douta[7]_INST_0_i_2_4\(3) => \ramloop[15].ram.r_n_4\,
      \douta[7]_INST_0_i_2_4\(2) => \ramloop[15].ram.r_n_5\,
      \douta[7]_INST_0_i_2_4\(1) => \ramloop[15].ram.r_n_6\,
      \douta[7]_INST_0_i_2_4\(0) => \ramloop[15].ram.r_n_7\,
      \douta[7]_INST_0_i_2_5\(7) => \ramloop[14].ram.r_n_0\,
      \douta[7]_INST_0_i_2_5\(6) => \ramloop[14].ram.r_n_1\,
      \douta[7]_INST_0_i_2_5\(5) => \ramloop[14].ram.r_n_2\,
      \douta[7]_INST_0_i_2_5\(4) => \ramloop[14].ram.r_n_3\,
      \douta[7]_INST_0_i_2_5\(3) => \ramloop[14].ram.r_n_4\,
      \douta[7]_INST_0_i_2_5\(2) => \ramloop[14].ram.r_n_5\,
      \douta[7]_INST_0_i_2_5\(1) => \ramloop[14].ram.r_n_6\,
      \douta[7]_INST_0_i_2_5\(0) => \ramloop[14].ram.r_n_7\,
      \douta[7]_INST_0_i_2_6\(7) => \ramloop[13].ram.r_n_0\,
      \douta[7]_INST_0_i_2_6\(6) => \ramloop[13].ram.r_n_1\,
      \douta[7]_INST_0_i_2_6\(5) => \ramloop[13].ram.r_n_2\,
      \douta[7]_INST_0_i_2_6\(4) => \ramloop[13].ram.r_n_3\,
      \douta[7]_INST_0_i_2_6\(3) => \ramloop[13].ram.r_n_4\,
      \douta[7]_INST_0_i_2_6\(2) => \ramloop[13].ram.r_n_5\,
      \douta[7]_INST_0_i_2_6\(1) => \ramloop[13].ram.r_n_6\,
      \douta[7]_INST_0_i_2_6\(0) => \ramloop[13].ram.r_n_7\,
      \douta[7]_INST_0_i_2_7\(7) => \ramloop[12].ram.r_n_0\,
      \douta[7]_INST_0_i_2_7\(6) => \ramloop[12].ram.r_n_1\,
      \douta[7]_INST_0_i_2_7\(5) => \ramloop[12].ram.r_n_2\,
      \douta[7]_INST_0_i_2_7\(4) => \ramloop[12].ram.r_n_3\,
      \douta[7]_INST_0_i_2_7\(3) => \ramloop[12].ram.r_n_4\,
      \douta[7]_INST_0_i_2_7\(2) => \ramloop[12].ram.r_n_5\,
      \douta[7]_INST_0_i_2_7\(1) => \ramloop[12].ram.r_n_6\,
      \douta[7]_INST_0_i_2_7\(0) => \ramloop[12].ram.r_n_7\,
      \douta[8]_INST_0_i_1_0\(0) => \ramloop[2].ram.r_n_8\,
      \douta[8]_INST_0_i_1_1\(0) => \ramloop[1].ram.r_n_8\,
      \douta[8]_INST_0_i_1_2\(0) => \ramloop[7].ram.r_n_8\,
      \douta[8]_INST_0_i_1_3\(0) => \ramloop[6].ram.r_n_8\,
      \douta[8]_INST_0_i_1_4\(0) => \ramloop[5].ram.r_n_8\,
      \douta[8]_INST_0_i_1_5\(0) => \ramloop[4].ram.r_n_8\,
      \douta[8]_INST_0_i_2_0\(0) => \ramloop[11].ram.r_n_8\,
      \douta[8]_INST_0_i_2_1\(0) => \ramloop[10].ram.r_n_8\,
      \douta[8]_INST_0_i_2_2\(0) => \ramloop[9].ram.r_n_8\,
      \douta[8]_INST_0_i_2_3\(0) => \ramloop[8].ram.r_n_8\,
      \douta[8]_INST_0_i_2_4\(0) => \ramloop[15].ram.r_n_8\,
      \douta[8]_INST_0_i_2_5\(0) => \ramloop[14].ram.r_n_8\,
      \douta[8]_INST_0_i_2_6\(0) => \ramloop[13].ram.r_n_8\,
      \douta[8]_INST_0_i_2_7\(0) => \ramloop[12].ram.r_n_8\,
      ram_douta(8 downto 0) => ram_douta(8 downto 0)
    );
\ramloop[0].ram.r\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width
     port map (
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      ram_douta(8 downto 0) => ram_douta(8 downto 0)
    );
\ramloop[10].ram.r\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized9\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(7) => \ramloop[10].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(6) => \ramloop[10].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(5) => \ramloop[10].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(4) => \ramloop[10].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(3) => \ramloop[10].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(2) => \ramloop[10].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(1) => \ramloop[10].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(0) => \ramloop[10].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(0) => \ramloop[10].ram.r_n_8\,
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      ena_array(0) => ena_array(10)
    );
\ramloop[11].ram.r\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized10\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(7) => \ramloop[11].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(6) => \ramloop[11].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(5) => \ramloop[11].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(4) => \ramloop[11].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(3) => \ramloop[11].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(2) => \ramloop[11].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(1) => \ramloop[11].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(0) => \ramloop[11].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(0) => \ramloop[11].ram.r_n_8\,
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      ena_array(0) => ena_array(11)
    );
\ramloop[12].ram.r\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized11\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(7) => \ramloop[12].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(6) => \ramloop[12].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(5) => \ramloop[12].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(4) => \ramloop[12].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(3) => \ramloop[12].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(2) => \ramloop[12].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(1) => \ramloop[12].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(0) => \ramloop[12].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(0) => \ramloop[12].ram.r_n_8\,
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      ena_array(0) => ena_array(12)
    );
\ramloop[13].ram.r\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized12\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(7) => \ramloop[13].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(6) => \ramloop[13].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(5) => \ramloop[13].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(4) => \ramloop[13].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(3) => \ramloop[13].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(2) => \ramloop[13].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(1) => \ramloop[13].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(0) => \ramloop[13].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(0) => \ramloop[13].ram.r_n_8\,
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      ena_array(0) => ena_array(13)
    );
\ramloop[14].ram.r\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized13\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(7) => \ramloop[14].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(6) => \ramloop[14].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(5) => \ramloop[14].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(4) => \ramloop[14].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(3) => \ramloop[14].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(2) => \ramloop[14].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(1) => \ramloop[14].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(0) => \ramloop[14].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(0) => \ramloop[14].ram.r_n_8\,
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      ena_array(0) => ena_array(14)
    );
\ramloop[15].ram.r\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized14\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(7) => \ramloop[15].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(6) => \ramloop[15].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(5) => \ramloop[15].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(4) => \ramloop[15].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(3) => \ramloop[15].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(2) => \ramloop[15].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(1) => \ramloop[15].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(0) => \ramloop[15].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(0) => \ramloop[15].ram.r_n_8\,
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka
    );
\ramloop[16].ram.r\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized15\
     port map (
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      douta(0) => douta(9)
    );
\ramloop[17].ram.r\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized16\
     port map (
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      douta(0) => douta(10)
    );
\ramloop[18].ram.r\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized17\
     port map (
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      douta(0) => douta(11)
    );
\ramloop[19].ram.r\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized18\
     port map (
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      douta(0) => douta(12)
    );
\ramloop[1].ram.r\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized0\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(7) => \ramloop[1].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(6) => \ramloop[1].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(5) => \ramloop[1].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(4) => \ramloop[1].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(3) => \ramloop[1].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(2) => \ramloop[1].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(1) => \ramloop[1].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(0) => \ramloop[1].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(0) => \ramloop[1].ram.r_n_8\,
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      ena_array(0) => ena_array(1)
    );
\ramloop[20].ram.r\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized19\
     port map (
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      douta(0) => douta(13)
    );
\ramloop[21].ram.r\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized20\
     port map (
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      douta(0) => douta(14)
    );
\ramloop[22].ram.r\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized21\
     port map (
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      douta(0) => douta(15)
    );
\ramloop[2].ram.r\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized1\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(7) => \ramloop[2].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(6) => \ramloop[2].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(5) => \ramloop[2].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(4) => \ramloop[2].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(3) => \ramloop[2].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(2) => \ramloop[2].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(1) => \ramloop[2].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(0) => \ramloop[2].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(0) => \ramloop[2].ram.r_n_8\,
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      ena_array(0) => ena_array(2)
    );
\ramloop[3].ram.r\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized2\
     port map (
      DOADO(7) => \ramloop[3].ram.r_n_0\,
      DOADO(6) => \ramloop[3].ram.r_n_1\,
      DOADO(5) => \ramloop[3].ram.r_n_2\,
      DOADO(4) => \ramloop[3].ram.r_n_3\,
      DOADO(3) => \ramloop[3].ram.r_n_4\,
      DOADO(2) => \ramloop[3].ram.r_n_5\,
      DOADO(1) => \ramloop[3].ram.r_n_6\,
      DOADO(0) => \ramloop[3].ram.r_n_7\,
      DOPADOP(0) => \ramloop[3].ram.r_n_8\,
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka
    );
\ramloop[4].ram.r\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized3\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(7) => \ramloop[4].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(6) => \ramloop[4].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(5) => \ramloop[4].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(4) => \ramloop[4].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(3) => \ramloop[4].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(2) => \ramloop[4].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(1) => \ramloop[4].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(0) => \ramloop[4].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(0) => \ramloop[4].ram.r_n_8\,
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka
    );
\ramloop[5].ram.r\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized4\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(7) => \ramloop[5].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(6) => \ramloop[5].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(5) => \ramloop[5].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(4) => \ramloop[5].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(3) => \ramloop[5].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(2) => \ramloop[5].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(1) => \ramloop[5].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(0) => \ramloop[5].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(0) => \ramloop[5].ram.r_n_8\,
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      ena_array(0) => ena_array(5)
    );
\ramloop[6].ram.r\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized5\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(7) => \ramloop[6].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(6) => \ramloop[6].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(5) => \ramloop[6].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(4) => \ramloop[6].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(3) => \ramloop[6].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(2) => \ramloop[6].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(1) => \ramloop[6].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(0) => \ramloop[6].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(0) => \ramloop[6].ram.r_n_8\,
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      ena_array(0) => ena_array(6)
    );
\ramloop[7].ram.r\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized6\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(7) => \ramloop[7].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(6) => \ramloop[7].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(5) => \ramloop[7].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(4) => \ramloop[7].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(3) => \ramloop[7].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(2) => \ramloop[7].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(1) => \ramloop[7].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(0) => \ramloop[7].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(0) => \ramloop[7].ram.r_n_8\,
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      ena_array(0) => ena_array(7)
    );
\ramloop[8].ram.r\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized7\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(7) => \ramloop[8].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(6) => \ramloop[8].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(5) => \ramloop[8].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(4) => \ramloop[8].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(3) => \ramloop[8].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(2) => \ramloop[8].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(1) => \ramloop[8].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(0) => \ramloop[8].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(0) => \ramloop[8].ram.r_n_8\,
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      ena_array(0) => ena_array(8)
    );
\ramloop[9].ram.r\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized8\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(7) => \ramloop[9].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(6) => \ramloop[9].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(5) => \ramloop[9].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(4) => \ramloop[9].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(3) => \ramloop[9].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(2) => \ramloop[9].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(1) => \ramloop[9].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(0) => \ramloop[9].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(0) => \ramloop[9].ram.r_n_8\,
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_top is
  port (
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clka : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_top;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_top is
begin
\valid.cstr\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_generic_cstr
     port map (
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      douta(15 downto 0) => douta(15 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2_synth is
  port (
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clka : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2_synth;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2_synth is
begin
\gnbram.gnativebmg.native_blk_mem_gen\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_top
     port map (
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      douta(15 downto 0) => douta(15 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2 is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    regcea : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 15 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    regceb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    injectsbiterr : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    eccpipece : in STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC;
    rdaddrecc : out STD_LOGIC_VECTOR ( 15 downto 0 );
    sleep : in STD_LOGIC;
    deepsleep : in STD_LOGIC;
    shutdown : in STD_LOGIC;
    rsta_busy : out STD_LOGIC;
    rstb_busy : out STD_LOGIC;
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_injectsbiterr : in STD_LOGIC;
    s_axi_injectdbiterr : in STD_LOGIC;
    s_axi_sbiterr : out STD_LOGIC;
    s_axi_dbiterr : out STD_LOGIC;
    s_axi_rdaddrecc : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute C_ADDRA_WIDTH : integer;
  attribute C_ADDRA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2 : entity is 16;
  attribute C_ADDRB_WIDTH : integer;
  attribute C_ADDRB_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2 : entity is 16;
  attribute C_ALGORITHM : integer;
  attribute C_ALGORITHM of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2 : entity is 1;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2 : entity is 4;
  attribute C_AXI_SLAVE_TYPE : integer;
  attribute C_AXI_SLAVE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2 : entity is 1;
  attribute C_BYTE_SIZE : integer;
  attribute C_BYTE_SIZE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2 : entity is 9;
  attribute C_COMMON_CLK : integer;
  attribute C_COMMON_CLK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_COUNT_18K_BRAM : string;
  attribute C_COUNT_18K_BRAM of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2 : entity is "0";
  attribute C_COUNT_36K_BRAM : string;
  attribute C_COUNT_36K_BRAM of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2 : entity is "30";
  attribute C_CTRL_ECC_ALGO : string;
  attribute C_CTRL_ECC_ALGO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2 : entity is "NONE";
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2 : entity is "0";
  attribute C_DISABLE_WARN_BHV_COLL : integer;
  attribute C_DISABLE_WARN_BHV_COLL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_DISABLE_WARN_BHV_RANGE : integer;
  attribute C_DISABLE_WARN_BHV_RANGE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2 : entity is "./";
  attribute C_ENABLE_32BIT_ADDRESS : integer;
  attribute C_ENABLE_32BIT_ADDRESS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_EN_DEEPSLEEP_PIN : integer;
  attribute C_EN_DEEPSLEEP_PIN of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_EN_ECC_PIPE : integer;
  attribute C_EN_ECC_PIPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_EN_RDADDRA_CHG : integer;
  attribute C_EN_RDADDRA_CHG of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_EN_RDADDRB_CHG : integer;
  attribute C_EN_RDADDRB_CHG of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_EN_SHUTDOWN_PIN : integer;
  attribute C_EN_SHUTDOWN_PIN of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_EN_SLEEP_PIN : integer;
  attribute C_EN_SLEEP_PIN of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_EST_POWER_SUMMARY : string;
  attribute C_EST_POWER_SUMMARY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2 : entity is "Estimated Power for IP     :     17.40185 mW";
  attribute C_FAMILY : string;
  attribute C_FAMILY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2 : entity is "artix7";
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_HAS_ENA : integer;
  attribute C_HAS_ENA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_HAS_ENB : integer;
  attribute C_HAS_ENB of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_HAS_INJECTERR : integer;
  attribute C_HAS_INJECTERR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_A : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2 : entity is 1;
  attribute C_HAS_MEM_OUTPUT_REGS_B : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_A : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_B : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_HAS_REGCEA : integer;
  attribute C_HAS_REGCEA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_HAS_REGCEB : integer;
  attribute C_HAS_REGCEB of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_HAS_RSTA : integer;
  attribute C_HAS_RSTA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_HAS_RSTB : integer;
  attribute C_HAS_RSTB of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_HAS_SOFTECC_INPUT_REGS_A : integer;
  attribute C_HAS_SOFTECC_INPUT_REGS_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B : integer;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_INITA_VAL : string;
  attribute C_INITA_VAL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2 : entity is "0";
  attribute C_INITB_VAL : string;
  attribute C_INITB_VAL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2 : entity is "0";
  attribute C_INIT_FILE : string;
  attribute C_INIT_FILE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2 : entity is "vga_rom.mem";
  attribute C_INIT_FILE_NAME : string;
  attribute C_INIT_FILE_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2 : entity is "vga_rom.mif";
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_LOAD_INIT_FILE : integer;
  attribute C_LOAD_INIT_FILE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2 : entity is 1;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2 : entity is 3;
  attribute C_MUX_PIPELINE_STAGES : integer;
  attribute C_MUX_PIPELINE_STAGES of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_PRIM_TYPE : integer;
  attribute C_PRIM_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2 : entity is 1;
  attribute C_READ_DEPTH_A : integer;
  attribute C_READ_DEPTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2 : entity is 63900;
  attribute C_READ_DEPTH_B : integer;
  attribute C_READ_DEPTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2 : entity is 63900;
  attribute C_READ_LATENCY_A : integer;
  attribute C_READ_LATENCY_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2 : entity is 1;
  attribute C_READ_LATENCY_B : integer;
  attribute C_READ_LATENCY_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2 : entity is 1;
  attribute C_READ_WIDTH_A : integer;
  attribute C_READ_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2 : entity is 16;
  attribute C_READ_WIDTH_B : integer;
  attribute C_READ_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2 : entity is 16;
  attribute C_RSTRAM_A : integer;
  attribute C_RSTRAM_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_RSTRAM_B : integer;
  attribute C_RSTRAM_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_RST_PRIORITY_A : string;
  attribute C_RST_PRIORITY_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2 : entity is "CE";
  attribute C_RST_PRIORITY_B : string;
  attribute C_RST_PRIORITY_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2 : entity is "CE";
  attribute C_SIM_COLLISION_CHECK : string;
  attribute C_SIM_COLLISION_CHECK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2 : entity is "ALL";
  attribute C_USE_BRAM_BLOCK : integer;
  attribute C_USE_BRAM_BLOCK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_USE_BYTE_WEA : integer;
  attribute C_USE_BYTE_WEA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_USE_BYTE_WEB : integer;
  attribute C_USE_BYTE_WEB of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_USE_DEFAULT_DATA : integer;
  attribute C_USE_DEFAULT_DATA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_USE_SOFTECC : integer;
  attribute C_USE_SOFTECC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_USE_URAM : integer;
  attribute C_USE_URAM of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_WEA_WIDTH : integer;
  attribute C_WEA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2 : entity is 1;
  attribute C_WEB_WIDTH : integer;
  attribute C_WEB_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2 : entity is 1;
  attribute C_WRITE_DEPTH_A : integer;
  attribute C_WRITE_DEPTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2 : entity is 63900;
  attribute C_WRITE_DEPTH_B : integer;
  attribute C_WRITE_DEPTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2 : entity is 63900;
  attribute C_WRITE_MODE_A : string;
  attribute C_WRITE_MODE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2 : entity is "WRITE_FIRST";
  attribute C_WRITE_MODE_B : string;
  attribute C_WRITE_MODE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2 : entity is "WRITE_FIRST";
  attribute C_WRITE_WIDTH_A : integer;
  attribute C_WRITE_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2 : entity is 16;
  attribute C_WRITE_WIDTH_B : integer;
  attribute C_WRITE_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2 : entity is 16;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2 : entity is "artix7";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2 : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2 is
  signal \<const0>\ : STD_LOGIC;
begin
  dbiterr <= \<const0>\;
  doutb(15) <= \<const0>\;
  doutb(14) <= \<const0>\;
  doutb(13) <= \<const0>\;
  doutb(12) <= \<const0>\;
  doutb(11) <= \<const0>\;
  doutb(10) <= \<const0>\;
  doutb(9) <= \<const0>\;
  doutb(8) <= \<const0>\;
  doutb(7) <= \<const0>\;
  doutb(6) <= \<const0>\;
  doutb(5) <= \<const0>\;
  doutb(4) <= \<const0>\;
  doutb(3) <= \<const0>\;
  doutb(2) <= \<const0>\;
  doutb(1) <= \<const0>\;
  doutb(0) <= \<const0>\;
  rdaddrecc(15) <= \<const0>\;
  rdaddrecc(14) <= \<const0>\;
  rdaddrecc(13) <= \<const0>\;
  rdaddrecc(12) <= \<const0>\;
  rdaddrecc(11) <= \<const0>\;
  rdaddrecc(10) <= \<const0>\;
  rdaddrecc(9) <= \<const0>\;
  rdaddrecc(8) <= \<const0>\;
  rdaddrecc(7) <= \<const0>\;
  rdaddrecc(6) <= \<const0>\;
  rdaddrecc(5) <= \<const0>\;
  rdaddrecc(4) <= \<const0>\;
  rdaddrecc(3) <= \<const0>\;
  rdaddrecc(2) <= \<const0>\;
  rdaddrecc(1) <= \<const0>\;
  rdaddrecc(0) <= \<const0>\;
  rsta_busy <= \<const0>\;
  rstb_busy <= \<const0>\;
  s_axi_arready <= \<const0>\;
  s_axi_awready <= \<const0>\;
  s_axi_bid(3) <= \<const0>\;
  s_axi_bid(2) <= \<const0>\;
  s_axi_bid(1) <= \<const0>\;
  s_axi_bid(0) <= \<const0>\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_bvalid <= \<const0>\;
  s_axi_dbiterr <= \<const0>\;
  s_axi_rdaddrecc(15) <= \<const0>\;
  s_axi_rdaddrecc(14) <= \<const0>\;
  s_axi_rdaddrecc(13) <= \<const0>\;
  s_axi_rdaddrecc(12) <= \<const0>\;
  s_axi_rdaddrecc(11) <= \<const0>\;
  s_axi_rdaddrecc(10) <= \<const0>\;
  s_axi_rdaddrecc(9) <= \<const0>\;
  s_axi_rdaddrecc(8) <= \<const0>\;
  s_axi_rdaddrecc(7) <= \<const0>\;
  s_axi_rdaddrecc(6) <= \<const0>\;
  s_axi_rdaddrecc(5) <= \<const0>\;
  s_axi_rdaddrecc(4) <= \<const0>\;
  s_axi_rdaddrecc(3) <= \<const0>\;
  s_axi_rdaddrecc(2) <= \<const0>\;
  s_axi_rdaddrecc(1) <= \<const0>\;
  s_axi_rdaddrecc(0) <= \<const0>\;
  s_axi_rdata(15) <= \<const0>\;
  s_axi_rdata(14) <= \<const0>\;
  s_axi_rdata(13) <= \<const0>\;
  s_axi_rdata(12) <= \<const0>\;
  s_axi_rdata(11) <= \<const0>\;
  s_axi_rdata(10) <= \<const0>\;
  s_axi_rdata(9) <= \<const0>\;
  s_axi_rdata(8) <= \<const0>\;
  s_axi_rdata(7) <= \<const0>\;
  s_axi_rdata(6) <= \<const0>\;
  s_axi_rdata(5) <= \<const0>\;
  s_axi_rdata(4) <= \<const0>\;
  s_axi_rdata(3) <= \<const0>\;
  s_axi_rdata(2) <= \<const0>\;
  s_axi_rdata(1) <= \<const0>\;
  s_axi_rdata(0) <= \<const0>\;
  s_axi_rid(3) <= \<const0>\;
  s_axi_rid(2) <= \<const0>\;
  s_axi_rid(1) <= \<const0>\;
  s_axi_rid(0) <= \<const0>\;
  s_axi_rlast <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_rvalid <= \<const0>\;
  s_axi_sbiterr <= \<const0>\;
  s_axi_wready <= \<const0>\;
  sbiterr <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst_blk_mem_gen: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2_synth
     port map (
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      douta(15 downto 0) => douta(15 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "vga_rom,blk_mem_gen_v8_4_2,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "blk_mem_gen_v8_4_2,Vivado 2018.3";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal NLW_U0_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rsta_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rstb_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_doutb_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_U0_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_U0_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_U0_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_U0_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_ADDRA_WIDTH : integer;
  attribute C_ADDRA_WIDTH of U0 : label is 16;
  attribute C_ADDRB_WIDTH : integer;
  attribute C_ADDRB_WIDTH of U0 : label is 16;
  attribute C_ALGORITHM : integer;
  attribute C_ALGORITHM of U0 : label is 1;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of U0 : label is 4;
  attribute C_AXI_SLAVE_TYPE : integer;
  attribute C_AXI_SLAVE_TYPE of U0 : label is 0;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of U0 : label is 1;
  attribute C_BYTE_SIZE : integer;
  attribute C_BYTE_SIZE of U0 : label is 9;
  attribute C_COMMON_CLK : integer;
  attribute C_COMMON_CLK of U0 : label is 0;
  attribute C_COUNT_18K_BRAM : string;
  attribute C_COUNT_18K_BRAM of U0 : label is "0";
  attribute C_COUNT_36K_BRAM : string;
  attribute C_COUNT_36K_BRAM of U0 : label is "30";
  attribute C_CTRL_ECC_ALGO : string;
  attribute C_CTRL_ECC_ALGO of U0 : label is "NONE";
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of U0 : label is "0";
  attribute C_DISABLE_WARN_BHV_COLL : integer;
  attribute C_DISABLE_WARN_BHV_COLL of U0 : label is 0;
  attribute C_DISABLE_WARN_BHV_RANGE : integer;
  attribute C_DISABLE_WARN_BHV_RANGE of U0 : label is 0;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of U0 : label is "./";
  attribute C_ENABLE_32BIT_ADDRESS : integer;
  attribute C_ENABLE_32BIT_ADDRESS of U0 : label is 0;
  attribute C_EN_DEEPSLEEP_PIN : integer;
  attribute C_EN_DEEPSLEEP_PIN of U0 : label is 0;
  attribute C_EN_ECC_PIPE : integer;
  attribute C_EN_ECC_PIPE of U0 : label is 0;
  attribute C_EN_RDADDRA_CHG : integer;
  attribute C_EN_RDADDRA_CHG of U0 : label is 0;
  attribute C_EN_RDADDRB_CHG : integer;
  attribute C_EN_RDADDRB_CHG of U0 : label is 0;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of U0 : label is 0;
  attribute C_EN_SHUTDOWN_PIN : integer;
  attribute C_EN_SHUTDOWN_PIN of U0 : label is 0;
  attribute C_EN_SLEEP_PIN : integer;
  attribute C_EN_SLEEP_PIN of U0 : label is 0;
  attribute C_EST_POWER_SUMMARY : string;
  attribute C_EST_POWER_SUMMARY of U0 : label is "Estimated Power for IP     :     17.40185 mW";
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "artix7";
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of U0 : label is 0;
  attribute C_HAS_ENA : integer;
  attribute C_HAS_ENA of U0 : label is 0;
  attribute C_HAS_ENB : integer;
  attribute C_HAS_ENB of U0 : label is 0;
  attribute C_HAS_INJECTERR : integer;
  attribute C_HAS_INJECTERR of U0 : label is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_A : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_A of U0 : label is 1;
  attribute C_HAS_MEM_OUTPUT_REGS_B : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_A : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_B : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_HAS_REGCEA : integer;
  attribute C_HAS_REGCEA of U0 : label is 0;
  attribute C_HAS_REGCEB : integer;
  attribute C_HAS_REGCEB of U0 : label is 0;
  attribute C_HAS_RSTA : integer;
  attribute C_HAS_RSTA of U0 : label is 0;
  attribute C_HAS_RSTB : integer;
  attribute C_HAS_RSTB of U0 : label is 0;
  attribute C_HAS_SOFTECC_INPUT_REGS_A : integer;
  attribute C_HAS_SOFTECC_INPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B : integer;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_INITA_VAL : string;
  attribute C_INITA_VAL of U0 : label is "0";
  attribute C_INITB_VAL : string;
  attribute C_INITB_VAL of U0 : label is "0";
  attribute C_INIT_FILE : string;
  attribute C_INIT_FILE of U0 : label is "vga_rom.mem";
  attribute C_INIT_FILE_NAME : string;
  attribute C_INIT_FILE_NAME of U0 : label is "vga_rom.mif";
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of U0 : label is 0;
  attribute C_LOAD_INIT_FILE : integer;
  attribute C_LOAD_INIT_FILE of U0 : label is 1;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of U0 : label is 3;
  attribute C_MUX_PIPELINE_STAGES : integer;
  attribute C_MUX_PIPELINE_STAGES of U0 : label is 0;
  attribute C_PRIM_TYPE : integer;
  attribute C_PRIM_TYPE of U0 : label is 1;
  attribute C_READ_DEPTH_A : integer;
  attribute C_READ_DEPTH_A of U0 : label is 63900;
  attribute C_READ_DEPTH_B : integer;
  attribute C_READ_DEPTH_B of U0 : label is 63900;
  attribute C_READ_LATENCY_A : integer;
  attribute C_READ_LATENCY_A of U0 : label is 1;
  attribute C_READ_LATENCY_B : integer;
  attribute C_READ_LATENCY_B of U0 : label is 1;
  attribute C_READ_WIDTH_A : integer;
  attribute C_READ_WIDTH_A of U0 : label is 16;
  attribute C_READ_WIDTH_B : integer;
  attribute C_READ_WIDTH_B of U0 : label is 16;
  attribute C_RSTRAM_A : integer;
  attribute C_RSTRAM_A of U0 : label is 0;
  attribute C_RSTRAM_B : integer;
  attribute C_RSTRAM_B of U0 : label is 0;
  attribute C_RST_PRIORITY_A : string;
  attribute C_RST_PRIORITY_A of U0 : label is "CE";
  attribute C_RST_PRIORITY_B : string;
  attribute C_RST_PRIORITY_B of U0 : label is "CE";
  attribute C_SIM_COLLISION_CHECK : string;
  attribute C_SIM_COLLISION_CHECK of U0 : label is "ALL";
  attribute C_USE_BRAM_BLOCK : integer;
  attribute C_USE_BRAM_BLOCK of U0 : label is 0;
  attribute C_USE_BYTE_WEA : integer;
  attribute C_USE_BYTE_WEA of U0 : label is 0;
  attribute C_USE_BYTE_WEB : integer;
  attribute C_USE_BYTE_WEB of U0 : label is 0;
  attribute C_USE_DEFAULT_DATA : integer;
  attribute C_USE_DEFAULT_DATA of U0 : label is 0;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of U0 : label is 0;
  attribute C_USE_SOFTECC : integer;
  attribute C_USE_SOFTECC of U0 : label is 0;
  attribute C_USE_URAM : integer;
  attribute C_USE_URAM of U0 : label is 0;
  attribute C_WEA_WIDTH : integer;
  attribute C_WEA_WIDTH of U0 : label is 1;
  attribute C_WEB_WIDTH : integer;
  attribute C_WEB_WIDTH of U0 : label is 1;
  attribute C_WRITE_DEPTH_A : integer;
  attribute C_WRITE_DEPTH_A of U0 : label is 63900;
  attribute C_WRITE_DEPTH_B : integer;
  attribute C_WRITE_DEPTH_B of U0 : label is 63900;
  attribute C_WRITE_MODE_A : string;
  attribute C_WRITE_MODE_A of U0 : label is "WRITE_FIRST";
  attribute C_WRITE_MODE_B : string;
  attribute C_WRITE_MODE_B of U0 : label is "WRITE_FIRST";
  attribute C_WRITE_WIDTH_A : integer;
  attribute C_WRITE_WIDTH_A of U0 : label is 16;
  attribute C_WRITE_WIDTH_B : integer;
  attribute C_WRITE_WIDTH_B of U0 : label is 16;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of U0 : label is "artix7";
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute x_interface_info : string;
  attribute x_interface_info of clka : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clka : signal is "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1";
  attribute x_interface_info of addra : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR";
  attribute x_interface_info of douta : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2
     port map (
      addra(15 downto 0) => addra(15 downto 0),
      addrb(15 downto 0) => B"0000000000000000",
      clka => clka,
      clkb => '0',
      dbiterr => NLW_U0_dbiterr_UNCONNECTED,
      deepsleep => '0',
      dina(15 downto 0) => B"0000000000000000",
      dinb(15 downto 0) => B"0000000000000000",
      douta(15 downto 0) => douta(15 downto 0),
      doutb(15 downto 0) => NLW_U0_doutb_UNCONNECTED(15 downto 0),
      eccpipece => '0',
      ena => '0',
      enb => '0',
      injectdbiterr => '0',
      injectsbiterr => '0',
      rdaddrecc(15 downto 0) => NLW_U0_rdaddrecc_UNCONNECTED(15 downto 0),
      regcea => '0',
      regceb => '0',
      rsta => '0',
      rsta_busy => NLW_U0_rsta_busy_UNCONNECTED,
      rstb => '0',
      rstb_busy => NLW_U0_rstb_busy_UNCONNECTED,
      s_aclk => '0',
      s_aresetn => '0',
      s_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_arburst(1 downto 0) => B"00",
      s_axi_arid(3 downto 0) => B"0000",
      s_axi_arlen(7 downto 0) => B"00000000",
      s_axi_arready => NLW_U0_s_axi_arready_UNCONNECTED,
      s_axi_arsize(2 downto 0) => B"000",
      s_axi_arvalid => '0',
      s_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_awburst(1 downto 0) => B"00",
      s_axi_awid(3 downto 0) => B"0000",
      s_axi_awlen(7 downto 0) => B"00000000",
      s_axi_awready => NLW_U0_s_axi_awready_UNCONNECTED,
      s_axi_awsize(2 downto 0) => B"000",
      s_axi_awvalid => '0',
      s_axi_bid(3 downto 0) => NLW_U0_s_axi_bid_UNCONNECTED(3 downto 0),
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => NLW_U0_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_bvalid => NLW_U0_s_axi_bvalid_UNCONNECTED,
      s_axi_dbiterr => NLW_U0_s_axi_dbiterr_UNCONNECTED,
      s_axi_injectdbiterr => '0',
      s_axi_injectsbiterr => '0',
      s_axi_rdaddrecc(15 downto 0) => NLW_U0_s_axi_rdaddrecc_UNCONNECTED(15 downto 0),
      s_axi_rdata(15 downto 0) => NLW_U0_s_axi_rdata_UNCONNECTED(15 downto 0),
      s_axi_rid(3 downto 0) => NLW_U0_s_axi_rid_UNCONNECTED(3 downto 0),
      s_axi_rlast => NLW_U0_s_axi_rlast_UNCONNECTED,
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_U0_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_rvalid => NLW_U0_s_axi_rvalid_UNCONNECTED,
      s_axi_sbiterr => NLW_U0_s_axi_sbiterr_UNCONNECTED,
      s_axi_wdata(15 downto 0) => B"0000000000000000",
      s_axi_wlast => '0',
      s_axi_wready => NLW_U0_s_axi_wready_UNCONNECTED,
      s_axi_wstrb(0) => '0',
      s_axi_wvalid => '0',
      sbiterr => NLW_U0_sbiterr_UNCONNECTED,
      shutdown => '0',
      sleep => '0',
      wea(0) => '0',
      web(0) => '0'
    );
end STRUCTURE;
