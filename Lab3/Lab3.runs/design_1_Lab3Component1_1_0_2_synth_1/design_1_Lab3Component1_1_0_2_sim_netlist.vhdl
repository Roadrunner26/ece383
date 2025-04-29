-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Tue Apr 29 12:42:16 2025
-- Host        : C26-5CG2151LB4 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_Lab3Component1_1_0_2_sim_netlist.vhdl
-- Design      : design_1_Lab3Component1_1_0_2
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tsbg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FlagRegister is
  port (
    flagQOut : out STD_LOGIC;
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    flagQ_reg_0 : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FlagRegister;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FlagRegister is
begin
flagQ_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => flagQ_reg_0,
      Q => flagQOut,
      R => SS(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TDMS_encoder is
  port (
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \dc_bias_reg[1]_0\ : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    \encoded_reg[2]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \encoded_reg[9]_0\ : in STD_LOGIC;
    \encoded_reg[8]_0\ : in STD_LOGIC;
    \encoded_reg[8]_1\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TDMS_encoder;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TDMS_encoder is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \dc_bias[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \dc_bias[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \dc_bias[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \dc_bias_reg_n_0_[0]\ : STD_LOGIC;
  signal \dc_bias_reg_n_0_[1]\ : STD_LOGIC;
  signal \dc_bias_reg_n_0_[2]\ : STD_LOGIC;
  signal \encoded[8]_i_1_n_0\ : STD_LOGIC;
  signal \encoded[9]_i_1_n_0\ : STD_LOGIC;
  signal \encoded[9]_i_3_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \dc_bias[1]_i_1__0\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \dc_bias[2]_i_1__0\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_1__1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \encoded[9]_i_3\ : label is "soft_lutpair85";
begin
  Q(0) <= \^q\(0);
\dc_bias[0]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \dc_bias_reg_n_0_[0]\,
      O => \dc_bias[0]_i_1__1_n_0\
    );
\dc_bias[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A66A"
    )
        port map (
      I0 => \dc_bias_reg_n_0_[1]\,
      I1 => \^q\(0),
      I2 => \dc_bias_reg_n_0_[0]\,
      I3 => \dc_bias_reg[1]_0\,
      O => \dc_bias[1]_i_1__0_n_0\
    );
\dc_bias[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20DF08F7"
    )
        port map (
      I0 => \^q\(0),
      I1 => \dc_bias_reg[1]_0\,
      I2 => \dc_bias_reg_n_0_[0]\,
      I3 => \dc_bias_reg_n_0_[2]\,
      I4 => \dc_bias_reg_n_0_[1]\,
      O => \dc_bias[2]_i_1__0_n_0\
    );
\dc_bias[3]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0008DFFF"
    )
        port map (
      I0 => \^q\(0),
      I1 => \dc_bias_reg[1]_0\,
      I2 => \dc_bias_reg_n_0_[0]\,
      I3 => \dc_bias_reg_n_0_[1]\,
      I4 => \dc_bias_reg_n_0_[2]\,
      O => \dc_bias[3]_i_1__1_n_0\
    );
\dc_bias_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \dc_bias[0]_i_1__1_n_0\,
      Q => \dc_bias_reg_n_0_[0]\,
      R => SR(0)
    );
\dc_bias_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \dc_bias[1]_i_1__0_n_0\,
      Q => \dc_bias_reg_n_0_[1]\,
      R => SR(0)
    );
\dc_bias_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \dc_bias[2]_i_1__0_n_0\,
      Q => \dc_bias_reg_n_0_[2]\,
      R => SR(0)
    );
\dc_bias_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \dc_bias[3]_i_1__1_n_0\,
      Q => \^q\(0),
      R => SR(0)
    );
\encoded[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA2EEEE"
    )
        port map (
      I0 => \encoded_reg[8]_0\,
      I1 => \encoded_reg[8]_1\,
      I2 => \encoded[9]_i_3_n_0\,
      I3 => \^q\(0),
      I4 => \dc_bias_reg[1]_0\,
      O => \encoded[8]_i_1_n_0\
    );
\encoded[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8989F9F9F9F98909"
    )
        port map (
      I0 => \encoded_reg[9]_0\,
      I1 => \encoded_reg[8]_0\,
      I2 => \encoded_reg[8]_1\,
      I3 => \encoded[9]_i_3_n_0\,
      I4 => \^q\(0),
      I5 => \dc_bias_reg[1]_0\,
      O => \encoded[9]_i_1_n_0\
    );
\encoded[9]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \dc_bias_reg_n_0_[2]\,
      I1 => \dc_bias_reg_n_0_[1]\,
      I2 => \dc_bias_reg_n_0_[0]\,
      O => \encoded[9]_i_3_n_0\
    );
\encoded_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \encoded_reg[2]_0\(0),
      Q => D(0),
      R => '0'
    );
\encoded_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \encoded_reg[2]_0\(1),
      Q => D(1),
      R => '0'
    );
\encoded_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \encoded[8]_i_1_n_0\,
      Q => D(2),
      R => '0'
    );
\encoded_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \encoded[9]_i_1_n_0\,
      Q => D(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TDMS_encoder_0 is
  port (
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \encoded_reg[9]_0\ : in STD_LOGIC;
    \encoded_reg[9]_1\ : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TDMS_encoder_0 : entity is "TDMS_encoder";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TDMS_encoder_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TDMS_encoder_0 is
  signal \dc_bias[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \dc_bias[1]_i_1_n_0\ : STD_LOGIC;
  signal \dc_bias[2]_i_1_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \dc_bias_reg_n_0_[0]\ : STD_LOGIC;
  signal \dc_bias_reg_n_0_[1]\ : STD_LOGIC;
  signal \dc_bias_reg_n_0_[2]\ : STD_LOGIC;
  signal \encoded[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \encoded[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \encoded[8]_i_1_n_0\ : STD_LOGIC;
  signal \encoded[9]_i_1_n_0\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \dc_bias[0]_i_1__0\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \dc_bias[1]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \dc_bias[2]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_1__0\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \encoded[0]_i_1__0\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \encoded[2]_i_1__0\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \encoded[8]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \encoded[9]_i_1\ : label is "soft_lutpair88";
begin
\dc_bias[0]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in,
      I1 => \dc_bias_reg_n_0_[0]\,
      O => \dc_bias[0]_i_1__0_n_0\
    );
\dc_bias[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"69AA"
    )
        port map (
      I0 => \dc_bias_reg_n_0_[1]\,
      I1 => \dc_bias_reg_n_0_[0]\,
      I2 => \encoded_reg[9]_1\,
      I3 => p_1_in,
      O => \dc_bias[1]_i_1_n_0\
    );
\dc_bias[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"870F0F2D"
    )
        port map (
      I0 => p_1_in,
      I1 => \encoded_reg[9]_1\,
      I2 => \dc_bias_reg_n_0_[2]\,
      I3 => \dc_bias_reg_n_0_[1]\,
      I4 => \dc_bias_reg_n_0_[0]\,
      O => \dc_bias[2]_i_1_n_0\
    );
\dc_bias[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"070F0F2F"
    )
        port map (
      I0 => p_1_in,
      I1 => \encoded_reg[9]_1\,
      I2 => \dc_bias_reg_n_0_[2]\,
      I3 => \dc_bias_reg_n_0_[1]\,
      I4 => \dc_bias_reg_n_0_[0]\,
      O => \dc_bias[3]_i_1__0_n_0\
    );
\dc_bias_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \dc_bias[0]_i_1__0_n_0\,
      Q => \dc_bias_reg_n_0_[0]\,
      R => SR(0)
    );
\dc_bias_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \dc_bias[1]_i_1_n_0\,
      Q => \dc_bias_reg_n_0_[1]\,
      R => SR(0)
    );
\dc_bias_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \dc_bias[2]_i_1_n_0\,
      Q => \dc_bias_reg_n_0_[2]\,
      R => SR(0)
    );
\dc_bias_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \dc_bias[3]_i_1__0_n_0\,
      Q => p_1_in,
      R => SR(0)
    );
\encoded[0]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_1_in,
      I1 => \encoded_reg[9]_0\,
      O => \encoded[0]_i_1__0_n_0\
    );
\encoded[2]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => p_1_in,
      I1 => \encoded_reg[9]_0\,
      O => \encoded[2]_i_1__0_n_0\
    );
\encoded[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"D"
    )
        port map (
      I0 => \encoded_reg[9]_0\,
      I1 => \encoded_reg[9]_1\,
      O => \encoded[8]_i_1_n_0\
    );
\encoded[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D7"
    )
        port map (
      I0 => \encoded_reg[9]_0\,
      I1 => p_1_in,
      I2 => \encoded_reg[9]_1\,
      O => \encoded[9]_i_1_n_0\
    );
\encoded_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \encoded[0]_i_1__0_n_0\,
      Q => D(0),
      R => '0'
    );
\encoded_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \encoded[2]_i_1__0_n_0\,
      Q => D(1),
      R => '0'
    );
\encoded_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \encoded[8]_i_1_n_0\,
      Q => D(2),
      R => '0'
    );
\encoded_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \encoded[9]_i_1_n_0\,
      Q => D(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TDMS_encoder_1 is
  port (
    \triggerVolt_reg[6]\ : out STD_LOGIC;
    \triggerVolt_reg[4]\ : out STD_LOGIC;
    \triggerTime_reg[6]\ : out STD_LOGIC;
    \triggerTime_reg[4]\ : out STD_LOGIC;
    \triggerTime_reg[6]_0\ : out STD_LOGIC;
    \triggerTime_reg[3]\ : out STD_LOGIC;
    \triggerVolt_reg[6]_0\ : out STD_LOGIC;
    \triggerVolt_reg[3]\ : out STD_LOGIC;
    \triggerVolt_reg[4]_0\ : out STD_LOGIC;
    \triggerTime_reg[4]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \encoded_reg[9]_0\ : in STD_LOGIC;
    triggerVoltOut : in STD_LOGIC_VECTOR ( 5 downto 0 );
    triggerTimeOut : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \encoded_reg[9]_1\ : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TDMS_encoder_1 : entity is "TDMS_encoder";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TDMS_encoder_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TDMS_encoder_1 is
  signal \dc_bias[0]_i_1_n_0\ : STD_LOGIC;
  signal \dc_bias[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \dc_bias[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \dc_bias_reg_n_0_[0]\ : STD_LOGIC;
  signal \dc_bias_reg_n_0_[1]\ : STD_LOGIC;
  signal \dc_bias_reg_n_0_[2]\ : STD_LOGIC;
  signal encoded1_in : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \encoded[8]_i_1_n_0\ : STD_LOGIC;
  signal \encoded[9]_i_1_n_0\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \dc_bias[0]_i_1\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \dc_bias[1]_i_1__1\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \dc_bias[2]_i_1__1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_189\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_198\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_2__0\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \encoded[0]_i_1__1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \encoded[2]_i_1__1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \encoded[8]_i_1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \encoded[9]_i_1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \i__carry__0_i_3\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \i__carry__0_i_3__0\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \i__carry_i_10\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \i__carry_i_10__0\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \i__carry_i_9__1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \i__carry_i_9__2\ : label is "soft_lutpair95";
begin
\dc_bias[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in,
      I1 => \dc_bias_reg_n_0_[0]\,
      O => \dc_bias[0]_i_1_n_0\
    );
\dc_bias[1]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"96AA"
    )
        port map (
      I0 => \dc_bias_reg_n_0_[1]\,
      I1 => \dc_bias_reg_n_0_[0]\,
      I2 => \encoded_reg[9]_0\,
      I3 => p_1_in,
      O => \dc_bias[1]_i_1__1_n_0\
    );
\dc_bias[2]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"59655555"
    )
        port map (
      I0 => \dc_bias_reg_n_0_[2]\,
      I1 => \dc_bias_reg_n_0_[1]\,
      I2 => \encoded_reg[9]_0\,
      I3 => \dc_bias_reg_n_0_[0]\,
      I4 => p_1_in,
      O => \dc_bias[2]_i_1__1_n_0\
    );
\dc_bias[3]_i_114\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => triggerVoltOut(4),
      I1 => triggerVoltOut(2),
      I2 => triggerVoltOut(0),
      I3 => triggerVoltOut(1),
      I4 => triggerVoltOut(3),
      I5 => triggerVoltOut(5),
      O => \triggerVolt_reg[6]\
    );
\dc_bias[3]_i_150\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => triggerTimeOut(4),
      I1 => triggerTimeOut(2),
      I2 => triggerTimeOut(0),
      I3 => triggerTimeOut(1),
      I4 => triggerTimeOut(3),
      I5 => triggerTimeOut(5),
      O => \triggerTime_reg[6]\
    );
\dc_bias[3]_i_189\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => triggerVoltOut(2),
      I1 => triggerVoltOut(0),
      I2 => triggerVoltOut(1),
      I3 => triggerVoltOut(3),
      O => \triggerVolt_reg[4]\
    );
\dc_bias[3]_i_198\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => triggerTimeOut(2),
      I1 => triggerTimeOut(0),
      I2 => triggerTimeOut(1),
      I3 => triggerTimeOut(3),
      O => \triggerTime_reg[4]\
    );
\dc_bias[3]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0D0F0F8F"
    )
        port map (
      I0 => p_1_in,
      I1 => \encoded_reg[9]_0\,
      I2 => \dc_bias_reg_n_0_[2]\,
      I3 => \dc_bias_reg_n_0_[0]\,
      I4 => \dc_bias_reg_n_0_[1]\,
      O => \dc_bias[3]_i_2__0_n_0\
    );
\dc_bias_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \dc_bias[0]_i_1_n_0\,
      Q => \dc_bias_reg_n_0_[0]\,
      R => SR(0)
    );
\dc_bias_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \dc_bias[1]_i_1__1_n_0\,
      Q => \dc_bias_reg_n_0_[1]\,
      R => SR(0)
    );
\dc_bias_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \dc_bias[2]_i_1__1_n_0\,
      Q => \dc_bias_reg_n_0_[2]\,
      R => SR(0)
    );
\dc_bias_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \dc_bias[3]_i_2__0_n_0\,
      Q => p_1_in,
      R => SR(0)
    );
\encoded[0]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_1_in,
      I1 => \encoded_reg[9]_1\,
      O => encoded1_in(0)
    );
\encoded[2]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => p_1_in,
      I1 => \encoded_reg[9]_1\,
      O => encoded1_in(2)
    );
\encoded[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \encoded_reg[9]_1\,
      I1 => \encoded_reg[9]_0\,
      O => \encoded[8]_i_1_n_0\
    );
\encoded[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7D"
    )
        port map (
      I0 => \encoded_reg[9]_1\,
      I1 => p_1_in,
      I2 => \encoded_reg[9]_0\,
      O => \encoded[9]_i_1_n_0\
    );
\encoded_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => encoded1_in(0),
      Q => D(0),
      R => '0'
    );
\encoded_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => encoded1_in(2),
      Q => D(1),
      R => '0'
    );
\encoded_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \encoded[8]_i_1_n_0\,
      Q => D(2),
      R => '0'
    );
\encoded_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \encoded[9]_i_1_n_0\,
      Q => D(3),
      R => '0'
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => triggerTimeOut(4),
      I1 => triggerTimeOut(1),
      I2 => triggerTimeOut(2),
      I3 => triggerTimeOut(3),
      I4 => triggerTimeOut(5),
      O => \triggerTime_reg[6]_0\
    );
\i__carry__0_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => triggerVoltOut(4),
      I1 => triggerVoltOut(1),
      I2 => triggerVoltOut(2),
      I3 => triggerVoltOut(3),
      I4 => triggerVoltOut(5),
      O => \triggerVolt_reg[6]_0\
    );
\i__carry_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => triggerTimeOut(1),
      I1 => triggerTimeOut(2),
      I2 => triggerTimeOut(3),
      O => \triggerTime_reg[3]\
    );
\i__carry_i_10__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => triggerVoltOut(1),
      I1 => triggerVoltOut(2),
      I2 => triggerVoltOut(3),
      O => \triggerVolt_reg[3]\
    );
\i__carry_i_9__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => triggerVoltOut(2),
      I1 => triggerVoltOut(0),
      I2 => triggerVoltOut(1),
      I3 => triggerVoltOut(3),
      O => \triggerVolt_reg[4]_0\
    );
\i__carry_i_9__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => triggerTimeOut(2),
      I1 => triggerTimeOut(0),
      I2 => triggerTimeOut(1),
      I3 => triggerTimeOut(3),
      O => \triggerTime_reg[4]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TWICtl is
  port (
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \state_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \state_reg[2]\ : out STD_LOGIC;
    scl : inout STD_LOGIC;
    sda : inout STD_LOGIC;
    CLK : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    stb : in STD_LOGIC;
    \FSM_gray_state_reg[2]_0\ : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    \state_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \state_reg[1]_0\ : in STD_LOGIC;
    \state_reg[1]_1\ : in STD_LOGIC;
    \initA_reg[0]\ : in STD_LOGIC;
    \initA_reg[0]_0\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \initA_reg[0]_1\ : in STD_LOGIC;
    \state_reg[2]_0\ : in STD_LOGIC;
    \state_reg[2]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \state_reg[3]\ : in STD_LOGIC;
    initEn_reg : in STD_LOGIC;
    \state_reg[1]_2\ : in STD_LOGIC;
    \state_reg[1]_3\ : in STD_LOGIC;
    initEn_reg_0 : in STD_LOGIC;
    initEn : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TWICtl;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TWICtl is
  signal DONE_O_i_1_n_0 : STD_LOGIC;
  signal DONE_O_i_2_n_0 : STD_LOGIC;
  signal DONE_O_i_3_n_0 : STD_LOGIC;
  signal DONE_O_i_4_n_0 : STD_LOGIC;
  signal ERR_O_i_1_n_0 : STD_LOGIC;
  signal ERR_O_i_2_n_0 : STD_LOGIC;
  signal \FSM_gray_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_gray_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_gray_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_gray_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_gray_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_gray_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_gray_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_gray_state[3]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_gray_state[3]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_gray_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_gray_state[3]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_gray_state[3]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_gray_state[3]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_gray_state[3]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_gray_state[3]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_gray_state[3]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_gray_state[3]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_gray_state[3]_i_9_n_0\ : STD_LOGIC;
  signal addrNData : STD_LOGIC;
  signal addrNData_i_1_n_0 : STD_LOGIC;
  signal bitCount : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \bitCount[0]_i_1_n_0\ : STD_LOGIC;
  signal \bitCount[1]_i_1_n_0\ : STD_LOGIC;
  signal \bitCount[2]_i_1_n_0\ : STD_LOGIC;
  signal busFreeCnt0 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal busFreeCnt0_1 : STD_LOGIC;
  signal \busFreeCnt[6]_i_3_n_0\ : STD_LOGIC;
  signal busFreeCnt_reg : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal busState0 : STD_LOGIC;
  signal \busState[0]_i_1_n_0\ : STD_LOGIC;
  signal \busState[1]_i_1_n_0\ : STD_LOGIC;
  signal \busState_reg_n_0_[0]\ : STD_LOGIC;
  signal \busState_reg_n_0_[1]\ : STD_LOGIC;
  signal dScl : STD_LOGIC;
  signal dataByte : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal dataByte0 : STD_LOGIC;
  signal \dataByte[7]_i_1_n_0\ : STD_LOGIC;
  signal \dataByte[7]_i_3_n_0\ : STD_LOGIC;
  signal \dataByte[7]_i_4_n_0\ : STD_LOGIC;
  signal \dataByte[7]_i_5_n_0\ : STD_LOGIC;
  signal \dataByte[7]_i_6_n_0\ : STD_LOGIC;
  signal \dataByte[7]_i_7_n_0\ : STD_LOGIC;
  signal \dataByte[7]_i_8_n_0\ : STD_LOGIC;
  signal \dataByte[7]_i_9_n_0\ : STD_LOGIC;
  signal \dataByte_reg_n_0_[0]\ : STD_LOGIC;
  signal ddSda : STD_LOGIC;
  signal done : STD_LOGIC;
  signal error : STD_LOGIC;
  signal \initA[6]_i_4_n_0\ : STD_LOGIC;
  signal initEn_i_2_n_0 : STD_LOGIC;
  signal int_Rst : STD_LOGIC;
  signal int_Rst_i_1_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rScl : STD_LOGIC;
  signal rScl_i_1_n_0 : STD_LOGIC;
  signal rScl_i_2_n_0 : STD_LOGIC;
  signal rSda : STD_LOGIC;
  signal rSda_i_1_n_0 : STD_LOGIC;
  signal rSda_i_2_n_0 : STD_LOGIC;
  signal rSda_i_3_n_0 : STD_LOGIC;
  signal sclCnt0 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal sclCnt0_0 : STD_LOGIC;
  signal \sclCnt[6]_i_2_n_0\ : STD_LOGIC;
  signal \sclCnt[6]_i_4_n_0\ : STD_LOGIC;
  signal sclCnt_reg : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal scl_INST_0_i_1_n_0 : STD_LOGIC;
  signal sda_INST_0_i_1_n_0 : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \state[1]_i_3_n_0\ : STD_LOGIC;
  signal \state[1]_i_5_n_0\ : STD_LOGIC;
  signal \state[3]_i_5_n_0\ : STD_LOGIC;
  signal \subState[0]_i_1_n_0\ : STD_LOGIC;
  signal \subState[1]_i_1_n_0\ : STD_LOGIC;
  signal \subState[1]_i_2_n_0\ : STD_LOGIC;
  signal \subState[1]_i_3_n_0\ : STD_LOGIC;
  signal \subState_reg_n_0_[0]\ : STD_LOGIC;
  signal \subState_reg_n_0_[1]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of DONE_O_i_3 : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of DONE_O_i_4 : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \FSM_gray_state[0]_i_2\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \FSM_gray_state[1]_i_2\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \FSM_gray_state[2]_i_3\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \FSM_gray_state[3]_i_10\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \FSM_gray_state[3]_i_4\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \FSM_gray_state[3]_i_5\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \FSM_gray_state[3]_i_7\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \FSM_gray_state[3]_i_8\ : label is "soft_lutpair41";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_gray_state_reg[0]\ : label is "stwrite:0000,stread:0010,ststart:0100,stidle:0001,stmnackstart:0110,stmack:0111,stsack:0011,stmnackstop:0101,ststop:1100";
  attribute FSM_ENCODED_STATES of \FSM_gray_state_reg[1]\ : label is "stwrite:0000,stread:0010,ststart:0100,stidle:0001,stmnackstart:0110,stmack:0111,stsack:0011,stmnackstop:0101,ststop:1100";
  attribute FSM_ENCODED_STATES of \FSM_gray_state_reg[2]\ : label is "stwrite:0000,stread:0010,ststart:0100,stidle:0001,stmnackstart:0110,stmack:0111,stsack:0011,stmnackstop:0101,ststop:1100";
  attribute FSM_ENCODED_STATES of \FSM_gray_state_reg[3]\ : label is "stwrite:0000,stread:0010,ststart:0100,stidle:0001,stmnackstart:0110,stmack:0111,stsack:0011,stmnackstop:0101,ststop:1100";
  attribute SOFT_HLUTNM of \bitCount[0]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \bitCount[1]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \busFreeCnt[0]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \busFreeCnt[2]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \busFreeCnt[3]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \busFreeCnt[4]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \dataByte[7]_i_3\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \dataByte[7]_i_4\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \dataByte[7]_i_6\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \dataByte[7]_i_8\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \dataByte[7]_i_9\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \sclCnt[1]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \sclCnt[2]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \sclCnt[3]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \sclCnt[4]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \sclCnt[6]_i_3\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of sda_INST_0_i_1 : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \state[0]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \state[1]_i_5\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \subState[1]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \subState[1]_i_2\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \subState[1]_i_3\ : label is "soft_lutpair27";
begin
DONE_O_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF23222323"
    )
        port map (
      I0 => DONE_O_i_2_n_0,
      I1 => \dataByte[7]_i_4_n_0\,
      I2 => DONE_O_i_3_n_0,
      I3 => p_0_in(0),
      I4 => addrNData,
      I5 => DONE_O_i_4_n_0,
      O => DONE_O_i_1_n_0
    );
DONE_O_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => bitCount(0),
      I1 => bitCount(1),
      I2 => bitCount(2),
      I3 => state(0),
      I4 => \FSM_gray_state[2]_i_3_n_0\,
      O => DONE_O_i_2_n_0
    );
DONE_O_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FDFF"
    )
        port map (
      I0 => state(1),
      I1 => state(2),
      I2 => state(3),
      I3 => state(0),
      O => DONE_O_i_3_n_0
    );
DONE_O_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => state(2),
      I1 => state(3),
      I2 => state(0),
      I3 => state(1),
      I4 => \FSM_gray_state[3]_i_7_n_0\,
      O => DONE_O_i_4_n_0
    );
DONE_O_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => DONE_O_i_1_n_0,
      Q => done,
      R => '0'
    );
ERR_O_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0030000500000005"
    )
        port map (
      I0 => \FSM_gray_state[3]_i_7_n_0\,
      I1 => \dataByte[7]_i_4_n_0\,
      I2 => state(0),
      I3 => ERR_O_i_2_n_0,
      I4 => state(1),
      I5 => p_0_in(0),
      O => ERR_O_i_1_n_0
    );
ERR_O_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => state(2),
      I1 => state(3),
      O => ERR_O_i_2_n_0
    );
ERR_O_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => ERR_O_i_1_n_0,
      Q => error,
      R => '0'
    );
\FSM_gray_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0161"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => state(2),
      I3 => \FSM_gray_state[3]_i_7_n_0\,
      I4 => \FSM_gray_state[0]_i_2_n_0\,
      I5 => state(3),
      O => \FSM_gray_state[0]_i_1_n_0\
    );
\FSM_gray_state[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11011111"
    )
        port map (
      I0 => state(0),
      I1 => state(2),
      I2 => \FSM_gray_state_reg[2]_0\,
      I3 => int_Rst,
      I4 => stb,
      O => \FSM_gray_state[0]_i_2_n_0\
    );
\FSM_gray_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CC000322"
    )
        port map (
      I0 => \FSM_gray_state[3]_i_7_n_0\,
      I1 => state(0),
      I2 => \FSM_gray_state[1]_i_2_n_0\,
      I3 => state(1),
      I4 => state(2),
      I5 => state(3),
      O => \FSM_gray_state[1]_i_1_n_0\
    );
\FSM_gray_state[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => int_Rst,
      I1 => stb,
      O => \FSM_gray_state[1]_i_2_n_0\
    );
\FSM_gray_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAEAAAFAAAFAAAA"
    )
        port map (
      I0 => \FSM_gray_state[2]_i_2_n_0\,
      I1 => \FSM_gray_state[3]_i_9_n_0\,
      I2 => state(2),
      I3 => state(3),
      I4 => state(0),
      I5 => state(1),
      O => \FSM_gray_state[2]_i_1_n_0\
    );
\FSM_gray_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0808080808FF0808"
    )
        port map (
      I0 => \FSM_gray_state[3]_i_7_n_0\,
      I1 => \FSM_gray_state[3]_i_8_n_0\,
      I2 => state(3),
      I3 => \FSM_gray_state[2]_i_3_n_0\,
      I4 => \FSM_gray_state_reg[2]_0\,
      I5 => addrNData,
      O => \FSM_gray_state[2]_i_2_n_0\
    );
\FSM_gray_state[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => state(3),
      I1 => state(2),
      I2 => state(1),
      O => \FSM_gray_state[2]_i_3_n_0\
    );
\FSM_gray_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAEEFEEAFAEAFAE"
    )
        port map (
      I0 => \FSM_gray_state[3]_i_3_n_0\,
      I1 => \FSM_gray_state[3]_i_4_n_0\,
      I2 => \FSM_gray_state[3]_i_5_n_0\,
      I3 => \FSM_gray_state[3]_i_6_n_0\,
      I4 => \FSM_gray_state[3]_i_7_n_0\,
      I5 => \FSM_gray_state[3]_i_8_n_0\,
      O => \FSM_gray_state[3]_i_1_n_0\
    );
\FSM_gray_state[3]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFFFFFF"
    )
        port map (
      I0 => state(2),
      I1 => state(3),
      I2 => state(1),
      I3 => state(0),
      I4 => s00_axi_aresetn,
      O => \FSM_gray_state[3]_i_10_n_0\
    );
\FSM_gray_state[3]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000020000000"
    )
        port map (
      I0 => \subState_reg_n_0_[1]\,
      I1 => \subState_reg_n_0_[0]\,
      I2 => state(3),
      I3 => state(2),
      I4 => \dataByte[7]_i_8_n_0\,
      I5 => \subState[1]_i_2_n_0\,
      O => \FSM_gray_state[3]_i_11_n_0\
    );
\FSM_gray_state[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"002C000000200000"
    )
        port map (
      I0 => \FSM_gray_state[3]_i_7_n_0\,
      I1 => state(1),
      I2 => state(2),
      I3 => state(3),
      I4 => state(0),
      I5 => \FSM_gray_state[3]_i_9_n_0\,
      O => \FSM_gray_state[3]_i_2_n_0\
    );
\FSM_gray_state[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0008"
    )
        port map (
      I0 => \busState_reg_n_0_[0]\,
      I1 => stb,
      I2 => \busState_reg_n_0_[1]\,
      I3 => \FSM_gray_state[3]_i_10_n_0\,
      I4 => DONE_O_i_4_n_0,
      I5 => \FSM_gray_state[3]_i_11_n_0\,
      O => \FSM_gray_state[3]_i_3_n_0\
    );
\FSM_gray_state[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => state(2),
      I1 => state(3),
      O => \FSM_gray_state[3]_i_4_n_0\
    );
\FSM_gray_state[3]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => \subState_reg_n_0_[1]\,
      I1 => \subState_reg_n_0_[0]\,
      I2 => \subState[1]_i_2_n_0\,
      O => \FSM_gray_state[3]_i_5_n_0\
    );
\FSM_gray_state[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EAAA0001"
    )
        port map (
      I0 => state(0),
      I1 => bitCount(2),
      I2 => bitCount(1),
      I3 => bitCount(0),
      I4 => state(1),
      I5 => state(3),
      O => \FSM_gray_state[3]_i_6_n_0\
    );
\FSM_gray_state[3]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => dScl,
      I1 => p_0_in(0),
      I2 => rSda,
      O => \FSM_gray_state[3]_i_7_n_0\
    );
\FSM_gray_state[3]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      O => \FSM_gray_state[3]_i_8_n_0\
    );
\FSM_gray_state[3]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFAB"
    )
        port map (
      I0 => \dataByte_reg_n_0_[0]\,
      I1 => stb,
      I2 => addrNData,
      I3 => int_Rst,
      O => \FSM_gray_state[3]_i_9_n_0\
    );
\FSM_gray_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \FSM_gray_state[3]_i_1_n_0\,
      D => \FSM_gray_state[0]_i_1_n_0\,
      Q => state(0),
      R => '0'
    );
\FSM_gray_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \FSM_gray_state[3]_i_1_n_0\,
      D => \FSM_gray_state[1]_i_1_n_0\,
      Q => state(1),
      R => '0'
    );
\FSM_gray_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \FSM_gray_state[3]_i_1_n_0\,
      D => \FSM_gray_state[2]_i_1_n_0\,
      Q => state(2),
      R => '0'
    );
\FSM_gray_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \FSM_gray_state[3]_i_1_n_0\,
      D => \FSM_gray_state[3]_i_2_n_0\,
      Q => state(3),
      R => '0'
    );
addrNData_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => addrNData,
      I1 => \dataByte[7]_i_3_n_0\,
      I2 => \dataByte[7]_i_6_n_0\,
      O => addrNData_i_1_n_0
    );
addrNData_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => addrNData_i_1_n_0,
      Q => addrNData,
      R => '0'
    );
\bitCount[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF6F"
    )
        port map (
      I0 => bitCount(0),
      I1 => dataByte0,
      I2 => \dataByte[7]_i_6_n_0\,
      I3 => \dataByte[7]_i_3_n_0\,
      O => \bitCount[0]_i_1_n_0\
    );
\bitCount[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFA6FF"
    )
        port map (
      I0 => bitCount(1),
      I1 => dataByte0,
      I2 => bitCount(0),
      I3 => \dataByte[7]_i_6_n_0\,
      I4 => \dataByte[7]_i_3_n_0\,
      O => \bitCount[1]_i_1_n_0\
    );
\bitCount[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAA6FFFF"
    )
        port map (
      I0 => bitCount(2),
      I1 => dataByte0,
      I2 => bitCount(0),
      I3 => bitCount(1),
      I4 => \dataByte[7]_i_6_n_0\,
      I5 => \dataByte[7]_i_3_n_0\,
      O => \bitCount[2]_i_1_n_0\
    );
\bitCount[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004000408"
    )
        port map (
      I0 => \subState_reg_n_0_[1]\,
      I1 => \subState_reg_n_0_[0]\,
      I2 => \subState[1]_i_2_n_0\,
      I3 => state(1),
      I4 => state(0),
      I5 => ERR_O_i_2_n_0,
      O => dataByte0
    );
\bitCount_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \bitCount[0]_i_1_n_0\,
      Q => bitCount(0),
      R => '0'
    );
\bitCount_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \bitCount[1]_i_1_n_0\,
      Q => bitCount(1),
      R => '0'
    );
\bitCount_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \bitCount[2]_i_1_n_0\,
      Q => bitCount(2),
      R => '0'
    );
\busFreeCnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => busFreeCnt_reg(0),
      O => busFreeCnt0(0)
    );
\busFreeCnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => busFreeCnt_reg(1),
      I1 => busFreeCnt_reg(0),
      O => busFreeCnt0(1)
    );
\busFreeCnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => busFreeCnt_reg(2),
      I1 => busFreeCnt_reg(0),
      I2 => busFreeCnt_reg(1),
      O => busFreeCnt0(2)
    );
\busFreeCnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
        port map (
      I0 => busFreeCnt_reg(3),
      I1 => busFreeCnt_reg(1),
      I2 => busFreeCnt_reg(0),
      I3 => busFreeCnt_reg(2),
      O => busFreeCnt0(3)
    );
\busFreeCnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA9"
    )
        port map (
      I0 => busFreeCnt_reg(4),
      I1 => busFreeCnt_reg(2),
      I2 => busFreeCnt_reg(0),
      I3 => busFreeCnt_reg(1),
      I4 => busFreeCnt_reg(3),
      O => busFreeCnt0(4)
    );
\busFreeCnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA9"
    )
        port map (
      I0 => busFreeCnt_reg(5),
      I1 => busFreeCnt_reg(3),
      I2 => busFreeCnt_reg(1),
      I3 => busFreeCnt_reg(0),
      I4 => busFreeCnt_reg(2),
      I5 => busFreeCnt_reg(4),
      O => busFreeCnt0(5)
    );
\busFreeCnt[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => p_0_in(0),
      I1 => int_Rst,
      I2 => dScl,
      O => busFreeCnt0_1
    );
\busFreeCnt[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \busFreeCnt[6]_i_3_n_0\,
      I1 => busFreeCnt_reg(6),
      O => busFreeCnt0(6)
    );
\busFreeCnt[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => busFreeCnt_reg(4),
      I1 => busFreeCnt_reg(2),
      I2 => busFreeCnt_reg(0),
      I3 => busFreeCnt_reg(1),
      I4 => busFreeCnt_reg(3),
      I5 => busFreeCnt_reg(5),
      O => \busFreeCnt[6]_i_3_n_0\
    );
\busFreeCnt_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => busFreeCnt0(0),
      Q => busFreeCnt_reg(0),
      S => busFreeCnt0_1
    );
\busFreeCnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => busFreeCnt0(1),
      Q => busFreeCnt_reg(1),
      R => busFreeCnt0_1
    );
\busFreeCnt_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => busFreeCnt0(2),
      Q => busFreeCnt_reg(2),
      S => busFreeCnt0_1
    );
\busFreeCnt_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => busFreeCnt0(3),
      Q => busFreeCnt_reg(3),
      S => busFreeCnt0_1
    );
\busFreeCnt_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => busFreeCnt0(4),
      Q => busFreeCnt_reg(4),
      S => busFreeCnt0_1
    );
\busFreeCnt_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => busFreeCnt0(5),
      Q => busFreeCnt_reg(5),
      S => busFreeCnt0_1
    );
\busFreeCnt_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => busFreeCnt0(6),
      Q => busFreeCnt_reg(6),
      S => busFreeCnt0_1
    );
\busState[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00DFFFFF00DF0000"
    )
        port map (
      I0 => dScl,
      I1 => p_0_in(0),
      I2 => ddSda,
      I3 => int_Rst,
      I4 => busState0,
      I5 => \busState_reg_n_0_[0]\,
      O => \busState[0]_i_1_n_0\
    );
\busState[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020FFFF00200000"
    )
        port map (
      I0 => ddSda,
      I1 => p_0_in(0),
      I2 => dScl,
      I3 => int_Rst,
      I4 => busState0,
      I5 => \busState_reg_n_0_[1]\,
      O => \busState[1]_i_1_n_0\
    );
\busState[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF20FF20FF20FFFF"
    )
        port map (
      I0 => dScl,
      I1 => p_0_in(0),
      I2 => ddSda,
      I3 => int_Rst,
      I4 => busFreeCnt_reg(6),
      I5 => \busFreeCnt[6]_i_3_n_0\,
      O => busState0
    );
\busState_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \busState[0]_i_1_n_0\,
      Q => \busState_reg_n_0_[0]\,
      R => '0'
    );
\busState_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \busState[1]_i_1_n_0\,
      Q => \busState_reg_n_0_[1]\,
      R => '0'
    );
dScl_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => scl,
      Q => dScl,
      R => '0'
    );
dSda_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => sda,
      Q => p_0_in(0),
      R => '0'
    );
\dataByte[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => p_0_in(0),
      I1 => \dataByte[7]_i_7_n_0\,
      I2 => \dataByte[7]_i_6_n_0\,
      I3 => Q(0),
      O => p_1_in(0)
    );
\dataByte[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFEA"
    )
        port map (
      I0 => \dataByte[7]_i_3_n_0\,
      I1 => \dataByte_reg_n_0_[0]\,
      I2 => \dataByte[7]_i_6_n_0\,
      I3 => Q(1),
      O => p_1_in(1)
    );
\dataByte[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFEA"
    )
        port map (
      I0 => \dataByte[7]_i_3_n_0\,
      I1 => dataByte(1),
      I2 => \dataByte[7]_i_6_n_0\,
      I3 => Q(2),
      O => p_1_in(2)
    );
\dataByte[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => \dataByte[7]_i_6_n_0\,
      I1 => Q(3),
      I2 => dataByte(2),
      I3 => \dataByte[7]_i_7_n_0\,
      O => p_1_in(3)
    );
\dataByte[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFEA"
    )
        port map (
      I0 => \dataByte[7]_i_3_n_0\,
      I1 => dataByte(3),
      I2 => \dataByte[7]_i_6_n_0\,
      I3 => Q(4),
      O => p_1_in(4)
    );
\dataByte[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFEA"
    )
        port map (
      I0 => \dataByte[7]_i_3_n_0\,
      I1 => dataByte(4),
      I2 => \dataByte[7]_i_6_n_0\,
      I3 => Q(5),
      O => p_1_in(5)
    );
\dataByte[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFEA"
    )
        port map (
      I0 => \dataByte[7]_i_3_n_0\,
      I1 => dataByte(5),
      I2 => \dataByte[7]_i_6_n_0\,
      I3 => Q(6),
      O => p_1_in(6)
    );
\dataByte[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAAAABA"
    )
        port map (
      I0 => \dataByte[7]_i_3_n_0\,
      I1 => \dataByte[7]_i_4_n_0\,
      I2 => state(1),
      I3 => state(2),
      I4 => state(3),
      I5 => \dataByte[7]_i_5_n_0\,
      O => \dataByte[7]_i_1_n_0\
    );
\dataByte[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => \dataByte[7]_i_6_n_0\,
      I1 => Q(7),
      I2 => dataByte(6),
      I3 => \dataByte[7]_i_7_n_0\,
      O => p_1_in(7)
    );
\dataByte[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => state(2),
      I3 => state(3),
      I4 => \subState[1]_i_2_n_0\,
      O => \dataByte[7]_i_3_n_0\
    );
\dataByte[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => \subState_reg_n_0_[0]\,
      I1 => \subState_reg_n_0_[1]\,
      I2 => \subState[1]_i_2_n_0\,
      O => \dataByte[7]_i_4_n_0\
    );
\dataByte[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000000FF0000"
    )
        port map (
      I0 => \subState_reg_n_0_[1]\,
      I1 => \dataByte[7]_i_8_n_0\,
      I2 => state(3),
      I3 => \subState[1]_i_2_n_0\,
      I4 => \subState_reg_n_0_[0]\,
      I5 => DONE_O_i_3_n_0,
      O => \dataByte[7]_i_5_n_0\
    );
\dataByte[7]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFBFFFF"
    )
        port map (
      I0 => \FSM_gray_state[3]_i_5_n_0\,
      I1 => state(0),
      I2 => state(3),
      I3 => state(2),
      I4 => state(1),
      O => \dataByte[7]_i_6_n_0\
    );
\dataByte[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFDFAFF"
    )
        port map (
      I0 => state(1),
      I1 => \dataByte[7]_i_9_n_0\,
      I2 => state(3),
      I3 => state(2),
      I4 => state(0),
      I5 => \subState[1]_i_2_n_0\,
      O => \dataByte[7]_i_7_n_0\
    );
\dataByte[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      O => \dataByte[7]_i_8_n_0\
    );
\dataByte[7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \subState_reg_n_0_[0]\,
      I1 => \subState_reg_n_0_[1]\,
      O => \dataByte[7]_i_9_n_0\
    );
\dataByte_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \dataByte[7]_i_1_n_0\,
      D => p_1_in(0),
      Q => \dataByte_reg_n_0_[0]\,
      R => '0'
    );
\dataByte_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \dataByte[7]_i_1_n_0\,
      D => p_1_in(1),
      Q => dataByte(1),
      R => '0'
    );
\dataByte_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \dataByte[7]_i_1_n_0\,
      D => p_1_in(2),
      Q => dataByte(2),
      R => '0'
    );
\dataByte_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \dataByte[7]_i_1_n_0\,
      D => p_1_in(3),
      Q => dataByte(3),
      R => '0'
    );
\dataByte_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \dataByte[7]_i_1_n_0\,
      D => p_1_in(4),
      Q => dataByte(4),
      R => '0'
    );
\dataByte_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \dataByte[7]_i_1_n_0\,
      D => p_1_in(5),
      Q => dataByte(5),
      R => '0'
    );
\dataByte_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \dataByte[7]_i_1_n_0\,
      D => p_1_in(6),
      Q => dataByte(6),
      R => '0'
    );
\dataByte_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \dataByte[7]_i_1_n_0\,
      D => p_1_in(7),
      Q => dataByte(7),
      R => '0'
    );
ddSda_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_0_in(0),
      Q => ddSda,
      R => '0'
    );
\initA[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAEAAAAAAAAAA"
    )
        port map (
      I0 => \initA_reg[0]\,
      I1 => \initA[6]_i_4_n_0\,
      I2 => \initA_reg[0]_0\(0),
      I3 => \initA_reg[0]_0\(1),
      I4 => \initA_reg[0]_0\(2),
      I5 => \initA_reg[0]_1\,
      O => E(0)
    );
\initA[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => \initA_reg[0]_0\(5),
      I1 => \initA_reg[0]_0\(6),
      I2 => \initA_reg[0]_0\(3),
      I3 => \initA_reg[0]_0\(4),
      I4 => error,
      I5 => done,
      O => \initA[6]_i_4_n_0\
    );
initEn_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"75774544"
    )
        port map (
      I0 => \state_reg[2]_1\(2),
      I1 => initEn_i_2_n_0,
      I2 => initEn_reg,
      I3 => initEn_reg_0,
      I4 => initEn,
      O => \state_reg[2]\
    );
initEn_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => error,
      I1 => done,
      I2 => s00_axi_aresetn,
      I3 => \state_reg[2]_0\,
      O => initEn_i_2_n_0
    );
int_Rst_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFFFF0000FFFF"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => state(3),
      I3 => state(2),
      I4 => s00_axi_aresetn,
      I5 => int_Rst,
      O => int_Rst_i_1_n_0
    );
int_Rst_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => int_Rst_i_1_n_0,
      Q => int_Rst,
      R => '0'
    );
rScl_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFBFFF3C3C3C28"
    )
        port map (
      I0 => state(3),
      I1 => \subState_reg_n_0_[0]\,
      I2 => \subState_reg_n_0_[1]\,
      I3 => state(2),
      I4 => rScl_i_2_n_0,
      I5 => rScl,
      O => rScl_i_1_n_0
    );
rScl_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      O => rScl_i_2_n_0
    );
rScl_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => rScl_i_1_n_0,
      Q => rScl,
      R => '0'
    );
rSda_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABEAFFFFABEA0000"
    )
        port map (
      I0 => rSda_i_2_n_0,
      I1 => state(3),
      I2 => \subState_reg_n_0_[1]\,
      I3 => \subState_reg_n_0_[0]\,
      I4 => rSda_i_3_n_0,
      I5 => rSda,
      O => rSda_i_1_n_0
    );
rSda_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0003000F000F000E"
    )
        port map (
      I0 => dataByte(7),
      I1 => state(0),
      I2 => \subState_reg_n_0_[1]\,
      I3 => state(3),
      I4 => state(2),
      I5 => state(1),
      O => rSda_i_2_n_0
    );
rSda_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100ABAAABAAFFFB"
    )
        port map (
      I0 => state(3),
      I1 => state(0),
      I2 => state(1),
      I3 => state(2),
      I4 => \subState_reg_n_0_[0]\,
      I5 => \subState_reg_n_0_[1]\,
      O => rSda_i_3_n_0
    );
rSda_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => rSda_i_1_n_0,
      Q => rSda,
      R => '0'
    );
\sclCnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sclCnt_reg(0),
      O => sclCnt0(0)
    );
\sclCnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => sclCnt_reg(1),
      I1 => sclCnt_reg(0),
      O => sclCnt0(1)
    );
\sclCnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => sclCnt_reg(2),
      I1 => sclCnt_reg(0),
      I2 => sclCnt_reg(1),
      O => sclCnt0(2)
    );
\sclCnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
        port map (
      I0 => sclCnt_reg(3),
      I1 => sclCnt_reg(1),
      I2 => sclCnt_reg(0),
      I3 => sclCnt_reg(2),
      O => sclCnt0(3)
    );
\sclCnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA9"
    )
        port map (
      I0 => sclCnt_reg(4),
      I1 => sclCnt_reg(2),
      I2 => sclCnt_reg(0),
      I3 => sclCnt_reg(1),
      I4 => sclCnt_reg(3),
      O => sclCnt0(4)
    );
\sclCnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA9"
    )
        port map (
      I0 => sclCnt_reg(5),
      I1 => sclCnt_reg(3),
      I2 => sclCnt_reg(1),
      I3 => sclCnt_reg(0),
      I4 => sclCnt_reg(2),
      I5 => sclCnt_reg(4),
      O => sclCnt0(5)
    );
\sclCnt[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0100FFFF"
    )
        port map (
      I0 => state(2),
      I1 => state(3),
      I2 => state(1),
      I3 => state(0),
      I4 => \subState[1]_i_2_n_0\,
      O => sclCnt0_0
    );
\sclCnt[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => dScl,
      I1 => rScl,
      O => \sclCnt[6]_i_2_n_0\
    );
\sclCnt[6]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => sclCnt_reg(6),
      I1 => \sclCnt[6]_i_4_n_0\,
      O => sclCnt0(6)
    );
\sclCnt[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => sclCnt_reg(4),
      I1 => sclCnt_reg(2),
      I2 => sclCnt_reg(0),
      I3 => sclCnt_reg(1),
      I4 => sclCnt_reg(3),
      I5 => sclCnt_reg(5),
      O => \sclCnt[6]_i_4_n_0\
    );
\sclCnt_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \sclCnt[6]_i_2_n_0\,
      D => sclCnt0(0),
      Q => sclCnt_reg(0),
      S => sclCnt0_0
    );
\sclCnt_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \sclCnt[6]_i_2_n_0\,
      D => sclCnt0(1),
      Q => sclCnt_reg(1),
      S => sclCnt0_0
    );
\sclCnt_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \sclCnt[6]_i_2_n_0\,
      D => sclCnt0(2),
      Q => sclCnt_reg(2),
      S => sclCnt0_0
    );
\sclCnt_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \sclCnt[6]_i_2_n_0\,
      D => sclCnt0(3),
      Q => sclCnt_reg(3),
      S => sclCnt0_0
    );
\sclCnt_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \sclCnt[6]_i_2_n_0\,
      D => sclCnt0(4),
      Q => sclCnt_reg(4),
      S => sclCnt0_0
    );
\sclCnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \sclCnt[6]_i_2_n_0\,
      D => sclCnt0(5),
      Q => sclCnt_reg(5),
      R => sclCnt0_0
    );
\sclCnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \sclCnt[6]_i_2_n_0\,
      D => sclCnt0(6),
      Q => sclCnt_reg(6),
      R => sclCnt0_0
    );
scl_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => '0',
      I1 => scl_INST_0_i_1_n_0,
      I2 => '0',
      I3 => '0',
      I4 => '0',
      I5 => '0',
      O => scl
    );
scl_INST_0_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rScl,
      O => scl_INST_0_i_1_n_0
    );
sda_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => '0',
      I1 => sda_INST_0_i_1_n_0,
      I2 => '0',
      I3 => '0',
      I4 => '0',
      I5 => '0',
      O => sda
    );
sda_INST_0_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rSda,
      O => sda_INST_0_i_1_n_0
    );
\state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF000B"
    )
        port map (
      I0 => \state_reg[2]_1\(1),
      I1 => \state_reg[2]_1\(0),
      I2 => \state_reg[2]_1\(2),
      I3 => error,
      I4 => \state_reg[2]_1\(3),
      O => D(0)
    );
\state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFF00FF00"
    )
        port map (
      I0 => \state_reg[1]\(0),
      I1 => \state_reg[1]\(1),
      I2 => \state_reg[1]_0\,
      I3 => \state[1]_i_3_n_0\,
      I4 => \state_reg[1]_1\,
      I5 => \state[1]_i_5_n_0\,
      O => D(1)
    );
\state[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"05000D0000000000"
    )
        port map (
      I0 => \state_reg[2]_1\(1),
      I1 => \state_reg[1]_2\,
      I2 => error,
      I3 => \state_reg[2]_1\(0),
      I4 => \initA_reg[0]_0\(0),
      I5 => \state_reg[1]_3\,
      O => \state[1]_i_3_n_0\
    );
\state[1]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \state_reg[2]_1\(1),
      I1 => \state_reg[2]_1\(2),
      I2 => \state_reg[2]_1\(3),
      I3 => error,
      O => \state[1]_i_5_n_0\
    );
\state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF8A"
    )
        port map (
      I0 => error,
      I1 => \state_reg[2]_1\(3),
      I2 => \state_reg[2]_1\(2),
      I3 => \state_reg[2]_0\,
      O => D(2)
    );
\state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"880000005F55CCCC"
    )
        port map (
      I0 => \state_reg[2]_1\(0),
      I1 => done,
      I2 => initEn_reg,
      I3 => \state_reg[2]_1\(1),
      I4 => \state_reg[2]_1\(2),
      I5 => \state_reg[2]_1\(3),
      O => \state_reg[0]\(0)
    );
\state[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010000000000"
    )
        port map (
      I0 => \state_reg[2]_1\(3),
      I1 => \state_reg[2]_1\(2),
      I2 => \state_reg[3]\,
      I3 => \initA_reg[0]_0\(1),
      I4 => \initA_reg[0]_0\(0),
      I5 => \state[3]_i_5_n_0\,
      O => D(3)
    );
\state[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \initA_reg[0]_0\(4),
      I1 => \initA_reg[0]_0\(5),
      I2 => \initA_reg[0]_0\(2),
      I3 => \initA_reg[0]_0\(3),
      I4 => error,
      I5 => \initA_reg[0]_0\(6),
      O => \state[3]_i_5_n_0\
    );
\subState[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999999999999909"
    )
        port map (
      I0 => \subState_reg_n_0_[0]\,
      I1 => \subState[1]_i_2_n_0\,
      I2 => state(0),
      I3 => state(1),
      I4 => state(3),
      I5 => state(2),
      O => \subState[0]_i_1_n_0\
    );
\subState[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9A00"
    )
        port map (
      I0 => \subState_reg_n_0_[1]\,
      I1 => \subState[1]_i_2_n_0\,
      I2 => \subState_reg_n_0_[0]\,
      I3 => \subState[1]_i_3_n_0\,
      O => \subState[1]_i_1_n_0\
    );
\subState[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \sclCnt[6]_i_4_n_0\,
      I1 => sclCnt_reg(6),
      O => \subState[1]_i_2_n_0\
    );
\subState[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => state(3),
      I3 => state(2),
      O => \subState[1]_i_3_n_0\
    );
\subState_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \subState[0]_i_1_n_0\,
      Q => \subState_reg_n_0_[0]\,
      R => '0'
    );
\subState_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \subState[1]_i_1_n_0\,
      Q => \subState_reg_n_0_[1]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_wiz_0_clk_wiz is
  port (
    clk_out1 : out STD_LOGIC;
    clk_out2 : out STD_LOGIC;
    clk_out3 : out STD_LOGIC;
    resetn : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    lopt : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_wiz_0_clk_wiz;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_wiz_0_clk_wiz is
  signal clk_out1_clk_wiz_0 : STD_LOGIC;
  signal clk_out2_clk_wiz_0 : STD_LOGIC;
  signal clk_out3_clk_wiz_0 : STD_LOGIC;
  signal clkfbout_buf_clk_wiz_0 : STD_LOGIC;
  signal clkfbout_clk_wiz_0 : STD_LOGIC;
  signal reset_high : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_DRDY_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_LOCKED_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_PSDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_DO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of clkf_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of clkout1_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of clkout2_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of clkout3_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of mmcm_adv_inst : label is "PRIMITIVE";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of mmcm_adv_inst : label is "MLO";
begin
clkf_buf: unisim.vcomponents.BUFG
     port map (
      I => clkfbout_clk_wiz_0,
      O => clkfbout_buf_clk_wiz_0
    );
clkout1_buf: unisim.vcomponents.BUFG
     port map (
      I => clk_out1_clk_wiz_0,
      O => clk_out1
    );
clkout2_buf: unisim.vcomponents.BUFG
     port map (
      I => clk_out2_clk_wiz_0,
      O => clk_out2
    );
clkout3_buf: unisim.vcomponents.BUFG
     port map (
      I => clk_out3_clk_wiz_0,
      O => clk_out3
    );
mmcm_adv_inst: unisim.vcomponents.MMCME2_ADV
    generic map(
      BANDWIDTH => "OPTIMIZED",
      CLKFBOUT_MULT_F => 10.000000,
      CLKFBOUT_PHASE => 0.000000,
      CLKFBOUT_USE_FINE_PS => false,
      CLKIN1_PERIOD => 10.000000,
      CLKIN2_PERIOD => 0.000000,
      CLKOUT0_DIVIDE_F => 40.000000,
      CLKOUT0_DUTY_CYCLE => 0.500000,
      CLKOUT0_PHASE => 0.000000,
      CLKOUT0_USE_FINE_PS => false,
      CLKOUT1_DIVIDE => 8,
      CLKOUT1_DUTY_CYCLE => 0.500000,
      CLKOUT1_PHASE => 0.000000,
      CLKOUT1_USE_FINE_PS => false,
      CLKOUT2_DIVIDE => 1,
      CLKOUT2_DUTY_CYCLE => 0.500000,
      CLKOUT2_PHASE => 0.000000,
      CLKOUT2_USE_FINE_PS => false,
      CLKOUT3_DIVIDE => 1,
      CLKOUT3_DUTY_CYCLE => 0.500000,
      CLKOUT3_PHASE => 0.000000,
      CLKOUT3_USE_FINE_PS => false,
      CLKOUT4_CASCADE => false,
      CLKOUT4_DIVIDE => 1,
      CLKOUT4_DUTY_CYCLE => 0.500000,
      CLKOUT4_PHASE => 0.000000,
      CLKOUT4_USE_FINE_PS => false,
      CLKOUT5_DIVIDE => 1,
      CLKOUT5_DUTY_CYCLE => 0.500000,
      CLKOUT5_PHASE => 0.000000,
      CLKOUT5_USE_FINE_PS => false,
      CLKOUT6_DIVIDE => 1,
      CLKOUT6_DUTY_CYCLE => 0.500000,
      CLKOUT6_PHASE => 0.000000,
      CLKOUT6_USE_FINE_PS => false,
      COMPENSATION => "ZHOLD",
      DIVCLK_DIVIDE => 1,
      IS_CLKINSEL_INVERTED => '0',
      IS_PSEN_INVERTED => '0',
      IS_PSINCDEC_INVERTED => '0',
      IS_PWRDWN_INVERTED => '0',
      IS_RST_INVERTED => '0',
      REF_JITTER1 => 0.010000,
      REF_JITTER2 => 0.010000,
      SS_EN => "FALSE",
      SS_MODE => "CENTER_HIGH",
      SS_MOD_PERIOD => 10000,
      STARTUP_WAIT => false
    )
        port map (
      CLKFBIN => clkfbout_buf_clk_wiz_0,
      CLKFBOUT => clkfbout_clk_wiz_0,
      CLKFBOUTB => NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED,
      CLKFBSTOPPED => NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED,
      CLKIN1 => lopt,
      CLKIN2 => '0',
      CLKINSEL => '1',
      CLKINSTOPPED => NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED,
      CLKOUT0 => clk_out1_clk_wiz_0,
      CLKOUT0B => NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED,
      CLKOUT1 => clk_out2_clk_wiz_0,
      CLKOUT1B => clk_out3_clk_wiz_0,
      CLKOUT2 => NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED,
      CLKOUT2B => NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED,
      CLKOUT3 => NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED,
      CLKOUT3B => NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED,
      CLKOUT4 => NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED,
      CLKOUT5 => NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED,
      CLKOUT6 => NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED,
      DADDR(6 downto 0) => B"0000000",
      DCLK => '0',
      DEN => '0',
      DI(15 downto 0) => B"0000000000000000",
      DO(15 downto 0) => NLW_mmcm_adv_inst_DO_UNCONNECTED(15 downto 0),
      DRDY => NLW_mmcm_adv_inst_DRDY_UNCONNECTED,
      DWE => '0',
      LOCKED => NLW_mmcm_adv_inst_LOCKED_UNCONNECTED,
      PSCLK => '0',
      PSDONE => NLW_mmcm_adv_inst_PSDONE_UNCONNECTED,
      PSEN => '0',
      PSINCDEC => '0',
      PWRDWN => '0',
      RST => reset_high
    );
mmcm_adv_inst_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => resetn,
      O => reset_high
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_wiz_1_clk_wiz is
  port (
    clk_out1 : out STD_LOGIC;
    clk_out2 : out STD_LOGIC;
    resetn : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    lopt : out STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_wiz_1_clk_wiz;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_wiz_1_clk_wiz is
  signal clk_in1_clk_wiz_1 : STD_LOGIC;
  signal clk_out1_clk_wiz_1 : STD_LOGIC;
  signal clk_out2_clk_wiz_1 : STD_LOGIC;
  signal clkfbout_buf_clk_wiz_1 : STD_LOGIC;
  signal clkfbout_clk_wiz_1 : STD_LOGIC;
  signal reset_high : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_DRDY_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_LOCKED_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_PSDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_DO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of clkf_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of clkin1_ibufg : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of clkin1_ibufg : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE : string;
  attribute IBUF_DELAY_VALUE of clkin1_ibufg : label is "0";
  attribute IFD_DELAY_VALUE : string;
  attribute IFD_DELAY_VALUE of clkin1_ibufg : label is "AUTO";
  attribute BOX_TYPE of clkout1_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of clkout2_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of mmcm_adv_inst : label is "PRIMITIVE";
begin
  lopt <= clk_in1_clk_wiz_1;
clkf_buf: unisim.vcomponents.BUFG
     port map (
      I => clkfbout_clk_wiz_1,
      O => clkfbout_buf_clk_wiz_1
    );
clkin1_ibufg: unisim.vcomponents.IBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => clk_in1,
      O => clk_in1_clk_wiz_1
    );
clkout1_buf: unisim.vcomponents.BUFG
     port map (
      I => clk_out1_clk_wiz_1,
      O => clk_out1
    );
clkout2_buf: unisim.vcomponents.BUFG
     port map (
      I => clk_out2_clk_wiz_1,
      O => clk_out2
    );
mmcm_adv_inst: unisim.vcomponents.MMCME2_ADV
    generic map(
      BANDWIDTH => "OPTIMIZED",
      CLKFBOUT_MULT_F => 10.000000,
      CLKFBOUT_PHASE => 0.000000,
      CLKFBOUT_USE_FINE_PS => false,
      CLKIN1_PERIOD => 10.000000,
      CLKIN2_PERIOD => 0.000000,
      CLKOUT0_DIVIDE_F => 81.375000,
      CLKOUT0_DUTY_CYCLE => 0.500000,
      CLKOUT0_PHASE => 0.000000,
      CLKOUT0_USE_FINE_PS => false,
      CLKOUT1_DIVIDE => 20,
      CLKOUT1_DUTY_CYCLE => 0.500000,
      CLKOUT1_PHASE => 0.000000,
      CLKOUT1_USE_FINE_PS => false,
      CLKOUT2_DIVIDE => 1,
      CLKOUT2_DUTY_CYCLE => 0.500000,
      CLKOUT2_PHASE => 0.000000,
      CLKOUT2_USE_FINE_PS => false,
      CLKOUT3_DIVIDE => 1,
      CLKOUT3_DUTY_CYCLE => 0.500000,
      CLKOUT3_PHASE => 0.000000,
      CLKOUT3_USE_FINE_PS => false,
      CLKOUT4_CASCADE => false,
      CLKOUT4_DIVIDE => 1,
      CLKOUT4_DUTY_CYCLE => 0.500000,
      CLKOUT4_PHASE => 0.000000,
      CLKOUT4_USE_FINE_PS => false,
      CLKOUT5_DIVIDE => 1,
      CLKOUT5_DUTY_CYCLE => 0.500000,
      CLKOUT5_PHASE => 0.000000,
      CLKOUT5_USE_FINE_PS => false,
      CLKOUT6_DIVIDE => 1,
      CLKOUT6_DUTY_CYCLE => 0.500000,
      CLKOUT6_PHASE => 0.000000,
      CLKOUT6_USE_FINE_PS => false,
      COMPENSATION => "ZHOLD",
      DIVCLK_DIVIDE => 1,
      IS_CLKINSEL_INVERTED => '0',
      IS_PSEN_INVERTED => '0',
      IS_PSINCDEC_INVERTED => '0',
      IS_PWRDWN_INVERTED => '0',
      IS_RST_INVERTED => '0',
      REF_JITTER1 => 0.010000,
      REF_JITTER2 => 0.010000,
      SS_EN => "FALSE",
      SS_MODE => "CENTER_HIGH",
      SS_MOD_PERIOD => 10000,
      STARTUP_WAIT => false
    )
        port map (
      CLKFBIN => clkfbout_buf_clk_wiz_1,
      CLKFBOUT => clkfbout_clk_wiz_1,
      CLKFBOUTB => NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED,
      CLKFBSTOPPED => NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED,
      CLKIN1 => clk_in1_clk_wiz_1,
      CLKIN2 => '0',
      CLKINSEL => '1',
      CLKINSTOPPED => NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED,
      CLKOUT0 => clk_out1_clk_wiz_1,
      CLKOUT0B => NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED,
      CLKOUT1 => clk_out2_clk_wiz_1,
      CLKOUT1B => NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED,
      CLKOUT2 => NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED,
      CLKOUT2B => NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED,
      CLKOUT3 => NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED,
      CLKOUT3B => NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED,
      CLKOUT4 => NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED,
      CLKOUT5 => NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED,
      CLKOUT6 => NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED,
      DADDR(6 downto 0) => B"0000000",
      DCLK => '0',
      DEN => '0',
      DI(15 downto 0) => B"0000000000000000",
      DO(15 downto 0) => NLW_mmcm_adv_inst_DO_UNCONNECTED(15 downto 0),
      DRDY => NLW_mmcm_adv_inst_DRDY_UNCONNECTED,
      DWE => '0',
      LOCKED => NLW_mmcm_adv_inst_LOCKED_UNCONNECTED,
      PSCLK => '0',
      PSDONE => NLW_mmcm_adv_inst_PSDONE_UNCONNECTED,
      PSEN => '0',
      PSINCDEC => '0',
      PWRDWN => '0',
      RST => reset_high
    );
mmcm_adv_inst_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => resetn,
      O => reset_high
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter is
  port (
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \processQ_reg[5]_0\ : out STD_LOGIC;
    \processQ_reg[3]_0\ : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \processQ_reg[6]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \processQ_reg[9]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \processQ_reg[6]_1\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \triggerTime_reg[9]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \processQ_reg[9]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \processQ_reg[5]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \processQ_reg[1]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \processQ_reg[3]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \processQ_reg[7]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \processQ_reg[9]_2\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \processQ_reg[4]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \processQ_reg[2]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \processQ_reg[5]_2\ : out STD_LOGIC;
    \processQ_reg[7]_1\ : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \processQ_reg[0]_0\ : out STD_LOGIC;
    \processQ_reg[4]_1\ : out STD_LOGIC;
    \processQ_reg[4]_2\ : out STD_LOGIC;
    \processQ_reg[9]_3\ : out STD_LOGIC;
    \processQ_reg[1]_1\ : out STD_LOGIC;
    \processQ_reg[0]_1\ : out STD_LOGIC;
    \processQ_reg[7]_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \processQ_reg[1]_2\ : out STD_LOGIC;
    \processQ_reg[7]_3\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \triggerTime_reg[9]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \processQ_reg[9]_4\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \processQ_reg[9]_5\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \processQ_reg[6]_2\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \triggerTime_reg[7]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \triggerTime_reg[9]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \triggerTime_reg[7]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \triggerTime_reg[8]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \processQ_reg[9]_6\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \processQ_reg[1]_3\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \processQ_reg[9]_7\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \processQ_reg[1]_4\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \processQ_reg[8]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    O : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \is_vertical_gridline0__20_carry\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    triggerTimeOut : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \is_hash_mark2_inferred__0/i___21_carry\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \is_hash_mark2_inferred__0/i___30_carry__0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \encoded_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \dc_bias_reg[0]\ : in STD_LOGIC;
    \dc_bias_reg[0]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \dc_bias_reg[1]\ : in STD_LOGIC;
    \dc_bias_reg[1]_0\ : in STD_LOGIC;
    \dc_bias_reg[1]_1\ : in STD_LOGIC;
    \encoded_reg[9]\ : in STD_LOGIC;
    \dc_bias[3]_i_3__0\ : in STD_LOGIC;
    \dc_bias[3]_i_3__0_0\ : in STD_LOGIC;
    \dc_bias[3]_i_2__1\ : in STD_LOGIC;
    \dc_bias[3]_i_3__1_0\ : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \dc_bias[3]_i_6_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \dc_bias[3]_i_6_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \dc_bias[3]_i_14_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \dc_bias[3]_i_14_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \dc_bias[3]_i_14_2\ : in STD_LOGIC;
    \dc_bias[3]_i_12\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \dc_bias[3]_i_12_0\ : in STD_LOGIC;
    \dc_bias[3]_i_12_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \dc_bias[3]_i_12_2\ : in STD_LOGIC;
    \dc_bias[3]_i_28_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \dc_bias[3]_i_14_3\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \dc_bias[3]_i_14_4\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \is_trigger_time6_inferred__2/i__carry\ : in STD_LOGIC;
    \is_trigger_time6_inferred__2/i__carry_0\ : in STD_LOGIC;
    \dc_bias_reg[3]_i_92_0\ : in STD_LOGIC;
    \dc_bias_reg[3]_i_56_0\ : in STD_LOGIC;
    \dc_bias_reg[3]_i_55_0\ : in STD_LOGIC;
    \is_vertical_gridline0__20_carry__0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \i___30_carry__0_i_1_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter is
  signal \^di\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \dc_bias[3]_i_10__0_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_132_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_133_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_134_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_135_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_136_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_137_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_138_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_139_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_13_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_140_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_141_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_142_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_143_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_144_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_145_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_146_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_147_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_148_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_149_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_14_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_152_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_154_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_155_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_157_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_158_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_159_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_15_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_160_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_161_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_162_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_163_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_164_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_17_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_199_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_200_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_201_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_202_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_203_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_204_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_205_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_206_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_207_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_208_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_209_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_20__0_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_20_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_210_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_211_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_212_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_213_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_214_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_215_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_216_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_217_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_218_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_219_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_21_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_22_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_24_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_25_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_26_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_30_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_32_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_33_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_45_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_46_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_47_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_48_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_49_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_53_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_57_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_5__0_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_6__0_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_76_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_77_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_78_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_79_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_7_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_80_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_81_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_82_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_84_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_85_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_86_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_87_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_88_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_89_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_8_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_90_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_91_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_93_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_94_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_9_n_0\ : STD_LOGIC;
  signal \dc_bias_reg[3]_i_151_n_0\ : STD_LOGIC;
  signal \dc_bias_reg[3]_i_151_n_1\ : STD_LOGIC;
  signal \dc_bias_reg[3]_i_151_n_2\ : STD_LOGIC;
  signal \dc_bias_reg[3]_i_151_n_3\ : STD_LOGIC;
  signal \dc_bias_reg[3]_i_153_n_0\ : STD_LOGIC;
  signal \dc_bias_reg[3]_i_153_n_1\ : STD_LOGIC;
  signal \dc_bias_reg[3]_i_153_n_2\ : STD_LOGIC;
  signal \dc_bias_reg[3]_i_153_n_3\ : STD_LOGIC;
  signal \dc_bias_reg[3]_i_156_n_0\ : STD_LOGIC;
  signal \dc_bias_reg[3]_i_156_n_1\ : STD_LOGIC;
  signal \dc_bias_reg[3]_i_156_n_2\ : STD_LOGIC;
  signal \dc_bias_reg[3]_i_156_n_3\ : STD_LOGIC;
  signal \dc_bias_reg[3]_i_55_n_1\ : STD_LOGIC;
  signal \dc_bias_reg[3]_i_55_n_2\ : STD_LOGIC;
  signal \dc_bias_reg[3]_i_55_n_3\ : STD_LOGIC;
  signal \dc_bias_reg[3]_i_83_n_0\ : STD_LOGIC;
  signal \dc_bias_reg[3]_i_83_n_1\ : STD_LOGIC;
  signal \dc_bias_reg[3]_i_83_n_2\ : STD_LOGIC;
  signal \dc_bias_reg[3]_i_83_n_3\ : STD_LOGIC;
  signal \dc_bias_reg[3]_i_92_n_0\ : STD_LOGIC;
  signal \dc_bias_reg[3]_i_92_n_1\ : STD_LOGIC;
  signal \dc_bias_reg[3]_i_92_n_2\ : STD_LOGIC;
  signal \dc_bias_reg[3]_i_92_n_3\ : STD_LOGIC;
  signal \dc_bias_reg[3]_i_98_n_1\ : STD_LOGIC;
  signal \dc_bias_reg[3]_i_98_n_2\ : STD_LOGIC;
  signal \dc_bias_reg[3]_i_98_n_3\ : STD_LOGIC;
  signal \encoded[2]_i_3_n_0\ : STD_LOGIC;
  signal \i___30_carry__0_i_5_n_3\ : STD_LOGIC;
  signal \is_vertical_gridline0__20_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \is_vertical_gridline0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \is_vertical_gridline0_carry__0_i_9_n_0\ : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 9 downto 1 );
  signal processQ0 : STD_LOGIC;
  signal \processQ[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \processQ[4]_i_1__1_n_0\ : STD_LOGIC;
  signal \processQ[7]_i_1__1_n_0\ : STD_LOGIC;
  signal \processQ[8]_i_2_n_0\ : STD_LOGIC;
  signal \processQ[9]_i_1__0_n_0\ : STD_LOGIC;
  signal \processQ[9]_i_5_n_0\ : STD_LOGIC;
  signal \processQ[9]_i_6_n_0\ : STD_LOGIC;
  signal \^processq_reg[1]_1\ : STD_LOGIC;
  signal \^processq_reg[3]_0\ : STD_LOGIC;
  signal \^processq_reg[4]_1\ : STD_LOGIC;
  signal \^processq_reg[5]_0\ : STD_LOGIC;
  signal \^processq_reg[5]_2\ : STD_LOGIC;
  signal \^processq_reg[7]_1\ : STD_LOGIC;
  signal \^processq_reg[7]_3\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^processq_reg[9]_5\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \uut3/is_trigger_time4\ : STD_LOGIC;
  signal \uut3/is_trigger_time48_in\ : STD_LOGIC;
  signal \uut3/is_trigger_time510_in\ : STD_LOGIC;
  signal \uut3/is_trigger_time615_in\ : STD_LOGIC;
  signal \uut3/is_vertical_gridline1\ : STD_LOGIC_VECTOR ( 6 to 6 );
  signal \NLW_dc_bias_reg[3]_i_151_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_dc_bias_reg[3]_i_153_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_dc_bias_reg[3]_i_156_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_dc_bias_reg[3]_i_54_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_dc_bias_reg[3]_i_54_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_dc_bias_reg[3]_i_55_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_dc_bias_reg[3]_i_56_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_dc_bias_reg[3]_i_56_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_dc_bias_reg[3]_i_83_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_dc_bias_reg[3]_i_92_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_dc_bias_reg[3]_i_95_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_dc_bias_reg[3]_i_95_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_dc_bias_reg[3]_i_96_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_dc_bias_reg[3]_i_96_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_dc_bias_reg[3]_i_97_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_dc_bias_reg[3]_i_97_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_dc_bias_reg[3]_i_98_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_i___30_carry__0_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_i___30_carry__0_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \dc_bias[3]_i_13\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_17\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_20\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_20__0\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_22\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_24\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_25\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_49\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_5__0\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_7\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_8\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_80\ : label is "soft_lutpair59";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of \dc_bias_reg[3]_i_151\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \dc_bias_reg[3]_i_153\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \dc_bias_reg[3]_i_156\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \dc_bias_reg[3]_i_54\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \dc_bias_reg[3]_i_55\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \dc_bias_reg[3]_i_56\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \dc_bias_reg[3]_i_83\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \dc_bias_reg[3]_i_92\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \dc_bias_reg[3]_i_95\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \dc_bias_reg[3]_i_96\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \dc_bias_reg[3]_i_97\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \dc_bias_reg[3]_i_98\ : label is 11;
  attribute SOFT_HLUTNM of \encoded[0]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \encoded[2]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \encoded[2]_i_3\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \is_vertical_gridline0__20_carry__0_i_3\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \is_vertical_gridline0__20_carry__0_i_4\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \is_vertical_gridline0_carry__0_i_8\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \is_vertical_gridline0_carry__0_i_9\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \processQ[0]_i_1__0\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \processQ[1]_i_1__0\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \processQ[2]_i_1__0\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \processQ[3]_i_1__0\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \processQ[4]_i_1__1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \processQ[7]_i_1__1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \processQ[8]_i_2\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \processQ[9]_i_3__1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \processQ[9]_i_5\ : label is "soft_lutpair62";
begin
  DI(2 downto 0) <= \^di\(2 downto 0);
  Q(9 downto 0) <= \^q\(9 downto 0);
  \processQ_reg[1]_1\ <= \^processq_reg[1]_1\;
  \processQ_reg[3]_0\ <= \^processq_reg[3]_0\;
  \processQ_reg[4]_1\ <= \^processq_reg[4]_1\;
  \processQ_reg[5]_0\ <= \^processq_reg[5]_0\;
  \processQ_reg[5]_2\ <= \^processq_reg[5]_2\;
  \processQ_reg[7]_1\ <= \^processq_reg[7]_1\;
  \processQ_reg[7]_3\(3 downto 0) <= \^processq_reg[7]_3\(3 downto 0);
  \processQ_reg[9]_5\(0) <= \^processq_reg[9]_5\(0);
\dc_bias[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^processq_reg[7]_1\,
      O => SR(0)
    );
\dc_bias[3]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFDCDF"
    )
        port map (
      I0 => \dc_bias[3]_i_15_n_0\,
      I1 => \dc_bias[3]_i_3__0\,
      I2 => \^q\(9),
      I3 => \dc_bias[3]_i_17_n_0\,
      I4 => \dc_bias_reg[0]_0\(2),
      I5 => \dc_bias[3]_i_3__0_0\,
      O => \processQ_reg[9]_3\
    );
\dc_bias[3]_i_10__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBEFFFFEFFBFF"
    )
        port map (
      I0 => \dc_bias[3]_i_3__1_0\,
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \dc_bias[3]_i_24_n_0\,
      I4 => \dc_bias[3]_i_25_n_0\,
      I5 => \dc_bias[3]_i_26_n_0\,
      O => \dc_bias[3]_i_10__0_n_0\
    );
\dc_bias[3]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(8),
      O => \dc_bias[3]_i_13_n_0\
    );
\dc_bias[3]_i_132\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5556555655565656"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(5),
      I2 => \^q\(6),
      I3 => \^q\(4),
      I4 => \^q\(3),
      I5 => \^q\(2),
      O => \dc_bias[3]_i_132_n_0\
    );
\dc_bias[3]_i_133\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3D95959595959594"
    )
        port map (
      I0 => \^q\(6),
      I1 => \is_vertical_gridline0_carry__0_i_8_n_0\,
      I2 => \^q\(5),
      I3 => \^q\(7),
      I4 => \^q\(8),
      I5 => \^q\(9),
      O => \dc_bias[3]_i_133_n_0\
    );
\dc_bias[3]_i_134\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^q\(7),
      I1 => triggerTimeOut(5),
      I2 => triggerTimeOut(4),
      I3 => \^q\(6),
      O => \dc_bias[3]_i_134_n_0\
    );
\dc_bias[3]_i_135\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^q\(5),
      I1 => triggerTimeOut(3),
      I2 => triggerTimeOut(2),
      I3 => \^q\(4),
      O => \dc_bias[3]_i_135_n_0\
    );
\dc_bias[3]_i_136\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^q\(3),
      I1 => triggerTimeOut(1),
      I2 => triggerTimeOut(0),
      I3 => \^q\(2),
      O => \dc_bias[3]_i_136_n_0\
    );
\dc_bias[3]_i_137\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => \dc_bias[3]_i_137_n_0\
    );
\dc_bias[3]_i_138\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => triggerTimeOut(5),
      I1 => \^q\(7),
      I2 => triggerTimeOut(4),
      I3 => \^q\(6),
      O => \dc_bias[3]_i_138_n_0\
    );
\dc_bias[3]_i_139\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => triggerTimeOut(3),
      I1 => \^q\(5),
      I2 => triggerTimeOut(2),
      I3 => \^q\(4),
      O => \dc_bias[3]_i_139_n_0\
    );
\dc_bias[3]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF55554055"
    )
        port map (
      I0 => \dc_bias[3]_i_30_n_0\,
      I1 => CO(0),
      I2 => \dc_bias[3]_i_6_0\(0),
      I3 => \dc_bias[3]_i_32_n_0\,
      I4 => \dc_bias[3]_i_6_1\(0),
      I5 => \dc_bias[3]_i_33_n_0\,
      O => \dc_bias[3]_i_14_n_0\
    );
\dc_bias[3]_i_140\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => triggerTimeOut(0),
      I1 => \^q\(2),
      I2 => triggerTimeOut(1),
      I3 => \^q\(3),
      O => \dc_bias[3]_i_140_n_0\
    );
\dc_bias[3]_i_141\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \dc_bias[3]_i_141_n_0\
    );
\dc_bias[3]_i_142\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15403D54"
    )
        port map (
      I0 => \^q\(7),
      I1 => \dc_bias_reg[3]_i_92_0\,
      I2 => triggerTimeOut(4),
      I3 => triggerTimeOut(5),
      I4 => \^q\(6),
      O => \dc_bias[3]_i_142_n_0\
    );
\dc_bias[3]_i_143\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"155540003FD55540"
    )
        port map (
      I0 => \^q\(5),
      I1 => triggerTimeOut(1),
      I2 => triggerTimeOut(0),
      I3 => triggerTimeOut(2),
      I4 => triggerTimeOut(3),
      I5 => \^q\(4),
      O => \dc_bias[3]_i_143_n_0\
    );
\dc_bias[3]_i_144\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"114D"
    )
        port map (
      I0 => \^q\(3),
      I1 => triggerTimeOut(1),
      I2 => \^q\(2),
      I3 => triggerTimeOut(0),
      O => \dc_bias[3]_i_144_n_0\
    );
\dc_bias[3]_i_145\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => \dc_bias[3]_i_145_n_0\
    );
\dc_bias[3]_i_146\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"09906009"
    )
        port map (
      I0 => triggerTimeOut(5),
      I1 => \^q\(7),
      I2 => triggerTimeOut(4),
      I3 => \dc_bias_reg[3]_i_92_0\,
      I4 => \^q\(6),
      O => \dc_bias[3]_i_146_n_0\
    );
\dc_bias[3]_i_147\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0990909060090909"
    )
        port map (
      I0 => triggerTimeOut(3),
      I1 => \^q\(5),
      I2 => triggerTimeOut(2),
      I3 => triggerTimeOut(1),
      I4 => triggerTimeOut(0),
      I5 => \^q\(4),
      O => \dc_bias[3]_i_147_n_0\
    );
\dc_bias[3]_i_148\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2442"
    )
        port map (
      I0 => \^q\(2),
      I1 => triggerTimeOut(0),
      I2 => triggerTimeOut(1),
      I3 => \^q\(3),
      O => \dc_bias[3]_i_148_n_0\
    );
\dc_bias[3]_i_149\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \dc_bias[3]_i_149_n_0\
    );
\dc_bias[3]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B0F0F0F0F0F0F0"
    )
        port map (
      I0 => \dc_bias[3]_i_32_n_0\,
      I1 => \dc_bias[3]_i_20_n_0\,
      I2 => \dc_bias[3]_i_13_n_0\,
      I3 => \^q\(4),
      I4 => \^q\(6),
      I5 => \^q\(5),
      O => \dc_bias[3]_i_15_n_0\
    );
\dc_bias[3]_i_152\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9006909009900909"
    )
        port map (
      I0 => triggerTimeOut(7),
      I1 => \^q\(9),
      I2 => triggerTimeOut(6),
      I3 => triggerTimeOut(0),
      I4 => \is_trigger_time6_inferred__2/i__carry_0\,
      I5 => \^q\(8),
      O => \dc_bias[3]_i_152_n_0\
    );
\dc_bias[3]_i_154\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^q\(9),
      I1 => triggerTimeOut(7),
      I2 => triggerTimeOut(6),
      I3 => \^q\(8),
      O => \dc_bias[3]_i_154_n_0\
    );
\dc_bias[3]_i_155\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => triggerTimeOut(6),
      I1 => \^q\(8),
      I2 => triggerTimeOut(7),
      I3 => \^q\(9),
      O => \dc_bias[3]_i_155_n_0\
    );
\dc_bias[3]_i_157\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9006909009900909"
    )
        port map (
      I0 => triggerTimeOut(7),
      I1 => \^q\(9),
      I2 => triggerTimeOut(6),
      I3 => triggerTimeOut(0),
      I4 => \is_trigger_time6_inferred__2/i__carry_0\,
      I5 => \^q\(8),
      O => \dc_bias[3]_i_157_n_0\
    );
\dc_bias[3]_i_158\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15403D54"
    )
        port map (
      I0 => \^q\(9),
      I1 => \dc_bias_reg[3]_i_56_0\,
      I2 => triggerTimeOut(6),
      I3 => triggerTimeOut(7),
      I4 => \^q\(8),
      O => \dc_bias[3]_i_158_n_0\
    );
\dc_bias[3]_i_159\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15403D54"
    )
        port map (
      I0 => \^q\(7),
      I1 => \dc_bias_reg[3]_i_92_0\,
      I2 => triggerTimeOut(4),
      I3 => triggerTimeOut(5),
      I4 => \^q\(6),
      O => \dc_bias[3]_i_159_n_0\
    );
\dc_bias[3]_i_160\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"114D"
    )
        port map (
      I0 => \^q\(3),
      I1 => triggerTimeOut(1),
      I2 => \^q\(2),
      I3 => triggerTimeOut(0),
      O => \dc_bias[3]_i_160_n_0\
    );
\dc_bias[3]_i_161\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"09906009"
    )
        port map (
      I0 => triggerTimeOut(7),
      I1 => \^q\(9),
      I2 => triggerTimeOut(6),
      I3 => \dc_bias_reg[3]_i_56_0\,
      I4 => \^q\(8),
      O => \dc_bias[3]_i_161_n_0\
    );
\dc_bias[3]_i_162\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"09906009"
    )
        port map (
      I0 => triggerTimeOut(5),
      I1 => \^q\(7),
      I2 => triggerTimeOut(4),
      I3 => \dc_bias_reg[3]_i_92_0\,
      I4 => \^q\(6),
      O => \dc_bias[3]_i_162_n_0\
    );
\dc_bias[3]_i_163\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0990909060090909"
    )
        port map (
      I0 => triggerTimeOut(3),
      I1 => \^q\(5),
      I2 => triggerTimeOut(2),
      I3 => triggerTimeOut(1),
      I4 => triggerTimeOut(0),
      I5 => \^q\(4),
      O => \dc_bias[3]_i_163_n_0\
    );
\dc_bias[3]_i_164\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2442"
    )
        port map (
      I0 => \^q\(2),
      I1 => triggerTimeOut(0),
      I2 => triggerTimeOut(1),
      I3 => \^q\(3),
      O => \dc_bias[3]_i_164_n_0\
    );
\dc_bias[3]_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(7),
      I2 => \^q\(6),
      I3 => \^q\(5),
      I4 => \is_vertical_gridline0_carry__0_i_8_n_0\,
      O => \dc_bias[3]_i_17_n_0\
    );
\dc_bias[3]_i_199\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8AE308A2"
    )
        port map (
      I0 => \^q\(7),
      I1 => \dc_bias_reg[3]_i_55_0\,
      I2 => triggerTimeOut(4),
      I3 => triggerTimeOut(5),
      I4 => \^q\(6),
      O => \dc_bias[3]_i_199_n_0\
    );
\dc_bias[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000AE"
    )
        port map (
      I0 => \dc_bias_reg[1]\,
      I1 => \dc_bias[3]_i_9_n_0\,
      I2 => \dc_bias[3]_i_10__0_n_0\,
      I3 => \dc_bias_reg[1]_0\,
      I4 => \dc_bias_reg[1]_1\,
      I5 => \^processq_reg[4]_1\,
      O => \processQ_reg[0]_0\
    );
\dc_bias[3]_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      O => \dc_bias[3]_i_20_n_0\
    );
\dc_bias[3]_i_200\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B288"
    )
        port map (
      I0 => \^q\(3),
      I1 => triggerTimeOut(1),
      I2 => \^q\(2),
      I3 => triggerTimeOut(0),
      O => \dc_bias[3]_i_200_n_0\
    );
\dc_bias[3]_i_201\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06909009"
    )
        port map (
      I0 => triggerTimeOut(5),
      I1 => \^q\(7),
      I2 => triggerTimeOut(4),
      I3 => \dc_bias_reg[3]_i_55_0\,
      I4 => \^q\(6),
      O => \dc_bias[3]_i_201_n_0\
    );
\dc_bias[3]_i_202\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8484844221212118"
    )
        port map (
      I0 => \^q\(4),
      I1 => triggerTimeOut(3),
      I2 => triggerTimeOut(2),
      I3 => triggerTimeOut(0),
      I4 => triggerTimeOut(1),
      I5 => \^q\(5),
      O => \dc_bias[3]_i_202_n_0\
    );
\dc_bias[3]_i_203\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4224"
    )
        port map (
      I0 => \^q\(2),
      I1 => triggerTimeOut(0),
      I2 => triggerTimeOut(1),
      I3 => \^q\(3),
      O => \dc_bias[3]_i_203_n_0\
    );
\dc_bias[3]_i_204\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \dc_bias[3]_i_204_n_0\
    );
\dc_bias[3]_i_205\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^q\(7),
      I1 => triggerTimeOut(5),
      I2 => triggerTimeOut(4),
      I3 => \^q\(6),
      O => \dc_bias[3]_i_205_n_0\
    );
\dc_bias[3]_i_206\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^q\(5),
      I1 => triggerTimeOut(3),
      I2 => triggerTimeOut(2),
      I3 => \^q\(4),
      O => \dc_bias[3]_i_206_n_0\
    );
\dc_bias[3]_i_207\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^q\(3),
      I1 => triggerTimeOut(1),
      I2 => triggerTimeOut(0),
      I3 => \^q\(2),
      O => \dc_bias[3]_i_207_n_0\
    );
\dc_bias[3]_i_208\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(1),
      O => \dc_bias[3]_i_208_n_0\
    );
\dc_bias[3]_i_209\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => triggerTimeOut(5),
      I1 => \^q\(7),
      I2 => triggerTimeOut(4),
      I3 => \^q\(6),
      O => \dc_bias[3]_i_209_n_0\
    );
\dc_bias[3]_i_20__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9666"
    )
        port map (
      I0 => \^q\(4),
      I1 => \dc_bias[3]_i_45_n_0\,
      I2 => \^q\(3),
      I3 => \dc_bias[3]_i_46_n_0\,
      O => \dc_bias[3]_i_20__0_n_0\
    );
\dc_bias[3]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAEAAAA8AAAAAAA"
    )
        port map (
      I0 => \dc_bias[3]_i_47_n_0\,
      I1 => \dc_bias[3]_i_48_n_0\,
      I2 => \dc_bias[3]_i_46_n_0\,
      I3 => \dc_bias[3]_i_49_n_0\,
      I4 => \^q\(3),
      I5 => \^q\(2),
      O => \dc_bias[3]_i_21_n_0\
    );
\dc_bias[3]_i_210\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => triggerTimeOut(3),
      I1 => \^q\(5),
      I2 => triggerTimeOut(2),
      I3 => \^q\(4),
      O => \dc_bias[3]_i_210_n_0\
    );
\dc_bias[3]_i_211\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => triggerTimeOut(0),
      I1 => \^q\(2),
      I2 => triggerTimeOut(1),
      I3 => \^q\(3),
      O => \dc_bias[3]_i_211_n_0\
    );
\dc_bias[3]_i_212\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => \dc_bias[3]_i_212_n_0\
    );
\dc_bias[3]_i_213\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8AE308A2"
    )
        port map (
      I0 => \^q\(7),
      I1 => \dc_bias_reg[3]_i_55_0\,
      I2 => triggerTimeOut(4),
      I3 => triggerTimeOut(5),
      I4 => \^q\(6),
      O => \dc_bias[3]_i_213_n_0\
    );
\dc_bias[3]_i_214\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B288"
    )
        port map (
      I0 => \^q\(3),
      I1 => triggerTimeOut(1),
      I2 => \^q\(2),
      I3 => triggerTimeOut(0),
      O => \dc_bias[3]_i_214_n_0\
    );
\dc_bias[3]_i_215\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => \dc_bias[3]_i_215_n_0\
    );
\dc_bias[3]_i_216\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06909009"
    )
        port map (
      I0 => triggerTimeOut(5),
      I1 => \^q\(7),
      I2 => triggerTimeOut(4),
      I3 => \dc_bias_reg[3]_i_55_0\,
      I4 => \^q\(6),
      O => \dc_bias[3]_i_216_n_0\
    );
\dc_bias[3]_i_217\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8484844221212118"
    )
        port map (
      I0 => \^q\(4),
      I1 => triggerTimeOut(3),
      I2 => triggerTimeOut(2),
      I3 => triggerTimeOut(0),
      I4 => triggerTimeOut(1),
      I5 => \^q\(5),
      O => \dc_bias[3]_i_217_n_0\
    );
\dc_bias[3]_i_218\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4224"
    )
        port map (
      I0 => \^q\(2),
      I1 => triggerTimeOut(0),
      I2 => triggerTimeOut(1),
      I3 => \^q\(3),
      O => \dc_bias[3]_i_218_n_0\
    );
\dc_bias[3]_i_219\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => \dc_bias[3]_i_219_n_0\
    );
\dc_bias[3]_i_22\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(3),
      I1 => \dc_bias[3]_i_46_n_0\,
      O => \dc_bias[3]_i_22_n_0\
    );
\dc_bias[3]_i_24\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^q\(2),
      I1 => \dc_bias[3]_i_21_n_0\,
      I2 => \^q\(1),
      O => \dc_bias[3]_i_24_n_0\
    );
\dc_bias[3]_i_25\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E178"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      I2 => \dc_bias[3]_i_22_n_0\,
      I3 => \dc_bias[3]_i_21_n_0\,
      O => \dc_bias[3]_i_25_n_0\
    );
\dc_bias[3]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0F0F0F0F0F0F0F4"
    )
        port map (
      I0 => \dc_bias[3]_i_20__0_n_0\,
      I1 => \dc_bias[3]_i_21_n_0\,
      I2 => \dc_bias[3]_i_53_n_0\,
      I3 => \^q\(2),
      I4 => \^q\(1),
      I5 => \dc_bias[3]_i_22_n_0\,
      O => \dc_bias[3]_i_26_n_0\
    );
\dc_bias[3]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000FBBB"
    )
        port map (
      I0 => \dc_bias[3]_i_12\(0),
      I1 => \dc_bias[3]_i_12_0\,
      I2 => \uut3/is_trigger_time615_in\,
      I3 => \dc_bias[3]_i_12_1\(0),
      I4 => \dc_bias[3]_i_57_n_0\,
      I5 => \dc_bias[3]_i_12_2\,
      O => \processQ_reg[1]_2\
    );
\dc_bias[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000001F"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(8),
      I2 => \^q\(9),
      I3 => \dc_bias_reg[0]\,
      I4 => \dc_bias_reg[0]_0\(2),
      O => \^processq_reg[7]_1\
    );
\dc_bias[3]_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF2AFFFF"
    )
        port map (
      I0 => \^processq_reg[1]_1\,
      I1 => \dc_bias[3]_i_14_0\(0),
      I2 => \dc_bias[3]_i_14_1\(0),
      I3 => \^q\(3),
      I4 => \^q\(2),
      I5 => \dc_bias[3]_i_14_2\,
      O => \dc_bias[3]_i_30_n_0\
    );
\dc_bias[3]_i_32\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => \dc_bias[3]_i_32_n_0\
    );
\dc_bias[3]_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      I2 => \dc_bias[3]_i_14_3\(0),
      I3 => \dc_bias[3]_i_14_4\(0),
      I4 => \^q\(1),
      I5 => \^q\(0),
      O => \dc_bias[3]_i_33_n_0\
    );
\dc_bias[3]_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"008A008A00000002"
    )
        port map (
      I0 => \dc_bias[3]_i_9_n_0\,
      I1 => \dc_bias[3]_i_26_n_0\,
      I2 => \dc_bias[3]_i_5__0_n_0\,
      I3 => \dc_bias[3]_i_6__0_n_0\,
      I4 => \dc_bias[3]_i_7_n_0\,
      I5 => \dc_bias[3]_i_8_n_0\,
      O => \processQ_reg[0]_1\
    );
\dc_bias[3]_i_45\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2AAAAAAAAAAAAAE"
    )
        port map (
      I0 => \dc_bias[3]_i_76_n_0\,
      I1 => \dc_bias[3]_i_77_n_0\,
      I2 => \dc_bias[3]_i_78_n_0\,
      I3 => \is_vertical_gridline0__20_carry__0_i_4_n_0\,
      I4 => \dc_bias[3]_i_79_n_0\,
      I5 => \^processq_reg[3]_0\,
      O => \dc_bias[3]_i_45_n_0\
    );
\dc_bias[3]_i_46\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF7F0100FFFF"
    )
        port map (
      I0 => \dc_bias[3]_i_80_n_0\,
      I1 => \dc_bias[3]_i_45_n_0\,
      I2 => \^processq_reg[3]_0\,
      I3 => \^di\(0),
      I4 => \dc_bias[3]_i_81_n_0\,
      I5 => \dc_bias[3]_i_82_n_0\,
      O => \dc_bias[3]_i_46_n_0\
    );
\dc_bias[3]_i_47\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9AA6AAAAAAAA9AA6"
    )
        port map (
      I0 => \dc_bias[3]_i_82_n_0\,
      I1 => \^di\(0),
      I2 => \^processq_reg[3]_0\,
      I3 => \dc_bias[3]_i_45_n_0\,
      I4 => \is_vertical_gridline0__20_carry__0_i_4_n_0\,
      I5 => \dc_bias[3]_i_79_n_0\,
      O => \dc_bias[3]_i_47_n_0\
    );
\dc_bias[3]_i_48\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999966669999999"
    )
        port map (
      I0 => \dc_bias[3]_i_79_n_0\,
      I1 => \^q\(5),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => \^q\(4),
      I5 => \dc_bias[3]_i_45_n_0\,
      O => \dc_bias[3]_i_48_n_0\
    );
\dc_bias[3]_i_49\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"956A"
    )
        port map (
      I0 => \dc_bias[3]_i_45_n_0\,
      I1 => \^q\(3),
      I2 => \^q\(2),
      I3 => \^q\(4),
      O => \dc_bias[3]_i_49_n_0\
    );
\dc_bias[3]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAFEFEFFFE"
    )
        port map (
      I0 => \^processq_reg[4]_1\,
      I1 => \dc_bias_reg[1]_0\,
      I2 => \dc_bias_reg[1]\,
      I3 => \dc_bias[3]_i_9_n_0\,
      I4 => \dc_bias[3]_i_10__0_n_0\,
      I5 => \encoded_reg[9]\,
      O => \processQ_reg[4]_2\
    );
\dc_bias[3]_i_53\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFDFBF7F10204080"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \dc_bias[3]_i_45_n_0\,
      I4 => \dc_bias[3]_i_46_n_0\,
      I5 => \dc_bias[3]_i_48_n_0\,
      O => \dc_bias[3]_i_53_n_0\
    );
\dc_bias[3]_i_57\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FFF000077770000"
    )
        port map (
      I0 => \dc_bias[3]_i_28_0\(0),
      I1 => \uut3/is_trigger_time510_in\,
      I2 => \uut3/is_trigger_time4\,
      I3 => \uut3/is_trigger_time48_in\,
      I4 => \dc_bias_reg[0]_0\(1),
      I5 => \dc_bias_reg[0]_0\(0),
      O => \dc_bias[3]_i_57_n_0\
    );
\dc_bias[3]_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => \dc_bias[3]_i_5__0_n_0\
    );
\dc_bias[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAEAAAAAAAAAA"
    )
        port map (
      I0 => \dc_bias[3]_i_2__1\,
      I1 => \dc_bias[3]_i_13_n_0\,
      I2 => \is_vertical_gridline0_carry__0_i_9_n_0\,
      I3 => \^q\(4),
      I4 => \^q\(9),
      I5 => \dc_bias[3]_i_14_n_0\,
      O => \^processq_reg[4]_1\
    );
\dc_bias[3]_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFABFAFFAAFAABAA"
    )
        port map (
      I0 => \dc_bias[3]_i_3__1_0\,
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \dc_bias[3]_i_21_n_0\,
      I4 => \^q\(2),
      I5 => \dc_bias[3]_i_22_n_0\,
      O => \dc_bias[3]_i_6__0_n_0\
    );
\dc_bias[3]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"540A0554"
    )
        port map (
      I0 => \dc_bias[3]_i_22_n_0\,
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => \dc_bias[3]_i_21_n_0\,
      O => \dc_bias[3]_i_7_n_0\
    );
\dc_bias[3]_i_76\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"95D5D55595555555"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(7),
      I2 => \^q\(6),
      I3 => \is_vertical_gridline0_carry__0_i_8_n_0\,
      I4 => \^q\(5),
      I5 => \^q\(9),
      O => \dc_bias[3]_i_76_n_0\
    );
\dc_bias[3]_i_77\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00E00000FF1FFF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      I2 => \^q\(4),
      I3 => \^q\(6),
      I4 => \^q\(5),
      I5 => \^q\(7),
      O => \dc_bias[3]_i_77_n_0\
    );
\dc_bias[3]_i_78\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"808080FFFFFFFF01"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(8),
      I2 => \^q\(7),
      I3 => \^q\(5),
      I4 => \is_vertical_gridline0_carry__0_i_8_n_0\,
      I5 => \^q\(6),
      O => \dc_bias[3]_i_78_n_0\
    );
\dc_bias[3]_i_79\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F7FFFFF80000000"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(5),
      I2 => \^q\(6),
      I3 => \is_vertical_gridline0_carry__0_i_8_n_0\,
      I4 => \^q\(7),
      I5 => \^q\(9),
      O => \dc_bias[3]_i_79_n_0\
    );
\dc_bias[3]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6009"
    )
        port map (
      I0 => \^q\(2),
      I1 => \dc_bias[3]_i_21_n_0\,
      I2 => \^q\(0),
      I3 => \^q\(1),
      O => \dc_bias[3]_i_8_n_0\
    );
\dc_bias[3]_i_80\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA95556"
    )
        port map (
      I0 => \dc_bias[3]_i_79_n_0\,
      I1 => \^q\(4),
      I2 => \^q\(3),
      I3 => \^q\(2),
      I4 => \^q\(5),
      O => \dc_bias[3]_i_80_n_0\
    );
\dc_bias[3]_i_81\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0071FF8EFF8E0071"
    )
        port map (
      I0 => \^processq_reg[3]_0\,
      I1 => \dc_bias[3]_i_79_n_0\,
      I2 => \is_vertical_gridline0__20_carry__0_i_4_n_0\,
      I3 => \dc_bias[3]_i_78_n_0\,
      I4 => \uut3/is_vertical_gridline1\(6),
      I5 => \dc_bias[3]_i_132_n_0\,
      O => \dc_bias[3]_i_81_n_0\
    );
\dc_bias[3]_i_82\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9A9A9A6A6A6A6AA9"
    )
        port map (
      I0 => \dc_bias[3]_i_133_n_0\,
      I1 => \dc_bias[3]_i_79_n_0\,
      I2 => \^q\(5),
      I3 => \^q\(2),
      I4 => \^q\(3),
      I5 => \^q\(4),
      O => \dc_bias[3]_i_82_n_0\
    );
\dc_bias[3]_i_84\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^q\(9),
      I1 => triggerTimeOut(7),
      I2 => triggerTimeOut(6),
      I3 => \^q\(8),
      O => \dc_bias[3]_i_84_n_0\
    );
\dc_bias[3]_i_85\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => triggerTimeOut(6),
      I1 => \^q\(8),
      I2 => triggerTimeOut(7),
      I3 => \^q\(9),
      O => \dc_bias[3]_i_85_n_0\
    );
\dc_bias[3]_i_86\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8AE308A2"
    )
        port map (
      I0 => \^q\(7),
      I1 => \dc_bias_reg[3]_i_55_0\,
      I2 => triggerTimeOut(4),
      I3 => triggerTimeOut(5),
      I4 => \^q\(6),
      O => \dc_bias[3]_i_86_n_0\
    );
\dc_bias[3]_i_87\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B288"
    )
        port map (
      I0 => \^q\(3),
      I1 => triggerTimeOut(1),
      I2 => \^q\(2),
      I3 => triggerTimeOut(0),
      O => \dc_bias[3]_i_87_n_0\
    );
\dc_bias[3]_i_88\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9006909009900909"
    )
        port map (
      I0 => triggerTimeOut(7),
      I1 => \^q\(9),
      I2 => triggerTimeOut(6),
      I3 => triggerTimeOut(0),
      I4 => \is_trigger_time6_inferred__2/i__carry_0\,
      I5 => \^q\(8),
      O => \dc_bias[3]_i_88_n_0\
    );
\dc_bias[3]_i_89\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06909009"
    )
        port map (
      I0 => triggerTimeOut(5),
      I1 => \^q\(7),
      I2 => triggerTimeOut(4),
      I3 => \dc_bias_reg[3]_i_55_0\,
      I4 => \^q\(6),
      O => \dc_bias[3]_i_89_n_0\
    );
\dc_bias[3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A69AAA99AA999AA9"
    )
        port map (
      I0 => \^q\(0),
      I1 => \dc_bias[3]_i_20__0_n_0\,
      I2 => \dc_bias[3]_i_21_n_0\,
      I3 => \dc_bias[3]_i_22_n_0\,
      I4 => \^q\(2),
      I5 => \^q\(1),
      O => \dc_bias[3]_i_9_n_0\
    );
\dc_bias[3]_i_90\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8484844221212118"
    )
        port map (
      I0 => \^q\(4),
      I1 => triggerTimeOut(3),
      I2 => triggerTimeOut(2),
      I3 => triggerTimeOut(0),
      I4 => triggerTimeOut(1),
      I5 => \^q\(5),
      O => \dc_bias[3]_i_90_n_0\
    );
\dc_bias[3]_i_91\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4224"
    )
        port map (
      I0 => \^q\(2),
      I1 => triggerTimeOut(0),
      I2 => triggerTimeOut(1),
      I3 => \^q\(3),
      O => \dc_bias[3]_i_91_n_0\
    );
\dc_bias[3]_i_93\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15403D54"
    )
        port map (
      I0 => \^q\(9),
      I1 => \dc_bias_reg[3]_i_56_0\,
      I2 => triggerTimeOut(6),
      I3 => triggerTimeOut(7),
      I4 => \^q\(8),
      O => \dc_bias[3]_i_93_n_0\
    );
\dc_bias[3]_i_94\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"09906009"
    )
        port map (
      I0 => triggerTimeOut(7),
      I1 => \^q\(9),
      I2 => triggerTimeOut(6),
      I3 => \dc_bias_reg[3]_i_56_0\,
      I4 => \^q\(8),
      O => \dc_bias[3]_i_94_n_0\
    );
\dc_bias_reg[3]_i_151\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \dc_bias_reg[3]_i_151_n_0\,
      CO(2) => \dc_bias_reg[3]_i_151_n_1\,
      CO(1) => \dc_bias_reg[3]_i_151_n_2\,
      CO(0) => \dc_bias_reg[3]_i_151_n_3\,
      CYINIT => '1',
      DI(3) => \dc_bias[3]_i_199_n_0\,
      DI(2) => \^processq_reg[7]_3\(2),
      DI(1) => \dc_bias[3]_i_200_n_0\,
      DI(0) => \^q\(1),
      O(3 downto 0) => \NLW_dc_bias_reg[3]_i_151_O_UNCONNECTED\(3 downto 0),
      S(3) => \dc_bias[3]_i_201_n_0\,
      S(2) => \dc_bias[3]_i_202_n_0\,
      S(1) => \dc_bias[3]_i_203_n_0\,
      S(0) => \dc_bias[3]_i_204_n_0\
    );
\dc_bias_reg[3]_i_153\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \dc_bias_reg[3]_i_153_n_0\,
      CO(2) => \dc_bias_reg[3]_i_153_n_1\,
      CO(1) => \dc_bias_reg[3]_i_153_n_2\,
      CO(0) => \dc_bias_reg[3]_i_153_n_3\,
      CYINIT => '1',
      DI(3) => \dc_bias[3]_i_205_n_0\,
      DI(2) => \dc_bias[3]_i_206_n_0\,
      DI(1) => \dc_bias[3]_i_207_n_0\,
      DI(0) => \dc_bias[3]_i_208_n_0\,
      O(3 downto 0) => \NLW_dc_bias_reg[3]_i_153_O_UNCONNECTED\(3 downto 0),
      S(3) => \dc_bias[3]_i_209_n_0\,
      S(2) => \dc_bias[3]_i_210_n_0\,
      S(1) => \dc_bias[3]_i_211_n_0\,
      S(0) => \dc_bias[3]_i_212_n_0\
    );
\dc_bias_reg[3]_i_156\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \dc_bias_reg[3]_i_156_n_0\,
      CO(2) => \dc_bias_reg[3]_i_156_n_1\,
      CO(1) => \dc_bias_reg[3]_i_156_n_2\,
      CO(0) => \dc_bias_reg[3]_i_156_n_3\,
      CYINIT => '1',
      DI(3) => \dc_bias[3]_i_213_n_0\,
      DI(2) => \^processq_reg[7]_3\(2),
      DI(1) => \dc_bias[3]_i_214_n_0\,
      DI(0) => \dc_bias[3]_i_215_n_0\,
      O(3 downto 0) => \NLW_dc_bias_reg[3]_i_156_O_UNCONNECTED\(3 downto 0),
      S(3) => \dc_bias[3]_i_216_n_0\,
      S(2) => \dc_bias[3]_i_217_n_0\,
      S(1) => \dc_bias[3]_i_218_n_0\,
      S(0) => \dc_bias[3]_i_219_n_0\
    );
\dc_bias_reg[3]_i_54\: unisim.vcomponents.CARRY4
     port map (
      CI => \dc_bias_reg[3]_i_83_n_0\,
      CO(3 downto 1) => \NLW_dc_bias_reg[3]_i_54_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \processQ_reg[9]_7\(0),
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \dc_bias[3]_i_84_n_0\,
      O(3 downto 0) => \NLW_dc_bias_reg[3]_i_54_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \dc_bias[3]_i_85_n_0\
    );
\dc_bias_reg[3]_i_55\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \processQ_reg[1]_4\(0),
      CO(2) => \dc_bias_reg[3]_i_55_n_1\,
      CO(1) => \dc_bias_reg[3]_i_55_n_2\,
      CO(0) => \dc_bias_reg[3]_i_55_n_3\,
      CYINIT => \^processq_reg[1]_1\,
      DI(3) => \^processq_reg[9]_5\(0),
      DI(2) => \dc_bias[3]_i_86_n_0\,
      DI(1) => \^processq_reg[7]_3\(2),
      DI(0) => \dc_bias[3]_i_87_n_0\,
      O(3 downto 0) => \NLW_dc_bias_reg[3]_i_55_O_UNCONNECTED\(3 downto 0),
      S(3) => \dc_bias[3]_i_88_n_0\,
      S(2) => \dc_bias[3]_i_89_n_0\,
      S(1) => \dc_bias[3]_i_90_n_0\,
      S(0) => \dc_bias[3]_i_91_n_0\
    );
\dc_bias_reg[3]_i_56\: unisim.vcomponents.CARRY4
     port map (
      CI => \dc_bias_reg[3]_i_92_n_0\,
      CO(3 downto 1) => \NLW_dc_bias_reg[3]_i_56_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \uut3/is_trigger_time615_in\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \dc_bias[3]_i_93_n_0\,
      O(3 downto 0) => \NLW_dc_bias_reg[3]_i_56_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \dc_bias[3]_i_94_n_0\
    );
\dc_bias_reg[3]_i_83\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \dc_bias_reg[3]_i_83_n_0\,
      CO(2) => \dc_bias_reg[3]_i_83_n_1\,
      CO(1) => \dc_bias_reg[3]_i_83_n_2\,
      CO(0) => \dc_bias_reg[3]_i_83_n_3\,
      CYINIT => '1',
      DI(3) => \dc_bias[3]_i_134_n_0\,
      DI(2) => \dc_bias[3]_i_135_n_0\,
      DI(1) => \dc_bias[3]_i_136_n_0\,
      DI(0) => \dc_bias[3]_i_137_n_0\,
      O(3 downto 0) => \NLW_dc_bias_reg[3]_i_83_O_UNCONNECTED\(3 downto 0),
      S(3) => \dc_bias[3]_i_138_n_0\,
      S(2) => \dc_bias[3]_i_139_n_0\,
      S(1) => \dc_bias[3]_i_140_n_0\,
      S(0) => \dc_bias[3]_i_141_n_0\
    );
\dc_bias_reg[3]_i_92\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \dc_bias_reg[3]_i_92_n_0\,
      CO(2) => \dc_bias_reg[3]_i_92_n_1\,
      CO(1) => \dc_bias_reg[3]_i_92_n_2\,
      CO(0) => \dc_bias_reg[3]_i_92_n_3\,
      CYINIT => '1',
      DI(3) => \dc_bias[3]_i_142_n_0\,
      DI(2) => \dc_bias[3]_i_143_n_0\,
      DI(1) => \dc_bias[3]_i_144_n_0\,
      DI(0) => \dc_bias[3]_i_145_n_0\,
      O(3 downto 0) => \NLW_dc_bias_reg[3]_i_92_O_UNCONNECTED\(3 downto 0),
      S(3) => \dc_bias[3]_i_146_n_0\,
      S(2) => \dc_bias[3]_i_147_n_0\,
      S(1) => \dc_bias[3]_i_148_n_0\,
      S(0) => \dc_bias[3]_i_149_n_0\
    );
\dc_bias_reg[3]_i_95\: unisim.vcomponents.CARRY4
     port map (
      CI => \dc_bias_reg[3]_i_151_n_0\,
      CO(3 downto 1) => \NLW_dc_bias_reg[3]_i_95_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \uut3/is_trigger_time510_in\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \^processq_reg[9]_5\(0),
      O(3 downto 0) => \NLW_dc_bias_reg[3]_i_95_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \dc_bias[3]_i_152_n_0\
    );
\dc_bias_reg[3]_i_96\: unisim.vcomponents.CARRY4
     port map (
      CI => \dc_bias_reg[3]_i_153_n_0\,
      CO(3 downto 1) => \NLW_dc_bias_reg[3]_i_96_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \uut3/is_trigger_time4\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \dc_bias[3]_i_154_n_0\,
      O(3 downto 0) => \NLW_dc_bias_reg[3]_i_96_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \dc_bias[3]_i_155_n_0\
    );
\dc_bias_reg[3]_i_97\: unisim.vcomponents.CARRY4
     port map (
      CI => \dc_bias_reg[3]_i_156_n_0\,
      CO(3 downto 1) => \NLW_dc_bias_reg[3]_i_97_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \uut3/is_trigger_time48_in\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \^processq_reg[9]_5\(0),
      O(3 downto 0) => \NLW_dc_bias_reg[3]_i_97_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \dc_bias[3]_i_157_n_0\
    );
\dc_bias_reg[3]_i_98\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \processQ_reg[1]_3\(0),
      CO(2) => \dc_bias_reg[3]_i_98_n_1\,
      CO(1) => \dc_bias_reg[3]_i_98_n_2\,
      CO(0) => \dc_bias_reg[3]_i_98_n_3\,
      CYINIT => \dc_bias[3]_i_32_n_0\,
      DI(3) => \dc_bias[3]_i_158_n_0\,
      DI(2) => \dc_bias[3]_i_159_n_0\,
      DI(1) => \dc_bias[3]_i_143_n_0\,
      DI(0) => \dc_bias[3]_i_160_n_0\,
      O(3 downto 0) => \NLW_dc_bias_reg[3]_i_98_O_UNCONNECTED\(3 downto 0),
      S(3) => \dc_bias[3]_i_161_n_0\,
      S(2) => \dc_bias[3]_i_162_n_0\,
      S(1) => \dc_bias[3]_i_163_n_0\,
      S(0) => \dc_bias[3]_i_164_n_0\
    );
\encoded[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => \^processq_reg[5]_2\,
      I1 => \encoded_reg[0]\(0),
      I2 => \^processq_reg[7]_1\,
      O => D(0)
    );
\encoded[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \^processq_reg[5]_2\,
      I1 => \encoded_reg[0]\(0),
      I2 => \^processq_reg[7]_1\,
      O => D(1)
    );
\encoded[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1554"
    )
        port map (
      I0 => \encoded[2]_i_3_n_0\,
      I1 => \^q\(5),
      I2 => \^q\(6),
      I3 => \^q\(4),
      O => \^processq_reg[5]_2\
    );
\encoded[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(8),
      I2 => s00_axi_aresetn,
      I3 => \^q\(7),
      O => \encoded[2]_i_3_n_0\
    );
\i___21_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \is_hash_mark2_inferred__0/i___21_carry\(0),
      I1 => \is_hash_mark2_inferred__0/i___21_carry\(1),
      O => \processQ_reg[8]_0\(2)
    );
\i___21_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \is_hash_mark2_inferred__0/i___21_carry\(0),
      I1 => \is_hash_mark2_inferred__0/i___21_carry\(1),
      O => \processQ_reg[8]_0\(1)
    );
\i___21_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \is_hash_mark2_inferred__0/i___21_carry\(0),
      I1 => \is_hash_mark2_inferred__0/i___21_carry\(1),
      O => \processQ_reg[8]_0\(0)
    );
\i___30_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(7),
      I1 => \i___30_carry__0_i_5_n_3\,
      O => \processQ_reg[7]_0\(3)
    );
\i___30_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(6),
      I1 => \is_hash_mark2_inferred__0/i___30_carry__0\(3),
      O => \processQ_reg[7]_0\(2)
    );
\i___30_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(5),
      I1 => \is_hash_mark2_inferred__0/i___30_carry__0\(2),
      O => \processQ_reg[7]_0\(1)
    );
\i___30_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(4),
      I1 => \is_hash_mark2_inferred__0/i___30_carry__0\(1),
      O => \processQ_reg[7]_0\(0)
    );
\i___30_carry__0_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \i___30_carry__0_i_1_0\(0),
      CO(3 downto 1) => \NLW_i___30_carry__0_i_5_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \i___30_carry__0_i_5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_i___30_carry__0_i_5_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
\i___30_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(9),
      I1 => \is_hash_mark2_inferred__0/i___21_carry\(1),
      O => \processQ_reg[9]_2\(1)
    );
\i___30_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(8),
      I1 => \is_hash_mark2_inferred__0/i___21_carry\(0),
      O => \processQ_reg[9]_2\(0)
    );
\i___30_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(3),
      I1 => \is_hash_mark2_inferred__0/i___30_carry__0\(0),
      O => \processQ_reg[3]_1\(3)
    );
\i___30_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(2),
      I1 => \is_hash_mark2_inferred__0/i___21_carry\(0),
      O => \processQ_reg[3]_1\(2)
    );
\i___30_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(1),
      I1 => \is_hash_mark2_inferred__0/i___21_carry\(1),
      O => \processQ_reg[3]_1\(1)
    );
\i___30_carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(0),
      I1 => \is_hash_mark2_inferred__0/i___21_carry\(0),
      O => \processQ_reg[3]_1\(0)
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22A2BBCB0020AA8A"
    )
        port map (
      I0 => \^q\(9),
      I1 => triggerTimeOut(6),
      I2 => \is_trigger_time6_inferred__2/i__carry_0\,
      I3 => triggerTimeOut(0),
      I4 => triggerTimeOut(7),
      I5 => \^q\(8),
      O => \^processq_reg[9]_5\(0)
    );
\i__carry__0_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(7),
      O => \processQ_reg[5]_1\(3)
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9006909009900909"
    )
        port map (
      I0 => triggerTimeOut(7),
      I1 => \^q\(9),
      I2 => triggerTimeOut(6),
      I3 => triggerTimeOut(0),
      I4 => \is_trigger_time6_inferred__2/i__carry_0\,
      I5 => \^q\(8),
      O => \triggerTime_reg[9]_1\(0)
    );
\i__carry__0_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(6),
      O => \processQ_reg[5]_1\(2)
    );
\i__carry__0_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(5),
      O => \processQ_reg[5]_1\(1)
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(4),
      O => \processQ_reg[5]_1\(0)
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(9),
      O => \processQ_reg[9]_1\(3)
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(8),
      O => \processQ_reg[9]_1\(2)
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(9),
      O => \processQ_reg[9]_1\(1)
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(8),
      O => \processQ_reg[9]_1\(0)
    );
\i__carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => \^processq_reg[1]_1\
    );
\i__carry_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8AE308A2"
    )
        port map (
      I0 => \^q\(7),
      I1 => \dc_bias_reg[3]_i_55_0\,
      I2 => triggerTimeOut(4),
      I3 => triggerTimeOut(5),
      I4 => \^q\(6),
      O => \^processq_reg[7]_3\(3)
    );
\i__carry_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(3),
      O => \processQ_reg[1]_0\(2)
    );
\i__carry_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8AE308A2"
    )
        port map (
      I0 => \^q\(9),
      I1 => \is_trigger_time6_inferred__2/i__carry_0\,
      I2 => triggerTimeOut(6),
      I3 => triggerTimeOut(7),
      I4 => \^q\(8),
      O => \processQ_reg[9]_4\(3)
    );
\i__carry_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02AAABFC0002AAA8"
    )
        port map (
      I0 => \^q\(5),
      I1 => triggerTimeOut(1),
      I2 => triggerTimeOut(0),
      I3 => triggerTimeOut(2),
      I4 => triggerTimeOut(3),
      I5 => \^q\(4),
      O => \^processq_reg[7]_3\(2)
    );
\i__carry_i_2__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(2),
      O => \processQ_reg[1]_0\(1)
    );
\i__carry_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8AE308A2"
    )
        port map (
      I0 => \^q\(7),
      I1 => \is_trigger_time6_inferred__2/i__carry\,
      I2 => triggerTimeOut(4),
      I3 => triggerTimeOut(5),
      I4 => \^q\(6),
      O => \processQ_reg[9]_4\(2)
    );
\i__carry_i_3__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(1),
      O => \processQ_reg[1]_0\(0)
    );
\i__carry_i_3__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B288"
    )
        port map (
      I0 => \^q\(3),
      I1 => triggerTimeOut(1),
      I2 => \^q\(2),
      I3 => triggerTimeOut(0),
      O => \^processq_reg[7]_3\(1)
    );
\i__carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \^processq_reg[7]_3\(0)
    );
\i__carry_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2ABC02A8"
    )
        port map (
      I0 => \^q\(5),
      I1 => triggerTimeOut(2),
      I2 => triggerTimeOut(1),
      I3 => triggerTimeOut(3),
      I4 => \^q\(4),
      O => \processQ_reg[9]_4\(1)
    );
\i__carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F440"
    )
        port map (
      I0 => triggerTimeOut(0),
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => triggerTimeOut(1),
      O => \processQ_reg[9]_4\(0)
    );
\i__carry_i_5__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06909009"
    )
        port map (
      I0 => triggerTimeOut(5),
      I1 => \^q\(7),
      I2 => triggerTimeOut(4),
      I3 => \dc_bias_reg[3]_i_55_0\,
      I4 => \^q\(6),
      O => \triggerTime_reg[7]\(3)
    );
\i__carry_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06909009"
    )
        port map (
      I0 => triggerTimeOut(7),
      I1 => \^q\(9),
      I2 => triggerTimeOut(6),
      I3 => \is_trigger_time6_inferred__2/i__carry_0\,
      I4 => \^q\(8),
      O => \triggerTime_reg[9]_0\(3)
    );
\i__carry_i_6__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8484844221212118"
    )
        port map (
      I0 => \^q\(4),
      I1 => triggerTimeOut(3),
      I2 => triggerTimeOut(2),
      I3 => triggerTimeOut(0),
      I4 => triggerTimeOut(1),
      I5 => \^q\(5),
      O => \triggerTime_reg[7]\(2)
    );
\i__carry_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06909009"
    )
        port map (
      I0 => triggerTimeOut(5),
      I1 => \^q\(7),
      I2 => triggerTimeOut(4),
      I3 => \is_trigger_time6_inferred__2/i__carry\,
      I4 => \^q\(6),
      O => \triggerTime_reg[9]_0\(2)
    );
\i__carry_i_7__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4224"
    )
        port map (
      I0 => \^q\(2),
      I1 => triggerTimeOut(0),
      I2 => triggerTimeOut(1),
      I3 => \^q\(3),
      O => \triggerTime_reg[7]\(1)
    );
\i__carry_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90060990"
    )
        port map (
      I0 => triggerTimeOut(3),
      I1 => \^q\(5),
      I2 => triggerTimeOut(2),
      I3 => triggerTimeOut(1),
      I4 => \^q\(4),
      O => \triggerTime_reg[9]_0\(1)
    );
\i__carry_i_8__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => \triggerTime_reg[7]\(0)
    );
\i__carry_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6006"
    )
        port map (
      I0 => triggerTimeOut(1),
      I1 => \^q\(3),
      I2 => triggerTimeOut(0),
      I3 => \^q\(2),
      O => \triggerTime_reg[9]_0\(0)
    );
is_trigger_time1_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => triggerTimeOut(7),
      I1 => \^q\(9),
      O => \triggerTime_reg[9]\(3)
    );
is_trigger_time1_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => triggerTimeOut(6),
      I1 => \^q\(8),
      I2 => \^q\(6),
      I3 => triggerTimeOut(4),
      I4 => \^q\(7),
      I5 => triggerTimeOut(5),
      O => \triggerTime_reg[9]\(2)
    );
is_trigger_time1_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(4),
      I1 => triggerTimeOut(2),
      I2 => \^q\(5),
      I3 => triggerTimeOut(3),
      I4 => triggerTimeOut(1),
      I5 => \^q\(3),
      O => \triggerTime_reg[9]\(1)
    );
is_trigger_time1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1001"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => triggerTimeOut(0),
      I3 => \^q\(2),
      O => \triggerTime_reg[9]\(0)
    );
\is_trigger_time5_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^q\(9),
      I1 => triggerTimeOut(7),
      I2 => triggerTimeOut(6),
      I3 => \^q\(8),
      O => \processQ_reg[9]_6\(0)
    );
\is_trigger_time5_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => triggerTimeOut(6),
      I1 => \^q\(8),
      I2 => triggerTimeOut(7),
      I3 => \^q\(9),
      O => \triggerTime_reg[8]\(0)
    );
is_trigger_time5_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^q\(7),
      I1 => triggerTimeOut(5),
      I2 => triggerTimeOut(4),
      I3 => \^q\(6),
      O => \processQ_reg[7]_2\(3)
    );
is_trigger_time5_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^q\(5),
      I1 => triggerTimeOut(3),
      I2 => triggerTimeOut(2),
      I3 => \^q\(4),
      O => \processQ_reg[7]_2\(2)
    );
is_trigger_time5_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^q\(3),
      I1 => triggerTimeOut(1),
      I2 => triggerTimeOut(0),
      I3 => \^q\(2),
      O => \processQ_reg[7]_2\(1)
    );
is_trigger_time5_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \processQ_reg[7]_2\(0)
    );
is_trigger_time5_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => triggerTimeOut(5),
      I1 => \^q\(7),
      I2 => triggerTimeOut(4),
      I3 => \^q\(6),
      O => \triggerTime_reg[7]_0\(3)
    );
is_trigger_time5_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => triggerTimeOut(3),
      I1 => \^q\(5),
      I2 => triggerTimeOut(2),
      I3 => \^q\(4),
      O => \triggerTime_reg[7]_0\(2)
    );
is_trigger_time5_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => triggerTimeOut(0),
      I1 => \^q\(2),
      I2 => triggerTimeOut(1),
      I3 => \^q\(3),
      O => \triggerTime_reg[7]_0\(1)
    );
is_trigger_time5_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => \triggerTime_reg[7]_0\(0)
    );
\is_vertical_gridline0__20_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"96969696969696A5"
    )
        port map (
      I0 => \uut3/is_vertical_gridline1\(6),
      I1 => \is_vertical_gridline0__20_carry\(0),
      I2 => \is_vertical_gridline0__20_carry__0\(0),
      I3 => O(1),
      I4 => O(0),
      I5 => O(2),
      O => \processQ_reg[6]_1\(1)
    );
\is_vertical_gridline0__20_carry__0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA95556"
    )
        port map (
      I0 => \is_vertical_gridline0__20_carry__0_i_4_n_0\,
      I1 => O(0),
      I2 => \is_vertical_gridline0__20_carry\(0),
      I3 => O(1),
      I4 => O(2),
      O => \processQ_reg[6]_1\(0)
    );
\is_vertical_gridline0__20_carry__0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA9995"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(4),
      I2 => \^q\(3),
      I3 => \^q\(2),
      I4 => \^q\(5),
      O => \uut3/is_vertical_gridline1\(6)
    );
\is_vertical_gridline0__20_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56AA"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \^q\(4),
      O => \is_vertical_gridline0__20_carry__0_i_4_n_0\
    );
\is_vertical_gridline0__20_carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1E"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \^q\(4),
      O => \^processq_reg[3]_0\
    );
\is_vertical_gridline0__20_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      O => \processQ_reg[2]_0\(1)
    );
\is_vertical_gridline0__20_carry_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(2),
      O => \processQ_reg[2]_0\(0)
    );
\is_vertical_gridline0__20_carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A9A9A956565656A9"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \is_vertical_gridline0__20_carry\(0),
      I4 => O(0),
      I5 => O(1),
      O => \processQ_reg[4]_0\(3)
    );
\is_vertical_gridline0__20_carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => O(0),
      I3 => \is_vertical_gridline0__20_carry\(0),
      O => \processQ_reg[4]_0\(2)
    );
\is_vertical_gridline0__20_carry_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(2),
      I1 => \is_vertical_gridline0__20_carry\(0),
      O => \processQ_reg[4]_0\(1)
    );
\is_vertical_gridline0__20_carry_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(1),
      O => \processQ_reg[4]_0\(0)
    );
\is_vertical_gridline0_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A857"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(2),
      I3 => \^q\(5),
      O => \^di\(2)
    );
\is_vertical_gridline0_carry__0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA9"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(7),
      I2 => \^q\(6),
      I3 => \^q\(5),
      I4 => \is_vertical_gridline0_carry__0_i_8_n_0\,
      O => \^di\(1)
    );
\is_vertical_gridline0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      O => \^di\(0)
    );
\is_vertical_gridline0_carry__0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA9995"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(4),
      I2 => \^q\(3),
      I3 => \^q\(2),
      I4 => \^q\(5),
      O => \processQ_reg[6]_0\(3)
    );
\is_vertical_gridline0_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FFFF00FF0001FE"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(7),
      I2 => \^q\(6),
      I3 => \^q\(9),
      I4 => \is_vertical_gridline0_carry__0_i_8_n_0\,
      I5 => \^q\(5),
      O => \processQ_reg[6]_0\(2)
    );
\is_vertical_gridline0_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F01EF01EF01E1EE1"
    )
        port map (
      I0 => \is_vertical_gridline0_carry__0_i_9_n_0\,
      I1 => \^q\(7),
      I2 => \^q\(8),
      I3 => \^q\(4),
      I4 => \^q\(2),
      I5 => \^q\(3),
      O => \processQ_reg[6]_0\(1)
    );
\is_vertical_gridline0_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01FEFE01FE0103FC"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(6),
      I2 => \^q\(5),
      I3 => \^q\(7),
      I4 => \^q\(3),
      I5 => \^q\(2),
      O => \processQ_reg[6]_0\(0)
    );
\is_vertical_gridline0_carry__0_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(2),
      O => \is_vertical_gridline0_carry__0_i_8_n_0\
    );
\is_vertical_gridline0_carry__0_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(6),
      O => \is_vertical_gridline0_carry__0_i_9_n_0\
    );
\is_vertical_gridline0_carry__1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA9"
    )
        port map (
      I0 => \^q\(9),
      I1 => \is_vertical_gridline0_carry__0_i_8_n_0\,
      I2 => \^q\(5),
      I3 => \^q\(6),
      I4 => \^q\(7),
      I5 => \^q\(8),
      O => \processQ_reg[9]_0\(2)
    );
\is_vertical_gridline0_carry__1_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA9"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(7),
      I2 => \^q\(6),
      I3 => \^q\(5),
      I4 => \is_vertical_gridline0_carry__0_i_8_n_0\,
      O => \processQ_reg[9]_0\(1)
    );
\is_vertical_gridline0_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFE00000001F"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      I2 => \^q\(4),
      I3 => \^q\(6),
      I4 => \^q\(5),
      I5 => \^q\(7),
      O => \processQ_reg[9]_0\(0)
    );
is_vertical_gridline0_carry_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA9995"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(4),
      I2 => \^q\(3),
      I3 => \^q\(2),
      I4 => \^q\(5),
      O => \processQ_reg[6]_2\(1)
    );
is_vertical_gridline0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A857"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(2),
      I3 => \^q\(5),
      O => \processQ_reg[6]_2\(0)
    );
is_vertical_gridline0_carry_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FA0515EA"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(3),
      I2 => \^q\(4),
      I3 => \^q\(6),
      I4 => \^q\(2),
      O => S(3)
    );
is_vertical_gridline0_carry_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"57A8A857"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(2),
      I3 => \^q\(5),
      I4 => \^q\(1),
      O => S(2)
    );
is_vertical_gridline0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A956"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \^q\(0),
      O => S(1)
    );
is_vertical_gridline0_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      O => S(0)
    );
\processQ[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \processQ[0]_i_1__0_n_0\
    );
\processQ[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => plusOp(1)
    );
\processQ[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      O => plusOp(2)
    );
\processQ[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \^q\(0),
      O => plusOp(3)
    );
\processQ[4]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \^q\(1),
      I4 => \^q\(0),
      O => \processQ[4]_i_1__1_n_0\
    );
\processQ[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(2),
      I5 => \^q\(4),
      O => plusOp(5)
    );
\processQ[6]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(5),
      I2 => \^q\(4),
      I3 => \^q\(2),
      I4 => \^q\(3),
      I5 => \^processq_reg[1]_1\,
      O => plusOp(6)
    );
\processQ[7]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA6AAA"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(4),
      I2 => \^q\(6),
      I3 => \^q\(5),
      I4 => \processQ[8]_i_2_n_0\,
      O => \processQ[7]_i_1__1_n_0\
    );
\processQ[8]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \^q\(8),
      I1 => \processQ[8]_i_2_n_0\,
      I2 => \^q\(5),
      I3 => \^q\(6),
      I4 => \^q\(4),
      I5 => \^q\(7),
      O => plusOp(8)
    );
\processQ[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(3),
      I3 => \^q\(2),
      O => \processQ[8]_i_2_n_0\
    );
\processQ[9]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^processq_reg[5]_0\,
      I1 => s00_axi_aresetn,
      O => \processQ[9]_i_1__0_n_0\
    );
\processQ[9]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"777777777777777F"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(8),
      I2 => \processQ[9]_i_5_n_0\,
      I3 => \^q\(7),
      I4 => \^q\(6),
      I5 => \^q\(5),
      O => processQ0
    );
\processQ[9]_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA6A"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(8),
      I2 => \^q\(7),
      I3 => \processQ[9]_i_6_n_0\,
      O => plusOp(9)
    );
\processQ[9]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(6),
      I2 => \^q\(7),
      I3 => \processQ[9]_i_5_n_0\,
      I4 => \^q\(8),
      I5 => \^q\(9),
      O => \^processq_reg[5]_0\
    );
\processQ[9]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \^q\(1),
      I4 => \^q\(0),
      O => \processQ[9]_i_5_n_0\
    );
\processQ[9]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      I2 => \^processq_reg[1]_1\,
      I3 => \^q\(5),
      I4 => \^q\(6),
      I5 => \^q\(4),
      O => \processQ[9]_i_6_n_0\
    );
\processQ_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => processQ0,
      D => \processQ[0]_i_1__0_n_0\,
      Q => \^q\(0),
      R => \processQ[9]_i_1__0_n_0\
    );
\processQ_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => processQ0,
      D => plusOp(1),
      Q => \^q\(1),
      R => \processQ[9]_i_1__0_n_0\
    );
\processQ_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => processQ0,
      D => plusOp(2),
      Q => \^q\(2),
      R => \processQ[9]_i_1__0_n_0\
    );
\processQ_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => processQ0,
      D => plusOp(3),
      Q => \^q\(3),
      R => \processQ[9]_i_1__0_n_0\
    );
\processQ_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => processQ0,
      D => \processQ[4]_i_1__1_n_0\,
      Q => \^q\(4),
      R => \processQ[9]_i_1__0_n_0\
    );
\processQ_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => processQ0,
      D => plusOp(5),
      Q => \^q\(5),
      R => \processQ[9]_i_1__0_n_0\
    );
\processQ_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => processQ0,
      D => plusOp(6),
      Q => \^q\(6),
      R => \processQ[9]_i_1__0_n_0\
    );
\processQ_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => processQ0,
      D => \processQ[7]_i_1__1_n_0\,
      Q => \^q\(7),
      R => \processQ[9]_i_1__0_n_0\
    );
\processQ_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => processQ0,
      D => plusOp(8),
      Q => \^q\(8),
      R => \processQ[9]_i_1__0_n_0\
    );
\processQ_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => processQ0,
      D => plusOp(9),
      Q => \^q\(9),
      R => \processQ[9]_i_1__0_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter__parameterized1\ is
  port (
    \processQ_reg[0]_0\ : out STD_LOGIC;
    \processQ_reg[9]_0\ : out STD_LOGIC;
    switch_1_sp_1 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \processQ_reg[1]_0\ : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \processQ_reg[9]_1\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    is_horizontal_gridline1 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \processQ_reg[5]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \processQ_reg[4]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \triggerVolt_reg[9]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \processQ_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \processQ_reg[3]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \processQ_reg[8]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \processQ_reg[7]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \processQ_reg[2]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \processQ_reg[3]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \processQ_reg[5]_1\ : out STD_LOGIC;
    \processQ_reg[8]_1\ : out STD_LOGIC;
    \processQ_reg[9]_2\ : out STD_LOGIC;
    switch_0_sp_1 : out STD_LOGIC;
    \processQ_reg[5]_2\ : out STD_LOGIC;
    \processQ_reg[0]_1\ : out STD_LOGIC;
    \processQ_reg[1]_1\ : out STD_LOGIC;
    \processQ_reg[7]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \processQ_reg[7]_2\ : out STD_LOGIC;
    \is_horizontal_gridline0_carry__0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \processQ_reg[0]_2\ : out STD_LOGIC;
    \processQ_reg[7]_3\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \processQ_reg[2]_1\ : out STD_LOGIC;
    \triggerVolt_reg[9]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \processQ_reg[9]_3\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \processQ_reg[9]_4\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \dc_bias[3]_i_38\ : out STD_LOGIC;
    \processQ_reg[4]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \triggerVolt_reg[7]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \processQ_reg[8]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \triggerVolt_reg[7]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \triggerVolt_reg[8]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \processQ_reg[9]_5\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \is_horizontal_gridline0_carry__0_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \processQ_reg[9]_6\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \processQ_reg[9]_7\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \processQ_reg[9]_8\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \processQ_reg[1]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \processQ_reg[9]_9\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \processQ_reg[8]_3\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \encoded_reg[9]\ : in STD_LOGIC;
    \encoded_reg[9]_0\ : in STD_LOGIC;
    \encoded_reg[9]_1\ : in STD_LOGIC;
    \processQ_reg[0]_3\ : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    O : in STD_LOGIC_VECTOR ( 2 downto 0 );
    triggerVoltOut : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \is_horizontal_gridline0__23_carry\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \is_hash_mark2_inferred__2/i___12_carry__1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \is_hash_mark2_inferred__2/i___12_carry__0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \is_horizontal_gridline0__29_carry\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \dc_bias[3]_i_4_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \dc_bias[3]_i_7__0_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \dc_bias_reg[3]_i_15_0\ : in STD_LOGIC;
    DOADO : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \dc_bias_reg[3]_i_9_0\ : in STD_LOGIC;
    \dc_bias_reg[3]_i_9_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    switch : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \dc_bias[3]_i_2\ : in STD_LOGIC;
    \dc_bias[3]_i_6\ : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \dc_bias[3]_i_30\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \dc_bias[3]_i_30_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \dc_bias[3]_i_12_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \dc_bias[3]_i_12_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \dc_bias[3]_i_28\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \dc_bias[3]_i_28_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \is_trigger_volt6_inferred__2/i__carry\ : in STD_LOGIC;
    \is_trigger_volt6_inferred__2/i__carry_0\ : in STD_LOGIC;
    \dc_bias_reg[3]_i_62_0\ : in STD_LOGIC;
    \dc_bias_reg[3]_i_31_0\ : in STD_LOGIC;
    \dc_bias_reg[3]_i_66_0\ : in STD_LOGIC;
    \dc_bias[3]_i_8__0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \dc_bias[3]_i_8__0_0\ : in STD_LOGIC;
    \is_horizontal_gridline0__23_carry_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter__parameterized1\ : entity is "counter";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter__parameterized1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter__parameterized1\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal ch1 : STD_LOGIC;
  signal ch2 : STD_LOGIC;
  signal \dc_bias[3]_i_100_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_102_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_103_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_106_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_107_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_108_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_109_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_110_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_111_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_112_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_113_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_116_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_117_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_118_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_119_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_11__0_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_120_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_121_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_122_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_123_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_124_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_125_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_126_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_127_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_128_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_129_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_12__0_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_130_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_131_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_13__0_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_165_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_166_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_167_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_168_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_169_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_170_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_171_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_172_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_173_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_174_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_175_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_176_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_177_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_178_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_179_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_181_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_182_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_183_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_184_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_185_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_186_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_187_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_188_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_190_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_191_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_192_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_193_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_194_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_195_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_196_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_197_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_21__0_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_220_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_221_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_222_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_223_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_224_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_225_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_27_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_29_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_34_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_35_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_36_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_42_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_43_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_44_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_4_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_63_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_64_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_67_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_71_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_72_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_73_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_74_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_75_n_0\ : STD_LOGIC;
  signal \dc_bias_reg[3]_i_101_n_0\ : STD_LOGIC;
  signal \dc_bias_reg[3]_i_101_n_1\ : STD_LOGIC;
  signal \dc_bias_reg[3]_i_101_n_2\ : STD_LOGIC;
  signal \dc_bias_reg[3]_i_101_n_3\ : STD_LOGIC;
  signal \dc_bias_reg[3]_i_105_n_1\ : STD_LOGIC;
  signal \dc_bias_reg[3]_i_105_n_2\ : STD_LOGIC;
  signal \dc_bias_reg[3]_i_105_n_3\ : STD_LOGIC;
  signal \dc_bias_reg[3]_i_115_n_0\ : STD_LOGIC;
  signal \dc_bias_reg[3]_i_115_n_1\ : STD_LOGIC;
  signal \dc_bias_reg[3]_i_115_n_2\ : STD_LOGIC;
  signal \dc_bias_reg[3]_i_115_n_3\ : STD_LOGIC;
  signal \dc_bias_reg[3]_i_15_n_1\ : STD_LOGIC;
  signal \dc_bias_reg[3]_i_15_n_2\ : STD_LOGIC;
  signal \dc_bias_reg[3]_i_15_n_3\ : STD_LOGIC;
  signal \dc_bias_reg[3]_i_180_n_0\ : STD_LOGIC;
  signal \dc_bias_reg[3]_i_180_n_1\ : STD_LOGIC;
  signal \dc_bias_reg[3]_i_180_n_2\ : STD_LOGIC;
  signal \dc_bias_reg[3]_i_180_n_3\ : STD_LOGIC;
  signal \dc_bias_reg[3]_i_62_n_0\ : STD_LOGIC;
  signal \dc_bias_reg[3]_i_62_n_1\ : STD_LOGIC;
  signal \dc_bias_reg[3]_i_62_n_2\ : STD_LOGIC;
  signal \dc_bias_reg[3]_i_62_n_3\ : STD_LOGIC;
  signal \dc_bias_reg[3]_i_66_n_1\ : STD_LOGIC;
  signal \dc_bias_reg[3]_i_66_n_2\ : STD_LOGIC;
  signal \dc_bias_reg[3]_i_66_n_3\ : STD_LOGIC;
  signal \dc_bias_reg[3]_i_99_n_0\ : STD_LOGIC;
  signal \dc_bias_reg[3]_i_99_n_1\ : STD_LOGIC;
  signal \dc_bias_reg[3]_i_99_n_2\ : STD_LOGIC;
  signal \dc_bias_reg[3]_i_99_n_3\ : STD_LOGIC;
  signal \dc_bias_reg[3]_i_9_n_1\ : STD_LOGIC;
  signal \dc_bias_reg[3]_i_9_n_2\ : STD_LOGIC;
  signal \dc_bias_reg[3]_i_9_n_3\ : STD_LOGIC;
  signal \encoded[9]_i_4_n_0\ : STD_LOGIC;
  signal \is_horizontal_gridline0_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \^is_horizontal_gridline1\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 9 downto 1 );
  signal processQ0 : STD_LOGIC;
  signal \processQ[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \processQ[9]_i_1__1_n_0\ : STD_LOGIC;
  signal \processQ[9]_i_4__1_n_0\ : STD_LOGIC;
  signal \processQ[9]_i_5__0_n_0\ : STD_LOGIC;
  signal \processQ[9]_i_7_n_0\ : STD_LOGIC;
  signal \^processq_reg[1]_0\ : STD_LOGIC;
  signal \^processq_reg[1]_1\ : STD_LOGIC;
  signal \^processq_reg[7]_3\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^processq_reg[9]_0\ : STD_LOGIC;
  signal \^processq_reg[9]_2\ : STD_LOGIC;
  signal \^processq_reg[9]_4\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal switch_0_sn_1 : STD_LOGIC;
  signal switch_1_sn_1 : STD_LOGIC;
  signal \uut3/is_trigger_volt524_in\ : STD_LOGIC;
  signal \uut3/is_trigger_volt6\ : STD_LOGIC;
  signal \NLW_dc_bias_reg[3]_i_101_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_dc_bias_reg[3]_i_104_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_dc_bias_reg[3]_i_104_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_dc_bias_reg[3]_i_105_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_dc_bias_reg[3]_i_115_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_dc_bias_reg[3]_i_15_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_dc_bias_reg[3]_i_180_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_dc_bias_reg[3]_i_31_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_dc_bias_reg[3]_i_31_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_dc_bias_reg[3]_i_59_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_dc_bias_reg[3]_i_59_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_dc_bias_reg[3]_i_60_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_dc_bias_reg[3]_i_60_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_dc_bias_reg[3]_i_62_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_dc_bias_reg[3]_i_65_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_dc_bias_reg[3]_i_65_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_dc_bias_reg[3]_i_66_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_dc_bias_reg[3]_i_9_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_dc_bias_reg[3]_i_99_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \dc_bias[3]_i_124\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_125\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_128\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_130\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_16\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_18\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_29\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_3__0\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_4\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_44\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_5\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_67\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_71\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_74\ : label is "soft_lutpair72";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of \dc_bias_reg[3]_i_101\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \dc_bias_reg[3]_i_104\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \dc_bias_reg[3]_i_105\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \dc_bias_reg[3]_i_115\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \dc_bias_reg[3]_i_180\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \dc_bias_reg[3]_i_31\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \dc_bias_reg[3]_i_59\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \dc_bias_reg[3]_i_60\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \dc_bias_reg[3]_i_62\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \dc_bias_reg[3]_i_65\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \dc_bias_reg[3]_i_66\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \dc_bias_reg[3]_i_99\ : label is 11;
  attribute SOFT_HLUTNM of \is_horizontal_gridline0_carry__0_i_9\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \processQ[0]_i_1__1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \processQ[1]_i_1__1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \processQ[2]_i_1__1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \processQ[3]_i_1__1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \processQ[4]_i_1__0\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \processQ[7]_i_1__0\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \processQ[8]_i_1__0\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \processQ[9]_i_5__0\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \processQ[9]_i_7\ : label is "soft_lutpair76";
begin
  Q(9 downto 0) <= \^q\(9 downto 0);
  is_horizontal_gridline1(4 downto 0) <= \^is_horizontal_gridline1\(4 downto 0);
  \processQ_reg[1]_0\ <= \^processq_reg[1]_0\;
  \processQ_reg[1]_1\ <= \^processq_reg[1]_1\;
  \processQ_reg[7]_3\(3 downto 0) <= \^processq_reg[7]_3\(3 downto 0);
  \processQ_reg[9]_0\ <= \^processq_reg[9]_0\;
  \processQ_reg[9]_2\ <= \^processq_reg[9]_2\;
  \processQ_reg[9]_4\(0) <= \^processq_reg[9]_4\(0);
  switch_0_sp_1 <= switch_0_sn_1;
  switch_1_sp_1 <= switch_1_sn_1;
\dc_bias[3]_i_100\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8488424421221811"
    )
        port map (
      I0 => \^q\(8),
      I1 => triggerVoltOut(7),
      I2 => triggerVoltOut(0),
      I3 => \is_trigger_volt6_inferred__2/i__carry_0\,
      I4 => triggerVoltOut(6),
      I5 => \^q\(9),
      O => \dc_bias[3]_i_100_n_0\
    );
\dc_bias[3]_i_102\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^q\(9),
      I1 => triggerVoltOut(7),
      I2 => triggerVoltOut(6),
      I3 => \^q\(8),
      O => \dc_bias[3]_i_102_n_0\
    );
\dc_bias[3]_i_103\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => triggerVoltOut(6),
      I1 => \^q\(8),
      I2 => triggerVoltOut(7),
      I3 => \^q\(9),
      O => \dc_bias[3]_i_103_n_0\
    );
\dc_bias[3]_i_106\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15403D54"
    )
        port map (
      I0 => \^q\(7),
      I1 => \dc_bias_reg[3]_i_62_0\,
      I2 => triggerVoltOut(4),
      I3 => triggerVoltOut(5),
      I4 => \^q\(6),
      O => \dc_bias[3]_i_106_n_0\
    );
\dc_bias[3]_i_107\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"155540003FD55540"
    )
        port map (
      I0 => \^q\(5),
      I1 => triggerVoltOut(1),
      I2 => triggerVoltOut(0),
      I3 => triggerVoltOut(2),
      I4 => triggerVoltOut(3),
      I5 => \^q\(4),
      O => \dc_bias[3]_i_107_n_0\
    );
\dc_bias[3]_i_108\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"114D"
    )
        port map (
      I0 => \^q\(3),
      I1 => triggerVoltOut(1),
      I2 => \^q\(2),
      I3 => triggerVoltOut(0),
      O => \dc_bias[3]_i_108_n_0\
    );
\dc_bias[3]_i_109\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => \dc_bias[3]_i_109_n_0\
    );
\dc_bias[3]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^processq_reg[9]_2\,
      I1 => switch_0_sn_1,
      O => \^processq_reg[9]_0\
    );
\dc_bias[3]_i_110\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"09906009"
    )
        port map (
      I0 => triggerVoltOut(5),
      I1 => \^q\(7),
      I2 => triggerVoltOut(4),
      I3 => \dc_bias_reg[3]_i_62_0\,
      I4 => \^q\(6),
      O => \dc_bias[3]_i_110_n_0\
    );
\dc_bias[3]_i_111\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0990909060090909"
    )
        port map (
      I0 => triggerVoltOut(3),
      I1 => \^q\(5),
      I2 => triggerVoltOut(2),
      I3 => triggerVoltOut(1),
      I4 => triggerVoltOut(0),
      I5 => \^q\(4),
      O => \dc_bias[3]_i_111_n_0\
    );
\dc_bias[3]_i_112\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2442"
    )
        port map (
      I0 => \^q\(2),
      I1 => triggerVoltOut(0),
      I2 => triggerVoltOut(1),
      I3 => \^q\(3),
      O => \dc_bias[3]_i_112_n_0\
    );
\dc_bias[3]_i_113\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \dc_bias[3]_i_113_n_0\
    );
\dc_bias[3]_i_116\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^q\(9),
      I1 => triggerVoltOut(7),
      I2 => triggerVoltOut(6),
      I3 => \^q\(8),
      O => \dc_bias[3]_i_116_n_0\
    );
\dc_bias[3]_i_117\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => triggerVoltOut(6),
      I1 => \^q\(8),
      I2 => triggerVoltOut(7),
      I3 => \^q\(9),
      O => \dc_bias[3]_i_117_n_0\
    );
\dc_bias[3]_i_118\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8AE308A2"
    )
        port map (
      I0 => \^q\(7),
      I1 => \dc_bias_reg[3]_i_66_0\,
      I2 => triggerVoltOut(4),
      I3 => triggerVoltOut(5),
      I4 => \^q\(6),
      O => \dc_bias[3]_i_118_n_0\
    );
\dc_bias[3]_i_119\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B288"
    )
        port map (
      I0 => \^q\(3),
      I1 => triggerVoltOut(1),
      I2 => \^q\(2),
      I3 => triggerVoltOut(0),
      O => \dc_bias[3]_i_119_n_0\
    );
\dc_bias[3]_i_11__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0007FFF8"
    )
        port map (
      I0 => \dc_bias[3]_i_67_n_0\,
      I1 => \^q\(6),
      I2 => \^q\(7),
      I3 => \^q\(8),
      I4 => \^q\(9),
      O => \dc_bias[3]_i_11__0_n_0\
    );
\dc_bias[3]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000E0000"
    )
        port map (
      I0 => \dc_bias[3]_i_27_n_0\,
      I1 => \dc_bias[3]_i_6\,
      I2 => \^q\(9),
      I3 => \^q\(8),
      I4 => \^q\(4),
      I5 => \dc_bias[3]_i_29_n_0\,
      O => \^processq_reg[9]_2\
    );
\dc_bias[3]_i_120\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8488424421221811"
    )
        port map (
      I0 => \^q\(8),
      I1 => triggerVoltOut(7),
      I2 => triggerVoltOut(0),
      I3 => \is_trigger_volt6_inferred__2/i__carry_0\,
      I4 => triggerVoltOut(6),
      I5 => \^q\(9),
      O => \dc_bias[3]_i_120_n_0\
    );
\dc_bias[3]_i_121\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06909009"
    )
        port map (
      I0 => triggerVoltOut(5),
      I1 => \^q\(7),
      I2 => triggerVoltOut(4),
      I3 => \dc_bias_reg[3]_i_66_0\,
      I4 => \^q\(6),
      O => \dc_bias[3]_i_121_n_0\
    );
\dc_bias[3]_i_122\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8484844221212118"
    )
        port map (
      I0 => \^q\(4),
      I1 => triggerVoltOut(3),
      I2 => triggerVoltOut(2),
      I3 => triggerVoltOut(0),
      I4 => triggerVoltOut(1),
      I5 => \^q\(5),
      O => \dc_bias[3]_i_122_n_0\
    );
\dc_bias[3]_i_123\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4224"
    )
        port map (
      I0 => \^q\(2),
      I1 => triggerVoltOut(0),
      I2 => triggerVoltOut(1),
      I3 => \^q\(3),
      O => \dc_bias[3]_i_123_n_0\
    );
\dc_bias[3]_i_124\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56AA"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \^q\(4),
      O => \dc_bias[3]_i_124_n_0\
    );
\dc_bias[3]_i_125\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1E"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \^q\(4),
      O => \dc_bias[3]_i_125_n_0\
    );
\dc_bias[3]_i_126\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"659A9A1818E7E7A6"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(7),
      I2 => \^q\(9),
      I3 => \^q\(5),
      I4 => \is_horizontal_gridline0_carry__0_i_9_n_0\,
      I5 => \^q\(6),
      O => \dc_bias[3]_i_126_n_0\
    );
\dc_bias[3]_i_127\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"42AAABD55542AAAA"
    )
        port map (
      I0 => \^q\(9),
      I1 => \is_horizontal_gridline0_carry__0_i_9_n_0\,
      I2 => \^q\(5),
      I3 => \^q\(6),
      I4 => \^q\(7),
      I5 => \^q\(8),
      O => \dc_bias[3]_i_127_n_0\
    );
\dc_bias[3]_i_128\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      O => \dc_bias[3]_i_128_n_0\
    );
\dc_bias[3]_i_129\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD5554000002AAAB"
    )
        port map (
      I0 => \^q\(9),
      I1 => \is_horizontal_gridline0_carry__0_i_9_n_0\,
      I2 => \^q\(5),
      I3 => \^q\(6),
      I4 => \^q\(7),
      I5 => \^q\(8),
      O => \dc_bias[3]_i_129_n_0\
    );
\dc_bias[3]_i_12__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0401028002800140"
    )
        port map (
      I0 => \dc_bias_reg[3]_i_9_1\(2),
      I1 => \dc_bias_reg[3]_i_9_1\(3),
      I2 => \^q\(8),
      I3 => \^q\(7),
      I4 => \^q\(6),
      I5 => \dc_bias[3]_i_67_n_0\,
      O => \dc_bias[3]_i_12__0_n_0\
    );
\dc_bias[3]_i_130\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5555666A"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(4),
      I2 => \^q\(3),
      I3 => \^q\(2),
      I4 => \^q\(5),
      O => \dc_bias[3]_i_130_n_0\
    );
\dc_bias[3]_i_131\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A95556AAA957FC01"
    )
        port map (
      I0 => \^q\(9),
      I1 => \is_horizontal_gridline0_carry__0_i_9_n_0\,
      I2 => \^q\(5),
      I3 => \^q\(6),
      I4 => \^q\(7),
      I5 => \^q\(8),
      O => \dc_bias[3]_i_131_n_0\
    );
\dc_bias[3]_i_13__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4020100880402010"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      I2 => \dc_bias_reg[3]_i_9_0\,
      I3 => \dc_bias_reg[3]_i_9_1\(0),
      I4 => \dc_bias_reg[3]_i_9_1\(1),
      I5 => \^q\(2),
      O => \dc_bias[3]_i_13__0_n_0\
    );
\dc_bias[3]_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8000000"
    )
        port map (
      I0 => \dc_bias[3]_i_21__0_n_0\,
      I1 => \^q\(5),
      I2 => \^q\(6),
      I3 => \^q\(7),
      I4 => \^q\(8),
      O => \processQ_reg[5]_2\
    );
\dc_bias[3]_i_165\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8AE308A2"
    )
        port map (
      I0 => \^q\(7),
      I1 => \dc_bias_reg[3]_i_66_0\,
      I2 => triggerVoltOut(4),
      I3 => triggerVoltOut(5),
      I4 => \^q\(6),
      O => \dc_bias[3]_i_165_n_0\
    );
\dc_bias[3]_i_166\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B288"
    )
        port map (
      I0 => \^q\(3),
      I1 => triggerVoltOut(1),
      I2 => \^q\(2),
      I3 => triggerVoltOut(0),
      O => \dc_bias[3]_i_166_n_0\
    );
\dc_bias[3]_i_167\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => \dc_bias[3]_i_167_n_0\
    );
\dc_bias[3]_i_168\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06909009"
    )
        port map (
      I0 => triggerVoltOut(5),
      I1 => \^q\(7),
      I2 => triggerVoltOut(4),
      I3 => \dc_bias_reg[3]_i_66_0\,
      I4 => \^q\(6),
      O => \dc_bias[3]_i_168_n_0\
    );
\dc_bias[3]_i_169\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8484844221212118"
    )
        port map (
      I0 => \^q\(4),
      I1 => triggerVoltOut(3),
      I2 => triggerVoltOut(2),
      I3 => triggerVoltOut(0),
      I4 => triggerVoltOut(1),
      I5 => \^q\(5),
      O => \dc_bias[3]_i_169_n_0\
    );
\dc_bias[3]_i_170\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4224"
    )
        port map (
      I0 => \^q\(2),
      I1 => triggerVoltOut(0),
      I2 => triggerVoltOut(1),
      I3 => \^q\(3),
      O => \dc_bias[3]_i_170_n_0\
    );
\dc_bias[3]_i_171\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => \dc_bias[3]_i_171_n_0\
    );
\dc_bias[3]_i_172\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^q\(7),
      I1 => triggerVoltOut(5),
      I2 => triggerVoltOut(4),
      I3 => \^q\(6),
      O => \dc_bias[3]_i_172_n_0\
    );
\dc_bias[3]_i_173\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^q\(5),
      I1 => triggerVoltOut(3),
      I2 => triggerVoltOut(2),
      I3 => \^q\(4),
      O => \dc_bias[3]_i_173_n_0\
    );
\dc_bias[3]_i_174\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^q\(3),
      I1 => triggerVoltOut(1),
      I2 => triggerVoltOut(0),
      I3 => \^q\(2),
      O => \dc_bias[3]_i_174_n_0\
    );
\dc_bias[3]_i_175\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(1),
      O => \dc_bias[3]_i_175_n_0\
    );
\dc_bias[3]_i_176\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => triggerVoltOut(5),
      I1 => \^q\(7),
      I2 => triggerVoltOut(4),
      I3 => \^q\(6),
      O => \dc_bias[3]_i_176_n_0\
    );
\dc_bias[3]_i_177\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => triggerVoltOut(3),
      I1 => \^q\(5),
      I2 => triggerVoltOut(2),
      I3 => \^q\(4),
      O => \dc_bias[3]_i_177_n_0\
    );
\dc_bias[3]_i_178\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => triggerVoltOut(0),
      I1 => \^q\(2),
      I2 => triggerVoltOut(1),
      I3 => \^q\(3),
      O => \dc_bias[3]_i_178_n_0\
    );
\dc_bias[3]_i_179\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => \dc_bias[3]_i_179_n_0\
    );
\dc_bias[3]_i_17__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00F1"
    )
        port map (
      I0 => \dc_bias[3]_i_8__0\(1),
      I1 => \dc_bias[3]_i_8__0\(2),
      I2 => \dc_bias[3]_i_8__0\(0),
      I3 => \dc_bias[3]_i_8__0_0\,
      O => \dc_bias[3]_i_38\
    );
\dc_bias[3]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(6),
      I2 => \^q\(5),
      I3 => \is_horizontal_gridline0_carry__0_i_9_n_0\,
      I4 => \^q\(8),
      O => \processQ_reg[7]_2\
    );
\dc_bias[3]_i_181\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8488424421221811"
    )
        port map (
      I0 => \^q\(8),
      I1 => triggerVoltOut(7),
      I2 => triggerVoltOut(0),
      I3 => \is_trigger_volt6_inferred__2/i__carry_0\,
      I4 => triggerVoltOut(6),
      I5 => \^q\(9),
      O => \dc_bias[3]_i_181_n_0\
    );
\dc_bias[3]_i_182\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15403D54"
    )
        port map (
      I0 => \^q\(9),
      I1 => \dc_bias_reg[3]_i_31_0\,
      I2 => triggerVoltOut(6),
      I3 => triggerVoltOut(7),
      I4 => \^q\(8),
      O => \dc_bias[3]_i_182_n_0\
    );
\dc_bias[3]_i_183\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15403D54"
    )
        port map (
      I0 => \^q\(7),
      I1 => \dc_bias_reg[3]_i_62_0\,
      I2 => triggerVoltOut(4),
      I3 => triggerVoltOut(5),
      I4 => \^q\(6),
      O => \dc_bias[3]_i_183_n_0\
    );
\dc_bias[3]_i_184\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"114D"
    )
        port map (
      I0 => \^q\(3),
      I1 => triggerVoltOut(1),
      I2 => \^q\(2),
      I3 => triggerVoltOut(0),
      O => \dc_bias[3]_i_184_n_0\
    );
\dc_bias[3]_i_185\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"09906009"
    )
        port map (
      I0 => triggerVoltOut(7),
      I1 => \^q\(9),
      I2 => triggerVoltOut(6),
      I3 => \dc_bias_reg[3]_i_31_0\,
      I4 => \^q\(8),
      O => \dc_bias[3]_i_185_n_0\
    );
\dc_bias[3]_i_186\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"09906009"
    )
        port map (
      I0 => triggerVoltOut(5),
      I1 => \^q\(7),
      I2 => triggerVoltOut(4),
      I3 => \dc_bias_reg[3]_i_62_0\,
      I4 => \^q\(6),
      O => \dc_bias[3]_i_186_n_0\
    );
\dc_bias[3]_i_187\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0990909060090909"
    )
        port map (
      I0 => triggerVoltOut(3),
      I1 => \^q\(5),
      I2 => triggerVoltOut(2),
      I3 => triggerVoltOut(1),
      I4 => triggerVoltOut(0),
      I5 => \^q\(4),
      O => \dc_bias[3]_i_187_n_0\
    );
\dc_bias[3]_i_188\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2442"
    )
        port map (
      I0 => \^q\(2),
      I1 => triggerVoltOut(0),
      I2 => triggerVoltOut(1),
      I3 => \^q\(3),
      O => \dc_bias[3]_i_188_n_0\
    );
\dc_bias[3]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100004040000001"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \dc_bias[3]_i_42_n_0\,
      I3 => \^q\(2),
      I4 => \dc_bias[3]_i_43_n_0\,
      I5 => \dc_bias[3]_i_44_n_0\,
      O => \processQ_reg[0]_1\
    );
\dc_bias[3]_i_190\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^q\(7),
      I1 => triggerVoltOut(5),
      I2 => triggerVoltOut(4),
      I3 => \^q\(6),
      O => \dc_bias[3]_i_190_n_0\
    );
\dc_bias[3]_i_191\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^q\(5),
      I1 => triggerVoltOut(3),
      I2 => triggerVoltOut(2),
      I3 => \^q\(4),
      O => \dc_bias[3]_i_191_n_0\
    );
\dc_bias[3]_i_192\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^q\(3),
      I1 => triggerVoltOut(1),
      I2 => triggerVoltOut(0),
      I3 => \^q\(2),
      O => \dc_bias[3]_i_192_n_0\
    );
\dc_bias[3]_i_193\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => \dc_bias[3]_i_193_n_0\
    );
\dc_bias[3]_i_194\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => triggerVoltOut(5),
      I1 => \^q\(7),
      I2 => triggerVoltOut(4),
      I3 => \^q\(6),
      O => \dc_bias[3]_i_194_n_0\
    );
\dc_bias[3]_i_195\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => triggerVoltOut(3),
      I1 => \^q\(5),
      I2 => triggerVoltOut(2),
      I3 => \^q\(4),
      O => \dc_bias[3]_i_195_n_0\
    );
\dc_bias[3]_i_196\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => triggerVoltOut(0),
      I1 => \^q\(2),
      I2 => triggerVoltOut(1),
      I3 => \^q\(3),
      O => \dc_bias[3]_i_196_n_0\
    );
\dc_bias[3]_i_197\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \dc_bias[3]_i_197_n_0\
    );
\dc_bias[3]_i_21__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFE0"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => \^q\(4),
      I5 => \^q\(6),
      O => \dc_bias[3]_i_21__0_n_0\
    );
\dc_bias[3]_i_220\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8AE308A2"
    )
        port map (
      I0 => \^q\(7),
      I1 => \dc_bias_reg[3]_i_66_0\,
      I2 => triggerVoltOut(4),
      I3 => triggerVoltOut(5),
      I4 => \^q\(6),
      O => \dc_bias[3]_i_220_n_0\
    );
\dc_bias[3]_i_221\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B288"
    )
        port map (
      I0 => \^q\(3),
      I1 => triggerVoltOut(1),
      I2 => \^q\(2),
      I3 => triggerVoltOut(0),
      O => \dc_bias[3]_i_221_n_0\
    );
\dc_bias[3]_i_222\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06909009"
    )
        port map (
      I0 => triggerVoltOut(5),
      I1 => \^q\(7),
      I2 => triggerVoltOut(4),
      I3 => \dc_bias_reg[3]_i_66_0\,
      I4 => \^q\(6),
      O => \dc_bias[3]_i_222_n_0\
    );
\dc_bias[3]_i_223\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8484844221212118"
    )
        port map (
      I0 => \^q\(4),
      I1 => triggerVoltOut(3),
      I2 => triggerVoltOut(2),
      I3 => triggerVoltOut(0),
      I4 => triggerVoltOut(1),
      I5 => \^q\(5),
      O => \dc_bias[3]_i_223_n_0\
    );
\dc_bias[3]_i_224\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4224"
    )
        port map (
      I0 => \^q\(2),
      I1 => triggerVoltOut(0),
      I2 => triggerVoltOut(1),
      I3 => \^q\(3),
      O => \dc_bias[3]_i_224_n_0\
    );
\dc_bias[3]_i_225\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \dc_bias[3]_i_225_n_0\
    );
\dc_bias[3]_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      I2 => \dc_bias[3]_i_12_0\(0),
      I3 => \dc_bias[3]_i_12_1\(0),
      I4 => \^q\(1),
      I5 => \^q\(0),
      O => \dc_bias[3]_i_27_n_0\
    );
\dc_bias[3]_i_29\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(6),
      I2 => \^q\(5),
      O => \dc_bias[3]_i_29_n_0\
    );
\dc_bias[3]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000AAAB"
    )
        port map (
      I0 => \^processq_reg[9]_0\,
      I1 => \encoded_reg[9]\,
      I2 => \encoded_reg[9]_0\,
      I3 => switch_1_sn_1,
      I4 => \encoded_reg[9]_1\,
      I5 => \dc_bias[3]_i_4_n_0\,
      O => \processQ_reg[0]_0\
    );
\dc_bias[3]_i_34\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0007FFF8"
    )
        port map (
      I0 => \dc_bias[3]_i_67_n_0\,
      I1 => \^q\(6),
      I2 => \^q\(7),
      I3 => \^q\(8),
      I4 => \^q\(9),
      O => \dc_bias[3]_i_34_n_0\
    );
\dc_bias[3]_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0401028002800140"
    )
        port map (
      I0 => DOADO(2),
      I1 => DOADO(3),
      I2 => \^q\(8),
      I3 => \^q\(7),
      I4 => \^q\(6),
      I5 => \dc_bias[3]_i_67_n_0\,
      O => \dc_bias[3]_i_35_n_0\
    );
\dc_bias[3]_i_36\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4020100880402010"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      I2 => \dc_bias_reg[3]_i_15_0\,
      I3 => DOADO(0),
      I4 => DOADO(1),
      I5 => \^q\(2),
      O => \dc_bias[3]_i_36_n_0\
    );
\dc_bias[3]_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => switch(0),
      I1 => ch1,
      I2 => \dc_bias[3]_i_2\,
      O => switch_0_sn_1
    );
\dc_bias[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => switch(0),
      I1 => ch1,
      I2 => \dc_bias[3]_i_2\,
      O => \dc_bias[3]_i_4_n_0\
    );
\dc_bias[3]_i_42\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEB7EA366CA24822"
    )
        port map (
      I0 => \dc_bias[3]_i_71_n_0\,
      I1 => \^q\(3),
      I2 => \^q\(2),
      I3 => \dc_bias[3]_i_72_n_0\,
      I4 => \^q\(1),
      I5 => \dc_bias[3]_i_73_n_0\,
      O => \dc_bias[3]_i_42_n_0\
    );
\dc_bias[3]_i_43\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80555640D57777E9"
    )
        port map (
      I0 => \dc_bias[3]_i_74_n_0\,
      I1 => \^q\(3),
      I2 => \^q\(2),
      I3 => \dc_bias[3]_i_75_n_0\,
      I4 => \^q\(4),
      I5 => \dc_bias[3]_i_72_n_0\,
      O => \dc_bias[3]_i_43_n_0\
    );
\dc_bias[3]_i_44\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(3),
      I1 => \dc_bias[3]_i_72_n_0\,
      O => \dc_bias[3]_i_44_n_0\
    );
\dc_bias[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(7),
      I2 => \^q\(6),
      I3 => \^q\(5),
      O => \processQ_reg[8]_1\
    );
\dc_bias[3]_i_58\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDDDDDDDFFFDDDD"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      I2 => \dc_bias[3]_i_28\(0),
      I3 => \dc_bias[3]_i_28_0\(0),
      I4 => \^q\(0),
      I5 => \^q\(1),
      O => \processQ_reg[2]_1\
    );
\dc_bias[3]_i_61\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000077770FFF0000"
    )
        port map (
      I0 => CO(0),
      I1 => \uut3/is_trigger_volt524_in\,
      I2 => \uut3/is_trigger_volt6\,
      I3 => \dc_bias[3]_i_30\(0),
      I4 => \dc_bias[3]_i_30_0\(0),
      I5 => \dc_bias[3]_i_30_0\(1),
      O => \processQ_reg[0]_2\
    );
\dc_bias[3]_i_63\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15403D54"
    )
        port map (
      I0 => \^q\(9),
      I1 => \dc_bias_reg[3]_i_31_0\,
      I2 => triggerVoltOut(6),
      I3 => triggerVoltOut(7),
      I4 => \^q\(8),
      O => \dc_bias[3]_i_63_n_0\
    );
\dc_bias[3]_i_64\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"09906009"
    )
        port map (
      I0 => triggerVoltOut(7),
      I1 => \^q\(9),
      I2 => triggerVoltOut(6),
      I3 => \dc_bias_reg[3]_i_31_0\,
      I4 => \^q\(8),
      O => \dc_bias[3]_i_64_n_0\
    );
\dc_bias[3]_i_67\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAAA"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \^q\(4),
      O => \dc_bias[3]_i_67_n_0\
    );
\dc_bias[3]_i_71\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9666"
    )
        port map (
      I0 => \^q\(4),
      I1 => \dc_bias[3]_i_75_n_0\,
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \dc_bias[3]_i_71_n_0\
    );
\dc_bias[3]_i_72\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1A079FE718061FA7"
    )
        port map (
      I0 => \dc_bias[3]_i_124_n_0\,
      I1 => \dc_bias[3]_i_125_n_0\,
      I2 => \dc_bias[3]_i_126_n_0\,
      I3 => \dc_bias[3]_i_127_n_0\,
      I4 => \dc_bias[3]_i_75_n_0\,
      I5 => \dc_bias[3]_i_128_n_0\,
      O => \dc_bias[3]_i_72_n_0\
    );
\dc_bias[3]_i_73\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9666666666666999"
    )
        port map (
      I0 => \dc_bias[3]_i_127_n_0\,
      I1 => \^q\(5),
      I2 => \^q\(3),
      I3 => \^q\(2),
      I4 => \dc_bias[3]_i_75_n_0\,
      I5 => \^q\(4),
      O => \dc_bias[3]_i_73_n_0\
    );
\dc_bias[3]_i_74\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"66666669"
    )
        port map (
      I0 => \dc_bias[3]_i_127_n_0\,
      I1 => \^q\(5),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \dc_bias[3]_i_74_n_0\
    );
\dc_bias[3]_i_75\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"030043DCC43DFF3F"
    )
        port map (
      I0 => \dc_bias[3]_i_125_n_0\,
      I1 => \dc_bias[3]_i_129_n_0\,
      I2 => \dc_bias[3]_i_124_n_0\,
      I3 => \dc_bias[3]_i_130_n_0\,
      I4 => \dc_bias[3]_i_127_n_0\,
      I5 => \dc_bias[3]_i_131_n_0\,
      O => \dc_bias[3]_i_75_n_0\
    );
\dc_bias[3]_i_7__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ch2,
      I1 => switch(1),
      O => switch_1_sn_1
    );
\dc_bias_reg[3]_i_101\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \dc_bias_reg[3]_i_101_n_0\,
      CO(2) => \dc_bias_reg[3]_i_101_n_1\,
      CO(1) => \dc_bias_reg[3]_i_101_n_2\,
      CO(0) => \dc_bias_reg[3]_i_101_n_3\,
      CYINIT => '1',
      DI(3) => \dc_bias[3]_i_172_n_0\,
      DI(2) => \dc_bias[3]_i_173_n_0\,
      DI(1) => \dc_bias[3]_i_174_n_0\,
      DI(0) => \dc_bias[3]_i_175_n_0\,
      O(3 downto 0) => \NLW_dc_bias_reg[3]_i_101_O_UNCONNECTED\(3 downto 0),
      S(3) => \dc_bias[3]_i_176_n_0\,
      S(2) => \dc_bias[3]_i_177_n_0\,
      S(1) => \dc_bias[3]_i_178_n_0\,
      S(0) => \dc_bias[3]_i_179_n_0\
    );
\dc_bias_reg[3]_i_104\: unisim.vcomponents.CARRY4
     port map (
      CI => \dc_bias_reg[3]_i_180_n_0\,
      CO(3 downto 1) => \NLW_dc_bias_reg[3]_i_104_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \uut3/is_trigger_volt524_in\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \^processq_reg[9]_4\(0),
      O(3 downto 0) => \NLW_dc_bias_reg[3]_i_104_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \dc_bias[3]_i_181_n_0\
    );
\dc_bias_reg[3]_i_105\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \uut3/is_trigger_volt6\,
      CO(2) => \dc_bias_reg[3]_i_105_n_1\,
      CO(1) => \dc_bias_reg[3]_i_105_n_2\,
      CO(0) => \dc_bias_reg[3]_i_105_n_3\,
      CYINIT => \^processq_reg[1]_0\,
      DI(3) => \dc_bias[3]_i_182_n_0\,
      DI(2) => \dc_bias[3]_i_183_n_0\,
      DI(1) => \dc_bias[3]_i_107_n_0\,
      DI(0) => \dc_bias[3]_i_184_n_0\,
      O(3 downto 0) => \NLW_dc_bias_reg[3]_i_105_O_UNCONNECTED\(3 downto 0),
      S(3) => \dc_bias[3]_i_185_n_0\,
      S(2) => \dc_bias[3]_i_186_n_0\,
      S(1) => \dc_bias[3]_i_187_n_0\,
      S(0) => \dc_bias[3]_i_188_n_0\
    );
\dc_bias_reg[3]_i_115\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \dc_bias_reg[3]_i_115_n_0\,
      CO(2) => \dc_bias_reg[3]_i_115_n_1\,
      CO(1) => \dc_bias_reg[3]_i_115_n_2\,
      CO(0) => \dc_bias_reg[3]_i_115_n_3\,
      CYINIT => '1',
      DI(3) => \dc_bias[3]_i_190_n_0\,
      DI(2) => \dc_bias[3]_i_191_n_0\,
      DI(1) => \dc_bias[3]_i_192_n_0\,
      DI(0) => \dc_bias[3]_i_193_n_0\,
      O(3 downto 0) => \NLW_dc_bias_reg[3]_i_115_O_UNCONNECTED\(3 downto 0),
      S(3) => \dc_bias[3]_i_194_n_0\,
      S(2) => \dc_bias[3]_i_195_n_0\,
      S(1) => \dc_bias[3]_i_196_n_0\,
      S(0) => \dc_bias[3]_i_197_n_0\
    );
\dc_bias_reg[3]_i_15\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => ch2,
      CO(2) => \dc_bias_reg[3]_i_15_n_1\,
      CO(1) => \dc_bias_reg[3]_i_15_n_2\,
      CO(0) => \dc_bias_reg[3]_i_15_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_dc_bias_reg[3]_i_15_O_UNCONNECTED\(3 downto 0),
      S(3) => \dc_bias[3]_i_34_n_0\,
      S(2) => \dc_bias[3]_i_35_n_0\,
      S(1) => \dc_bias[3]_i_36_n_0\,
      S(0) => \dc_bias[3]_i_7__0_0\(0)
    );
\dc_bias_reg[3]_i_180\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \dc_bias_reg[3]_i_180_n_0\,
      CO(2) => \dc_bias_reg[3]_i_180_n_1\,
      CO(1) => \dc_bias_reg[3]_i_180_n_2\,
      CO(0) => \dc_bias_reg[3]_i_180_n_3\,
      CYINIT => '1',
      DI(3) => \dc_bias[3]_i_220_n_0\,
      DI(2) => \^processq_reg[7]_3\(2),
      DI(1) => \dc_bias[3]_i_221_n_0\,
      DI(0) => \^q\(1),
      O(3 downto 0) => \NLW_dc_bias_reg[3]_i_180_O_UNCONNECTED\(3 downto 0),
      S(3) => \dc_bias[3]_i_222_n_0\,
      S(2) => \dc_bias[3]_i_223_n_0\,
      S(1) => \dc_bias[3]_i_224_n_0\,
      S(0) => \dc_bias[3]_i_225_n_0\
    );
\dc_bias_reg[3]_i_31\: unisim.vcomponents.CARRY4
     port map (
      CI => \dc_bias_reg[3]_i_62_n_0\,
      CO(3 downto 1) => \NLW_dc_bias_reg[3]_i_31_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \processQ_reg[9]_9\(0),
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \dc_bias[3]_i_63_n_0\,
      O(3 downto 0) => \NLW_dc_bias_reg[3]_i_31_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \dc_bias[3]_i_64_n_0\
    );
\dc_bias_reg[3]_i_59\: unisim.vcomponents.CARRY4
     port map (
      CI => \dc_bias_reg[3]_i_99_n_0\,
      CO(3 downto 1) => \NLW_dc_bias_reg[3]_i_59_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \processQ_reg[9]_7\(0),
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \^processq_reg[9]_4\(0),
      O(3 downto 0) => \NLW_dc_bias_reg[3]_i_59_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \dc_bias[3]_i_100_n_0\
    );
\dc_bias_reg[3]_i_60\: unisim.vcomponents.CARRY4
     port map (
      CI => \dc_bias_reg[3]_i_101_n_0\,
      CO(3 downto 1) => \NLW_dc_bias_reg[3]_i_60_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \processQ_reg[9]_6\(0),
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \dc_bias[3]_i_102_n_0\,
      O(3 downto 0) => \NLW_dc_bias_reg[3]_i_60_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \dc_bias[3]_i_103_n_0\
    );
\dc_bias_reg[3]_i_62\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \dc_bias_reg[3]_i_62_n_0\,
      CO(2) => \dc_bias_reg[3]_i_62_n_1\,
      CO(1) => \dc_bias_reg[3]_i_62_n_2\,
      CO(0) => \dc_bias_reg[3]_i_62_n_3\,
      CYINIT => '1',
      DI(3) => \dc_bias[3]_i_106_n_0\,
      DI(2) => \dc_bias[3]_i_107_n_0\,
      DI(1) => \dc_bias[3]_i_108_n_0\,
      DI(0) => \dc_bias[3]_i_109_n_0\,
      O(3 downto 0) => \NLW_dc_bias_reg[3]_i_62_O_UNCONNECTED\(3 downto 0),
      S(3) => \dc_bias[3]_i_110_n_0\,
      S(2) => \dc_bias[3]_i_111_n_0\,
      S(1) => \dc_bias[3]_i_112_n_0\,
      S(0) => \dc_bias[3]_i_113_n_0\
    );
\dc_bias_reg[3]_i_65\: unisim.vcomponents.CARRY4
     port map (
      CI => \dc_bias_reg[3]_i_115_n_0\,
      CO(3 downto 1) => \NLW_dc_bias_reg[3]_i_65_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \processQ_reg[9]_8\(0),
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \dc_bias[3]_i_116_n_0\,
      O(3 downto 0) => \NLW_dc_bias_reg[3]_i_65_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \dc_bias[3]_i_117_n_0\
    );
\dc_bias_reg[3]_i_66\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \processQ_reg[1]_2\(0),
      CO(2) => \dc_bias_reg[3]_i_66_n_1\,
      CO(1) => \dc_bias_reg[3]_i_66_n_2\,
      CO(0) => \dc_bias_reg[3]_i_66_n_3\,
      CYINIT => \^processq_reg[1]_1\,
      DI(3) => \^processq_reg[9]_4\(0),
      DI(2) => \dc_bias[3]_i_118_n_0\,
      DI(1) => \^processq_reg[7]_3\(2),
      DI(0) => \dc_bias[3]_i_119_n_0\,
      O(3 downto 0) => \NLW_dc_bias_reg[3]_i_66_O_UNCONNECTED\(3 downto 0),
      S(3) => \dc_bias[3]_i_120_n_0\,
      S(2) => \dc_bias[3]_i_121_n_0\,
      S(1) => \dc_bias[3]_i_122_n_0\,
      S(0) => \dc_bias[3]_i_123_n_0\
    );
\dc_bias_reg[3]_i_9\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => ch1,
      CO(2) => \dc_bias_reg[3]_i_9_n_1\,
      CO(1) => \dc_bias_reg[3]_i_9_n_2\,
      CO(0) => \dc_bias_reg[3]_i_9_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_dc_bias_reg[3]_i_9_O_UNCONNECTED\(3 downto 0),
      S(3) => \dc_bias[3]_i_11__0_n_0\,
      S(2) => \dc_bias[3]_i_12__0_n_0\,
      S(1) => \dc_bias[3]_i_13__0_n_0\,
      S(0) => \dc_bias[3]_i_4_0\(0)
    );
\dc_bias_reg[3]_i_99\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \dc_bias_reg[3]_i_99_n_0\,
      CO(2) => \dc_bias_reg[3]_i_99_n_1\,
      CO(1) => \dc_bias_reg[3]_i_99_n_2\,
      CO(0) => \dc_bias_reg[3]_i_99_n_3\,
      CYINIT => '1',
      DI(3) => \dc_bias[3]_i_165_n_0\,
      DI(2) => \^processq_reg[7]_3\(2),
      DI(1) => \dc_bias[3]_i_166_n_0\,
      DI(0) => \dc_bias[3]_i_167_n_0\,
      O(3 downto 0) => \NLW_dc_bias_reg[3]_i_99_O_UNCONNECTED\(3 downto 0),
      S(3) => \dc_bias[3]_i_168_n_0\,
      S(2) => \dc_bias[3]_i_169_n_0\,
      S(1) => \dc_bias[3]_i_170_n_0\,
      S(0) => \dc_bias[3]_i_171_n_0\
    );
\encoded[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(6),
      I2 => \^q\(7),
      I3 => \^q\(8),
      I4 => \encoded[9]_i_4_n_0\,
      O => \processQ_reg[5]_1\
    );
\encoded[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDFFFFFFFFFF"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      I2 => \^q\(9),
      I3 => s00_axi_aresetn,
      I4 => \^q\(4),
      I5 => \^q\(3),
      O => \encoded[9]_i_4_n_0\
    );
\i___12_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(7),
      I1 => \is_hash_mark2_inferred__2/i___12_carry__0\(3),
      O => \processQ_reg[7]_0\(3)
    );
\i___12_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(6),
      I1 => \is_hash_mark2_inferred__2/i___12_carry__0\(2),
      O => \processQ_reg[7]_0\(2)
    );
\i___12_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(5),
      I1 => \is_hash_mark2_inferred__2/i___12_carry__0\(1),
      O => \processQ_reg[7]_0\(1)
    );
\i___12_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(4),
      I1 => \is_hash_mark2_inferred__2/i___12_carry__0\(0),
      O => \processQ_reg[7]_0\(0)
    );
\i___12_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(8),
      I1 => \is_hash_mark2_inferred__2/i___12_carry__1\(0),
      O => \processQ_reg[8]_0\(0)
    );
\i___12_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(8),
      O => \processQ_reg[3]_1\(3)
    );
\i___12_carry_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(2),
      O => \processQ_reg[3]_1\(2)
    );
\i___12_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(9),
      O => \processQ_reg[3]_1\(1)
    );
\i___12_carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(8),
      O => \processQ_reg[3]_1\(0)
    );
\i___2_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(9),
      O => \processQ_reg[8]_3\(1)
    );
\i___2_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(9),
      O => \processQ_reg[8]_3\(0)
    );
\i__carry__0_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22A2BBCB0020AA8A"
    )
        port map (
      I0 => \^q\(9),
      I1 => triggerVoltOut(6),
      I2 => \is_trigger_volt6_inferred__2/i__carry_0\,
      I3 => triggerVoltOut(0),
      I4 => triggerVoltOut(7),
      I5 => \^q\(8),
      O => \^processq_reg[9]_4\(0)
    );
\i__carry__0_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8488424421221811"
    )
        port map (
      I0 => \^q\(8),
      I1 => triggerVoltOut(7),
      I2 => triggerVoltOut(0),
      I3 => \is_trigger_volt6_inferred__2/i__carry_0\,
      I4 => triggerVoltOut(6),
      I5 => \^q\(9),
      O => \processQ_reg[8]_2\(0)
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => \^processq_reg[1]_1\
    );
\i__carry_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8AE308A2"
    )
        port map (
      I0 => \^q\(7),
      I1 => \dc_bias_reg[3]_i_66_0\,
      I2 => triggerVoltOut(4),
      I3 => triggerVoltOut(5),
      I4 => \^q\(6),
      O => \^processq_reg[7]_3\(3)
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8AE308A2"
    )
        port map (
      I0 => \^q\(9),
      I1 => \is_trigger_volt6_inferred__2/i__carry_0\,
      I2 => triggerVoltOut(6),
      I3 => triggerVoltOut(7),
      I4 => \^q\(8),
      O => \processQ_reg[9]_3\(3)
    );
\i__carry_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02AAABFC0002AAA8"
    )
        port map (
      I0 => \^q\(5),
      I1 => triggerVoltOut(1),
      I2 => triggerVoltOut(0),
      I3 => triggerVoltOut(2),
      I4 => triggerVoltOut(3),
      I5 => \^q\(4),
      O => \^processq_reg[7]_3\(2)
    );
\i__carry_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8AE308A2"
    )
        port map (
      I0 => \^q\(7),
      I1 => \is_trigger_volt6_inferred__2/i__carry\,
      I2 => triggerVoltOut(4),
      I3 => triggerVoltOut(5),
      I4 => \^q\(6),
      O => \processQ_reg[9]_3\(2)
    );
\i__carry_i_3__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B288"
    )
        port map (
      I0 => \^q\(3),
      I1 => triggerVoltOut(1),
      I2 => \^q\(2),
      I3 => triggerVoltOut(0),
      O => \^processq_reg[7]_3\(1)
    );
\i__carry_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \^processq_reg[7]_3\(0)
    );
\i__carry_i_4__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2ABC02A8"
    )
        port map (
      I0 => \^q\(5),
      I1 => triggerVoltOut(2),
      I2 => triggerVoltOut(1),
      I3 => triggerVoltOut(3),
      I4 => \^q\(4),
      O => \processQ_reg[9]_3\(1)
    );
\i__carry_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F440"
    )
        port map (
      I0 => triggerVoltOut(0),
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => triggerVoltOut(1),
      O => \processQ_reg[9]_3\(0)
    );
\i__carry_i_5__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06909009"
    )
        port map (
      I0 => triggerVoltOut(5),
      I1 => \^q\(7),
      I2 => triggerVoltOut(4),
      I3 => \dc_bias_reg[3]_i_66_0\,
      I4 => \^q\(6),
      O => \triggerVolt_reg[7]\(3)
    );
\i__carry_i_6__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06909009"
    )
        port map (
      I0 => triggerVoltOut(7),
      I1 => \^q\(9),
      I2 => triggerVoltOut(6),
      I3 => \is_trigger_volt6_inferred__2/i__carry_0\,
      I4 => \^q\(8),
      O => \triggerVolt_reg[9]_0\(3)
    );
\i__carry_i_6__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8484844221212118"
    )
        port map (
      I0 => \^q\(4),
      I1 => triggerVoltOut(3),
      I2 => triggerVoltOut(2),
      I3 => triggerVoltOut(0),
      I4 => triggerVoltOut(1),
      I5 => \^q\(5),
      O => \triggerVolt_reg[7]\(2)
    );
\i__carry_i_7__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06909009"
    )
        port map (
      I0 => triggerVoltOut(5),
      I1 => \^q\(7),
      I2 => triggerVoltOut(4),
      I3 => \is_trigger_volt6_inferred__2/i__carry\,
      I4 => \^q\(6),
      O => \triggerVolt_reg[9]_0\(2)
    );
\i__carry_i_7__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4224"
    )
        port map (
      I0 => \^q\(2),
      I1 => triggerVoltOut(0),
      I2 => triggerVoltOut(1),
      I3 => \^q\(3),
      O => \triggerVolt_reg[7]\(1)
    );
\i__carry_i_8__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90060990"
    )
        port map (
      I0 => triggerVoltOut(3),
      I1 => \^q\(5),
      I2 => triggerVoltOut(2),
      I3 => triggerVoltOut(1),
      I4 => \^q\(4),
      O => \triggerVolt_reg[9]_0\(1)
    );
\i__carry_i_8__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => \triggerVolt_reg[7]\(0)
    );
\i__carry_i_9__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6006"
    )
        port map (
      I0 => triggerVoltOut(1),
      I1 => \^q\(3),
      I2 => triggerVoltOut(0),
      I3 => \^q\(2),
      O => \triggerVolt_reg[9]_0\(0)
    );
\is_horizontal_gridline0__23_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \is_horizontal_gridline0__23_carry\(2),
      I1 => \is_horizontal_gridline0__29_carry\(0),
      O => \is_horizontal_gridline0_carry__0\(0)
    );
\is_horizontal_gridline0__23_carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D22D"
    )
        port map (
      I0 => \is_horizontal_gridline0__23_carry_0\(0),
      I1 => \is_horizontal_gridline0__23_carry\(0),
      I2 => \is_horizontal_gridline0__23_carry\(1),
      I3 => \is_horizontal_gridline0__29_carry\(0),
      O => \is_horizontal_gridline0_carry__0_0\(2)
    );
\is_horizontal_gridline0__23_carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => \is_horizontal_gridline0__29_carry\(0),
      I1 => \is_horizontal_gridline0__23_carry\(2),
      I2 => \is_horizontal_gridline0__23_carry_0\(0),
      I3 => \is_horizontal_gridline0__23_carry\(0),
      O => \is_horizontal_gridline0_carry__0_0\(1)
    );
\is_horizontal_gridline0__23_carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \is_horizontal_gridline0__23_carry\(2),
      I1 => \is_horizontal_gridline0__29_carry\(0),
      O => \is_horizontal_gridline0_carry__0_0\(0)
    );
\is_horizontal_gridline0__29_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A857"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(2),
      I3 => \^q\(5),
      O => \^is_horizontal_gridline1\(0)
    );
\is_horizontal_gridline0__29_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1E"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \^q\(4),
      O => \processQ_reg[3]_2\(0)
    );
\is_horizontal_gridline0__29_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA9999955566666"
    )
        port map (
      I0 => O(2),
      I1 => \^q\(5),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => \^q\(4),
      I5 => \^q\(6),
      O => \processQ_reg[5]_0\(2)
    );
\is_horizontal_gridline0__29_carry__0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A85757A8"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(2),
      I3 => \^q\(5),
      I4 => O(1),
      O => \processQ_reg[5]_0\(1)
    );
\is_horizontal_gridline0__29_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A9"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => O(0),
      O => \processQ_reg[5]_0\(0)
    );
\is_horizontal_gridline0__29_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      O => \processQ_reg[2]_0\(1)
    );
\is_horizontal_gridline0__29_carry_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(2),
      O => \processQ_reg[2]_0\(0)
    );
\is_horizontal_gridline0__29_carry_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \is_horizontal_gridline0__23_carry\(1),
      O => \processQ_reg[3]_0\(3)
    );
\is_horizontal_gridline0__29_carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(2),
      I1 => \is_horizontal_gridline0__23_carry\(0),
      O => \processQ_reg[3]_0\(2)
    );
\is_horizontal_gridline0__29_carry_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(1),
      I1 => \is_horizontal_gridline0__29_carry\(0),
      O => \processQ_reg[3]_0\(1)
    );
\is_horizontal_gridline0__29_carry_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \processQ_reg[3]_0\(0)
    );
\is_horizontal_gridline0_carry__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA9"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(7),
      I2 => \^q\(6),
      I3 => \^q\(5),
      I4 => \is_horizontal_gridline0_carry__0_i_9_n_0\,
      O => \^is_horizontal_gridline1\(3)
    );
\is_horizontal_gridline0_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFE00000001F"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      I2 => \^q\(4),
      I3 => \^q\(6),
      I4 => \^q\(5),
      I5 => \^q\(7),
      O => \^is_horizontal_gridline1\(2)
    );
\is_horizontal_gridline0_carry__0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEAA0155"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \^q\(4),
      I4 => \^q\(6),
      O => \^is_horizontal_gridline1\(1)
    );
\is_horizontal_gridline0_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A857"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(2),
      I3 => \^q\(5),
      O => \processQ_reg[4]_1\(0)
    );
\is_horizontal_gridline0_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55566666AAA99999"
    )
        port map (
      I0 => \^is_horizontal_gridline1\(3),
      I1 => \^q\(5),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => \^q\(4),
      I5 => \^q\(6),
      O => S(3)
    );
\is_horizontal_gridline0_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3C3C3CCCC6C6C666"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(7),
      I2 => \^q\(4),
      I3 => \^q\(3),
      I4 => \^q\(2),
      I5 => \^q\(5),
      O => S(2)
    );
\is_horizontal_gridline0_carry__0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C6C6C669"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(6),
      I2 => \^q\(4),
      I3 => \^q\(2),
      I4 => \^q\(3),
      O => S(1)
    );
\is_horizontal_gridline0_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"699C"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(5),
      I2 => \^q\(3),
      I3 => \^q\(2),
      O => S(0)
    );
\is_horizontal_gridline0_carry__0_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(2),
      O => \is_horizontal_gridline0_carry__0_i_9_n_0\
    );
\is_horizontal_gridline0_carry__1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA9"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(8),
      I2 => \is_horizontal_gridline0_carry__0_i_9_n_0\,
      I3 => \^q\(5),
      I4 => \^q\(6),
      I5 => \^q\(7),
      O => \^is_horizontal_gridline1\(4)
    );
\is_horizontal_gridline0_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA9"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(8),
      I2 => \is_horizontal_gridline0_carry__0_i_9_n_0\,
      I3 => \^q\(5),
      I4 => \^q\(6),
      I5 => \^q\(7),
      O => \processQ_reg[9]_1\(2)
    );
\is_horizontal_gridline0_carry__1_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA9"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(7),
      I2 => \^q\(6),
      I3 => \^q\(5),
      I4 => \is_horizontal_gridline0_carry__0_i_9_n_0\,
      O => \processQ_reg[9]_1\(1)
    );
\is_horizontal_gridline0_carry__1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3333333CCCCCCCC6"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(9),
      I2 => \is_horizontal_gridline0_carry__0_i_9_n_0\,
      I3 => \^q\(6),
      I4 => \^q\(5),
      I5 => \^q\(7),
      O => \processQ_reg[9]_1\(0)
    );
is_horizontal_gridline0_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(2),
      O => DI(2)
    );
is_horizontal_gridline0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      O => DI(1)
    );
is_horizontal_gridline0_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(2),
      O => DI(0)
    );
is_horizontal_gridline0_carry_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"59"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(2),
      O => \processQ_reg[4]_0\(2)
    );
is_horizontal_gridline0_carry_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \^q\(1),
      O => \processQ_reg[4]_0\(1)
    );
is_horizontal_gridline0_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      O => \processQ_reg[4]_0\(0)
    );
is_trigger_volt1_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => triggerVoltOut(7),
      I1 => \^q\(9),
      O => \triggerVolt_reg[9]\(3)
    );
is_trigger_volt1_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => triggerVoltOut(6),
      I1 => \^q\(8),
      I2 => \^q\(6),
      I3 => triggerVoltOut(4),
      I4 => \^q\(7),
      I5 => triggerVoltOut(5),
      O => \triggerVolt_reg[9]\(2)
    );
is_trigger_volt1_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(4),
      I1 => triggerVoltOut(2),
      I2 => \^q\(5),
      I3 => triggerVoltOut(3),
      I4 => triggerVoltOut(1),
      I5 => \^q\(3),
      O => \triggerVolt_reg[9]\(1)
    );
is_trigger_volt1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1001"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => triggerVoltOut(0),
      I3 => \^q\(2),
      O => \triggerVolt_reg[9]\(0)
    );
\is_trigger_volt5_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^q\(9),
      I1 => triggerVoltOut(7),
      I2 => triggerVoltOut(6),
      I3 => \^q\(8),
      O => \processQ_reg[9]_5\(0)
    );
\is_trigger_volt5_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => triggerVoltOut(6),
      I1 => \^q\(8),
      I2 => triggerVoltOut(7),
      I3 => \^q\(9),
      O => \triggerVolt_reg[8]\(0)
    );
is_trigger_volt5_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^q\(7),
      I1 => triggerVoltOut(5),
      I2 => triggerVoltOut(4),
      I3 => \^q\(6),
      O => \processQ_reg[7]_1\(3)
    );
is_trigger_volt5_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^q\(5),
      I1 => triggerVoltOut(3),
      I2 => triggerVoltOut(2),
      I3 => \^q\(4),
      O => \processQ_reg[7]_1\(2)
    );
is_trigger_volt5_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^q\(3),
      I1 => triggerVoltOut(1),
      I2 => triggerVoltOut(0),
      I3 => \^q\(2),
      O => \processQ_reg[7]_1\(1)
    );
is_trigger_volt5_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \processQ_reg[7]_1\(0)
    );
is_trigger_volt5_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => triggerVoltOut(5),
      I1 => \^q\(7),
      I2 => triggerVoltOut(4),
      I3 => \^q\(6),
      O => \triggerVolt_reg[7]_0\(3)
    );
is_trigger_volt5_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => triggerVoltOut(3),
      I1 => \^q\(5),
      I2 => triggerVoltOut(2),
      I3 => \^q\(4),
      O => \triggerVolt_reg[7]_0\(2)
    );
is_trigger_volt5_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => triggerVoltOut(0),
      I1 => \^q\(2),
      I2 => triggerVoltOut(1),
      I3 => \^q\(3),
      O => \triggerVolt_reg[7]_0\(1)
    );
is_trigger_volt5_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => \triggerVolt_reg[7]_0\(0)
    );
\processQ[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \processQ[0]_i_1__1_n_0\
    );
\processQ[1]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => \plusOp__0\(1)
    );
\processQ[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      O => \plusOp__0\(2)
    );
\processQ[3]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \^q\(0),
      O => \plusOp__0\(3)
    );
\processQ[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \^q\(1),
      I4 => \^q\(0),
      O => \plusOp__0\(4)
    );
\processQ[5]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(4),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(3),
      I5 => \^q\(2),
      O => \plusOp__0\(5)
    );
\processQ[6]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(5),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => \^processq_reg[1]_1\,
      I5 => \^q\(4),
      O => \plusOp__0\(6)
    );
\processQ[7]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(5),
      I2 => \^q\(6),
      I3 => \processQ[9]_i_7_n_0\,
      O => \plusOp__0\(7)
    );
\processQ[8]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(7),
      I2 => \processQ[9]_i_7_n_0\,
      I3 => \^q\(6),
      I4 => \^q\(5),
      O => \plusOp__0\(8)
    );
\processQ[9]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40000000FFFFFFFF"
    )
        port map (
      I0 => \processQ[9]_i_4__1_n_0\,
      I1 => \processQ[9]_i_5__0_n_0\,
      I2 => \^q\(9),
      I3 => \^processq_reg[1]_0\,
      I4 => \processQ_reg[0]_3\,
      I5 => s00_axi_aresetn,
      O => \processQ[9]_i_1__1_n_0\
    );
\processQ[9]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"002AAAAA"
    )
        port map (
      I0 => \processQ_reg[0]_3\,
      I1 => \^q\(3),
      I2 => \^q\(2),
      I3 => \processQ[9]_i_4__1_n_0\,
      I4 => \^q\(9),
      O => processQ0
    );
\processQ[9]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \^q\(9),
      I1 => \processQ[9]_i_7_n_0\,
      I2 => \^q\(8),
      I3 => \^q\(7),
      I4 => \^q\(6),
      I5 => \^q\(5),
      O => \plusOp__0\(9)
    );
\processQ[9]_i_4__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(6),
      I2 => \^q\(7),
      I3 => \^q\(8),
      I4 => \^q\(4),
      O => \processQ[9]_i_4__1_n_0\
    );
\processQ[9]_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      O => \processQ[9]_i_5__0_n_0\
    );
\processQ[9]_i_6__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => \^processq_reg[1]_0\
    );
\processQ[9]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(4),
      O => \processQ[9]_i_7_n_0\
    );
\processQ_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => processQ0,
      D => \processQ[0]_i_1__1_n_0\,
      Q => \^q\(0),
      R => \processQ[9]_i_1__1_n_0\
    );
\processQ_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => processQ0,
      D => \plusOp__0\(1),
      Q => \^q\(1),
      R => \processQ[9]_i_1__1_n_0\
    );
\processQ_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => processQ0,
      D => \plusOp__0\(2),
      Q => \^q\(2),
      R => \processQ[9]_i_1__1_n_0\
    );
\processQ_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => processQ0,
      D => \plusOp__0\(3),
      Q => \^q\(3),
      R => \processQ[9]_i_1__1_n_0\
    );
\processQ_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => processQ0,
      D => \plusOp__0\(4),
      Q => \^q\(4),
      R => \processQ[9]_i_1__1_n_0\
    );
\processQ_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => processQ0,
      D => \plusOp__0\(5),
      Q => \^q\(5),
      R => \processQ[9]_i_1__1_n_0\
    );
\processQ_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => processQ0,
      D => \plusOp__0\(6),
      Q => \^q\(6),
      R => \processQ[9]_i_1__1_n_0\
    );
\processQ_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => processQ0,
      D => \plusOp__0\(7),
      Q => \^q\(7),
      R => \processQ[9]_i_1__1_n_0\
    );
\processQ_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => processQ0,
      D => \plusOp__0\(8),
      Q => \^q\(8),
      R => \processQ[9]_i_1__1_n_0\
    );
\processQ_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => processQ0,
      D => \plusOp__0\(9),
      Q => \^q\(9),
      R => \processQ[9]_i_1__1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2s_ctl is
  port (
    BCLK_int_reg_0 : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    LRCLK_reg_0 : out STD_LOGIC;
    s00_axi_aresetn_0 : out STD_LOGIC;
    s00_axi_aresetn_1 : out STD_LOGIC;
    s00_axi_aresetn_2 : out STD_LOGIC;
    ac_lrclk_sig_prev_reg : out STD_LOGIC;
    \ac_lrclk_count_reg[2]\ : out STD_LOGIC;
    ac_dac_sdata : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \D_R_O_int_reg[23]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    fromADCL : out STD_LOGIC_VECTOR ( 15 downto 0 );
    fromADCR : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    \ac_lrclk_count_reg[2]_0\ : in STD_LOGIC;
    \ac_lrclk_count__0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    toADCR : in STD_LOGIC_VECTOR ( 2 downto 0 );
    toADCL : in STD_LOGIC_VECTOR ( 2 downto 0 );
    LBus_out : in STD_LOGIC_VECTOR ( 14 downto 0 );
    Rbus_out : in STD_LOGIC_VECTOR ( 14 downto 0 );
    ready_sig_reg : in STD_LOGIC;
    ready_sig_reg_0 : in STD_LOGIC;
    ac_adc_sdata : in STD_LOGIC;
    switch : in STD_LOGIC_VECTOR ( 0 to 0 );
    DOADO : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \toADCR_reg[17]\ : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2s_ctl;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2s_ctl is
  signal BCLK_Fall_int : STD_LOGIC;
  signal BCLK_int_i_1_n_0 : STD_LOGIC;
  signal \^bclk_int_reg_0\ : STD_LOGIC;
  signal Cnt_Bclk0 : STD_LOGIC;
  signal \Cnt_Bclk0_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \Cnt_Bclk[4]_i_1_n_0\ : STD_LOGIC;
  signal Cnt_Bclk_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal Cnt_Lrclk : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \Cnt_Lrclk[0]_i_1_n_0\ : STD_LOGIC;
  signal \Cnt_Lrclk[1]_i_1_n_0\ : STD_LOGIC;
  signal \Cnt_Lrclk[2]_i_1_n_0\ : STD_LOGIC;
  signal \Cnt_Lrclk[3]_i_1_n_0\ : STD_LOGIC;
  signal \Cnt_Lrclk[4]_i_2_n_0\ : STD_LOGIC;
  signal D_L_O_int : STD_LOGIC_VECTOR ( 22 downto 8 );
  signal D_L_O_int_0 : STD_LOGIC;
  signal D_R_O_int : STD_LOGIC_VECTOR ( 22 downto 8 );
  signal \D_R_O_int[23]_i_1_n_0\ : STD_LOGIC;
  signal \^d_r_o_int_reg[23]_0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Data_In_int : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \Data_In_int[31]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Out_int[13]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Out_int[14]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Out_int[15]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Out_int[16]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Out_int[17]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Out_int[18]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Out_int[19]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Out_int[20]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Out_int[21]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Out_int[22]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Out_int[23]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Out_int[24]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Out_int[25]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Out_int[26]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Out_int[27]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Out_int[28]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Out_int[29]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Out_int[30]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Out_int[30]_i_2_n_0\ : STD_LOGIC;
  signal \Data_Out_int[30]_i_3_n_0\ : STD_LOGIC;
  signal \Data_Out_int[30]_i_4_n_0\ : STD_LOGIC;
  signal \Data_Out_int[31]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Out_int[31]_i_2_n_0\ : STD_LOGIC;
  signal \Data_Out_int[31]_i_3_n_0\ : STD_LOGIC;
  signal \Data_Out_int[31]_i_4_n_0\ : STD_LOGIC;
  signal \Data_Out_int_reg_n_0_[13]\ : STD_LOGIC;
  signal \Data_Out_int_reg_n_0_[14]\ : STD_LOGIC;
  signal \Data_Out_int_reg_n_0_[15]\ : STD_LOGIC;
  signal \Data_Out_int_reg_n_0_[16]\ : STD_LOGIC;
  signal \Data_Out_int_reg_n_0_[17]\ : STD_LOGIC;
  signal \Data_Out_int_reg_n_0_[18]\ : STD_LOGIC;
  signal \Data_Out_int_reg_n_0_[19]\ : STD_LOGIC;
  signal \Data_Out_int_reg_n_0_[20]\ : STD_LOGIC;
  signal \Data_Out_int_reg_n_0_[21]\ : STD_LOGIC;
  signal \Data_Out_int_reg_n_0_[22]\ : STD_LOGIC;
  signal \Data_Out_int_reg_n_0_[23]\ : STD_LOGIC;
  signal \Data_Out_int_reg_n_0_[24]\ : STD_LOGIC;
  signal \Data_Out_int_reg_n_0_[25]\ : STD_LOGIC;
  signal \Data_Out_int_reg_n_0_[26]\ : STD_LOGIC;
  signal \Data_Out_int_reg_n_0_[27]\ : STD_LOGIC;
  signal \Data_Out_int_reg_n_0_[28]\ : STD_LOGIC;
  signal \Data_Out_int_reg_n_0_[29]\ : STD_LOGIC;
  signal \Data_Out_int_reg_n_0_[30]\ : STD_LOGIC;
  signal LRCLK_i_1_n_0 : STD_LOGIC;
  signal LRCLK_i_2_n_0 : STD_LOGIC;
  signal \^lrclk_reg_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \i__carry_i_1__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__3_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal p_17_in : STD_LOGIC;
  signal \NLW_Cnt_Bclk0_inferred__0/i__carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_Cnt_Bclk0_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of BCLK_int_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \Cnt_Bclk[1]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \Cnt_Bclk[2]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \Cnt_Bclk[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \Cnt_Bclk[4]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \Cnt_Lrclk[1]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \Cnt_Lrclk[2]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \Cnt_Lrclk[3]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \Cnt_Lrclk[4]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \Data_Out_int[30]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \Data_Out_int[30]_i_4\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \Data_Out_int[31]_i_4\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of LRCLK_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of LRCLK_i_2 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \ac_lrclk_count[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \ac_lrclk_count[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \toADCL[17]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \toADCR[17]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \w_Lbus_out[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \w_Lbus_out[10]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \w_Lbus_out[11]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \w_Lbus_out[12]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \w_Lbus_out[13]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \w_Lbus_out[14]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \w_Lbus_out[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \w_Lbus_out[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \w_Lbus_out[3]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \w_Lbus_out[4]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \w_Lbus_out[5]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \w_Lbus_out[6]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \w_Lbus_out[7]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \w_Lbus_out[8]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \w_Lbus_out[9]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \w_Rbus_out[0]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \w_Rbus_out[10]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \w_Rbus_out[11]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \w_Rbus_out[12]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \w_Rbus_out[13]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \w_Rbus_out[14]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \w_Rbus_out[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \w_Rbus_out[2]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \w_Rbus_out[3]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \w_Rbus_out[4]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \w_Rbus_out[5]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \w_Rbus_out[6]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \w_Rbus_out[7]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \w_Rbus_out[8]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \w_Rbus_out[9]_i_1\ : label is "soft_lutpair21";
begin
  BCLK_int_reg_0 <= \^bclk_int_reg_0\;
  \D_R_O_int_reg[23]_0\(2 downto 0) <= \^d_r_o_int_reg[23]_0\(2 downto 0);
  LRCLK_reg_0 <= \^lrclk_reg_0\;
  Q(2 downto 0) <= \^q\(2 downto 0);
  SR(0) <= \^sr\(0);
BCLK_int_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Cnt_Bclk0,
      I1 => \^bclk_int_reg_0\,
      O => BCLK_int_i_1_n_0
    );
BCLK_int_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => BCLK_int_i_1_n_0,
      Q => \^bclk_int_reg_0\,
      R => \^sr\(0)
    );
\Cnt_Bclk0_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_Cnt_Bclk0_inferred__0/i__carry_CO_UNCONNECTED\(3 downto 2),
      CO(1) => Cnt_Bclk0,
      CO(0) => \Cnt_Bclk0_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_Cnt_Bclk0_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \i__carry_i_1__4_n_0\,
      S(0) => \i__carry_i_2__3_n_0\
    );
\Cnt_Bclk[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Cnt_Bclk_reg(0),
      O => p_0_in(0)
    );
\Cnt_Bclk[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Cnt_Bclk_reg(0),
      I1 => Cnt_Bclk_reg(1),
      O => p_0_in(1)
    );
\Cnt_Bclk[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => Cnt_Bclk_reg(1),
      I1 => Cnt_Bclk_reg(0),
      I2 => Cnt_Bclk_reg(2),
      O => p_0_in(2)
    );
\Cnt_Bclk[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => Cnt_Bclk_reg(2),
      I1 => Cnt_Bclk_reg(0),
      I2 => Cnt_Bclk_reg(1),
      I3 => Cnt_Bclk_reg(3),
      O => p_0_in(3)
    );
\Cnt_Bclk[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => Cnt_Bclk0,
      I1 => s00_axi_aresetn,
      O => \Cnt_Bclk[4]_i_1_n_0\
    );
\Cnt_Bclk[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => Cnt_Bclk_reg(3),
      I1 => Cnt_Bclk_reg(1),
      I2 => Cnt_Bclk_reg(0),
      I3 => Cnt_Bclk_reg(2),
      I4 => Cnt_Bclk_reg(4),
      O => p_0_in(4)
    );
\Cnt_Bclk_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_0_in(0),
      Q => Cnt_Bclk_reg(0),
      R => \Cnt_Bclk[4]_i_1_n_0\
    );
\Cnt_Bclk_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_0_in(1),
      Q => Cnt_Bclk_reg(1),
      R => \Cnt_Bclk[4]_i_1_n_0\
    );
\Cnt_Bclk_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_0_in(2),
      Q => Cnt_Bclk_reg(2),
      R => \Cnt_Bclk[4]_i_1_n_0\
    );
\Cnt_Bclk_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_0_in(3),
      Q => Cnt_Bclk_reg(3),
      R => \Cnt_Bclk[4]_i_1_n_0\
    );
\Cnt_Bclk_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_0_in(4),
      Q => Cnt_Bclk_reg(4),
      R => \Cnt_Bclk[4]_i_1_n_0\
    );
\Cnt_Lrclk[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Cnt_Lrclk(0),
      O => \Cnt_Lrclk[0]_i_1_n_0\
    );
\Cnt_Lrclk[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Cnt_Lrclk(0),
      I1 => Cnt_Lrclk(1),
      O => \Cnt_Lrclk[1]_i_1_n_0\
    );
\Cnt_Lrclk[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => Cnt_Lrclk(1),
      I1 => Cnt_Lrclk(0),
      I2 => Cnt_Lrclk(2),
      O => \Cnt_Lrclk[2]_i_1_n_0\
    );
\Cnt_Lrclk[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => Cnt_Lrclk(2),
      I1 => Cnt_Lrclk(0),
      I2 => Cnt_Lrclk(1),
      I3 => Cnt_Lrclk(3),
      O => \Cnt_Lrclk[3]_i_1_n_0\
    );
\Cnt_Lrclk[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^bclk_int_reg_0\,
      I1 => Cnt_Bclk0,
      O => BCLK_Fall_int
    );
\Cnt_Lrclk[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => Cnt_Lrclk(3),
      I1 => Cnt_Lrclk(1),
      I2 => Cnt_Lrclk(0),
      I3 => Cnt_Lrclk(2),
      I4 => Cnt_Lrclk(4),
      O => \Cnt_Lrclk[4]_i_2_n_0\
    );
\Cnt_Lrclk_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => BCLK_Fall_int,
      D => \Cnt_Lrclk[0]_i_1_n_0\,
      Q => Cnt_Lrclk(0),
      R => \^sr\(0)
    );
\Cnt_Lrclk_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => BCLK_Fall_int,
      D => \Cnt_Lrclk[1]_i_1_n_0\,
      Q => Cnt_Lrclk(1),
      R => \^sr\(0)
    );
\Cnt_Lrclk_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => BCLK_Fall_int,
      D => \Cnt_Lrclk[2]_i_1_n_0\,
      Q => Cnt_Lrclk(2),
      R => \^sr\(0)
    );
\Cnt_Lrclk_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => BCLK_Fall_int,
      D => \Cnt_Lrclk[3]_i_1_n_0\,
      Q => Cnt_Lrclk(3),
      R => \^sr\(0)
    );
\Cnt_Lrclk_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => BCLK_Fall_int,
      D => \Cnt_Lrclk[4]_i_2_n_0\,
      Q => Cnt_Lrclk(4),
      R => \^sr\(0)
    );
\D_L_O_int[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^bclk_int_reg_0\,
      I1 => \^lrclk_reg_0\,
      I2 => \Data_Out_int[31]_i_3_n_0\,
      O => D_L_O_int_0
    );
\D_L_O_int_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => D_L_O_int_0,
      D => Data_In_int(18),
      Q => D_L_O_int(10),
      R => \^sr\(0)
    );
\D_L_O_int_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => D_L_O_int_0,
      D => Data_In_int(19),
      Q => D_L_O_int(11),
      R => \^sr\(0)
    );
\D_L_O_int_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => D_L_O_int_0,
      D => Data_In_int(20),
      Q => D_L_O_int(12),
      R => \^sr\(0)
    );
\D_L_O_int_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => D_L_O_int_0,
      D => Data_In_int(21),
      Q => D_L_O_int(13),
      R => \^sr\(0)
    );
\D_L_O_int_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => D_L_O_int_0,
      D => Data_In_int(22),
      Q => D_L_O_int(14),
      R => \^sr\(0)
    );
\D_L_O_int_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => D_L_O_int_0,
      D => Data_In_int(23),
      Q => D_L_O_int(15),
      R => \^sr\(0)
    );
\D_L_O_int_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => D_L_O_int_0,
      D => Data_In_int(24),
      Q => D_L_O_int(16),
      R => \^sr\(0)
    );
\D_L_O_int_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => D_L_O_int_0,
      D => Data_In_int(25),
      Q => D_L_O_int(17),
      R => \^sr\(0)
    );
\D_L_O_int_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => D_L_O_int_0,
      D => Data_In_int(26),
      Q => D_L_O_int(18),
      R => \^sr\(0)
    );
\D_L_O_int_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => D_L_O_int_0,
      D => Data_In_int(27),
      Q => D_L_O_int(19),
      R => \^sr\(0)
    );
\D_L_O_int_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => D_L_O_int_0,
      D => Data_In_int(28),
      Q => D_L_O_int(20),
      R => \^sr\(0)
    );
\D_L_O_int_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => D_L_O_int_0,
      D => Data_In_int(29),
      Q => D_L_O_int(21),
      R => \^sr\(0)
    );
\D_L_O_int_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => D_L_O_int_0,
      D => Data_In_int(30),
      Q => D_L_O_int(22),
      R => \^sr\(0)
    );
\D_L_O_int_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => D_L_O_int_0,
      D => Data_In_int(31),
      Q => \^q\(2),
      R => \^sr\(0)
    );
\D_L_O_int_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => D_L_O_int_0,
      D => Data_In_int(14),
      Q => \^q\(0),
      R => \^sr\(0)
    );
\D_L_O_int_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => D_L_O_int_0,
      D => Data_In_int(15),
      Q => \^q\(1),
      R => \^sr\(0)
    );
\D_L_O_int_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => D_L_O_int_0,
      D => Data_In_int(16),
      Q => D_L_O_int(8),
      R => \^sr\(0)
    );
\D_L_O_int_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => D_L_O_int_0,
      D => Data_In_int(17),
      Q => D_L_O_int(9),
      R => \^sr\(0)
    );
\D_R_O_int[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^lrclk_reg_0\,
      I1 => \^bclk_int_reg_0\,
      I2 => \Data_Out_int[31]_i_3_n_0\,
      O => \D_R_O_int[23]_i_1_n_0\
    );
\D_R_O_int_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \D_R_O_int[23]_i_1_n_0\,
      D => Data_In_int(18),
      Q => D_R_O_int(10),
      R => \^sr\(0)
    );
\D_R_O_int_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \D_R_O_int[23]_i_1_n_0\,
      D => Data_In_int(19),
      Q => D_R_O_int(11),
      R => \^sr\(0)
    );
\D_R_O_int_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \D_R_O_int[23]_i_1_n_0\,
      D => Data_In_int(20),
      Q => D_R_O_int(12),
      R => \^sr\(0)
    );
\D_R_O_int_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \D_R_O_int[23]_i_1_n_0\,
      D => Data_In_int(21),
      Q => D_R_O_int(13),
      R => \^sr\(0)
    );
\D_R_O_int_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \D_R_O_int[23]_i_1_n_0\,
      D => Data_In_int(22),
      Q => D_R_O_int(14),
      R => \^sr\(0)
    );
\D_R_O_int_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \D_R_O_int[23]_i_1_n_0\,
      D => Data_In_int(23),
      Q => D_R_O_int(15),
      R => \^sr\(0)
    );
\D_R_O_int_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \D_R_O_int[23]_i_1_n_0\,
      D => Data_In_int(24),
      Q => D_R_O_int(16),
      R => \^sr\(0)
    );
\D_R_O_int_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \D_R_O_int[23]_i_1_n_0\,
      D => Data_In_int(25),
      Q => D_R_O_int(17),
      R => \^sr\(0)
    );
\D_R_O_int_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \D_R_O_int[23]_i_1_n_0\,
      D => Data_In_int(26),
      Q => D_R_O_int(18),
      R => \^sr\(0)
    );
\D_R_O_int_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \D_R_O_int[23]_i_1_n_0\,
      D => Data_In_int(27),
      Q => D_R_O_int(19),
      R => \^sr\(0)
    );
\D_R_O_int_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \D_R_O_int[23]_i_1_n_0\,
      D => Data_In_int(28),
      Q => D_R_O_int(20),
      R => \^sr\(0)
    );
\D_R_O_int_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \D_R_O_int[23]_i_1_n_0\,
      D => Data_In_int(29),
      Q => D_R_O_int(21),
      R => \^sr\(0)
    );
\D_R_O_int_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \D_R_O_int[23]_i_1_n_0\,
      D => Data_In_int(30),
      Q => D_R_O_int(22),
      R => \^sr\(0)
    );
\D_R_O_int_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \D_R_O_int[23]_i_1_n_0\,
      D => Data_In_int(31),
      Q => \^d_r_o_int_reg[23]_0\(2),
      R => \^sr\(0)
    );
\D_R_O_int_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \D_R_O_int[23]_i_1_n_0\,
      D => Data_In_int(14),
      Q => \^d_r_o_int_reg[23]_0\(0),
      R => \^sr\(0)
    );
\D_R_O_int_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \D_R_O_int[23]_i_1_n_0\,
      D => Data_In_int(15),
      Q => \^d_r_o_int_reg[23]_0\(1),
      R => \^sr\(0)
    );
\D_R_O_int_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \D_R_O_int[23]_i_1_n_0\,
      D => Data_In_int(16),
      Q => D_R_O_int(8),
      R => \^sr\(0)
    );
\D_R_O_int_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \D_R_O_int[23]_i_1_n_0\,
      D => Data_In_int(17),
      Q => D_R_O_int(9),
      R => \^sr\(0)
    );
\Data_In_int[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => \Data_Out_int[31]_i_3_n_0\,
      I1 => \^bclk_int_reg_0\,
      I2 => s00_axi_aresetn,
      O => \Data_In_int[31]_i_1_n_0\
    );
\Data_In_int[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Cnt_Bclk0,
      I1 => \^bclk_int_reg_0\,
      O => p_17_in
    );
\Data_In_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_17_in,
      D => ac_adc_sdata,
      Q => Data_In_int(0),
      R => \Data_In_int[31]_i_1_n_0\
    );
\Data_In_int_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_17_in,
      D => Data_In_int(9),
      Q => Data_In_int(10),
      R => \Data_In_int[31]_i_1_n_0\
    );
\Data_In_int_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_17_in,
      D => Data_In_int(10),
      Q => Data_In_int(11),
      R => \Data_In_int[31]_i_1_n_0\
    );
\Data_In_int_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_17_in,
      D => Data_In_int(11),
      Q => Data_In_int(12),
      R => \Data_In_int[31]_i_1_n_0\
    );
\Data_In_int_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_17_in,
      D => Data_In_int(12),
      Q => Data_In_int(13),
      R => \Data_In_int[31]_i_1_n_0\
    );
\Data_In_int_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_17_in,
      D => Data_In_int(13),
      Q => Data_In_int(14),
      R => \Data_In_int[31]_i_1_n_0\
    );
\Data_In_int_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_17_in,
      D => Data_In_int(14),
      Q => Data_In_int(15),
      R => \Data_In_int[31]_i_1_n_0\
    );
\Data_In_int_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_17_in,
      D => Data_In_int(15),
      Q => Data_In_int(16),
      R => \Data_In_int[31]_i_1_n_0\
    );
\Data_In_int_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_17_in,
      D => Data_In_int(16),
      Q => Data_In_int(17),
      R => \Data_In_int[31]_i_1_n_0\
    );
\Data_In_int_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_17_in,
      D => Data_In_int(17),
      Q => Data_In_int(18),
      R => \Data_In_int[31]_i_1_n_0\
    );
\Data_In_int_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_17_in,
      D => Data_In_int(18),
      Q => Data_In_int(19),
      R => \Data_In_int[31]_i_1_n_0\
    );
\Data_In_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_17_in,
      D => Data_In_int(0),
      Q => Data_In_int(1),
      R => \Data_In_int[31]_i_1_n_0\
    );
\Data_In_int_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_17_in,
      D => Data_In_int(19),
      Q => Data_In_int(20),
      R => \Data_In_int[31]_i_1_n_0\
    );
\Data_In_int_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_17_in,
      D => Data_In_int(20),
      Q => Data_In_int(21),
      R => \Data_In_int[31]_i_1_n_0\
    );
\Data_In_int_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_17_in,
      D => Data_In_int(21),
      Q => Data_In_int(22),
      R => \Data_In_int[31]_i_1_n_0\
    );
\Data_In_int_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_17_in,
      D => Data_In_int(22),
      Q => Data_In_int(23),
      R => \Data_In_int[31]_i_1_n_0\
    );
\Data_In_int_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_17_in,
      D => Data_In_int(23),
      Q => Data_In_int(24),
      R => \Data_In_int[31]_i_1_n_0\
    );
\Data_In_int_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_17_in,
      D => Data_In_int(24),
      Q => Data_In_int(25),
      R => \Data_In_int[31]_i_1_n_0\
    );
\Data_In_int_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_17_in,
      D => Data_In_int(25),
      Q => Data_In_int(26),
      R => \Data_In_int[31]_i_1_n_0\
    );
\Data_In_int_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_17_in,
      D => Data_In_int(26),
      Q => Data_In_int(27),
      R => \Data_In_int[31]_i_1_n_0\
    );
\Data_In_int_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_17_in,
      D => Data_In_int(27),
      Q => Data_In_int(28),
      R => \Data_In_int[31]_i_1_n_0\
    );
\Data_In_int_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_17_in,
      D => Data_In_int(28),
      Q => Data_In_int(29),
      R => \Data_In_int[31]_i_1_n_0\
    );
\Data_In_int_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_17_in,
      D => Data_In_int(1),
      Q => Data_In_int(2),
      R => \Data_In_int[31]_i_1_n_0\
    );
\Data_In_int_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_17_in,
      D => Data_In_int(29),
      Q => Data_In_int(30),
      R => \Data_In_int[31]_i_1_n_0\
    );
\Data_In_int_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_17_in,
      D => Data_In_int(30),
      Q => Data_In_int(31),
      R => \Data_In_int[31]_i_1_n_0\
    );
\Data_In_int_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_17_in,
      D => Data_In_int(2),
      Q => Data_In_int(3),
      R => \Data_In_int[31]_i_1_n_0\
    );
\Data_In_int_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_17_in,
      D => Data_In_int(3),
      Q => Data_In_int(4),
      R => \Data_In_int[31]_i_1_n_0\
    );
\Data_In_int_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_17_in,
      D => Data_In_int(4),
      Q => Data_In_int(5),
      R => \Data_In_int[31]_i_1_n_0\
    );
\Data_In_int_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_17_in,
      D => Data_In_int(5),
      Q => Data_In_int(6),
      R => \Data_In_int[31]_i_1_n_0\
    );
\Data_In_int_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_17_in,
      D => Data_In_int(6),
      Q => Data_In_int(7),
      R => \Data_In_int[31]_i_1_n_0\
    );
\Data_In_int_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_17_in,
      D => Data_In_int(7),
      Q => Data_In_int(8),
      R => \Data_In_int[31]_i_1_n_0\
    );
\Data_In_int_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_17_in,
      D => Data_In_int(8),
      Q => Data_In_int(9),
      R => \Data_In_int[31]_i_1_n_0\
    );
\Data_Out_int[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => toADCR(0),
      I1 => \Data_Out_int[30]_i_3_n_0\,
      I2 => toADCL(0),
      I3 => \Data_Out_int[30]_i_2_n_0\,
      O => \Data_Out_int[13]_i_1_n_0\
    );
\Data_Out_int[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \Data_Out_int[30]_i_2_n_0\,
      I1 => toADCL(1),
      I2 => \Data_Out_int[30]_i_3_n_0\,
      I3 => toADCR(1),
      I4 => \Data_Out_int_reg_n_0_[13]\,
      I5 => \Data_Out_int[31]_i_4_n_0\,
      O => \Data_Out_int[14]_i_1_n_0\
    );
\Data_Out_int[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \Data_Out_int[30]_i_2_n_0\,
      I1 => LBus_out(0),
      I2 => \Data_Out_int[30]_i_3_n_0\,
      I3 => Rbus_out(0),
      I4 => \Data_Out_int_reg_n_0_[14]\,
      I5 => \Data_Out_int[31]_i_4_n_0\,
      O => \Data_Out_int[15]_i_1_n_0\
    );
\Data_Out_int[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \Data_Out_int[30]_i_2_n_0\,
      I1 => LBus_out(1),
      I2 => \Data_Out_int[30]_i_3_n_0\,
      I3 => Rbus_out(1),
      I4 => \Data_Out_int_reg_n_0_[15]\,
      I5 => \Data_Out_int[31]_i_4_n_0\,
      O => \Data_Out_int[16]_i_1_n_0\
    );
\Data_Out_int[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \Data_Out_int[30]_i_2_n_0\,
      I1 => LBus_out(2),
      I2 => \Data_Out_int[30]_i_3_n_0\,
      I3 => Rbus_out(2),
      I4 => \Data_Out_int_reg_n_0_[16]\,
      I5 => \Data_Out_int[31]_i_4_n_0\,
      O => \Data_Out_int[17]_i_1_n_0\
    );
\Data_Out_int[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \Data_Out_int[30]_i_2_n_0\,
      I1 => LBus_out(3),
      I2 => \Data_Out_int[30]_i_3_n_0\,
      I3 => Rbus_out(3),
      I4 => \Data_Out_int_reg_n_0_[17]\,
      I5 => \Data_Out_int[31]_i_4_n_0\,
      O => \Data_Out_int[18]_i_1_n_0\
    );
\Data_Out_int[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \Data_Out_int[30]_i_2_n_0\,
      I1 => LBus_out(4),
      I2 => \Data_Out_int[30]_i_3_n_0\,
      I3 => Rbus_out(4),
      I4 => \Data_Out_int_reg_n_0_[18]\,
      I5 => \Data_Out_int[31]_i_4_n_0\,
      O => \Data_Out_int[19]_i_1_n_0\
    );
\Data_Out_int[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \Data_Out_int[30]_i_2_n_0\,
      I1 => LBus_out(5),
      I2 => \Data_Out_int[30]_i_3_n_0\,
      I3 => Rbus_out(5),
      I4 => \Data_Out_int_reg_n_0_[19]\,
      I5 => \Data_Out_int[31]_i_4_n_0\,
      O => \Data_Out_int[20]_i_1_n_0\
    );
\Data_Out_int[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \Data_Out_int[30]_i_2_n_0\,
      I1 => LBus_out(6),
      I2 => \Data_Out_int[30]_i_3_n_0\,
      I3 => Rbus_out(6),
      I4 => \Data_Out_int_reg_n_0_[20]\,
      I5 => \Data_Out_int[31]_i_4_n_0\,
      O => \Data_Out_int[21]_i_1_n_0\
    );
\Data_Out_int[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \Data_Out_int[30]_i_2_n_0\,
      I1 => LBus_out(7),
      I2 => \Data_Out_int[30]_i_3_n_0\,
      I3 => Rbus_out(7),
      I4 => \Data_Out_int_reg_n_0_[21]\,
      I5 => \Data_Out_int[31]_i_4_n_0\,
      O => \Data_Out_int[22]_i_1_n_0\
    );
\Data_Out_int[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \Data_Out_int[30]_i_2_n_0\,
      I1 => LBus_out(8),
      I2 => \Data_Out_int[30]_i_3_n_0\,
      I3 => Rbus_out(8),
      I4 => \Data_Out_int_reg_n_0_[22]\,
      I5 => \Data_Out_int[31]_i_4_n_0\,
      O => \Data_Out_int[23]_i_1_n_0\
    );
\Data_Out_int[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \Data_Out_int[30]_i_2_n_0\,
      I1 => LBus_out(9),
      I2 => \Data_Out_int[30]_i_3_n_0\,
      I3 => Rbus_out(9),
      I4 => \Data_Out_int_reg_n_0_[23]\,
      I5 => \Data_Out_int[31]_i_4_n_0\,
      O => \Data_Out_int[24]_i_1_n_0\
    );
\Data_Out_int[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \Data_Out_int[30]_i_2_n_0\,
      I1 => LBus_out(10),
      I2 => \Data_Out_int[30]_i_3_n_0\,
      I3 => Rbus_out(10),
      I4 => \Data_Out_int_reg_n_0_[24]\,
      I5 => \Data_Out_int[31]_i_4_n_0\,
      O => \Data_Out_int[25]_i_1_n_0\
    );
\Data_Out_int[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \Data_Out_int[30]_i_2_n_0\,
      I1 => LBus_out(11),
      I2 => \Data_Out_int[30]_i_3_n_0\,
      I3 => Rbus_out(11),
      I4 => \Data_Out_int_reg_n_0_[25]\,
      I5 => \Data_Out_int[31]_i_4_n_0\,
      O => \Data_Out_int[26]_i_1_n_0\
    );
\Data_Out_int[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \Data_Out_int[30]_i_2_n_0\,
      I1 => LBus_out(12),
      I2 => \Data_Out_int[30]_i_3_n_0\,
      I3 => Rbus_out(12),
      I4 => \Data_Out_int_reg_n_0_[26]\,
      I5 => \Data_Out_int[31]_i_4_n_0\,
      O => \Data_Out_int[27]_i_1_n_0\
    );
\Data_Out_int[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \Data_Out_int[30]_i_2_n_0\,
      I1 => LBus_out(13),
      I2 => \Data_Out_int[30]_i_3_n_0\,
      I3 => Rbus_out(13),
      I4 => \Data_Out_int_reg_n_0_[27]\,
      I5 => \Data_Out_int[31]_i_4_n_0\,
      O => \Data_Out_int[28]_i_1_n_0\
    );
\Data_Out_int[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \Data_Out_int[30]_i_2_n_0\,
      I1 => LBus_out(14),
      I2 => \Data_Out_int[30]_i_3_n_0\,
      I3 => Rbus_out(14),
      I4 => \Data_Out_int_reg_n_0_[28]\,
      I5 => \Data_Out_int[31]_i_4_n_0\,
      O => \Data_Out_int[29]_i_1_n_0\
    );
\Data_Out_int[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \Data_Out_int[30]_i_2_n_0\,
      I1 => toADCL(2),
      I2 => \Data_Out_int[30]_i_3_n_0\,
      I3 => toADCR(2),
      I4 => \Data_Out_int_reg_n_0_[29]\,
      I5 => \Data_Out_int[31]_i_4_n_0\,
      O => \Data_Out_int[30]_i_1_n_0\
    );
\Data_Out_int[30]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000020FFFFFFFF"
    )
        port map (
      I0 => \Data_Out_int[30]_i_4_n_0\,
      I1 => \^bclk_int_reg_0\,
      I2 => Cnt_Bclk0,
      I3 => \^lrclk_reg_0\,
      I4 => Cnt_Lrclk(4),
      I5 => s00_axi_aresetn,
      O => \Data_Out_int[30]_i_2_n_0\
    );
\Data_Out_int[30]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => \^lrclk_reg_0\,
      I2 => \^bclk_int_reg_0\,
      I3 => \Data_Out_int[31]_i_3_n_0\,
      O => \Data_Out_int[30]_i_3_n_0\
    );
\Data_Out_int[30]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => Cnt_Lrclk(1),
      I1 => Cnt_Lrclk(0),
      I2 => Cnt_Lrclk(3),
      I3 => Cnt_Lrclk(2),
      O => \Data_Out_int[30]_i_4_n_0\
    );
\Data_Out_int[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D5FF"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => \^bclk_int_reg_0\,
      I2 => Cnt_Bclk0,
      I3 => \Data_Out_int[31]_i_3_n_0\,
      O => \Data_Out_int[31]_i_1_n_0\
    );
\Data_Out_int[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \Data_Out_int[31]_i_4_n_0\,
      I1 => \Data_Out_int_reg_n_0_[30]\,
      O => \Data_Out_int[31]_i_2_n_0\
    );
\Data_Out_int[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFB"
    )
        port map (
      I0 => Cnt_Lrclk(4),
      I1 => Cnt_Bclk0,
      I2 => Cnt_Lrclk(2),
      I3 => Cnt_Lrclk(3),
      I4 => Cnt_Lrclk(1),
      I5 => Cnt_Lrclk(0),
      O => \Data_Out_int[31]_i_3_n_0\
    );
\Data_Out_int[31]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^bclk_int_reg_0\,
      I1 => \Data_Out_int[31]_i_3_n_0\,
      I2 => s00_axi_aresetn,
      O => \Data_Out_int[31]_i_4_n_0\
    );
\Data_Out_int_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \Data_Out_int[31]_i_1_n_0\,
      D => \Data_Out_int[13]_i_1_n_0\,
      Q => \Data_Out_int_reg_n_0_[13]\,
      R => '0'
    );
\Data_Out_int_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \Data_Out_int[31]_i_1_n_0\,
      D => \Data_Out_int[14]_i_1_n_0\,
      Q => \Data_Out_int_reg_n_0_[14]\,
      R => '0'
    );
\Data_Out_int_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \Data_Out_int[31]_i_1_n_0\,
      D => \Data_Out_int[15]_i_1_n_0\,
      Q => \Data_Out_int_reg_n_0_[15]\,
      R => '0'
    );
\Data_Out_int_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \Data_Out_int[31]_i_1_n_0\,
      D => \Data_Out_int[16]_i_1_n_0\,
      Q => \Data_Out_int_reg_n_0_[16]\,
      R => '0'
    );
\Data_Out_int_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \Data_Out_int[31]_i_1_n_0\,
      D => \Data_Out_int[17]_i_1_n_0\,
      Q => \Data_Out_int_reg_n_0_[17]\,
      R => '0'
    );
\Data_Out_int_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \Data_Out_int[31]_i_1_n_0\,
      D => \Data_Out_int[18]_i_1_n_0\,
      Q => \Data_Out_int_reg_n_0_[18]\,
      R => '0'
    );
\Data_Out_int_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \Data_Out_int[31]_i_1_n_0\,
      D => \Data_Out_int[19]_i_1_n_0\,
      Q => \Data_Out_int_reg_n_0_[19]\,
      R => '0'
    );
\Data_Out_int_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \Data_Out_int[31]_i_1_n_0\,
      D => \Data_Out_int[20]_i_1_n_0\,
      Q => \Data_Out_int_reg_n_0_[20]\,
      R => '0'
    );
\Data_Out_int_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \Data_Out_int[31]_i_1_n_0\,
      D => \Data_Out_int[21]_i_1_n_0\,
      Q => \Data_Out_int_reg_n_0_[21]\,
      R => '0'
    );
\Data_Out_int_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \Data_Out_int[31]_i_1_n_0\,
      D => \Data_Out_int[22]_i_1_n_0\,
      Q => \Data_Out_int_reg_n_0_[22]\,
      R => '0'
    );
\Data_Out_int_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \Data_Out_int[31]_i_1_n_0\,
      D => \Data_Out_int[23]_i_1_n_0\,
      Q => \Data_Out_int_reg_n_0_[23]\,
      R => '0'
    );
\Data_Out_int_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \Data_Out_int[31]_i_1_n_0\,
      D => \Data_Out_int[24]_i_1_n_0\,
      Q => \Data_Out_int_reg_n_0_[24]\,
      R => '0'
    );
\Data_Out_int_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \Data_Out_int[31]_i_1_n_0\,
      D => \Data_Out_int[25]_i_1_n_0\,
      Q => \Data_Out_int_reg_n_0_[25]\,
      R => '0'
    );
\Data_Out_int_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \Data_Out_int[31]_i_1_n_0\,
      D => \Data_Out_int[26]_i_1_n_0\,
      Q => \Data_Out_int_reg_n_0_[26]\,
      R => '0'
    );
\Data_Out_int_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \Data_Out_int[31]_i_1_n_0\,
      D => \Data_Out_int[27]_i_1_n_0\,
      Q => \Data_Out_int_reg_n_0_[27]\,
      R => '0'
    );
\Data_Out_int_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \Data_Out_int[31]_i_1_n_0\,
      D => \Data_Out_int[28]_i_1_n_0\,
      Q => \Data_Out_int_reg_n_0_[28]\,
      R => '0'
    );
\Data_Out_int_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \Data_Out_int[31]_i_1_n_0\,
      D => \Data_Out_int[29]_i_1_n_0\,
      Q => \Data_Out_int_reg_n_0_[29]\,
      R => '0'
    );
\Data_Out_int_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \Data_Out_int[31]_i_1_n_0\,
      D => \Data_Out_int[30]_i_1_n_0\,
      Q => \Data_Out_int_reg_n_0_[30]\,
      R => '0'
    );
\Data_Out_int_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \Data_Out_int[31]_i_1_n_0\,
      D => \Data_Out_int[31]_i_2_n_0\,
      Q => ac_dac_sdata,
      R => '0'
    );
LRCLK_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF4000"
    )
        port map (
      I0 => LRCLK_i_2_n_0,
      I1 => Cnt_Bclk0,
      I2 => \^bclk_int_reg_0\,
      I3 => Cnt_Lrclk(4),
      I4 => \^lrclk_reg_0\,
      O => LRCLK_i_1_n_0
    );
LRCLK_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => Cnt_Lrclk(2),
      I1 => Cnt_Lrclk(0),
      I2 => Cnt_Lrclk(1),
      I3 => Cnt_Lrclk(3),
      O => LRCLK_i_2_n_0
    );
LRCLK_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => LRCLK_i_1_n_0,
      Q => \^lrclk_reg_0\,
      R => \^sr\(0)
    );
\ac_lrclk_count[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A20"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => \ac_lrclk_count_reg[2]_0\,
      I2 => \^lrclk_reg_0\,
      I3 => \ac_lrclk_count__0\(0),
      O => s00_axi_aresetn_1
    );
\ac_lrclk_count[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A20AA00"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => \ac_lrclk_count_reg[2]_0\,
      I2 => \^lrclk_reg_0\,
      I3 => \ac_lrclk_count__0\(1),
      I4 => \ac_lrclk_count__0\(0),
      O => s00_axi_aresetn_2
    );
\ac_lrclk_count[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A20AA00AA00AA00"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => \ac_lrclk_count_reg[2]_0\,
      I2 => \^lrclk_reg_0\,
      I3 => \ac_lrclk_count__0\(2),
      I4 => \ac_lrclk_count__0\(1),
      I5 => \ac_lrclk_count__0\(0),
      O => s00_axi_aresetn_0
    );
ac_lrclk_sig_prev_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \ac_lrclk_count_reg[2]_0\,
      I1 => s00_axi_aresetn,
      I2 => \^lrclk_reg_0\,
      O => ac_lrclk_sig_prev_reg
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => \^sr\(0)
    );
\i__carry_i_1__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Cnt_Bclk_reg(3),
      I1 => Cnt_Bclk_reg(4),
      O => \i__carry_i_1__4_n_0\
    );
\i__carry_i_2__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => Cnt_Bclk_reg(2),
      I1 => Cnt_Bclk_reg(1),
      I2 => Cnt_Bclk_reg(0),
      O => \i__carry_i_2__3_n_0\
    );
ready_sig_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0FFFF00200000"
    )
        port map (
      I0 => \ac_lrclk_count__0\(2),
      I1 => ready_sig_reg,
      I2 => \^lrclk_reg_0\,
      I3 => \ac_lrclk_count_reg[2]_0\,
      I4 => s00_axi_aresetn,
      I5 => ready_sig_reg_0,
      O => \ac_lrclk_count_reg[2]\
    );
\toADCL[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => \^q\(2),
      I1 => switch(0),
      I2 => DOADO(15),
      O => fromADCL(15)
    );
\toADCR[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => \^d_r_o_int_reg[23]_0\(2),
      I1 => switch(0),
      I2 => \toADCR_reg[17]\(15),
      O => fromADCR(15)
    );
\w_Lbus_out[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D_L_O_int(8),
      I1 => switch(0),
      I2 => DOADO(0),
      O => fromADCL(0)
    );
\w_Lbus_out[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D_L_O_int(18),
      I1 => switch(0),
      I2 => DOADO(10),
      O => fromADCL(10)
    );
\w_Lbus_out[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D_L_O_int(19),
      I1 => switch(0),
      I2 => DOADO(11),
      O => fromADCL(11)
    );
\w_Lbus_out[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D_L_O_int(20),
      I1 => switch(0),
      I2 => DOADO(12),
      O => fromADCL(12)
    );
\w_Lbus_out[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D_L_O_int(21),
      I1 => switch(0),
      I2 => DOADO(13),
      O => fromADCL(13)
    );
\w_Lbus_out[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D_L_O_int(22),
      I1 => switch(0),
      I2 => DOADO(14),
      O => fromADCL(14)
    );
\w_Lbus_out[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D_L_O_int(9),
      I1 => switch(0),
      I2 => DOADO(1),
      O => fromADCL(1)
    );
\w_Lbus_out[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D_L_O_int(10),
      I1 => switch(0),
      I2 => DOADO(2),
      O => fromADCL(2)
    );
\w_Lbus_out[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D_L_O_int(11),
      I1 => switch(0),
      I2 => DOADO(3),
      O => fromADCL(3)
    );
\w_Lbus_out[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D_L_O_int(12),
      I1 => switch(0),
      I2 => DOADO(4),
      O => fromADCL(4)
    );
\w_Lbus_out[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D_L_O_int(13),
      I1 => switch(0),
      I2 => DOADO(5),
      O => fromADCL(5)
    );
\w_Lbus_out[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D_L_O_int(14),
      I1 => switch(0),
      I2 => DOADO(6),
      O => fromADCL(6)
    );
\w_Lbus_out[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D_L_O_int(15),
      I1 => switch(0),
      I2 => DOADO(7),
      O => fromADCL(7)
    );
\w_Lbus_out[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D_L_O_int(16),
      I1 => switch(0),
      I2 => DOADO(8),
      O => fromADCL(8)
    );
\w_Lbus_out[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D_L_O_int(17),
      I1 => switch(0),
      I2 => DOADO(9),
      O => fromADCL(9)
    );
\w_Rbus_out[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D_R_O_int(8),
      I1 => switch(0),
      I2 => \toADCR_reg[17]\(0),
      O => fromADCR(0)
    );
\w_Rbus_out[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D_R_O_int(18),
      I1 => switch(0),
      I2 => \toADCR_reg[17]\(10),
      O => fromADCR(10)
    );
\w_Rbus_out[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D_R_O_int(19),
      I1 => switch(0),
      I2 => \toADCR_reg[17]\(11),
      O => fromADCR(11)
    );
\w_Rbus_out[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D_R_O_int(20),
      I1 => switch(0),
      I2 => \toADCR_reg[17]\(12),
      O => fromADCR(12)
    );
\w_Rbus_out[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D_R_O_int(21),
      I1 => switch(0),
      I2 => \toADCR_reg[17]\(13),
      O => fromADCR(13)
    );
\w_Rbus_out[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D_R_O_int(22),
      I1 => switch(0),
      I2 => \toADCR_reg[17]\(14),
      O => fromADCR(14)
    );
\w_Rbus_out[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D_R_O_int(9),
      I1 => switch(0),
      I2 => \toADCR_reg[17]\(1),
      O => fromADCR(1)
    );
\w_Rbus_out[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D_R_O_int(10),
      I1 => switch(0),
      I2 => \toADCR_reg[17]\(2),
      O => fromADCR(2)
    );
\w_Rbus_out[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D_R_O_int(11),
      I1 => switch(0),
      I2 => \toADCR_reg[17]\(3),
      O => fromADCR(3)
    );
\w_Rbus_out[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D_R_O_int(12),
      I1 => switch(0),
      I2 => \toADCR_reg[17]\(4),
      O => fromADCR(4)
    );
\w_Rbus_out[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D_R_O_int(13),
      I1 => switch(0),
      I2 => \toADCR_reg[17]\(5),
      O => fromADCR(5)
    );
\w_Rbus_out[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D_R_O_int(14),
      I1 => switch(0),
      I2 => \toADCR_reg[17]\(6),
      O => fromADCR(6)
    );
\w_Rbus_out[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D_R_O_int(15),
      I1 => switch(0),
      I2 => \toADCR_reg[17]\(7),
      O => fromADCR(7)
    );
\w_Rbus_out[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D_R_O_int(16),
      I1 => switch(0),
      I2 => \toADCR_reg[17]\(8),
      O => fromADCR(8)
    );
\w_Rbus_out[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D_R_O_int(17),
      I1 => switch(0),
      I2 => \toADCR_reg[17]\(9),
      O => fromADCR(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lab2_fsm is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_onehot_state_reg[3]_0\ : out STD_LOGIC;
    w_wrEnbMux : out STD_LOGIC;
    \processQ_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \sdp_bl.ramb18_dp_bl.ram18_bl\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    switch : in STD_LOGIC_VECTOR ( 0 to 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    \FSM_onehot_state_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg[0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    sw : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lab2_fsm;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lab2_fsm is
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[2]_i_1\ : label is "soft_lutpair1";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "waittrigger:0010,storesample:1000,reset:0001,waitready:0100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "waittrigger:0010,storesample:1000,reset:0001,waitready:0100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "waittrigger:0010,storesample:1000,reset:0001,waitready:0100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "waittrigger:0010,storesample:1000,reset:0001,waitready:0100";
  attribute SOFT_HLUTNM of \processQ[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \processQ[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \processQ[9]_i_1\ : label is "soft_lutpair1";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => sw(0),
      I2 => \^q\(1),
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFEEEEEEE"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      I3 => CO(0),
      I4 => \FSM_onehot_state_reg[0]_1\(0),
      I5 => \FSM_onehot_state[3]_i_4_n_0\,
      O => \FSM_onehot_state[3]_i_1_n_0\
    );
\FSM_onehot_state[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => sw(1),
      O => \FSM_onehot_state[3]_i_4_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \FSM_onehot_state[3]_i_1_n_0\,
      D => \FSM_onehot_state_reg[0]_0\(0),
      Q => \^q\(0),
      S => SR(0)
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \FSM_onehot_state[3]_i_1_n_0\,
      D => \^q\(0),
      Q => \FSM_onehot_state_reg_n_0_[1]\,
      R => SR(0)
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \FSM_onehot_state[3]_i_1_n_0\,
      D => \FSM_onehot_state[2]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[2]\,
      R => SR(0)
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \FSM_onehot_state[3]_i_1_n_0\,
      D => \FSM_onehot_state_reg_n_0_[2]\,
      Q => \^q\(1),
      R => SR(0)
    );
\processQ[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \processQ_reg[1]\(0),
      O => D(0)
    );
\processQ[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0220"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \processQ_reg[1]\(0),
      I3 => \processQ_reg[1]\(1),
      O => D(1)
    );
\processQ[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => E(0)
    );
\processQ[9]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"D"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => \FSM_onehot_state_reg[3]_0\
    );
\sdp_bl.ramb18_dp_bl.ram18_bl_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sdp_bl.ramb18_dp_bl.ram18_bl\(0),
      I1 => switch(0),
      I2 => \^q\(1),
      O => w_wrEnbMux
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lec10__parameterized1\ is
  port (
    \FSM_onehot_state_reg[3]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \processQ_reg[1]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    sw : out STD_LOGIC_VECTOR ( 0 to 0 );
    ADDRBWRADDR : out STD_LOGIC_VECTOR ( 9 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \processQ_reg[9]_0\ : in STD_LOGIC;
    \sdp_bl.ramb18_dp_bl.ram18_bl\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    switch : in STD_LOGIC_VECTOR ( 0 to 0 );
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lec10__parameterized1\ : entity is "lec10";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lec10__parameterized1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lec10__parameterized1\ is
  signal \FSM_onehot_state[0]_i_2_n_0\ : STD_LOGIC;
  signal processQ : STD_LOGIC_VECTOR ( 9 downto 2 );
  signal \processQ[5]_i_2_n_0\ : STD_LOGIC;
  signal \processQ[9]_i_3_n_0\ : STD_LOGIC;
  signal \^processq_reg[1]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal writeCntr : STD_LOGIC_VECTOR ( 9 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \processQ[6]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \processQ[7]_i_1\ : label is "soft_lutpair57";
begin
  \processQ_reg[1]_0\(1 downto 0) <= \^processq_reg[1]_0\(1 downto 0);
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => Q(1),
      I1 => \FSM_onehot_state[0]_i_2_n_0\,
      I2 => writeCntr(6),
      I3 => writeCntr(8),
      I4 => writeCntr(7),
      I5 => writeCntr(9),
      O => \FSM_onehot_state_reg[3]\(0)
    );
\FSM_onehot_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => \^processq_reg[1]_0\(1),
      I1 => \^processq_reg[1]_0\(0),
      I2 => writeCntr(2),
      I3 => writeCntr(3),
      I4 => writeCntr(5),
      I5 => writeCntr(4),
      O => \FSM_onehot_state[0]_i_2_n_0\
    );
\FSM_onehot_state[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => writeCntr(9),
      I1 => writeCntr(7),
      I2 => writeCntr(8),
      I3 => writeCntr(6),
      I4 => \FSM_onehot_state[0]_i_2_n_0\,
      O => sw(0)
    );
\processQ[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF6AFFFF"
    )
        port map (
      I0 => writeCntr(2),
      I1 => \^processq_reg[1]_0\(0),
      I2 => \^processq_reg[1]_0\(1),
      I3 => Q(0),
      I4 => Q(1),
      O => processQ(2)
    );
\processQ[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"007F000000800000"
    )
        port map (
      I0 => \^processq_reg[1]_0\(1),
      I1 => \^processq_reg[1]_0\(0),
      I2 => writeCntr(2),
      I3 => Q(0),
      I4 => Q(1),
      I5 => writeCntr(3),
      O => processQ(3)
    );
\processQ[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF6AAAAAAA"
    )
        port map (
      I0 => writeCntr(4),
      I1 => writeCntr(2),
      I2 => \^processq_reg[1]_0\(0),
      I3 => \^processq_reg[1]_0\(1),
      I4 => writeCntr(3),
      I5 => \processQ_reg[9]_0\,
      O => processQ(4)
    );
\processQ[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2010"
    )
        port map (
      I0 => \processQ[5]_i_2_n_0\,
      I1 => Q(0),
      I2 => Q(1),
      I3 => writeCntr(5),
      O => processQ(5)
    );
\processQ[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => writeCntr(3),
      I1 => \^processq_reg[1]_0\(1),
      I2 => \^processq_reg[1]_0\(0),
      I3 => writeCntr(2),
      I4 => writeCntr(4),
      O => \processQ[5]_i_2_n_0\
    );
\processQ[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2010"
    )
        port map (
      I0 => \processQ[9]_i_3_n_0\,
      I1 => Q(0),
      I2 => Q(1),
      I3 => writeCntr(6),
      O => processQ(6)
    );
\processQ[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0B000400"
    )
        port map (
      I0 => \processQ[9]_i_3_n_0\,
      I1 => writeCntr(6),
      I2 => Q(0),
      I3 => Q(1),
      I4 => writeCntr(7),
      O => processQ(7)
    );
\processQ[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00DF000000200000"
    )
        port map (
      I0 => writeCntr(6),
      I1 => \processQ[9]_i_3_n_0\,
      I2 => writeCntr(7),
      I3 => Q(0),
      I4 => Q(1),
      I5 => writeCntr(8),
      O => processQ(8)
    );
\processQ[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000DFFF00002000"
    )
        port map (
      I0 => writeCntr(7),
      I1 => \processQ[9]_i_3_n_0\,
      I2 => writeCntr(6),
      I3 => writeCntr(8),
      I4 => \processQ_reg[9]_0\,
      I5 => writeCntr(9),
      O => processQ(9)
    );
\processQ[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => writeCntr(4),
      I1 => writeCntr(2),
      I2 => \^processq_reg[1]_0\(0),
      I3 => \^processq_reg[1]_0\(1),
      I4 => writeCntr(3),
      I5 => writeCntr(5),
      O => \processQ[9]_i_3_n_0\
    );
\processQ_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => D(0),
      Q => \^processq_reg[1]_0\(0),
      R => SS(0)
    );
\processQ_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => D(1),
      Q => \^processq_reg[1]_0\(1),
      R => SS(0)
    );
\processQ_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => processQ(2),
      Q => writeCntr(2),
      S => SS(0)
    );
\processQ_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => processQ(3),
      Q => writeCntr(3),
      R => SS(0)
    );
\processQ_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => processQ(4),
      Q => writeCntr(4),
      S => SS(0)
    );
\processQ_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => processQ(5),
      Q => writeCntr(5),
      R => SS(0)
    );
\processQ_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => processQ(6),
      Q => writeCntr(6),
      R => SS(0)
    );
\processQ_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => processQ(7),
      Q => writeCntr(7),
      R => SS(0)
    );
\processQ_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => processQ(8),
      Q => writeCntr(8),
      R => SS(0)
    );
\processQ_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => processQ(9),
      Q => writeCntr(9),
      R => SS(0)
    );
\sdp_bl.ramb18_dp_bl.ram18_bl_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \sdp_bl.ramb18_dp_bl.ram18_bl\(1),
      I1 => \^processq_reg[1]_0\(1),
      I2 => switch(0),
      O => ADDRBWRADDR(1)
    );
\sdp_bl.ramb18_dp_bl.ram18_bl_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \sdp_bl.ramb18_dp_bl.ram18_bl\(0),
      I1 => \^processq_reg[1]_0\(0),
      I2 => switch(0),
      O => ADDRBWRADDR(0)
    );
\sdp_bl.ramb18_dp_bl.ram18_bl_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \sdp_bl.ramb18_dp_bl.ram18_bl\(9),
      I1 => writeCntr(9),
      I2 => switch(0),
      O => ADDRBWRADDR(9)
    );
\sdp_bl.ramb18_dp_bl.ram18_bl_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \sdp_bl.ramb18_dp_bl.ram18_bl\(8),
      I1 => writeCntr(8),
      I2 => switch(0),
      O => ADDRBWRADDR(8)
    );
\sdp_bl.ramb18_dp_bl.ram18_bl_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \sdp_bl.ramb18_dp_bl.ram18_bl\(7),
      I1 => writeCntr(7),
      I2 => switch(0),
      O => ADDRBWRADDR(7)
    );
\sdp_bl.ramb18_dp_bl.ram18_bl_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \sdp_bl.ramb18_dp_bl.ram18_bl\(6),
      I1 => writeCntr(6),
      I2 => switch(0),
      O => ADDRBWRADDR(6)
    );
\sdp_bl.ramb18_dp_bl.ram18_bl_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \sdp_bl.ramb18_dp_bl.ram18_bl\(5),
      I1 => writeCntr(5),
      I2 => switch(0),
      O => ADDRBWRADDR(5)
    );
\sdp_bl.ramb18_dp_bl.ram18_bl_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \sdp_bl.ramb18_dp_bl.ram18_bl\(4),
      I1 => writeCntr(4),
      I2 => switch(0),
      O => ADDRBWRADDR(4)
    );
\sdp_bl.ramb18_dp_bl.ram18_bl_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \sdp_bl.ramb18_dp_bl.ram18_bl\(3),
      I1 => writeCntr(3),
      I2 => switch(0),
      O => ADDRBWRADDR(3)
    );
\sdp_bl.ramb18_dp_bl.ram18_bl_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \sdp_bl.ramb18_dp_bl.ram18_bl\(2),
      I1 => writeCntr(2),
      I2 => switch(0),
      O => ADDRBWRADDR(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_scopeFace is
  port (
    \processQ_reg[8]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \processQ_reg[8]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \processQ_reg[8]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \processQ_reg[8]_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \processQ_reg[9]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \processQ_reg[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \processQ_reg[9]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \processQ_reg[9]_1\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    O : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \processQ_reg[1]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \processQ_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \processQ_reg[9]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \processQ_reg[9]_3\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \processQ_reg[9]_4\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \processQ_reg[9]_5\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \triggerTime_reg[9]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \processQ_reg[1]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \processQ_reg[9]_6\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    \triggerVolt_reg[9]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \processQ_reg[1]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \processQ_reg[0]_0\ : out STD_LOGIC;
    \processQ_reg[1]_3\ : out STD_LOGIC;
    \processQ_reg[7]\ : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \is_hash_mark2_inferred__0/i__carry__0_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \is_hash_mark2_inferred__0/i__carry__1_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \i___21_carry_i_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \i___30_carry_i_1\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \dc_bias[3]_i_18__0_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \dc_bias[3]_i_40_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \dc_bias[3]_i_41_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \i___12_carry__1_i_1\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \i___12_carry__0_i_4\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \dc_bias[3]_i_51_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \dc_bias[3]_i_23_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \dc_bias[3]_i_52_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    DI : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \is_horizontal_gridline0_carry__0_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    is_horizontal_gridline1 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \is_horizontal_gridline0__29_carry_i_5\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \is_horizontal_gridline0__29_carry_i_4\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \is_horizontal_gridline0__29_carry__0_i_5\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \is_horizontal_gridline0__29_carry__0_i_5_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \dc_bias[3]_i_38_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \dc_bias[3]_i_38_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \dc_bias[3]_i_17__0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \dc_bias[3]_i_17__0_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \is_vertical_gridline0_carry__0_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \is_vertical_gridline0_carry__0_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \dc_bias[3]_i_16__0_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \is_vertical_gridline0__20_carry_i_6\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \is_vertical_gridline0__20_carry__0_i_2\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \dc_bias[3]_i_8__0_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \dc_bias[3]_i_8__0_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \dc_bias[3]_i_16__0_1\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \is_trigger_time6_inferred__0/i__carry__0_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \is_trigger_time6_inferred__0/i__carry__0_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \dc_bias[3]_i_58\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \dc_bias[3]_i_58_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \is_trigger_time5_carry__0_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \is_trigger_time5_carry__0_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \dc_bias[3]_i_57\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \dc_bias[3]_i_57_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \dc_bias[3]_i_28\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \dc_bias[3]_i_28_0\ : in STD_LOGIC;
    \dc_bias[3]_i_28_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \dc_bias[3]_i_28_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \is_trigger_volt6_inferred__0/i__carry__0_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \is_trigger_volt6_inferred__0/i__carry__0_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \dc_bias[3]_i_61\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \dc_bias[3]_i_61_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \is_trigger_volt5_carry__0_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \is_trigger_volt5_carry__0_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \dc_bias[3]_i_61_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \dc_bias[3]_i_61_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \dc_bias[3]_i_14\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \dc_bias[3]_i_14_0\ : in STD_LOGIC;
    \dc_bias[3]_i_14_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \dc_bias[3]_i_14_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \dc_bias[3]_i_4__0\ : in STD_LOGIC;
    \dc_bias[3]_i_4__0_0\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_scopeFace;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_scopeFace is
  signal \dc_bias[3]_i_16__0_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_18__0_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_39_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_40_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_41_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_50_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_51_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_52_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_69_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_70_n_0\ : STD_LOGIC;
  signal \is_hash_mark2_inferred__0/i___21_carry_n_1\ : STD_LOGIC;
  signal \is_hash_mark2_inferred__0/i___21_carry_n_2\ : STD_LOGIC;
  signal \is_hash_mark2_inferred__0/i___21_carry_n_3\ : STD_LOGIC;
  signal \is_hash_mark2_inferred__0/i___30_carry__0_n_0\ : STD_LOGIC;
  signal \is_hash_mark2_inferred__0/i___30_carry__0_n_1\ : STD_LOGIC;
  signal \is_hash_mark2_inferred__0/i___30_carry__0_n_2\ : STD_LOGIC;
  signal \is_hash_mark2_inferred__0/i___30_carry__0_n_3\ : STD_LOGIC;
  signal \is_hash_mark2_inferred__0/i___30_carry__0_n_4\ : STD_LOGIC;
  signal \is_hash_mark2_inferred__0/i___30_carry__0_n_5\ : STD_LOGIC;
  signal \is_hash_mark2_inferred__0/i___30_carry__0_n_6\ : STD_LOGIC;
  signal \is_hash_mark2_inferred__0/i___30_carry__0_n_7\ : STD_LOGIC;
  signal \is_hash_mark2_inferred__0/i___30_carry__1_n_3\ : STD_LOGIC;
  signal \is_hash_mark2_inferred__0/i___30_carry__1_n_6\ : STD_LOGIC;
  signal \is_hash_mark2_inferred__0/i___30_carry__1_n_7\ : STD_LOGIC;
  signal \is_hash_mark2_inferred__0/i___30_carry_n_0\ : STD_LOGIC;
  signal \is_hash_mark2_inferred__0/i___30_carry_n_1\ : STD_LOGIC;
  signal \is_hash_mark2_inferred__0/i___30_carry_n_2\ : STD_LOGIC;
  signal \is_hash_mark2_inferred__0/i___30_carry_n_3\ : STD_LOGIC;
  signal \is_hash_mark2_inferred__0/i___30_carry_n_4\ : STD_LOGIC;
  signal \is_hash_mark2_inferred__0/i___30_carry_n_5\ : STD_LOGIC;
  signal \is_hash_mark2_inferred__0/i___30_carry_n_6\ : STD_LOGIC;
  signal \is_hash_mark2_inferred__0/i___30_carry_n_7\ : STD_LOGIC;
  signal \is_hash_mark2_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \is_hash_mark2_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \is_hash_mark2_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \is_hash_mark2_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \is_hash_mark2_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \is_hash_mark2_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \is_hash_mark2_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \is_hash_mark2_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \is_hash_mark2_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \is_hash_mark2_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \is_hash_mark2_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \is_hash_mark2_inferred__2/i___12_carry__0_n_0\ : STD_LOGIC;
  signal \is_hash_mark2_inferred__2/i___12_carry__0_n_1\ : STD_LOGIC;
  signal \is_hash_mark2_inferred__2/i___12_carry__0_n_2\ : STD_LOGIC;
  signal \is_hash_mark2_inferred__2/i___12_carry__0_n_3\ : STD_LOGIC;
  signal \is_hash_mark2_inferred__2/i___12_carry__0_n_4\ : STD_LOGIC;
  signal \is_hash_mark2_inferred__2/i___12_carry__0_n_5\ : STD_LOGIC;
  signal \is_hash_mark2_inferred__2/i___12_carry__0_n_6\ : STD_LOGIC;
  signal \is_hash_mark2_inferred__2/i___12_carry__0_n_7\ : STD_LOGIC;
  signal \is_hash_mark2_inferred__2/i___12_carry__1_n_7\ : STD_LOGIC;
  signal \is_hash_mark2_inferred__2/i___12_carry_n_0\ : STD_LOGIC;
  signal \is_hash_mark2_inferred__2/i___12_carry_n_1\ : STD_LOGIC;
  signal \is_hash_mark2_inferred__2/i___12_carry_n_2\ : STD_LOGIC;
  signal \is_hash_mark2_inferred__2/i___12_carry_n_3\ : STD_LOGIC;
  signal \is_hash_mark2_inferred__2/i___12_carry_n_4\ : STD_LOGIC;
  signal \is_hash_mark2_inferred__2/i___12_carry_n_5\ : STD_LOGIC;
  signal \is_hash_mark2_inferred__2/i___12_carry_n_6\ : STD_LOGIC;
  signal \is_hash_mark2_inferred__2/i___12_carry_n_7\ : STD_LOGIC;
  signal \is_hash_mark2_inferred__2/i___2_carry_n_0\ : STD_LOGIC;
  signal \is_hash_mark2_inferred__2/i___2_carry_n_1\ : STD_LOGIC;
  signal \is_hash_mark2_inferred__2/i___2_carry_n_2\ : STD_LOGIC;
  signal \is_hash_mark2_inferred__2/i___2_carry_n_3\ : STD_LOGIC;
  signal \is_horizontal_gridline0__23_carry_n_2\ : STD_LOGIC;
  signal \is_horizontal_gridline0__23_carry_n_3\ : STD_LOGIC;
  signal \is_horizontal_gridline0__29_carry__0_n_2\ : STD_LOGIC;
  signal \is_horizontal_gridline0__29_carry__0_n_3\ : STD_LOGIC;
  signal \is_horizontal_gridline0__29_carry_n_0\ : STD_LOGIC;
  signal \is_horizontal_gridline0__29_carry_n_1\ : STD_LOGIC;
  signal \is_horizontal_gridline0__29_carry_n_2\ : STD_LOGIC;
  signal \is_horizontal_gridline0__29_carry_n_3\ : STD_LOGIC;
  signal \is_horizontal_gridline0__29_carry_n_4\ : STD_LOGIC;
  signal \is_horizontal_gridline0__29_carry_n_5\ : STD_LOGIC;
  signal \is_horizontal_gridline0__29_carry_n_6\ : STD_LOGIC;
  signal \is_horizontal_gridline0__29_carry_n_7\ : STD_LOGIC;
  signal \is_horizontal_gridline0_carry__0_n_0\ : STD_LOGIC;
  signal \is_horizontal_gridline0_carry__0_n_1\ : STD_LOGIC;
  signal \is_horizontal_gridline0_carry__0_n_2\ : STD_LOGIC;
  signal \is_horizontal_gridline0_carry__0_n_3\ : STD_LOGIC;
  signal \is_horizontal_gridline0_carry__1_n_2\ : STD_LOGIC;
  signal \is_horizontal_gridline0_carry__1_n_3\ : STD_LOGIC;
  signal is_horizontal_gridline0_carry_n_0 : STD_LOGIC;
  signal is_horizontal_gridline0_carry_n_1 : STD_LOGIC;
  signal is_horizontal_gridline0_carry_n_2 : STD_LOGIC;
  signal is_horizontal_gridline0_carry_n_3 : STD_LOGIC;
  signal is_trigger_time1_carry_n_1 : STD_LOGIC;
  signal is_trigger_time1_carry_n_2 : STD_LOGIC;
  signal is_trigger_time1_carry_n_3 : STD_LOGIC;
  signal is_trigger_time5_carry_n_0 : STD_LOGIC;
  signal is_trigger_time5_carry_n_1 : STD_LOGIC;
  signal is_trigger_time5_carry_n_2 : STD_LOGIC;
  signal is_trigger_time5_carry_n_3 : STD_LOGIC;
  signal \is_trigger_time6_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \is_trigger_time6_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \is_trigger_time6_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \is_trigger_time6_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \is_trigger_time6_inferred__2/i__carry_n_1\ : STD_LOGIC;
  signal \is_trigger_time6_inferred__2/i__carry_n_2\ : STD_LOGIC;
  signal \is_trigger_time6_inferred__2/i__carry_n_3\ : STD_LOGIC;
  signal is_trigger_volt1_carry_n_1 : STD_LOGIC;
  signal is_trigger_volt1_carry_n_2 : STD_LOGIC;
  signal is_trigger_volt1_carry_n_3 : STD_LOGIC;
  signal is_trigger_volt5_carry_n_0 : STD_LOGIC;
  signal is_trigger_volt5_carry_n_1 : STD_LOGIC;
  signal is_trigger_volt5_carry_n_2 : STD_LOGIC;
  signal is_trigger_volt5_carry_n_3 : STD_LOGIC;
  signal \is_trigger_volt6_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \is_trigger_volt6_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \is_trigger_volt6_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \is_trigger_volt6_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \is_trigger_volt6_inferred__2/i__carry_n_1\ : STD_LOGIC;
  signal \is_trigger_volt6_inferred__2/i__carry_n_2\ : STD_LOGIC;
  signal \is_trigger_volt6_inferred__2/i__carry_n_3\ : STD_LOGIC;
  signal \is_vertical_gridline0__20_carry__0_n_3\ : STD_LOGIC;
  signal \is_vertical_gridline0__20_carry__0_n_6\ : STD_LOGIC;
  signal \is_vertical_gridline0__20_carry__0_n_7\ : STD_LOGIC;
  signal \is_vertical_gridline0__20_carry_n_0\ : STD_LOGIC;
  signal \is_vertical_gridline0__20_carry_n_1\ : STD_LOGIC;
  signal \is_vertical_gridline0__20_carry_n_2\ : STD_LOGIC;
  signal \is_vertical_gridline0__20_carry_n_3\ : STD_LOGIC;
  signal \is_vertical_gridline0__20_carry_n_4\ : STD_LOGIC;
  signal \is_vertical_gridline0__20_carry_n_5\ : STD_LOGIC;
  signal \is_vertical_gridline0__20_carry_n_6\ : STD_LOGIC;
  signal \is_vertical_gridline0__20_carry_n_7\ : STD_LOGIC;
  signal \is_vertical_gridline0_carry__0_n_0\ : STD_LOGIC;
  signal \is_vertical_gridline0_carry__0_n_1\ : STD_LOGIC;
  signal \is_vertical_gridline0_carry__0_n_2\ : STD_LOGIC;
  signal \is_vertical_gridline0_carry__0_n_3\ : STD_LOGIC;
  signal \is_vertical_gridline0_carry__1_n_2\ : STD_LOGIC;
  signal \is_vertical_gridline0_carry__1_n_3\ : STD_LOGIC;
  signal is_vertical_gridline0_carry_n_0 : STD_LOGIC;
  signal is_vertical_gridline0_carry_n_1 : STD_LOGIC;
  signal is_vertical_gridline0_carry_n_2 : STD_LOGIC;
  signal is_vertical_gridline0_carry_n_3 : STD_LOGIC;
  signal \^processq_reg[1]_0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^processq_reg[8]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_is_hash_mark2_inferred__0/i___30_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_is_hash_mark2_inferred__0/i___30_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_is_hash_mark2_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_is_hash_mark2_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_is_hash_mark2_inferred__0/i__carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_is_hash_mark2_inferred__0/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_is_hash_mark2_inferred__2/i___12_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_is_hash_mark2_inferred__2/i___12_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_is_hash_mark2_inferred__2/i___2_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_is_hash_mark2_inferred__2/i___2_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_is_horizontal_gridline0__23_carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_is_horizontal_gridline0__23_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_is_horizontal_gridline0__29_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_is_horizontal_gridline0__29_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_is_horizontal_gridline0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_is_horizontal_gridline0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_is_horizontal_gridline0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_is_horizontal_gridline0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_is_trigger_time1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_is_trigger_time5_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_is_trigger_time5_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_is_trigger_time5_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_is_trigger_time6_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_is_trigger_time6_inferred__0/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_is_trigger_time6_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_is_trigger_time6_inferred__2/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_is_trigger_volt1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_is_trigger_volt5_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_is_trigger_volt5_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_is_trigger_volt5_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_is_trigger_volt6_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_is_trigger_volt6_inferred__0/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_is_trigger_volt6_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_is_trigger_volt6_inferred__2/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_is_vertical_gridline0__20_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_is_vertical_gridline0__20_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_is_vertical_gridline0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_is_vertical_gridline0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_is_vertical_gridline0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_is_vertical_gridline0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \is_hash_mark2_inferred__0/i___30_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \is_hash_mark2_inferred__0/i___30_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \is_hash_mark2_inferred__0/i___30_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \is_hash_mark2_inferred__0/i__carry\ : label is 35;
  attribute ADDER_THRESHOLD of \is_hash_mark2_inferred__0/i__carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \is_hash_mark2_inferred__0/i__carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \is_hash_mark2_inferred__2/i___12_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \is_hash_mark2_inferred__2/i___12_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \is_hash_mark2_inferred__2/i___12_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \is_horizontal_gridline0__29_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \is_horizontal_gridline0__29_carry__0\ : label is 35;
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of is_trigger_time5_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \is_trigger_time5_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \is_trigger_time6_inferred__0/i__carry\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \is_trigger_time6_inferred__0/i__carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \is_trigger_time6_inferred__2/i__carry\ : label is 11;
  attribute COMPARATOR_THRESHOLD of is_trigger_volt5_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \is_trigger_volt5_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \is_trigger_volt6_inferred__0/i__carry\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \is_trigger_volt6_inferred__0/i__carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \is_trigger_volt6_inferred__2/i__carry\ : label is 11;
  attribute ADDER_THRESHOLD of \is_vertical_gridline0__20_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \is_vertical_gridline0__20_carry__0\ : label is 35;
begin
  \processQ_reg[1]_0\(2 downto 0) <= \^processq_reg[1]_0\(2 downto 0);
  \processQ_reg[8]\(1 downto 0) <= \^processq_reg[8]\(1 downto 0);
\dc_bias[3]_i_16__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5FFFFFFE"
    )
        port map (
      I0 => \is_vertical_gridline0__20_carry_n_4\,
      I1 => \is_vertical_gridline0__20_carry__0_n_6\,
      I2 => \is_vertical_gridline0__20_carry__0_n_7\,
      I3 => \is_vertical_gridline0__20_carry_n_5\,
      I4 => \is_vertical_gridline0__20_carry_n_6\,
      O => \dc_bias[3]_i_16__0_n_0\
    );
\dc_bias[3]_i_18__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFA108"
    )
        port map (
      I0 => \is_hash_mark2_inferred__0/i___30_carry_n_6\,
      I1 => \is_hash_mark2_inferred__0/i___30_carry_n_7\,
      I2 => \dc_bias[3]_i_39_n_0\,
      I3 => \is_hash_mark2_inferred__0/i___30_carry_n_5\,
      I4 => \dc_bias[3]_i_40_n_0\,
      I5 => \dc_bias[3]_i_41_n_0\,
      O => \dc_bias[3]_i_18__0_n_0\
    );
\dc_bias[3]_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF4"
    )
        port map (
      I0 => \dc_bias[3]_i_50_n_0\,
      I1 => \is_hash_mark2_inferred__2/i___12_carry__0_n_7\,
      I2 => \dc_bias[3]_i_51_n_0\,
      I3 => \dc_bias[3]_i_52_n_0\,
      O => \processQ_reg[7]\
    );
\dc_bias[3]_i_38\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFFFEFEFFFE"
    )
        port map (
      I0 => \is_horizontal_gridline0__29_carry_n_5\,
      I1 => \is_horizontal_gridline0__29_carry_n_4\,
      I2 => \is_horizontal_gridline0__29_carry_n_7\,
      I3 => \is_horizontal_gridline0__29_carry_n_6\,
      I4 => \^processq_reg[1]_0\(1),
      I5 => \^processq_reg[1]_0\(0),
      O => \processQ_reg[1]_3\
    );
\dc_bias[3]_i_39\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00005557"
    )
        port map (
      I0 => \is_hash_mark2_inferred__0/i___30_carry__1_n_7\,
      I1 => \dc_bias[3]_i_69_n_0\,
      I2 => \is_hash_mark2_inferred__0/i___30_carry__0_n_5\,
      I3 => \is_hash_mark2_inferred__0/i___30_carry__0_n_4\,
      I4 => \is_hash_mark2_inferred__0/i___30_carry__1_n_6\,
      O => \dc_bias[3]_i_39_n_0\
    );
\dc_bias[3]_i_40\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAAAA777FEEEA"
    )
        port map (
      I0 => \is_hash_mark2_inferred__0/i___30_carry__0_n_7\,
      I1 => \is_hash_mark2_inferred__0/i___30_carry_n_5\,
      I2 => \is_hash_mark2_inferred__0/i___30_carry_n_7\,
      I3 => \is_hash_mark2_inferred__0/i___30_carry_n_6\,
      I4 => \is_hash_mark2_inferred__0/i___30_carry_n_4\,
      I5 => \dc_bias[3]_i_39_n_0\,
      O => \dc_bias[3]_i_40_n_0\
    );
\dc_bias[3]_i_41\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFD7FFFFFFD6E"
    )
        port map (
      I0 => \is_hash_mark2_inferred__0/i___30_carry__1_n_7\,
      I1 => \is_hash_mark2_inferred__0/i___30_carry__0_n_6\,
      I2 => \dc_bias[3]_i_70_n_0\,
      I3 => \is_hash_mark2_inferred__0/i___30_carry__0_n_5\,
      I4 => \is_hash_mark2_inferred__0/i___30_carry__0_n_4\,
      I5 => \is_hash_mark2_inferred__0/i___30_carry__1_n_6\,
      O => \dc_bias[3]_i_41_n_0\
    );
\dc_bias[3]_i_50\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8080808080808000"
    )
        port map (
      I0 => \is_hash_mark2_inferred__2/i___12_carry__0_n_5\,
      I1 => \is_hash_mark2_inferred__2/i___12_carry__0_n_4\,
      I2 => \is_hash_mark2_inferred__2/i___12_carry_n_4\,
      I3 => \is_hash_mark2_inferred__2/i___12_carry_n_6\,
      I4 => \is_hash_mark2_inferred__2/i___12_carry_n_7\,
      I5 => \is_hash_mark2_inferred__2/i___12_carry_n_5\,
      O => \dc_bias[3]_i_50_n_0\
    );
\dc_bias[3]_i_51\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAAAEAEA"
    )
        port map (
      I0 => \is_hash_mark2_inferred__2/i___12_carry__0_n_6\,
      I1 => \is_hash_mark2_inferred__2/i___12_carry_n_6\,
      I2 => \is_hash_mark2_inferred__2/i___12_carry_n_5\,
      I3 => \is_hash_mark2_inferred__2/i___12_carry_n_7\,
      I4 => \is_hash_mark2_inferred__2/i___12_carry__0_n_7\,
      O => \dc_bias[3]_i_51_n_0\
    );
\dc_bias[3]_i_52\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFFE"
    )
        port map (
      I0 => \is_hash_mark2_inferred__2/i___12_carry__0_n_5\,
      I1 => \is_hash_mark2_inferred__2/i___12_carry__0_n_4\,
      I2 => \is_hash_mark2_inferred__2/i___12_carry_n_4\,
      I3 => \is_hash_mark2_inferred__2/i___12_carry__1_n_7\,
      I4 => \is_hash_mark2_inferred__2/i___12_carry__0_n_7\,
      O => \dc_bias[3]_i_52_n_0\
    );
\dc_bias[3]_i_69\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8880000000000000"
    )
        port map (
      I0 => \is_hash_mark2_inferred__0/i___30_carry__0_n_6\,
      I1 => \is_hash_mark2_inferred__0/i___30_carry_n_4\,
      I2 => \is_hash_mark2_inferred__0/i___30_carry_n_6\,
      I3 => \is_hash_mark2_inferred__0/i___30_carry_n_7\,
      I4 => \is_hash_mark2_inferred__0/i___30_carry_n_5\,
      I5 => \is_hash_mark2_inferred__0/i___30_carry__0_n_7\,
      O => \dc_bias[3]_i_69_n_0\
    );
\dc_bias[3]_i_70\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88800000"
    )
        port map (
      I0 => \is_hash_mark2_inferred__0/i___30_carry__0_n_7\,
      I1 => \is_hash_mark2_inferred__0/i___30_carry_n_5\,
      I2 => \is_hash_mark2_inferred__0/i___30_carry_n_7\,
      I3 => \is_hash_mark2_inferred__0/i___30_carry_n_6\,
      I4 => \is_hash_mark2_inferred__0/i___30_carry_n_4\,
      O => \dc_bias[3]_i_70_n_0\
    );
\dc_bias[3]_i_8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF01FFFFFF01FF01"
    )
        port map (
      I0 => \is_vertical_gridline0__20_carry_n_7\,
      I1 => Q(0),
      I2 => \dc_bias[3]_i_16__0_n_0\,
      I3 => \dc_bias[3]_i_4__0\,
      I4 => \dc_bias[3]_i_18__0_n_0\,
      I5 => \dc_bias[3]_i_4__0_0\,
      O => \processQ_reg[0]_0\
    );
\is_hash_mark2_inferred__0/i___21_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \processQ_reg[8]_0\(0),
      CO(2) => \is_hash_mark2_inferred__0/i___21_carry_n_1\,
      CO(1) => \is_hash_mark2_inferred__0/i___21_carry_n_2\,
      CO(0) => \is_hash_mark2_inferred__0/i___21_carry_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \^processq_reg[8]\(0),
      DI(1) => \^processq_reg[8]\(0),
      DI(0) => \^processq_reg[8]\(0),
      O(3 downto 0) => \processQ_reg[8]_1\(3 downto 0),
      S(3) => \^processq_reg[8]\(1),
      S(2 downto 0) => \i___30_carry_i_1\(2 downto 0)
    );
\is_hash_mark2_inferred__0/i___30_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \is_hash_mark2_inferred__0/i___30_carry_n_0\,
      CO(2) => \is_hash_mark2_inferred__0/i___30_carry_n_1\,
      CO(1) => \is_hash_mark2_inferred__0/i___30_carry_n_2\,
      CO(0) => \is_hash_mark2_inferred__0/i___30_carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => Q(3 downto 0),
      O(3) => \is_hash_mark2_inferred__0/i___30_carry_n_4\,
      O(2) => \is_hash_mark2_inferred__0/i___30_carry_n_5\,
      O(1) => \is_hash_mark2_inferred__0/i___30_carry_n_6\,
      O(0) => \is_hash_mark2_inferred__0/i___30_carry_n_7\,
      S(3 downto 0) => \dc_bias[3]_i_18__0_0\(3 downto 0)
    );
\is_hash_mark2_inferred__0/i___30_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \is_hash_mark2_inferred__0/i___30_carry_n_0\,
      CO(3) => \is_hash_mark2_inferred__0/i___30_carry__0_n_0\,
      CO(2) => \is_hash_mark2_inferred__0/i___30_carry__0_n_1\,
      CO(1) => \is_hash_mark2_inferred__0/i___30_carry__0_n_2\,
      CO(0) => \is_hash_mark2_inferred__0/i___30_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(7 downto 4),
      O(3) => \is_hash_mark2_inferred__0/i___30_carry__0_n_4\,
      O(2) => \is_hash_mark2_inferred__0/i___30_carry__0_n_5\,
      O(1) => \is_hash_mark2_inferred__0/i___30_carry__0_n_6\,
      O(0) => \is_hash_mark2_inferred__0/i___30_carry__0_n_7\,
      S(3 downto 0) => \dc_bias[3]_i_40_0\(3 downto 0)
    );
\is_hash_mark2_inferred__0/i___30_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \is_hash_mark2_inferred__0/i___30_carry__0_n_0\,
      CO(3 downto 1) => \NLW_is_hash_mark2_inferred__0/i___30_carry__1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \is_hash_mark2_inferred__0/i___30_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => Q(8),
      O(3 downto 2) => \NLW_is_hash_mark2_inferred__0/i___30_carry__1_O_UNCONNECTED\(3 downto 2),
      O(1) => \is_hash_mark2_inferred__0/i___30_carry__1_n_6\,
      O(0) => \is_hash_mark2_inferred__0/i___30_carry__1_n_7\,
      S(3 downto 2) => B"00",
      S(1 downto 0) => \dc_bias[3]_i_41_0\(1 downto 0)
    );
\is_hash_mark2_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \is_hash_mark2_inferred__0/i__carry_n_0\,
      CO(2) => \is_hash_mark2_inferred__0/i__carry_n_1\,
      CO(1) => \is_hash_mark2_inferred__0/i__carry_n_2\,
      CO(0) => \is_hash_mark2_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => Q(1 downto 0),
      DI(1 downto 0) => B"01",
      O(3 downto 0) => \NLW_is_hash_mark2_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => \is_hash_mark2_inferred__0/i__carry__0_0\(2 downto 0),
      S(0) => Q(0)
    );
\is_hash_mark2_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \is_hash_mark2_inferred__0/i__carry_n_0\,
      CO(3) => \is_hash_mark2_inferred__0/i__carry__0_n_0\,
      CO(2) => \is_hash_mark2_inferred__0/i__carry__0_n_1\,
      CO(1) => \is_hash_mark2_inferred__0/i__carry__0_n_2\,
      CO(0) => \is_hash_mark2_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(5 downto 2),
      O(3 downto 0) => \NLW_is_hash_mark2_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \is_hash_mark2_inferred__0/i__carry__1_0\(3 downto 0)
    );
\is_hash_mark2_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \is_hash_mark2_inferred__0/i__carry__0_n_0\,
      CO(3) => \NLW_is_hash_mark2_inferred__0/i__carry__1_CO_UNCONNECTED\(3),
      CO(2) => \is_hash_mark2_inferred__0/i__carry__1_n_1\,
      CO(1) => \is_hash_mark2_inferred__0/i__carry__1_n_2\,
      CO(0) => \is_hash_mark2_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => Q(8 downto 6),
      O(3 downto 2) => \^processq_reg[8]\(1 downto 0),
      O(1 downto 0) => \NLW_is_hash_mark2_inferred__0/i__carry__1_O_UNCONNECTED\(1 downto 0),
      S(3 downto 0) => \i___21_carry_i_2\(3 downto 0)
    );
\is_hash_mark2_inferred__2/i___12_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \is_hash_mark2_inferred__2/i___12_carry_n_0\,
      CO(2) => \is_hash_mark2_inferred__2/i___12_carry_n_1\,
      CO(1) => \is_hash_mark2_inferred__2/i___12_carry_n_2\,
      CO(0) => \is_hash_mark2_inferred__2/i___12_carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => \i___12_carry__1_i_1\(3 downto 0),
      O(3) => \is_hash_mark2_inferred__2/i___12_carry_n_4\,
      O(2) => \is_hash_mark2_inferred__2/i___12_carry_n_5\,
      O(1) => \is_hash_mark2_inferred__2/i___12_carry_n_6\,
      O(0) => \is_hash_mark2_inferred__2/i___12_carry_n_7\,
      S(3 downto 0) => \dc_bias[3]_i_51_0\(3 downto 0)
    );
\is_hash_mark2_inferred__2/i___12_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \is_hash_mark2_inferred__2/i___12_carry_n_0\,
      CO(3) => \is_hash_mark2_inferred__2/i___12_carry__0_n_0\,
      CO(2) => \is_hash_mark2_inferred__2/i___12_carry__0_n_1\,
      CO(1) => \is_hash_mark2_inferred__2/i___12_carry__0_n_2\,
      CO(0) => \is_hash_mark2_inferred__2/i___12_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \i___12_carry__1_i_1\(7 downto 4),
      O(3) => \is_hash_mark2_inferred__2/i___12_carry__0_n_4\,
      O(2) => \is_hash_mark2_inferred__2/i___12_carry__0_n_5\,
      O(1) => \is_hash_mark2_inferred__2/i___12_carry__0_n_6\,
      O(0) => \is_hash_mark2_inferred__2/i___12_carry__0_n_7\,
      S(3 downto 0) => \dc_bias[3]_i_23_0\(3 downto 0)
    );
\is_hash_mark2_inferred__2/i___12_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \is_hash_mark2_inferred__2/i___12_carry__0_n_0\,
      CO(3 downto 0) => \NLW_is_hash_mark2_inferred__2/i___12_carry__1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_is_hash_mark2_inferred__2/i___12_carry__1_O_UNCONNECTED\(3 downto 1),
      O(0) => \is_hash_mark2_inferred__2/i___12_carry__1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => \dc_bias[3]_i_52_0\(0)
    );
\is_hash_mark2_inferred__2/i___2_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \is_hash_mark2_inferred__2/i___2_carry_n_0\,
      CO(2) => \is_hash_mark2_inferred__2/i___2_carry_n_1\,
      CO(1) => \is_hash_mark2_inferred__2/i___2_carry_n_2\,
      CO(0) => \is_hash_mark2_inferred__2/i___2_carry_n_3\,
      CYINIT => '0',
      DI(3) => \i___12_carry__1_i_1\(8),
      DI(2) => \i___12_carry__1_i_1\(8),
      DI(1) => '0',
      DI(0) => \i___12_carry__1_i_1\(8),
      O(3 downto 0) => \processQ_reg[8]_2\(3 downto 0),
      S(3) => \i___12_carry__0_i_4\(1),
      S(2) => \i___12_carry__1_i_1\(8),
      S(1) => \i___12_carry__1_i_1\(9),
      S(0) => \i___12_carry__0_i_4\(0)
    );
\is_hash_mark2_inferred__2/i___2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \is_hash_mark2_inferred__2/i___2_carry_n_0\,
      CO(3 downto 0) => \NLW_is_hash_mark2_inferred__2/i___2_carry__0_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_is_hash_mark2_inferred__2/i___2_carry__0_O_UNCONNECTED\(3 downto 1),
      O(0) => \processQ_reg[9]\(0),
      S(3 downto 1) => B"000",
      S(0) => \i___12_carry__1_i_1\(9)
    );
\is_horizontal_gridline0__23_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_is_horizontal_gridline0__23_carry_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \is_horizontal_gridline0__23_carry_n_2\,
      CO(0) => \is_horizontal_gridline0__23_carry_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \is_horizontal_gridline0__29_carry__0_i_5\(0),
      DI(0) => '0',
      O(3) => \NLW_is_horizontal_gridline0__23_carry_O_UNCONNECTED\(3),
      O(2 downto 0) => O(2 downto 0),
      S(3) => '0',
      S(2 downto 0) => \is_horizontal_gridline0__29_carry__0_i_5_0\(2 downto 0)
    );
\is_horizontal_gridline0__29_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \is_horizontal_gridline0__29_carry_n_0\,
      CO(2) => \is_horizontal_gridline0__29_carry_n_1\,
      CO(1) => \is_horizontal_gridline0__29_carry_n_2\,
      CO(0) => \is_horizontal_gridline0__29_carry_n_3\,
      CYINIT => '1',
      DI(3 downto 2) => \dc_bias[3]_i_38_0\(1 downto 0),
      DI(1 downto 0) => \i___12_carry__1_i_1\(1 downto 0),
      O(3) => \is_horizontal_gridline0__29_carry_n_4\,
      O(2) => \is_horizontal_gridline0__29_carry_n_5\,
      O(1) => \is_horizontal_gridline0__29_carry_n_6\,
      O(0) => \is_horizontal_gridline0__29_carry_n_7\,
      S(3 downto 0) => \dc_bias[3]_i_38_1\(3 downto 0)
    );
\is_horizontal_gridline0__29_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \is_horizontal_gridline0__29_carry_n_0\,
      CO(3 downto 2) => \NLW_is_horizontal_gridline0__29_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \is_horizontal_gridline0__29_carry__0_n_2\,
      CO(0) => \is_horizontal_gridline0__29_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => is_horizontal_gridline1(0),
      DI(0) => \dc_bias[3]_i_17__0\(0),
      O(3) => \NLW_is_horizontal_gridline0__29_carry__0_O_UNCONNECTED\(3),
      O(2 downto 0) => \^processq_reg[1]_0\(2 downto 0),
      S(3) => '0',
      S(2 downto 0) => \dc_bias[3]_i_17__0_0\(2 downto 0)
    );
is_horizontal_gridline0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => is_horizontal_gridline0_carry_n_0,
      CO(2) => is_horizontal_gridline0_carry_n_1,
      CO(1) => is_horizontal_gridline0_carry_n_2,
      CO(0) => is_horizontal_gridline0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 1) => DI(2 downto 0),
      DI(0) => '0',
      O(3 downto 0) => NLW_is_horizontal_gridline0_carry_O_UNCONNECTED(3 downto 0),
      S(3 downto 1) => \is_horizontal_gridline0_carry__0_0\(2 downto 0),
      S(0) => \i___12_carry__1_i_1\(1)
    );
\is_horizontal_gridline0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => is_horizontal_gridline0_carry_n_0,
      CO(3) => \is_horizontal_gridline0_carry__0_n_0\,
      CO(2) => \is_horizontal_gridline0_carry__0_n_1\,
      CO(1) => \is_horizontal_gridline0_carry__0_n_2\,
      CO(0) => \is_horizontal_gridline0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => is_horizontal_gridline1(3 downto 1),
      DI(0) => \is_horizontal_gridline0__29_carry_i_5\(0),
      O(3) => \processQ_reg[1]\(0),
      O(2 downto 0) => \NLW_is_horizontal_gridline0_carry__0_O_UNCONNECTED\(2 downto 0),
      S(3 downto 0) => S(3 downto 0)
    );
\is_horizontal_gridline0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \is_horizontal_gridline0_carry__0_n_0\,
      CO(3) => \processQ_reg[9]_0\(0),
      CO(2) => \NLW_is_horizontal_gridline0_carry__1_CO_UNCONNECTED\(2),
      CO(1) => \is_horizontal_gridline0_carry__1_n_2\,
      CO(0) => \is_horizontal_gridline0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => is_horizontal_gridline1(4),
      O(3) => \NLW_is_horizontal_gridline0_carry__1_O_UNCONNECTED\(3),
      O(2 downto 0) => \processQ_reg[9]_1\(2 downto 0),
      S(3) => '1',
      S(2 downto 0) => \is_horizontal_gridline0__29_carry_i_4\(2 downto 0)
    );
is_trigger_time1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \triggerTime_reg[9]\(0),
      CO(2) => is_trigger_time1_carry_n_1,
      CO(1) => is_trigger_time1_carry_n_2,
      CO(0) => is_trigger_time1_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_is_trigger_time1_carry_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => \dc_bias[3]_i_28\(3 downto 0)
    );
is_trigger_time5_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => is_trigger_time5_carry_n_0,
      CO(2) => is_trigger_time5_carry_n_1,
      CO(1) => is_trigger_time5_carry_n_2,
      CO(0) => is_trigger_time5_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => \is_trigger_time5_carry__0_0\(3 downto 0),
      O(3 downto 0) => NLW_is_trigger_time5_carry_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => \is_trigger_time5_carry__0_1\(3 downto 0)
    );
\is_trigger_time5_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => is_trigger_time5_carry_n_0,
      CO(3 downto 1) => \NLW_is_trigger_time5_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \processQ_reg[9]_5\(0),
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \dc_bias[3]_i_57\(0),
      O(3 downto 0) => \NLW_is_trigger_time5_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \dc_bias[3]_i_57_0\(0)
    );
\is_trigger_time6_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \is_trigger_time6_inferred__0/i__carry_n_0\,
      CO(2) => \is_trigger_time6_inferred__0/i__carry_n_1\,
      CO(1) => \is_trigger_time6_inferred__0/i__carry_n_2\,
      CO(0) => \is_trigger_time6_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => \is_trigger_time6_inferred__0/i__carry__0_0\(3 downto 0),
      O(3 downto 0) => \NLW_is_trigger_time6_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \is_trigger_time6_inferred__0/i__carry__0_1\(3 downto 0)
    );
\is_trigger_time6_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \is_trigger_time6_inferred__0/i__carry_n_0\,
      CO(3 downto 1) => \NLW_is_trigger_time6_inferred__0/i__carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \processQ_reg[9]_4\(0),
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \dc_bias[3]_i_58\(0),
      O(3 downto 0) => \NLW_is_trigger_time6_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \dc_bias[3]_i_58_0\(0)
    );
\is_trigger_time6_inferred__2/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \processQ_reg[1]_1\(0),
      CO(2) => \is_trigger_time6_inferred__2/i__carry_n_1\,
      CO(1) => \is_trigger_time6_inferred__2/i__carry_n_2\,
      CO(0) => \is_trigger_time6_inferred__2/i__carry_n_3\,
      CYINIT => \dc_bias[3]_i_28_0\,
      DI(3 downto 0) => \dc_bias[3]_i_28_1\(3 downto 0),
      O(3 downto 0) => \NLW_is_trigger_time6_inferred__2/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \dc_bias[3]_i_28_2\(3 downto 0)
    );
is_trigger_volt1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \triggerVolt_reg[9]\(0),
      CO(2) => is_trigger_volt1_carry_n_1,
      CO(1) => is_trigger_volt1_carry_n_2,
      CO(0) => is_trigger_volt1_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_is_trigger_volt1_carry_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => \dc_bias[3]_i_14\(3 downto 0)
    );
is_trigger_volt5_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => is_trigger_volt5_carry_n_0,
      CO(2) => is_trigger_volt5_carry_n_1,
      CO(1) => is_trigger_volt5_carry_n_2,
      CO(0) => is_trigger_volt5_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => \is_trigger_volt5_carry__0_0\(3 downto 0),
      O(3 downto 0) => NLW_is_trigger_volt5_carry_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => \is_trigger_volt5_carry__0_1\(3 downto 0)
    );
\is_trigger_volt5_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => is_trigger_volt5_carry_n_0,
      CO(3 downto 1) => \NLW_is_trigger_volt5_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => CO(0),
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \dc_bias[3]_i_61_1\(0),
      O(3 downto 0) => \NLW_is_trigger_volt5_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \dc_bias[3]_i_61_2\(0)
    );
\is_trigger_volt6_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \is_trigger_volt6_inferred__0/i__carry_n_0\,
      CO(2) => \is_trigger_volt6_inferred__0/i__carry_n_1\,
      CO(1) => \is_trigger_volt6_inferred__0/i__carry_n_2\,
      CO(0) => \is_trigger_volt6_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => \is_trigger_volt6_inferred__0/i__carry__0_0\(3 downto 0),
      O(3 downto 0) => \NLW_is_trigger_volt6_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \is_trigger_volt6_inferred__0/i__carry__0_1\(3 downto 0)
    );
\is_trigger_volt6_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \is_trigger_volt6_inferred__0/i__carry_n_0\,
      CO(3 downto 1) => \NLW_is_trigger_volt6_inferred__0/i__carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \processQ_reg[9]_6\(0),
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \dc_bias[3]_i_61\(0),
      O(3 downto 0) => \NLW_is_trigger_volt6_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \dc_bias[3]_i_61_0\(0)
    );
\is_trigger_volt6_inferred__2/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \processQ_reg[1]_2\(0),
      CO(2) => \is_trigger_volt6_inferred__2/i__carry_n_1\,
      CO(1) => \is_trigger_volt6_inferred__2/i__carry_n_2\,
      CO(0) => \is_trigger_volt6_inferred__2/i__carry_n_3\,
      CYINIT => \dc_bias[3]_i_14_0\,
      DI(3 downto 0) => \dc_bias[3]_i_14_1\(3 downto 0),
      O(3 downto 0) => \NLW_is_trigger_volt6_inferred__2/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \dc_bias[3]_i_14_2\(3 downto 0)
    );
\is_vertical_gridline0__20_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \is_vertical_gridline0__20_carry_n_0\,
      CO(2) => \is_vertical_gridline0__20_carry_n_1\,
      CO(1) => \is_vertical_gridline0__20_carry_n_2\,
      CO(0) => \is_vertical_gridline0__20_carry_n_3\,
      CYINIT => '1',
      DI(3 downto 1) => \dc_bias[3]_i_8__0_0\(2 downto 0),
      DI(0) => '1',
      O(3) => \is_vertical_gridline0__20_carry_n_4\,
      O(2) => \is_vertical_gridline0__20_carry_n_5\,
      O(1) => \is_vertical_gridline0__20_carry_n_6\,
      O(0) => \is_vertical_gridline0__20_carry_n_7\,
      S(3 downto 0) => \dc_bias[3]_i_8__0_1\(3 downto 0)
    );
\is_vertical_gridline0__20_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \is_vertical_gridline0__20_carry_n_0\,
      CO(3 downto 1) => \NLW_is_vertical_gridline0__20_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \is_vertical_gridline0__20_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \dc_bias[3]_i_16__0_0\(2),
      O(3 downto 2) => \NLW_is_vertical_gridline0__20_carry__0_O_UNCONNECTED\(3 downto 2),
      O(1) => \is_vertical_gridline0__20_carry__0_n_6\,
      O(0) => \is_vertical_gridline0__20_carry__0_n_7\,
      S(3 downto 2) => B"00",
      S(1 downto 0) => \dc_bias[3]_i_16__0_1\(1 downto 0)
    );
is_vertical_gridline0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => is_vertical_gridline0_carry_n_0,
      CO(2) => is_vertical_gridline0_carry_n_1,
      CO(1) => is_vertical_gridline0_carry_n_2,
      CO(0) => is_vertical_gridline0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 2) => \is_vertical_gridline0_carry__0_0\(1 downto 0),
      DI(1) => Q(0),
      DI(0) => '0',
      O(3 downto 0) => NLW_is_vertical_gridline0_carry_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => \is_vertical_gridline0_carry__0_1\(3 downto 0)
    );
\is_vertical_gridline0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => is_vertical_gridline0_carry_n_0,
      CO(3) => \is_vertical_gridline0_carry__0_n_0\,
      CO(2) => \is_vertical_gridline0_carry__0_n_1\,
      CO(1) => \is_vertical_gridline0_carry__0_n_2\,
      CO(0) => \is_vertical_gridline0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => \dc_bias[3]_i_16__0_0\(2 downto 0),
      O(3) => \processQ_reg[0]\(0),
      O(2 downto 0) => \NLW_is_vertical_gridline0_carry__0_O_UNCONNECTED\(2 downto 0),
      S(3 downto 0) => \is_vertical_gridline0__20_carry_i_6\(3 downto 0)
    );
\is_vertical_gridline0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \is_vertical_gridline0_carry__0_n_0\,
      CO(3) => \processQ_reg[9]_2\(0),
      CO(2) => \NLW_is_vertical_gridline0_carry__1_CO_UNCONNECTED\(2),
      CO(1) => \is_vertical_gridline0_carry__1_n_2\,
      CO(0) => \is_vertical_gridline0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_is_vertical_gridline0_carry__1_O_UNCONNECTED\(3),
      O(2 downto 0) => \processQ_reg[9]_3\(2 downto 0),
      S(3) => '1',
      S(2 downto 0) => \is_vertical_gridline0__20_carry__0_i_2\(2 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_unimacro_BRAM_SDP_MACRO is
  port (
    DOADO : out STD_LOGIC_VECTOR ( 15 downto 0 );
    p_1_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 9 downto 0 );
    switch : in STD_LOGIC_VECTOR ( 0 to 0 );
    \w_Lbus_out_reg[15]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_unimacro_BRAM_SDP_MACRO;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_unimacro_BRAM_SDP_MACRO is
  signal \^doado\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \sdp_bl.ramb18_dp_bl.ram18_bl\ : label is "PRIMITIVE";
begin
  DOADO(15 downto 0) <= \^doado\(15 downto 0);
\sdp_bl.ramb18_dp_bl.ram18_bl\: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"8BC28AFA8A31896988A087D8870F8646857D84B583EC8323825A819180C87FFF",
      INIT_01 => X"A74FA777A79AA7B7A7CEA7DFA7EAA7EEA7ECA7E4A7D5A7BFA7A3A77FA7547FFF",
      INIT_02 => X"A269A2D1A337A39AA3FBA458A4B1A507A55AA5A8A5F2A638A67AA6B6A6EE7FFF",
      INIT_03 => X"9B369BAB9C209C959D0C9D829DF89E6E9EE49F599FCDA041A0B2A123A192A1FE",
      INIT_04 => X"94FD954B959C95F1964A96A59704976597C9983098999904997199E09A519AC3",
      INIT_05 => X"92729276927F928E92A192BA92D892FA9321934D937E93B393ED942B946D94B3",
      INIT_06 => X"950794B6946A942493E293A6936F933E931292EB92C992AD92979286927A9273",
      INIT_07 => X"9C869BF19B5E9ACF9A4499BC993998B9983E97C7975496E6967D961895B8955D",
      INIT_08 => X"A719A667A5B4A503A452A3A1A2F2A245A199A0EEA0469FA09EFC9E5A9DBB9D1F",
      INIT_09 => X"B1B3B11AB07EAFDFAF3DAE99ADF2AD48AC9DABF0AB42AA92A9E2A930A87EA7CC",
      INIT_0A => X"B8CFB888B83AB7E6B78BB72BB6C5B659B5E8B571B4F6B476B3F1B367B2DAB248",
      INIT_0B => X"B948B97EB9ABB9CFB9EBB9FFBA0ABA0DBA08B9FBB9E7B9CAB9A6B97BB949B90F",
      INIT_0C => X"B126B1ECB2A9B35EB409B4ABB544B5D3B65AB6D7B74BB7B7B819B872B8C2B909",
      INIT_0D => X"A020A16EA2B4A3F3A529A657A77EA89CA9B1AABEABC3ACBFADB2AE9CAF7EB056",
      INIT_0E => X"87C789768B218CC68E6790039199932A94B4963997B7992F9AA19C0B9D6F9ECB",
      INIT_0F => X"6B356D0A6EE070B57288745B762C77FB79C87B927D5B7F2080E282A1845C8614",
      INIT_10 => X"4E6D502751E453A55569573058F95AC65C945E646036620963DD65B36788695E",
      INIT_11 => X"358236E2384A39B83B2D3CA93E2A3FB3414042D4446D460C47B049584B054CB7",
      INIT_12 => X"23B7249425792667275F285F29672A782B922CB42DDE2F11304B318E32D83429",
      INIT_13 => X"1AD21B1C1B6E1BCA1C2F1C9D1D141D941E1E1EB11F4D1FF220A12159221A22E4",
      INIT_14 => X"1AC71A8C1A581A2C1A0719EB19D619C919C419C819D419E91A061A2C1A5A1A92",
      INIT_15 => X"21CC213420A020121F871F021E821E071D921D231CB91C561BF81BA21B521B09",
      INIT_16 => X"2CD82C1A2B5D2AA129E5292C287427BD2709265725A724FB245123AA23072267",
      INIT_17 => X"386637B9370B365935A634F03439338032C6320A314E30902FD22F142E552D96",
      INIT_18 => X"414E40DF406B3FF33F763EF53E6F3DE53D573CC63C303B973AFA3A5939B6390F",
      INIT_19 => X"458A456E454C452544F944C744904454441343CC4380432F42D9427E421D41B8",
      INIT_1A => X"44AE44DE450A453245554574458E45A445B545C145C845CB45C845C045B445A1",
      INIT_1B => X"3FF8405540B1410B416341B8420C425D42AC42F74340438643C844074442447A",
      INIT_1C => X"39FE3A583AB33B103B6F3BCE3C2F3C903CF13D533DB63E173E793EDA3F3B3F9A",
      INIT_1D => X"35FE361F3645367136A036D5370D3749378A37CE3815386038AD38FE395139A6",
      INIT_1E => X"370A36C7368C3658362A360435E435CB35B935AD35A735A735AD35B935CA35E1",
      INIT_1F => X"3F3A3E7C3DC73D193C733BD63B3F3AB13A2B39AC393538C5385E37FE37A53754",
      INIT_20 => X"4F134DE04CB34B8E4A6F49574846473D463B4540444D4361427D41A140CC3FFF",
      INIT_21 => X"655263CA624660C65F4A5DD35C615AF3598B582856CA5572541F52D3518D504D",
      INIT_22 => X"7F1E7D787BD37A2E788976E5754273A0720070616EC56D2B6B9369FE686C66DD",
      INIT_23 => X"989F971D9597940D928090EF8F5A8DC48C2A8A8E88F0875085AF840C826880C3",
      INIT_24 => X"ADCFACAEAB85AA55A91EA7E0A69BA54FA3FDA2A5A1469FE29E799D0A9B969A1D",
      INIT_25 => X"BB59BAC5BA28B981B8D0B816B753B687B5B1B4D3B3ECB2FCB203B102AFF9AEE8",
      INIT_26 => X"BF57BF61BF62BF59BF46BF29BF02BED1BE96BE51BE02BDAABD47BCDABC64BBE3",
      INIT_27 => X"B9B3BA4FBAE3BB6FBBF2BC6DBCDFBD48BDA7BDFEBE4CBE90BECBBEFCBF24BF42",
      INIT_28 => X"AC2BAD31AE32AF2EB024B114B1FEB2E2B3C0B498B568B632B6F4B7B0B863B90F",
      INIT_29 => X"99E09B169C4B9D7F9EB19FE1A10FA23AA363A489A5ABA6CBA7E6A8FEAA11AB21",
      INIT_2A => X"869D87C688F28A208B508C828DB58EEA90209157928F93C895009639977198A9",
      INIT_2B => X"75F876E077CE78C079B87AB47BB57CBB7DC57ED37FE580FB8215833284538576",
      INIT_2C => X"6A846B0D6B9C6C326CCE6D716E196EC86F7D703870F971C0728C735F74377514",
      INIT_2D => X"6546656D659965CB66036641668566CF671F677667D36836689F690F69856A01",
      INIT_2E => X"6588656465436526650D64F864E764DB64D364CF64D164D764E364F4650A6525",
      INIT_2F => X"691A68D768936851680F67CF678F6751671566DB66A3666D6639660965DB65B0",
      INIT_30 => X"6CEE6CBF6C8D6C586C216BE76BAC6B6F6B306AF06AAF6A6D6A2A69E669A2695E",
      INIT_31 => X"6DE86DFA6E086E106E146E126E0C6E026DF36DDF6DC86DAD6D8D6D6B6D446D1B",
      INIT_32 => X"69B06A216A8C6AF16B4F6BA76BF96C456C8B6CCA6D046D386D676D8F6DB26DD0",
      INIT_33 => X"5F5E602F60FB61C16281633C63F1649F654865EB6687671E67AE683868BC6939",
      INIT_34 => X"4FBD50D551E952FB540955135619571B581959135A075AF85BE35CCA5DAB5E87",
      INIT_35 => X"3D343E633F9140C041EE431C444A457646A247CC48F54A1C4B414C634D844EA2",
      INIT_36 => X"2B452C4C2D582E682F7C309331AE32CB33EC350E3634375B388439AE3ADA3C07",
      INIT_37 => X"1DBE1E641F121FC720842147221222E323BA2498257C26652754284929432A41",
      INIT_38 => X"17E217FA181D1849187E18BD1906195719B21A151A821AF71B741BFB1C891D1F",
      INIT_39 => X"1BA01B191A9C1A2919C01961190C18C118801849181C17FA17E117D217CE17D3",
      INIT_3A => X"2922280626F425E924E723EE22FE2217213920651F9A1ED81E201D711CCD1C32",
      INIT_3B => X"3EB43D2C3BAA3A2D38B5374435D83473331531BD306C2F222DDF2CA42B712A45",
      INIT_3C => X"5928576F55B75401524C50994EE94D3B4B8F49E7484246A04502436841D24041",
      INIT_3D => X"748072D8712C6F7E6DCE6C1B6A6768B166F96540638761CC60125E575C9C5AE1",
      INIT_3E => X"8CD18B738A0F88A5873685C0844682C681417FB87E2A7C977B01796677C77625",
      INIT_3F => X"9F199E2B9D369C399B349A29991597FB96D995B094809349920B90C67FFF8E29",
      INIT_A => X"00000",
      INIT_B => X"00000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "NONE",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 0,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(13 downto 4) => Q(9 downto 0),
      ADDRARDADDR(3 downto 0) => B"1111",
      ADDRBWRADDR(13 downto 0) => B"00000000001111",
      CLKARDCLK => s00_axi_aclk,
      CLKBWRCLK => s00_axi_aclk,
      DIADI(15 downto 0) => B"0000000000000000",
      DIBDI(15 downto 0) => B"0000000000000000",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15 downto 0) => \^doado\(15 downto 0),
      DOBDO(15 downto 0) => \NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOBDO_UNCONNECTED\(15 downto 0),
      DOPADOP(1 downto 0) => \NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPADOP_UNCONNECTED\(1 downto 0),
      DOPBDOP(1 downto 0) => \NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPBDOP_UNCONNECTED\(1 downto 0),
      ENARDEN => '1',
      ENBWREN => '0',
      REGCEAREGCE => '1',
      REGCEB => '0',
      RSTRAMARSTRAM => SR(0),
      RSTRAMB => SR(0),
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3 downto 0) => B"0000"
    );
\w_Lbus_out[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2E"
    )
        port map (
      I0 => \^doado\(15),
      I1 => switch(0),
      I2 => \w_Lbus_out_reg[15]\(0),
      O => p_1_out(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_unimacro_BRAM_SDP_MACRO__parameterized0\ is
  port (
    \sdp_bl.ramb18_dp_bl.ram18_bl_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \sdp_bl.ramb18_dp_bl.ram18_bl_1\ : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 9 downto 0 );
    switch : in STD_LOGIC_VECTOR ( 0 to 0 );
    \w_Rbus_out_reg[15]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_unimacro_BRAM_SDP_MACRO__parameterized0\ : entity is "unimacro_BRAM_SDP_MACRO";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_unimacro_BRAM_SDP_MACRO__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_unimacro_BRAM_SDP_MACRO__parameterized0\ is
  signal \^sdp_bl.ramb18_dp_bl.ram18_bl_0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \sdp_bl.ramb18_dp_bl.ram18_bl\ : label is "PRIMITIVE";
begin
  \sdp_bl.ramb18_dp_bl.ram18_bl_0\(15 downto 0) <= \^sdp_bl.ramb18_dp_bl.ram18_bl_0\(15 downto 0);
\sdp_bl.ramb18_dp_bl.ram18_bl\: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"8BC28AF98A31896988A087D8870F8647857E84B583EC8323825A819180C88000",
      INIT_01 => X"9830976A96A595DF95199452938C92C591FE913790708FA98EE18E198D528C8A",
      INIT_02 => X"A462A3A2A2E0A21FA15DA09B9FD89F169E529D8F9CCB9C079B439A7F99BA98F5",
      INIT_03 => X"B03BAF81AEC6AE0BAD4FAC93ABD6AB19AA5CA99EA8E0A821A762A6A3A5E3A523",
      INIT_04 => X"BB9DBAEBBA39B985B8D2B81DB768B6B3B5FDB547B490B3D8B320B268B1AFB0F5",
      INIT_05 => X"C66DC5C5C51CC472C3C8C31DC272C1C6C119C06CBFBEBF0FBE60BDB0BD00BC4F",
      INIT_06 => X"D08FCFF2CF55CEB7CE18CD78CCD8CC37CB95CAF2CA4FC9ABC907C861C7BBC714",
      INIT_07 => X"D9EAD95BD8CAD839D7A7D714D681D5ECD557D4C1D42AD392D2F9D260D1C5D12A",
      INIT_08 => X"E268E1E7E165E0E2E05FDFDADF54DECEDE46DDBEDD35DCAADC1FDB93DB06DA79",
      INIT_09 => X"E9F4E983E910E89DE829E7B3E73DE6C6E64DE5D4E55AE4DFE463E3E5E367E2E8",
      INIT_0A => X"F07AF01AEFB8EF56EEF2EE8DEE28EDC1ED59ECF0EC86EC1BEBAFEB41EAD3EA64",
      INIT_0B => X"F5ECF59DF54EF4FDF4AAF457F403F3ADF357F2FFF2A6F24CF1F1F195F138F0DA",
      INIT_0C => X"FA3BF9FFF9C2F983F943F902F8C0F87DF839F7F3F7ACF765F71CF6D1F686F63A",
      INIT_0D => X"FD5DFD34FD0AFCDEFCB2FC84FC54FC24FBF3FBC0FB8CFB57FB20FAE9FAB0FA76",
      INIT_0E => X"FF4BFF35FF1EFF06FEEDFED2FEB6FE99FE7BFE5CFE3BFE19FDF6FDD2FDACFD85",
      INIT_0F => X"FFFFFFFDFFF9FFF5FFEFFFE8FFE0FFD7FFCCFFC0FFB3FFA5FF95FF85FF73FF5F",
      INIT_10 => X"FF77FF89FF99FFA9FFB7FFC3FFCFFFD9FFE2FFEAFFF1FFF6FFFAFFFDFFFFFFFF",
      INIT_11 => X"FDB6FDDBFDFFFE22FE44FE64FE83FEA1FEBEFED9FEF3FF0DFF24FF3BFF50FF64",
      INIT_12 => X"FABFFAF7FB2FFB65FB99FBCDFC00FC31FC61FC90FCBDFCEAFD15FD3FFD68FD90",
      INIT_13 => X"F69AF6E5F72FF777F7BFF805F84BF88FF8D2F913F954F993F9D2FA0FFA4BFA86",
      INIT_14 => X"F150F1ADF209F264F2BDF316F36DF3C4F419F46DF4C0F512F562F5B2F600F64E",
      INIT_15 => X"EAF0EB5EEBCBEC37ECA1ED0BED74EDDCEE42EEA8EF0CEF70EFD2F033F093F0F2",
      INIT_16 => X"E388E406E483E4FFE57AE5F4E66DE6E5E75CE7D2E847E8BBE92EE9A0EA11EA81",
      INIT_17 => X"DB2BDBB8DC43DCCEDD58DDE1DE69DEF1DF77DFFCE081E104E187E209E28AE309",
      INIT_18 => X"D1EED288D321D3B9D451D4E8D57ED613D6A7D73BD7CDD85FD8F0D980DA0FDA9E",
      INIT_19 => X"C7E6C88CC931C9D6CA7ACB1DCBBFCC61CD02CDA2CE41CEE0CF7ED01BD0B7D153",
      INIT_1A => X"BD2EBDDEBE8EBF3DBFEBC099C146C1F3C29FC34AC3F4C49EC548C5F0C698C740",
      INIT_1B => X"B1DFB298B350B408B4BFB576B62CB6E2B797B84CB900B9B4BA67BB1ABBCCBC7D",
      INIT_1C => X"A615A6D5A794A853A911A9CFAA8DAB4AAC07ACC4AD80AE3CAEF7AFB1B06CB125",
      INIT_1D => X"99ED9AB29B769C3A9CFE9DC29E859F48A00BA0CDA18FA251A313A3D4A494A555",
      INIT_1E => X"8D868E4D8F158FDC90A4916B923292F993BF9486954C961296D8979E98639928",
      INIT_1F => X"80FD81C6828F8357842084E985B2867B8743880C88D4899D8A658B2D8BF68CBE",
      INIT_20 => X"7472753B760376CB7794785C792579EE7AB67B7F7C487D117DDA7EA37F6C8034",
      INIT_21 => X"680368C9698F6A556B1B6BE16CA86D6E6E356EFD6FC4708B7153721A72E273AA",
      INIT_22 => X"5BD05C915D525E135ED55F98605A611D61E062A46367642C64F065B46679673E",
      INIT_23 => X"4FF550B0516A522652E2539E545B551855D556935752581058CF598F5A4F5B0F",
      INIT_24 => X"4491454345F646A9475D481248C7497C4A324AE94BA04C584D104DC84E814F3B",
      INIT_25 => X"39BF3A673B103BBA3C643D0F3DBB3E673F143FC1406F411E41CD427D432E43DF",
      INIT_26 => X"2F9A303730D43172321132B1335233F33495353835DB367F372437CA38703917",
      INIT_27 => X"263B26CB275B27ED287F291229A62A3B2AD02B672BFE2C962D2F2DC82E632EFE",
      INIT_28 => X"1DB91E3A1EBD1F401FC4204920CF215521DD226622EF237A24052491251E25AC",
      INIT_29 => X"162A169B170E178117F6186B18E2195919D21A4B1AC61B411BBE1C3B1CBA1D39",
      INIT_2A => X"0F9E0FFF106110C41128118D11F3125A12C2132C13961401146E14DB154A15B9",
      INIT_2B => X"0A280A770AC70B190B6B0BBF0C130C690CC00D180D710DCB0E260E830EE00F3F",
      INIT_2C => X"05D40611064E068D06CD070F0751079507D9081F086608AE08F80942098E09DA",
      INIT_2D => X"02AD02D70301032D035A038803B803E9041A044E048204B704EE0526055F0599",
      INIT_2E => X"00BB00D100E80100011A01350151016E018D01AD01CE01F002130238025E0285",
      INIT_2F => X"000200040008000C0012001A0022002C003700430050005F006F0080009200A6",
      INIT_30 => X"008400730062005400460039002E0024001B0014000E00090005000200010001",
      INIT_31 => X"0240021B01F801D501B4019401750157013B0120010600ED00D600BF00AA0097",
      INIT_32 => X"053204FA04C3048E0459042603F403C3039303640337030B02E002B6028E0266",
      INIT_33 => X"0953090808BE0876082F07E907A40760071D06DC069B065C061E05E105A6056B",
      INIT_34 => X"0E970E3B0DDF0D850D2B0CD30C7C0C260BD10B7D0B2B0AD90A890A3A09EB099E",
      INIT_35 => X"14F31486141913AE134312DA1271120A11A3113E10DA107710150FB40F540EF5",
      INIT_36 => X"1C571BD91B5D1AE11A6619ED197418FC18851810179B172716B4164315D21562",
      INIT_37 => X"24B024242398230E228421FB217320EC20661FE11F5D1EDA1E571DD61D551CD6",
      INIT_38 => X"2DEA2D512CB82C1F2B882AF12A5C29C72933289F280D277B26EB265B25CC253E",
      INIT_39 => X"37EF374936A435FF355C34B93417337532D53235319630F730592FBC2F202E85",
      INIT_3A => X"42A441F4414540963FE83F3A3E8D3DE13D353C8A3BDF3B363A8C39E4393C3895",
      INIT_3B => X"4DF14D384C804BC94B114A5B49A448EF483A478546D1461D456A44B844064355",
      INIT_3C => X"59B958FA583B577C56BD55FF5542548453C8530B524F519450D9501E4F644EAA",
      INIT_3D => X"65E0651B6457639362CF620B614860855FC35F005E3E5D7D5CBB5BFA5B3A5A79",
      INIT_3E => X"7247717F70B76FF06F296E616D9A6CD46C0D6B476A8069BA68F5682F676A66A5",
      INIT_3F => X"7ECF7E067D3D7C747BAC7AE37A1A7951788977C076F7762F7567749F73D6730E",
      INIT_A => X"00000",
      INIT_B => X"00000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "NONE",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 0,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(13 downto 4) => Q(9 downto 0),
      ADDRARDADDR(3 downto 0) => B"1111",
      ADDRBWRADDR(13 downto 0) => B"00000000001111",
      CLKARDCLK => s00_axi_aclk,
      CLKBWRCLK => s00_axi_aclk,
      DIADI(15 downto 0) => B"0000000000000000",
      DIBDI(15 downto 0) => B"0000000000000000",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15 downto 0) => \^sdp_bl.ramb18_dp_bl.ram18_bl_0\(15 downto 0),
      DOBDO(15 downto 0) => \NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOBDO_UNCONNECTED\(15 downto 0),
      DOPADOP(1 downto 0) => \NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPADOP_UNCONNECTED\(1 downto 0),
      DOPBDOP(1 downto 0) => \NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPBDOP_UNCONNECTED\(1 downto 0),
      ENARDEN => '1',
      ENBWREN => '0',
      REGCEAREGCE => '1',
      REGCEB => '0',
      RSTRAMARSTRAM => SR(0),
      RSTRAMB => SR(0),
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3 downto 0) => B"0000"
    );
\w_Rbus_out[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2E"
    )
        port map (
      I0 => \^sdp_bl.ramb18_dp_bl.ram18_bl_0\(15),
      I1 => switch(0),
      I2 => \w_Rbus_out_reg[15]\(0),
      O => \sdp_bl.ramb18_dp_bl.ram18_bl_1\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_unimacro_BRAM_SDP_MACRO__parameterized1\ is
  port (
    DOADO : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    \sdp_bl.ramb18_dp_bl.ram18_bl_0\ : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    w_wrEnbMux : in STD_LOGIC;
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    ADDRBWRADDR : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \sdp_bl.ramb18_dp_bl.ram18_bl_1\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    LBus_out : in STD_LOGIC_VECTOR ( 15 downto 0 );
    switch : in STD_LOGIC_VECTOR ( 0 to 0 );
    O101 : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_unimacro_BRAM_SDP_MACRO__parameterized1\ : entity is "unimacro_BRAM_SDP_MACRO";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_unimacro_BRAM_SDP_MACRO__parameterized1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_unimacro_BRAM_SDP_MACRO__parameterized1\ is
  signal p_0_in0_in : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \sdp_bl.ramb18_dp_bl.ram18_bl_n_10\ : STD_LOGIC;
  signal \sdp_bl.ramb18_dp_bl.ram18_bl_n_11\ : STD_LOGIC;
  signal \sdp_bl.ramb18_dp_bl.ram18_bl_n_12\ : STD_LOGIC;
  signal \sdp_bl.ramb18_dp_bl.ram18_bl_n_13\ : STD_LOGIC;
  signal \sdp_bl.ramb18_dp_bl.ram18_bl_n_14\ : STD_LOGIC;
  signal \sdp_bl.ramb18_dp_bl.ram18_bl_n_15\ : STD_LOGIC;
  signal \sdp_bl.ramb18_dp_bl.ram18_bl_n_8\ : STD_LOGIC;
  signal \sdp_bl.ramb18_dp_bl.ram18_bl_n_9\ : STD_LOGIC;
  signal w_DinMuxL : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \sdp_bl.ramb18_dp_bl.ram18_bl\ : label is "PRIMITIVE";
begin
\dc_bias[3]_i_14__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6006000000006006"
    )
        port map (
      I0 => p_0_in0_in(2),
      I1 => O101(2),
      I2 => p_0_in0_in(1),
      I3 => O101(1),
      I4 => O101(0),
      I5 => p_0_in0_in(0),
      O => S(0)
    );
\dc_bias[3]_i_19__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_in0_in(5),
      I1 => O101(3),
      O => \sdp_bl.ramb18_dp_bl.ram18_bl_0\
    );
\sdp_bl.ramb18_dp_bl.ram18_bl\: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"8BC28AFA8A31896988A087D8870F8646857D84B583EC8323825A819180C87FFF",
      INIT_01 => X"A74FA777A79AA7B7A7CEA7DFA7EAA7EEA7ECA7E4A7D5A7BFA7A3A77FA7547FFF",
      INIT_02 => X"A269A2D1A337A39AA3FBA458A4B1A507A55AA5A8A5F2A638A67AA6B6A6EE7FFF",
      INIT_03 => X"9B369BAB9C209C959D0C9D829DF89E6E9EE49F599FCDA041A0B2A123A192A1FE",
      INIT_04 => X"94FD954B959C95F1964A96A59704976597C9983098999904997199E09A519AC3",
      INIT_05 => X"92729276927F928E92A192BA92D892FA9321934D937E93B393ED942B946D94B3",
      INIT_06 => X"950794B6946A942493E293A6936F933E931292EB92C992AD92979286927A9273",
      INIT_07 => X"9C869BF19B5E9ACF9A4499BC993998B9983E97C7975496E6967D961895B8955D",
      INIT_08 => X"A719A667A5B4A503A452A3A1A2F2A245A199A0EEA0469FA09EFC9E5A9DBB9D1F",
      INIT_09 => X"B1B3B11AB07EAFDFAF3DAE99ADF2AD48AC9DABF0AB42AA92A9E2A930A87EA7CC",
      INIT_0A => X"B8CFB888B83AB7E6B78BB72BB6C5B659B5E8B571B4F6B476B3F1B367B2DAB248",
      INIT_0B => X"B948B97EB9ABB9CFB9EBB9FFBA0ABA0DBA08B9FBB9E7B9CAB9A6B97BB949B90F",
      INIT_0C => X"B126B1ECB2A9B35EB409B4ABB544B5D3B65AB6D7B74BB7B7B819B872B8C2B909",
      INIT_0D => X"A020A16EA2B4A3F3A529A657A77EA89CA9B1AABEABC3ACBFADB2AE9CAF7EB056",
      INIT_0E => X"87C789768B218CC68E6790039199932A94B4963997B7992F9AA19C0B9D6F9ECB",
      INIT_0F => X"6B356D0A6EE070B57288745B762C77FB79C87B927D5B7F2080E282A1845C8614",
      INIT_10 => X"4E6D502751E453A55569573058F95AC65C945E646036620963DD65B36788695E",
      INIT_11 => X"358236E2384A39B83B2D3CA93E2A3FB3414042D4446D460C47B049584B054CB7",
      INIT_12 => X"23B7249425792667275F285F29672A782B922CB42DDE2F11304B318E32D83429",
      INIT_13 => X"1AD21B1C1B6E1BCA1C2F1C9D1D141D941E1E1EB11F4D1FF220A12159221A22E4",
      INIT_14 => X"1AC71A8C1A581A2C1A0719EB19D619C919C419C819D419E91A061A2C1A5A1A92",
      INIT_15 => X"21CC213420A020121F871F021E821E071D921D231CB91C561BF81BA21B521B09",
      INIT_16 => X"2CD82C1A2B5D2AA129E5292C287427BD2709265725A724FB245123AA23072267",
      INIT_17 => X"386637B9370B365935A634F03439338032C6320A314E30902FD22F142E552D96",
      INIT_18 => X"414E40DF406B3FF33F763EF53E6F3DE53D573CC63C303B973AFA3A5939B6390F",
      INIT_19 => X"458A456E454C452544F944C744904454441343CC4380432F42D9427E421D41B8",
      INIT_1A => X"44AE44DE450A453245554574458E45A445B545C145C845CB45C845C045B445A1",
      INIT_1B => X"3FF8405540B1410B416341B8420C425D42AC42F74340438643C844074442447A",
      INIT_1C => X"39FE3A583AB33B103B6F3BCE3C2F3C903CF13D533DB63E173E793EDA3F3B3F9A",
      INIT_1D => X"35FE361F3645367136A036D5370D3749378A37CE3815386038AD38FE395139A6",
      INIT_1E => X"370A36C7368C3658362A360435E435CB35B935AD35A735A735AD35B935CA35E1",
      INIT_1F => X"3F3A3E7C3DC73D193C733BD63B3F3AB13A2B39AC393538C5385E37FE37A53754",
      INIT_20 => X"4F134DE04CB34B8E4A6F49574846473D463B4540444D4361427D41A140CC3FFF",
      INIT_21 => X"655263CA624660C65F4A5DD35C615AF3598B582856CA5572541F52D3518D504D",
      INIT_22 => X"7F1E7D787BD37A2E788976E5754273A0720070616EC56D2B6B9369FE686C66DD",
      INIT_23 => X"989F971D9597940D928090EF8F5A8DC48C2A8A8E88F0875085AF840C826880C3",
      INIT_24 => X"ADCFACAEAB85AA55A91EA7E0A69BA54FA3FDA2A5A1469FE29E799D0A9B969A1D",
      INIT_25 => X"BB59BAC5BA28B981B8D0B816B753B687B5B1B4D3B3ECB2FCB203B102AFF9AEE8",
      INIT_26 => X"BF57BF61BF62BF59BF46BF29BF02BED1BE96BE51BE02BDAABD47BCDABC64BBE3",
      INIT_27 => X"B9B3BA4FBAE3BB6FBBF2BC6DBCDFBD48BDA7BDFEBE4CBE90BECBBEFCBF24BF42",
      INIT_28 => X"AC2BAD31AE32AF2EB024B114B1FEB2E2B3C0B498B568B632B6F4B7B0B863B90F",
      INIT_29 => X"99E09B169C4B9D7F9EB19FE1A10FA23AA363A489A5ABA6CBA7E6A8FEAA11AB21",
      INIT_2A => X"869D87C688F28A208B508C828DB58EEA90209157928F93C895009639977198A9",
      INIT_2B => X"75F876E077CE78C079B87AB47BB57CBB7DC57ED37FE580FB8215833284538576",
      INIT_2C => X"6A846B0D6B9C6C326CCE6D716E196EC86F7D703870F971C0728C735F74377514",
      INIT_2D => X"6546656D659965CB66036641668566CF671F677667D36836689F690F69856A01",
      INIT_2E => X"6588656465436526650D64F864E764DB64D364CF64D164D764E364F4650A6525",
      INIT_2F => X"691A68D768936851680F67CF678F6751671566DB66A3666D6639660965DB65B0",
      INIT_30 => X"6CEE6CBF6C8D6C586C216BE76BAC6B6F6B306AF06AAF6A6D6A2A69E669A2695E",
      INIT_31 => X"6DE86DFA6E086E106E146E126E0C6E026DF36DDF6DC86DAD6D8D6D6B6D446D1B",
      INIT_32 => X"69B06A216A8C6AF16B4F6BA76BF96C456C8B6CCA6D046D386D676D8F6DB26DD0",
      INIT_33 => X"5F5E602F60FB61C16281633C63F1649F654865EB6687671E67AE683868BC6939",
      INIT_34 => X"4FBD50D551E952FB540955135619571B581959135A075AF85BE35CCA5DAB5E87",
      INIT_35 => X"3D343E633F9140C041EE431C444A457646A247CC48F54A1C4B414C634D844EA2",
      INIT_36 => X"2B452C4C2D582E682F7C309331AE32CB33EC350E3634375B388439AE3ADA3C07",
      INIT_37 => X"1DBE1E641F121FC720842147221222E323BA2498257C26652754284929432A41",
      INIT_38 => X"17E217FA181D1849187E18BD1906195719B21A151A821AF71B741BFB1C891D1F",
      INIT_39 => X"1BA01B191A9C1A2919C01961190C18C118801849181C17FA17E117D217CE17D3",
      INIT_3A => X"2922280626F425E924E723EE22FE2217213920651F9A1ED81E201D711CCD1C32",
      INIT_3B => X"3EB43D2C3BAA3A2D38B5374435D83473331531BD306C2F222DDF2CA42B712A45",
      INIT_3C => X"5928576F55B75401524C50994EE94D3B4B8F49E7484246A04502436841D24041",
      INIT_3D => X"748072D8712C6F7E6DCE6C1B6A6768B166F96540638761CC60125E575C9C5AE1",
      INIT_3E => X"8CD18B738A0F88A5873685C0844682C681417FB87E2A7C977B01796677C77625",
      INIT_3F => X"9F199E2B9D369C399B349A29991597FB96D995B094809349920B90C67FFF8E29",
      INIT_A => X"00000",
      INIT_B => X"00000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "NONE",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 0,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(13 downto 4) => \out\(9 downto 0),
      ADDRARDADDR(3 downto 0) => B"1111",
      ADDRBWRADDR(13 downto 4) => ADDRBWRADDR(9 downto 0),
      ADDRBWRADDR(3 downto 0) => B"1111",
      CLKARDCLK => s00_axi_aclk,
      CLKBWRCLK => s00_axi_aclk,
      DIADI(15 downto 0) => B"0000000000000000",
      DIBDI(15 downto 0) => w_DinMuxL(15 downto 0),
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15 downto 14) => DOADO(3 downto 2),
      DOADO(13) => p_0_in0_in(5),
      DOADO(12 downto 11) => DOADO(1 downto 0),
      DOADO(10 downto 8) => p_0_in0_in(2 downto 0),
      DOADO(7) => \sdp_bl.ramb18_dp_bl.ram18_bl_n_8\,
      DOADO(6) => \sdp_bl.ramb18_dp_bl.ram18_bl_n_9\,
      DOADO(5) => \sdp_bl.ramb18_dp_bl.ram18_bl_n_10\,
      DOADO(4) => \sdp_bl.ramb18_dp_bl.ram18_bl_n_11\,
      DOADO(3) => \sdp_bl.ramb18_dp_bl.ram18_bl_n_12\,
      DOADO(2) => \sdp_bl.ramb18_dp_bl.ram18_bl_n_13\,
      DOADO(1) => \sdp_bl.ramb18_dp_bl.ram18_bl_n_14\,
      DOADO(0) => \sdp_bl.ramb18_dp_bl.ram18_bl_n_15\,
      DOBDO(15 downto 0) => \NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOBDO_UNCONNECTED\(15 downto 0),
      DOPADOP(1 downto 0) => \NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPADOP_UNCONNECTED\(1 downto 0),
      DOPBDOP(1 downto 0) => \NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPBDOP_UNCONNECTED\(1 downto 0),
      ENARDEN => '1',
      ENBWREN => w_wrEnbMux,
      REGCEAREGCE => '1',
      REGCEB => '0',
      RSTRAMARSTRAM => SS(0),
      RSTRAMB => SS(0),
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3 downto 0) => B"1111"
    );
\sdp_bl.ramb18_dp_bl.ram18_bl_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \sdp_bl.ramb18_dp_bl.ram18_bl_1\(15),
      I1 => LBus_out(15),
      I2 => switch(0),
      O => w_DinMuxL(15)
    );
\sdp_bl.ramb18_dp_bl.ram18_bl_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \sdp_bl.ramb18_dp_bl.ram18_bl_1\(14),
      I1 => LBus_out(14),
      I2 => switch(0),
      O => w_DinMuxL(14)
    );
\sdp_bl.ramb18_dp_bl.ram18_bl_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \sdp_bl.ramb18_dp_bl.ram18_bl_1\(13),
      I1 => LBus_out(13),
      I2 => switch(0),
      O => w_DinMuxL(13)
    );
\sdp_bl.ramb18_dp_bl.ram18_bl_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \sdp_bl.ramb18_dp_bl.ram18_bl_1\(12),
      I1 => LBus_out(12),
      I2 => switch(0),
      O => w_DinMuxL(12)
    );
\sdp_bl.ramb18_dp_bl.ram18_bl_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \sdp_bl.ramb18_dp_bl.ram18_bl_1\(11),
      I1 => LBus_out(11),
      I2 => switch(0),
      O => w_DinMuxL(11)
    );
\sdp_bl.ramb18_dp_bl.ram18_bl_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \sdp_bl.ramb18_dp_bl.ram18_bl_1\(10),
      I1 => LBus_out(10),
      I2 => switch(0),
      O => w_DinMuxL(10)
    );
\sdp_bl.ramb18_dp_bl.ram18_bl_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \sdp_bl.ramb18_dp_bl.ram18_bl_1\(9),
      I1 => LBus_out(9),
      I2 => switch(0),
      O => w_DinMuxL(9)
    );
\sdp_bl.ramb18_dp_bl.ram18_bl_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \sdp_bl.ramb18_dp_bl.ram18_bl_1\(8),
      I1 => LBus_out(8),
      I2 => switch(0),
      O => w_DinMuxL(8)
    );
\sdp_bl.ramb18_dp_bl.ram18_bl_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \sdp_bl.ramb18_dp_bl.ram18_bl_1\(7),
      I1 => LBus_out(7),
      I2 => switch(0),
      O => w_DinMuxL(7)
    );
\sdp_bl.ramb18_dp_bl.ram18_bl_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \sdp_bl.ramb18_dp_bl.ram18_bl_1\(6),
      I1 => LBus_out(6),
      I2 => switch(0),
      O => w_DinMuxL(6)
    );
\sdp_bl.ramb18_dp_bl.ram18_bl_i_22\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \sdp_bl.ramb18_dp_bl.ram18_bl_1\(5),
      I1 => LBus_out(5),
      I2 => switch(0),
      O => w_DinMuxL(5)
    );
\sdp_bl.ramb18_dp_bl.ram18_bl_i_23\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \sdp_bl.ramb18_dp_bl.ram18_bl_1\(4),
      I1 => LBus_out(4),
      I2 => switch(0),
      O => w_DinMuxL(4)
    );
\sdp_bl.ramb18_dp_bl.ram18_bl_i_24\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \sdp_bl.ramb18_dp_bl.ram18_bl_1\(3),
      I1 => LBus_out(3),
      I2 => switch(0),
      O => w_DinMuxL(3)
    );
\sdp_bl.ramb18_dp_bl.ram18_bl_i_25\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \sdp_bl.ramb18_dp_bl.ram18_bl_1\(2),
      I1 => LBus_out(2),
      I2 => switch(0),
      O => w_DinMuxL(2)
    );
\sdp_bl.ramb18_dp_bl.ram18_bl_i_26\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \sdp_bl.ramb18_dp_bl.ram18_bl_1\(1),
      I1 => LBus_out(1),
      I2 => switch(0),
      O => w_DinMuxL(1)
    );
\sdp_bl.ramb18_dp_bl.ram18_bl_i_27\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \sdp_bl.ramb18_dp_bl.ram18_bl_1\(0),
      I1 => LBus_out(0),
      I2 => switch(0),
      O => w_DinMuxL(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_unimacro_BRAM_SDP_MACRO__parameterized2\ is
  port (
    DOADO : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    \sdp_bl.ramb18_dp_bl.ram18_bl_0\ : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    w_wrEnbMux : in STD_LOGIC;
    \sdp_bl.ramb18_dp_bl.ram18_bl_1\ : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    ADDRBWRADDR : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \sdp_bl.ramb18_dp_bl.ram18_bl_2\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Rbus_out : in STD_LOGIC_VECTOR ( 15 downto 0 );
    switch : in STD_LOGIC_VECTOR ( 0 to 0 );
    O101 : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_unimacro_BRAM_SDP_MACRO__parameterized2\ : entity is "unimacro_BRAM_SDP_MACRO";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_unimacro_BRAM_SDP_MACRO__parameterized2\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_unimacro_BRAM_SDP_MACRO__parameterized2\ is
  signal p_0_in : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \sdp_bl.ramb18_dp_bl.ram18_bl_n_10\ : STD_LOGIC;
  signal \sdp_bl.ramb18_dp_bl.ram18_bl_n_11\ : STD_LOGIC;
  signal \sdp_bl.ramb18_dp_bl.ram18_bl_n_12\ : STD_LOGIC;
  signal \sdp_bl.ramb18_dp_bl.ram18_bl_n_13\ : STD_LOGIC;
  signal \sdp_bl.ramb18_dp_bl.ram18_bl_n_14\ : STD_LOGIC;
  signal \sdp_bl.ramb18_dp_bl.ram18_bl_n_15\ : STD_LOGIC;
  signal \sdp_bl.ramb18_dp_bl.ram18_bl_n_8\ : STD_LOGIC;
  signal \sdp_bl.ramb18_dp_bl.ram18_bl_n_9\ : STD_LOGIC;
  signal w_DinMuxR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \sdp_bl.ramb18_dp_bl.ram18_bl\ : label is "PRIMITIVE";
begin
\dc_bias[3]_i_37\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6006000000006006"
    )
        port map (
      I0 => p_0_in(2),
      I1 => O101(2),
      I2 => p_0_in(1),
      I3 => O101(1),
      I4 => O101(0),
      I5 => p_0_in(0),
      O => S(0)
    );
\dc_bias[3]_i_68\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_in(5),
      I1 => O101(3),
      O => \sdp_bl.ramb18_dp_bl.ram18_bl_0\
    );
\sdp_bl.ramb18_dp_bl.ram18_bl\: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"8BC28AF98A31896988A087D8870F8647857E84B583EC8323825A819180C88000",
      INIT_01 => X"9830976A96A595DF95199452938C92C591FE913790708FA98EE18E198D528C8A",
      INIT_02 => X"A462A3A2A2E0A21FA15DA09B9FD89F169E529D8F9CCB9C079B439A7F99BA98F5",
      INIT_03 => X"B03BAF81AEC6AE0BAD4FAC93ABD6AB19AA5CA99EA8E0A821A762A6A3A5E3A523",
      INIT_04 => X"BB9DBAEBBA39B985B8D2B81DB768B6B3B5FDB547B490B3D8B320B268B1AFB0F5",
      INIT_05 => X"C66DC5C5C51CC472C3C8C31DC272C1C6C119C06CBFBEBF0FBE60BDB0BD00BC4F",
      INIT_06 => X"D08FCFF2CF55CEB7CE18CD78CCD8CC37CB95CAF2CA4FC9ABC907C861C7BBC714",
      INIT_07 => X"D9EAD95BD8CAD839D7A7D714D681D5ECD557D4C1D42AD392D2F9D260D1C5D12A",
      INIT_08 => X"E268E1E7E165E0E2E05FDFDADF54DECEDE46DDBEDD35DCAADC1FDB93DB06DA79",
      INIT_09 => X"E9F4E983E910E89DE829E7B3E73DE6C6E64DE5D4E55AE4DFE463E3E5E367E2E8",
      INIT_0A => X"F07AF01AEFB8EF56EEF2EE8DEE28EDC1ED59ECF0EC86EC1BEBAFEB41EAD3EA64",
      INIT_0B => X"F5ECF59DF54EF4FDF4AAF457F403F3ADF357F2FFF2A6F24CF1F1F195F138F0DA",
      INIT_0C => X"FA3BF9FFF9C2F983F943F902F8C0F87DF839F7F3F7ACF765F71CF6D1F686F63A",
      INIT_0D => X"FD5DFD34FD0AFCDEFCB2FC84FC54FC24FBF3FBC0FB8CFB57FB20FAE9FAB0FA76",
      INIT_0E => X"FF4BFF35FF1EFF06FEEDFED2FEB6FE99FE7BFE5CFE3BFE19FDF6FDD2FDACFD85",
      INIT_0F => X"FFFFFFFDFFF9FFF5FFEFFFE8FFE0FFD7FFCCFFC0FFB3FFA5FF95FF85FF73FF5F",
      INIT_10 => X"FF77FF89FF99FFA9FFB7FFC3FFCFFFD9FFE2FFEAFFF1FFF6FFFAFFFDFFFFFFFF",
      INIT_11 => X"FDB6FDDBFDFFFE22FE44FE64FE83FEA1FEBEFED9FEF3FF0DFF24FF3BFF50FF64",
      INIT_12 => X"FABFFAF7FB2FFB65FB99FBCDFC00FC31FC61FC90FCBDFCEAFD15FD3FFD68FD90",
      INIT_13 => X"F69AF6E5F72FF777F7BFF805F84BF88FF8D2F913F954F993F9D2FA0FFA4BFA86",
      INIT_14 => X"F150F1ADF209F264F2BDF316F36DF3C4F419F46DF4C0F512F562F5B2F600F64E",
      INIT_15 => X"EAF0EB5EEBCBEC37ECA1ED0BED74EDDCEE42EEA8EF0CEF70EFD2F033F093F0F2",
      INIT_16 => X"E388E406E483E4FFE57AE5F4E66DE6E5E75CE7D2E847E8BBE92EE9A0EA11EA81",
      INIT_17 => X"DB2BDBB8DC43DCCEDD58DDE1DE69DEF1DF77DFFCE081E104E187E209E28AE309",
      INIT_18 => X"D1EED288D321D3B9D451D4E8D57ED613D6A7D73BD7CDD85FD8F0D980DA0FDA9E",
      INIT_19 => X"C7E6C88CC931C9D6CA7ACB1DCBBFCC61CD02CDA2CE41CEE0CF7ED01BD0B7D153",
      INIT_1A => X"BD2EBDDEBE8EBF3DBFEBC099C146C1F3C29FC34AC3F4C49EC548C5F0C698C740",
      INIT_1B => X"B1DFB298B350B408B4BFB576B62CB6E2B797B84CB900B9B4BA67BB1ABBCCBC7D",
      INIT_1C => X"A615A6D5A794A853A911A9CFAA8DAB4AAC07ACC4AD80AE3CAEF7AFB1B06CB125",
      INIT_1D => X"99ED9AB29B769C3A9CFE9DC29E859F48A00BA0CDA18FA251A313A3D4A494A555",
      INIT_1E => X"8D868E4D8F158FDC90A4916B923292F993BF9486954C961296D8979E98639928",
      INIT_1F => X"80FD81C6828F8357842084E985B2867B8743880C88D4899D8A658B2D8BF68CBE",
      INIT_20 => X"7472753B760376CB7794785C792579EE7AB67B7F7C487D117DDA7EA37F6C8034",
      INIT_21 => X"680368C9698F6A556B1B6BE16CA86D6E6E356EFD6FC4708B7153721A72E273AA",
      INIT_22 => X"5BD05C915D525E135ED55F98605A611D61E062A46367642C64F065B46679673E",
      INIT_23 => X"4FF550B0516A522652E2539E545B551855D556935752581058CF598F5A4F5B0F",
      INIT_24 => X"4491454345F646A9475D481248C7497C4A324AE94BA04C584D104DC84E814F3B",
      INIT_25 => X"39BF3A673B103BBA3C643D0F3DBB3E673F143FC1406F411E41CD427D432E43DF",
      INIT_26 => X"2F9A303730D43172321132B1335233F33495353835DB367F372437CA38703917",
      INIT_27 => X"263B26CB275B27ED287F291229A62A3B2AD02B672BFE2C962D2F2DC82E632EFE",
      INIT_28 => X"1DB91E3A1EBD1F401FC4204920CF215521DD226622EF237A24052491251E25AC",
      INIT_29 => X"162A169B170E178117F6186B18E2195919D21A4B1AC61B411BBE1C3B1CBA1D39",
      INIT_2A => X"0F9E0FFF106110C41128118D11F3125A12C2132C13961401146E14DB154A15B9",
      INIT_2B => X"0A280A770AC70B190B6B0BBF0C130C690CC00D180D710DCB0E260E830EE00F3F",
      INIT_2C => X"05D40611064E068D06CD070F0751079507D9081F086608AE08F80942098E09DA",
      INIT_2D => X"02AD02D70301032D035A038803B803E9041A044E048204B704EE0526055F0599",
      INIT_2E => X"00BB00D100E80100011A01350151016E018D01AD01CE01F002130238025E0285",
      INIT_2F => X"000200040008000C0012001A0022002C003700430050005F006F0080009200A6",
      INIT_30 => X"008400730062005400460039002E0024001B0014000E00090005000200010001",
      INIT_31 => X"0240021B01F801D501B4019401750157013B0120010600ED00D600BF00AA0097",
      INIT_32 => X"053204FA04C3048E0459042603F403C3039303640337030B02E002B6028E0266",
      INIT_33 => X"0953090808BE0876082F07E907A40760071D06DC069B065C061E05E105A6056B",
      INIT_34 => X"0E970E3B0DDF0D850D2B0CD30C7C0C260BD10B7D0B2B0AD90A890A3A09EB099E",
      INIT_35 => X"14F31486141913AE134312DA1271120A11A3113E10DA107710150FB40F540EF5",
      INIT_36 => X"1C571BD91B5D1AE11A6619ED197418FC18851810179B172716B4164315D21562",
      INIT_37 => X"24B024242398230E228421FB217320EC20661FE11F5D1EDA1E571DD61D551CD6",
      INIT_38 => X"2DEA2D512CB82C1F2B882AF12A5C29C72933289F280D277B26EB265B25CC253E",
      INIT_39 => X"37EF374936A435FF355C34B93417337532D53235319630F730592FBC2F202E85",
      INIT_3A => X"42A441F4414540963FE83F3A3E8D3DE13D353C8A3BDF3B363A8C39E4393C3895",
      INIT_3B => X"4DF14D384C804BC94B114A5B49A448EF483A478546D1461D456A44B844064355",
      INIT_3C => X"59B958FA583B577C56BD55FF5542548453C8530B524F519450D9501E4F644EAA",
      INIT_3D => X"65E0651B6457639362CF620B614860855FC35F005E3E5D7D5CBB5BFA5B3A5A79",
      INIT_3E => X"7247717F70B76FF06F296E616D9A6CD46C0D6B476A8069BA68F5682F676A66A5",
      INIT_3F => X"7ECF7E067D3D7C747BAC7AE37A1A7951788977C076F7762F7567749F73D6730E",
      INIT_A => X"00000",
      INIT_B => X"00000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "NONE",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 0,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(13 downto 4) => \out\(9 downto 0),
      ADDRARDADDR(3 downto 0) => B"1111",
      ADDRBWRADDR(13 downto 4) => ADDRBWRADDR(9 downto 0),
      ADDRBWRADDR(3 downto 0) => B"1111",
      CLKARDCLK => s00_axi_aclk,
      CLKBWRCLK => s00_axi_aclk,
      DIADI(15 downto 0) => B"0000000000000000",
      DIBDI(15 downto 0) => w_DinMuxR(15 downto 0),
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15 downto 14) => DOADO(3 downto 2),
      DOADO(13) => p_0_in(5),
      DOADO(12 downto 11) => DOADO(1 downto 0),
      DOADO(10 downto 8) => p_0_in(2 downto 0),
      DOADO(7) => \sdp_bl.ramb18_dp_bl.ram18_bl_n_8\,
      DOADO(6) => \sdp_bl.ramb18_dp_bl.ram18_bl_n_9\,
      DOADO(5) => \sdp_bl.ramb18_dp_bl.ram18_bl_n_10\,
      DOADO(4) => \sdp_bl.ramb18_dp_bl.ram18_bl_n_11\,
      DOADO(3) => \sdp_bl.ramb18_dp_bl.ram18_bl_n_12\,
      DOADO(2) => \sdp_bl.ramb18_dp_bl.ram18_bl_n_13\,
      DOADO(1) => \sdp_bl.ramb18_dp_bl.ram18_bl_n_14\,
      DOADO(0) => \sdp_bl.ramb18_dp_bl.ram18_bl_n_15\,
      DOBDO(15 downto 0) => \NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOBDO_UNCONNECTED\(15 downto 0),
      DOPADOP(1 downto 0) => \NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPADOP_UNCONNECTED\(1 downto 0),
      DOPBDOP(1 downto 0) => \NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPBDOP_UNCONNECTED\(1 downto 0),
      ENARDEN => '1',
      ENBWREN => w_wrEnbMux,
      REGCEAREGCE => '1',
      REGCEB => '0',
      RSTRAMARSTRAM => \sdp_bl.ramb18_dp_bl.ram18_bl_1\,
      RSTRAMB => \sdp_bl.ramb18_dp_bl.ram18_bl_1\,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3 downto 0) => B"1111"
    );
\sdp_bl.ramb18_dp_bl.ram18_bl_i_10__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \sdp_bl.ramb18_dp_bl.ram18_bl_2\(6),
      I1 => Rbus_out(6),
      I2 => switch(0),
      O => w_DinMuxR(6)
    );
\sdp_bl.ramb18_dp_bl.ram18_bl_i_11__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \sdp_bl.ramb18_dp_bl.ram18_bl_2\(5),
      I1 => Rbus_out(5),
      I2 => switch(0),
      O => w_DinMuxR(5)
    );
\sdp_bl.ramb18_dp_bl.ram18_bl_i_12__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \sdp_bl.ramb18_dp_bl.ram18_bl_2\(4),
      I1 => Rbus_out(4),
      I2 => switch(0),
      O => w_DinMuxR(4)
    );
\sdp_bl.ramb18_dp_bl.ram18_bl_i_13__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \sdp_bl.ramb18_dp_bl.ram18_bl_2\(3),
      I1 => Rbus_out(3),
      I2 => switch(0),
      O => w_DinMuxR(3)
    );
\sdp_bl.ramb18_dp_bl.ram18_bl_i_14__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \sdp_bl.ramb18_dp_bl.ram18_bl_2\(2),
      I1 => Rbus_out(2),
      I2 => switch(0),
      O => w_DinMuxR(2)
    );
\sdp_bl.ramb18_dp_bl.ram18_bl_i_15__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \sdp_bl.ramb18_dp_bl.ram18_bl_2\(1),
      I1 => Rbus_out(1),
      I2 => switch(0),
      O => w_DinMuxR(1)
    );
\sdp_bl.ramb18_dp_bl.ram18_bl_i_16__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \sdp_bl.ramb18_dp_bl.ram18_bl_2\(0),
      I1 => Rbus_out(0),
      I2 => switch(0),
      O => w_DinMuxR(0)
    );
\sdp_bl.ramb18_dp_bl.ram18_bl_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \sdp_bl.ramb18_dp_bl.ram18_bl_2\(15),
      I1 => Rbus_out(15),
      I2 => switch(0),
      O => w_DinMuxR(15)
    );
\sdp_bl.ramb18_dp_bl.ram18_bl_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \sdp_bl.ramb18_dp_bl.ram18_bl_2\(14),
      I1 => Rbus_out(14),
      I2 => switch(0),
      O => w_DinMuxR(14)
    );
\sdp_bl.ramb18_dp_bl.ram18_bl_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \sdp_bl.ramb18_dp_bl.ram18_bl_2\(13),
      I1 => Rbus_out(13),
      I2 => switch(0),
      O => w_DinMuxR(13)
    );
\sdp_bl.ramb18_dp_bl.ram18_bl_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \sdp_bl.ramb18_dp_bl.ram18_bl_2\(12),
      I1 => Rbus_out(12),
      I2 => switch(0),
      O => w_DinMuxR(12)
    );
\sdp_bl.ramb18_dp_bl.ram18_bl_i_5__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \sdp_bl.ramb18_dp_bl.ram18_bl_2\(11),
      I1 => Rbus_out(11),
      I2 => switch(0),
      O => w_DinMuxR(11)
    );
\sdp_bl.ramb18_dp_bl.ram18_bl_i_6__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \sdp_bl.ramb18_dp_bl.ram18_bl_2\(10),
      I1 => Rbus_out(10),
      I2 => switch(0),
      O => w_DinMuxR(10)
    );
\sdp_bl.ramb18_dp_bl.ram18_bl_i_7__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \sdp_bl.ramb18_dp_bl.ram18_bl_2\(9),
      I1 => Rbus_out(9),
      I2 => switch(0),
      O => w_DinMuxR(9)
    );
\sdp_bl.ramb18_dp_bl.ram18_bl_i_8__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \sdp_bl.ramb18_dp_bl.ram18_bl_2\(8),
      I1 => Rbus_out(8),
      I2 => switch(0),
      O => w_DinMuxR(8)
    );
\sdp_bl.ramb18_dp_bl.ram18_bl_i_9__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \sdp_bl.ramb18_dp_bl.ram18_bl_2\(7),
      I1 => Rbus_out(7),
      I2 => switch(0),
      O => w_DinMuxR(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_VGA is
  port (
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \processQ_reg[5]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \processQ_reg[0]\ : out STD_LOGIC;
    \processQ_reg[5]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \processQ_reg[5]_1\ : out STD_LOGIC;
    \processQ_reg[7]\ : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \processQ_reg[0]_0\ : out STD_LOGIC;
    \processQ_reg[4]\ : out STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    triggerVoltOut : in STD_LOGIC_VECTOR ( 7 downto 0 );
    triggerTimeOut : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S : in STD_LOGIC_VECTOR ( 0 to 0 );
    \dc_bias[3]_i_7__0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \dc_bias_reg[3]_i_15\ : in STD_LOGIC;
    DOADO : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \dc_bias_reg[3]_i_9\ : in STD_LOGIC;
    \dc_bias_reg[3]_i_9_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \encoded_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    switch : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \is_trigger_time6_inferred__2/i__carry\ : in STD_LOGIC;
    \is_trigger_time6_inferred__2/i__carry_0\ : in STD_LOGIC;
    \is_trigger_volt6_inferred__2/i__carry\ : in STD_LOGIC;
    \is_trigger_volt6_inferred__2/i__carry_0\ : in STD_LOGIC;
    \dc_bias_reg[3]_i_62\ : in STD_LOGIC;
    \dc_bias_reg[3]_i_31\ : in STD_LOGIC;
    \dc_bias_reg[3]_i_66\ : in STD_LOGIC;
    \dc_bias_reg[3]_i_92\ : in STD_LOGIC;
    \dc_bias_reg[3]_i_56\ : in STD_LOGIC;
    \dc_bias_reg[3]_i_55\ : in STD_LOGIC;
    CLK : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_VGA;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_VGA is
  signal \^q\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal is_horizontal_gridline1 : STD_LOGIC_VECTOR ( 9 downto 5 );
  signal is_trigger_time1 : STD_LOGIC;
  signal is_trigger_time3 : STD_LOGIC;
  signal is_trigger_time35_in : STD_LOGIC;
  signal is_trigger_time5 : STD_LOGIC;
  signal is_trigger_time6 : STD_LOGIC;
  signal is_trigger_time613_in : STD_LOGIC;
  signal is_trigger_time616_in : STD_LOGIC;
  signal is_trigger_volt1 : STD_LOGIC;
  signal is_trigger_volt3 : STD_LOGIC;
  signal is_trigger_volt319_in : STD_LOGIC;
  signal is_trigger_volt4 : STD_LOGIC;
  signal is_trigger_volt422_in : STD_LOGIC;
  signal is_trigger_volt5 : STD_LOGIC;
  signal is_trigger_volt627_in : STD_LOGIC;
  signal is_trigger_volt629_in : STD_LOGIC;
  signal is_trigger_volt630_in : STD_LOGIC;
  signal is_vertical_gridline1 : STD_LOGIC_VECTOR ( 7 downto 5 );
  signal \^processq_reg[5]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal row : STD_LOGIC_VECTOR ( 9 downto 3 );
  signal uut1_n_10 : STD_LOGIC;
  signal uut1_n_100 : STD_LOGIC;
  signal uut1_n_104 : STD_LOGIC;
  signal uut1_n_105 : STD_LOGIC;
  signal uut1_n_106 : STD_LOGIC;
  signal uut1_n_11 : STD_LOGIC;
  signal uut1_n_12 : STD_LOGIC;
  signal uut1_n_13 : STD_LOGIC;
  signal uut1_n_14 : STD_LOGIC;
  signal uut1_n_15 : STD_LOGIC;
  signal uut1_n_16 : STD_LOGIC;
  signal uut1_n_17 : STD_LOGIC;
  signal uut1_n_18 : STD_LOGIC;
  signal uut1_n_19 : STD_LOGIC;
  signal uut1_n_21 : STD_LOGIC;
  signal uut1_n_22 : STD_LOGIC;
  signal uut1_n_23 : STD_LOGIC;
  signal uut1_n_24 : STD_LOGIC;
  signal uut1_n_26 : STD_LOGIC;
  signal uut1_n_27 : STD_LOGIC;
  signal uut1_n_28 : STD_LOGIC;
  signal uut1_n_29 : STD_LOGIC;
  signal uut1_n_30 : STD_LOGIC;
  signal uut1_n_31 : STD_LOGIC;
  signal uut1_n_32 : STD_LOGIC;
  signal uut1_n_33 : STD_LOGIC;
  signal uut1_n_34 : STD_LOGIC;
  signal uut1_n_35 : STD_LOGIC;
  signal uut1_n_36 : STD_LOGIC;
  signal uut1_n_37 : STD_LOGIC;
  signal uut1_n_38 : STD_LOGIC;
  signal uut1_n_39 : STD_LOGIC;
  signal uut1_n_40 : STD_LOGIC;
  signal uut1_n_41 : STD_LOGIC;
  signal uut1_n_42 : STD_LOGIC;
  signal uut1_n_43 : STD_LOGIC;
  signal uut1_n_44 : STD_LOGIC;
  signal uut1_n_45 : STD_LOGIC;
  signal uut1_n_46 : STD_LOGIC;
  signal uut1_n_47 : STD_LOGIC;
  signal uut1_n_48 : STD_LOGIC;
  signal uut1_n_49 : STD_LOGIC;
  signal uut1_n_50 : STD_LOGIC;
  signal uut1_n_51 : STD_LOGIC;
  signal uut1_n_52 : STD_LOGIC;
  signal uut1_n_53 : STD_LOGIC;
  signal uut1_n_54 : STD_LOGIC;
  signal uut1_n_55 : STD_LOGIC;
  signal uut1_n_56 : STD_LOGIC;
  signal uut1_n_57 : STD_LOGIC;
  signal uut1_n_58 : STD_LOGIC;
  signal uut1_n_65 : STD_LOGIC;
  signal uut1_n_67 : STD_LOGIC;
  signal uut1_n_68 : STD_LOGIC;
  signal uut1_n_69 : STD_LOGIC;
  signal uut1_n_70 : STD_LOGIC;
  signal uut1_n_71 : STD_LOGIC;
  signal uut1_n_72 : STD_LOGIC;
  signal uut1_n_73 : STD_LOGIC;
  signal uut1_n_74 : STD_LOGIC;
  signal uut1_n_75 : STD_LOGIC;
  signal uut1_n_76 : STD_LOGIC;
  signal uut1_n_77 : STD_LOGIC;
  signal uut1_n_78 : STD_LOGIC;
  signal uut1_n_79 : STD_LOGIC;
  signal uut1_n_80 : STD_LOGIC;
  signal uut1_n_81 : STD_LOGIC;
  signal uut1_n_82 : STD_LOGIC;
  signal uut1_n_83 : STD_LOGIC;
  signal uut1_n_84 : STD_LOGIC;
  signal uut1_n_85 : STD_LOGIC;
  signal uut1_n_86 : STD_LOGIC;
  signal uut1_n_87 : STD_LOGIC;
  signal uut1_n_88 : STD_LOGIC;
  signal uut1_n_89 : STD_LOGIC;
  signal uut1_n_90 : STD_LOGIC;
  signal uut1_n_91 : STD_LOGIC;
  signal uut1_n_92 : STD_LOGIC;
  signal uut1_n_93 : STD_LOGIC;
  signal uut1_n_94 : STD_LOGIC;
  signal uut1_n_95 : STD_LOGIC;
  signal uut1_n_96 : STD_LOGIC;
  signal uut1_n_97 : STD_LOGIC;
  signal uut1_n_98 : STD_LOGIC;
  signal uut1_n_99 : STD_LOGIC;
  signal uut2_n_1 : STD_LOGIC;
  signal uut2_n_104 : STD_LOGIC;
  signal uut2_n_105 : STD_LOGIC;
  signal uut2_n_13 : STD_LOGIC;
  signal uut2_n_14 : STD_LOGIC;
  signal uut2_n_15 : STD_LOGIC;
  signal uut2_n_16 : STD_LOGIC;
  signal uut2_n_17 : STD_LOGIC;
  signal uut2_n_18 : STD_LOGIC;
  signal uut2_n_19 : STD_LOGIC;
  signal uut2_n_2 : STD_LOGIC;
  signal uut2_n_20 : STD_LOGIC;
  signal uut2_n_26 : STD_LOGIC;
  signal uut2_n_27 : STD_LOGIC;
  signal uut2_n_28 : STD_LOGIC;
  signal uut2_n_29 : STD_LOGIC;
  signal uut2_n_30 : STD_LOGIC;
  signal uut2_n_31 : STD_LOGIC;
  signal uut2_n_32 : STD_LOGIC;
  signal uut2_n_33 : STD_LOGIC;
  signal uut2_n_34 : STD_LOGIC;
  signal uut2_n_35 : STD_LOGIC;
  signal uut2_n_36 : STD_LOGIC;
  signal uut2_n_37 : STD_LOGIC;
  signal uut2_n_38 : STD_LOGIC;
  signal uut2_n_39 : STD_LOGIC;
  signal uut2_n_40 : STD_LOGIC;
  signal uut2_n_41 : STD_LOGIC;
  signal uut2_n_42 : STD_LOGIC;
  signal uut2_n_43 : STD_LOGIC;
  signal uut2_n_44 : STD_LOGIC;
  signal uut2_n_45 : STD_LOGIC;
  signal uut2_n_46 : STD_LOGIC;
  signal uut2_n_47 : STD_LOGIC;
  signal uut2_n_48 : STD_LOGIC;
  signal uut2_n_49 : STD_LOGIC;
  signal uut2_n_50 : STD_LOGIC;
  signal uut2_n_51 : STD_LOGIC;
  signal uut2_n_52 : STD_LOGIC;
  signal uut2_n_53 : STD_LOGIC;
  signal uut2_n_54 : STD_LOGIC;
  signal uut2_n_56 : STD_LOGIC;
  signal uut2_n_57 : STD_LOGIC;
  signal uut2_n_58 : STD_LOGIC;
  signal uut2_n_59 : STD_LOGIC;
  signal uut2_n_60 : STD_LOGIC;
  signal uut2_n_61 : STD_LOGIC;
  signal uut2_n_62 : STD_LOGIC;
  signal uut2_n_63 : STD_LOGIC;
  signal uut2_n_64 : STD_LOGIC;
  signal uut2_n_65 : STD_LOGIC;
  signal uut2_n_66 : STD_LOGIC;
  signal uut2_n_67 : STD_LOGIC;
  signal uut2_n_68 : STD_LOGIC;
  signal uut2_n_69 : STD_LOGIC;
  signal uut2_n_70 : STD_LOGIC;
  signal uut2_n_71 : STD_LOGIC;
  signal uut2_n_72 : STD_LOGIC;
  signal uut2_n_73 : STD_LOGIC;
  signal uut2_n_74 : STD_LOGIC;
  signal uut2_n_75 : STD_LOGIC;
  signal uut2_n_76 : STD_LOGIC;
  signal uut2_n_77 : STD_LOGIC;
  signal uut2_n_78 : STD_LOGIC;
  signal uut2_n_79 : STD_LOGIC;
  signal uut2_n_80 : STD_LOGIC;
  signal uut2_n_81 : STD_LOGIC;
  signal uut2_n_82 : STD_LOGIC;
  signal uut2_n_83 : STD_LOGIC;
  signal uut2_n_84 : STD_LOGIC;
  signal uut2_n_85 : STD_LOGIC;
  signal uut2_n_86 : STD_LOGIC;
  signal uut2_n_87 : STD_LOGIC;
  signal uut2_n_88 : STD_LOGIC;
  signal uut2_n_89 : STD_LOGIC;
  signal uut2_n_90 : STD_LOGIC;
  signal uut2_n_91 : STD_LOGIC;
  signal uut2_n_92 : STD_LOGIC;
  signal uut2_n_93 : STD_LOGIC;
  signal uut2_n_94 : STD_LOGIC;
  signal uut2_n_95 : STD_LOGIC;
  signal uut2_n_96 : STD_LOGIC;
  signal uut2_n_97 : STD_LOGIC;
  signal uut2_n_98 : STD_LOGIC;
  signal uut3_n_0 : STD_LOGIC;
  signal uut3_n_1 : STD_LOGIC;
  signal uut3_n_10 : STD_LOGIC;
  signal uut3_n_11 : STD_LOGIC;
  signal uut3_n_12 : STD_LOGIC;
  signal uut3_n_13 : STD_LOGIC;
  signal uut3_n_14 : STD_LOGIC;
  signal uut3_n_15 : STD_LOGIC;
  signal uut3_n_16 : STD_LOGIC;
  signal uut3_n_17 : STD_LOGIC;
  signal uut3_n_18 : STD_LOGIC;
  signal uut3_n_19 : STD_LOGIC;
  signal uut3_n_2 : STD_LOGIC;
  signal uut3_n_20 : STD_LOGIC;
  signal uut3_n_21 : STD_LOGIC;
  signal uut3_n_22 : STD_LOGIC;
  signal uut3_n_23 : STD_LOGIC;
  signal uut3_n_24 : STD_LOGIC;
  signal uut3_n_25 : STD_LOGIC;
  signal uut3_n_26 : STD_LOGIC;
  signal uut3_n_27 : STD_LOGIC;
  signal uut3_n_3 : STD_LOGIC;
  signal uut3_n_36 : STD_LOGIC;
  signal uut3_n_37 : STD_LOGIC;
  signal uut3_n_38 : STD_LOGIC;
  signal uut3_n_4 : STD_LOGIC;
  signal uut3_n_5 : STD_LOGIC;
  signal uut3_n_6 : STD_LOGIC;
  signal uut3_n_7 : STD_LOGIC;
  signal uut3_n_8 : STD_LOGIC;
  signal uut3_n_9 : STD_LOGIC;
begin
  Q(9 downto 0) <= \^q\(9 downto 0);
  \processQ_reg[5]\(3 downto 0) <= \^processq_reg[5]\(3 downto 0);
uut1: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter
     port map (
      CLK => CLK,
      CO(0) => is_trigger_volt630_in,
      D(1 downto 0) => D(1 downto 0),
      DI(2) => is_vertical_gridline1(5),
      DI(1) => uut1_n_21,
      DI(0) => uut1_n_22,
      O(2) => uut3_n_25,
      O(1) => uut3_n_26,
      O(0) => uut3_n_27,
      Q(9 downto 0) => \^q\(9 downto 0),
      S(3) => uut1_n_12,
      S(2) => uut1_n_13,
      S(1) => uut1_n_14,
      S(0) => uut1_n_15,
      SR(0) => SR(0),
      \dc_bias[3]_i_12\(0) => is_trigger_time1,
      \dc_bias[3]_i_12_0\ => uut2_n_13,
      \dc_bias[3]_i_12_1\(0) => is_trigger_time616_in,
      \dc_bias[3]_i_12_2\ => uut2_n_73,
      \dc_bias[3]_i_14_0\(0) => is_trigger_volt422_in,
      \dc_bias[3]_i_14_1\(0) => is_trigger_volt4,
      \dc_bias[3]_i_14_2\ => uut2_n_68,
      \dc_bias[3]_i_14_3\(0) => is_trigger_volt3,
      \dc_bias[3]_i_14_4\(0) => is_trigger_volt319_in,
      \dc_bias[3]_i_28_0\(0) => is_trigger_time5,
      \dc_bias[3]_i_2__1\ => uut2_n_57,
      \dc_bias[3]_i_3__0\ => uut2_n_59,
      \dc_bias[3]_i_3__0_0\ => uut2_n_66,
      \dc_bias[3]_i_3__1_0\ => uut3_n_38,
      \dc_bias[3]_i_6_0\(0) => is_trigger_volt629_in,
      \dc_bias[3]_i_6_1\(0) => is_trigger_volt1,
      \dc_bias_reg[0]\ => uut2_n_56,
      \dc_bias_reg[0]_0\(2) => row(9),
      \dc_bias_reg[0]_0\(1 downto 0) => \^processq_reg[5]\(1 downto 0),
      \dc_bias_reg[1]\ => uut3_n_36,
      \dc_bias_reg[1]_0\ => uut2_n_2,
      \dc_bias_reg[1]_1\ => uut2_n_58,
      \dc_bias_reg[3]_i_55_0\ => \dc_bias_reg[3]_i_55\,
      \dc_bias_reg[3]_i_56_0\ => \dc_bias_reg[3]_i_56\,
      \dc_bias_reg[3]_i_92_0\ => \dc_bias_reg[3]_i_92\,
      \encoded_reg[0]\(0) => \encoded_reg[0]\(0),
      \encoded_reg[9]\ => uut2_n_1,
      \i___30_carry__0_i_1_0\(0) => uut3_n_2,
      \is_hash_mark2_inferred__0/i___21_carry\(1) => uut3_n_0,
      \is_hash_mark2_inferred__0/i___21_carry\(0) => uut3_n_1,
      \is_hash_mark2_inferred__0/i___30_carry__0\(3) => uut3_n_3,
      \is_hash_mark2_inferred__0/i___30_carry__0\(2) => uut3_n_4,
      \is_hash_mark2_inferred__0/i___30_carry__0\(1) => uut3_n_5,
      \is_hash_mark2_inferred__0/i___30_carry__0\(0) => uut3_n_6,
      \is_trigger_time6_inferred__2/i__carry\ => \is_trigger_time6_inferred__2/i__carry\,
      \is_trigger_time6_inferred__2/i__carry_0\ => \is_trigger_time6_inferred__2/i__carry_0\,
      \is_vertical_gridline0__20_carry\(0) => uut3_n_23,
      \is_vertical_gridline0__20_carry__0\(0) => uut3_n_24,
      \processQ_reg[0]_0\ => \processQ_reg[0]_0\,
      \processQ_reg[0]_1\ => uut1_n_69,
      \processQ_reg[1]_0\(2) => uut1_n_40,
      \processQ_reg[1]_0\(1) => uut1_n_41,
      \processQ_reg[1]_0\(0) => uut1_n_42,
      \processQ_reg[1]_1\ => uut1_n_68,
      \processQ_reg[1]_2\ => uut1_n_74,
      \processQ_reg[1]_3\(0) => is_trigger_time6,
      \processQ_reg[1]_4\(0) => is_trigger_time35_in,
      \processQ_reg[2]_0\(1) => uut1_n_57,
      \processQ_reg[2]_0\(0) => uut1_n_58,
      \processQ_reg[3]_0\ => uut1_n_11,
      \processQ_reg[3]_1\(3) => uut1_n_43,
      \processQ_reg[3]_1\(2) => uut1_n_44,
      \processQ_reg[3]_1\(1) => uut1_n_45,
      \processQ_reg[3]_1\(0) => uut1_n_46,
      \processQ_reg[4]_0\(3) => uut1_n_53,
      \processQ_reg[4]_0\(2) => uut1_n_54,
      \processQ_reg[4]_0\(1) => uut1_n_55,
      \processQ_reg[4]_0\(0) => uut1_n_56,
      \processQ_reg[4]_1\ => uut1_n_65,
      \processQ_reg[4]_2\ => \processQ_reg[4]\,
      \processQ_reg[5]_0\ => uut1_n_10,
      \processQ_reg[5]_1\(3) => uut1_n_36,
      \processQ_reg[5]_1\(2) => uut1_n_37,
      \processQ_reg[5]_1\(1) => uut1_n_38,
      \processQ_reg[5]_1\(0) => uut1_n_39,
      \processQ_reg[5]_2\ => \processQ_reg[5]_1\,
      \processQ_reg[6]_0\(3) => uut1_n_16,
      \processQ_reg[6]_0\(2) => uut1_n_17,
      \processQ_reg[6]_0\(1) => uut1_n_18,
      \processQ_reg[6]_0\(0) => uut1_n_19,
      \processQ_reg[6]_1\(1) => uut1_n_26,
      \processQ_reg[6]_1\(0) => uut1_n_27,
      \processQ_reg[6]_2\(1) => uut1_n_88,
      \processQ_reg[6]_2\(0) => uut1_n_89,
      \processQ_reg[7]_0\(3) => uut1_n_47,
      \processQ_reg[7]_0\(2) => uut1_n_48,
      \processQ_reg[7]_0\(1) => uut1_n_49,
      \processQ_reg[7]_0\(0) => uut1_n_50,
      \processQ_reg[7]_1\ => \processQ_reg[7]\,
      \processQ_reg[7]_2\(3) => uut1_n_70,
      \processQ_reg[7]_2\(2) => uut1_n_71,
      \processQ_reg[7]_2\(1) => uut1_n_72,
      \processQ_reg[7]_2\(0) => uut1_n_73,
      \processQ_reg[7]_3\(3) => uut1_n_75,
      \processQ_reg[7]_3\(2) => uut1_n_76,
      \processQ_reg[7]_3\(1) => uut1_n_77,
      \processQ_reg[7]_3\(0) => uut1_n_78,
      \processQ_reg[8]_0\(2) => uut1_n_104,
      \processQ_reg[8]_0\(1) => uut1_n_105,
      \processQ_reg[8]_0\(0) => uut1_n_106,
      \processQ_reg[9]_0\(2) => uut1_n_23,
      \processQ_reg[9]_0\(1) => uut1_n_24,
      \processQ_reg[9]_0\(0) => is_vertical_gridline1(7),
      \processQ_reg[9]_1\(3) => uut1_n_32,
      \processQ_reg[9]_1\(2) => uut1_n_33,
      \processQ_reg[9]_1\(1) => uut1_n_34,
      \processQ_reg[9]_1\(0) => uut1_n_35,
      \processQ_reg[9]_2\(1) => uut1_n_51,
      \processQ_reg[9]_2\(0) => uut1_n_52,
      \processQ_reg[9]_3\ => uut1_n_67,
      \processQ_reg[9]_4\(3) => uut1_n_83,
      \processQ_reg[9]_4\(2) => uut1_n_84,
      \processQ_reg[9]_4\(1) => uut1_n_85,
      \processQ_reg[9]_4\(0) => uut1_n_86,
      \processQ_reg[9]_5\(0) => uut1_n_87,
      \processQ_reg[9]_6\(0) => uut1_n_100,
      \processQ_reg[9]_7\(0) => is_trigger_time3,
      s00_axi_aresetn => s00_axi_aresetn,
      triggerTimeOut(7 downto 0) => triggerTimeOut(7 downto 0),
      \triggerTime_reg[7]\(3) => uut1_n_90,
      \triggerTime_reg[7]\(2) => uut1_n_91,
      \triggerTime_reg[7]\(1) => uut1_n_92,
      \triggerTime_reg[7]\(0) => uut1_n_93,
      \triggerTime_reg[7]_0\(3) => uut1_n_95,
      \triggerTime_reg[7]_0\(2) => uut1_n_96,
      \triggerTime_reg[7]_0\(1) => uut1_n_97,
      \triggerTime_reg[7]_0\(0) => uut1_n_98,
      \triggerTime_reg[8]\(0) => uut1_n_99,
      \triggerTime_reg[9]\(3) => uut1_n_28,
      \triggerTime_reg[9]\(2) => uut1_n_29,
      \triggerTime_reg[9]\(1) => uut1_n_30,
      \triggerTime_reg[9]\(0) => uut1_n_31,
      \triggerTime_reg[9]_0\(3) => uut1_n_79,
      \triggerTime_reg[9]_0\(2) => uut1_n_80,
      \triggerTime_reg[9]_0\(1) => uut1_n_81,
      \triggerTime_reg[9]_0\(0) => uut1_n_82,
      \triggerTime_reg[9]_1\(0) => uut1_n_94
    );
uut2: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter__parameterized1\
     port map (
      CLK => CLK,
      CO(0) => is_trigger_volt5,
      DI(2) => uut2_n_49,
      DI(1) => uut2_n_50,
      DI(0) => uut2_n_51,
      DOADO(3 downto 0) => DOADO(3 downto 0),
      O(2) => uut3_n_17,
      O(1) => uut3_n_18,
      O(0) => uut3_n_19,
      Q(9 downto 6) => row(9 downto 6),
      Q(5) => \^processq_reg[5]\(3),
      Q(4 downto 3) => row(4 downto 3),
      Q(2 downto 0) => \^processq_reg[5]\(2 downto 0),
      S(3) => uut2_n_14,
      S(2) => uut2_n_15,
      S(1) => uut2_n_16,
      S(0) => uut2_n_17,
      \dc_bias[3]_i_12_0\(0) => is_trigger_time3,
      \dc_bias[3]_i_12_1\(0) => is_trigger_time35_in,
      \dc_bias[3]_i_2\ => uut1_n_67,
      \dc_bias[3]_i_28\(0) => is_trigger_time6,
      \dc_bias[3]_i_28_0\(0) => is_trigger_time613_in,
      \dc_bias[3]_i_30\(0) => is_trigger_volt627_in,
      \dc_bias[3]_i_30_0\(1 downto 0) => \^q\(1 downto 0),
      \dc_bias[3]_i_38\ => uut2_n_83,
      \dc_bias[3]_i_4_0\(0) => S(0),
      \dc_bias[3]_i_6\ => uut1_n_74,
      \dc_bias[3]_i_7__0_0\(0) => \dc_bias[3]_i_7__0\(0),
      \dc_bias[3]_i_8__0\(2) => uut3_n_20,
      \dc_bias[3]_i_8__0\(1) => uut3_n_21,
      \dc_bias[3]_i_8__0\(0) => uut3_n_22,
      \dc_bias[3]_i_8__0_0\ => uut3_n_37,
      \dc_bias_reg[3]_i_15_0\ => \dc_bias_reg[3]_i_15\,
      \dc_bias_reg[3]_i_31_0\ => \dc_bias_reg[3]_i_31\,
      \dc_bias_reg[3]_i_62_0\ => \dc_bias_reg[3]_i_62\,
      \dc_bias_reg[3]_i_66_0\ => \dc_bias_reg[3]_i_66\,
      \dc_bias_reg[3]_i_9_0\ => \dc_bias_reg[3]_i_9\,
      \dc_bias_reg[3]_i_9_1\(3 downto 0) => \dc_bias_reg[3]_i_9_0\(3 downto 0),
      \encoded_reg[9]\ => uut1_n_69,
      \encoded_reg[9]_0\ => uut3_n_36,
      \encoded_reg[9]_1\ => uut1_n_65,
      \is_hash_mark2_inferred__2/i___12_carry__0\(3) => uut3_n_7,
      \is_hash_mark2_inferred__2/i___12_carry__0\(2) => uut3_n_8,
      \is_hash_mark2_inferred__2/i___12_carry__0\(1) => uut3_n_9,
      \is_hash_mark2_inferred__2/i___12_carry__0\(0) => uut3_n_10,
      \is_hash_mark2_inferred__2/i___12_carry__1\(0) => uut3_n_11,
      \is_horizontal_gridline0__23_carry\(2) => uut3_n_14,
      \is_horizontal_gridline0__23_carry\(1) => uut3_n_15,
      \is_horizontal_gridline0__23_carry\(0) => uut3_n_16,
      \is_horizontal_gridline0__23_carry_0\(0) => uut3_n_13,
      \is_horizontal_gridline0__29_carry\(0) => uut3_n_12,
      \is_horizontal_gridline0_carry__0\(0) => uut2_n_67,
      \is_horizontal_gridline0_carry__0_0\(2) => uut2_n_96,
      \is_horizontal_gridline0_carry__0_0\(1) => uut2_n_97,
      \is_horizontal_gridline0_carry__0_0\(0) => uut2_n_98,
      is_horizontal_gridline1(4 downto 0) => is_horizontal_gridline1(9 downto 5),
      \is_trigger_volt6_inferred__2/i__carry\ => \is_trigger_volt6_inferred__2/i__carry\,
      \is_trigger_volt6_inferred__2/i__carry_0\ => \is_trigger_volt6_inferred__2/i__carry_0\,
      \processQ_reg[0]_0\ => \processQ_reg[0]\,
      \processQ_reg[0]_1\ => uut2_n_60,
      \processQ_reg[0]_2\ => uut2_n_68,
      \processQ_reg[0]_3\ => uut1_n_10,
      \processQ_reg[1]_0\ => uut2_n_13,
      \processQ_reg[1]_1\ => uut2_n_61,
      \processQ_reg[1]_2\(0) => is_trigger_volt319_in,
      \processQ_reg[2]_0\(1) => uut2_n_52,
      \processQ_reg[2]_0\(0) => uut2_n_53,
      \processQ_reg[2]_1\ => uut2_n_73,
      \processQ_reg[3]_0\(3) => uut2_n_36,
      \processQ_reg[3]_0\(2) => uut2_n_37,
      \processQ_reg[3]_0\(1) => uut2_n_38,
      \processQ_reg[3]_0\(0) => uut2_n_39,
      \processQ_reg[3]_1\(3) => uut2_n_40,
      \processQ_reg[3]_1\(2) => uut2_n_41,
      \processQ_reg[3]_1\(1) => uut2_n_42,
      \processQ_reg[3]_1\(0) => uut2_n_43,
      \processQ_reg[3]_2\(0) => uut2_n_54,
      \processQ_reg[4]_0\(2) => uut2_n_29,
      \processQ_reg[4]_0\(1) => uut2_n_30,
      \processQ_reg[4]_0\(0) => uut2_n_31,
      \processQ_reg[4]_1\(0) => uut2_n_84,
      \processQ_reg[5]_0\(2) => uut2_n_26,
      \processQ_reg[5]_0\(1) => uut2_n_27,
      \processQ_reg[5]_0\(0) => uut2_n_28,
      \processQ_reg[5]_1\ => \processQ_reg[5]_0\,
      \processQ_reg[5]_2\ => uut2_n_59,
      \processQ_reg[7]_0\(3) => uut2_n_45,
      \processQ_reg[7]_0\(2) => uut2_n_46,
      \processQ_reg[7]_0\(1) => uut2_n_47,
      \processQ_reg[7]_0\(0) => uut2_n_48,
      \processQ_reg[7]_1\(3) => uut2_n_62,
      \processQ_reg[7]_1\(2) => uut2_n_63,
      \processQ_reg[7]_1\(1) => uut2_n_64,
      \processQ_reg[7]_1\(0) => uut2_n_65,
      \processQ_reg[7]_2\ => uut2_n_66,
      \processQ_reg[7]_3\(3) => uut2_n_69,
      \processQ_reg[7]_3\(2) => uut2_n_70,
      \processQ_reg[7]_3\(1) => uut2_n_71,
      \processQ_reg[7]_3\(0) => uut2_n_72,
      \processQ_reg[8]_0\(0) => uut2_n_44,
      \processQ_reg[8]_1\ => uut2_n_56,
      \processQ_reg[8]_2\(0) => uut2_n_89,
      \processQ_reg[8]_3\(1) => uut2_n_104,
      \processQ_reg[8]_3\(0) => uut2_n_105,
      \processQ_reg[9]_0\ => uut2_n_1,
      \processQ_reg[9]_1\(2) => uut2_n_18,
      \processQ_reg[9]_1\(1) => uut2_n_19,
      \processQ_reg[9]_1\(0) => uut2_n_20,
      \processQ_reg[9]_2\ => uut2_n_57,
      \processQ_reg[9]_3\(3) => uut2_n_78,
      \processQ_reg[9]_3\(2) => uut2_n_79,
      \processQ_reg[9]_3\(1) => uut2_n_80,
      \processQ_reg[9]_3\(0) => uut2_n_81,
      \processQ_reg[9]_4\(0) => uut2_n_82,
      \processQ_reg[9]_5\(0) => uut2_n_95,
      \processQ_reg[9]_6\(0) => is_trigger_volt4,
      \processQ_reg[9]_7\(0) => is_trigger_volt422_in,
      \processQ_reg[9]_8\(0) => is_trigger_volt3,
      \processQ_reg[9]_9\(0) => is_trigger_volt629_in,
      s00_axi_aresetn => s00_axi_aresetn,
      switch(1 downto 0) => switch(1 downto 0),
      switch_0_sp_1 => uut2_n_58,
      switch_1_sp_1 => uut2_n_2,
      triggerVoltOut(7 downto 0) => triggerVoltOut(7 downto 0),
      \triggerVolt_reg[7]\(3) => uut2_n_85,
      \triggerVolt_reg[7]\(2) => uut2_n_86,
      \triggerVolt_reg[7]\(1) => uut2_n_87,
      \triggerVolt_reg[7]\(0) => uut2_n_88,
      \triggerVolt_reg[7]_0\(3) => uut2_n_90,
      \triggerVolt_reg[7]_0\(2) => uut2_n_91,
      \triggerVolt_reg[7]_0\(1) => uut2_n_92,
      \triggerVolt_reg[7]_0\(0) => uut2_n_93,
      \triggerVolt_reg[8]\(0) => uut2_n_94,
      \triggerVolt_reg[9]\(3) => uut2_n_32,
      \triggerVolt_reg[9]\(2) => uut2_n_33,
      \triggerVolt_reg[9]\(1) => uut2_n_34,
      \triggerVolt_reg[9]\(0) => uut2_n_35,
      \triggerVolt_reg[9]_0\(3) => uut2_n_74,
      \triggerVolt_reg[9]_0\(2) => uut2_n_75,
      \triggerVolt_reg[9]_0\(1) => uut2_n_76,
      \triggerVolt_reg[9]_0\(0) => uut2_n_77
    );
uut3: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_scopeFace
     port map (
      CO(0) => is_trigger_volt5,
      DI(2) => uut2_n_49,
      DI(1) => uut2_n_50,
      DI(0) => uut2_n_51,
      O(2) => uut3_n_17,
      O(1) => uut3_n_18,
      O(0) => uut3_n_19,
      Q(8 downto 0) => \^q\(8 downto 0),
      S(3) => uut2_n_14,
      S(2) => uut2_n_15,
      S(1) => uut2_n_16,
      S(0) => uut2_n_17,
      \dc_bias[3]_i_14\(3) => uut2_n_32,
      \dc_bias[3]_i_14\(2) => uut2_n_33,
      \dc_bias[3]_i_14\(1) => uut2_n_34,
      \dc_bias[3]_i_14\(0) => uut2_n_35,
      \dc_bias[3]_i_14_0\ => uut2_n_61,
      \dc_bias[3]_i_14_1\(3) => uut2_n_78,
      \dc_bias[3]_i_14_1\(2) => uut2_n_79,
      \dc_bias[3]_i_14_1\(1) => uut2_n_80,
      \dc_bias[3]_i_14_1\(0) => uut2_n_81,
      \dc_bias[3]_i_14_2\(3) => uut2_n_74,
      \dc_bias[3]_i_14_2\(2) => uut2_n_75,
      \dc_bias[3]_i_14_2\(1) => uut2_n_76,
      \dc_bias[3]_i_14_2\(0) => uut2_n_77,
      \dc_bias[3]_i_16__0_0\(2) => is_vertical_gridline1(5),
      \dc_bias[3]_i_16__0_0\(1) => uut1_n_21,
      \dc_bias[3]_i_16__0_0\(0) => uut1_n_22,
      \dc_bias[3]_i_16__0_1\(1) => uut1_n_26,
      \dc_bias[3]_i_16__0_1\(0) => uut1_n_27,
      \dc_bias[3]_i_17__0\(0) => uut2_n_54,
      \dc_bias[3]_i_17__0_0\(2) => uut2_n_26,
      \dc_bias[3]_i_17__0_0\(1) => uut2_n_27,
      \dc_bias[3]_i_17__0_0\(0) => uut2_n_28,
      \dc_bias[3]_i_18__0_0\(3) => uut1_n_43,
      \dc_bias[3]_i_18__0_0\(2) => uut1_n_44,
      \dc_bias[3]_i_18__0_0\(1) => uut1_n_45,
      \dc_bias[3]_i_18__0_0\(0) => uut1_n_46,
      \dc_bias[3]_i_23_0\(3) => uut2_n_45,
      \dc_bias[3]_i_23_0\(2) => uut2_n_46,
      \dc_bias[3]_i_23_0\(1) => uut2_n_47,
      \dc_bias[3]_i_23_0\(0) => uut2_n_48,
      \dc_bias[3]_i_28\(3) => uut1_n_28,
      \dc_bias[3]_i_28\(2) => uut1_n_29,
      \dc_bias[3]_i_28\(1) => uut1_n_30,
      \dc_bias[3]_i_28\(0) => uut1_n_31,
      \dc_bias[3]_i_28_0\ => uut1_n_68,
      \dc_bias[3]_i_28_1\(3) => uut1_n_83,
      \dc_bias[3]_i_28_1\(2) => uut1_n_84,
      \dc_bias[3]_i_28_1\(1) => uut1_n_85,
      \dc_bias[3]_i_28_1\(0) => uut1_n_86,
      \dc_bias[3]_i_28_2\(3) => uut1_n_79,
      \dc_bias[3]_i_28_2\(2) => uut1_n_80,
      \dc_bias[3]_i_28_2\(1) => uut1_n_81,
      \dc_bias[3]_i_28_2\(0) => uut1_n_82,
      \dc_bias[3]_i_38_0\(1) => uut2_n_52,
      \dc_bias[3]_i_38_0\(0) => uut2_n_53,
      \dc_bias[3]_i_38_1\(3) => uut2_n_36,
      \dc_bias[3]_i_38_1\(2) => uut2_n_37,
      \dc_bias[3]_i_38_1\(1) => uut2_n_38,
      \dc_bias[3]_i_38_1\(0) => uut2_n_39,
      \dc_bias[3]_i_40_0\(3) => uut1_n_47,
      \dc_bias[3]_i_40_0\(2) => uut1_n_48,
      \dc_bias[3]_i_40_0\(1) => uut1_n_49,
      \dc_bias[3]_i_40_0\(0) => uut1_n_50,
      \dc_bias[3]_i_41_0\(1) => uut1_n_51,
      \dc_bias[3]_i_41_0\(0) => uut1_n_52,
      \dc_bias[3]_i_4__0\ => uut2_n_83,
      \dc_bias[3]_i_4__0_0\ => uut2_n_60,
      \dc_bias[3]_i_51_0\(3) => uut2_n_40,
      \dc_bias[3]_i_51_0\(2) => uut2_n_41,
      \dc_bias[3]_i_51_0\(1) => uut2_n_42,
      \dc_bias[3]_i_51_0\(0) => uut2_n_43,
      \dc_bias[3]_i_52_0\(0) => uut2_n_44,
      \dc_bias[3]_i_57\(0) => uut1_n_100,
      \dc_bias[3]_i_57_0\(0) => uut1_n_99,
      \dc_bias[3]_i_58\(0) => uut1_n_87,
      \dc_bias[3]_i_58_0\(0) => uut1_n_94,
      \dc_bias[3]_i_61\(0) => uut2_n_82,
      \dc_bias[3]_i_61_0\(0) => uut2_n_89,
      \dc_bias[3]_i_61_1\(0) => uut2_n_95,
      \dc_bias[3]_i_61_2\(0) => uut2_n_94,
      \dc_bias[3]_i_8__0_0\(2) => uut1_n_11,
      \dc_bias[3]_i_8__0_0\(1) => uut1_n_57,
      \dc_bias[3]_i_8__0_0\(0) => uut1_n_58,
      \dc_bias[3]_i_8__0_1\(3) => uut1_n_53,
      \dc_bias[3]_i_8__0_1\(2) => uut1_n_54,
      \dc_bias[3]_i_8__0_1\(1) => uut1_n_55,
      \dc_bias[3]_i_8__0_1\(0) => uut1_n_56,
      \i___12_carry__0_i_4\(1) => uut2_n_104,
      \i___12_carry__0_i_4\(0) => uut2_n_105,
      \i___12_carry__1_i_1\(9 downto 6) => row(9 downto 6),
      \i___12_carry__1_i_1\(5) => \^processq_reg[5]\(3),
      \i___12_carry__1_i_1\(4 downto 3) => row(4 downto 3),
      \i___12_carry__1_i_1\(2 downto 0) => \^processq_reg[5]\(2 downto 0),
      \i___21_carry_i_2\(3) => uut1_n_32,
      \i___21_carry_i_2\(2) => uut1_n_33,
      \i___21_carry_i_2\(1) => uut1_n_34,
      \i___21_carry_i_2\(0) => uut1_n_35,
      \i___30_carry_i_1\(2) => uut1_n_104,
      \i___30_carry_i_1\(1) => uut1_n_105,
      \i___30_carry_i_1\(0) => uut1_n_106,
      \is_hash_mark2_inferred__0/i__carry__0_0\(2) => uut1_n_40,
      \is_hash_mark2_inferred__0/i__carry__0_0\(1) => uut1_n_41,
      \is_hash_mark2_inferred__0/i__carry__0_0\(0) => uut1_n_42,
      \is_hash_mark2_inferred__0/i__carry__1_0\(3) => uut1_n_36,
      \is_hash_mark2_inferred__0/i__carry__1_0\(2) => uut1_n_37,
      \is_hash_mark2_inferred__0/i__carry__1_0\(1) => uut1_n_38,
      \is_hash_mark2_inferred__0/i__carry__1_0\(0) => uut1_n_39,
      \is_horizontal_gridline0__29_carry__0_i_5\(0) => uut2_n_67,
      \is_horizontal_gridline0__29_carry__0_i_5_0\(2) => uut2_n_96,
      \is_horizontal_gridline0__29_carry__0_i_5_0\(1) => uut2_n_97,
      \is_horizontal_gridline0__29_carry__0_i_5_0\(0) => uut2_n_98,
      \is_horizontal_gridline0__29_carry_i_4\(2) => uut2_n_18,
      \is_horizontal_gridline0__29_carry_i_4\(1) => uut2_n_19,
      \is_horizontal_gridline0__29_carry_i_4\(0) => uut2_n_20,
      \is_horizontal_gridline0__29_carry_i_5\(0) => uut2_n_84,
      \is_horizontal_gridline0_carry__0_0\(2) => uut2_n_29,
      \is_horizontal_gridline0_carry__0_0\(1) => uut2_n_30,
      \is_horizontal_gridline0_carry__0_0\(0) => uut2_n_31,
      is_horizontal_gridline1(4 downto 0) => is_horizontal_gridline1(9 downto 5),
      \is_trigger_time5_carry__0_0\(3) => uut1_n_70,
      \is_trigger_time5_carry__0_0\(2) => uut1_n_71,
      \is_trigger_time5_carry__0_0\(1) => uut1_n_72,
      \is_trigger_time5_carry__0_0\(0) => uut1_n_73,
      \is_trigger_time5_carry__0_1\(3) => uut1_n_95,
      \is_trigger_time5_carry__0_1\(2) => uut1_n_96,
      \is_trigger_time5_carry__0_1\(1) => uut1_n_97,
      \is_trigger_time5_carry__0_1\(0) => uut1_n_98,
      \is_trigger_time6_inferred__0/i__carry__0_0\(3) => uut1_n_75,
      \is_trigger_time6_inferred__0/i__carry__0_0\(2) => uut1_n_76,
      \is_trigger_time6_inferred__0/i__carry__0_0\(1) => uut1_n_77,
      \is_trigger_time6_inferred__0/i__carry__0_0\(0) => uut1_n_78,
      \is_trigger_time6_inferred__0/i__carry__0_1\(3) => uut1_n_90,
      \is_trigger_time6_inferred__0/i__carry__0_1\(2) => uut1_n_91,
      \is_trigger_time6_inferred__0/i__carry__0_1\(1) => uut1_n_92,
      \is_trigger_time6_inferred__0/i__carry__0_1\(0) => uut1_n_93,
      \is_trigger_volt5_carry__0_0\(3) => uut2_n_62,
      \is_trigger_volt5_carry__0_0\(2) => uut2_n_63,
      \is_trigger_volt5_carry__0_0\(1) => uut2_n_64,
      \is_trigger_volt5_carry__0_0\(0) => uut2_n_65,
      \is_trigger_volt5_carry__0_1\(3) => uut2_n_90,
      \is_trigger_volt5_carry__0_1\(2) => uut2_n_91,
      \is_trigger_volt5_carry__0_1\(1) => uut2_n_92,
      \is_trigger_volt5_carry__0_1\(0) => uut2_n_93,
      \is_trigger_volt6_inferred__0/i__carry__0_0\(3) => uut2_n_69,
      \is_trigger_volt6_inferred__0/i__carry__0_0\(2) => uut2_n_70,
      \is_trigger_volt6_inferred__0/i__carry__0_0\(1) => uut2_n_71,
      \is_trigger_volt6_inferred__0/i__carry__0_0\(0) => uut2_n_72,
      \is_trigger_volt6_inferred__0/i__carry__0_1\(3) => uut2_n_85,
      \is_trigger_volt6_inferred__0/i__carry__0_1\(2) => uut2_n_86,
      \is_trigger_volt6_inferred__0/i__carry__0_1\(1) => uut2_n_87,
      \is_trigger_volt6_inferred__0/i__carry__0_1\(0) => uut2_n_88,
      \is_vertical_gridline0__20_carry__0_i_2\(2) => uut1_n_23,
      \is_vertical_gridline0__20_carry__0_i_2\(1) => uut1_n_24,
      \is_vertical_gridline0__20_carry__0_i_2\(0) => is_vertical_gridline1(7),
      \is_vertical_gridline0__20_carry_i_6\(3) => uut1_n_16,
      \is_vertical_gridline0__20_carry_i_6\(2) => uut1_n_17,
      \is_vertical_gridline0__20_carry_i_6\(1) => uut1_n_18,
      \is_vertical_gridline0__20_carry_i_6\(0) => uut1_n_19,
      \is_vertical_gridline0_carry__0_0\(1) => uut1_n_88,
      \is_vertical_gridline0_carry__0_0\(0) => uut1_n_89,
      \is_vertical_gridline0_carry__0_1\(3) => uut1_n_12,
      \is_vertical_gridline0_carry__0_1\(2) => uut1_n_13,
      \is_vertical_gridline0_carry__0_1\(1) => uut1_n_14,
      \is_vertical_gridline0_carry__0_1\(0) => uut1_n_15,
      \processQ_reg[0]\(0) => uut3_n_23,
      \processQ_reg[0]_0\ => uut3_n_36,
      \processQ_reg[1]\(0) => uut3_n_12,
      \processQ_reg[1]_0\(2) => uut3_n_20,
      \processQ_reg[1]_0\(1) => uut3_n_21,
      \processQ_reg[1]_0\(0) => uut3_n_22,
      \processQ_reg[1]_1\(0) => is_trigger_time616_in,
      \processQ_reg[1]_2\(0) => is_trigger_volt630_in,
      \processQ_reg[1]_3\ => uut3_n_37,
      \processQ_reg[7]\ => uut3_n_38,
      \processQ_reg[8]\(1) => uut3_n_0,
      \processQ_reg[8]\(0) => uut3_n_1,
      \processQ_reg[8]_0\(0) => uut3_n_2,
      \processQ_reg[8]_1\(3) => uut3_n_3,
      \processQ_reg[8]_1\(2) => uut3_n_4,
      \processQ_reg[8]_1\(1) => uut3_n_5,
      \processQ_reg[8]_1\(0) => uut3_n_6,
      \processQ_reg[8]_2\(3) => uut3_n_7,
      \processQ_reg[8]_2\(2) => uut3_n_8,
      \processQ_reg[8]_2\(1) => uut3_n_9,
      \processQ_reg[8]_2\(0) => uut3_n_10,
      \processQ_reg[9]\(0) => uut3_n_11,
      \processQ_reg[9]_0\(0) => uut3_n_13,
      \processQ_reg[9]_1\(2) => uut3_n_14,
      \processQ_reg[9]_1\(1) => uut3_n_15,
      \processQ_reg[9]_1\(0) => uut3_n_16,
      \processQ_reg[9]_2\(0) => uut3_n_24,
      \processQ_reg[9]_3\(2) => uut3_n_25,
      \processQ_reg[9]_3\(1) => uut3_n_26,
      \processQ_reg[9]_3\(0) => uut3_n_27,
      \processQ_reg[9]_4\(0) => is_trigger_time613_in,
      \processQ_reg[9]_5\(0) => is_trigger_time5,
      \processQ_reg[9]_6\(0) => is_trigger_volt627_in,
      \triggerTime_reg[9]\(0) => is_trigger_time1,
      \triggerVolt_reg[9]\(0) => is_trigger_volt1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_init is
  port (
    scl : inout STD_LOGIC;
    sda : inout STD_LOGIC;
    CLK : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_init;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_init is
  signal data0 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal data1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data2 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data_i : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \data_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \data_i[0]_i_2_n_0\ : STD_LOGIC;
  signal \data_i[1]_i_1_n_0\ : STD_LOGIC;
  signal \data_i[2]_i_1_n_0\ : STD_LOGIC;
  signal \data_i[3]_i_1_n_0\ : STD_LOGIC;
  signal \data_i[4]_i_1_n_0\ : STD_LOGIC;
  signal \data_i[4]_i_2_n_0\ : STD_LOGIC;
  signal \data_i[5]_i_1_n_0\ : STD_LOGIC;
  signal \data_i[5]_i_2_n_0\ : STD_LOGIC;
  signal \data_i[6]_i_1_n_0\ : STD_LOGIC;
  signal \data_i[6]_i_2_n_0\ : STD_LOGIC;
  signal \data_i[6]_i_3_n_0\ : STD_LOGIC;
  signal \data_i[6]_i_4_n_0\ : STD_LOGIC;
  signal \data_i[7]_i_1_n_0\ : STD_LOGIC;
  signal delayEn : STD_LOGIC;
  signal delayEn_i_1_n_0 : STD_LOGIC;
  signal delaycnt : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal delaycnt0 : STD_LOGIC;
  signal \delaycnt0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \delaycnt0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \delaycnt0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \delaycnt0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \delaycnt0_carry__0_n_0\ : STD_LOGIC;
  signal \delaycnt0_carry__0_n_1\ : STD_LOGIC;
  signal \delaycnt0_carry__0_n_2\ : STD_LOGIC;
  signal \delaycnt0_carry__0_n_3\ : STD_LOGIC;
  signal \delaycnt0_carry__0_n_4\ : STD_LOGIC;
  signal \delaycnt0_carry__0_n_5\ : STD_LOGIC;
  signal \delaycnt0_carry__0_n_6\ : STD_LOGIC;
  signal \delaycnt0_carry__0_n_7\ : STD_LOGIC;
  signal \delaycnt0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \delaycnt0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \delaycnt0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \delaycnt0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \delaycnt0_carry__1_n_0\ : STD_LOGIC;
  signal \delaycnt0_carry__1_n_1\ : STD_LOGIC;
  signal \delaycnt0_carry__1_n_2\ : STD_LOGIC;
  signal \delaycnt0_carry__1_n_3\ : STD_LOGIC;
  signal \delaycnt0_carry__1_n_4\ : STD_LOGIC;
  signal \delaycnt0_carry__1_n_5\ : STD_LOGIC;
  signal \delaycnt0_carry__1_n_6\ : STD_LOGIC;
  signal \delaycnt0_carry__1_n_7\ : STD_LOGIC;
  signal \delaycnt0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \delaycnt0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \delaycnt0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \delaycnt0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \delaycnt0_carry__2_n_0\ : STD_LOGIC;
  signal \delaycnt0_carry__2_n_1\ : STD_LOGIC;
  signal \delaycnt0_carry__2_n_2\ : STD_LOGIC;
  signal \delaycnt0_carry__2_n_3\ : STD_LOGIC;
  signal \delaycnt0_carry__2_n_4\ : STD_LOGIC;
  signal \delaycnt0_carry__2_n_5\ : STD_LOGIC;
  signal \delaycnt0_carry__2_n_6\ : STD_LOGIC;
  signal \delaycnt0_carry__2_n_7\ : STD_LOGIC;
  signal \delaycnt0_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \delaycnt0_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \delaycnt0_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \delaycnt0_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \delaycnt0_carry__3_n_0\ : STD_LOGIC;
  signal \delaycnt0_carry__3_n_1\ : STD_LOGIC;
  signal \delaycnt0_carry__3_n_2\ : STD_LOGIC;
  signal \delaycnt0_carry__3_n_3\ : STD_LOGIC;
  signal \delaycnt0_carry__3_n_4\ : STD_LOGIC;
  signal \delaycnt0_carry__3_n_5\ : STD_LOGIC;
  signal \delaycnt0_carry__3_n_6\ : STD_LOGIC;
  signal \delaycnt0_carry__3_n_7\ : STD_LOGIC;
  signal \delaycnt0_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \delaycnt0_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \delaycnt0_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \delaycnt0_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \delaycnt0_carry__4_n_0\ : STD_LOGIC;
  signal \delaycnt0_carry__4_n_1\ : STD_LOGIC;
  signal \delaycnt0_carry__4_n_2\ : STD_LOGIC;
  signal \delaycnt0_carry__4_n_3\ : STD_LOGIC;
  signal \delaycnt0_carry__4_n_4\ : STD_LOGIC;
  signal \delaycnt0_carry__4_n_5\ : STD_LOGIC;
  signal \delaycnt0_carry__4_n_6\ : STD_LOGIC;
  signal \delaycnt0_carry__4_n_7\ : STD_LOGIC;
  signal \delaycnt0_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \delaycnt0_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \delaycnt0_carry__5_i_3_n_0\ : STD_LOGIC;
  signal \delaycnt0_carry__5_i_4_n_0\ : STD_LOGIC;
  signal \delaycnt0_carry__5_n_0\ : STD_LOGIC;
  signal \delaycnt0_carry__5_n_1\ : STD_LOGIC;
  signal \delaycnt0_carry__5_n_2\ : STD_LOGIC;
  signal \delaycnt0_carry__5_n_3\ : STD_LOGIC;
  signal \delaycnt0_carry__5_n_4\ : STD_LOGIC;
  signal \delaycnt0_carry__5_n_5\ : STD_LOGIC;
  signal \delaycnt0_carry__5_n_6\ : STD_LOGIC;
  signal \delaycnt0_carry__5_n_7\ : STD_LOGIC;
  signal \delaycnt0_carry__6_i_1_n_0\ : STD_LOGIC;
  signal \delaycnt0_carry__6_i_2_n_0\ : STD_LOGIC;
  signal \delaycnt0_carry__6_i_3_n_0\ : STD_LOGIC;
  signal \delaycnt0_carry__6_n_2\ : STD_LOGIC;
  signal \delaycnt0_carry__6_n_3\ : STD_LOGIC;
  signal \delaycnt0_carry__6_n_5\ : STD_LOGIC;
  signal \delaycnt0_carry__6_n_6\ : STD_LOGIC;
  signal \delaycnt0_carry__6_n_7\ : STD_LOGIC;
  signal delaycnt0_carry_i_1_n_0 : STD_LOGIC;
  signal delaycnt0_carry_i_2_n_0 : STD_LOGIC;
  signal delaycnt0_carry_i_3_n_0 : STD_LOGIC;
  signal delaycnt0_carry_i_4_n_0 : STD_LOGIC;
  signal delaycnt0_carry_n_0 : STD_LOGIC;
  signal delaycnt0_carry_n_1 : STD_LOGIC;
  signal delaycnt0_carry_n_2 : STD_LOGIC;
  signal delaycnt0_carry_n_3 : STD_LOGIC;
  signal delaycnt0_carry_n_4 : STD_LOGIC;
  signal delaycnt0_carry_n_5 : STD_LOGIC;
  signal delaycnt0_carry_n_6 : STD_LOGIC;
  signal delaycnt0_carry_n_7 : STD_LOGIC;
  signal \delaycnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \initA[0]_i_1_n_0\ : STD_LOGIC;
  signal \initA[6]_i_3_n_0\ : STD_LOGIC;
  signal \initA[6]_i_5_n_0\ : STD_LOGIC;
  signal initA_reg : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal initEn : STD_LOGIC;
  signal initEn_i_3_n_0 : STD_LOGIC;
  signal \initWord[0]_i_1_n_0\ : STD_LOGIC;
  signal \initWord[10]_i_1_n_0\ : STD_LOGIC;
  signal \initWord[11]_i_1_n_0\ : STD_LOGIC;
  signal \initWord[12]_i_1_n_0\ : STD_LOGIC;
  signal \initWord[13]_i_1_n_0\ : STD_LOGIC;
  signal \initWord[14]_i_1_n_0\ : STD_LOGIC;
  signal \initWord[15]_i_1_n_0\ : STD_LOGIC;
  signal \initWord[16]_i_1_n_0\ : STD_LOGIC;
  signal \initWord[17]_i_1_n_0\ : STD_LOGIC;
  signal \initWord[18]_i_1_n_0\ : STD_LOGIC;
  signal \initWord[19]_i_1_n_0\ : STD_LOGIC;
  signal \initWord[20]_i_1_n_0\ : STD_LOGIC;
  signal \initWord[21]_i_1_n_0\ : STD_LOGIC;
  signal \initWord[23]_i_1_n_0\ : STD_LOGIC;
  signal \initWord[30]_i_1_n_0\ : STD_LOGIC;
  signal \initWord[30]_i_2_n_0\ : STD_LOGIC;
  signal \initWord[30]_i_3_n_0\ : STD_LOGIC;
  signal \initWord[5]_i_1_n_0\ : STD_LOGIC;
  signal \initWord[8]_i_1_n_0\ : STD_LOGIC;
  signal \initWord[9]_i_1_n_0\ : STD_LOGIC;
  signal \initWord_reg_n_0_[0]\ : STD_LOGIC;
  signal \initWord_reg_n_0_[5]\ : STD_LOGIC;
  signal msg_i_1_n_0 : STD_LOGIC;
  signal msg_reg_n_0 : STD_LOGIC;
  signal \p_1_in__0\ : STD_LOGIC_VECTOR ( 6 downto 1 );
  signal \state[1]_i_2_n_0\ : STD_LOGIC;
  signal \state[1]_i_4_n_0\ : STD_LOGIC;
  signal \state[1]_i_6_n_0\ : STD_LOGIC;
  signal \state[2]_i_2_n_0\ : STD_LOGIC;
  signal \state[3]_i_10_n_0\ : STD_LOGIC;
  signal \state[3]_i_11_n_0\ : STD_LOGIC;
  signal \state[3]_i_12_n_0\ : STD_LOGIC;
  signal \state[3]_i_13_n_0\ : STD_LOGIC;
  signal \state[3]_i_3_n_0\ : STD_LOGIC;
  signal \state[3]_i_4_n_0\ : STD_LOGIC;
  signal \state[3]_i_6_n_0\ : STD_LOGIC;
  signal \state[3]_i_7_n_0\ : STD_LOGIC;
  signal \state[3]_i_8_n_0\ : STD_LOGIC;
  signal \state[3]_i_9_n_0\ : STD_LOGIC;
  signal \state_reg_n_0_[0]\ : STD_LOGIC;
  signal \state_reg_n_0_[1]\ : STD_LOGIC;
  signal \state_reg_n_0_[2]\ : STD_LOGIC;
  signal \state_reg_n_0_[3]\ : STD_LOGIC;
  signal stb : STD_LOGIC;
  signal stb_i_1_n_0 : STD_LOGIC;
  signal twi_controller_n_0 : STD_LOGIC;
  signal twi_controller_n_1 : STD_LOGIC;
  signal twi_controller_n_2 : STD_LOGIC;
  signal twi_controller_n_3 : STD_LOGIC;
  signal twi_controller_n_4 : STD_LOGIC;
  signal twi_controller_n_5 : STD_LOGIC;
  signal twi_controller_n_6 : STD_LOGIC;
  signal \NLW_delaycnt0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_delaycnt0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \data_i[2]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \data_i[4]_i_2\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \data_i[5]_i_2\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \data_i[6]_i_4\ : label is "soft_lutpair47";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of delaycnt0_carry : label is 35;
  attribute ADDER_THRESHOLD of \delaycnt0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \delaycnt0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \delaycnt0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \delaycnt0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \delaycnt0_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \delaycnt0_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \delaycnt0_carry__6\ : label is 35;
  attribute SOFT_HLUTNM of \delaycnt[0]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \initA[0]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \initA[1]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \initA[2]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \initA[3]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \initA[4]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \initA[6]_i_5\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \initWord[0]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \initWord[11]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \initWord[30]_i_3\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \initWord[5]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of msg_i_1 : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \state[1]_i_2\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \state[3]_i_4\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \state[3]_i_7\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of stb_i_1 : label is "soft_lutpair47";
begin
\data_i[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF7F747F70"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[3]\,
      I4 => data2(0),
      I5 => \data_i[0]_i_2_n_0\,
      O => \data_i[0]_i_1_n_0\
    );
\data_i[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"74FF444474444444"
    )
        port map (
      I0 => \state_reg_n_0_[3]\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \initWord_reg_n_0_[0]\,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[0]\,
      I5 => data1(0),
      O => \data_i[0]_i_2_n_0\
    );
\data_i[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000A000C0000"
    )
        port map (
      I0 => data2(1),
      I1 => data1(1),
      I2 => \state_reg_n_0_[3]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => \state_reg_n_0_[0]\,
      I5 => \state_reg_n_0_[1]\,
      O => \data_i[1]_i_1_n_0\
    );
\data_i[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAEEFAAA"
    )
        port map (
      I0 => \data_i[5]_i_2_n_0\,
      I1 => data1(2),
      I2 => data2(2),
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[0]\,
      O => \data_i[2]_i_1_n_0\
    );
\data_i[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAEEFAAA"
    )
        port map (
      I0 => \data_i[5]_i_2_n_0\,
      I1 => data1(3),
      I2 => data2(3),
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[0]\,
      O => \data_i[3]_i_1_n_0\
    );
\data_i[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAA0000F0000000"
    )
        port map (
      I0 => data1(4),
      I1 => \initWord_reg_n_0_[5]\,
      I2 => data2(4),
      I3 => \state_reg_n_0_[1]\,
      I4 => \data_i[4]_i_2_n_0\,
      I5 => \state_reg_n_0_[0]\,
      O => \data_i[4]_i_1_n_0\
    );
\data_i[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \state_reg_n_0_[3]\,
      O => \data_i[4]_i_2_n_0\
    );
\data_i[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAEEFAAA"
    )
        port map (
      I0 => \data_i[5]_i_2_n_0\,
      I1 => data1(5),
      I2 => data2(5),
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[0]\,
      O => \data_i[5]_i_1_n_0\
    );
\data_i[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3EFCFCFC"
    )
        port map (
      I0 => \initWord_reg_n_0_[5]\,
      I1 => \state_reg_n_0_[3]\,
      I2 => \state_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[0]\,
      O => \data_i[5]_i_2_n_0\
    );
\data_i[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAAEAAAEAAAEA"
    )
        port map (
      I0 => \data_i[6]_i_2_n_0\,
      I1 => data0(6),
      I2 => \data_i[6]_i_3_n_0\,
      I3 => \state[3]_i_4_n_0\,
      I4 => \data_i[6]_i_4_n_0\,
      I5 => data2(6),
      O => \data_i[6]_i_1_n_0\
    );
\data_i[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0FC0000A00C0000"
    )
        port map (
      I0 => \initWord_reg_n_0_[5]\,
      I1 => data0(6),
      I2 => \state_reg_n_0_[0]\,
      I3 => \state_reg_n_0_[1]\,
      I4 => \data_i[4]_i_2_n_0\,
      I5 => data1(7),
      O => \data_i[6]_i_2_n_0\
    );
\data_i[6]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \state_reg_n_0_[3]\,
      O => \data_i[6]_i_3_n_0\
    );
\data_i[6]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \state_reg_n_0_[3]\,
      I3 => \state_reg_n_0_[0]\,
      O => \data_i[6]_i_4_n_0\
    );
\data_i[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000A000C0000"
    )
        port map (
      I0 => data2(7),
      I1 => data1(7),
      I2 => \state_reg_n_0_[3]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => \state_reg_n_0_[0]\,
      I5 => \state_reg_n_0_[1]\,
      O => \data_i[7]_i_1_n_0\
    );
\data_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s00_axi_aresetn,
      D => \data_i[0]_i_1_n_0\,
      Q => data_i(0),
      R => '0'
    );
\data_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s00_axi_aresetn,
      D => \data_i[1]_i_1_n_0\,
      Q => data_i(1),
      R => '0'
    );
\data_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s00_axi_aresetn,
      D => \data_i[2]_i_1_n_0\,
      Q => data_i(2),
      R => '0'
    );
\data_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s00_axi_aresetn,
      D => \data_i[3]_i_1_n_0\,
      Q => data_i(3),
      R => '0'
    );
\data_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s00_axi_aresetn,
      D => \data_i[4]_i_1_n_0\,
      Q => data_i(4),
      R => '0'
    );
\data_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s00_axi_aresetn,
      D => \data_i[5]_i_1_n_0\,
      Q => data_i(5),
      R => '0'
    );
\data_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s00_axi_aresetn,
      D => \data_i[6]_i_1_n_0\,
      Q => data_i(6),
      R => '0'
    );
\data_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s00_axi_aresetn,
      D => \data_i[7]_i_1_n_0\,
      Q => data_i(7),
      R => '0'
    );
delayEn_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABAAA8AA00000000"
    )
        port map (
      I0 => delayEn,
      I1 => \state[3]_i_4_n_0\,
      I2 => \state_reg_n_0_[3]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => \state[3]_i_3_n_0\,
      I5 => s00_axi_aresetn,
      O => delayEn_i_1_n_0
    );
delayEn_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => delayEn_i_1_n_0,
      Q => delayEn,
      R => '0'
    );
delaycnt0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => delaycnt0_carry_n_0,
      CO(2) => delaycnt0_carry_n_1,
      CO(1) => delaycnt0_carry_n_2,
      CO(0) => delaycnt0_carry_n_3,
      CYINIT => delaycnt(0),
      DI(3 downto 0) => delaycnt(4 downto 1),
      O(3) => delaycnt0_carry_n_4,
      O(2) => delaycnt0_carry_n_5,
      O(1) => delaycnt0_carry_n_6,
      O(0) => delaycnt0_carry_n_7,
      S(3) => delaycnt0_carry_i_1_n_0,
      S(2) => delaycnt0_carry_i_2_n_0,
      S(1) => delaycnt0_carry_i_3_n_0,
      S(0) => delaycnt0_carry_i_4_n_0
    );
\delaycnt0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => delaycnt0_carry_n_0,
      CO(3) => \delaycnt0_carry__0_n_0\,
      CO(2) => \delaycnt0_carry__0_n_1\,
      CO(1) => \delaycnt0_carry__0_n_2\,
      CO(0) => \delaycnt0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => delaycnt(8 downto 5),
      O(3) => \delaycnt0_carry__0_n_4\,
      O(2) => \delaycnt0_carry__0_n_5\,
      O(1) => \delaycnt0_carry__0_n_6\,
      O(0) => \delaycnt0_carry__0_n_7\,
      S(3) => \delaycnt0_carry__0_i_1_n_0\,
      S(2) => \delaycnt0_carry__0_i_2_n_0\,
      S(1) => \delaycnt0_carry__0_i_3_n_0\,
      S(0) => \delaycnt0_carry__0_i_4_n_0\
    );
\delaycnt0_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delaycnt(8),
      O => \delaycnt0_carry__0_i_1_n_0\
    );
\delaycnt0_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delaycnt(7),
      O => \delaycnt0_carry__0_i_2_n_0\
    );
\delaycnt0_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delaycnt(6),
      O => \delaycnt0_carry__0_i_3_n_0\
    );
\delaycnt0_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delaycnt(5),
      O => \delaycnt0_carry__0_i_4_n_0\
    );
\delaycnt0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \delaycnt0_carry__0_n_0\,
      CO(3) => \delaycnt0_carry__1_n_0\,
      CO(2) => \delaycnt0_carry__1_n_1\,
      CO(1) => \delaycnt0_carry__1_n_2\,
      CO(0) => \delaycnt0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => delaycnt(12 downto 9),
      O(3) => \delaycnt0_carry__1_n_4\,
      O(2) => \delaycnt0_carry__1_n_5\,
      O(1) => \delaycnt0_carry__1_n_6\,
      O(0) => \delaycnt0_carry__1_n_7\,
      S(3) => \delaycnt0_carry__1_i_1_n_0\,
      S(2) => \delaycnt0_carry__1_i_2_n_0\,
      S(1) => \delaycnt0_carry__1_i_3_n_0\,
      S(0) => \delaycnt0_carry__1_i_4_n_0\
    );
\delaycnt0_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delaycnt(12),
      O => \delaycnt0_carry__1_i_1_n_0\
    );
\delaycnt0_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delaycnt(11),
      O => \delaycnt0_carry__1_i_2_n_0\
    );
\delaycnt0_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delaycnt(10),
      O => \delaycnt0_carry__1_i_3_n_0\
    );
\delaycnt0_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delaycnt(9),
      O => \delaycnt0_carry__1_i_4_n_0\
    );
\delaycnt0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \delaycnt0_carry__1_n_0\,
      CO(3) => \delaycnt0_carry__2_n_0\,
      CO(2) => \delaycnt0_carry__2_n_1\,
      CO(1) => \delaycnt0_carry__2_n_2\,
      CO(0) => \delaycnt0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => delaycnt(16 downto 13),
      O(3) => \delaycnt0_carry__2_n_4\,
      O(2) => \delaycnt0_carry__2_n_5\,
      O(1) => \delaycnt0_carry__2_n_6\,
      O(0) => \delaycnt0_carry__2_n_7\,
      S(3) => \delaycnt0_carry__2_i_1_n_0\,
      S(2) => \delaycnt0_carry__2_i_2_n_0\,
      S(1) => \delaycnt0_carry__2_i_3_n_0\,
      S(0) => \delaycnt0_carry__2_i_4_n_0\
    );
\delaycnt0_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delaycnt(16),
      O => \delaycnt0_carry__2_i_1_n_0\
    );
\delaycnt0_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delaycnt(15),
      O => \delaycnt0_carry__2_i_2_n_0\
    );
\delaycnt0_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delaycnt(14),
      O => \delaycnt0_carry__2_i_3_n_0\
    );
\delaycnt0_carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delaycnt(13),
      O => \delaycnt0_carry__2_i_4_n_0\
    );
\delaycnt0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \delaycnt0_carry__2_n_0\,
      CO(3) => \delaycnt0_carry__3_n_0\,
      CO(2) => \delaycnt0_carry__3_n_1\,
      CO(1) => \delaycnt0_carry__3_n_2\,
      CO(0) => \delaycnt0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => delaycnt(20 downto 17),
      O(3) => \delaycnt0_carry__3_n_4\,
      O(2) => \delaycnt0_carry__3_n_5\,
      O(1) => \delaycnt0_carry__3_n_6\,
      O(0) => \delaycnt0_carry__3_n_7\,
      S(3) => \delaycnt0_carry__3_i_1_n_0\,
      S(2) => \delaycnt0_carry__3_i_2_n_0\,
      S(1) => \delaycnt0_carry__3_i_3_n_0\,
      S(0) => \delaycnt0_carry__3_i_4_n_0\
    );
\delaycnt0_carry__3_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delaycnt(20),
      O => \delaycnt0_carry__3_i_1_n_0\
    );
\delaycnt0_carry__3_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delaycnt(19),
      O => \delaycnt0_carry__3_i_2_n_0\
    );
\delaycnt0_carry__3_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delaycnt(18),
      O => \delaycnt0_carry__3_i_3_n_0\
    );
\delaycnt0_carry__3_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delaycnt(17),
      O => \delaycnt0_carry__3_i_4_n_0\
    );
\delaycnt0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \delaycnt0_carry__3_n_0\,
      CO(3) => \delaycnt0_carry__4_n_0\,
      CO(2) => \delaycnt0_carry__4_n_1\,
      CO(1) => \delaycnt0_carry__4_n_2\,
      CO(0) => \delaycnt0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => delaycnt(24 downto 21),
      O(3) => \delaycnt0_carry__4_n_4\,
      O(2) => \delaycnt0_carry__4_n_5\,
      O(1) => \delaycnt0_carry__4_n_6\,
      O(0) => \delaycnt0_carry__4_n_7\,
      S(3) => \delaycnt0_carry__4_i_1_n_0\,
      S(2) => \delaycnt0_carry__4_i_2_n_0\,
      S(1) => \delaycnt0_carry__4_i_3_n_0\,
      S(0) => \delaycnt0_carry__4_i_4_n_0\
    );
\delaycnt0_carry__4_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delaycnt(24),
      O => \delaycnt0_carry__4_i_1_n_0\
    );
\delaycnt0_carry__4_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delaycnt(23),
      O => \delaycnt0_carry__4_i_2_n_0\
    );
\delaycnt0_carry__4_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delaycnt(22),
      O => \delaycnt0_carry__4_i_3_n_0\
    );
\delaycnt0_carry__4_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delaycnt(21),
      O => \delaycnt0_carry__4_i_4_n_0\
    );
\delaycnt0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \delaycnt0_carry__4_n_0\,
      CO(3) => \delaycnt0_carry__5_n_0\,
      CO(2) => \delaycnt0_carry__5_n_1\,
      CO(1) => \delaycnt0_carry__5_n_2\,
      CO(0) => \delaycnt0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => delaycnt(28 downto 25),
      O(3) => \delaycnt0_carry__5_n_4\,
      O(2) => \delaycnt0_carry__5_n_5\,
      O(1) => \delaycnt0_carry__5_n_6\,
      O(0) => \delaycnt0_carry__5_n_7\,
      S(3) => \delaycnt0_carry__5_i_1_n_0\,
      S(2) => \delaycnt0_carry__5_i_2_n_0\,
      S(1) => \delaycnt0_carry__5_i_3_n_0\,
      S(0) => \delaycnt0_carry__5_i_4_n_0\
    );
\delaycnt0_carry__5_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delaycnt(28),
      O => \delaycnt0_carry__5_i_1_n_0\
    );
\delaycnt0_carry__5_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delaycnt(27),
      O => \delaycnt0_carry__5_i_2_n_0\
    );
\delaycnt0_carry__5_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delaycnt(26),
      O => \delaycnt0_carry__5_i_3_n_0\
    );
\delaycnt0_carry__5_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delaycnt(25),
      O => \delaycnt0_carry__5_i_4_n_0\
    );
\delaycnt0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \delaycnt0_carry__5_n_0\,
      CO(3 downto 2) => \NLW_delaycnt0_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \delaycnt0_carry__6_n_2\,
      CO(0) => \delaycnt0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => delaycnt(30 downto 29),
      O(3) => \NLW_delaycnt0_carry__6_O_UNCONNECTED\(3),
      O(2) => \delaycnt0_carry__6_n_5\,
      O(1) => \delaycnt0_carry__6_n_6\,
      O(0) => \delaycnt0_carry__6_n_7\,
      S(3) => '0',
      S(2) => \delaycnt0_carry__6_i_1_n_0\,
      S(1) => \delaycnt0_carry__6_i_2_n_0\,
      S(0) => \delaycnt0_carry__6_i_3_n_0\
    );
\delaycnt0_carry__6_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delaycnt(31),
      O => \delaycnt0_carry__6_i_1_n_0\
    );
\delaycnt0_carry__6_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delaycnt(30),
      O => \delaycnt0_carry__6_i_2_n_0\
    );
\delaycnt0_carry__6_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delaycnt(29),
      O => \delaycnt0_carry__6_i_3_n_0\
    );
delaycnt0_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delaycnt(4),
      O => delaycnt0_carry_i_1_n_0
    );
delaycnt0_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delaycnt(3),
      O => delaycnt0_carry_i_2_n_0
    );
delaycnt0_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delaycnt(2),
      O => delaycnt0_carry_i_3_n_0
    );
delaycnt0_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delaycnt(1),
      O => delaycnt0_carry_i_4_n_0
    );
\delaycnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delaycnt(0),
      O => \delaycnt[0]_i_1_n_0\
    );
\delaycnt[31]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delayEn,
      O => delaycnt0
    );
\delaycnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \delaycnt[0]_i_1_n_0\,
      Q => delaycnt(0),
      R => delaycnt0
    );
\delaycnt_reg[10]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => '1',
      D => \delaycnt0_carry__1_n_6\,
      Q => delaycnt(10),
      S => delaycnt0
    );
\delaycnt_reg[11]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => '1',
      D => \delaycnt0_carry__1_n_5\,
      Q => delaycnt(11),
      S => delaycnt0
    );
\delaycnt_reg[12]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => '1',
      D => \delaycnt0_carry__1_n_4\,
      Q => delaycnt(12),
      S => delaycnt0
    );
\delaycnt_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \delaycnt0_carry__2_n_7\,
      Q => delaycnt(13),
      R => delaycnt0
    );
\delaycnt_reg[14]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => '1',
      D => \delaycnt0_carry__2_n_6\,
      Q => delaycnt(14),
      S => delaycnt0
    );
\delaycnt_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \delaycnt0_carry__2_n_5\,
      Q => delaycnt(15),
      R => delaycnt0
    );
\delaycnt_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \delaycnt0_carry__2_n_4\,
      Q => delaycnt(16),
      R => delaycnt0
    );
\delaycnt_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \delaycnt0_carry__3_n_7\,
      Q => delaycnt(17),
      R => delaycnt0
    );
\delaycnt_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \delaycnt0_carry__3_n_6\,
      Q => delaycnt(18),
      R => delaycnt0
    );
\delaycnt_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \delaycnt0_carry__3_n_5\,
      Q => delaycnt(19),
      R => delaycnt0
    );
\delaycnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => delaycnt0_carry_n_7,
      Q => delaycnt(1),
      R => delaycnt0
    );
\delaycnt_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \delaycnt0_carry__3_n_4\,
      Q => delaycnt(20),
      R => delaycnt0
    );
\delaycnt_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \delaycnt0_carry__4_n_7\,
      Q => delaycnt(21),
      R => delaycnt0
    );
\delaycnt_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \delaycnt0_carry__4_n_6\,
      Q => delaycnt(22),
      R => delaycnt0
    );
\delaycnt_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \delaycnt0_carry__4_n_5\,
      Q => delaycnt(23),
      R => delaycnt0
    );
\delaycnt_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \delaycnt0_carry__4_n_4\,
      Q => delaycnt(24),
      R => delaycnt0
    );
\delaycnt_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \delaycnt0_carry__5_n_7\,
      Q => delaycnt(25),
      R => delaycnt0
    );
\delaycnt_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \delaycnt0_carry__5_n_6\,
      Q => delaycnt(26),
      R => delaycnt0
    );
\delaycnt_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \delaycnt0_carry__5_n_5\,
      Q => delaycnt(27),
      R => delaycnt0
    );
\delaycnt_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \delaycnt0_carry__5_n_4\,
      Q => delaycnt(28),
      R => delaycnt0
    );
\delaycnt_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \delaycnt0_carry__6_n_7\,
      Q => delaycnt(29),
      R => delaycnt0
    );
\delaycnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => delaycnt0_carry_n_6,
      Q => delaycnt(2),
      R => delaycnt0
    );
\delaycnt_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \delaycnt0_carry__6_n_6\,
      Q => delaycnt(30),
      R => delaycnt0
    );
\delaycnt_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \delaycnt0_carry__6_n_5\,
      Q => delaycnt(31),
      R => delaycnt0
    );
\delaycnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => delaycnt0_carry_n_5,
      Q => delaycnt(3),
      R => delaycnt0
    );
\delaycnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => delaycnt0_carry_n_4,
      Q => delaycnt(4),
      R => delaycnt0
    );
\delaycnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \delaycnt0_carry__0_n_7\,
      Q => delaycnt(5),
      R => delaycnt0
    );
\delaycnt_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => '1',
      D => \delaycnt0_carry__0_n_6\,
      Q => delaycnt(6),
      S => delaycnt0
    );
\delaycnt_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => '1',
      D => \delaycnt0_carry__0_n_5\,
      Q => delaycnt(7),
      S => delaycnt0
    );
\delaycnt_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => '1',
      D => \delaycnt0_carry__0_n_4\,
      Q => delaycnt(8),
      S => delaycnt0
    );
\delaycnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \delaycnt0_carry__1_n_7\,
      Q => delaycnt(9),
      R => delaycnt0
    );
\initA[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => initA_reg(0),
      O => \initA[0]_i_1_n_0\
    );
\initA[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => initA_reg(1),
      I1 => initA_reg(0),
      O => \p_1_in__0\(1)
    );
\initA[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => initA_reg(1),
      I1 => initA_reg(0),
      I2 => initA_reg(2),
      O => \p_1_in__0\(2)
    );
\initA[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6CCC"
    )
        port map (
      I0 => initA_reg(2),
      I1 => initA_reg(3),
      I2 => initA_reg(0),
      I3 => initA_reg(1),
      O => \p_1_in__0\(3)
    );
\initA[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => initA_reg(2),
      I1 => initA_reg(3),
      I2 => initA_reg(0),
      I3 => initA_reg(1),
      I4 => initA_reg(4),
      O => \p_1_in__0\(4)
    );
\initA[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => initA_reg(1),
      I1 => initA_reg(0),
      I2 => initA_reg(3),
      I3 => initA_reg(2),
      I4 => initA_reg(4),
      I5 => initA_reg(5),
      O => \p_1_in__0\(5)
    );
\initA[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCC6CCCCCCCCCCC"
    )
        port map (
      I0 => initA_reg(5),
      I1 => initA_reg(6),
      I2 => initA_reg(2),
      I3 => initA_reg(3),
      I4 => \initWord[30]_i_3_n_0\,
      I5 => initA_reg(4),
      O => \p_1_in__0\(6)
    );
\initA[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
        port map (
      I0 => \state_reg_n_0_[3]\,
      I1 => \state_reg_n_0_[2]\,
      I2 => initEn,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[0]\,
      I5 => \state[3]_i_3_n_0\,
      O => \initA[6]_i_3_n_0\
    );
\initA[6]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \state_reg_n_0_[3]\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[0]\,
      O => \initA[6]_i_5_n_0\
    );
\initA_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => twi_controller_n_4,
      D => \initA[0]_i_1_n_0\,
      Q => initA_reg(0),
      R => SR(0)
    );
\initA_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => twi_controller_n_4,
      D => \p_1_in__0\(1),
      Q => initA_reg(1),
      R => SR(0)
    );
\initA_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => twi_controller_n_4,
      D => \p_1_in__0\(2),
      Q => initA_reg(2),
      R => SR(0)
    );
\initA_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => twi_controller_n_4,
      D => \p_1_in__0\(3),
      Q => initA_reg(3),
      R => SR(0)
    );
\initA_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => twi_controller_n_4,
      D => \p_1_in__0\(4),
      Q => initA_reg(4),
      R => SR(0)
    );
\initA_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => twi_controller_n_4,
      D => \p_1_in__0\(5),
      Q => initA_reg(5),
      R => SR(0)
    );
\initA_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => twi_controller_n_4,
      D => \p_1_in__0\(6),
      Q => initA_reg(6),
      R => SR(0)
    );
initEn_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[1]\,
      I2 => initEn,
      I3 => s00_axi_aresetn,
      I4 => \state_reg_n_0_[2]\,
      I5 => \state_reg_n_0_[3]\,
      O => initEn_i_3_n_0
    );
initEn_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => twi_controller_n_6,
      Q => initEn,
      R => '0'
    );
\initWord[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => initA_reg(1),
      I1 => initA_reg(0),
      I2 => initA_reg(5),
      O => \initWord[0]_i_1_n_0\
    );
\initWord[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000B004000080090"
    )
        port map (
      I0 => initA_reg(0),
      I1 => initA_reg(2),
      I2 => initA_reg(3),
      I3 => initA_reg(5),
      I4 => initA_reg(4),
      I5 => initA_reg(1),
      O => \initWord[10]_i_1_n_0\
    );
\initWord[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000F0002"
    )
        port map (
      I0 => initA_reg(3),
      I1 => initA_reg(4),
      I2 => initA_reg(0),
      I3 => initA_reg(1),
      I4 => initA_reg(5),
      O => \initWord[11]_i_1_n_0\
    );
\initWord[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100010000"
    )
        port map (
      I0 => initA_reg(0),
      I1 => initA_reg(1),
      I2 => initA_reg(4),
      I3 => initA_reg(5),
      I4 => initA_reg(3),
      I5 => initA_reg(2),
      O => \initWord[12]_i_1_n_0\
    );
\initWord[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA04BE01BA00BA00"
    )
        port map (
      I0 => initA_reg(5),
      I1 => initA_reg(2),
      I2 => initA_reg(4),
      I3 => initA_reg(1),
      I4 => initA_reg(0),
      I5 => initA_reg(3),
      O => \initWord[13]_i_1_n_0\
    );
\initWord[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0003004000400090"
    )
        port map (
      I0 => initA_reg(0),
      I1 => initA_reg(2),
      I2 => initA_reg(3),
      I3 => initA_reg(5),
      I4 => initA_reg(4),
      I5 => initA_reg(1),
      O => \initWord[14]_i_1_n_0\
    );
\initWord[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000902000008"
    )
        port map (
      I0 => initA_reg(1),
      I1 => initA_reg(4),
      I2 => initA_reg(5),
      I3 => initA_reg(3),
      I4 => initA_reg(2),
      I5 => initA_reg(0),
      O => \initWord[15]_i_1_n_0\
    );
\initWord[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000069E0838F"
    )
        port map (
      I0 => initA_reg(2),
      I1 => initA_reg(3),
      I2 => initA_reg(0),
      I3 => initA_reg(1),
      I4 => initA_reg(4),
      I5 => initA_reg(5),
      O => \initWord[16]_i_1_n_0\
    );
\initWord[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"474A454C454C4246"
    )
        port map (
      I0 => initA_reg(1),
      I1 => initA_reg(0),
      I2 => initA_reg(5),
      I3 => initA_reg(4),
      I4 => initA_reg(2),
      I5 => initA_reg(3),
      O => \initWord[17]_i_1_n_0\
    );
\initWord[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEACA6A8AEA1ACA3"
    )
        port map (
      I0 => initA_reg(1),
      I1 => initA_reg(3),
      I2 => initA_reg(5),
      I3 => initA_reg(4),
      I4 => initA_reg(0),
      I5 => initA_reg(2),
      O => \initWord[18]_i_1_n_0\
    );
\initWord[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF6100F6FF6200E6"
    )
        port map (
      I0 => initA_reg(2),
      I1 => initA_reg(3),
      I2 => initA_reg(4),
      I3 => initA_reg(5),
      I4 => initA_reg(1),
      I5 => initA_reg(0),
      O => \initWord[19]_i_1_n_0\
    );
\initWord[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3002300330010313"
    )
        port map (
      I0 => initA_reg(0),
      I1 => initA_reg(5),
      I2 => initA_reg(4),
      I3 => initA_reg(3),
      I4 => initA_reg(2),
      I5 => initA_reg(1),
      O => \initWord[20]_i_1_n_0\
    );
\initWord[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F33E3328"
    )
        port map (
      I0 => initA_reg(0),
      I1 => initA_reg(4),
      I2 => initA_reg(2),
      I3 => initA_reg(3),
      I4 => initA_reg(1),
      I5 => initA_reg(5),
      O => \initWord[21]_i_1_n_0\
    );
\initWord[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C00000800030008"
    )
        port map (
      I0 => initA_reg(0),
      I1 => initA_reg(1),
      I2 => initA_reg(5),
      I3 => initA_reg(4),
      I4 => initA_reg(3),
      I5 => initA_reg(2),
      O => \initWord[23]_i_1_n_0\
    );
\initWord[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000001000000FFFF"
    )
        port map (
      I0 => initA_reg(3),
      I1 => initA_reg(2),
      I2 => initA_reg(4),
      I3 => \initWord[30]_i_3_n_0\,
      I4 => initA_reg(6),
      I5 => initA_reg(5),
      O => \initWord[30]_i_1_n_0\
    );
\initWord[30]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => initA_reg(1),
      I1 => initA_reg(5),
      O => \initWord[30]_i_2_n_0\
    );
\initWord[30]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => initA_reg(0),
      I1 => initA_reg(1),
      O => \initWord[30]_i_3_n_0\
    );
\initWord[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => initA_reg(1),
      I1 => initA_reg(0),
      I2 => initA_reg(5),
      O => \initWord[5]_i_1_n_0\
    );
\initWord[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFF1CFDAAFFBC7D"
    )
        port map (
      I0 => initA_reg(1),
      I1 => initA_reg(2),
      I2 => initA_reg(3),
      I3 => initA_reg(0),
      I4 => initA_reg(5),
      I5 => initA_reg(4),
      O => \initWord[8]_i_1_n_0\
    );
\initWord[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000511A45F0"
    )
        port map (
      I0 => initA_reg(4),
      I1 => initA_reg(0),
      I2 => initA_reg(3),
      I3 => initA_reg(2),
      I4 => initA_reg(1),
      I5 => initA_reg(5),
      O => \initWord[9]_i_1_n_0\
    );
\initWord_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \initWord[30]_i_1_n_0\,
      D => \initWord[0]_i_1_n_0\,
      Q => \initWord_reg_n_0_[0]\,
      R => '0'
    );
\initWord_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \initWord[30]_i_1_n_0\,
      D => \initWord[10]_i_1_n_0\,
      Q => data2(2),
      R => '0'
    );
\initWord_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \initWord[30]_i_1_n_0\,
      D => \initWord[11]_i_1_n_0\,
      Q => data2(3),
      R => '0'
    );
\initWord_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \initWord[30]_i_1_n_0\,
      D => \initWord[12]_i_1_n_0\,
      Q => data2(4),
      R => '0'
    );
\initWord_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \initWord[30]_i_1_n_0\,
      D => \initWord[13]_i_1_n_0\,
      Q => data2(5),
      R => '0'
    );
\initWord_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \initWord[30]_i_1_n_0\,
      D => \initWord[14]_i_1_n_0\,
      Q => data2(6),
      R => '0'
    );
\initWord_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \initWord[30]_i_1_n_0\,
      D => \initWord[15]_i_1_n_0\,
      Q => data2(7),
      R => '0'
    );
\initWord_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \initWord[30]_i_1_n_0\,
      D => \initWord[16]_i_1_n_0\,
      Q => data1(0),
      R => '0'
    );
\initWord_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \initWord[30]_i_1_n_0\,
      D => \initWord[17]_i_1_n_0\,
      Q => data1(1),
      R => '0'
    );
\initWord_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \initWord[30]_i_1_n_0\,
      D => \initWord[18]_i_1_n_0\,
      Q => data1(2),
      R => '0'
    );
\initWord_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \initWord[30]_i_1_n_0\,
      D => \initWord[19]_i_1_n_0\,
      Q => data1(3),
      R => '0'
    );
\initWord_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \initWord[30]_i_1_n_0\,
      D => \initWord[20]_i_1_n_0\,
      Q => data1(4),
      R => '0'
    );
\initWord_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \initWord[30]_i_1_n_0\,
      D => \initWord[21]_i_1_n_0\,
      Q => data1(5),
      R => '0'
    );
\initWord_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \initWord[30]_i_1_n_0\,
      D => \initWord[23]_i_1_n_0\,
      Q => data1(7),
      R => '0'
    );
\initWord_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \initWord[30]_i_1_n_0\,
      D => \initWord[30]_i_2_n_0\,
      Q => data0(6),
      R => '0'
    );
\initWord_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \initWord[30]_i_1_n_0\,
      D => \initWord[5]_i_1_n_0\,
      Q => \initWord_reg_n_0_[5]\,
      R => '0'
    );
\initWord_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \initWord[30]_i_1_n_0\,
      D => \initWord[8]_i_1_n_0\,
      Q => data2(0),
      R => '0'
    );
\initWord_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \initWord[30]_i_1_n_0\,
      D => \initWord[9]_i_1_n_0\,
      Q => data2(1),
      R => '0'
    );
msg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[3]\,
      I3 => \state_reg_n_0_[2]\,
      O => msg_i_1_n_0
    );
msg_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s00_axi_aresetn,
      D => msg_i_1_n_0,
      Q => msg_reg_n_0,
      R => '0'
    );
\state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => initA_reg(4),
      I1 => initA_reg(2),
      I2 => initA_reg(3),
      I3 => initA_reg(1),
      I4 => initA_reg(0),
      O => \state[1]_i_2_n_0\
    );
\state[1]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \initWord_reg_n_0_[5]\,
      I1 => \initWord_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[0]\,
      O => \state[1]_i_4_n_0\
    );
\state[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => data1(3),
      I1 => data1(4),
      I2 => data1(1),
      I3 => data1(2),
      I4 => data1(7),
      I5 => data1(5),
      O => \state[1]_i_6_n_0\
    );
\state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000F100"
    )
        port map (
      I0 => \initWord_reg_n_0_[0]\,
      I1 => \initWord_reg_n_0_[5]\,
      I2 => \state_reg_n_0_[0]\,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[2]\,
      I5 => \state_reg_n_0_[3]\,
      O => \state[2]_i_2_n_0\
    );
\state[3]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => delaycnt(13),
      I1 => delaycnt(12),
      I2 => delaycnt(15),
      I3 => delaycnt(14),
      O => \state[3]_i_10_n_0\
    );
\state[3]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => delaycnt(5),
      I1 => delaycnt(4),
      I2 => delaycnt(7),
      I3 => delaycnt(6),
      O => \state[3]_i_11_n_0\
    );
\state[3]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => delaycnt(29),
      I1 => delaycnt(28),
      I2 => delaycnt(31),
      I3 => delaycnt(30),
      O => \state[3]_i_12_n_0\
    );
\state[3]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => delaycnt(21),
      I1 => delaycnt(20),
      I2 => delaycnt(23),
      I3 => delaycnt(22),
      O => \state[3]_i_13_n_0\
    );
\state[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \state[3]_i_6_n_0\,
      I1 => \state[3]_i_7_n_0\,
      I2 => \state[3]_i_8_n_0\,
      I3 => \state[3]_i_9_n_0\,
      O => \state[3]_i_3_n_0\
    );
\state[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[1]\,
      O => \state[3]_i_4_n_0\
    );
\state[3]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => delaycnt(10),
      I1 => delaycnt(11),
      I2 => delaycnt(8),
      I3 => delaycnt(9),
      I4 => \state[3]_i_10_n_0\,
      O => \state[3]_i_6_n_0\
    );
\state[3]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => delaycnt(2),
      I1 => delaycnt(3),
      I2 => delaycnt(0),
      I3 => delaycnt(1),
      I4 => \state[3]_i_11_n_0\,
      O => \state[3]_i_7_n_0\
    );
\state[3]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => delaycnt(26),
      I1 => delaycnt(27),
      I2 => delaycnt(24),
      I3 => delaycnt(25),
      I4 => \state[3]_i_12_n_0\,
      O => \state[3]_i_8_n_0\
    );
\state[3]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => delaycnt(18),
      I1 => delaycnt(19),
      I2 => delaycnt(16),
      I3 => delaycnt(17),
      I4 => \state[3]_i_13_n_0\,
      O => \state[3]_i_9_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => twi_controller_n_5,
      D => twi_controller_n_3,
      Q => \state_reg_n_0_[0]\,
      R => SR(0)
    );
\state_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => twi_controller_n_5,
      D => twi_controller_n_2,
      Q => \state_reg_n_0_[1]\,
      S => SR(0)
    );
\state_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => twi_controller_n_5,
      D => twi_controller_n_1,
      Q => \state_reg_n_0_[2]\,
      S => SR(0)
    );
\state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => twi_controller_n_5,
      D => twi_controller_n_0,
      Q => \state_reg_n_0_[3]\,
      R => SR(0)
    );
stb_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"800F"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[3]\,
      I3 => \state_reg_n_0_[2]\,
      O => stb_i_1_n_0
    );
stb_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s00_axi_aresetn,
      D => stb_i_1_n_0,
      Q => stb,
      R => '0'
    );
twi_controller: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TWICtl
     port map (
      CLK => CLK,
      D(3) => twi_controller_n_0,
      D(2) => twi_controller_n_1,
      D(1) => twi_controller_n_2,
      D(0) => twi_controller_n_3,
      E(0) => twi_controller_n_4,
      \FSM_gray_state_reg[2]_0\ => msg_reg_n_0,
      Q(7 downto 0) => data_i(7 downto 0),
      \initA_reg[0]\ => \initA[6]_i_3_n_0\,
      \initA_reg[0]_0\(6) => data1(7),
      \initA_reg[0]_0\(5 downto 0) => data1(5 downto 0),
      \initA_reg[0]_1\ => \initA[6]_i_5_n_0\,
      initEn => initEn,
      initEn_reg => \state[3]_i_3_n_0\,
      initEn_reg_0 => initEn_i_3_n_0,
      s00_axi_aresetn => s00_axi_aresetn,
      scl => scl,
      sda => sda,
      \state_reg[0]\(0) => twi_controller_n_5,
      \state_reg[1]\(1 downto 0) => initA_reg(6 downto 5),
      \state_reg[1]_0\ => \state[1]_i_2_n_0\,
      \state_reg[1]_1\ => \state[1]_i_4_n_0\,
      \state_reg[1]_2\ => \state[1]_i_6_n_0\,
      \state_reg[1]_3\ => \data_i[4]_i_2_n_0\,
      \state_reg[2]\ => twi_controller_n_6,
      \state_reg[2]_0\ => \state[2]_i_2_n_0\,
      \state_reg[2]_1\(3) => \state_reg_n_0_[3]\,
      \state_reg[2]_1\(2) => \state_reg_n_0_[2]\,
      \state_reg[2]_1\(1) => \state_reg_n_0_[1]\,
      \state_reg[2]_1\(0) => \state_reg_n_0_[0]\,
      \state_reg[3]\ => \state[3]_i_4_n_0\,
      stb => stb
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_wiz_0 is
  port (
    clk_out1 : out STD_LOGIC;
    clk_out2 : out STD_LOGIC;
    clk_out3 : out STD_LOGIC;
    resetn : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    lopt : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_wiz_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_wiz_0 is
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_wiz_0_clk_wiz
     port map (
      clk_in1 => clk_in1,
      clk_out1 => clk_out1,
      clk_out2 => clk_out2,
      clk_out3 => clk_out3,
      lopt => lopt,
      resetn => resetn
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_wiz_1 is
  port (
    clk_out1 : out STD_LOGIC;
    clk_out2 : out STD_LOGIC;
    resetn : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    lopt : out STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_wiz_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_wiz_1 is
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_wiz_1_clk_wiz
     port map (
      clk_in1 => clk_in1,
      clk_out1 => clk_out1,
      clk_out2 => clk_out2,
      lopt => lopt,
      resetn => resetn
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dvid is
  port (
    red_s : out STD_LOGIC;
    green_s : out STD_LOGIC;
    blue_s : out STD_LOGIC;
    clock_s : out STD_LOGIC;
    \triggerVolt_reg[6]\ : out STD_LOGIC;
    \triggerVolt_reg[4]\ : out STD_LOGIC;
    \triggerTime_reg[6]\ : out STD_LOGIC;
    \triggerTime_reg[4]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \triggerTime_reg[6]_0\ : out STD_LOGIC;
    \triggerTime_reg[3]\ : out STD_LOGIC;
    \triggerVolt_reg[6]_0\ : out STD_LOGIC;
    \triggerVolt_reg[3]\ : out STD_LOGIC;
    \triggerVolt_reg[4]_0\ : out STD_LOGIC;
    \triggerTime_reg[4]_0\ : out STD_LOGIC;
    clk_out2 : in STD_LOGIC;
    clk_out3 : in STD_LOGIC;
    \encoded_reg[9]\ : in STD_LOGIC;
    triggerVoltOut : in STD_LOGIC_VECTOR ( 5 downto 0 );
    triggerTimeOut : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \encoded_reg[9]_0\ : in STD_LOGIC;
    \encoded_reg[9]_1\ : in STD_LOGIC;
    \dc_bias_reg[1]\ : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \encoded_reg[9]_2\ : in STD_LOGIC;
    \encoded_reg[8]\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dvid;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dvid is
  signal D0 : STD_LOGIC;
  signal D1 : STD_LOGIC;
  signal TDMS_encoder_blue_n_1 : STD_LOGIC;
  signal TDMS_encoder_blue_n_2 : STD_LOGIC;
  signal TDMS_encoder_blue_n_3 : STD_LOGIC;
  signal TDMS_encoder_blue_n_4 : STD_LOGIC;
  signal TDMS_encoder_green_n_0 : STD_LOGIC;
  signal TDMS_encoder_green_n_1 : STD_LOGIC;
  signal TDMS_encoder_green_n_2 : STD_LOGIC;
  signal TDMS_encoder_green_n_3 : STD_LOGIC;
  signal TDMS_encoder_red_n_10 : STD_LOGIC;
  signal TDMS_encoder_red_n_11 : STD_LOGIC;
  signal TDMS_encoder_red_n_12 : STD_LOGIC;
  signal TDMS_encoder_red_n_13 : STD_LOGIC;
  signal data1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal latched_blue : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal latched_green : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal latched_red : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal shift_blue : STD_LOGIC_VECTOR ( 9 downto 2 );
  signal \shift_blue[0]_i_1_n_0\ : STD_LOGIC;
  signal \shift_blue[1]_i_1_n_0\ : STD_LOGIC;
  signal \shift_blue[3]_i_1_n_0\ : STD_LOGIC;
  signal \shift_blue[5]_i_1_n_0\ : STD_LOGIC;
  signal \shift_blue[7]_i_1_n_0\ : STD_LOGIC;
  signal \shift_blue[7]_i_2_n_0\ : STD_LOGIC;
  signal shift_blue_0 : STD_LOGIC_VECTOR ( 6 downto 2 );
  signal \shift_blue_reg_n_0_[0]\ : STD_LOGIC;
  signal \shift_blue_reg_n_0_[1]\ : STD_LOGIC;
  signal shift_clock : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \shift_clock_reg_n_0_[2]\ : STD_LOGIC;
  signal \shift_clock_reg_n_0_[3]\ : STD_LOGIC;
  signal \shift_clock_reg_n_0_[4]\ : STD_LOGIC;
  signal \shift_clock_reg_n_0_[5]\ : STD_LOGIC;
  signal \shift_clock_reg_n_0_[6]\ : STD_LOGIC;
  signal \shift_clock_reg_n_0_[7]\ : STD_LOGIC;
  signal \shift_clock_reg_n_0_[8]\ : STD_LOGIC;
  signal \shift_clock_reg_n_0_[9]\ : STD_LOGIC;
  signal shift_green : STD_LOGIC_VECTOR ( 9 downto 2 );
  signal \shift_green[0]_i_1_n_0\ : STD_LOGIC;
  signal \shift_green[1]_i_1_n_0\ : STD_LOGIC;
  signal \shift_green[3]_i_1_n_0\ : STD_LOGIC;
  signal \shift_green[5]_i_1_n_0\ : STD_LOGIC;
  signal \shift_green[7]_i_1_n_0\ : STD_LOGIC;
  signal \shift_green[7]_i_2_n_0\ : STD_LOGIC;
  signal shift_green_1 : STD_LOGIC_VECTOR ( 6 downto 2 );
  signal \shift_green_reg_n_0_[0]\ : STD_LOGIC;
  signal \shift_green_reg_n_0_[1]\ : STD_LOGIC;
  signal shift_red : STD_LOGIC_VECTOR ( 6 downto 2 );
  signal \shift_red[0]_i_1_n_0\ : STD_LOGIC;
  signal \shift_red[1]_i_1_n_0\ : STD_LOGIC;
  signal \shift_red[3]_i_1_n_0\ : STD_LOGIC;
  signal \shift_red[5]_i_1_n_0\ : STD_LOGIC;
  signal \shift_red[7]_i_1_n_0\ : STD_LOGIC;
  signal \shift_red[7]_i_2_n_0\ : STD_LOGIC;
  signal \shift_red[9]_i_1_n_0\ : STD_LOGIC;
  signal \shift_red[9]_i_2_n_0\ : STD_LOGIC;
  signal NLW_ODDR2_blue_R_UNCONNECTED : STD_LOGIC;
  signal NLW_ODDR2_blue_S_UNCONNECTED : STD_LOGIC;
  signal NLW_ODDR2_clock_R_UNCONNECTED : STD_LOGIC;
  signal NLW_ODDR2_clock_S_UNCONNECTED : STD_LOGIC;
  signal NLW_ODDR2_green_R_UNCONNECTED : STD_LOGIC;
  signal NLW_ODDR2_green_S_UNCONNECTED : STD_LOGIC;
  signal NLW_ODDR2_red_R_UNCONNECTED : STD_LOGIC;
  signal NLW_ODDR2_red_S_UNCONNECTED : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of ODDR2_blue : label is "PRIMITIVE";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of ODDR2_blue : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of ODDR2_blue : label is "ODDR2";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of ODDR2_blue : label is "D0:D1 D1:D2 C0:C";
  attribute \__SRVAL\ : string;
  attribute \__SRVAL\ of ODDR2_blue : label is "TRUE";
  attribute BOX_TYPE of ODDR2_clock : label is "PRIMITIVE";
  attribute OPT_MODIFIED of ODDR2_clock : label is "MLO";
  attribute XILINX_LEGACY_PRIM of ODDR2_clock : label is "ODDR2";
  attribute XILINX_TRANSFORM_PINMAP of ODDR2_clock : label is "D0:D1 D1:D2 C0:C";
  attribute \__SRVAL\ of ODDR2_clock : label is "TRUE";
  attribute BOX_TYPE of ODDR2_green : label is "PRIMITIVE";
  attribute OPT_MODIFIED of ODDR2_green : label is "MLO";
  attribute XILINX_LEGACY_PRIM of ODDR2_green : label is "ODDR2";
  attribute XILINX_TRANSFORM_PINMAP of ODDR2_green : label is "D0:D1 D1:D2 C0:C";
  attribute \__SRVAL\ of ODDR2_green : label is "TRUE";
  attribute BOX_TYPE of ODDR2_red : label is "PRIMITIVE";
  attribute OPT_MODIFIED of ODDR2_red : label is "MLO";
  attribute XILINX_LEGACY_PRIM of ODDR2_red : label is "ODDR2";
  attribute XILINX_TRANSFORM_PINMAP of ODDR2_red : label is "D0:D1 D1:D2 C0:C";
  attribute \__SRVAL\ of ODDR2_red : label is "TRUE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \shift_blue[0]_i_1\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \shift_blue[1]_i_1\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \shift_blue[2]_i_1\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \shift_blue[3]_i_1\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \shift_blue[4]_i_1\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \shift_blue[5]_i_1\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \shift_blue[6]_i_1\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \shift_green[0]_i_1\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \shift_green[1]_i_1\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \shift_green[2]_i_1\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \shift_green[3]_i_1\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \shift_green[4]_i_1\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \shift_green[5]_i_1\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \shift_green[6]_i_1\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \shift_red[0]_i_1\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \shift_red[1]_i_1\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \shift_red[2]_i_1\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \shift_red[3]_i_1\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \shift_red[4]_i_1\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \shift_red[5]_i_1\ : label is "soft_lutpair107";
begin
ODDR2_blue: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE",
      INIT => '0',
      SRTYPE => "ASYNC"
    )
        port map (
      C => clk_out2,
      CE => '1',
      D1 => \shift_blue_reg_n_0_[0]\,
      D2 => \shift_blue_reg_n_0_[1]\,
      Q => blue_s,
      R => NLW_ODDR2_blue_R_UNCONNECTED,
      S => NLW_ODDR2_blue_S_UNCONNECTED
    );
ODDR2_clock: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE",
      INIT => '0',
      SRTYPE => "ASYNC"
    )
        port map (
      C => clk_out2,
      CE => '1',
      D1 => shift_clock(0),
      D2 => shift_clock(1),
      Q => clock_s,
      R => NLW_ODDR2_clock_R_UNCONNECTED,
      S => NLW_ODDR2_clock_S_UNCONNECTED
    );
ODDR2_green: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE",
      INIT => '0',
      SRTYPE => "ASYNC"
    )
        port map (
      C => clk_out2,
      CE => '1',
      D1 => \shift_green_reg_n_0_[0]\,
      D2 => \shift_green_reg_n_0_[1]\,
      Q => green_s,
      R => NLW_ODDR2_green_R_UNCONNECTED,
      S => NLW_ODDR2_green_S_UNCONNECTED
    );
ODDR2_red: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE",
      INIT => '0',
      SRTYPE => "ASYNC"
    )
        port map (
      C => clk_out2,
      CE => '1',
      D1 => D0,
      D2 => D1,
      Q => red_s,
      R => NLW_ODDR2_red_R_UNCONNECTED,
      S => NLW_ODDR2_red_S_UNCONNECTED
    );
TDMS_encoder_blue: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TDMS_encoder
     port map (
      CLK => CLK,
      D(3) => TDMS_encoder_blue_n_1,
      D(2) => TDMS_encoder_blue_n_2,
      D(1) => TDMS_encoder_blue_n_3,
      D(0) => TDMS_encoder_blue_n_4,
      Q(0) => Q(0),
      SR(0) => SR(0),
      \dc_bias_reg[1]_0\ => \dc_bias_reg[1]\,
      \encoded_reg[2]_0\(1 downto 0) => D(1 downto 0),
      \encoded_reg[8]_0\ => \encoded_reg[8]\,
      \encoded_reg[8]_1\ => \encoded_reg[9]_0\,
      \encoded_reg[9]_0\ => \encoded_reg[9]_2\
    );
TDMS_encoder_green: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TDMS_encoder_0
     port map (
      CLK => CLK,
      D(3) => TDMS_encoder_green_n_0,
      D(2) => TDMS_encoder_green_n_1,
      D(1) => TDMS_encoder_green_n_2,
      D(0) => TDMS_encoder_green_n_3,
      SR(0) => SR(0),
      \encoded_reg[9]_0\ => \encoded_reg[9]_0\,
      \encoded_reg[9]_1\ => \encoded_reg[9]_1\
    );
TDMS_encoder_red: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TDMS_encoder_1
     port map (
      CLK => CLK,
      D(3) => TDMS_encoder_red_n_10,
      D(2) => TDMS_encoder_red_n_11,
      D(1) => TDMS_encoder_red_n_12,
      D(0) => TDMS_encoder_red_n_13,
      SR(0) => SR(0),
      \encoded_reg[9]_0\ => \encoded_reg[9]\,
      \encoded_reg[9]_1\ => \encoded_reg[9]_0\,
      triggerTimeOut(5 downto 0) => triggerTimeOut(5 downto 0),
      \triggerTime_reg[3]\ => \triggerTime_reg[3]\,
      \triggerTime_reg[4]\ => \triggerTime_reg[4]\,
      \triggerTime_reg[4]_0\ => \triggerTime_reg[4]_0\,
      \triggerTime_reg[6]\ => \triggerTime_reg[6]\,
      \triggerTime_reg[6]_0\ => \triggerTime_reg[6]_0\,
      triggerVoltOut(5 downto 0) => triggerVoltOut(5 downto 0),
      \triggerVolt_reg[3]\ => \triggerVolt_reg[3]\,
      \triggerVolt_reg[4]\ => \triggerVolt_reg[4]\,
      \triggerVolt_reg[4]_0\ => \triggerVolt_reg[4]_0\,
      \triggerVolt_reg[6]\ => \triggerVolt_reg[6]\,
      \triggerVolt_reg[6]_0\ => \triggerVolt_reg[6]_0\
    );
\latched_blue_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => TDMS_encoder_blue_n_4,
      Q => latched_blue(0),
      R => '0'
    );
\latched_blue_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => TDMS_encoder_blue_n_3,
      Q => latched_blue(2),
      R => '0'
    );
\latched_blue_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => TDMS_encoder_blue_n_2,
      Q => latched_blue(8),
      R => '0'
    );
\latched_blue_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => TDMS_encoder_blue_n_1,
      Q => latched_blue(9),
      R => '0'
    );
\latched_green_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => TDMS_encoder_green_n_3,
      Q => latched_green(0),
      R => '0'
    );
\latched_green_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => TDMS_encoder_green_n_2,
      Q => latched_green(2),
      R => '0'
    );
\latched_green_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => TDMS_encoder_green_n_1,
      Q => latched_green(8),
      R => '0'
    );
\latched_green_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => TDMS_encoder_green_n_0,
      Q => latched_green(9),
      R => '0'
    );
\latched_red_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => TDMS_encoder_red_n_13,
      Q => latched_red(0),
      R => '0'
    );
\latched_red_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => TDMS_encoder_red_n_12,
      Q => latched_red(2),
      R => '0'
    );
\latched_red_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => TDMS_encoder_red_n_11,
      Q => latched_red(8),
      R => '0'
    );
\latched_red_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => TDMS_encoder_red_n_10,
      Q => latched_red(9),
      R => '0'
    );
\shift_blue[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \shift_red[9]_i_1_n_0\,
      I1 => shift_blue(2),
      O => \shift_blue[0]_i_1_n_0\
    );
\shift_blue[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \shift_red[9]_i_1_n_0\,
      I1 => shift_blue(3),
      O => \shift_blue[1]_i_1_n_0\
    );
\shift_blue[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => shift_blue(4),
      I1 => \shift_red[9]_i_1_n_0\,
      I2 => latched_blue(2),
      O => shift_blue_0(2)
    );
\shift_blue[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \shift_red[9]_i_1_n_0\,
      I1 => shift_blue(5),
      O => \shift_blue[3]_i_1_n_0\
    );
\shift_blue[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => shift_blue(6),
      I1 => \shift_red[9]_i_1_n_0\,
      I2 => latched_blue(2),
      O => shift_blue_0(4)
    );
\shift_blue[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \shift_red[9]_i_1_n_0\,
      I1 => shift_blue(7),
      O => \shift_blue[5]_i_1_n_0\
    );
\shift_blue[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => shift_blue(8),
      I1 => \shift_red[9]_i_1_n_0\,
      I2 => latched_blue(2),
      O => shift_blue_0(6)
    );
\shift_blue[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => latched_blue(0),
      I1 => \shift_red[9]_i_1_n_0\,
      O => \shift_blue[7]_i_1_n_0\
    );
\shift_blue[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \shift_red[9]_i_1_n_0\,
      I1 => shift_blue(9),
      O => \shift_blue[7]_i_2_n_0\
    );
\shift_blue_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out2,
      CE => '1',
      D => \shift_blue[0]_i_1_n_0\,
      Q => \shift_blue_reg_n_0_[0]\,
      S => \shift_blue[7]_i_1_n_0\
    );
\shift_blue_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out2,
      CE => '1',
      D => \shift_blue[1]_i_1_n_0\,
      Q => \shift_blue_reg_n_0_[1]\,
      S => \shift_blue[7]_i_1_n_0\
    );
\shift_blue_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out2,
      CE => '1',
      D => shift_blue_0(2),
      Q => shift_blue(2),
      R => '0'
    );
\shift_blue_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out2,
      CE => '1',
      D => \shift_blue[3]_i_1_n_0\,
      Q => shift_blue(3),
      S => \shift_blue[7]_i_1_n_0\
    );
\shift_blue_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out2,
      CE => '1',
      D => shift_blue_0(4),
      Q => shift_blue(4),
      R => '0'
    );
\shift_blue_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out2,
      CE => '1',
      D => \shift_blue[5]_i_1_n_0\,
      Q => shift_blue(5),
      S => \shift_blue[7]_i_1_n_0\
    );
\shift_blue_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out2,
      CE => '1',
      D => shift_blue_0(6),
      Q => shift_blue(6),
      R => '0'
    );
\shift_blue_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out2,
      CE => '1',
      D => \shift_blue[7]_i_2_n_0\,
      Q => shift_blue(7),
      S => \shift_blue[7]_i_1_n_0\
    );
\shift_blue_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out2,
      CE => '1',
      D => latched_blue(8),
      Q => shift_blue(8),
      R => \shift_red[9]_i_1_n_0\
    );
\shift_blue_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out2,
      CE => '1',
      D => latched_blue(9),
      Q => shift_blue(9),
      R => \shift_red[9]_i_1_n_0\
    );
\shift_clock_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_out2,
      CE => '1',
      D => \shift_clock_reg_n_0_[2]\,
      Q => shift_clock(0),
      R => '0'
    );
\shift_clock_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_out2,
      CE => '1',
      D => \shift_clock_reg_n_0_[3]\,
      Q => shift_clock(1),
      R => '0'
    );
\shift_clock_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_out2,
      CE => '1',
      D => \shift_clock_reg_n_0_[4]\,
      Q => \shift_clock_reg_n_0_[2]\,
      R => '0'
    );
\shift_clock_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_out2,
      CE => '1',
      D => \shift_clock_reg_n_0_[5]\,
      Q => \shift_clock_reg_n_0_[3]\,
      R => '0'
    );
\shift_clock_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_out2,
      CE => '1',
      D => \shift_clock_reg_n_0_[6]\,
      Q => \shift_clock_reg_n_0_[4]\,
      R => '0'
    );
\shift_clock_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out2,
      CE => '1',
      D => \shift_clock_reg_n_0_[7]\,
      Q => \shift_clock_reg_n_0_[5]\,
      R => '0'
    );
\shift_clock_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out2,
      CE => '1',
      D => \shift_clock_reg_n_0_[8]\,
      Q => \shift_clock_reg_n_0_[6]\,
      R => '0'
    );
\shift_clock_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out2,
      CE => '1',
      D => \shift_clock_reg_n_0_[9]\,
      Q => \shift_clock_reg_n_0_[7]\,
      R => '0'
    );
\shift_clock_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out2,
      CE => '1',
      D => shift_clock(0),
      Q => \shift_clock_reg_n_0_[8]\,
      R => '0'
    );
\shift_clock_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out2,
      CE => '1',
      D => shift_clock(1),
      Q => \shift_clock_reg_n_0_[9]\,
      R => '0'
    );
\shift_green[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \shift_red[9]_i_1_n_0\,
      I1 => shift_green(2),
      O => \shift_green[0]_i_1_n_0\
    );
\shift_green[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \shift_red[9]_i_1_n_0\,
      I1 => shift_green(3),
      O => \shift_green[1]_i_1_n_0\
    );
\shift_green[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => shift_green(4),
      I1 => \shift_red[9]_i_1_n_0\,
      I2 => latched_green(2),
      O => shift_green_1(2)
    );
\shift_green[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \shift_red[9]_i_1_n_0\,
      I1 => shift_green(5),
      O => \shift_green[3]_i_1_n_0\
    );
\shift_green[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => shift_green(6),
      I1 => \shift_red[9]_i_1_n_0\,
      I2 => latched_green(2),
      O => shift_green_1(4)
    );
\shift_green[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \shift_red[9]_i_1_n_0\,
      I1 => shift_green(7),
      O => \shift_green[5]_i_1_n_0\
    );
\shift_green[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => shift_green(8),
      I1 => \shift_red[9]_i_1_n_0\,
      I2 => latched_green(2),
      O => shift_green_1(6)
    );
\shift_green[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => latched_green(0),
      I1 => \shift_red[9]_i_1_n_0\,
      O => \shift_green[7]_i_1_n_0\
    );
\shift_green[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \shift_red[9]_i_1_n_0\,
      I1 => shift_green(9),
      O => \shift_green[7]_i_2_n_0\
    );
\shift_green_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out2,
      CE => '1',
      D => \shift_green[0]_i_1_n_0\,
      Q => \shift_green_reg_n_0_[0]\,
      S => \shift_green[7]_i_1_n_0\
    );
\shift_green_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out2,
      CE => '1',
      D => \shift_green[1]_i_1_n_0\,
      Q => \shift_green_reg_n_0_[1]\,
      S => \shift_green[7]_i_1_n_0\
    );
\shift_green_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out2,
      CE => '1',
      D => shift_green_1(2),
      Q => shift_green(2),
      R => '0'
    );
\shift_green_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out2,
      CE => '1',
      D => \shift_green[3]_i_1_n_0\,
      Q => shift_green(3),
      S => \shift_green[7]_i_1_n_0\
    );
\shift_green_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out2,
      CE => '1',
      D => shift_green_1(4),
      Q => shift_green(4),
      R => '0'
    );
\shift_green_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out2,
      CE => '1',
      D => \shift_green[5]_i_1_n_0\,
      Q => shift_green(5),
      S => \shift_green[7]_i_1_n_0\
    );
\shift_green_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out2,
      CE => '1',
      D => shift_green_1(6),
      Q => shift_green(6),
      R => '0'
    );
\shift_green_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out2,
      CE => '1',
      D => \shift_green[7]_i_2_n_0\,
      Q => shift_green(7),
      S => \shift_green[7]_i_1_n_0\
    );
\shift_green_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out2,
      CE => '1',
      D => latched_green(8),
      Q => shift_green(8),
      R => \shift_red[9]_i_1_n_0\
    );
\shift_green_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out2,
      CE => '1',
      D => latched_green(9),
      Q => shift_green(9),
      R => \shift_red[9]_i_1_n_0\
    );
\shift_red[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \shift_red[9]_i_1_n_0\,
      I1 => data1(0),
      O => \shift_red[0]_i_1_n_0\
    );
\shift_red[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \shift_red[9]_i_1_n_0\,
      I1 => data1(1),
      O => \shift_red[1]_i_1_n_0\
    );
\shift_red[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(2),
      I1 => \shift_red[9]_i_1_n_0\,
      I2 => latched_red(2),
      O => shift_red(2)
    );
\shift_red[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \shift_red[9]_i_1_n_0\,
      I1 => data1(3),
      O => \shift_red[3]_i_1_n_0\
    );
\shift_red[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(4),
      I1 => \shift_red[9]_i_1_n_0\,
      I2 => latched_red(2),
      O => shift_red(4)
    );
\shift_red[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \shift_red[9]_i_1_n_0\,
      I1 => data1(5),
      O => \shift_red[5]_i_1_n_0\
    );
\shift_red[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(6),
      I1 => \shift_red[9]_i_1_n_0\,
      I2 => latched_red(2),
      O => shift_red(6)
    );
\shift_red[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => latched_red(0),
      I1 => \shift_red[9]_i_1_n_0\,
      O => \shift_red[7]_i_1_n_0\
    );
\shift_red[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \shift_red[9]_i_1_n_0\,
      I1 => data1(7),
      O => \shift_red[7]_i_2_n_0\
    );
\shift_red[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFFFFFF"
    )
        port map (
      I0 => \shift_red[9]_i_2_n_0\,
      I1 => \shift_clock_reg_n_0_[5]\,
      I2 => \shift_clock_reg_n_0_[4]\,
      I3 => \shift_clock_reg_n_0_[2]\,
      I4 => \shift_clock_reg_n_0_[3]\,
      O => \shift_red[9]_i_1_n_0\
    );
\shift_red[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFFFFFFFFF"
    )
        port map (
      I0 => \shift_clock_reg_n_0_[8]\,
      I1 => \shift_clock_reg_n_0_[9]\,
      I2 => \shift_clock_reg_n_0_[6]\,
      I3 => \shift_clock_reg_n_0_[7]\,
      I4 => shift_clock(1),
      I5 => shift_clock(0),
      O => \shift_red[9]_i_2_n_0\
    );
\shift_red_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out2,
      CE => '1',
      D => \shift_red[0]_i_1_n_0\,
      Q => D0,
      S => \shift_red[7]_i_1_n_0\
    );
\shift_red_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out2,
      CE => '1',
      D => \shift_red[1]_i_1_n_0\,
      Q => D1,
      S => \shift_red[7]_i_1_n_0\
    );
\shift_red_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out2,
      CE => '1',
      D => shift_red(2),
      Q => data1(0),
      R => '0'
    );
\shift_red_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out2,
      CE => '1',
      D => \shift_red[3]_i_1_n_0\,
      Q => data1(1),
      S => \shift_red[7]_i_1_n_0\
    );
\shift_red_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out2,
      CE => '1',
      D => shift_red(4),
      Q => data1(2),
      R => '0'
    );
\shift_red_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out2,
      CE => '1',
      D => \shift_red[5]_i_1_n_0\,
      Q => data1(3),
      S => \shift_red[7]_i_1_n_0\
    );
\shift_red_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out2,
      CE => '1',
      D => shift_red(6),
      Q => data1(4),
      R => '0'
    );
\shift_red_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out2,
      CE => '1',
      D => \shift_red[7]_i_2_n_0\,
      Q => data1(5),
      S => \shift_red[7]_i_1_n_0\
    );
\shift_red_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out2,
      CE => '1',
      D => latched_red(8),
      Q => data1(6),
      R => \shift_red[9]_i_1_n_0\
    );
\shift_red_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out2,
      CE => '1',
      D => latched_red(9),
      Q => data1(7),
      R => \shift_red[9]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Audio_Codec_Wrapper is
  port (
    ready_sig_reg_0 : out STD_LOGIC;
    ready_sig_reg_1 : out STD_LOGIC;
    s00_axi_aresetn_0 : out STD_LOGIC;
    ready_sig_reg_2 : out STD_LOGIC;
    p_1_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \sdp_bl.ramb18_dp_bl.ram18_bl\ : out STD_LOGIC;
    \D_R_O_int_reg[7]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ac_mclk : out STD_LOGIC;
    ac_dac_sdata : out STD_LOGIC;
    LRCLK_reg : out STD_LOGIC;
    BCLK_int_reg : out STD_LOGIC;
    fromADCL : out STD_LOGIC_VECTOR ( 15 downto 0 );
    fromADCR : out STD_LOGIC_VECTOR ( 15 downto 0 );
    scl : inout STD_LOGIC;
    sda : inout STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    switch : in STD_LOGIC_VECTOR ( 0 to 0 );
    flagQ_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    ac_adc_sdata : in STD_LOGIC;
    toADCR : in STD_LOGIC_VECTOR ( 2 downto 0 );
    toADCL : in STD_LOGIC_VECTOR ( 2 downto 0 );
    LBus_out : in STD_LOGIC_VECTOR ( 14 downto 0 );
    Rbus_out : in STD_LOGIC_VECTOR ( 14 downto 0 );
    lopt : out STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Audio_Codec_Wrapper;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Audio_Codec_Wrapper is
  signal DO : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal D_L_O_int : STD_LOGIC_VECTOR ( 23 to 23 );
  signal D_R_O_int : STD_LOGIC_VECTOR ( 23 to 23 );
  signal \ac_lrclk_count__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ac_lrclk_sig_prev_reg_n_0 : STD_LOGIC;
  signal audio_inout_n_3 : STD_LOGIC;
  signal audio_inout_n_4 : STD_LOGIC;
  signal audio_inout_n_5 : STD_LOGIC;
  signal audio_inout_n_6 : STD_LOGIC;
  signal audio_inout_n_7 : STD_LOGIC;
  signal clk_50 : STD_LOGIC;
  signal \count[9]_i_2_n_0\ : STD_LOGIC;
  signal count_reg : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal plusOp : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal readR : STD_LOGIC_VECTOR ( 17 downto 2 );
  signal ready_sig_i_2_n_0 : STD_LOGIC;
  signal \^ready_sig_reg_1\ : STD_LOGIC;
  signal \^s00_axi_aresetn_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count[1]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \count[2]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \count[3]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \count[4]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \count[6]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \count[7]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \count[8]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \count[9]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of flagQ_i_1 : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \toADCL[1]_i_1\ : label is "soft_lutpair56";
begin
  ready_sig_reg_1 <= \^ready_sig_reg_1\;
  s00_axi_aresetn_0 <= \^s00_axi_aresetn_0\;
\ac_lrclk_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => audio_inout_n_4,
      Q => \ac_lrclk_count__0\(0),
      R => '0'
    );
\ac_lrclk_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => audio_inout_n_5,
      Q => \ac_lrclk_count__0\(1),
      R => '0'
    );
\ac_lrclk_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => audio_inout_n_3,
      Q => \ac_lrclk_count__0\(2),
      R => '0'
    );
ac_lrclk_sig_prev_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => audio_inout_n_6,
      Q => ac_lrclk_sig_prev_reg_n_0,
      R => '0'
    );
audio_inout: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2s_ctl
     port map (
      BCLK_int_reg_0 => BCLK_int_reg,
      DOADO(15 downto 0) => DO(15 downto 0),
      \D_R_O_int_reg[23]_0\(2) => D_R_O_int(23),
      \D_R_O_int_reg[23]_0\(1 downto 0) => \D_R_O_int_reg[7]\(1 downto 0),
      LBus_out(14 downto 0) => LBus_out(14 downto 0),
      LRCLK_reg_0 => LRCLK_reg,
      Q(2) => D_L_O_int(23),
      Q(1 downto 0) => Q(1 downto 0),
      Rbus_out(14 downto 0) => Rbus_out(14 downto 0),
      SR(0) => \^s00_axi_aresetn_0\,
      ac_adc_sdata => ac_adc_sdata,
      ac_dac_sdata => ac_dac_sdata,
      \ac_lrclk_count__0\(2 downto 0) => \ac_lrclk_count__0\(2 downto 0),
      \ac_lrclk_count_reg[2]\ => audio_inout_n_7,
      \ac_lrclk_count_reg[2]_0\ => ac_lrclk_sig_prev_reg_n_0,
      ac_lrclk_sig_prev_reg => audio_inout_n_6,
      fromADCL(15 downto 0) => fromADCL(15 downto 0),
      fromADCR(15 downto 0) => fromADCR(15 downto 0),
      ready_sig_reg => ready_sig_i_2_n_0,
      ready_sig_reg_0 => \^ready_sig_reg_1\,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_aresetn_0 => audio_inout_n_3,
      s00_axi_aresetn_1 => audio_inout_n_4,
      s00_axi_aresetn_2 => audio_inout_n_5,
      switch(0) => switch(0),
      toADCL(2 downto 0) => toADCL(2 downto 0),
      toADCR(2 downto 0) => toADCR(2 downto 0),
      \toADCR_reg[17]\(15 downto 0) => readR(17 downto 2)
    );
audiocodec_master_clock: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_wiz_1
     port map (
      clk_in1 => s00_axi_aclk,
      clk_out1 => ac_mclk,
      clk_out2 => clk_50,
      lopt => lopt,
      resetn => s00_axi_aresetn
    );
\count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(0),
      O => plusOp(0)
    );
\count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => count_reg(0),
      I1 => count_reg(1),
      O => plusOp(1)
    );
\count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => count_reg(1),
      I1 => count_reg(0),
      I2 => count_reg(2),
      O => plusOp(2)
    );
\count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => count_reg(2),
      I1 => count_reg(0),
      I2 => count_reg(1),
      I3 => count_reg(3),
      O => plusOp(3)
    );
\count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => count_reg(3),
      I1 => count_reg(1),
      I2 => count_reg(0),
      I3 => count_reg(2),
      I4 => count_reg(4),
      O => plusOp(4)
    );
\count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => count_reg(4),
      I1 => count_reg(2),
      I2 => count_reg(0),
      I3 => count_reg(1),
      I4 => count_reg(3),
      I5 => count_reg(5),
      O => plusOp(5)
    );
\count[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \count[9]_i_2_n_0\,
      I1 => count_reg(6),
      O => plusOp(6)
    );
\count[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => count_reg(6),
      I1 => \count[9]_i_2_n_0\,
      I2 => count_reg(7),
      O => plusOp(7)
    );
\count[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => count_reg(7),
      I1 => \count[9]_i_2_n_0\,
      I2 => count_reg(6),
      I3 => count_reg(8),
      O => plusOp(8)
    );
\count[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF0800"
    )
        port map (
      I0 => count_reg(8),
      I1 => count_reg(6),
      I2 => \count[9]_i_2_n_0\,
      I3 => count_reg(7),
      I4 => count_reg(9),
      O => plusOp(9)
    );
\count[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => count_reg(4),
      I1 => count_reg(2),
      I2 => count_reg(0),
      I3 => count_reg(1),
      I4 => count_reg(3),
      I5 => count_reg(5),
      O => \count[9]_i_2_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^ready_sig_reg_1\,
      D => plusOp(0),
      Q => count_reg(0),
      R => \^s00_axi_aresetn_0\
    );
\count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^ready_sig_reg_1\,
      D => plusOp(1),
      Q => count_reg(1),
      R => \^s00_axi_aresetn_0\
    );
\count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^ready_sig_reg_1\,
      D => plusOp(2),
      Q => count_reg(2),
      R => \^s00_axi_aresetn_0\
    );
\count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^ready_sig_reg_1\,
      D => plusOp(3),
      Q => count_reg(3),
      R => \^s00_axi_aresetn_0\
    );
\count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^ready_sig_reg_1\,
      D => plusOp(4),
      Q => count_reg(4),
      R => \^s00_axi_aresetn_0\
    );
\count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^ready_sig_reg_1\,
      D => plusOp(5),
      Q => count_reg(5),
      R => \^s00_axi_aresetn_0\
    );
\count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^ready_sig_reg_1\,
      D => plusOp(6),
      Q => count_reg(6),
      R => \^s00_axi_aresetn_0\
    );
\count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^ready_sig_reg_1\,
      D => plusOp(7),
      Q => count_reg(7),
      R => \^s00_axi_aresetn_0\
    );
\count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^ready_sig_reg_1\,
      D => plusOp(8),
      Q => count_reg(8),
      R => \^s00_axi_aresetn_0\
    );
\count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^ready_sig_reg_1\,
      D => plusOp(9),
      Q => count_reg(9),
      R => \^s00_axi_aresetn_0\
    );
flagQ_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^ready_sig_reg_1\,
      I1 => flagQ_reg(0),
      O => ready_sig_reg_2
    );
initialize_audio: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_init
     port map (
      CLK => clk_50,
      SR(0) => \^s00_axi_aresetn_0\,
      s00_axi_aresetn => s00_axi_aresetn,
      scl => scl,
      sda => sda
    );
leftChannelMemory: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_unimacro_BRAM_SDP_MACRO
     port map (
      DOADO(15 downto 0) => DO(15 downto 0),
      Q(9 downto 0) => count_reg(9 downto 0),
      SR(0) => \^s00_axi_aresetn_0\,
      p_1_out(0) => p_1_out(0),
      s00_axi_aclk => s00_axi_aclk,
      switch(0) => switch(0),
      \w_Lbus_out_reg[15]\(0) => D_L_O_int(23)
    );
ready_sig_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \ac_lrclk_count__0\(0),
      I1 => \ac_lrclk_count__0\(1),
      O => ready_sig_i_2_n_0
    );
ready_sig_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => audio_inout_n_7,
      Q => \^ready_sig_reg_1\,
      R => '0'
    );
rightChannelMemory: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_unimacro_BRAM_SDP_MACRO__parameterized0\
     port map (
      Q(9 downto 0) => count_reg(9 downto 0),
      SR(0) => \^s00_axi_aresetn_0\,
      s00_axi_aclk => s00_axi_aclk,
      \sdp_bl.ramb18_dp_bl.ram18_bl_0\(15 downto 0) => readR(17 downto 2),
      \sdp_bl.ramb18_dp_bl.ram18_bl_1\ => \sdp_bl.ramb18_dp_bl.ram18_bl\,
      switch(0) => switch(0),
      \w_Rbus_out_reg[15]\(0) => D_R_O_int(23)
    );
\toADCL[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^ready_sig_reg_1\,
      I1 => switch(0),
      O => ready_sig_reg_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_video is
  port (
    column : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \processQ_reg[5]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    tmds : out STD_LOGIC_VECTOR ( 3 downto 0 );
    tmdsb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    triggerVoltOut : in STD_LOGIC_VECTOR ( 7 downto 0 );
    triggerTimeOut : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S : in STD_LOGIC_VECTOR ( 0 to 0 );
    \dc_bias[3]_i_7__0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \dc_bias_reg[3]_i_15\ : in STD_LOGIC;
    DOADO : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \dc_bias_reg[3]_i_9\ : in STD_LOGIC;
    \dc_bias_reg[3]_i_9_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    switch : in STD_LOGIC_VECTOR ( 1 downto 0 );
    lopt : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_video;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_video is
  signal Inst_vga_n_14 : STD_LOGIC;
  signal Inst_vga_n_15 : STD_LOGIC;
  signal Inst_vga_n_16 : STD_LOGIC;
  signal Inst_vga_n_17 : STD_LOGIC;
  signal Inst_vga_n_18 : STD_LOGIC;
  signal Inst_vga_n_19 : STD_LOGIC;
  signal Inst_vga_n_21 : STD_LOGIC;
  signal Inst_vga_n_22 : STD_LOGIC;
  signal \TDMS_encoder_blue/p_1_in\ : STD_LOGIC;
  signal blank : STD_LOGIC;
  signal blue_s : STD_LOGIC;
  signal clock_s : STD_LOGIC;
  signal green_s : STD_LOGIC;
  signal inst_dvid_n_10 : STD_LOGIC;
  signal inst_dvid_n_11 : STD_LOGIC;
  signal inst_dvid_n_12 : STD_LOGIC;
  signal inst_dvid_n_13 : STD_LOGIC;
  signal inst_dvid_n_14 : STD_LOGIC;
  signal inst_dvid_n_4 : STD_LOGIC;
  signal inst_dvid_n_5 : STD_LOGIC;
  signal inst_dvid_n_6 : STD_LOGIC;
  signal inst_dvid_n_7 : STD_LOGIC;
  signal inst_dvid_n_9 : STD_LOGIC;
  signal pixel_clk : STD_LOGIC;
  signal red_s : STD_LOGIC;
  signal serialize_clk : STD_LOGIC;
  signal serialize_clk_n : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of OBUFDS_blue : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of OBUFDS_blue : label is "DONT_CARE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of OBUFDS_blue : label is "OBUFDS";
  attribute BOX_TYPE of OBUFDS_clock : label is "PRIMITIVE";
  attribute CAPACITANCE of OBUFDS_clock : label is "DONT_CARE";
  attribute XILINX_LEGACY_PRIM of OBUFDS_clock : label is "OBUFDS";
  attribute BOX_TYPE of OBUFDS_green : label is "PRIMITIVE";
  attribute CAPACITANCE of OBUFDS_green : label is "DONT_CARE";
  attribute XILINX_LEGACY_PRIM of OBUFDS_green : label is "OBUFDS";
  attribute BOX_TYPE of OBUFDS_red : label is "PRIMITIVE";
  attribute CAPACITANCE of OBUFDS_red : label is "DONT_CARE";
  attribute XILINX_LEGACY_PRIM of OBUFDS_red : label is "OBUFDS";
begin
Inst_vga: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_VGA
     port map (
      CLK => pixel_clk,
      D(1) => Inst_vga_n_16,
      D(0) => Inst_vga_n_17,
      DOADO(3 downto 0) => DOADO(3 downto 0),
      Q(9 downto 0) => column(9 downto 0),
      S(0) => S(0),
      SR(0) => blank,
      \dc_bias[3]_i_7__0\(0) => \dc_bias[3]_i_7__0\(0),
      \dc_bias_reg[3]_i_15\ => \dc_bias_reg[3]_i_15\,
      \dc_bias_reg[3]_i_31\ => inst_dvid_n_4,
      \dc_bias_reg[3]_i_55\ => inst_dvid_n_14,
      \dc_bias_reg[3]_i_56\ => inst_dvid_n_6,
      \dc_bias_reg[3]_i_62\ => inst_dvid_n_5,
      \dc_bias_reg[3]_i_66\ => inst_dvid_n_13,
      \dc_bias_reg[3]_i_9\ => \dc_bias_reg[3]_i_9\,
      \dc_bias_reg[3]_i_92\ => inst_dvid_n_7,
      \dc_bias_reg[3]_i_9_0\(3 downto 0) => \dc_bias_reg[3]_i_9_0\(3 downto 0),
      \encoded_reg[0]\(0) => \TDMS_encoder_blue/p_1_in\,
      \is_trigger_time6_inferred__2/i__carry\ => inst_dvid_n_10,
      \is_trigger_time6_inferred__2/i__carry_0\ => inst_dvid_n_9,
      \is_trigger_volt6_inferred__2/i__carry\ => inst_dvid_n_12,
      \is_trigger_volt6_inferred__2/i__carry_0\ => inst_dvid_n_11,
      \processQ_reg[0]\ => Inst_vga_n_14,
      \processQ_reg[0]_0\ => Inst_vga_n_21,
      \processQ_reg[4]\ => Inst_vga_n_22,
      \processQ_reg[5]\(3 downto 0) => \processQ_reg[5]\(3 downto 0),
      \processQ_reg[5]_0\ => Inst_vga_n_15,
      \processQ_reg[5]_1\ => Inst_vga_n_18,
      \processQ_reg[7]\ => Inst_vga_n_19,
      s00_axi_aresetn => s00_axi_aresetn,
      switch(1 downto 0) => switch(1 downto 0),
      triggerTimeOut(7 downto 0) => triggerTimeOut(7 downto 0),
      triggerVoltOut(7 downto 0) => triggerVoltOut(7 downto 0)
    );
OBUFDS_blue: unisim.vcomponents.OBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => blue_s,
      O => tmds(0),
      OB => tmdsb(0)
    );
OBUFDS_clock: unisim.vcomponents.OBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => clock_s,
      O => tmds(3),
      OB => tmdsb(3)
    );
OBUFDS_green: unisim.vcomponents.OBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => red_s,
      O => tmds(2),
      OB => tmdsb(2)
    );
OBUFDS_red: unisim.vcomponents.OBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => green_s,
      O => tmds(1),
      OB => tmdsb(1)
    );
inst_dvid: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dvid
     port map (
      CLK => pixel_clk,
      D(1) => Inst_vga_n_16,
      D(0) => Inst_vga_n_17,
      Q(0) => \TDMS_encoder_blue/p_1_in\,
      SR(0) => blank,
      blue_s => blue_s,
      clk_out2 => serialize_clk,
      clk_out3 => serialize_clk_n,
      clock_s => clock_s,
      \dc_bias_reg[1]\ => Inst_vga_n_21,
      \encoded_reg[8]\ => Inst_vga_n_18,
      \encoded_reg[9]\ => Inst_vga_n_22,
      \encoded_reg[9]_0\ => Inst_vga_n_19,
      \encoded_reg[9]_1\ => Inst_vga_n_14,
      \encoded_reg[9]_2\ => Inst_vga_n_15,
      green_s => green_s,
      red_s => red_s,
      triggerTimeOut(5 downto 0) => triggerTimeOut(5 downto 0),
      \triggerTime_reg[3]\ => inst_dvid_n_10,
      \triggerTime_reg[4]\ => inst_dvid_n_7,
      \triggerTime_reg[4]_0\ => inst_dvid_n_14,
      \triggerTime_reg[6]\ => inst_dvid_n_6,
      \triggerTime_reg[6]_0\ => inst_dvid_n_9,
      triggerVoltOut(5 downto 0) => triggerVoltOut(5 downto 0),
      \triggerVolt_reg[3]\ => inst_dvid_n_12,
      \triggerVolt_reg[4]\ => inst_dvid_n_5,
      \triggerVolt_reg[4]_0\ => inst_dvid_n_13,
      \triggerVolt_reg[6]\ => inst_dvid_n_4,
      \triggerVolt_reg[6]_0\ => inst_dvid_n_11
    );
mmcm_adv_inst_display_clocks: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_wiz_0
     port map (
      clk_in1 => s00_axi_aclk,
      clk_out1 => pixel_clk,
      clk_out2 => serialize_clk,
      clk_out3 => serialize_clk_n,
      lopt => lopt,
      resetn => s00_axi_aresetn
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lab2_datapath is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    flagQOut : out STD_LOGIC;
    LBus_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    sw : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Rbus_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \FSM_onehot_state_reg[3]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \processQ_reg[1]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    triggerVoltOut : out STD_LOGIC_VECTOR ( 7 downto 0 );
    triggerTimeOut : out STD_LOGIC_VECTOR ( 7 downto 0 );
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    \triggerVolt_reg[8]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    tmds : out STD_LOGIC_VECTOR ( 3 downto 0 );
    tmdsb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ac_mclk : out STD_LOGIC;
    ac_dac_sdata : out STD_LOGIC;
    LRCLK_reg : out STD_LOGIC;
    BCLK_int_reg : out STD_LOGIC;
    scl : inout STD_LOGIC;
    sda : inout STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    w_wrEnbMux : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    btn : in STD_LOGIC_VECTOR ( 3 downto 0 );
    switch : in STD_LOGIC_VECTOR ( 3 downto 0 );
    D : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \processQ_reg[9]\ : in STD_LOGIC;
    \sdp_bl.ramb18_dp_bl.ram18_bl\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \sdp_bl.ramb18_dp_bl.ram18_bl_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \sdp_bl.ramb18_dp_bl.ram18_bl_1\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    flagQ_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    ac_adc_sdata : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lab2_datapath;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lab2_datapath is
  signal Audio_Codec_n_0 : STD_LOGIC;
  signal Audio_Codec_n_3 : STD_LOGIC;
  signal Audio_Codec_n_7 : STD_LOGIC;
  signal D_L_O_int : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal D_R_O_int : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \FSM_onehot_state[3]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_12_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_13_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_15_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_16_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_17_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_18_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_19_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_20_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_21_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_22_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_23_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_24_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_9_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg[3]_i_14_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg[3]_i_14_n_1\ : STD_LOGIC;
  signal \FSM_onehot_state_reg[3]_i_14_n_2\ : STD_LOGIC;
  signal \FSM_onehot_state_reg[3]_i_14_n_3\ : STD_LOGIC;
  signal \FSM_onehot_state_reg[3]_i_2_n_1\ : STD_LOGIC;
  signal \FSM_onehot_state_reg[3]_i_2_n_2\ : STD_LOGIC;
  signal \FSM_onehot_state_reg[3]_i_2_n_3\ : STD_LOGIC;
  signal \^lbus_out\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^rbus_out\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal UnRightCur : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \UnRightCur[2]_i_1_n_0\ : STD_LOGIC;
  signal \UnRightCur[3]_i_1_n_0\ : STD_LOGIC;
  signal \UnRightCur[4]_i_1_n_0\ : STD_LOGIC;
  signal \UnRightCur[5]_i_1_n_0\ : STD_LOGIC;
  signal \UnRightCur[6]_i_1_n_0\ : STD_LOGIC;
  signal \UnRightCur[7]_i_1_n_0\ : STD_LOGIC;
  signal \UnRightCur[8]_i_1_n_0\ : STD_LOGIC;
  signal UnRightPrev : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal btn_down_pressed : STD_LOGIC;
  signal btn_down_pressed_i_1_n_0 : STD_LOGIC;
  signal btn_left_pressed : STD_LOGIC;
  signal btn_left_pressed_i_1_n_0 : STD_LOGIC;
  signal btn_right_pressed : STD_LOGIC;
  signal btn_right_pressed_i_1_n_0 : STD_LOGIC;
  signal btn_up_pressed : STD_LOGIC;
  signal btn_up_pressed_i_1_n_0 : STD_LOGIC;
  signal column : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal fromADCL : STD_LOGIC_VECTOR ( 17 downto 2 );
  signal fromADCR : STD_LOGIC_VECTOR ( 17 downto 2 );
  signal leftChannelMemory_n_4 : STD_LOGIC;
  signal leftChannelMemory_n_5 : STD_LOGIC;
  signal lopt : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal p_0_in0_in : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal p_1_out : STD_LOGIC_VECTOR ( 15 to 15 );
  signal rightChannelMemory_n_4 : STD_LOGIC;
  signal rightChannelMemory_n_5 : STD_LOGIC;
  signal row : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \^sw\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal toADCL : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal toADCR : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \^triggertimeout\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \triggerTime[4]_i_2_n_0\ : STD_LOGIC;
  signal \triggerTime[4]_i_3_n_0\ : STD_LOGIC;
  signal \triggerTime[4]_i_4_n_0\ : STD_LOGIC;
  signal \triggerTime[4]_i_5_n_0\ : STD_LOGIC;
  signal \triggerTime[8]_i_2_n_0\ : STD_LOGIC;
  signal \triggerTime[8]_i_3_n_0\ : STD_LOGIC;
  signal \triggerTime[8]_i_4_n_0\ : STD_LOGIC;
  signal \triggerTime[8]_i_5_n_0\ : STD_LOGIC;
  signal \triggerTime[9]_i_1_n_0\ : STD_LOGIC;
  signal \triggerTime[9]_i_3_n_0\ : STD_LOGIC;
  signal \triggerTime_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \triggerTime_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \triggerTime_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \triggerTime_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \triggerTime_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \triggerTime_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \triggerTime_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \triggerTime_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \triggerTime_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \triggerTime_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \triggerTime_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \triggerTime_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \triggerTime_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \triggerTime_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \triggerTime_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \triggerTime_reg[9]_i_2_n_7\ : STD_LOGIC;
  signal \^triggervoltout\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \triggerVolt[4]_i_2_n_0\ : STD_LOGIC;
  signal \triggerVolt[4]_i_3_n_0\ : STD_LOGIC;
  signal \triggerVolt[4]_i_4_n_0\ : STD_LOGIC;
  signal \triggerVolt[4]_i_5_n_0\ : STD_LOGIC;
  signal \triggerVolt[8]_i_2_n_0\ : STD_LOGIC;
  signal \triggerVolt[8]_i_3_n_0\ : STD_LOGIC;
  signal \triggerVolt[8]_i_4_n_0\ : STD_LOGIC;
  signal \triggerVolt[8]_i_5_n_0\ : STD_LOGIC;
  signal \triggerVolt[9]_i_1_n_0\ : STD_LOGIC;
  signal \triggerVolt[9]_i_3_n_0\ : STD_LOGIC;
  signal \triggerVolt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \triggerVolt_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \triggerVolt_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \triggerVolt_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \triggerVolt_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \triggerVolt_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \triggerVolt_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \triggerVolt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \triggerVolt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \triggerVolt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \triggerVolt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \triggerVolt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \triggerVolt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \triggerVolt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \triggerVolt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \triggerVolt_reg[9]_i_2_n_7\ : STD_LOGIC;
  signal w_wrAddrMux : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \NLW_FSM_onehot_state_reg[3]_i_14_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_FSM_onehot_state_reg[3]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_FSM_onehot_state_reg[3]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_FSM_onehot_state_reg[3]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_triggerTime_reg[4]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_triggerTime_reg[9]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_triggerTime_reg[9]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_triggerVolt_reg[4]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_triggerVolt_reg[9]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_triggerVolt_reg[9]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of \FSM_onehot_state_reg[3]_i_14\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \FSM_onehot_state_reg[3]_i_2\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \FSM_onehot_state_reg[3]_i_3\ : label is 11;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \UnRightCur[3]_i_1\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \UnRightCur[4]_i_1\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \UnRightCur[5]_i_1\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \UnRightCur[6]_i_1\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of btn_down_pressed_i_1 : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of btn_left_pressed_i_1 : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of btn_right_pressed_i_1 : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of btn_up_pressed_i_1 : label is "soft_lutpair109";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \triggerTime_reg[4]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \triggerTime_reg[8]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \triggerTime_reg[9]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \triggerVolt_reg[4]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \triggerVolt_reg[8]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \triggerVolt_reg[9]_i_2\ : label is 35;
begin
  LBus_out(15 downto 0) <= \^lbus_out\(15 downto 0);
  Rbus_out(15 downto 0) <= \^rbus_out\(15 downto 0);
  SR(0) <= \^sr\(0);
  sw(1 downto 0) <= \^sw\(1 downto 0);
  triggerTimeOut(7 downto 0) <= \^triggertimeout\(7 downto 0);
  triggerVoltOut(7 downto 0) <= \^triggervoltout\(7 downto 0);
Audio_Codec: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Audio_Codec_Wrapper
     port map (
      BCLK_int_reg => BCLK_int_reg,
      \D_R_O_int_reg[7]\(1 downto 0) => D_R_O_int(7 downto 6),
      LBus_out(14 downto 0) => \^lbus_out\(14 downto 0),
      LRCLK_reg => LRCLK_reg,
      Q(1 downto 0) => D_L_O_int(7 downto 6),
      Rbus_out(14 downto 0) => \^rbus_out\(14 downto 0),
      ac_adc_sdata => ac_adc_sdata,
      ac_dac_sdata => ac_dac_sdata,
      ac_mclk => ac_mclk,
      flagQ_reg(0) => flagQ_reg(0),
      fromADCL(15 downto 0) => fromADCL(17 downto 2),
      fromADCR(15 downto 0) => fromADCR(17 downto 2),
      lopt => lopt,
      p_1_out(0) => p_1_out(15),
      ready_sig_reg_0 => Audio_Codec_n_0,
      ready_sig_reg_1 => \^sw\(1),
      ready_sig_reg_2 => Audio_Codec_n_3,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_aresetn_0 => \^sr\(0),
      scl => scl,
      sda => sda,
      \sdp_bl.ramb18_dp_bl.ram18_bl\ => Audio_Codec_n_7,
      switch(0) => switch(3),
      toADCL(2) => toADCL(17),
      toADCL(1 downto 0) => toADCL(1 downto 0),
      toADCR(2) => toADCR(17),
      toADCR(1 downto 0) => toADCR(1 downto 0)
    );
\FSM_onehot_state[3]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \^triggervoltout\(6),
      I1 => UnRightPrev(8),
      I2 => \^triggervoltout\(7),
      O => \FSM_onehot_state[3]_i_10_n_0\
    );
\FSM_onehot_state[3]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^triggervoltout\(4),
      I1 => UnRightPrev(6),
      I2 => \^triggervoltout\(5),
      I3 => UnRightPrev(7),
      O => \FSM_onehot_state[3]_i_11_n_0\
    );
\FSM_onehot_state[3]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^triggervoltout\(2),
      I1 => UnRightPrev(4),
      I2 => \^triggervoltout\(3),
      I3 => UnRightPrev(5),
      O => \FSM_onehot_state[3]_i_12_n_0\
    );
\FSM_onehot_state[3]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^triggervoltout\(0),
      I1 => UnRightPrev(2),
      I2 => \^triggervoltout\(1),
      I3 => UnRightPrev(3),
      O => \FSM_onehot_state[3]_i_13_n_0\
    );
\FSM_onehot_state[3]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^triggervoltout\(6),
      I1 => UnRightCur(8),
      I2 => \^triggervoltout\(7),
      O => \FSM_onehot_state[3]_i_15_n_0\
    );
\FSM_onehot_state[3]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => UnRightCur(8),
      I1 => \^triggervoltout\(6),
      I2 => \^triggervoltout\(7),
      O => \FSM_onehot_state[3]_i_16_n_0\
    );
\FSM_onehot_state[3]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => UnRightCur(6),
      I1 => \^triggervoltout\(4),
      I2 => \^triggervoltout\(5),
      I3 => UnRightCur(7),
      O => \FSM_onehot_state[3]_i_17_n_0\
    );
\FSM_onehot_state[3]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => UnRightCur(4),
      I1 => \^triggervoltout\(2),
      I2 => \^triggervoltout\(3),
      I3 => UnRightCur(5),
      O => \FSM_onehot_state[3]_i_18_n_0\
    );
\FSM_onehot_state[3]_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => UnRightCur(2),
      I1 => \^triggervoltout\(0),
      I2 => \^triggervoltout\(1),
      I3 => UnRightCur(3),
      O => \FSM_onehot_state[3]_i_19_n_0\
    );
\FSM_onehot_state[3]_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => UnRightCur(0),
      I1 => UnRightCur(1),
      O => \FSM_onehot_state[3]_i_20_n_0\
    );
\FSM_onehot_state[3]_i_21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => UnRightCur(6),
      I1 => \^triggervoltout\(4),
      I2 => UnRightCur(7),
      I3 => \^triggervoltout\(5),
      O => \FSM_onehot_state[3]_i_21_n_0\
    );
\FSM_onehot_state[3]_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => UnRightCur(4),
      I1 => \^triggervoltout\(2),
      I2 => UnRightCur(5),
      I3 => \^triggervoltout\(3),
      O => \FSM_onehot_state[3]_i_22_n_0\
    );
\FSM_onehot_state[3]_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => UnRightCur(2),
      I1 => \^triggervoltout\(0),
      I2 => UnRightCur(3),
      I3 => \^triggervoltout\(1),
      O => \FSM_onehot_state[3]_i_23_n_0\
    );
\FSM_onehot_state[3]_i_24\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => UnRightCur(0),
      I1 => UnRightCur(1),
      O => \FSM_onehot_state[3]_i_24_n_0\
    );
\FSM_onehot_state[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => UnRightPrev(0),
      I1 => UnRightPrev(1),
      O => \FSM_onehot_state[3]_i_5_n_0\
    );
\FSM_onehot_state[3]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F2"
    )
        port map (
      I0 => \^triggervoltout\(6),
      I1 => UnRightPrev(8),
      I2 => \^triggervoltout\(7),
      O => \FSM_onehot_state[3]_i_6_n_0\
    );
\FSM_onehot_state[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^triggervoltout\(4),
      I1 => UnRightPrev(6),
      I2 => UnRightPrev(7),
      I3 => \^triggervoltout\(5),
      O => \FSM_onehot_state[3]_i_7_n_0\
    );
\FSM_onehot_state[3]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^triggervoltout\(2),
      I1 => UnRightPrev(4),
      I2 => UnRightPrev(5),
      I3 => \^triggervoltout\(3),
      O => \FSM_onehot_state[3]_i_8_n_0\
    );
\FSM_onehot_state[3]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^triggervoltout\(0),
      I1 => UnRightPrev(2),
      I2 => UnRightPrev(3),
      I3 => \^triggervoltout\(1),
      O => \FSM_onehot_state[3]_i_9_n_0\
    );
\FSM_onehot_state_reg[3]_i_14\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \FSM_onehot_state_reg[3]_i_14_n_0\,
      CO(2) => \FSM_onehot_state_reg[3]_i_14_n_1\,
      CO(1) => \FSM_onehot_state_reg[3]_i_14_n_2\,
      CO(0) => \FSM_onehot_state_reg[3]_i_14_n_3\,
      CYINIT => '0',
      DI(3) => \FSM_onehot_state[3]_i_17_n_0\,
      DI(2) => \FSM_onehot_state[3]_i_18_n_0\,
      DI(1) => \FSM_onehot_state[3]_i_19_n_0\,
      DI(0) => \FSM_onehot_state[3]_i_20_n_0\,
      O(3 downto 0) => \NLW_FSM_onehot_state_reg[3]_i_14_O_UNCONNECTED\(3 downto 0),
      S(3) => \FSM_onehot_state[3]_i_21_n_0\,
      S(2) => \FSM_onehot_state[3]_i_22_n_0\,
      S(1) => \FSM_onehot_state[3]_i_23_n_0\,
      S(0) => \FSM_onehot_state[3]_i_24_n_0\
    );
\FSM_onehot_state_reg[3]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => CO(0),
      CO(2) => \FSM_onehot_state_reg[3]_i_2_n_1\,
      CO(1) => \FSM_onehot_state_reg[3]_i_2_n_2\,
      CO(0) => \FSM_onehot_state_reg[3]_i_2_n_3\,
      CYINIT => \FSM_onehot_state[3]_i_5_n_0\,
      DI(3) => \FSM_onehot_state[3]_i_6_n_0\,
      DI(2) => \FSM_onehot_state[3]_i_7_n_0\,
      DI(1) => \FSM_onehot_state[3]_i_8_n_0\,
      DI(0) => \FSM_onehot_state[3]_i_9_n_0\,
      O(3 downto 0) => \NLW_FSM_onehot_state_reg[3]_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => \FSM_onehot_state[3]_i_10_n_0\,
      S(2) => \FSM_onehot_state[3]_i_11_n_0\,
      S(1) => \FSM_onehot_state[3]_i_12_n_0\,
      S(0) => \FSM_onehot_state[3]_i_13_n_0\
    );
\FSM_onehot_state_reg[3]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \FSM_onehot_state_reg[3]_i_14_n_0\,
      CO(3 downto 1) => \NLW_FSM_onehot_state_reg[3]_i_3_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \triggerVolt_reg[8]_0\(0),
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \FSM_onehot_state[3]_i_15_n_0\,
      O(3 downto 0) => \NLW_FSM_onehot_state_reg[3]_i_3_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \FSM_onehot_state[3]_i_16_n_0\
    );
\UnRightCur[2]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^rbus_out\(10),
      O => \UnRightCur[2]_i_1_n_0\
    );
\UnRightCur[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^rbus_out\(10),
      I1 => \^rbus_out\(11),
      O => \UnRightCur[3]_i_1_n_0\
    );
\UnRightCur[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => \^rbus_out\(11),
      I1 => \^rbus_out\(10),
      I2 => \^rbus_out\(12),
      O => \UnRightCur[4]_i_1_n_0\
    );
\UnRightCur[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FE"
    )
        port map (
      I0 => \^rbus_out\(12),
      I1 => \^rbus_out\(10),
      I2 => \^rbus_out\(11),
      I3 => \^rbus_out\(13),
      O => \UnRightCur[5]_i_1_n_0\
    );
\UnRightCur[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE0001FF"
    )
        port map (
      I0 => \^rbus_out\(11),
      I1 => \^rbus_out\(10),
      I2 => \^rbus_out\(12),
      I3 => \^rbus_out\(13),
      I4 => \^rbus_out\(14),
      O => \UnRightCur[6]_i_1_n_0\
    );
\UnRightCur[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"11111115EEEEEEEA"
    )
        port map (
      I0 => \^rbus_out\(14),
      I1 => \^rbus_out\(13),
      I2 => \^rbus_out\(12),
      I3 => \^rbus_out\(10),
      I4 => \^rbus_out\(11),
      I5 => \^rbus_out\(15),
      O => \UnRightCur[7]_i_1_n_0\
    );
\UnRightCur[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A8A8A8A8A888"
    )
        port map (
      I0 => \^rbus_out\(15),
      I1 => \^rbus_out\(14),
      I2 => \^rbus_out\(13),
      I3 => \^rbus_out\(12),
      I4 => \^rbus_out\(10),
      I5 => \^rbus_out\(11),
      O => \UnRightCur[8]_i_1_n_0\
    );
\UnRightCur_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \^rbus_out\(8),
      Q => UnRightCur(0),
      R => \^sr\(0)
    );
\UnRightCur_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \^rbus_out\(9),
      Q => UnRightCur(1),
      R => \^sr\(0)
    );
\UnRightCur_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \UnRightCur[2]_i_1_n_0\,
      Q => UnRightCur(2),
      R => \^sr\(0)
    );
\UnRightCur_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \UnRightCur[3]_i_1_n_0\,
      Q => UnRightCur(3),
      R => \^sr\(0)
    );
\UnRightCur_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \UnRightCur[4]_i_1_n_0\,
      Q => UnRightCur(4),
      R => \^sr\(0)
    );
\UnRightCur_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \UnRightCur[5]_i_1_n_0\,
      Q => UnRightCur(5),
      R => \^sr\(0)
    );
\UnRightCur_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \UnRightCur[6]_i_1_n_0\,
      Q => UnRightCur(6),
      R => \^sr\(0)
    );
\UnRightCur_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \UnRightCur[7]_i_1_n_0\,
      Q => UnRightCur(7),
      R => \^sr\(0)
    );
\UnRightCur_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \UnRightCur[8]_i_1_n_0\,
      Q => UnRightCur(8),
      R => \^sr\(0)
    );
\UnRightPrev_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => UnRightCur(0),
      Q => UnRightPrev(0),
      R => '0'
    );
\UnRightPrev_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => UnRightCur(1),
      Q => UnRightPrev(1),
      R => '0'
    );
\UnRightPrev_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => UnRightCur(2),
      Q => UnRightPrev(2),
      R => '0'
    );
\UnRightPrev_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => UnRightCur(3),
      Q => UnRightPrev(3),
      R => '0'
    );
\UnRightPrev_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => UnRightCur(4),
      Q => UnRightPrev(4),
      R => '0'
    );
\UnRightPrev_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => UnRightCur(5),
      Q => UnRightPrev(5),
      R => '0'
    );
\UnRightPrev_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => UnRightCur(6),
      Q => UnRightPrev(6),
      R => '0'
    );
\UnRightPrev_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => UnRightCur(7),
      Q => UnRightPrev(7),
      R => '0'
    );
\UnRightPrev_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => UnRightCur(8),
      Q => UnRightPrev(8),
      R => '0'
    );
btn_down_pressed_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB00AAAA"
    )
        port map (
      I0 => btn_down_pressed,
      I1 => btn(0),
      I2 => btn_up_pressed,
      I3 => btn(2),
      I4 => s00_axi_aresetn,
      O => btn_down_pressed_i_1_n_0
    );
btn_down_pressed_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => btn_down_pressed_i_1_n_0,
      Q => btn_down_pressed,
      R => '0'
    );
btn_left_pressed_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => btn_left_pressed,
      I1 => btn(1),
      I2 => s00_axi_aresetn,
      O => btn_left_pressed_i_1_n_0
    );
btn_left_pressed_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => btn_left_pressed_i_1_n_0,
      Q => btn_left_pressed,
      R => '0'
    );
btn_right_pressed_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB00AAAA"
    )
        port map (
      I0 => btn_right_pressed,
      I1 => btn(1),
      I2 => btn_left_pressed,
      I3 => btn(3),
      I4 => s00_axi_aresetn,
      O => btn_right_pressed_i_1_n_0
    );
btn_right_pressed_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => btn_right_pressed_i_1_n_0,
      Q => btn_right_pressed,
      R => '0'
    );
btn_up_pressed_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => btn_up_pressed,
      I1 => btn(0),
      I2 => s00_axi_aresetn,
      O => btn_up_pressed_i_1_n_0
    );
btn_up_pressed_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => btn_up_pressed_i_1_n_0,
      Q => btn_up_pressed,
      R => '0'
    );
fg: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FlagRegister
     port map (
      SS(0) => \^sr\(0),
      flagQOut => flagQOut,
      flagQ_reg_0 => Audio_Codec_n_3,
      s00_axi_aclk => s00_axi_aclk
    );
leftChannelMemory: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_unimacro_BRAM_SDP_MACRO__parameterized1\
     port map (
      ADDRBWRADDR(9 downto 0) => w_wrAddrMux(9 downto 0),
      DOADO(3 downto 2) => p_0_in0_in(7 downto 6),
      DOADO(1 downto 0) => p_0_in0_in(4 downto 3),
      LBus_out(15 downto 0) => \^lbus_out\(15 downto 0),
      O101(3) => row(5),
      O101(2 downto 0) => row(2 downto 0),
      S(0) => leftChannelMemory_n_4,
      SS(0) => \^sr\(0),
      \out\(9 downto 0) => column(9 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      \sdp_bl.ramb18_dp_bl.ram18_bl_0\ => leftChannelMemory_n_5,
      \sdp_bl.ramb18_dp_bl.ram18_bl_1\(15 downto 0) => \sdp_bl.ramb18_dp_bl.ram18_bl_0\(15 downto 0),
      switch(0) => switch(2),
      w_wrEnbMux => w_wrEnbMux
    );
memory_counter: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lec10__parameterized1\
     port map (
      ADDRBWRADDR(9 downto 0) => w_wrAddrMux(9 downto 0),
      D(1 downto 0) => D(1 downto 0),
      E(0) => E(0),
      \FSM_onehot_state_reg[3]\(0) => \FSM_onehot_state_reg[3]\(0),
      Q(1 downto 0) => Q(1 downto 0),
      SS(0) => \^sr\(0),
      \processQ_reg[1]_0\(1 downto 0) => \processQ_reg[1]\(1 downto 0),
      \processQ_reg[9]_0\ => \processQ_reg[9]\,
      s00_axi_aclk => s00_axi_aclk,
      \sdp_bl.ramb18_dp_bl.ram18_bl\(9 downto 0) => \sdp_bl.ramb18_dp_bl.ram18_bl\(9 downto 0),
      sw(0) => \^sw\(0),
      switch(0) => switch(2)
    );
rightChannelMemory: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_unimacro_BRAM_SDP_MACRO__parameterized2\
     port map (
      ADDRBWRADDR(9 downto 0) => w_wrAddrMux(9 downto 0),
      DOADO(3 downto 2) => p_0_in(7 downto 6),
      DOADO(1 downto 0) => p_0_in(4 downto 3),
      O101(3) => row(5),
      O101(2 downto 0) => row(2 downto 0),
      Rbus_out(15 downto 0) => \^rbus_out\(15 downto 0),
      S(0) => rightChannelMemory_n_4,
      \out\(9 downto 0) => column(9 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      \sdp_bl.ramb18_dp_bl.ram18_bl_0\ => rightChannelMemory_n_5,
      \sdp_bl.ramb18_dp_bl.ram18_bl_1\ => \^sr\(0),
      \sdp_bl.ramb18_dp_bl.ram18_bl_2\(15 downto 0) => \sdp_bl.ramb18_dp_bl.ram18_bl_1\(15 downto 0),
      switch(0) => switch(2),
      w_wrEnbMux => w_wrEnbMux
    );
\toADCL_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^sw\(1),
      D => D_L_O_int(6),
      Q => toADCL(0),
      R => Audio_Codec_n_0
    );
\toADCL_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^sw\(1),
      D => fromADCL(17),
      Q => toADCL(17),
      R => '0'
    );
\toADCL_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^sw\(1),
      D => D_L_O_int(7),
      Q => toADCL(1),
      R => Audio_Codec_n_0
    );
\toADCR_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^sw\(1),
      D => D_R_O_int(6),
      Q => toADCR(0),
      R => Audio_Codec_n_0
    );
\toADCR_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^sw\(1),
      D => fromADCR(17),
      Q => toADCR(17),
      R => '0'
    );
\toADCR_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^sw\(1),
      D => D_R_O_int(7),
      Q => toADCR(1),
      R => Audio_Codec_n_0
    );
\triggerTime[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => btn_left_pressed,
      I1 => btn(1),
      O => \triggerTime[4]_i_2_n_0\
    );
\triggerTime[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => btn_left_pressed,
      I1 => btn(1),
      I2 => \^triggertimeout\(2),
      O => \triggerTime[4]_i_3_n_0\
    );
\triggerTime[4]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => btn_left_pressed,
      I1 => btn(1),
      I2 => \^triggertimeout\(1),
      O => \triggerTime[4]_i_4_n_0\
    );
\triggerTime[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^triggertimeout\(0),
      O => \triggerTime[4]_i_5_n_0\
    );
\triggerTime[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^triggertimeout\(5),
      I1 => \^triggertimeout\(6),
      O => \triggerTime[8]_i_2_n_0\
    );
\triggerTime[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^triggertimeout\(4),
      I1 => \^triggertimeout\(5),
      O => \triggerTime[8]_i_3_n_0\
    );
\triggerTime[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^triggertimeout\(3),
      I1 => \^triggertimeout\(4),
      O => \triggerTime[8]_i_4_n_0\
    );
\triggerTime[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^triggertimeout\(2),
      I1 => \^triggertimeout\(3),
      O => \triggerTime[8]_i_5_n_0\
    );
\triggerTime[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => btn_left_pressed,
      I1 => btn(1),
      I2 => btn_right_pressed,
      I3 => btn(3),
      O => \triggerTime[9]_i_1_n_0\
    );
\triggerTime[9]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^triggertimeout\(6),
      I1 => \^triggertimeout\(7),
      O => \triggerTime[9]_i_3_n_0\
    );
\triggerTime_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \triggerTime[9]_i_1_n_0\,
      D => \triggerTime_reg[4]_i_1_n_6\,
      Q => \^triggertimeout\(0),
      R => \^sr\(0)
    );
\triggerTime_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \triggerTime[9]_i_1_n_0\,
      D => \triggerTime_reg[4]_i_1_n_5\,
      Q => \^triggertimeout\(1),
      R => \^sr\(0)
    );
\triggerTime_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \triggerTime[9]_i_1_n_0\,
      D => \triggerTime_reg[4]_i_1_n_4\,
      Q => \^triggertimeout\(2),
      R => \^sr\(0)
    );
\triggerTime_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \triggerTime_reg[4]_i_1_n_0\,
      CO(2) => \triggerTime_reg[4]_i_1_n_1\,
      CO(1) => \triggerTime_reg[4]_i_1_n_2\,
      CO(0) => \triggerTime_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \triggerTime[4]_i_2_n_0\,
      DI(2 downto 1) => \^triggertimeout\(1 downto 0),
      DI(0) => '0',
      O(3) => \triggerTime_reg[4]_i_1_n_4\,
      O(2) => \triggerTime_reg[4]_i_1_n_5\,
      O(1) => \triggerTime_reg[4]_i_1_n_6\,
      O(0) => \NLW_triggerTime_reg[4]_i_1_O_UNCONNECTED\(0),
      S(3) => \triggerTime[4]_i_3_n_0\,
      S(2) => \triggerTime[4]_i_4_n_0\,
      S(1) => \triggerTime[4]_i_5_n_0\,
      S(0) => '0'
    );
\triggerTime_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \triggerTime[9]_i_1_n_0\,
      D => \triggerTime_reg[8]_i_1_n_7\,
      Q => \^triggertimeout\(3),
      R => \^sr\(0)
    );
\triggerTime_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => \triggerTime[9]_i_1_n_0\,
      D => \triggerTime_reg[8]_i_1_n_6\,
      Q => \^triggertimeout\(4),
      S => \^sr\(0)
    );
\triggerTime_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \triggerTime[9]_i_1_n_0\,
      D => \triggerTime_reg[8]_i_1_n_5\,
      Q => \^triggertimeout\(5),
      R => \^sr\(0)
    );
\triggerTime_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => \triggerTime[9]_i_1_n_0\,
      D => \triggerTime_reg[8]_i_1_n_4\,
      Q => \^triggertimeout\(6),
      S => \^sr\(0)
    );
\triggerTime_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \triggerTime_reg[4]_i_1_n_0\,
      CO(3) => \triggerTime_reg[8]_i_1_n_0\,
      CO(2) => \triggerTime_reg[8]_i_1_n_1\,
      CO(1) => \triggerTime_reg[8]_i_1_n_2\,
      CO(0) => \triggerTime_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^triggertimeout\(5 downto 2),
      O(3) => \triggerTime_reg[8]_i_1_n_4\,
      O(2) => \triggerTime_reg[8]_i_1_n_5\,
      O(1) => \triggerTime_reg[8]_i_1_n_6\,
      O(0) => \triggerTime_reg[8]_i_1_n_7\,
      S(3) => \triggerTime[8]_i_2_n_0\,
      S(2) => \triggerTime[8]_i_3_n_0\,
      S(1) => \triggerTime[8]_i_4_n_0\,
      S(0) => \triggerTime[8]_i_5_n_0\
    );
\triggerTime_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \triggerTime[9]_i_1_n_0\,
      D => \triggerTime_reg[9]_i_2_n_7\,
      Q => \^triggertimeout\(7),
      R => \^sr\(0)
    );
\triggerTime_reg[9]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \triggerTime_reg[8]_i_1_n_0\,
      CO(3 downto 0) => \NLW_triggerTime_reg[9]_i_2_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_triggerTime_reg[9]_i_2_O_UNCONNECTED\(3 downto 1),
      O(0) => \triggerTime_reg[9]_i_2_n_7\,
      S(3 downto 1) => B"000",
      S(0) => \triggerTime[9]_i_3_n_0\
    );
\triggerVolt[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => btn_up_pressed,
      I1 => btn(0),
      O => \triggerVolt[4]_i_2_n_0\
    );
\triggerVolt[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => btn_up_pressed,
      I1 => btn(0),
      I2 => \^triggervoltout\(2),
      O => \triggerVolt[4]_i_3_n_0\
    );
\triggerVolt[4]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => btn_up_pressed,
      I1 => btn(0),
      I2 => \^triggervoltout\(1),
      O => \triggerVolt[4]_i_4_n_0\
    );
\triggerVolt[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^triggervoltout\(0),
      O => \triggerVolt[4]_i_5_n_0\
    );
\triggerVolt[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^triggervoltout\(5),
      I1 => \^triggervoltout\(6),
      O => \triggerVolt[8]_i_2_n_0\
    );
\triggerVolt[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^triggervoltout\(4),
      I1 => \^triggervoltout\(5),
      O => \triggerVolt[8]_i_3_n_0\
    );
\triggerVolt[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^triggervoltout\(3),
      I1 => \^triggervoltout\(4),
      O => \triggerVolt[8]_i_4_n_0\
    );
\triggerVolt[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^triggervoltout\(2),
      I1 => \^triggervoltout\(3),
      O => \triggerVolt[8]_i_5_n_0\
    );
\triggerVolt[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => btn_up_pressed,
      I1 => btn(0),
      I2 => btn_down_pressed,
      I3 => btn(2),
      O => \triggerVolt[9]_i_1_n_0\
    );
\triggerVolt[9]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^triggervoltout\(6),
      I1 => \^triggervoltout\(7),
      O => \triggerVolt[9]_i_3_n_0\
    );
\triggerVolt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \triggerVolt[9]_i_1_n_0\,
      D => \triggerVolt_reg[4]_i_1_n_6\,
      Q => \^triggervoltout\(0),
      R => \^sr\(0)
    );
\triggerVolt_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => \triggerVolt[9]_i_1_n_0\,
      D => \triggerVolt_reg[4]_i_1_n_5\,
      Q => \^triggervoltout\(1),
      S => \^sr\(0)
    );
\triggerVolt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \triggerVolt[9]_i_1_n_0\,
      D => \triggerVolt_reg[4]_i_1_n_4\,
      Q => \^triggervoltout\(2),
      R => \^sr\(0)
    );
\triggerVolt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \triggerVolt_reg[4]_i_1_n_0\,
      CO(2) => \triggerVolt_reg[4]_i_1_n_1\,
      CO(1) => \triggerVolt_reg[4]_i_1_n_2\,
      CO(0) => \triggerVolt_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \triggerVolt[4]_i_2_n_0\,
      DI(2 downto 1) => \^triggervoltout\(1 downto 0),
      DI(0) => '0',
      O(3) => \triggerVolt_reg[4]_i_1_n_4\,
      O(2) => \triggerVolt_reg[4]_i_1_n_5\,
      O(1) => \triggerVolt_reg[4]_i_1_n_6\,
      O(0) => \NLW_triggerVolt_reg[4]_i_1_O_UNCONNECTED\(0),
      S(3) => \triggerVolt[4]_i_3_n_0\,
      S(2) => \triggerVolt[4]_i_4_n_0\,
      S(1) => \triggerVolt[4]_i_5_n_0\,
      S(0) => '0'
    );
\triggerVolt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \triggerVolt[9]_i_1_n_0\,
      D => \triggerVolt_reg[8]_i_1_n_7\,
      Q => \^triggervoltout\(3),
      R => \^sr\(0)
    );
\triggerVolt_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => \triggerVolt[9]_i_1_n_0\,
      D => \triggerVolt_reg[8]_i_1_n_6\,
      Q => \^triggervoltout\(4),
      S => \^sr\(0)
    );
\triggerVolt_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => \triggerVolt[9]_i_1_n_0\,
      D => \triggerVolt_reg[8]_i_1_n_5\,
      Q => \^triggervoltout\(5),
      S => \^sr\(0)
    );
\triggerVolt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \triggerVolt[9]_i_1_n_0\,
      D => \triggerVolt_reg[8]_i_1_n_4\,
      Q => \^triggervoltout\(6),
      R => \^sr\(0)
    );
\triggerVolt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \triggerVolt_reg[4]_i_1_n_0\,
      CO(3) => \triggerVolt_reg[8]_i_1_n_0\,
      CO(2) => \triggerVolt_reg[8]_i_1_n_1\,
      CO(1) => \triggerVolt_reg[8]_i_1_n_2\,
      CO(0) => \triggerVolt_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^triggervoltout\(5 downto 2),
      O(3) => \triggerVolt_reg[8]_i_1_n_4\,
      O(2) => \triggerVolt_reg[8]_i_1_n_5\,
      O(1) => \triggerVolt_reg[8]_i_1_n_6\,
      O(0) => \triggerVolt_reg[8]_i_1_n_7\,
      S(3) => \triggerVolt[8]_i_2_n_0\,
      S(2) => \triggerVolt[8]_i_3_n_0\,
      S(1) => \triggerVolt[8]_i_4_n_0\,
      S(0) => \triggerVolt[8]_i_5_n_0\
    );
\triggerVolt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \triggerVolt[9]_i_1_n_0\,
      D => \triggerVolt_reg[9]_i_2_n_7\,
      Q => \^triggervoltout\(7),
      R => \^sr\(0)
    );
\triggerVolt_reg[9]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \triggerVolt_reg[8]_i_1_n_0\,
      CO(3 downto 0) => \NLW_triggerVolt_reg[9]_i_2_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_triggerVolt_reg[9]_i_2_O_UNCONNECTED\(3 downto 1),
      O(0) => \triggerVolt_reg[9]_i_2_n_7\,
      S(3 downto 1) => B"000",
      S(0) => \triggerVolt[9]_i_3_n_0\
    );
video_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_video
     port map (
      DOADO(3 downto 2) => p_0_in(7 downto 6),
      DOADO(1 downto 0) => p_0_in(4 downto 3),
      S(0) => leftChannelMemory_n_4,
      column(9 downto 0) => column(9 downto 0),
      \dc_bias[3]_i_7__0\(0) => rightChannelMemory_n_4,
      \dc_bias_reg[3]_i_15\ => rightChannelMemory_n_5,
      \dc_bias_reg[3]_i_9\ => leftChannelMemory_n_5,
      \dc_bias_reg[3]_i_9_0\(3 downto 2) => p_0_in0_in(7 downto 6),
      \dc_bias_reg[3]_i_9_0\(1 downto 0) => p_0_in0_in(4 downto 3),
      lopt => lopt,
      \processQ_reg[5]\(3) => row(5),
      \processQ_reg[5]\(2 downto 0) => row(2 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      switch(1 downto 0) => switch(1 downto 0),
      tmds(3 downto 0) => tmds(3 downto 0),
      tmdsb(3 downto 0) => tmdsb(3 downto 0),
      triggerTimeOut(7 downto 0) => \^triggertimeout\(7 downto 0),
      triggerVoltOut(7 downto 0) => \^triggervoltout\(7 downto 0)
    );
\w_Lbus_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^sw\(1),
      D => fromADCL(2),
      Q => \^lbus_out\(0),
      R => '0'
    );
\w_Lbus_out_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^sw\(1),
      D => fromADCL(12),
      Q => \^lbus_out\(10),
      R => '0'
    );
\w_Lbus_out_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^sw\(1),
      D => fromADCL(13),
      Q => \^lbus_out\(11),
      R => '0'
    );
\w_Lbus_out_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^sw\(1),
      D => fromADCL(14),
      Q => \^lbus_out\(12),
      R => '0'
    );
\w_Lbus_out_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^sw\(1),
      D => fromADCL(15),
      Q => \^lbus_out\(13),
      R => '0'
    );
\w_Lbus_out_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^sw\(1),
      D => fromADCL(16),
      Q => \^lbus_out\(14),
      R => '0'
    );
\w_Lbus_out_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^sw\(1),
      D => p_1_out(15),
      Q => \^lbus_out\(15),
      R => '0'
    );
\w_Lbus_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^sw\(1),
      D => fromADCL(3),
      Q => \^lbus_out\(1),
      R => '0'
    );
\w_Lbus_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^sw\(1),
      D => fromADCL(4),
      Q => \^lbus_out\(2),
      R => '0'
    );
\w_Lbus_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^sw\(1),
      D => fromADCL(5),
      Q => \^lbus_out\(3),
      R => '0'
    );
\w_Lbus_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^sw\(1),
      D => fromADCL(6),
      Q => \^lbus_out\(4),
      R => '0'
    );
\w_Lbus_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^sw\(1),
      D => fromADCL(7),
      Q => \^lbus_out\(5),
      R => '0'
    );
\w_Lbus_out_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^sw\(1),
      D => fromADCL(8),
      Q => \^lbus_out\(6),
      R => '0'
    );
\w_Lbus_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^sw\(1),
      D => fromADCL(9),
      Q => \^lbus_out\(7),
      R => '0'
    );
\w_Lbus_out_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^sw\(1),
      D => fromADCL(10),
      Q => \^lbus_out\(8),
      R => '0'
    );
\w_Lbus_out_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^sw\(1),
      D => fromADCL(11),
      Q => \^lbus_out\(9),
      R => '0'
    );
\w_Rbus_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^sw\(1),
      D => fromADCR(2),
      Q => \^rbus_out\(0),
      R => '0'
    );
\w_Rbus_out_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^sw\(1),
      D => fromADCR(12),
      Q => \^rbus_out\(10),
      R => '0'
    );
\w_Rbus_out_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^sw\(1),
      D => fromADCR(13),
      Q => \^rbus_out\(11),
      R => '0'
    );
\w_Rbus_out_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^sw\(1),
      D => fromADCR(14),
      Q => \^rbus_out\(12),
      R => '0'
    );
\w_Rbus_out_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^sw\(1),
      D => fromADCR(15),
      Q => \^rbus_out\(13),
      R => '0'
    );
\w_Rbus_out_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^sw\(1),
      D => fromADCR(16),
      Q => \^rbus_out\(14),
      R => '0'
    );
\w_Rbus_out_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^sw\(1),
      D => Audio_Codec_n_7,
      Q => \^rbus_out\(15),
      R => '0'
    );
\w_Rbus_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^sw\(1),
      D => fromADCR(3),
      Q => \^rbus_out\(1),
      R => '0'
    );
\w_Rbus_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^sw\(1),
      D => fromADCR(4),
      Q => \^rbus_out\(2),
      R => '0'
    );
\w_Rbus_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^sw\(1),
      D => fromADCR(5),
      Q => \^rbus_out\(3),
      R => '0'
    );
\w_Rbus_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^sw\(1),
      D => fromADCR(6),
      Q => \^rbus_out\(4),
      R => '0'
    );
\w_Rbus_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^sw\(1),
      D => fromADCR(7),
      Q => \^rbus_out\(5),
      R => '0'
    );
\w_Rbus_out_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^sw\(1),
      D => fromADCR(8),
      Q => \^rbus_out\(6),
      R => '0'
    );
\w_Rbus_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^sw\(1),
      D => fromADCR(9),
      Q => \^rbus_out\(7),
      R => '0'
    );
\w_Rbus_out_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^sw\(1),
      D => fromADCR(10),
      Q => \^rbus_out\(8),
      R => '0'
    );
\w_Rbus_out_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^sw\(1),
      D => fromADCR(11),
      Q => \^rbus_out\(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Lab3Component1_1_slave_lite_v1_0_S00_AXI is
  port (
    s00_axi_bvalid : out STD_LOGIC;
    axi_awready_reg_0 : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    axi_rvalid_reg_0 : out STD_LOGIC;
    axi_arready_reg_0 : out STD_LOGIC;
    \FSM_onehot_state_write_reg[1]_0\ : out STD_LOGIC;
    \FSM_onehot_state_write_reg[2]_0\ : out STD_LOGIC;
    axi_wready : out STD_LOGIC;
    state_read : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    flagQOut : out STD_LOGIC;
    \FSM_onehot_state_write_reg[2]_1\ : out STD_LOGIC;
    tmds : out STD_LOGIC_VECTOR ( 3 downto 0 );
    tmdsb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ac_mclk : out STD_LOGIC;
    ac_dac_sdata : out STD_LOGIC;
    LRCLK_reg : out STD_LOGIC;
    BCLK_int_reg : out STD_LOGIC;
    scl : inout STD_LOGIC;
    sda : inout STD_LOGIC;
    axi_bvalid_reg_0 : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    axi_awready_reg_1 : in STD_LOGIC;
    axi_wready_reg_0 : in STD_LOGIC;
    axi_rvalid_reg_1 : in STD_LOGIC;
    axi_arready_reg_1 : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    btn : in STD_LOGIC_VECTOR ( 3 downto 0 );
    switch : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ac_adc_sdata : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Lab3Component1_1_slave_lite_v1_0_S00_AXI;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Lab3Component1_1_slave_lite_v1_0_S00_AXI is
  signal \Audio_Codec/rst\ : STD_LOGIC;
  signal \FSM_onehot_state_write[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_write[2]_i_1_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_state_write_reg[1]_0\ : STD_LOGIC;
  signal \^fsm_onehot_state_write_reg[2]_0\ : STD_LOGIC;
  signal \FSM_sequential_state_read[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_read[1]_i_1_n_0\ : STD_LOGIC;
  signal LBus_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Rbus_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \axi_araddr[6]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr_reg[2]_rep_n_0\ : STD_LOGIC;
  signal \axi_araddr_reg[3]_rep_n_0\ : STD_LOGIC;
  signal \^axi_arready_reg_0\ : STD_LOGIC;
  signal \axi_awaddr[6]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[2]\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[3]\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[4]\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[5]\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[6]\ : STD_LOGIC;
  signal \^axi_awready_reg_0\ : STD_LOGIC;
  signal \^axi_rvalid_reg_0\ : STD_LOGIC;
  signal \^axi_wready\ : STD_LOGIC;
  signal controlUnit_n_0 : STD_LOGIC;
  signal controlUnit_n_2 : STD_LOGIC;
  signal controlUnit_n_5 : STD_LOGIC;
  signal cw : STD_LOGIC_VECTOR ( 2 to 2 );
  signal datapath_n_36 : STD_LOGIC;
  signal \^flagqout\ : STD_LOGIC;
  signal mem_logic : STD_LOGIC_VECTOR ( 5 downto 2 );
  signal \memory_counter/processQ\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal \s00_axi_rdata[0]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[0]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[0]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[0]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[0]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[0]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[0]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[0]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[10]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[10]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[10]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[10]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[10]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[10]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[10]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[10]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[10]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[10]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[10]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[11]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[11]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[11]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[11]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[11]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[11]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[11]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[11]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[11]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[11]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[11]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[12]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[12]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[12]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[12]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[12]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[12]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[12]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[12]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[12]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[12]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[13]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[13]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[13]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[13]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[13]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[13]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[13]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[13]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[13]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[13]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[13]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[14]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[14]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[14]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[14]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[14]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[14]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[14]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[14]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[14]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[14]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[14]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[15]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[15]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[15]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[15]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[15]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[15]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[15]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[15]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[15]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[15]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[15]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[16]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[16]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[16]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[16]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[16]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[16]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[16]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[16]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[16]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[16]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[17]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[17]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[17]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[17]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[17]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[17]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[17]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[17]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[17]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[17]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[18]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[18]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[18]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[18]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[18]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[18]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[18]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[18]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[18]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[18]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[19]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[19]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[19]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[19]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[19]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[19]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[19]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[19]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[19]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[19]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[1]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[1]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[1]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[1]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[1]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[1]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[1]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[1]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[1]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[20]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[20]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[20]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[20]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[20]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[20]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[20]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[20]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[20]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[20]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[21]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[21]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[21]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[21]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[21]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[21]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[21]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[21]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[21]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[21]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[22]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[22]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[22]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[22]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[22]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[22]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[22]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[22]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[22]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[22]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[23]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[23]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[23]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[23]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[23]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[23]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[23]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[23]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[23]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[23]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[24]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[24]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[24]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[24]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[24]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[24]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[24]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[24]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[24]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[24]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[25]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[25]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[25]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[25]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[25]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[25]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[25]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[25]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[25]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[25]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[26]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[26]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[26]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[26]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[26]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[26]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[26]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[26]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[26]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[26]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[27]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[27]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[27]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[27]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[27]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[27]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[27]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[27]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[27]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[27]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[28]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[28]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[28]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[28]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[28]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[28]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[28]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[28]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[28]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[28]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[29]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[29]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[29]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[29]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[29]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[29]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[29]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[29]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[29]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[29]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[2]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[2]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[2]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[2]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[2]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[2]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[2]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[2]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[2]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[2]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[30]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[30]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[30]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[30]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[30]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[30]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[30]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[30]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[30]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[30]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[31]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[31]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[31]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[31]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[31]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[31]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[31]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[31]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[31]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[31]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[3]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[3]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[3]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[3]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[3]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[3]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[3]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[3]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[3]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[3]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[4]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[4]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[4]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[4]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[4]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[4]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[4]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[4]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[4]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[4]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[5]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[5]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[5]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[5]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[5]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[5]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[5]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[5]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[5]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[5]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[6]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[6]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[6]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[6]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[6]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[6]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[6]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[6]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[6]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[6]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[7]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[7]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[7]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[7]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[7]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[7]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[7]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[7]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[7]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[7]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[8]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[8]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[8]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[8]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[8]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[8]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[8]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[8]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[8]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[8]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[9]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[9]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[9]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[9]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[9]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[9]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[9]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[9]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[9]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[9]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[9]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal slv_reg1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal slv_reg10 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg10[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg10[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg10[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg10[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg10[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg11 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \slv_reg11[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg11[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg11[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg11[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg11[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg11__0\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal slv_reg15 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg15[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg15[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg15[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg15[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg15[31]_i_4_n_0\ : STD_LOGIC;
  signal \slv_reg15[31]_i_5_n_0\ : STD_LOGIC;
  signal \slv_reg15[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg16 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg16[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg16[15]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg16[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg16[23]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg16[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg16[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg16[31]_i_3_n_0\ : STD_LOGIC;
  signal \slv_reg16[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg16[7]_i_2_n_0\ : STD_LOGIC;
  signal slv_reg17 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg17[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg17[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg17[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg17[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg17[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg18 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg18[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg18[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg18[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg18[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg18[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg19 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg19[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg19[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg19[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg19[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg19[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_2_n_0\ : STD_LOGIC;
  signal slv_reg2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal slv_reg20 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg20[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg20[15]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg20[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg20[23]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg20[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg20[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg20[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg20[7]_i_2_n_0\ : STD_LOGIC;
  signal slv_reg21 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg21[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg21[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg21[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg21[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg22 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg22[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg22[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg22[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg22[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg23 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg23[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg23[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg23[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg23[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg24 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg24[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg24[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg24[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg24[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg24[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg25 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg25[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg25[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg25[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg25[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg25[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg26 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg26[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg26[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg26[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg26[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg26[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg27 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg27[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg27[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg27[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg27[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg27[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg28 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg28[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg28[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg28[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg28[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg29 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg29[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg29[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg29[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg29[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg29[31]_i_3_n_0\ : STD_LOGIC;
  signal \slv_reg29[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg2[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal slv_reg30 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg30[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg30[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg30[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg30[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg30[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg31 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg31[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg31[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg31[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg31[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg31[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg3[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg4 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \slv_reg4[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg4[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg4[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg4[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg4[31]_i_5_n_0\ : STD_LOGIC;
  signal \slv_reg4[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg4__0\ : STD_LOGIC_VECTOR ( 31 downto 10 );
  signal slv_reg7 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \slv_reg7[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg7[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg7[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg7[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg7[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg7__0\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal slv_reg8 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \slv_reg8[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg8[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg8[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg8[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg8[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg8__0\ : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal slv_reg9 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \slv_reg9[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg9[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg9[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg9[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg9[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg9__0\ : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal \^state_read\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal sw : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal sw1 : STD_LOGIC;
  signal sw118_in : STD_LOGIC;
  signal triggerTimeOut : STD_LOGIC_VECTOR ( 9 downto 2 );
  signal triggerVoltOut : STD_LOGIC_VECTOR ( 9 downto 2 );
  signal w_wrEnbMux : STD_LOGIC;
  signal writeCntr : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state_write[2]_i_1\ : label is "soft_lutpair113";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_write_reg[0]\ : label is "idle:001,wdata:100,waddr:010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_write_reg[1]\ : label is "idle:001,wdata:100,waddr:010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_write_reg[2]\ : label is "idle:001,wdata:100,waddr:010";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_read_reg[0]\ : label is "idle:00,rdata:10,raddr:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_read_reg[1]\ : label is "idle:00,rdata:10,raddr:01";
  attribute ORIG_CELL_NAME : string;
  attribute ORIG_CELL_NAME of \axi_araddr_reg[2]\ : label is "axi_araddr_reg[2]";
  attribute ORIG_CELL_NAME of \axi_araddr_reg[2]_rep\ : label is "axi_araddr_reg[2]";
  attribute ORIG_CELL_NAME of \axi_araddr_reg[3]\ : label is "axi_araddr_reg[3]";
  attribute ORIG_CELL_NAME of \axi_araddr_reg[3]_rep\ : label is "axi_araddr_reg[3]";
  attribute SOFT_HLUTNM of axi_bvalid_i_2 : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \slv_reg15[31]_i_5\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \slv_reg4[31]_i_3\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \slv_reg4[31]_i_4\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \slv_reg7[31]_i_3\ : label is "soft_lutpair114";
begin
  \FSM_onehot_state_write_reg[1]_0\ <= \^fsm_onehot_state_write_reg[1]_0\;
  \FSM_onehot_state_write_reg[2]_0\ <= \^fsm_onehot_state_write_reg[2]_0\;
  axi_arready_reg_0 <= \^axi_arready_reg_0\;
  axi_awready_reg_0 <= \^axi_awready_reg_0\;
  axi_rvalid_reg_0 <= \^axi_rvalid_reg_0\;
  axi_wready <= \^axi_wready\;
  flagQOut <= \^flagqout\;
  state_read(1 downto 0) <= \^state_read\(1 downto 0);
\FSM_onehot_state_write[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF7F0F700"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => \^axi_awready_reg_0\,
      I2 => s00_axi_wvalid,
      I3 => \^fsm_onehot_state_write_reg[1]_0\,
      I4 => \^fsm_onehot_state_write_reg[2]_0\,
      I5 => \^axi_wready\,
      O => \FSM_onehot_state_write[1]_i_1_n_0\
    );
\FSM_onehot_state_write[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F0F0800"
    )
        port map (
      I0 => \^axi_awready_reg_0\,
      I1 => s00_axi_awvalid,
      I2 => s00_axi_wvalid,
      I3 => \^fsm_onehot_state_write_reg[1]_0\,
      I4 => \^fsm_onehot_state_write_reg[2]_0\,
      O => \FSM_onehot_state_write[2]_i_1_n_0\
    );
\FSM_onehot_state_write_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => '0',
      Q => \^axi_wready\,
      S => \Audio_Codec/rst\
    );
\FSM_onehot_state_write_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state_write[1]_i_1_n_0\,
      Q => \^fsm_onehot_state_write_reg[1]_0\,
      R => \Audio_Codec/rst\
    );
\FSM_onehot_state_write_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state_write[2]_i_1_n_0\,
      Q => \^fsm_onehot_state_write_reg[2]_0\,
      R => \Audio_Codec/rst\
    );
\FSM_sequential_state_read[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF88880FFFFFFF"
    )
        port map (
      I0 => s00_axi_rready,
      I1 => \^axi_rvalid_reg_0\,
      I2 => s00_axi_arvalid,
      I3 => \^axi_arready_reg_0\,
      I4 => \^state_read\(0),
      I5 => \^state_read\(1),
      O => \FSM_sequential_state_read[0]_i_1_n_0\
    );
\FSM_sequential_state_read[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7777F0000000"
    )
        port map (
      I0 => \^axi_rvalid_reg_0\,
      I1 => s00_axi_rready,
      I2 => \^axi_arready_reg_0\,
      I3 => s00_axi_arvalid,
      I4 => \^state_read\(0),
      I5 => \^state_read\(1),
      O => \FSM_sequential_state_read[1]_i_1_n_0\
    );
\FSM_sequential_state_read_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_state_read[0]_i_1_n_0\,
      Q => \^state_read\(0),
      R => \Audio_Codec/rst\
    );
\FSM_sequential_state_read_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_state_read[1]_i_1_n_0\,
      Q => \^state_read\(1),
      R => \Audio_Codec/rst\
    );
\axi_araddr[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => \^state_read\(0),
      I1 => s00_axi_aresetn,
      I2 => \^state_read\(1),
      I3 => s00_axi_arvalid,
      I4 => \^axi_arready_reg_0\,
      O => \axi_araddr[6]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_araddr[6]_i_1_n_0\,
      D => s00_axi_araddr(0),
      Q => sel0(0),
      R => '0'
    );
\axi_araddr_reg[2]_rep\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_araddr[6]_i_1_n_0\,
      D => s00_axi_araddr(0),
      Q => \axi_araddr_reg[2]_rep_n_0\,
      R => '0'
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_araddr[6]_i_1_n_0\,
      D => s00_axi_araddr(1),
      Q => sel0(1),
      R => '0'
    );
\axi_araddr_reg[3]_rep\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_araddr[6]_i_1_n_0\,
      D => s00_axi_araddr(1),
      Q => \axi_araddr_reg[3]_rep_n_0\,
      R => '0'
    );
\axi_araddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_araddr[6]_i_1_n_0\,
      D => s00_axi_araddr(2),
      Q => sel0(2),
      R => '0'
    );
\axi_araddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_araddr[6]_i_1_n_0\,
      D => s00_axi_araddr(3),
      Q => sel0(3),
      R => '0'
    );
\axi_araddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_araddr[6]_i_1_n_0\,
      D => s00_axi_araddr(4),
      Q => sel0(4),
      R => '0'
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready_reg_1,
      Q => \^axi_arready_reg_0\,
      R => \Audio_Codec/rst\
    );
\axi_awaddr[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => \^fsm_onehot_state_write_reg[1]_0\,
      I2 => \^axi_awready_reg_0\,
      I3 => s00_axi_awvalid,
      O => \axi_awaddr[6]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_awaddr[6]_i_1_n_0\,
      D => s00_axi_awaddr(0),
      Q => \axi_awaddr_reg_n_0_[2]\,
      R => '0'
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_awaddr[6]_i_1_n_0\,
      D => s00_axi_awaddr(1),
      Q => \axi_awaddr_reg_n_0_[3]\,
      R => '0'
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_awaddr[6]_i_1_n_0\,
      D => s00_axi_awaddr(2),
      Q => \axi_awaddr_reg_n_0_[4]\,
      R => '0'
    );
\axi_awaddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_awaddr[6]_i_1_n_0\,
      D => s00_axi_awaddr(3),
      Q => \axi_awaddr_reg_n_0_[5]\,
      R => '0'
    );
\axi_awaddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_awaddr[6]_i_1_n_0\,
      D => s00_axi_awaddr(4),
      Q => \axi_awaddr_reg_n_0_[6]\,
      R => '0'
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready_reg_1,
      Q => \^axi_awready_reg_0\,
      R => \Audio_Codec/rst\
    );
axi_bvalid_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAAA0000"
    )
        port map (
      I0 => \^fsm_onehot_state_write_reg[2]_0\,
      I1 => \^fsm_onehot_state_write_reg[1]_0\,
      I2 => \^axi_awready_reg_0\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_wvalid,
      O => \FSM_onehot_state_write_reg[2]_1\
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_reg_0,
      Q => s00_axi_bvalid,
      R => \Audio_Codec/rst\
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_reg_1,
      Q => \^axi_rvalid_reg_0\,
      R => \Audio_Codec/rst\
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready_reg_0,
      Q => s00_axi_wready,
      R => \Audio_Codec/rst\
    );
controlUnit: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lab2_fsm
     port map (
      CO(0) => sw1,
      D(1 downto 0) => \memory_counter/processQ\(1 downto 0),
      E(0) => controlUnit_n_0,
      \FSM_onehot_state_reg[0]_0\(0) => datapath_n_36,
      \FSM_onehot_state_reg[0]_1\(0) => sw118_in,
      \FSM_onehot_state_reg[3]_0\ => controlUnit_n_5,
      Q(1) => cw(2),
      Q(0) => controlUnit_n_2,
      SR(0) => \Audio_Codec/rst\,
      \processQ_reg[1]\(1 downto 0) => writeCntr(1 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      \sdp_bl.ramb18_dp_bl.ram18_bl\(0) => slv_reg7(0),
      sw(1 downto 0) => sw(1 downto 0),
      switch(0) => switch(2),
      w_wrEnbMux => w_wrEnbMux
    );
datapath: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lab2_datapath
     port map (
      BCLK_int_reg => BCLK_int_reg,
      CO(0) => sw1,
      D(1 downto 0) => \memory_counter/processQ\(1 downto 0),
      E(0) => controlUnit_n_0,
      \FSM_onehot_state_reg[3]\(0) => datapath_n_36,
      LBus_out(15 downto 0) => LBus_out(15 downto 0),
      LRCLK_reg => LRCLK_reg,
      Q(1) => cw(2),
      Q(0) => controlUnit_n_2,
      Rbus_out(15 downto 0) => Rbus_out(15 downto 0),
      SR(0) => \Audio_Codec/rst\,
      ac_adc_sdata => ac_adc_sdata,
      ac_dac_sdata => ac_dac_sdata,
      ac_mclk => ac_mclk,
      btn(3 downto 0) => btn(3 downto 0),
      flagQOut => \^flagqout\,
      flagQ_reg(0) => slv_reg11(0),
      \processQ_reg[1]\(1 downto 0) => writeCntr(1 downto 0),
      \processQ_reg[9]\ => controlUnit_n_5,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      scl => scl,
      sda => sda,
      \sdp_bl.ramb18_dp_bl.ram18_bl\(9 downto 0) => slv_reg4(9 downto 0),
      \sdp_bl.ramb18_dp_bl.ram18_bl_0\(15 downto 0) => slv_reg8(15 downto 0),
      \sdp_bl.ramb18_dp_bl.ram18_bl_1\(15 downto 0) => slv_reg9(15 downto 0),
      sw(1 downto 0) => sw(1 downto 0),
      switch(3 downto 0) => switch(3 downto 0),
      tmds(3 downto 0) => tmds(3 downto 0),
      tmdsb(3 downto 0) => tmdsb(3 downto 0),
      triggerTimeOut(7 downto 0) => triggerTimeOut(9 downto 2),
      triggerVoltOut(7 downto 0) => triggerVoltOut(9 downto 2),
      \triggerVolt_reg[8]_0\(0) => sw118_in,
      w_wrEnbMux => w_wrEnbMux
    );
\s00_axi_rdata[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[0]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[0]_INST_0_i_2_n_0\,
      I2 => sel0(4),
      I3 => \s00_axi_rdata[0]_INST_0_i_3_n_0\,
      I4 => sel0(3),
      I5 => \s00_axi_rdata[0]_INST_0_i_4_n_0\,
      O => s00_axi_rdata(0)
    );
\s00_axi_rdata[0]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[0]_INST_0_i_5_n_0\,
      I1 => \s00_axi_rdata[0]_INST_0_i_6_n_0\,
      O => \s00_axi_rdata[0]_INST_0_i_1_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[0]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(0),
      I1 => slv_reg2(0),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => \axi_araddr_reg[2]_rep_n_0\,
      I4 => slv_reg1(0),
      O => \s00_axi_rdata[0]_INST_0_i_10_n_0\
    );
\s00_axi_rdata[0]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(0),
      I1 => Rbus_out(0),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => LBus_out(0),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg4(0),
      O => \s00_axi_rdata[0]_INST_0_i_11_n_0\
    );
\s00_axi_rdata[0]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[0]_INST_0_i_7_n_0\,
      I1 => \s00_axi_rdata[0]_INST_0_i_8_n_0\,
      O => \s00_axi_rdata[0]_INST_0_i_2_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[0]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8830FFFF88300000"
    )
        port map (
      I0 => slv_reg15(0),
      I1 => \axi_araddr_reg[3]_rep_n_0\,
      I2 => \^flagqout\,
      I3 => \axi_araddr_reg[2]_rep_n_0\,
      I4 => sel0(2),
      I5 => \s00_axi_rdata[0]_INST_0_i_9_n_0\,
      O => \s00_axi_rdata[0]_INST_0_i_3_n_0\
    );
\s00_axi_rdata[0]_INST_0_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[0]_INST_0_i_10_n_0\,
      I1 => \s00_axi_rdata[0]_INST_0_i_11_n_0\,
      O => \s00_axi_rdata[0]_INST_0_i_4_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[0]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg27(0),
      I1 => slv_reg26(0),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => slv_reg25(0),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg24(0),
      O => \s00_axi_rdata[0]_INST_0_i_5_n_0\
    );
\s00_axi_rdata[0]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg31(0),
      I1 => slv_reg30(0),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => slv_reg29(0),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg28(0),
      O => \s00_axi_rdata[0]_INST_0_i_6_n_0\
    );
\s00_axi_rdata[0]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg19(0),
      I1 => slv_reg18(0),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => slv_reg17(0),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg16(0),
      O => \s00_axi_rdata[0]_INST_0_i_7_n_0\
    );
\s00_axi_rdata[0]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg23(0),
      I1 => slv_reg22(0),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => slv_reg21(0),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg20(0),
      O => \s00_axi_rdata[0]_INST_0_i_8_n_0\
    );
\s00_axi_rdata[0]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(0),
      I1 => slv_reg10(0),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => slv_reg9(0),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg8(0),
      O => \s00_axi_rdata[0]_INST_0_i_9_n_0\
    );
\s00_axi_rdata[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[10]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[10]_INST_0_i_2_n_0\,
      I2 => sel0(4),
      I3 => \s00_axi_rdata[10]_INST_0_i_3_n_0\,
      I4 => sel0(3),
      I5 => \s00_axi_rdata[10]_INST_0_i_4_n_0\,
      O => s00_axi_rdata(10)
    );
\s00_axi_rdata[10]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[10]_INST_0_i_5_n_0\,
      I1 => \s00_axi_rdata[10]_INST_0_i_6_n_0\,
      O => \s00_axi_rdata[10]_INST_0_i_1_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[10]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(10),
      I1 => slv_reg2(10),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => \axi_araddr_reg[2]_rep_n_0\,
      I4 => slv_reg1(10),
      O => \s00_axi_rdata[10]_INST_0_i_10_n_0\
    );
\s00_axi_rdata[10]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg7__0\(10),
      I1 => Rbus_out(10),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => LBus_out(10),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => \slv_reg4__0\(10),
      O => \s00_axi_rdata[10]_INST_0_i_11_n_0\
    );
\s00_axi_rdata[10]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[10]_INST_0_i_7_n_0\,
      I1 => \s00_axi_rdata[10]_INST_0_i_8_n_0\,
      O => \s00_axi_rdata[10]_INST_0_i_2_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[10]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => \axi_araddr_reg[3]_rep_n_0\,
      I1 => slv_reg15(10),
      I2 => \axi_araddr_reg[2]_rep_n_0\,
      I3 => sel0(2),
      I4 => \s00_axi_rdata[10]_INST_0_i_9_n_0\,
      O => \s00_axi_rdata[10]_INST_0_i_3_n_0\
    );
\s00_axi_rdata[10]_INST_0_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[10]_INST_0_i_10_n_0\,
      I1 => \s00_axi_rdata[10]_INST_0_i_11_n_0\,
      O => \s00_axi_rdata[10]_INST_0_i_4_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[10]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg27(10),
      I1 => slv_reg26(10),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => slv_reg25(10),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg24(10),
      O => \s00_axi_rdata[10]_INST_0_i_5_n_0\
    );
\s00_axi_rdata[10]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg31(10),
      I1 => slv_reg30(10),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => slv_reg29(10),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg28(10),
      O => \s00_axi_rdata[10]_INST_0_i_6_n_0\
    );
\s00_axi_rdata[10]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg19(10),
      I1 => slv_reg18(10),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => slv_reg17(10),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg16(10),
      O => \s00_axi_rdata[10]_INST_0_i_7_n_0\
    );
\s00_axi_rdata[10]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg23(10),
      I1 => slv_reg22(10),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => slv_reg21(10),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg20(10),
      O => \s00_axi_rdata[10]_INST_0_i_8_n_0\
    );
\s00_axi_rdata[10]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg11__0\(10),
      I1 => slv_reg10(10),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => slv_reg9(10),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg8(10),
      O => \s00_axi_rdata[10]_INST_0_i_9_n_0\
    );
\s00_axi_rdata[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[11]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[11]_INST_0_i_2_n_0\,
      I2 => sel0(4),
      I3 => \s00_axi_rdata[11]_INST_0_i_3_n_0\,
      I4 => sel0(3),
      I5 => \s00_axi_rdata[11]_INST_0_i_4_n_0\,
      O => s00_axi_rdata(11)
    );
\s00_axi_rdata[11]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[11]_INST_0_i_5_n_0\,
      I1 => \s00_axi_rdata[11]_INST_0_i_6_n_0\,
      O => \s00_axi_rdata[11]_INST_0_i_1_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[11]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(11),
      I1 => slv_reg2(11),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => \axi_araddr_reg[2]_rep_n_0\,
      I4 => slv_reg1(11),
      O => \s00_axi_rdata[11]_INST_0_i_10_n_0\
    );
\s00_axi_rdata[11]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg7__0\(11),
      I1 => Rbus_out(11),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => LBus_out(11),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => \slv_reg4__0\(11),
      O => \s00_axi_rdata[11]_INST_0_i_11_n_0\
    );
\s00_axi_rdata[11]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[11]_INST_0_i_7_n_0\,
      I1 => \s00_axi_rdata[11]_INST_0_i_8_n_0\,
      O => \s00_axi_rdata[11]_INST_0_i_2_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[11]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => \axi_araddr_reg[3]_rep_n_0\,
      I1 => slv_reg15(11),
      I2 => \axi_araddr_reg[2]_rep_n_0\,
      I3 => sel0(2),
      I4 => \s00_axi_rdata[11]_INST_0_i_9_n_0\,
      O => \s00_axi_rdata[11]_INST_0_i_3_n_0\
    );
\s00_axi_rdata[11]_INST_0_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[11]_INST_0_i_10_n_0\,
      I1 => \s00_axi_rdata[11]_INST_0_i_11_n_0\,
      O => \s00_axi_rdata[11]_INST_0_i_4_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[11]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg27(11),
      I1 => slv_reg26(11),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => slv_reg25(11),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg24(11),
      O => \s00_axi_rdata[11]_INST_0_i_5_n_0\
    );
\s00_axi_rdata[11]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg31(11),
      I1 => slv_reg30(11),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => slv_reg29(11),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg28(11),
      O => \s00_axi_rdata[11]_INST_0_i_6_n_0\
    );
\s00_axi_rdata[11]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg19(11),
      I1 => slv_reg18(11),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => slv_reg17(11),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg16(11),
      O => \s00_axi_rdata[11]_INST_0_i_7_n_0\
    );
\s00_axi_rdata[11]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg23(11),
      I1 => slv_reg22(11),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => slv_reg21(11),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg20(11),
      O => \s00_axi_rdata[11]_INST_0_i_8_n_0\
    );
\s00_axi_rdata[11]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg11__0\(11),
      I1 => slv_reg10(11),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => slv_reg9(11),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg8(11),
      O => \s00_axi_rdata[11]_INST_0_i_9_n_0\
    );
\s00_axi_rdata[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[12]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[12]_INST_0_i_2_n_0\,
      I2 => sel0(4),
      I3 => \s00_axi_rdata[12]_INST_0_i_3_n_0\,
      I4 => sel0(3),
      I5 => \s00_axi_rdata[12]_INST_0_i_4_n_0\,
      O => s00_axi_rdata(12)
    );
\s00_axi_rdata[12]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[12]_INST_0_i_5_n_0\,
      I1 => \s00_axi_rdata[12]_INST_0_i_6_n_0\,
      O => \s00_axi_rdata[12]_INST_0_i_1_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[12]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(12),
      I1 => slv_reg2(12),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => \axi_araddr_reg[2]_rep_n_0\,
      I4 => slv_reg1(12),
      O => \s00_axi_rdata[12]_INST_0_i_10_n_0\
    );
\s00_axi_rdata[12]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg7__0\(12),
      I1 => Rbus_out(12),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => LBus_out(12),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => \slv_reg4__0\(12),
      O => \s00_axi_rdata[12]_INST_0_i_11_n_0\
    );
\s00_axi_rdata[12]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[12]_INST_0_i_7_n_0\,
      I1 => \s00_axi_rdata[12]_INST_0_i_8_n_0\,
      O => \s00_axi_rdata[12]_INST_0_i_2_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[12]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => \axi_araddr_reg[3]_rep_n_0\,
      I1 => slv_reg15(12),
      I2 => \axi_araddr_reg[2]_rep_n_0\,
      I3 => sel0(2),
      I4 => \s00_axi_rdata[12]_INST_0_i_9_n_0\,
      O => \s00_axi_rdata[12]_INST_0_i_3_n_0\
    );
\s00_axi_rdata[12]_INST_0_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[12]_INST_0_i_10_n_0\,
      I1 => \s00_axi_rdata[12]_INST_0_i_11_n_0\,
      O => \s00_axi_rdata[12]_INST_0_i_4_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[12]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg27(12),
      I1 => slv_reg26(12),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => slv_reg25(12),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg24(12),
      O => \s00_axi_rdata[12]_INST_0_i_5_n_0\
    );
\s00_axi_rdata[12]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg31(12),
      I1 => slv_reg30(12),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => slv_reg29(12),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg28(12),
      O => \s00_axi_rdata[12]_INST_0_i_6_n_0\
    );
\s00_axi_rdata[12]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg19(12),
      I1 => slv_reg18(12),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => slv_reg17(12),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg16(12),
      O => \s00_axi_rdata[12]_INST_0_i_7_n_0\
    );
\s00_axi_rdata[12]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg23(12),
      I1 => slv_reg22(12),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => slv_reg21(12),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg20(12),
      O => \s00_axi_rdata[12]_INST_0_i_8_n_0\
    );
\s00_axi_rdata[12]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg11__0\(12),
      I1 => slv_reg10(12),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => slv_reg9(12),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg8(12),
      O => \s00_axi_rdata[12]_INST_0_i_9_n_0\
    );
\s00_axi_rdata[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[13]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[13]_INST_0_i_2_n_0\,
      I2 => sel0(4),
      I3 => \s00_axi_rdata[13]_INST_0_i_3_n_0\,
      I4 => sel0(3),
      I5 => \s00_axi_rdata[13]_INST_0_i_4_n_0\,
      O => s00_axi_rdata(13)
    );
\s00_axi_rdata[13]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[13]_INST_0_i_5_n_0\,
      I1 => \s00_axi_rdata[13]_INST_0_i_6_n_0\,
      O => \s00_axi_rdata[13]_INST_0_i_1_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[13]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(13),
      I1 => slv_reg2(13),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => \axi_araddr_reg[2]_rep_n_0\,
      I4 => slv_reg1(13),
      O => \s00_axi_rdata[13]_INST_0_i_10_n_0\
    );
\s00_axi_rdata[13]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg7__0\(13),
      I1 => Rbus_out(13),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => LBus_out(13),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => \slv_reg4__0\(13),
      O => \s00_axi_rdata[13]_INST_0_i_11_n_0\
    );
\s00_axi_rdata[13]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[13]_INST_0_i_7_n_0\,
      I1 => \s00_axi_rdata[13]_INST_0_i_8_n_0\,
      O => \s00_axi_rdata[13]_INST_0_i_2_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[13]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => \axi_araddr_reg[3]_rep_n_0\,
      I1 => slv_reg15(13),
      I2 => \axi_araddr_reg[2]_rep_n_0\,
      I3 => sel0(2),
      I4 => \s00_axi_rdata[13]_INST_0_i_9_n_0\,
      O => \s00_axi_rdata[13]_INST_0_i_3_n_0\
    );
\s00_axi_rdata[13]_INST_0_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[13]_INST_0_i_10_n_0\,
      I1 => \s00_axi_rdata[13]_INST_0_i_11_n_0\,
      O => \s00_axi_rdata[13]_INST_0_i_4_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[13]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg27(13),
      I1 => slv_reg26(13),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => slv_reg25(13),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg24(13),
      O => \s00_axi_rdata[13]_INST_0_i_5_n_0\
    );
\s00_axi_rdata[13]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg31(13),
      I1 => slv_reg30(13),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => slv_reg29(13),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg28(13),
      O => \s00_axi_rdata[13]_INST_0_i_6_n_0\
    );
\s00_axi_rdata[13]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg19(13),
      I1 => slv_reg18(13),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => slv_reg17(13),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg16(13),
      O => \s00_axi_rdata[13]_INST_0_i_7_n_0\
    );
\s00_axi_rdata[13]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg23(13),
      I1 => slv_reg22(13),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => slv_reg21(13),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg20(13),
      O => \s00_axi_rdata[13]_INST_0_i_8_n_0\
    );
\s00_axi_rdata[13]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg11__0\(13),
      I1 => slv_reg10(13),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => slv_reg9(13),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg8(13),
      O => \s00_axi_rdata[13]_INST_0_i_9_n_0\
    );
\s00_axi_rdata[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[14]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[14]_INST_0_i_2_n_0\,
      I2 => sel0(4),
      I3 => \s00_axi_rdata[14]_INST_0_i_3_n_0\,
      I4 => sel0(3),
      I5 => \s00_axi_rdata[14]_INST_0_i_4_n_0\,
      O => s00_axi_rdata(14)
    );
\s00_axi_rdata[14]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[14]_INST_0_i_5_n_0\,
      I1 => \s00_axi_rdata[14]_INST_0_i_6_n_0\,
      O => \s00_axi_rdata[14]_INST_0_i_1_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[14]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(14),
      I1 => slv_reg2(14),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => \axi_araddr_reg[2]_rep_n_0\,
      I4 => slv_reg1(14),
      O => \s00_axi_rdata[14]_INST_0_i_10_n_0\
    );
\s00_axi_rdata[14]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg7__0\(14),
      I1 => Rbus_out(14),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => LBus_out(14),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => \slv_reg4__0\(14),
      O => \s00_axi_rdata[14]_INST_0_i_11_n_0\
    );
\s00_axi_rdata[14]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[14]_INST_0_i_7_n_0\,
      I1 => \s00_axi_rdata[14]_INST_0_i_8_n_0\,
      O => \s00_axi_rdata[14]_INST_0_i_2_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[14]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => \axi_araddr_reg[3]_rep_n_0\,
      I1 => slv_reg15(14),
      I2 => \axi_araddr_reg[2]_rep_n_0\,
      I3 => sel0(2),
      I4 => \s00_axi_rdata[14]_INST_0_i_9_n_0\,
      O => \s00_axi_rdata[14]_INST_0_i_3_n_0\
    );
\s00_axi_rdata[14]_INST_0_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[14]_INST_0_i_10_n_0\,
      I1 => \s00_axi_rdata[14]_INST_0_i_11_n_0\,
      O => \s00_axi_rdata[14]_INST_0_i_4_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[14]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg27(14),
      I1 => slv_reg26(14),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => slv_reg25(14),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg24(14),
      O => \s00_axi_rdata[14]_INST_0_i_5_n_0\
    );
\s00_axi_rdata[14]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg31(14),
      I1 => slv_reg30(14),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => slv_reg29(14),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg28(14),
      O => \s00_axi_rdata[14]_INST_0_i_6_n_0\
    );
\s00_axi_rdata[14]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg19(14),
      I1 => slv_reg18(14),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => slv_reg17(14),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg16(14),
      O => \s00_axi_rdata[14]_INST_0_i_7_n_0\
    );
\s00_axi_rdata[14]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg23(14),
      I1 => slv_reg22(14),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => slv_reg21(14),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg20(14),
      O => \s00_axi_rdata[14]_INST_0_i_8_n_0\
    );
\s00_axi_rdata[14]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg11__0\(14),
      I1 => slv_reg10(14),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => slv_reg9(14),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg8(14),
      O => \s00_axi_rdata[14]_INST_0_i_9_n_0\
    );
\s00_axi_rdata[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[15]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[15]_INST_0_i_2_n_0\,
      I2 => sel0(4),
      I3 => \s00_axi_rdata[15]_INST_0_i_3_n_0\,
      I4 => sel0(3),
      I5 => \s00_axi_rdata[15]_INST_0_i_4_n_0\,
      O => s00_axi_rdata(15)
    );
\s00_axi_rdata[15]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[15]_INST_0_i_5_n_0\,
      I1 => \s00_axi_rdata[15]_INST_0_i_6_n_0\,
      O => \s00_axi_rdata[15]_INST_0_i_1_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[15]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(15),
      I1 => slv_reg2(15),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => \axi_araddr_reg[2]_rep_n_0\,
      I4 => slv_reg1(15),
      O => \s00_axi_rdata[15]_INST_0_i_10_n_0\
    );
\s00_axi_rdata[15]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg7__0\(15),
      I1 => Rbus_out(15),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => LBus_out(15),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => \slv_reg4__0\(15),
      O => \s00_axi_rdata[15]_INST_0_i_11_n_0\
    );
\s00_axi_rdata[15]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[15]_INST_0_i_7_n_0\,
      I1 => \s00_axi_rdata[15]_INST_0_i_8_n_0\,
      O => \s00_axi_rdata[15]_INST_0_i_2_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[15]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => \axi_araddr_reg[3]_rep_n_0\,
      I1 => slv_reg15(15),
      I2 => \axi_araddr_reg[2]_rep_n_0\,
      I3 => sel0(2),
      I4 => \s00_axi_rdata[15]_INST_0_i_9_n_0\,
      O => \s00_axi_rdata[15]_INST_0_i_3_n_0\
    );
\s00_axi_rdata[15]_INST_0_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[15]_INST_0_i_10_n_0\,
      I1 => \s00_axi_rdata[15]_INST_0_i_11_n_0\,
      O => \s00_axi_rdata[15]_INST_0_i_4_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[15]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg27(15),
      I1 => slv_reg26(15),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => slv_reg25(15),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg24(15),
      O => \s00_axi_rdata[15]_INST_0_i_5_n_0\
    );
\s00_axi_rdata[15]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg31(15),
      I1 => slv_reg30(15),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => slv_reg29(15),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg28(15),
      O => \s00_axi_rdata[15]_INST_0_i_6_n_0\
    );
\s00_axi_rdata[15]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg19(15),
      I1 => slv_reg18(15),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => slv_reg17(15),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg16(15),
      O => \s00_axi_rdata[15]_INST_0_i_7_n_0\
    );
\s00_axi_rdata[15]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg23(15),
      I1 => slv_reg22(15),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => slv_reg21(15),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg20(15),
      O => \s00_axi_rdata[15]_INST_0_i_8_n_0\
    );
\s00_axi_rdata[15]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg11__0\(15),
      I1 => slv_reg10(15),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => slv_reg9(15),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg8(15),
      O => \s00_axi_rdata[15]_INST_0_i_9_n_0\
    );
\s00_axi_rdata[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[16]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[16]_INST_0_i_2_n_0\,
      I2 => sel0(4),
      I3 => \s00_axi_rdata[16]_INST_0_i_3_n_0\,
      I4 => sel0(3),
      I5 => \s00_axi_rdata[16]_INST_0_i_4_n_0\,
      O => s00_axi_rdata(16)
    );
\s00_axi_rdata[16]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[16]_INST_0_i_5_n_0\,
      I1 => \s00_axi_rdata[16]_INST_0_i_6_n_0\,
      O => \s00_axi_rdata[16]_INST_0_i_1_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[16]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(16),
      I1 => slv_reg2(16),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg1(16),
      O => \s00_axi_rdata[16]_INST_0_i_10_n_0\
    );
\s00_axi_rdata[16]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[16]_INST_0_i_7_n_0\,
      I1 => \s00_axi_rdata[16]_INST_0_i_8_n_0\,
      O => \s00_axi_rdata[16]_INST_0_i_2_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[16]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => sel0(1),
      I1 => slv_reg15(16),
      I2 => sel0(0),
      I3 => sel0(2),
      I4 => \s00_axi_rdata[16]_INST_0_i_9_n_0\,
      O => \s00_axi_rdata[16]_INST_0_i_3_n_0\
    );
\s00_axi_rdata[16]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8830FFFF88300000"
    )
        port map (
      I0 => \slv_reg7__0\(16),
      I1 => sel0(1),
      I2 => \slv_reg4__0\(16),
      I3 => sel0(0),
      I4 => sel0(2),
      I5 => \s00_axi_rdata[16]_INST_0_i_10_n_0\,
      O => \s00_axi_rdata[16]_INST_0_i_4_n_0\
    );
\s00_axi_rdata[16]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg27(16),
      I1 => slv_reg26(16),
      I2 => sel0(1),
      I3 => slv_reg25(16),
      I4 => sel0(0),
      I5 => slv_reg24(16),
      O => \s00_axi_rdata[16]_INST_0_i_5_n_0\
    );
\s00_axi_rdata[16]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg31(16),
      I1 => slv_reg30(16),
      I2 => sel0(1),
      I3 => slv_reg29(16),
      I4 => sel0(0),
      I5 => slv_reg28(16),
      O => \s00_axi_rdata[16]_INST_0_i_6_n_0\
    );
\s00_axi_rdata[16]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg19(16),
      I1 => slv_reg18(16),
      I2 => sel0(1),
      I3 => slv_reg17(16),
      I4 => sel0(0),
      I5 => slv_reg16(16),
      O => \s00_axi_rdata[16]_INST_0_i_7_n_0\
    );
\s00_axi_rdata[16]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg23(16),
      I1 => slv_reg22(16),
      I2 => sel0(1),
      I3 => slv_reg21(16),
      I4 => sel0(0),
      I5 => slv_reg20(16),
      O => \s00_axi_rdata[16]_INST_0_i_8_n_0\
    );
\s00_axi_rdata[16]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg11__0\(16),
      I1 => slv_reg10(16),
      I2 => sel0(1),
      I3 => \slv_reg9__0\(16),
      I4 => sel0(0),
      I5 => \slv_reg8__0\(16),
      O => \s00_axi_rdata[16]_INST_0_i_9_n_0\
    );
\s00_axi_rdata[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[17]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[17]_INST_0_i_2_n_0\,
      I2 => sel0(4),
      I3 => \s00_axi_rdata[17]_INST_0_i_3_n_0\,
      I4 => sel0(3),
      I5 => \s00_axi_rdata[17]_INST_0_i_4_n_0\,
      O => s00_axi_rdata(17)
    );
\s00_axi_rdata[17]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[17]_INST_0_i_5_n_0\,
      I1 => \s00_axi_rdata[17]_INST_0_i_6_n_0\,
      O => \s00_axi_rdata[17]_INST_0_i_1_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[17]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(17),
      I1 => slv_reg2(17),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg1(17),
      O => \s00_axi_rdata[17]_INST_0_i_10_n_0\
    );
\s00_axi_rdata[17]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[17]_INST_0_i_7_n_0\,
      I1 => \s00_axi_rdata[17]_INST_0_i_8_n_0\,
      O => \s00_axi_rdata[17]_INST_0_i_2_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[17]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => sel0(1),
      I1 => slv_reg15(17),
      I2 => sel0(0),
      I3 => sel0(2),
      I4 => \s00_axi_rdata[17]_INST_0_i_9_n_0\,
      O => \s00_axi_rdata[17]_INST_0_i_3_n_0\
    );
\s00_axi_rdata[17]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8830FFFF88300000"
    )
        port map (
      I0 => \slv_reg7__0\(17),
      I1 => sel0(1),
      I2 => \slv_reg4__0\(17),
      I3 => sel0(0),
      I4 => sel0(2),
      I5 => \s00_axi_rdata[17]_INST_0_i_10_n_0\,
      O => \s00_axi_rdata[17]_INST_0_i_4_n_0\
    );
\s00_axi_rdata[17]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg27(17),
      I1 => slv_reg26(17),
      I2 => sel0(1),
      I3 => slv_reg25(17),
      I4 => sel0(0),
      I5 => slv_reg24(17),
      O => \s00_axi_rdata[17]_INST_0_i_5_n_0\
    );
\s00_axi_rdata[17]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg31(17),
      I1 => slv_reg30(17),
      I2 => sel0(1),
      I3 => slv_reg29(17),
      I4 => sel0(0),
      I5 => slv_reg28(17),
      O => \s00_axi_rdata[17]_INST_0_i_6_n_0\
    );
\s00_axi_rdata[17]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg19(17),
      I1 => slv_reg18(17),
      I2 => sel0(1),
      I3 => slv_reg17(17),
      I4 => sel0(0),
      I5 => slv_reg16(17),
      O => \s00_axi_rdata[17]_INST_0_i_7_n_0\
    );
\s00_axi_rdata[17]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg23(17),
      I1 => slv_reg22(17),
      I2 => sel0(1),
      I3 => slv_reg21(17),
      I4 => sel0(0),
      I5 => slv_reg20(17),
      O => \s00_axi_rdata[17]_INST_0_i_8_n_0\
    );
\s00_axi_rdata[17]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg11__0\(17),
      I1 => slv_reg10(17),
      I2 => sel0(1),
      I3 => \slv_reg9__0\(17),
      I4 => sel0(0),
      I5 => \slv_reg8__0\(17),
      O => \s00_axi_rdata[17]_INST_0_i_9_n_0\
    );
\s00_axi_rdata[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[18]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[18]_INST_0_i_2_n_0\,
      I2 => sel0(4),
      I3 => \s00_axi_rdata[18]_INST_0_i_3_n_0\,
      I4 => sel0(3),
      I5 => \s00_axi_rdata[18]_INST_0_i_4_n_0\,
      O => s00_axi_rdata(18)
    );
\s00_axi_rdata[18]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[18]_INST_0_i_5_n_0\,
      I1 => \s00_axi_rdata[18]_INST_0_i_6_n_0\,
      O => \s00_axi_rdata[18]_INST_0_i_1_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[18]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(18),
      I1 => slv_reg2(18),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg1(18),
      O => \s00_axi_rdata[18]_INST_0_i_10_n_0\
    );
\s00_axi_rdata[18]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[18]_INST_0_i_7_n_0\,
      I1 => \s00_axi_rdata[18]_INST_0_i_8_n_0\,
      O => \s00_axi_rdata[18]_INST_0_i_2_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[18]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => sel0(1),
      I1 => slv_reg15(18),
      I2 => sel0(0),
      I3 => sel0(2),
      I4 => \s00_axi_rdata[18]_INST_0_i_9_n_0\,
      O => \s00_axi_rdata[18]_INST_0_i_3_n_0\
    );
\s00_axi_rdata[18]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8830FFFF88300000"
    )
        port map (
      I0 => \slv_reg7__0\(18),
      I1 => sel0(1),
      I2 => \slv_reg4__0\(18),
      I3 => sel0(0),
      I4 => sel0(2),
      I5 => \s00_axi_rdata[18]_INST_0_i_10_n_0\,
      O => \s00_axi_rdata[18]_INST_0_i_4_n_0\
    );
\s00_axi_rdata[18]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg27(18),
      I1 => slv_reg26(18),
      I2 => sel0(1),
      I3 => slv_reg25(18),
      I4 => sel0(0),
      I5 => slv_reg24(18),
      O => \s00_axi_rdata[18]_INST_0_i_5_n_0\
    );
\s00_axi_rdata[18]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg31(18),
      I1 => slv_reg30(18),
      I2 => sel0(1),
      I3 => slv_reg29(18),
      I4 => sel0(0),
      I5 => slv_reg28(18),
      O => \s00_axi_rdata[18]_INST_0_i_6_n_0\
    );
\s00_axi_rdata[18]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg19(18),
      I1 => slv_reg18(18),
      I2 => sel0(1),
      I3 => slv_reg17(18),
      I4 => sel0(0),
      I5 => slv_reg16(18),
      O => \s00_axi_rdata[18]_INST_0_i_7_n_0\
    );
\s00_axi_rdata[18]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg23(18),
      I1 => slv_reg22(18),
      I2 => sel0(1),
      I3 => slv_reg21(18),
      I4 => sel0(0),
      I5 => slv_reg20(18),
      O => \s00_axi_rdata[18]_INST_0_i_8_n_0\
    );
\s00_axi_rdata[18]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg11__0\(18),
      I1 => slv_reg10(18),
      I2 => sel0(1),
      I3 => \slv_reg9__0\(18),
      I4 => sel0(0),
      I5 => \slv_reg8__0\(18),
      O => \s00_axi_rdata[18]_INST_0_i_9_n_0\
    );
\s00_axi_rdata[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[19]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[19]_INST_0_i_2_n_0\,
      I2 => sel0(4),
      I3 => \s00_axi_rdata[19]_INST_0_i_3_n_0\,
      I4 => sel0(3),
      I5 => \s00_axi_rdata[19]_INST_0_i_4_n_0\,
      O => s00_axi_rdata(19)
    );
\s00_axi_rdata[19]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[19]_INST_0_i_5_n_0\,
      I1 => \s00_axi_rdata[19]_INST_0_i_6_n_0\,
      O => \s00_axi_rdata[19]_INST_0_i_1_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[19]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(19),
      I1 => slv_reg2(19),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg1(19),
      O => \s00_axi_rdata[19]_INST_0_i_10_n_0\
    );
\s00_axi_rdata[19]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[19]_INST_0_i_7_n_0\,
      I1 => \s00_axi_rdata[19]_INST_0_i_8_n_0\,
      O => \s00_axi_rdata[19]_INST_0_i_2_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[19]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => sel0(1),
      I1 => slv_reg15(19),
      I2 => sel0(0),
      I3 => sel0(2),
      I4 => \s00_axi_rdata[19]_INST_0_i_9_n_0\,
      O => \s00_axi_rdata[19]_INST_0_i_3_n_0\
    );
\s00_axi_rdata[19]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8830FFFF88300000"
    )
        port map (
      I0 => \slv_reg7__0\(19),
      I1 => sel0(1),
      I2 => \slv_reg4__0\(19),
      I3 => sel0(0),
      I4 => sel0(2),
      I5 => \s00_axi_rdata[19]_INST_0_i_10_n_0\,
      O => \s00_axi_rdata[19]_INST_0_i_4_n_0\
    );
\s00_axi_rdata[19]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg27(19),
      I1 => slv_reg26(19),
      I2 => sel0(1),
      I3 => slv_reg25(19),
      I4 => sel0(0),
      I5 => slv_reg24(19),
      O => \s00_axi_rdata[19]_INST_0_i_5_n_0\
    );
\s00_axi_rdata[19]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg31(19),
      I1 => slv_reg30(19),
      I2 => sel0(1),
      I3 => slv_reg29(19),
      I4 => sel0(0),
      I5 => slv_reg28(19),
      O => \s00_axi_rdata[19]_INST_0_i_6_n_0\
    );
\s00_axi_rdata[19]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg19(19),
      I1 => slv_reg18(19),
      I2 => sel0(1),
      I3 => slv_reg17(19),
      I4 => sel0(0),
      I5 => slv_reg16(19),
      O => \s00_axi_rdata[19]_INST_0_i_7_n_0\
    );
\s00_axi_rdata[19]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg23(19),
      I1 => slv_reg22(19),
      I2 => sel0(1),
      I3 => slv_reg21(19),
      I4 => sel0(0),
      I5 => slv_reg20(19),
      O => \s00_axi_rdata[19]_INST_0_i_8_n_0\
    );
\s00_axi_rdata[19]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg11__0\(19),
      I1 => slv_reg10(19),
      I2 => sel0(1),
      I3 => \slv_reg9__0\(19),
      I4 => sel0(0),
      I5 => \slv_reg8__0\(19),
      O => \s00_axi_rdata[19]_INST_0_i_9_n_0\
    );
\s00_axi_rdata[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[1]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[1]_INST_0_i_2_n_0\,
      I2 => sel0(4),
      I3 => \s00_axi_rdata[1]_INST_0_i_3_n_0\,
      I4 => sel0(3),
      I5 => \s00_axi_rdata[1]_INST_0_i_4_n_0\,
      O => s00_axi_rdata(1)
    );
\s00_axi_rdata[1]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[1]_INST_0_i_5_n_0\,
      I1 => \s00_axi_rdata[1]_INST_0_i_6_n_0\,
      O => \s00_axi_rdata[1]_INST_0_i_1_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[1]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(1),
      I1 => slv_reg2(1),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => \axi_araddr_reg[2]_rep_n_0\,
      I4 => slv_reg1(1),
      O => \s00_axi_rdata[1]_INST_0_i_10_n_0\
    );
\s00_axi_rdata[1]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg7__0\(1),
      I1 => Rbus_out(1),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => LBus_out(1),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg4(1),
      O => \s00_axi_rdata[1]_INST_0_i_11_n_0\
    );
\s00_axi_rdata[1]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[1]_INST_0_i_7_n_0\,
      I1 => \s00_axi_rdata[1]_INST_0_i_8_n_0\,
      O => \s00_axi_rdata[1]_INST_0_i_2_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[1]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => \axi_araddr_reg[3]_rep_n_0\,
      I1 => slv_reg15(1),
      I2 => \axi_araddr_reg[2]_rep_n_0\,
      I3 => sel0(2),
      I4 => \s00_axi_rdata[1]_INST_0_i_9_n_0\,
      O => \s00_axi_rdata[1]_INST_0_i_3_n_0\
    );
\s00_axi_rdata[1]_INST_0_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[1]_INST_0_i_10_n_0\,
      I1 => \s00_axi_rdata[1]_INST_0_i_11_n_0\,
      O => \s00_axi_rdata[1]_INST_0_i_4_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[1]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg27(1),
      I1 => slv_reg26(1),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => slv_reg25(1),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg24(1),
      O => \s00_axi_rdata[1]_INST_0_i_5_n_0\
    );
\s00_axi_rdata[1]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg31(1),
      I1 => slv_reg30(1),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => slv_reg29(1),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg28(1),
      O => \s00_axi_rdata[1]_INST_0_i_6_n_0\
    );
\s00_axi_rdata[1]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg19(1),
      I1 => slv_reg18(1),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => slv_reg17(1),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg16(1),
      O => \s00_axi_rdata[1]_INST_0_i_7_n_0\
    );
\s00_axi_rdata[1]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg23(1),
      I1 => slv_reg22(1),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => slv_reg21(1),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg20(1),
      O => \s00_axi_rdata[1]_INST_0_i_8_n_0\
    );
\s00_axi_rdata[1]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg11__0\(1),
      I1 => slv_reg10(1),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => slv_reg9(1),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg8(1),
      O => \s00_axi_rdata[1]_INST_0_i_9_n_0\
    );
\s00_axi_rdata[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[20]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[20]_INST_0_i_2_n_0\,
      I2 => sel0(4),
      I3 => \s00_axi_rdata[20]_INST_0_i_3_n_0\,
      I4 => sel0(3),
      I5 => \s00_axi_rdata[20]_INST_0_i_4_n_0\,
      O => s00_axi_rdata(20)
    );
\s00_axi_rdata[20]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[20]_INST_0_i_5_n_0\,
      I1 => \s00_axi_rdata[20]_INST_0_i_6_n_0\,
      O => \s00_axi_rdata[20]_INST_0_i_1_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[20]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(20),
      I1 => slv_reg2(20),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg1(20),
      O => \s00_axi_rdata[20]_INST_0_i_10_n_0\
    );
\s00_axi_rdata[20]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[20]_INST_0_i_7_n_0\,
      I1 => \s00_axi_rdata[20]_INST_0_i_8_n_0\,
      O => \s00_axi_rdata[20]_INST_0_i_2_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[20]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => sel0(1),
      I1 => slv_reg15(20),
      I2 => sel0(0),
      I3 => sel0(2),
      I4 => \s00_axi_rdata[20]_INST_0_i_9_n_0\,
      O => \s00_axi_rdata[20]_INST_0_i_3_n_0\
    );
\s00_axi_rdata[20]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8830FFFF88300000"
    )
        port map (
      I0 => \slv_reg7__0\(20),
      I1 => sel0(1),
      I2 => \slv_reg4__0\(20),
      I3 => sel0(0),
      I4 => sel0(2),
      I5 => \s00_axi_rdata[20]_INST_0_i_10_n_0\,
      O => \s00_axi_rdata[20]_INST_0_i_4_n_0\
    );
\s00_axi_rdata[20]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg27(20),
      I1 => slv_reg26(20),
      I2 => sel0(1),
      I3 => slv_reg25(20),
      I4 => sel0(0),
      I5 => slv_reg24(20),
      O => \s00_axi_rdata[20]_INST_0_i_5_n_0\
    );
\s00_axi_rdata[20]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg31(20),
      I1 => slv_reg30(20),
      I2 => sel0(1),
      I3 => slv_reg29(20),
      I4 => sel0(0),
      I5 => slv_reg28(20),
      O => \s00_axi_rdata[20]_INST_0_i_6_n_0\
    );
\s00_axi_rdata[20]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg19(20),
      I1 => slv_reg18(20),
      I2 => sel0(1),
      I3 => slv_reg17(20),
      I4 => sel0(0),
      I5 => slv_reg16(20),
      O => \s00_axi_rdata[20]_INST_0_i_7_n_0\
    );
\s00_axi_rdata[20]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg23(20),
      I1 => slv_reg22(20),
      I2 => sel0(1),
      I3 => slv_reg21(20),
      I4 => sel0(0),
      I5 => slv_reg20(20),
      O => \s00_axi_rdata[20]_INST_0_i_8_n_0\
    );
\s00_axi_rdata[20]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg11__0\(20),
      I1 => slv_reg10(20),
      I2 => sel0(1),
      I3 => \slv_reg9__0\(20),
      I4 => sel0(0),
      I5 => \slv_reg8__0\(20),
      O => \s00_axi_rdata[20]_INST_0_i_9_n_0\
    );
\s00_axi_rdata[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[21]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[21]_INST_0_i_2_n_0\,
      I2 => sel0(4),
      I3 => \s00_axi_rdata[21]_INST_0_i_3_n_0\,
      I4 => sel0(3),
      I5 => \s00_axi_rdata[21]_INST_0_i_4_n_0\,
      O => s00_axi_rdata(21)
    );
\s00_axi_rdata[21]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[21]_INST_0_i_5_n_0\,
      I1 => \s00_axi_rdata[21]_INST_0_i_6_n_0\,
      O => \s00_axi_rdata[21]_INST_0_i_1_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[21]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(21),
      I1 => slv_reg2(21),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg1(21),
      O => \s00_axi_rdata[21]_INST_0_i_10_n_0\
    );
\s00_axi_rdata[21]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[21]_INST_0_i_7_n_0\,
      I1 => \s00_axi_rdata[21]_INST_0_i_8_n_0\,
      O => \s00_axi_rdata[21]_INST_0_i_2_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[21]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => sel0(1),
      I1 => slv_reg15(21),
      I2 => sel0(0),
      I3 => sel0(2),
      I4 => \s00_axi_rdata[21]_INST_0_i_9_n_0\,
      O => \s00_axi_rdata[21]_INST_0_i_3_n_0\
    );
\s00_axi_rdata[21]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8830FFFF88300000"
    )
        port map (
      I0 => \slv_reg7__0\(21),
      I1 => sel0(1),
      I2 => \slv_reg4__0\(21),
      I3 => sel0(0),
      I4 => sel0(2),
      I5 => \s00_axi_rdata[21]_INST_0_i_10_n_0\,
      O => \s00_axi_rdata[21]_INST_0_i_4_n_0\
    );
\s00_axi_rdata[21]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg27(21),
      I1 => slv_reg26(21),
      I2 => sel0(1),
      I3 => slv_reg25(21),
      I4 => sel0(0),
      I5 => slv_reg24(21),
      O => \s00_axi_rdata[21]_INST_0_i_5_n_0\
    );
\s00_axi_rdata[21]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg31(21),
      I1 => slv_reg30(21),
      I2 => sel0(1),
      I3 => slv_reg29(21),
      I4 => sel0(0),
      I5 => slv_reg28(21),
      O => \s00_axi_rdata[21]_INST_0_i_6_n_0\
    );
\s00_axi_rdata[21]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg19(21),
      I1 => slv_reg18(21),
      I2 => sel0(1),
      I3 => slv_reg17(21),
      I4 => sel0(0),
      I5 => slv_reg16(21),
      O => \s00_axi_rdata[21]_INST_0_i_7_n_0\
    );
\s00_axi_rdata[21]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg23(21),
      I1 => slv_reg22(21),
      I2 => sel0(1),
      I3 => slv_reg21(21),
      I4 => sel0(0),
      I5 => slv_reg20(21),
      O => \s00_axi_rdata[21]_INST_0_i_8_n_0\
    );
\s00_axi_rdata[21]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg11__0\(21),
      I1 => slv_reg10(21),
      I2 => sel0(1),
      I3 => \slv_reg9__0\(21),
      I4 => sel0(0),
      I5 => \slv_reg8__0\(21),
      O => \s00_axi_rdata[21]_INST_0_i_9_n_0\
    );
\s00_axi_rdata[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[22]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[22]_INST_0_i_2_n_0\,
      I2 => sel0(4),
      I3 => \s00_axi_rdata[22]_INST_0_i_3_n_0\,
      I4 => sel0(3),
      I5 => \s00_axi_rdata[22]_INST_0_i_4_n_0\,
      O => s00_axi_rdata(22)
    );
\s00_axi_rdata[22]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[22]_INST_0_i_5_n_0\,
      I1 => \s00_axi_rdata[22]_INST_0_i_6_n_0\,
      O => \s00_axi_rdata[22]_INST_0_i_1_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[22]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(22),
      I1 => slv_reg2(22),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg1(22),
      O => \s00_axi_rdata[22]_INST_0_i_10_n_0\
    );
\s00_axi_rdata[22]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[22]_INST_0_i_7_n_0\,
      I1 => \s00_axi_rdata[22]_INST_0_i_8_n_0\,
      O => \s00_axi_rdata[22]_INST_0_i_2_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[22]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => sel0(1),
      I1 => slv_reg15(22),
      I2 => sel0(0),
      I3 => sel0(2),
      I4 => \s00_axi_rdata[22]_INST_0_i_9_n_0\,
      O => \s00_axi_rdata[22]_INST_0_i_3_n_0\
    );
\s00_axi_rdata[22]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8830FFFF88300000"
    )
        port map (
      I0 => \slv_reg7__0\(22),
      I1 => sel0(1),
      I2 => \slv_reg4__0\(22),
      I3 => sel0(0),
      I4 => sel0(2),
      I5 => \s00_axi_rdata[22]_INST_0_i_10_n_0\,
      O => \s00_axi_rdata[22]_INST_0_i_4_n_0\
    );
\s00_axi_rdata[22]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg27(22),
      I1 => slv_reg26(22),
      I2 => sel0(1),
      I3 => slv_reg25(22),
      I4 => sel0(0),
      I5 => slv_reg24(22),
      O => \s00_axi_rdata[22]_INST_0_i_5_n_0\
    );
\s00_axi_rdata[22]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg31(22),
      I1 => slv_reg30(22),
      I2 => sel0(1),
      I3 => slv_reg29(22),
      I4 => sel0(0),
      I5 => slv_reg28(22),
      O => \s00_axi_rdata[22]_INST_0_i_6_n_0\
    );
\s00_axi_rdata[22]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg19(22),
      I1 => slv_reg18(22),
      I2 => sel0(1),
      I3 => slv_reg17(22),
      I4 => sel0(0),
      I5 => slv_reg16(22),
      O => \s00_axi_rdata[22]_INST_0_i_7_n_0\
    );
\s00_axi_rdata[22]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg23(22),
      I1 => slv_reg22(22),
      I2 => sel0(1),
      I3 => slv_reg21(22),
      I4 => sel0(0),
      I5 => slv_reg20(22),
      O => \s00_axi_rdata[22]_INST_0_i_8_n_0\
    );
\s00_axi_rdata[22]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg11__0\(22),
      I1 => slv_reg10(22),
      I2 => sel0(1),
      I3 => \slv_reg9__0\(22),
      I4 => sel0(0),
      I5 => \slv_reg8__0\(22),
      O => \s00_axi_rdata[22]_INST_0_i_9_n_0\
    );
\s00_axi_rdata[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[23]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[23]_INST_0_i_2_n_0\,
      I2 => sel0(4),
      I3 => \s00_axi_rdata[23]_INST_0_i_3_n_0\,
      I4 => sel0(3),
      I5 => \s00_axi_rdata[23]_INST_0_i_4_n_0\,
      O => s00_axi_rdata(23)
    );
\s00_axi_rdata[23]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[23]_INST_0_i_5_n_0\,
      I1 => \s00_axi_rdata[23]_INST_0_i_6_n_0\,
      O => \s00_axi_rdata[23]_INST_0_i_1_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[23]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(23),
      I1 => slv_reg2(23),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg1(23),
      O => \s00_axi_rdata[23]_INST_0_i_10_n_0\
    );
\s00_axi_rdata[23]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[23]_INST_0_i_7_n_0\,
      I1 => \s00_axi_rdata[23]_INST_0_i_8_n_0\,
      O => \s00_axi_rdata[23]_INST_0_i_2_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[23]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => sel0(1),
      I1 => slv_reg15(23),
      I2 => sel0(0),
      I3 => sel0(2),
      I4 => \s00_axi_rdata[23]_INST_0_i_9_n_0\,
      O => \s00_axi_rdata[23]_INST_0_i_3_n_0\
    );
\s00_axi_rdata[23]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8830FFFF88300000"
    )
        port map (
      I0 => \slv_reg7__0\(23),
      I1 => sel0(1),
      I2 => \slv_reg4__0\(23),
      I3 => sel0(0),
      I4 => sel0(2),
      I5 => \s00_axi_rdata[23]_INST_0_i_10_n_0\,
      O => \s00_axi_rdata[23]_INST_0_i_4_n_0\
    );
\s00_axi_rdata[23]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg27(23),
      I1 => slv_reg26(23),
      I2 => sel0(1),
      I3 => slv_reg25(23),
      I4 => sel0(0),
      I5 => slv_reg24(23),
      O => \s00_axi_rdata[23]_INST_0_i_5_n_0\
    );
\s00_axi_rdata[23]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg31(23),
      I1 => slv_reg30(23),
      I2 => sel0(1),
      I3 => slv_reg29(23),
      I4 => sel0(0),
      I5 => slv_reg28(23),
      O => \s00_axi_rdata[23]_INST_0_i_6_n_0\
    );
\s00_axi_rdata[23]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg19(23),
      I1 => slv_reg18(23),
      I2 => sel0(1),
      I3 => slv_reg17(23),
      I4 => sel0(0),
      I5 => slv_reg16(23),
      O => \s00_axi_rdata[23]_INST_0_i_7_n_0\
    );
\s00_axi_rdata[23]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg23(23),
      I1 => slv_reg22(23),
      I2 => sel0(1),
      I3 => slv_reg21(23),
      I4 => sel0(0),
      I5 => slv_reg20(23),
      O => \s00_axi_rdata[23]_INST_0_i_8_n_0\
    );
\s00_axi_rdata[23]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg11__0\(23),
      I1 => slv_reg10(23),
      I2 => sel0(1),
      I3 => \slv_reg9__0\(23),
      I4 => sel0(0),
      I5 => \slv_reg8__0\(23),
      O => \s00_axi_rdata[23]_INST_0_i_9_n_0\
    );
\s00_axi_rdata[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[24]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[24]_INST_0_i_2_n_0\,
      I2 => sel0(4),
      I3 => \s00_axi_rdata[24]_INST_0_i_3_n_0\,
      I4 => sel0(3),
      I5 => \s00_axi_rdata[24]_INST_0_i_4_n_0\,
      O => s00_axi_rdata(24)
    );
\s00_axi_rdata[24]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[24]_INST_0_i_5_n_0\,
      I1 => \s00_axi_rdata[24]_INST_0_i_6_n_0\,
      O => \s00_axi_rdata[24]_INST_0_i_1_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[24]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(24),
      I1 => slv_reg2(24),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg1(24),
      O => \s00_axi_rdata[24]_INST_0_i_10_n_0\
    );
\s00_axi_rdata[24]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[24]_INST_0_i_7_n_0\,
      I1 => \s00_axi_rdata[24]_INST_0_i_8_n_0\,
      O => \s00_axi_rdata[24]_INST_0_i_2_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[24]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => sel0(1),
      I1 => slv_reg15(24),
      I2 => sel0(0),
      I3 => sel0(2),
      I4 => \s00_axi_rdata[24]_INST_0_i_9_n_0\,
      O => \s00_axi_rdata[24]_INST_0_i_3_n_0\
    );
\s00_axi_rdata[24]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8830FFFF88300000"
    )
        port map (
      I0 => \slv_reg7__0\(24),
      I1 => sel0(1),
      I2 => \slv_reg4__0\(24),
      I3 => sel0(0),
      I4 => sel0(2),
      I5 => \s00_axi_rdata[24]_INST_0_i_10_n_0\,
      O => \s00_axi_rdata[24]_INST_0_i_4_n_0\
    );
\s00_axi_rdata[24]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg27(24),
      I1 => slv_reg26(24),
      I2 => sel0(1),
      I3 => slv_reg25(24),
      I4 => sel0(0),
      I5 => slv_reg24(24),
      O => \s00_axi_rdata[24]_INST_0_i_5_n_0\
    );
\s00_axi_rdata[24]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg31(24),
      I1 => slv_reg30(24),
      I2 => sel0(1),
      I3 => slv_reg29(24),
      I4 => sel0(0),
      I5 => slv_reg28(24),
      O => \s00_axi_rdata[24]_INST_0_i_6_n_0\
    );
\s00_axi_rdata[24]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg19(24),
      I1 => slv_reg18(24),
      I2 => sel0(1),
      I3 => slv_reg17(24),
      I4 => sel0(0),
      I5 => slv_reg16(24),
      O => \s00_axi_rdata[24]_INST_0_i_7_n_0\
    );
\s00_axi_rdata[24]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg23(24),
      I1 => slv_reg22(24),
      I2 => sel0(1),
      I3 => slv_reg21(24),
      I4 => sel0(0),
      I5 => slv_reg20(24),
      O => \s00_axi_rdata[24]_INST_0_i_8_n_0\
    );
\s00_axi_rdata[24]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg11__0\(24),
      I1 => slv_reg10(24),
      I2 => sel0(1),
      I3 => \slv_reg9__0\(24),
      I4 => sel0(0),
      I5 => \slv_reg8__0\(24),
      O => \s00_axi_rdata[24]_INST_0_i_9_n_0\
    );
\s00_axi_rdata[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[25]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[25]_INST_0_i_2_n_0\,
      I2 => sel0(4),
      I3 => \s00_axi_rdata[25]_INST_0_i_3_n_0\,
      I4 => sel0(3),
      I5 => \s00_axi_rdata[25]_INST_0_i_4_n_0\,
      O => s00_axi_rdata(25)
    );
\s00_axi_rdata[25]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[25]_INST_0_i_5_n_0\,
      I1 => \s00_axi_rdata[25]_INST_0_i_6_n_0\,
      O => \s00_axi_rdata[25]_INST_0_i_1_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[25]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(25),
      I1 => slv_reg2(25),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg1(25),
      O => \s00_axi_rdata[25]_INST_0_i_10_n_0\
    );
\s00_axi_rdata[25]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[25]_INST_0_i_7_n_0\,
      I1 => \s00_axi_rdata[25]_INST_0_i_8_n_0\,
      O => \s00_axi_rdata[25]_INST_0_i_2_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[25]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => sel0(1),
      I1 => slv_reg15(25),
      I2 => sel0(0),
      I3 => sel0(2),
      I4 => \s00_axi_rdata[25]_INST_0_i_9_n_0\,
      O => \s00_axi_rdata[25]_INST_0_i_3_n_0\
    );
\s00_axi_rdata[25]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8830FFFF88300000"
    )
        port map (
      I0 => \slv_reg7__0\(25),
      I1 => sel0(1),
      I2 => \slv_reg4__0\(25),
      I3 => sel0(0),
      I4 => sel0(2),
      I5 => \s00_axi_rdata[25]_INST_0_i_10_n_0\,
      O => \s00_axi_rdata[25]_INST_0_i_4_n_0\
    );
\s00_axi_rdata[25]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg27(25),
      I1 => slv_reg26(25),
      I2 => sel0(1),
      I3 => slv_reg25(25),
      I4 => sel0(0),
      I5 => slv_reg24(25),
      O => \s00_axi_rdata[25]_INST_0_i_5_n_0\
    );
\s00_axi_rdata[25]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg31(25),
      I1 => slv_reg30(25),
      I2 => sel0(1),
      I3 => slv_reg29(25),
      I4 => sel0(0),
      I5 => slv_reg28(25),
      O => \s00_axi_rdata[25]_INST_0_i_6_n_0\
    );
\s00_axi_rdata[25]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg19(25),
      I1 => slv_reg18(25),
      I2 => sel0(1),
      I3 => slv_reg17(25),
      I4 => sel0(0),
      I5 => slv_reg16(25),
      O => \s00_axi_rdata[25]_INST_0_i_7_n_0\
    );
\s00_axi_rdata[25]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg23(25),
      I1 => slv_reg22(25),
      I2 => sel0(1),
      I3 => slv_reg21(25),
      I4 => sel0(0),
      I5 => slv_reg20(25),
      O => \s00_axi_rdata[25]_INST_0_i_8_n_0\
    );
\s00_axi_rdata[25]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg11__0\(25),
      I1 => slv_reg10(25),
      I2 => sel0(1),
      I3 => \slv_reg9__0\(25),
      I4 => sel0(0),
      I5 => \slv_reg8__0\(25),
      O => \s00_axi_rdata[25]_INST_0_i_9_n_0\
    );
\s00_axi_rdata[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[26]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[26]_INST_0_i_2_n_0\,
      I2 => sel0(4),
      I3 => \s00_axi_rdata[26]_INST_0_i_3_n_0\,
      I4 => sel0(3),
      I5 => \s00_axi_rdata[26]_INST_0_i_4_n_0\,
      O => s00_axi_rdata(26)
    );
\s00_axi_rdata[26]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[26]_INST_0_i_5_n_0\,
      I1 => \s00_axi_rdata[26]_INST_0_i_6_n_0\,
      O => \s00_axi_rdata[26]_INST_0_i_1_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[26]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(26),
      I1 => slv_reg2(26),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg1(26),
      O => \s00_axi_rdata[26]_INST_0_i_10_n_0\
    );
\s00_axi_rdata[26]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[26]_INST_0_i_7_n_0\,
      I1 => \s00_axi_rdata[26]_INST_0_i_8_n_0\,
      O => \s00_axi_rdata[26]_INST_0_i_2_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[26]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => sel0(1),
      I1 => slv_reg15(26),
      I2 => sel0(0),
      I3 => sel0(2),
      I4 => \s00_axi_rdata[26]_INST_0_i_9_n_0\,
      O => \s00_axi_rdata[26]_INST_0_i_3_n_0\
    );
\s00_axi_rdata[26]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8830FFFF88300000"
    )
        port map (
      I0 => \slv_reg7__0\(26),
      I1 => sel0(1),
      I2 => \slv_reg4__0\(26),
      I3 => sel0(0),
      I4 => sel0(2),
      I5 => \s00_axi_rdata[26]_INST_0_i_10_n_0\,
      O => \s00_axi_rdata[26]_INST_0_i_4_n_0\
    );
\s00_axi_rdata[26]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg27(26),
      I1 => slv_reg26(26),
      I2 => sel0(1),
      I3 => slv_reg25(26),
      I4 => sel0(0),
      I5 => slv_reg24(26),
      O => \s00_axi_rdata[26]_INST_0_i_5_n_0\
    );
\s00_axi_rdata[26]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg31(26),
      I1 => slv_reg30(26),
      I2 => sel0(1),
      I3 => slv_reg29(26),
      I4 => sel0(0),
      I5 => slv_reg28(26),
      O => \s00_axi_rdata[26]_INST_0_i_6_n_0\
    );
\s00_axi_rdata[26]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg19(26),
      I1 => slv_reg18(26),
      I2 => sel0(1),
      I3 => slv_reg17(26),
      I4 => sel0(0),
      I5 => slv_reg16(26),
      O => \s00_axi_rdata[26]_INST_0_i_7_n_0\
    );
\s00_axi_rdata[26]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg23(26),
      I1 => slv_reg22(26),
      I2 => sel0(1),
      I3 => slv_reg21(26),
      I4 => sel0(0),
      I5 => slv_reg20(26),
      O => \s00_axi_rdata[26]_INST_0_i_8_n_0\
    );
\s00_axi_rdata[26]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg11__0\(26),
      I1 => slv_reg10(26),
      I2 => sel0(1),
      I3 => \slv_reg9__0\(26),
      I4 => sel0(0),
      I5 => \slv_reg8__0\(26),
      O => \s00_axi_rdata[26]_INST_0_i_9_n_0\
    );
\s00_axi_rdata[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[27]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[27]_INST_0_i_2_n_0\,
      I2 => sel0(4),
      I3 => \s00_axi_rdata[27]_INST_0_i_3_n_0\,
      I4 => sel0(3),
      I5 => \s00_axi_rdata[27]_INST_0_i_4_n_0\,
      O => s00_axi_rdata(27)
    );
\s00_axi_rdata[27]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[27]_INST_0_i_5_n_0\,
      I1 => \s00_axi_rdata[27]_INST_0_i_6_n_0\,
      O => \s00_axi_rdata[27]_INST_0_i_1_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[27]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(27),
      I1 => slv_reg2(27),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg1(27),
      O => \s00_axi_rdata[27]_INST_0_i_10_n_0\
    );
\s00_axi_rdata[27]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[27]_INST_0_i_7_n_0\,
      I1 => \s00_axi_rdata[27]_INST_0_i_8_n_0\,
      O => \s00_axi_rdata[27]_INST_0_i_2_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[27]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => sel0(1),
      I1 => slv_reg15(27),
      I2 => sel0(0),
      I3 => sel0(2),
      I4 => \s00_axi_rdata[27]_INST_0_i_9_n_0\,
      O => \s00_axi_rdata[27]_INST_0_i_3_n_0\
    );
\s00_axi_rdata[27]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8830FFFF88300000"
    )
        port map (
      I0 => \slv_reg7__0\(27),
      I1 => sel0(1),
      I2 => \slv_reg4__0\(27),
      I3 => sel0(0),
      I4 => sel0(2),
      I5 => \s00_axi_rdata[27]_INST_0_i_10_n_0\,
      O => \s00_axi_rdata[27]_INST_0_i_4_n_0\
    );
\s00_axi_rdata[27]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg27(27),
      I1 => slv_reg26(27),
      I2 => sel0(1),
      I3 => slv_reg25(27),
      I4 => sel0(0),
      I5 => slv_reg24(27),
      O => \s00_axi_rdata[27]_INST_0_i_5_n_0\
    );
\s00_axi_rdata[27]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg31(27),
      I1 => slv_reg30(27),
      I2 => sel0(1),
      I3 => slv_reg29(27),
      I4 => sel0(0),
      I5 => slv_reg28(27),
      O => \s00_axi_rdata[27]_INST_0_i_6_n_0\
    );
\s00_axi_rdata[27]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg19(27),
      I1 => slv_reg18(27),
      I2 => sel0(1),
      I3 => slv_reg17(27),
      I4 => sel0(0),
      I5 => slv_reg16(27),
      O => \s00_axi_rdata[27]_INST_0_i_7_n_0\
    );
\s00_axi_rdata[27]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg23(27),
      I1 => slv_reg22(27),
      I2 => sel0(1),
      I3 => slv_reg21(27),
      I4 => sel0(0),
      I5 => slv_reg20(27),
      O => \s00_axi_rdata[27]_INST_0_i_8_n_0\
    );
\s00_axi_rdata[27]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg11__0\(27),
      I1 => slv_reg10(27),
      I2 => sel0(1),
      I3 => \slv_reg9__0\(27),
      I4 => sel0(0),
      I5 => \slv_reg8__0\(27),
      O => \s00_axi_rdata[27]_INST_0_i_9_n_0\
    );
\s00_axi_rdata[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[28]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[28]_INST_0_i_2_n_0\,
      I2 => sel0(4),
      I3 => \s00_axi_rdata[28]_INST_0_i_3_n_0\,
      I4 => sel0(3),
      I5 => \s00_axi_rdata[28]_INST_0_i_4_n_0\,
      O => s00_axi_rdata(28)
    );
\s00_axi_rdata[28]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[28]_INST_0_i_5_n_0\,
      I1 => \s00_axi_rdata[28]_INST_0_i_6_n_0\,
      O => \s00_axi_rdata[28]_INST_0_i_1_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[28]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(28),
      I1 => slv_reg2(28),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg1(28),
      O => \s00_axi_rdata[28]_INST_0_i_10_n_0\
    );
\s00_axi_rdata[28]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[28]_INST_0_i_7_n_0\,
      I1 => \s00_axi_rdata[28]_INST_0_i_8_n_0\,
      O => \s00_axi_rdata[28]_INST_0_i_2_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[28]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => sel0(1),
      I1 => slv_reg15(28),
      I2 => sel0(0),
      I3 => sel0(2),
      I4 => \s00_axi_rdata[28]_INST_0_i_9_n_0\,
      O => \s00_axi_rdata[28]_INST_0_i_3_n_0\
    );
\s00_axi_rdata[28]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8830FFFF88300000"
    )
        port map (
      I0 => \slv_reg7__0\(28),
      I1 => sel0(1),
      I2 => \slv_reg4__0\(28),
      I3 => sel0(0),
      I4 => sel0(2),
      I5 => \s00_axi_rdata[28]_INST_0_i_10_n_0\,
      O => \s00_axi_rdata[28]_INST_0_i_4_n_0\
    );
\s00_axi_rdata[28]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg27(28),
      I1 => slv_reg26(28),
      I2 => sel0(1),
      I3 => slv_reg25(28),
      I4 => sel0(0),
      I5 => slv_reg24(28),
      O => \s00_axi_rdata[28]_INST_0_i_5_n_0\
    );
\s00_axi_rdata[28]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg31(28),
      I1 => slv_reg30(28),
      I2 => sel0(1),
      I3 => slv_reg29(28),
      I4 => sel0(0),
      I5 => slv_reg28(28),
      O => \s00_axi_rdata[28]_INST_0_i_6_n_0\
    );
\s00_axi_rdata[28]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg19(28),
      I1 => slv_reg18(28),
      I2 => sel0(1),
      I3 => slv_reg17(28),
      I4 => sel0(0),
      I5 => slv_reg16(28),
      O => \s00_axi_rdata[28]_INST_0_i_7_n_0\
    );
\s00_axi_rdata[28]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg23(28),
      I1 => slv_reg22(28),
      I2 => sel0(1),
      I3 => slv_reg21(28),
      I4 => sel0(0),
      I5 => slv_reg20(28),
      O => \s00_axi_rdata[28]_INST_0_i_8_n_0\
    );
\s00_axi_rdata[28]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg11__0\(28),
      I1 => slv_reg10(28),
      I2 => sel0(1),
      I3 => \slv_reg9__0\(28),
      I4 => sel0(0),
      I5 => \slv_reg8__0\(28),
      O => \s00_axi_rdata[28]_INST_0_i_9_n_0\
    );
\s00_axi_rdata[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[29]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[29]_INST_0_i_2_n_0\,
      I2 => sel0(4),
      I3 => \s00_axi_rdata[29]_INST_0_i_3_n_0\,
      I4 => sel0(3),
      I5 => \s00_axi_rdata[29]_INST_0_i_4_n_0\,
      O => s00_axi_rdata(29)
    );
\s00_axi_rdata[29]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[29]_INST_0_i_5_n_0\,
      I1 => \s00_axi_rdata[29]_INST_0_i_6_n_0\,
      O => \s00_axi_rdata[29]_INST_0_i_1_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[29]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(29),
      I1 => slv_reg2(29),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg1(29),
      O => \s00_axi_rdata[29]_INST_0_i_10_n_0\
    );
\s00_axi_rdata[29]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[29]_INST_0_i_7_n_0\,
      I1 => \s00_axi_rdata[29]_INST_0_i_8_n_0\,
      O => \s00_axi_rdata[29]_INST_0_i_2_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[29]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => sel0(1),
      I1 => slv_reg15(29),
      I2 => sel0(0),
      I3 => sel0(2),
      I4 => \s00_axi_rdata[29]_INST_0_i_9_n_0\,
      O => \s00_axi_rdata[29]_INST_0_i_3_n_0\
    );
\s00_axi_rdata[29]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8830FFFF88300000"
    )
        port map (
      I0 => \slv_reg7__0\(29),
      I1 => sel0(1),
      I2 => \slv_reg4__0\(29),
      I3 => sel0(0),
      I4 => sel0(2),
      I5 => \s00_axi_rdata[29]_INST_0_i_10_n_0\,
      O => \s00_axi_rdata[29]_INST_0_i_4_n_0\
    );
\s00_axi_rdata[29]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg27(29),
      I1 => slv_reg26(29),
      I2 => sel0(1),
      I3 => slv_reg25(29),
      I4 => sel0(0),
      I5 => slv_reg24(29),
      O => \s00_axi_rdata[29]_INST_0_i_5_n_0\
    );
\s00_axi_rdata[29]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg31(29),
      I1 => slv_reg30(29),
      I2 => sel0(1),
      I3 => slv_reg29(29),
      I4 => sel0(0),
      I5 => slv_reg28(29),
      O => \s00_axi_rdata[29]_INST_0_i_6_n_0\
    );
\s00_axi_rdata[29]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg19(29),
      I1 => slv_reg18(29),
      I2 => sel0(1),
      I3 => slv_reg17(29),
      I4 => sel0(0),
      I5 => slv_reg16(29),
      O => \s00_axi_rdata[29]_INST_0_i_7_n_0\
    );
\s00_axi_rdata[29]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg23(29),
      I1 => slv_reg22(29),
      I2 => sel0(1),
      I3 => slv_reg21(29),
      I4 => sel0(0),
      I5 => slv_reg20(29),
      O => \s00_axi_rdata[29]_INST_0_i_8_n_0\
    );
\s00_axi_rdata[29]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg11__0\(29),
      I1 => slv_reg10(29),
      I2 => sel0(1),
      I3 => \slv_reg9__0\(29),
      I4 => sel0(0),
      I5 => \slv_reg8__0\(29),
      O => \s00_axi_rdata[29]_INST_0_i_9_n_0\
    );
\s00_axi_rdata[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[2]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[2]_INST_0_i_2_n_0\,
      I2 => sel0(4),
      I3 => \s00_axi_rdata[2]_INST_0_i_3_n_0\,
      I4 => sel0(3),
      I5 => \s00_axi_rdata[2]_INST_0_i_4_n_0\,
      O => s00_axi_rdata(2)
    );
\s00_axi_rdata[2]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[2]_INST_0_i_5_n_0\,
      I1 => \s00_axi_rdata[2]_INST_0_i_6_n_0\,
      O => \s00_axi_rdata[2]_INST_0_i_1_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[2]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg15(2),
      I1 => triggerTimeOut(2),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => \axi_araddr_reg[2]_rep_n_0\,
      I4 => triggerVoltOut(2),
      O => \s00_axi_rdata[2]_INST_0_i_10_n_0\
    );
\s00_axi_rdata[2]_INST_0_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0CFCF"
    )
        port map (
      I0 => slv_reg3(2),
      I1 => slv_reg2(2),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => slv_reg1(2),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      O => \s00_axi_rdata[2]_INST_0_i_11_n_0\
    );
\s00_axi_rdata[2]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg7__0\(2),
      I1 => Rbus_out(2),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => LBus_out(2),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg4(2),
      O => \s00_axi_rdata[2]_INST_0_i_12_n_0\
    );
\s00_axi_rdata[2]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[2]_INST_0_i_7_n_0\,
      I1 => \s00_axi_rdata[2]_INST_0_i_8_n_0\,
      O => \s00_axi_rdata[2]_INST_0_i_2_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[2]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[2]_INST_0_i_9_n_0\,
      I1 => \s00_axi_rdata[2]_INST_0_i_10_n_0\,
      O => \s00_axi_rdata[2]_INST_0_i_3_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[2]_INST_0_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[2]_INST_0_i_11_n_0\,
      I1 => \s00_axi_rdata[2]_INST_0_i_12_n_0\,
      O => \s00_axi_rdata[2]_INST_0_i_4_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[2]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg27(2),
      I1 => slv_reg26(2),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => slv_reg25(2),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg24(2),
      O => \s00_axi_rdata[2]_INST_0_i_5_n_0\
    );
\s00_axi_rdata[2]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg31(2),
      I1 => slv_reg30(2),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => slv_reg29(2),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg28(2),
      O => \s00_axi_rdata[2]_INST_0_i_6_n_0\
    );
\s00_axi_rdata[2]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg19(2),
      I1 => slv_reg18(2),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => slv_reg17(2),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg16(2),
      O => \s00_axi_rdata[2]_INST_0_i_7_n_0\
    );
\s00_axi_rdata[2]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg23(2),
      I1 => slv_reg22(2),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => slv_reg21(2),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg20(2),
      O => \s00_axi_rdata[2]_INST_0_i_8_n_0\
    );
\s00_axi_rdata[2]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg11__0\(2),
      I1 => slv_reg10(2),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => slv_reg9(2),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg8(2),
      O => \s00_axi_rdata[2]_INST_0_i_9_n_0\
    );
\s00_axi_rdata[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[30]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[30]_INST_0_i_2_n_0\,
      I2 => sel0(4),
      I3 => \s00_axi_rdata[30]_INST_0_i_3_n_0\,
      I4 => sel0(3),
      I5 => \s00_axi_rdata[30]_INST_0_i_4_n_0\,
      O => s00_axi_rdata(30)
    );
\s00_axi_rdata[30]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[30]_INST_0_i_5_n_0\,
      I1 => \s00_axi_rdata[30]_INST_0_i_6_n_0\,
      O => \s00_axi_rdata[30]_INST_0_i_1_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[30]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(30),
      I1 => slv_reg2(30),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg1(30),
      O => \s00_axi_rdata[30]_INST_0_i_10_n_0\
    );
\s00_axi_rdata[30]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[30]_INST_0_i_7_n_0\,
      I1 => \s00_axi_rdata[30]_INST_0_i_8_n_0\,
      O => \s00_axi_rdata[30]_INST_0_i_2_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[30]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => sel0(1),
      I1 => slv_reg15(30),
      I2 => sel0(0),
      I3 => sel0(2),
      I4 => \s00_axi_rdata[30]_INST_0_i_9_n_0\,
      O => \s00_axi_rdata[30]_INST_0_i_3_n_0\
    );
\s00_axi_rdata[30]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8830FFFF88300000"
    )
        port map (
      I0 => \slv_reg7__0\(30),
      I1 => sel0(1),
      I2 => \slv_reg4__0\(30),
      I3 => sel0(0),
      I4 => sel0(2),
      I5 => \s00_axi_rdata[30]_INST_0_i_10_n_0\,
      O => \s00_axi_rdata[30]_INST_0_i_4_n_0\
    );
\s00_axi_rdata[30]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg27(30),
      I1 => slv_reg26(30),
      I2 => sel0(1),
      I3 => slv_reg25(30),
      I4 => sel0(0),
      I5 => slv_reg24(30),
      O => \s00_axi_rdata[30]_INST_0_i_5_n_0\
    );
\s00_axi_rdata[30]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg31(30),
      I1 => slv_reg30(30),
      I2 => sel0(1),
      I3 => slv_reg29(30),
      I4 => sel0(0),
      I5 => slv_reg28(30),
      O => \s00_axi_rdata[30]_INST_0_i_6_n_0\
    );
\s00_axi_rdata[30]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg19(30),
      I1 => slv_reg18(30),
      I2 => sel0(1),
      I3 => slv_reg17(30),
      I4 => sel0(0),
      I5 => slv_reg16(30),
      O => \s00_axi_rdata[30]_INST_0_i_7_n_0\
    );
\s00_axi_rdata[30]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg23(30),
      I1 => slv_reg22(30),
      I2 => sel0(1),
      I3 => slv_reg21(30),
      I4 => sel0(0),
      I5 => slv_reg20(30),
      O => \s00_axi_rdata[30]_INST_0_i_8_n_0\
    );
\s00_axi_rdata[30]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg11__0\(30),
      I1 => slv_reg10(30),
      I2 => sel0(1),
      I3 => \slv_reg9__0\(30),
      I4 => sel0(0),
      I5 => \slv_reg8__0\(30),
      O => \s00_axi_rdata[30]_INST_0_i_9_n_0\
    );
\s00_axi_rdata[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[31]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[31]_INST_0_i_2_n_0\,
      I2 => sel0(4),
      I3 => \s00_axi_rdata[31]_INST_0_i_3_n_0\,
      I4 => sel0(3),
      I5 => \s00_axi_rdata[31]_INST_0_i_4_n_0\,
      O => s00_axi_rdata(31)
    );
\s00_axi_rdata[31]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[31]_INST_0_i_5_n_0\,
      I1 => \s00_axi_rdata[31]_INST_0_i_6_n_0\,
      O => \s00_axi_rdata[31]_INST_0_i_1_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[31]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(31),
      I1 => slv_reg2(31),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg1(31),
      O => \s00_axi_rdata[31]_INST_0_i_10_n_0\
    );
\s00_axi_rdata[31]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[31]_INST_0_i_7_n_0\,
      I1 => \s00_axi_rdata[31]_INST_0_i_8_n_0\,
      O => \s00_axi_rdata[31]_INST_0_i_2_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[31]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => sel0(1),
      I1 => slv_reg15(31),
      I2 => sel0(0),
      I3 => sel0(2),
      I4 => \s00_axi_rdata[31]_INST_0_i_9_n_0\,
      O => \s00_axi_rdata[31]_INST_0_i_3_n_0\
    );
\s00_axi_rdata[31]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8830FFFF88300000"
    )
        port map (
      I0 => \slv_reg7__0\(31),
      I1 => sel0(1),
      I2 => \slv_reg4__0\(31),
      I3 => sel0(0),
      I4 => sel0(2),
      I5 => \s00_axi_rdata[31]_INST_0_i_10_n_0\,
      O => \s00_axi_rdata[31]_INST_0_i_4_n_0\
    );
\s00_axi_rdata[31]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg27(31),
      I1 => slv_reg26(31),
      I2 => sel0(1),
      I3 => slv_reg25(31),
      I4 => sel0(0),
      I5 => slv_reg24(31),
      O => \s00_axi_rdata[31]_INST_0_i_5_n_0\
    );
\s00_axi_rdata[31]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg31(31),
      I1 => slv_reg30(31),
      I2 => sel0(1),
      I3 => slv_reg29(31),
      I4 => sel0(0),
      I5 => slv_reg28(31),
      O => \s00_axi_rdata[31]_INST_0_i_6_n_0\
    );
\s00_axi_rdata[31]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg19(31),
      I1 => slv_reg18(31),
      I2 => sel0(1),
      I3 => slv_reg17(31),
      I4 => sel0(0),
      I5 => slv_reg16(31),
      O => \s00_axi_rdata[31]_INST_0_i_7_n_0\
    );
\s00_axi_rdata[31]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg23(31),
      I1 => slv_reg22(31),
      I2 => sel0(1),
      I3 => slv_reg21(31),
      I4 => sel0(0),
      I5 => slv_reg20(31),
      O => \s00_axi_rdata[31]_INST_0_i_8_n_0\
    );
\s00_axi_rdata[31]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg11__0\(31),
      I1 => slv_reg10(31),
      I2 => sel0(1),
      I3 => \slv_reg9__0\(31),
      I4 => sel0(0),
      I5 => \slv_reg8__0\(31),
      O => \s00_axi_rdata[31]_INST_0_i_9_n_0\
    );
\s00_axi_rdata[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[3]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[3]_INST_0_i_2_n_0\,
      I2 => sel0(4),
      I3 => \s00_axi_rdata[3]_INST_0_i_3_n_0\,
      I4 => sel0(3),
      I5 => \s00_axi_rdata[3]_INST_0_i_4_n_0\,
      O => s00_axi_rdata(3)
    );
\s00_axi_rdata[3]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[3]_INST_0_i_5_n_0\,
      I1 => \s00_axi_rdata[3]_INST_0_i_6_n_0\,
      O => \s00_axi_rdata[3]_INST_0_i_1_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[3]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg15(3),
      I1 => triggerTimeOut(3),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => \axi_araddr_reg[2]_rep_n_0\,
      I4 => triggerVoltOut(3),
      O => \s00_axi_rdata[3]_INST_0_i_10_n_0\
    );
\s00_axi_rdata[3]_INST_0_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(3),
      I1 => slv_reg2(3),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => \axi_araddr_reg[2]_rep_n_0\,
      I4 => slv_reg1(3),
      O => \s00_axi_rdata[3]_INST_0_i_11_n_0\
    );
\s00_axi_rdata[3]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg7__0\(3),
      I1 => Rbus_out(3),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => LBus_out(3),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg4(3),
      O => \s00_axi_rdata[3]_INST_0_i_12_n_0\
    );
\s00_axi_rdata[3]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[3]_INST_0_i_7_n_0\,
      I1 => \s00_axi_rdata[3]_INST_0_i_8_n_0\,
      O => \s00_axi_rdata[3]_INST_0_i_2_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[3]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[3]_INST_0_i_9_n_0\,
      I1 => \s00_axi_rdata[3]_INST_0_i_10_n_0\,
      O => \s00_axi_rdata[3]_INST_0_i_3_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[3]_INST_0_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[3]_INST_0_i_11_n_0\,
      I1 => \s00_axi_rdata[3]_INST_0_i_12_n_0\,
      O => \s00_axi_rdata[3]_INST_0_i_4_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[3]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg27(3),
      I1 => slv_reg26(3),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => slv_reg25(3),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg24(3),
      O => \s00_axi_rdata[3]_INST_0_i_5_n_0\
    );
\s00_axi_rdata[3]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg31(3),
      I1 => slv_reg30(3),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => slv_reg29(3),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg28(3),
      O => \s00_axi_rdata[3]_INST_0_i_6_n_0\
    );
\s00_axi_rdata[3]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg19(3),
      I1 => slv_reg18(3),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => slv_reg17(3),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg16(3),
      O => \s00_axi_rdata[3]_INST_0_i_7_n_0\
    );
\s00_axi_rdata[3]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg23(3),
      I1 => slv_reg22(3),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => slv_reg21(3),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg20(3),
      O => \s00_axi_rdata[3]_INST_0_i_8_n_0\
    );
\s00_axi_rdata[3]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg11__0\(3),
      I1 => slv_reg10(3),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => slv_reg9(3),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg8(3),
      O => \s00_axi_rdata[3]_INST_0_i_9_n_0\
    );
\s00_axi_rdata[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[4]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[4]_INST_0_i_2_n_0\,
      I2 => sel0(4),
      I3 => \s00_axi_rdata[4]_INST_0_i_3_n_0\,
      I4 => sel0(3),
      I5 => \s00_axi_rdata[4]_INST_0_i_4_n_0\,
      O => s00_axi_rdata(4)
    );
\s00_axi_rdata[4]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[4]_INST_0_i_5_n_0\,
      I1 => \s00_axi_rdata[4]_INST_0_i_6_n_0\,
      O => \s00_axi_rdata[4]_INST_0_i_1_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[4]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg15(4),
      I1 => triggerTimeOut(4),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => \axi_araddr_reg[2]_rep_n_0\,
      I4 => triggerVoltOut(4),
      O => \s00_axi_rdata[4]_INST_0_i_10_n_0\
    );
\s00_axi_rdata[4]_INST_0_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0CFCF"
    )
        port map (
      I0 => slv_reg3(4),
      I1 => slv_reg2(4),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => slv_reg1(4),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      O => \s00_axi_rdata[4]_INST_0_i_11_n_0\
    );
\s00_axi_rdata[4]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg7__0\(4),
      I1 => Rbus_out(4),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => LBus_out(4),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg4(4),
      O => \s00_axi_rdata[4]_INST_0_i_12_n_0\
    );
\s00_axi_rdata[4]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[4]_INST_0_i_7_n_0\,
      I1 => \s00_axi_rdata[4]_INST_0_i_8_n_0\,
      O => \s00_axi_rdata[4]_INST_0_i_2_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[4]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[4]_INST_0_i_9_n_0\,
      I1 => \s00_axi_rdata[4]_INST_0_i_10_n_0\,
      O => \s00_axi_rdata[4]_INST_0_i_3_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[4]_INST_0_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[4]_INST_0_i_11_n_0\,
      I1 => \s00_axi_rdata[4]_INST_0_i_12_n_0\,
      O => \s00_axi_rdata[4]_INST_0_i_4_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[4]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg27(4),
      I1 => slv_reg26(4),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => slv_reg25(4),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg24(4),
      O => \s00_axi_rdata[4]_INST_0_i_5_n_0\
    );
\s00_axi_rdata[4]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg31(4),
      I1 => slv_reg30(4),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => slv_reg29(4),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg28(4),
      O => \s00_axi_rdata[4]_INST_0_i_6_n_0\
    );
\s00_axi_rdata[4]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg19(4),
      I1 => slv_reg18(4),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => slv_reg17(4),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg16(4),
      O => \s00_axi_rdata[4]_INST_0_i_7_n_0\
    );
\s00_axi_rdata[4]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg23(4),
      I1 => slv_reg22(4),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => slv_reg21(4),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg20(4),
      O => \s00_axi_rdata[4]_INST_0_i_8_n_0\
    );
\s00_axi_rdata[4]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg11__0\(4),
      I1 => slv_reg10(4),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => slv_reg9(4),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg8(4),
      O => \s00_axi_rdata[4]_INST_0_i_9_n_0\
    );
\s00_axi_rdata[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[5]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[5]_INST_0_i_2_n_0\,
      I2 => sel0(4),
      I3 => \s00_axi_rdata[5]_INST_0_i_3_n_0\,
      I4 => sel0(3),
      I5 => \s00_axi_rdata[5]_INST_0_i_4_n_0\,
      O => s00_axi_rdata(5)
    );
\s00_axi_rdata[5]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[5]_INST_0_i_5_n_0\,
      I1 => \s00_axi_rdata[5]_INST_0_i_6_n_0\,
      O => \s00_axi_rdata[5]_INST_0_i_1_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[5]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg15(5),
      I1 => triggerTimeOut(5),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => \axi_araddr_reg[2]_rep_n_0\,
      I4 => triggerVoltOut(5),
      O => \s00_axi_rdata[5]_INST_0_i_10_n_0\
    );
\s00_axi_rdata[5]_INST_0_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(5),
      I1 => slv_reg2(5),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => \axi_araddr_reg[2]_rep_n_0\,
      I4 => slv_reg1(5),
      O => \s00_axi_rdata[5]_INST_0_i_11_n_0\
    );
\s00_axi_rdata[5]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg7__0\(5),
      I1 => Rbus_out(5),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => LBus_out(5),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg4(5),
      O => \s00_axi_rdata[5]_INST_0_i_12_n_0\
    );
\s00_axi_rdata[5]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[5]_INST_0_i_7_n_0\,
      I1 => \s00_axi_rdata[5]_INST_0_i_8_n_0\,
      O => \s00_axi_rdata[5]_INST_0_i_2_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[5]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[5]_INST_0_i_9_n_0\,
      I1 => \s00_axi_rdata[5]_INST_0_i_10_n_0\,
      O => \s00_axi_rdata[5]_INST_0_i_3_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[5]_INST_0_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[5]_INST_0_i_11_n_0\,
      I1 => \s00_axi_rdata[5]_INST_0_i_12_n_0\,
      O => \s00_axi_rdata[5]_INST_0_i_4_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[5]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg27(5),
      I1 => slv_reg26(5),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => slv_reg25(5),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg24(5),
      O => \s00_axi_rdata[5]_INST_0_i_5_n_0\
    );
\s00_axi_rdata[5]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg31(5),
      I1 => slv_reg30(5),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => slv_reg29(5),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg28(5),
      O => \s00_axi_rdata[5]_INST_0_i_6_n_0\
    );
\s00_axi_rdata[5]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg19(5),
      I1 => slv_reg18(5),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => slv_reg17(5),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg16(5),
      O => \s00_axi_rdata[5]_INST_0_i_7_n_0\
    );
\s00_axi_rdata[5]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg23(5),
      I1 => slv_reg22(5),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => slv_reg21(5),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg20(5),
      O => \s00_axi_rdata[5]_INST_0_i_8_n_0\
    );
\s00_axi_rdata[5]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg11__0\(5),
      I1 => slv_reg10(5),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => slv_reg9(5),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg8(5),
      O => \s00_axi_rdata[5]_INST_0_i_9_n_0\
    );
\s00_axi_rdata[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[6]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[6]_INST_0_i_2_n_0\,
      I2 => sel0(4),
      I3 => \s00_axi_rdata[6]_INST_0_i_3_n_0\,
      I4 => sel0(3),
      I5 => \s00_axi_rdata[6]_INST_0_i_4_n_0\,
      O => s00_axi_rdata(6)
    );
\s00_axi_rdata[6]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[6]_INST_0_i_5_n_0\,
      I1 => \s00_axi_rdata[6]_INST_0_i_6_n_0\,
      O => \s00_axi_rdata[6]_INST_0_i_1_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[6]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg15(6),
      I1 => triggerTimeOut(6),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => \axi_araddr_reg[2]_rep_n_0\,
      I4 => triggerVoltOut(6),
      O => \s00_axi_rdata[6]_INST_0_i_10_n_0\
    );
\s00_axi_rdata[6]_INST_0_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(6),
      I1 => slv_reg2(6),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => \axi_araddr_reg[2]_rep_n_0\,
      I4 => slv_reg1(6),
      O => \s00_axi_rdata[6]_INST_0_i_11_n_0\
    );
\s00_axi_rdata[6]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg7__0\(6),
      I1 => Rbus_out(6),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => LBus_out(6),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg4(6),
      O => \s00_axi_rdata[6]_INST_0_i_12_n_0\
    );
\s00_axi_rdata[6]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[6]_INST_0_i_7_n_0\,
      I1 => \s00_axi_rdata[6]_INST_0_i_8_n_0\,
      O => \s00_axi_rdata[6]_INST_0_i_2_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[6]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[6]_INST_0_i_9_n_0\,
      I1 => \s00_axi_rdata[6]_INST_0_i_10_n_0\,
      O => \s00_axi_rdata[6]_INST_0_i_3_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[6]_INST_0_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[6]_INST_0_i_11_n_0\,
      I1 => \s00_axi_rdata[6]_INST_0_i_12_n_0\,
      O => \s00_axi_rdata[6]_INST_0_i_4_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[6]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg27(6),
      I1 => slv_reg26(6),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => slv_reg25(6),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg24(6),
      O => \s00_axi_rdata[6]_INST_0_i_5_n_0\
    );
\s00_axi_rdata[6]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg31(6),
      I1 => slv_reg30(6),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => slv_reg29(6),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg28(6),
      O => \s00_axi_rdata[6]_INST_0_i_6_n_0\
    );
\s00_axi_rdata[6]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg19(6),
      I1 => slv_reg18(6),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => slv_reg17(6),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg16(6),
      O => \s00_axi_rdata[6]_INST_0_i_7_n_0\
    );
\s00_axi_rdata[6]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg23(6),
      I1 => slv_reg22(6),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => slv_reg21(6),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg20(6),
      O => \s00_axi_rdata[6]_INST_0_i_8_n_0\
    );
\s00_axi_rdata[6]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg11__0\(6),
      I1 => slv_reg10(6),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => slv_reg9(6),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg8(6),
      O => \s00_axi_rdata[6]_INST_0_i_9_n_0\
    );
\s00_axi_rdata[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[7]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[7]_INST_0_i_2_n_0\,
      I2 => sel0(4),
      I3 => \s00_axi_rdata[7]_INST_0_i_3_n_0\,
      I4 => sel0(3),
      I5 => \s00_axi_rdata[7]_INST_0_i_4_n_0\,
      O => s00_axi_rdata(7)
    );
\s00_axi_rdata[7]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[7]_INST_0_i_5_n_0\,
      I1 => \s00_axi_rdata[7]_INST_0_i_6_n_0\,
      O => \s00_axi_rdata[7]_INST_0_i_1_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[7]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg15(7),
      I1 => triggerTimeOut(7),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => \axi_araddr_reg[2]_rep_n_0\,
      I4 => triggerVoltOut(7),
      O => \s00_axi_rdata[7]_INST_0_i_10_n_0\
    );
\s00_axi_rdata[7]_INST_0_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(7),
      I1 => slv_reg2(7),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => \axi_araddr_reg[2]_rep_n_0\,
      I4 => slv_reg1(7),
      O => \s00_axi_rdata[7]_INST_0_i_11_n_0\
    );
\s00_axi_rdata[7]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg7__0\(7),
      I1 => Rbus_out(7),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => LBus_out(7),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg4(7),
      O => \s00_axi_rdata[7]_INST_0_i_12_n_0\
    );
\s00_axi_rdata[7]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[7]_INST_0_i_7_n_0\,
      I1 => \s00_axi_rdata[7]_INST_0_i_8_n_0\,
      O => \s00_axi_rdata[7]_INST_0_i_2_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[7]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[7]_INST_0_i_9_n_0\,
      I1 => \s00_axi_rdata[7]_INST_0_i_10_n_0\,
      O => \s00_axi_rdata[7]_INST_0_i_3_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[7]_INST_0_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[7]_INST_0_i_11_n_0\,
      I1 => \s00_axi_rdata[7]_INST_0_i_12_n_0\,
      O => \s00_axi_rdata[7]_INST_0_i_4_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[7]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg27(7),
      I1 => slv_reg26(7),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => slv_reg25(7),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg24(7),
      O => \s00_axi_rdata[7]_INST_0_i_5_n_0\
    );
\s00_axi_rdata[7]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg31(7),
      I1 => slv_reg30(7),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => slv_reg29(7),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg28(7),
      O => \s00_axi_rdata[7]_INST_0_i_6_n_0\
    );
\s00_axi_rdata[7]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg19(7),
      I1 => slv_reg18(7),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => slv_reg17(7),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg16(7),
      O => \s00_axi_rdata[7]_INST_0_i_7_n_0\
    );
\s00_axi_rdata[7]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg23(7),
      I1 => slv_reg22(7),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => slv_reg21(7),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg20(7),
      O => \s00_axi_rdata[7]_INST_0_i_8_n_0\
    );
\s00_axi_rdata[7]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg11__0\(7),
      I1 => slv_reg10(7),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => slv_reg9(7),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg8(7),
      O => \s00_axi_rdata[7]_INST_0_i_9_n_0\
    );
\s00_axi_rdata[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[8]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[8]_INST_0_i_2_n_0\,
      I2 => sel0(4),
      I3 => \s00_axi_rdata[8]_INST_0_i_3_n_0\,
      I4 => sel0(3),
      I5 => \s00_axi_rdata[8]_INST_0_i_4_n_0\,
      O => s00_axi_rdata(8)
    );
\s00_axi_rdata[8]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[8]_INST_0_i_5_n_0\,
      I1 => \s00_axi_rdata[8]_INST_0_i_6_n_0\,
      O => \s00_axi_rdata[8]_INST_0_i_1_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[8]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg15(8),
      I1 => triggerTimeOut(8),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => \axi_araddr_reg[2]_rep_n_0\,
      I4 => triggerVoltOut(8),
      O => \s00_axi_rdata[8]_INST_0_i_10_n_0\
    );
\s00_axi_rdata[8]_INST_0_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(8),
      I1 => slv_reg2(8),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => \axi_araddr_reg[2]_rep_n_0\,
      I4 => slv_reg1(8),
      O => \s00_axi_rdata[8]_INST_0_i_11_n_0\
    );
\s00_axi_rdata[8]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg7__0\(8),
      I1 => Rbus_out(8),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => LBus_out(8),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg4(8),
      O => \s00_axi_rdata[8]_INST_0_i_12_n_0\
    );
\s00_axi_rdata[8]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[8]_INST_0_i_7_n_0\,
      I1 => \s00_axi_rdata[8]_INST_0_i_8_n_0\,
      O => \s00_axi_rdata[8]_INST_0_i_2_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[8]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[8]_INST_0_i_9_n_0\,
      I1 => \s00_axi_rdata[8]_INST_0_i_10_n_0\,
      O => \s00_axi_rdata[8]_INST_0_i_3_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[8]_INST_0_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[8]_INST_0_i_11_n_0\,
      I1 => \s00_axi_rdata[8]_INST_0_i_12_n_0\,
      O => \s00_axi_rdata[8]_INST_0_i_4_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[8]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg27(8),
      I1 => slv_reg26(8),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => slv_reg25(8),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg24(8),
      O => \s00_axi_rdata[8]_INST_0_i_5_n_0\
    );
\s00_axi_rdata[8]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg31(8),
      I1 => slv_reg30(8),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => slv_reg29(8),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg28(8),
      O => \s00_axi_rdata[8]_INST_0_i_6_n_0\
    );
\s00_axi_rdata[8]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg19(8),
      I1 => slv_reg18(8),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => slv_reg17(8),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg16(8),
      O => \s00_axi_rdata[8]_INST_0_i_7_n_0\
    );
\s00_axi_rdata[8]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg23(8),
      I1 => slv_reg22(8),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => slv_reg21(8),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg20(8),
      O => \s00_axi_rdata[8]_INST_0_i_8_n_0\
    );
\s00_axi_rdata[8]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg11__0\(8),
      I1 => slv_reg10(8),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => slv_reg9(8),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg8(8),
      O => \s00_axi_rdata[8]_INST_0_i_9_n_0\
    );
\s00_axi_rdata[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[9]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[9]_INST_0_i_2_n_0\,
      I2 => sel0(4),
      I3 => \s00_axi_rdata[9]_INST_0_i_3_n_0\,
      I4 => sel0(3),
      I5 => \s00_axi_rdata[9]_INST_0_i_4_n_0\,
      O => s00_axi_rdata(9)
    );
\s00_axi_rdata[9]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[9]_INST_0_i_5_n_0\,
      I1 => \s00_axi_rdata[9]_INST_0_i_6_n_0\,
      O => \s00_axi_rdata[9]_INST_0_i_1_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[9]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg15(9),
      I1 => triggerTimeOut(9),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => \axi_araddr_reg[2]_rep_n_0\,
      I4 => triggerVoltOut(9),
      O => \s00_axi_rdata[9]_INST_0_i_10_n_0\
    );
\s00_axi_rdata[9]_INST_0_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(9),
      I1 => slv_reg2(9),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => \axi_araddr_reg[2]_rep_n_0\,
      I4 => slv_reg1(9),
      O => \s00_axi_rdata[9]_INST_0_i_11_n_0\
    );
\s00_axi_rdata[9]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg7__0\(9),
      I1 => Rbus_out(9),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => LBus_out(9),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg4(9),
      O => \s00_axi_rdata[9]_INST_0_i_12_n_0\
    );
\s00_axi_rdata[9]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[9]_INST_0_i_7_n_0\,
      I1 => \s00_axi_rdata[9]_INST_0_i_8_n_0\,
      O => \s00_axi_rdata[9]_INST_0_i_2_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[9]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[9]_INST_0_i_9_n_0\,
      I1 => \s00_axi_rdata[9]_INST_0_i_10_n_0\,
      O => \s00_axi_rdata[9]_INST_0_i_3_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[9]_INST_0_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[9]_INST_0_i_11_n_0\,
      I1 => \s00_axi_rdata[9]_INST_0_i_12_n_0\,
      O => \s00_axi_rdata[9]_INST_0_i_4_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[9]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg27(9),
      I1 => slv_reg26(9),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => slv_reg25(9),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg24(9),
      O => \s00_axi_rdata[9]_INST_0_i_5_n_0\
    );
\s00_axi_rdata[9]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg31(9),
      I1 => slv_reg30(9),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => slv_reg29(9),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg28(9),
      O => \s00_axi_rdata[9]_INST_0_i_6_n_0\
    );
\s00_axi_rdata[9]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg19(9),
      I1 => slv_reg18(9),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => slv_reg17(9),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg16(9),
      O => \s00_axi_rdata[9]_INST_0_i_7_n_0\
    );
\s00_axi_rdata[9]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg23(9),
      I1 => slv_reg22(9),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => slv_reg21(9),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg20(9),
      O => \s00_axi_rdata[9]_INST_0_i_8_n_0\
    );
\s00_axi_rdata[9]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg11__0\(9),
      I1 => slv_reg10(9),
      I2 => \axi_araddr_reg[3]_rep_n_0\,
      I3 => slv_reg9(9),
      I4 => \axi_araddr_reg[2]_rep_n_0\,
      I5 => slv_reg8(9),
      O => \s00_axi_rdata[9]_INST_0_i_9_n_0\
    );
\slv_reg10[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg10[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(1),
      O => \slv_reg10[15]_i_1_n_0\
    );
\slv_reg10[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg10[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(2),
      O => \slv_reg10[23]_i_1_n_0\
    );
\slv_reg10[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg10[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(3),
      O => \slv_reg10[31]_i_1_n_0\
    );
\slv_reg10[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002020200020"
    )
        port map (
      I0 => \slv_reg26[31]_i_2_n_0\,
      I1 => mem_logic(4),
      I2 => s00_axi_wvalid,
      I3 => \axi_awaddr_reg_n_0_[6]\,
      I4 => s00_axi_awvalid,
      I5 => s00_axi_awaddr(4),
      O => \slv_reg10[31]_i_2_n_0\
    );
\slv_reg10[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg10[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(0),
      O => \slv_reg10[7]_i_1_n_0\
    );
\slv_reg10_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg10(0),
      R => \Audio_Codec/rst\
    );
\slv_reg10_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg10(10),
      R => \Audio_Codec/rst\
    );
\slv_reg10_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg10(11),
      R => \Audio_Codec/rst\
    );
\slv_reg10_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg10(12),
      R => \Audio_Codec/rst\
    );
\slv_reg10_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg10(13),
      R => \Audio_Codec/rst\
    );
\slv_reg10_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg10(14),
      R => \Audio_Codec/rst\
    );
\slv_reg10_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg10(15),
      R => \Audio_Codec/rst\
    );
\slv_reg10_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg10(16),
      R => \Audio_Codec/rst\
    );
\slv_reg10_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg10(17),
      R => \Audio_Codec/rst\
    );
\slv_reg10_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg10(18),
      R => \Audio_Codec/rst\
    );
\slv_reg10_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg10(19),
      R => \Audio_Codec/rst\
    );
\slv_reg10_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg10(1),
      R => \Audio_Codec/rst\
    );
\slv_reg10_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg10(20),
      R => \Audio_Codec/rst\
    );
\slv_reg10_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg10(21),
      R => \Audio_Codec/rst\
    );
\slv_reg10_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg10(22),
      R => \Audio_Codec/rst\
    );
\slv_reg10_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg10(23),
      R => \Audio_Codec/rst\
    );
\slv_reg10_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg10(24),
      R => \Audio_Codec/rst\
    );
\slv_reg10_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg10(25),
      R => \Audio_Codec/rst\
    );
\slv_reg10_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg10(26),
      R => \Audio_Codec/rst\
    );
\slv_reg10_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg10(27),
      R => \Audio_Codec/rst\
    );
\slv_reg10_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg10(28),
      R => \Audio_Codec/rst\
    );
\slv_reg10_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg10(29),
      R => \Audio_Codec/rst\
    );
\slv_reg10_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg10(2),
      R => \Audio_Codec/rst\
    );
\slv_reg10_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg10(30),
      R => \Audio_Codec/rst\
    );
\slv_reg10_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg10(31),
      R => \Audio_Codec/rst\
    );
\slv_reg10_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg10(3),
      R => \Audio_Codec/rst\
    );
\slv_reg10_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg10(4),
      R => \Audio_Codec/rst\
    );
\slv_reg10_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg10(5),
      R => \Audio_Codec/rst\
    );
\slv_reg10_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg10(6),
      R => \Audio_Codec/rst\
    );
\slv_reg10_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg10(7),
      R => \Audio_Codec/rst\
    );
\slv_reg10_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg10(8),
      R => \Audio_Codec/rst\
    );
\slv_reg10_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg10(9),
      R => \Audio_Codec/rst\
    );
\slv_reg11[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg11[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(1),
      O => \slv_reg11[15]_i_1_n_0\
    );
\slv_reg11[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg11[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(2),
      O => \slv_reg11[23]_i_1_n_0\
    );
\slv_reg11[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg11[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(3),
      O => \slv_reg11[31]_i_1_n_0\
    );
\slv_reg11[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000002A200000000"
    )
        port map (
      I0 => \slv_reg27[31]_i_2_n_0\,
      I1 => \axi_awaddr_reg_n_0_[6]\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_awaddr(4),
      I4 => mem_logic(4),
      I5 => s00_axi_wvalid,
      O => \slv_reg11[31]_i_2_n_0\
    );
\slv_reg11[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg11[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(0),
      O => \slv_reg11[7]_i_1_n_0\
    );
\slv_reg11_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg11(0),
      R => \Audio_Codec/rst\
    );
\slv_reg11_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \slv_reg11__0\(10),
      R => \Audio_Codec/rst\
    );
\slv_reg11_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \slv_reg11__0\(11),
      R => \Audio_Codec/rst\
    );
\slv_reg11_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \slv_reg11__0\(12),
      R => \Audio_Codec/rst\
    );
\slv_reg11_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \slv_reg11__0\(13),
      R => \Audio_Codec/rst\
    );
\slv_reg11_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \slv_reg11__0\(14),
      R => \Audio_Codec/rst\
    );
\slv_reg11_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \slv_reg11__0\(15),
      R => \Audio_Codec/rst\
    );
\slv_reg11_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \slv_reg11__0\(16),
      R => \Audio_Codec/rst\
    );
\slv_reg11_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \slv_reg11__0\(17),
      R => \Audio_Codec/rst\
    );
\slv_reg11_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \slv_reg11__0\(18),
      R => \Audio_Codec/rst\
    );
\slv_reg11_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \slv_reg11__0\(19),
      R => \Audio_Codec/rst\
    );
\slv_reg11_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \slv_reg11__0\(1),
      R => \Audio_Codec/rst\
    );
\slv_reg11_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \slv_reg11__0\(20),
      R => \Audio_Codec/rst\
    );
\slv_reg11_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \slv_reg11__0\(21),
      R => \Audio_Codec/rst\
    );
\slv_reg11_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \slv_reg11__0\(22),
      R => \Audio_Codec/rst\
    );
\slv_reg11_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \slv_reg11__0\(23),
      R => \Audio_Codec/rst\
    );
\slv_reg11_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \slv_reg11__0\(24),
      R => \Audio_Codec/rst\
    );
\slv_reg11_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \slv_reg11__0\(25),
      R => \Audio_Codec/rst\
    );
\slv_reg11_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \slv_reg11__0\(26),
      R => \Audio_Codec/rst\
    );
\slv_reg11_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \slv_reg11__0\(27),
      R => \Audio_Codec/rst\
    );
\slv_reg11_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \slv_reg11__0\(28),
      R => \Audio_Codec/rst\
    );
\slv_reg11_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \slv_reg11__0\(29),
      R => \Audio_Codec/rst\
    );
\slv_reg11_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \slv_reg11__0\(2),
      R => \Audio_Codec/rst\
    );
\slv_reg11_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \slv_reg11__0\(30),
      R => \Audio_Codec/rst\
    );
\slv_reg11_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \slv_reg11__0\(31),
      R => \Audio_Codec/rst\
    );
\slv_reg11_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \slv_reg11__0\(3),
      R => \Audio_Codec/rst\
    );
\slv_reg11_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \slv_reg11__0\(4),
      R => \Audio_Codec/rst\
    );
\slv_reg11_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \slv_reg11__0\(5),
      R => \Audio_Codec/rst\
    );
\slv_reg11_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \slv_reg11__0\(6),
      R => \Audio_Codec/rst\
    );
\slv_reg11_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \slv_reg11__0\(7),
      R => \Audio_Codec/rst\
    );
\slv_reg11_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \slv_reg11__0\(8),
      R => \Audio_Codec/rst\
    );
\slv_reg11_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \slv_reg11__0\(9),
      R => \Audio_Codec/rst\
    );
\slv_reg15[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg15[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(1),
      O => \slv_reg15[15]_i_1_n_0\
    );
\slv_reg15[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg15[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(2),
      O => \slv_reg15[23]_i_1_n_0\
    );
\slv_reg15[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg15[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(3),
      O => \slv_reg15[31]_i_1_n_0\
    );
\slv_reg15[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000A8080000"
    )
        port map (
      I0 => mem_logic(5),
      I1 => \axi_awaddr_reg_n_0_[4]\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_awaddr(2),
      I4 => \slv_reg15[31]_i_4_n_0\,
      I5 => \slv_reg15[31]_i_5_n_0\,
      O => \slv_reg15[31]_i_2_n_0\
    );
\slv_reg15[31]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s00_axi_awaddr(3),
      I1 => s00_axi_awvalid,
      I2 => \axi_awaddr_reg_n_0_[5]\,
      O => mem_logic(5)
    );
\slv_reg15[31]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02A2"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \axi_awaddr_reg_n_0_[6]\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_awaddr(4),
      O => \slv_reg15[31]_i_4_n_0\
    );
\slv_reg15[31]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[2]\,
      I1 => s00_axi_awaddr(0),
      I2 => \axi_awaddr_reg_n_0_[3]\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_awaddr(1),
      O => \slv_reg15[31]_i_5_n_0\
    );
\slv_reg15[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg15[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(0),
      O => \slv_reg15[7]_i_1_n_0\
    );
\slv_reg15_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg15(0),
      R => \Audio_Codec/rst\
    );
\slv_reg15_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg15(10),
      R => \Audio_Codec/rst\
    );
\slv_reg15_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg15(11),
      R => \Audio_Codec/rst\
    );
\slv_reg15_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg15(12),
      R => \Audio_Codec/rst\
    );
\slv_reg15_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg15(13),
      R => \Audio_Codec/rst\
    );
\slv_reg15_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg15(14),
      R => \Audio_Codec/rst\
    );
\slv_reg15_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg15(15),
      R => \Audio_Codec/rst\
    );
\slv_reg15_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg15(16),
      R => \Audio_Codec/rst\
    );
\slv_reg15_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg15(17),
      R => \Audio_Codec/rst\
    );
\slv_reg15_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg15(18),
      R => \Audio_Codec/rst\
    );
\slv_reg15_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg15(19),
      R => \Audio_Codec/rst\
    );
\slv_reg15_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg15(1),
      R => \Audio_Codec/rst\
    );
\slv_reg15_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg15(20),
      R => \Audio_Codec/rst\
    );
\slv_reg15_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg15(21),
      R => \Audio_Codec/rst\
    );
\slv_reg15_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg15(22),
      R => \Audio_Codec/rst\
    );
\slv_reg15_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg15(23),
      R => \Audio_Codec/rst\
    );
\slv_reg15_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg15(24),
      R => \Audio_Codec/rst\
    );
\slv_reg15_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg15(25),
      R => \Audio_Codec/rst\
    );
\slv_reg15_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg15(26),
      R => \Audio_Codec/rst\
    );
\slv_reg15_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg15(27),
      R => \Audio_Codec/rst\
    );
\slv_reg15_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg15(28),
      R => \Audio_Codec/rst\
    );
\slv_reg15_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg15(29),
      R => \Audio_Codec/rst\
    );
\slv_reg15_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg15(2),
      R => \Audio_Codec/rst\
    );
\slv_reg15_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg15(30),
      R => \Audio_Codec/rst\
    );
\slv_reg15_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg15(31),
      R => \Audio_Codec/rst\
    );
\slv_reg15_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg15(3),
      R => \Audio_Codec/rst\
    );
\slv_reg15_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg15(4),
      R => \Audio_Codec/rst\
    );
\slv_reg15_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg15(5),
      R => \Audio_Codec/rst\
    );
\slv_reg15_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg15(6),
      R => \Audio_Codec/rst\
    );
\slv_reg15_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg15(7),
      R => \Audio_Codec/rst\
    );
\slv_reg15_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg15(8),
      R => \Audio_Codec/rst\
    );
\slv_reg15_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg15(9),
      R => \Audio_Codec/rst\
    );
\slv_reg16[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg16[15]_i_2_n_0\,
      I1 => \slv_reg16[31]_i_3_n_0\,
      O => \slv_reg16[15]_i_1_n_0\
    );
\slv_reg16[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5404000000000000"
    )
        port map (
      I0 => mem_logic(4),
      I1 => \axi_awaddr_reg_n_0_[6]\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_awaddr(4),
      I4 => s00_axi_wvalid,
      I5 => s00_axi_wstrb(1),
      O => \slv_reg16[15]_i_2_n_0\
    );
\slv_reg16[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg16[23]_i_2_n_0\,
      I1 => \slv_reg16[31]_i_3_n_0\,
      O => \slv_reg16[23]_i_1_n_0\
    );
\slv_reg16[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5404000000000000"
    )
        port map (
      I0 => mem_logic(4),
      I1 => \axi_awaddr_reg_n_0_[6]\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_awaddr(4),
      I4 => s00_axi_wvalid,
      I5 => s00_axi_wstrb(2),
      O => \slv_reg16[23]_i_2_n_0\
    );
\slv_reg16[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg16[31]_i_2_n_0\,
      I1 => \slv_reg16[31]_i_3_n_0\,
      O => \slv_reg16[31]_i_1_n_0\
    );
\slv_reg16[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5404000000000000"
    )
        port map (
      I0 => mem_logic(4),
      I1 => \axi_awaddr_reg_n_0_[6]\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_awaddr(4),
      I4 => s00_axi_wvalid,
      I5 => s00_axi_wstrb(3),
      O => \slv_reg16[31]_i_2_n_0\
    );
\slv_reg16[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000440347"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => s00_axi_awvalid,
      I2 => \axi_awaddr_reg_n_0_[2]\,
      I3 => s00_axi_awaddr(3),
      I4 => \axi_awaddr_reg_n_0_[5]\,
      I5 => mem_logic(3),
      O => \slv_reg16[31]_i_3_n_0\
    );
\slv_reg16[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg16[7]_i_2_n_0\,
      I1 => \slv_reg16[31]_i_3_n_0\,
      O => \slv_reg16[7]_i_1_n_0\
    );
\slv_reg16[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5404000000000000"
    )
        port map (
      I0 => mem_logic(4),
      I1 => \axi_awaddr_reg_n_0_[6]\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_awaddr(4),
      I4 => s00_axi_wvalid,
      I5 => s00_axi_wstrb(0),
      O => \slv_reg16[7]_i_2_n_0\
    );
\slv_reg16_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg16[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg16(0),
      R => \Audio_Codec/rst\
    );
\slv_reg16_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg16[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg16(10),
      R => \Audio_Codec/rst\
    );
\slv_reg16_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg16[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg16(11),
      R => \Audio_Codec/rst\
    );
\slv_reg16_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg16[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg16(12),
      R => \Audio_Codec/rst\
    );
\slv_reg16_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg16[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg16(13),
      R => \Audio_Codec/rst\
    );
\slv_reg16_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg16[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg16(14),
      R => \Audio_Codec/rst\
    );
\slv_reg16_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg16[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg16(15),
      R => \Audio_Codec/rst\
    );
\slv_reg16_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg16[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg16(16),
      R => \Audio_Codec/rst\
    );
\slv_reg16_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg16[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg16(17),
      R => \Audio_Codec/rst\
    );
\slv_reg16_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg16[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg16(18),
      R => \Audio_Codec/rst\
    );
\slv_reg16_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg16[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg16(19),
      R => \Audio_Codec/rst\
    );
\slv_reg16_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg16[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg16(1),
      R => \Audio_Codec/rst\
    );
\slv_reg16_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg16[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg16(20),
      R => \Audio_Codec/rst\
    );
\slv_reg16_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg16[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg16(21),
      R => \Audio_Codec/rst\
    );
\slv_reg16_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg16[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg16(22),
      R => \Audio_Codec/rst\
    );
\slv_reg16_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg16[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg16(23),
      R => \Audio_Codec/rst\
    );
\slv_reg16_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg16[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg16(24),
      R => \Audio_Codec/rst\
    );
\slv_reg16_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg16[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg16(25),
      R => \Audio_Codec/rst\
    );
\slv_reg16_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg16[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg16(26),
      R => \Audio_Codec/rst\
    );
\slv_reg16_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg16[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg16(27),
      R => \Audio_Codec/rst\
    );
\slv_reg16_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg16[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg16(28),
      R => \Audio_Codec/rst\
    );
\slv_reg16_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg16[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg16(29),
      R => \Audio_Codec/rst\
    );
\slv_reg16_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg16[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg16(2),
      R => \Audio_Codec/rst\
    );
\slv_reg16_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg16[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg16(30),
      R => \Audio_Codec/rst\
    );
\slv_reg16_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg16[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg16(31),
      R => \Audio_Codec/rst\
    );
\slv_reg16_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg16[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg16(3),
      R => \Audio_Codec/rst\
    );
\slv_reg16_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg16[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg16(4),
      R => \Audio_Codec/rst\
    );
\slv_reg16_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg16[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg16(5),
      R => \Audio_Codec/rst\
    );
\slv_reg16_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg16[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg16(6),
      R => \Audio_Codec/rst\
    );
\slv_reg16_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg16[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg16(7),
      R => \Audio_Codec/rst\
    );
\slv_reg16_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg16[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg16(8),
      R => \Audio_Codec/rst\
    );
\slv_reg16_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg16[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg16(9),
      R => \Audio_Codec/rst\
    );
\slv_reg17[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg16[15]_i_2_n_0\,
      I1 => \slv_reg17[31]_i_2_n_0\,
      O => \slv_reg17[15]_i_1_n_0\
    );
\slv_reg17[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg16[23]_i_2_n_0\,
      I1 => \slv_reg17[31]_i_2_n_0\,
      O => \slv_reg17[23]_i_1_n_0\
    );
\slv_reg17[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg16[31]_i_2_n_0\,
      I1 => \slv_reg17[31]_i_2_n_0\,
      O => \slv_reg17[31]_i_1_n_0\
    );
\slv_reg17[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000C0000000C0A0A"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[2]\,
      I1 => s00_axi_awaddr(0),
      I2 => mem_logic(3),
      I3 => s00_axi_awaddr(3),
      I4 => s00_axi_awvalid,
      I5 => \axi_awaddr_reg_n_0_[5]\,
      O => \slv_reg17[31]_i_2_n_0\
    );
\slv_reg17[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg16[7]_i_2_n_0\,
      I1 => \slv_reg17[31]_i_2_n_0\,
      O => \slv_reg17[7]_i_1_n_0\
    );
\slv_reg17_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg17[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg17(0),
      R => \Audio_Codec/rst\
    );
\slv_reg17_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg17[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg17(10),
      R => \Audio_Codec/rst\
    );
\slv_reg17_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg17[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg17(11),
      R => \Audio_Codec/rst\
    );
\slv_reg17_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg17[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg17(12),
      R => \Audio_Codec/rst\
    );
\slv_reg17_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg17[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg17(13),
      R => \Audio_Codec/rst\
    );
\slv_reg17_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg17[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg17(14),
      R => \Audio_Codec/rst\
    );
\slv_reg17_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg17[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg17(15),
      R => \Audio_Codec/rst\
    );
\slv_reg17_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg17[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg17(16),
      R => \Audio_Codec/rst\
    );
\slv_reg17_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg17[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg17(17),
      R => \Audio_Codec/rst\
    );
\slv_reg17_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg17[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg17(18),
      R => \Audio_Codec/rst\
    );
\slv_reg17_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg17[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg17(19),
      R => \Audio_Codec/rst\
    );
\slv_reg17_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg17[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg17(1),
      R => \Audio_Codec/rst\
    );
\slv_reg17_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg17[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg17(20),
      R => \Audio_Codec/rst\
    );
\slv_reg17_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg17[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg17(21),
      R => \Audio_Codec/rst\
    );
\slv_reg17_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg17[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg17(22),
      R => \Audio_Codec/rst\
    );
\slv_reg17_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg17[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg17(23),
      R => \Audio_Codec/rst\
    );
\slv_reg17_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg17[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg17(24),
      R => \Audio_Codec/rst\
    );
\slv_reg17_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg17[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg17(25),
      R => \Audio_Codec/rst\
    );
\slv_reg17_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg17[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg17(26),
      R => \Audio_Codec/rst\
    );
\slv_reg17_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg17[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg17(27),
      R => \Audio_Codec/rst\
    );
\slv_reg17_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg17[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg17(28),
      R => \Audio_Codec/rst\
    );
\slv_reg17_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg17[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg17(29),
      R => \Audio_Codec/rst\
    );
\slv_reg17_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg17[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg17(2),
      R => \Audio_Codec/rst\
    );
\slv_reg17_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg17[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg17(30),
      R => \Audio_Codec/rst\
    );
\slv_reg17_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg17[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg17(31),
      R => \Audio_Codec/rst\
    );
\slv_reg17_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg17[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg17(3),
      R => \Audio_Codec/rst\
    );
\slv_reg17_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg17[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg17(4),
      R => \Audio_Codec/rst\
    );
\slv_reg17_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg17[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg17(5),
      R => \Audio_Codec/rst\
    );
\slv_reg17_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg17[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg17(6),
      R => \Audio_Codec/rst\
    );
\slv_reg17_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg17[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg17(7),
      R => \Audio_Codec/rst\
    );
\slv_reg17_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg17[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg17(8),
      R => \Audio_Codec/rst\
    );
\slv_reg17_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg17[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg17(9),
      R => \Audio_Codec/rst\
    );
\slv_reg18[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg16[15]_i_2_n_0\,
      I1 => \slv_reg18[31]_i_2_n_0\,
      O => \slv_reg18[15]_i_1_n_0\
    );
\slv_reg18[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg16[23]_i_2_n_0\,
      I1 => \slv_reg18[31]_i_2_n_0\,
      O => \slv_reg18[23]_i_1_n_0\
    );
\slv_reg18[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg16[31]_i_2_n_0\,
      I1 => \slv_reg18[31]_i_2_n_0\,
      O => \slv_reg18[31]_i_1_n_0\
    );
\slv_reg18[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00002020000A202A"
    )
        port map (
      I0 => mem_logic(3),
      I1 => s00_axi_awaddr(0),
      I2 => s00_axi_awvalid,
      I3 => \axi_awaddr_reg_n_0_[2]\,
      I4 => s00_axi_awaddr(3),
      I5 => \axi_awaddr_reg_n_0_[5]\,
      O => \slv_reg18[31]_i_2_n_0\
    );
\slv_reg18[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg16[7]_i_2_n_0\,
      I1 => \slv_reg18[31]_i_2_n_0\,
      O => \slv_reg18[7]_i_1_n_0\
    );
\slv_reg18_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg18[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg18(0),
      R => \Audio_Codec/rst\
    );
\slv_reg18_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg18[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg18(10),
      R => \Audio_Codec/rst\
    );
\slv_reg18_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg18[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg18(11),
      R => \Audio_Codec/rst\
    );
\slv_reg18_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg18[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg18(12),
      R => \Audio_Codec/rst\
    );
\slv_reg18_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg18[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg18(13),
      R => \Audio_Codec/rst\
    );
\slv_reg18_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg18[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg18(14),
      R => \Audio_Codec/rst\
    );
\slv_reg18_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg18[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg18(15),
      R => \Audio_Codec/rst\
    );
\slv_reg18_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg18[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg18(16),
      R => \Audio_Codec/rst\
    );
\slv_reg18_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg18[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg18(17),
      R => \Audio_Codec/rst\
    );
\slv_reg18_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg18[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg18(18),
      R => \Audio_Codec/rst\
    );
\slv_reg18_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg18[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg18(19),
      R => \Audio_Codec/rst\
    );
\slv_reg18_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg18[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg18(1),
      R => \Audio_Codec/rst\
    );
\slv_reg18_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg18[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg18(20),
      R => \Audio_Codec/rst\
    );
\slv_reg18_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg18[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg18(21),
      R => \Audio_Codec/rst\
    );
\slv_reg18_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg18[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg18(22),
      R => \Audio_Codec/rst\
    );
\slv_reg18_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg18[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg18(23),
      R => \Audio_Codec/rst\
    );
\slv_reg18_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg18[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg18(24),
      R => \Audio_Codec/rst\
    );
\slv_reg18_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg18[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg18(25),
      R => \Audio_Codec/rst\
    );
\slv_reg18_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg18[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg18(26),
      R => \Audio_Codec/rst\
    );
\slv_reg18_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg18[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg18(27),
      R => \Audio_Codec/rst\
    );
\slv_reg18_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg18[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg18(28),
      R => \Audio_Codec/rst\
    );
\slv_reg18_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg18[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg18(29),
      R => \Audio_Codec/rst\
    );
\slv_reg18_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg18[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg18(2),
      R => \Audio_Codec/rst\
    );
\slv_reg18_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg18[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg18(30),
      R => \Audio_Codec/rst\
    );
\slv_reg18_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg18[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg18(31),
      R => \Audio_Codec/rst\
    );
\slv_reg18_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg18[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg18(3),
      R => \Audio_Codec/rst\
    );
\slv_reg18_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg18[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg18(4),
      R => \Audio_Codec/rst\
    );
\slv_reg18_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg18[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg18(5),
      R => \Audio_Codec/rst\
    );
\slv_reg18_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg18[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg18(6),
      R => \Audio_Codec/rst\
    );
\slv_reg18_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg18[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg18(7),
      R => \Audio_Codec/rst\
    );
\slv_reg18_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg18[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg18(8),
      R => \Audio_Codec/rst\
    );
\slv_reg18_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg18[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg18(9),
      R => \Audio_Codec/rst\
    );
\slv_reg19[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg16[15]_i_2_n_0\,
      I1 => \slv_reg19[31]_i_2_n_0\,
      O => \slv_reg19[15]_i_1_n_0\
    );
\slv_reg19[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg16[23]_i_2_n_0\,
      I1 => \slv_reg19[31]_i_2_n_0\,
      O => \slv_reg19[23]_i_1_n_0\
    );
\slv_reg19[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg16[31]_i_2_n_0\,
      I1 => \slv_reg19[31]_i_2_n_0\,
      O => \slv_reg19[31]_i_1_n_0\
    );
\slv_reg19[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000A0888800A0"
    )
        port map (
      I0 => mem_logic(3),
      I1 => s00_axi_awaddr(0),
      I2 => \axi_awaddr_reg_n_0_[2]\,
      I3 => \axi_awaddr_reg_n_0_[5]\,
      I4 => s00_axi_awvalid,
      I5 => s00_axi_awaddr(3),
      O => \slv_reg19[31]_i_2_n_0\
    );
\slv_reg19[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg16[7]_i_2_n_0\,
      I1 => \slv_reg19[31]_i_2_n_0\,
      O => \slv_reg19[7]_i_1_n_0\
    );
\slv_reg19_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg19[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg19(0),
      R => \Audio_Codec/rst\
    );
\slv_reg19_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg19[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg19(10),
      R => \Audio_Codec/rst\
    );
\slv_reg19_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg19[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg19(11),
      R => \Audio_Codec/rst\
    );
\slv_reg19_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg19[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg19(12),
      R => \Audio_Codec/rst\
    );
\slv_reg19_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg19[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg19(13),
      R => \Audio_Codec/rst\
    );
\slv_reg19_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg19[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg19(14),
      R => \Audio_Codec/rst\
    );
\slv_reg19_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg19[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg19(15),
      R => \Audio_Codec/rst\
    );
\slv_reg19_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg19[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg19(16),
      R => \Audio_Codec/rst\
    );
\slv_reg19_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg19[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg19(17),
      R => \Audio_Codec/rst\
    );
\slv_reg19_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg19[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg19(18),
      R => \Audio_Codec/rst\
    );
\slv_reg19_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg19[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg19(19),
      R => \Audio_Codec/rst\
    );
\slv_reg19_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg19[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg19(1),
      R => \Audio_Codec/rst\
    );
\slv_reg19_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg19[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg19(20),
      R => \Audio_Codec/rst\
    );
\slv_reg19_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg19[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg19(21),
      R => \Audio_Codec/rst\
    );
\slv_reg19_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg19[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg19(22),
      R => \Audio_Codec/rst\
    );
\slv_reg19_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg19[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg19(23),
      R => \Audio_Codec/rst\
    );
\slv_reg19_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg19[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg19(24),
      R => \Audio_Codec/rst\
    );
\slv_reg19_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg19[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg19(25),
      R => \Audio_Codec/rst\
    );
\slv_reg19_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg19[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg19(26),
      R => \Audio_Codec/rst\
    );
\slv_reg19_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg19[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg19(27),
      R => \Audio_Codec/rst\
    );
\slv_reg19_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg19[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg19(28),
      R => \Audio_Codec/rst\
    );
\slv_reg19_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg19[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg19(29),
      R => \Audio_Codec/rst\
    );
\slv_reg19_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg19[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg19(2),
      R => \Audio_Codec/rst\
    );
\slv_reg19_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg19[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg19(30),
      R => \Audio_Codec/rst\
    );
\slv_reg19_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg19[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg19(31),
      R => \Audio_Codec/rst\
    );
\slv_reg19_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg19[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg19(3),
      R => \Audio_Codec/rst\
    );
\slv_reg19_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg19[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg19(4),
      R => \Audio_Codec/rst\
    );
\slv_reg19_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg19[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg19(5),
      R => \Audio_Codec/rst\
    );
\slv_reg19_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg19[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg19(6),
      R => \Audio_Codec/rst\
    );
\slv_reg19_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg19[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg19(7),
      R => \Audio_Codec/rst\
    );
\slv_reg19_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg19[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg19(8),
      R => \Audio_Codec/rst\
    );
\slv_reg19_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg19[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg19(9),
      R => \Audio_Codec/rst\
    );
\slv_reg1[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg1[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(1),
      O => p_1_in(15)
    );
\slv_reg1[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg1[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(2),
      O => p_1_in(23)
    );
\slv_reg1[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg1[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(3),
      O => p_1_in(31)
    );
\slv_reg1[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000002A200000000"
    )
        port map (
      I0 => \slv_reg17[31]_i_2_n_0\,
      I1 => \axi_awaddr_reg_n_0_[6]\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_awaddr(4),
      I4 => mem_logic(4),
      I5 => s00_axi_wvalid,
      O => \slv_reg1[31]_i_2_n_0\
    );
\slv_reg1[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg1[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(0),
      O => p_1_in(7)
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(0),
      Q => slv_reg1(0),
      R => \Audio_Codec/rst\
    );
\slv_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(10),
      Q => slv_reg1(10),
      R => \Audio_Codec/rst\
    );
\slv_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(11),
      Q => slv_reg1(11),
      R => \Audio_Codec/rst\
    );
\slv_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(12),
      Q => slv_reg1(12),
      R => \Audio_Codec/rst\
    );
\slv_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(13),
      Q => slv_reg1(13),
      R => \Audio_Codec/rst\
    );
\slv_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(14),
      Q => slv_reg1(14),
      R => \Audio_Codec/rst\
    );
\slv_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(15),
      Q => slv_reg1(15),
      R => \Audio_Codec/rst\
    );
\slv_reg1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(16),
      Q => slv_reg1(16),
      R => \Audio_Codec/rst\
    );
\slv_reg1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(17),
      Q => slv_reg1(17),
      R => \Audio_Codec/rst\
    );
\slv_reg1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(18),
      Q => slv_reg1(18),
      R => \Audio_Codec/rst\
    );
\slv_reg1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(19),
      Q => slv_reg1(19),
      R => \Audio_Codec/rst\
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(1),
      Q => slv_reg1(1),
      R => \Audio_Codec/rst\
    );
\slv_reg1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(20),
      Q => slv_reg1(20),
      R => \Audio_Codec/rst\
    );
\slv_reg1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(21),
      Q => slv_reg1(21),
      R => \Audio_Codec/rst\
    );
\slv_reg1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(22),
      Q => slv_reg1(22),
      R => \Audio_Codec/rst\
    );
\slv_reg1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(23),
      Q => slv_reg1(23),
      R => \Audio_Codec/rst\
    );
\slv_reg1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(24),
      Q => slv_reg1(24),
      R => \Audio_Codec/rst\
    );
\slv_reg1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(25),
      Q => slv_reg1(25),
      R => \Audio_Codec/rst\
    );
\slv_reg1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(26),
      Q => slv_reg1(26),
      R => \Audio_Codec/rst\
    );
\slv_reg1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(27),
      Q => slv_reg1(27),
      R => \Audio_Codec/rst\
    );
\slv_reg1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(28),
      Q => slv_reg1(28),
      R => \Audio_Codec/rst\
    );
\slv_reg1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(29),
      Q => slv_reg1(29),
      R => \Audio_Codec/rst\
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(2),
      Q => slv_reg1(2),
      R => \Audio_Codec/rst\
    );
\slv_reg1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(30),
      Q => slv_reg1(30),
      R => \Audio_Codec/rst\
    );
\slv_reg1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(31),
      Q => slv_reg1(31),
      R => \Audio_Codec/rst\
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(3),
      Q => slv_reg1(3),
      R => \Audio_Codec/rst\
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(4),
      Q => slv_reg1(4),
      R => \Audio_Codec/rst\
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(5),
      Q => slv_reg1(5),
      R => \Audio_Codec/rst\
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(6),
      Q => slv_reg1(6),
      R => \Audio_Codec/rst\
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(7),
      Q => slv_reg1(7),
      R => \Audio_Codec/rst\
    );
\slv_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(8),
      Q => slv_reg1(8),
      R => \Audio_Codec/rst\
    );
\slv_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(9),
      Q => slv_reg1(9),
      R => \Audio_Codec/rst\
    );
\slv_reg20[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg20[15]_i_2_n_0\,
      I1 => \slv_reg16[31]_i_3_n_0\,
      O => \slv_reg20[15]_i_1_n_0\
    );
\slv_reg20[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A808000000000000"
    )
        port map (
      I0 => mem_logic(4),
      I1 => \axi_awaddr_reg_n_0_[6]\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_awaddr(4),
      I4 => s00_axi_wvalid,
      I5 => s00_axi_wstrb(1),
      O => \slv_reg20[15]_i_2_n_0\
    );
\slv_reg20[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg20[23]_i_2_n_0\,
      I1 => \slv_reg16[31]_i_3_n_0\,
      O => \slv_reg20[23]_i_1_n_0\
    );
\slv_reg20[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A808000000000000"
    )
        port map (
      I0 => mem_logic(4),
      I1 => \axi_awaddr_reg_n_0_[6]\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_awaddr(4),
      I4 => s00_axi_wvalid,
      I5 => s00_axi_wstrb(2),
      O => \slv_reg20[23]_i_2_n_0\
    );
\slv_reg20[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg20[31]_i_2_n_0\,
      I1 => \slv_reg16[31]_i_3_n_0\,
      O => \slv_reg20[31]_i_1_n_0\
    );
\slv_reg20[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A808000000000000"
    )
        port map (
      I0 => mem_logic(4),
      I1 => \axi_awaddr_reg_n_0_[6]\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_awaddr(4),
      I4 => s00_axi_wvalid,
      I5 => s00_axi_wstrb(3),
      O => \slv_reg20[31]_i_2_n_0\
    );
\slv_reg20[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg20[7]_i_2_n_0\,
      I1 => \slv_reg16[31]_i_3_n_0\,
      O => \slv_reg20[7]_i_1_n_0\
    );
\slv_reg20[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A808000000000000"
    )
        port map (
      I0 => mem_logic(4),
      I1 => \axi_awaddr_reg_n_0_[6]\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_awaddr(4),
      I4 => s00_axi_wvalid,
      I5 => s00_axi_wstrb(0),
      O => \slv_reg20[7]_i_2_n_0\
    );
\slv_reg20_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg20[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg20(0),
      R => \Audio_Codec/rst\
    );
\slv_reg20_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg20[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg20(10),
      R => \Audio_Codec/rst\
    );
\slv_reg20_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg20[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg20(11),
      R => \Audio_Codec/rst\
    );
\slv_reg20_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg20[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg20(12),
      R => \Audio_Codec/rst\
    );
\slv_reg20_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg20[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg20(13),
      R => \Audio_Codec/rst\
    );
\slv_reg20_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg20[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg20(14),
      R => \Audio_Codec/rst\
    );
\slv_reg20_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg20[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg20(15),
      R => \Audio_Codec/rst\
    );
\slv_reg20_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg20[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg20(16),
      R => \Audio_Codec/rst\
    );
\slv_reg20_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg20[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg20(17),
      R => \Audio_Codec/rst\
    );
\slv_reg20_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg20[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg20(18),
      R => \Audio_Codec/rst\
    );
\slv_reg20_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg20[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg20(19),
      R => \Audio_Codec/rst\
    );
\slv_reg20_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg20[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg20(1),
      R => \Audio_Codec/rst\
    );
\slv_reg20_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg20[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg20(20),
      R => \Audio_Codec/rst\
    );
\slv_reg20_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg20[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg20(21),
      R => \Audio_Codec/rst\
    );
\slv_reg20_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg20[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg20(22),
      R => \Audio_Codec/rst\
    );
\slv_reg20_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg20[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg20(23),
      R => \Audio_Codec/rst\
    );
\slv_reg20_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg20[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg20(24),
      R => \Audio_Codec/rst\
    );
\slv_reg20_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg20[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg20(25),
      R => \Audio_Codec/rst\
    );
\slv_reg20_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg20[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg20(26),
      R => \Audio_Codec/rst\
    );
\slv_reg20_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg20[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg20(27),
      R => \Audio_Codec/rst\
    );
\slv_reg20_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg20[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg20(28),
      R => \Audio_Codec/rst\
    );
\slv_reg20_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg20[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg20(29),
      R => \Audio_Codec/rst\
    );
\slv_reg20_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg20[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg20(2),
      R => \Audio_Codec/rst\
    );
\slv_reg20_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg20[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg20(30),
      R => \Audio_Codec/rst\
    );
\slv_reg20_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg20[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg20(31),
      R => \Audio_Codec/rst\
    );
\slv_reg20_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg20[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg20(3),
      R => \Audio_Codec/rst\
    );
\slv_reg20_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg20[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg20(4),
      R => \Audio_Codec/rst\
    );
\slv_reg20_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg20[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg20(5),
      R => \Audio_Codec/rst\
    );
\slv_reg20_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg20[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg20(6),
      R => \Audio_Codec/rst\
    );
\slv_reg20_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg20[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg20(7),
      R => \Audio_Codec/rst\
    );
\slv_reg20_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg20[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg20(8),
      R => \Audio_Codec/rst\
    );
\slv_reg20_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg20[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg20(9),
      R => \Audio_Codec/rst\
    );
\slv_reg21[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg20[15]_i_2_n_0\,
      I1 => \slv_reg17[31]_i_2_n_0\,
      O => \slv_reg21[15]_i_1_n_0\
    );
\slv_reg21[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg20[23]_i_2_n_0\,
      I1 => \slv_reg17[31]_i_2_n_0\,
      O => \slv_reg21[23]_i_1_n_0\
    );
\slv_reg21[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg20[31]_i_2_n_0\,
      I1 => \slv_reg17[31]_i_2_n_0\,
      O => \slv_reg21[31]_i_1_n_0\
    );
\slv_reg21[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg20[7]_i_2_n_0\,
      I1 => \slv_reg17[31]_i_2_n_0\,
      O => \slv_reg21[7]_i_1_n_0\
    );
\slv_reg21_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg21[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg21(0),
      R => \Audio_Codec/rst\
    );
\slv_reg21_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg21[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg21(10),
      R => \Audio_Codec/rst\
    );
\slv_reg21_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg21[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg21(11),
      R => \Audio_Codec/rst\
    );
\slv_reg21_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg21[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg21(12),
      R => \Audio_Codec/rst\
    );
\slv_reg21_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg21[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg21(13),
      R => \Audio_Codec/rst\
    );
\slv_reg21_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg21[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg21(14),
      R => \Audio_Codec/rst\
    );
\slv_reg21_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg21[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg21(15),
      R => \Audio_Codec/rst\
    );
\slv_reg21_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg21[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg21(16),
      R => \Audio_Codec/rst\
    );
\slv_reg21_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg21[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg21(17),
      R => \Audio_Codec/rst\
    );
\slv_reg21_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg21[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg21(18),
      R => \Audio_Codec/rst\
    );
\slv_reg21_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg21[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg21(19),
      R => \Audio_Codec/rst\
    );
\slv_reg21_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg21[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg21(1),
      R => \Audio_Codec/rst\
    );
\slv_reg21_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg21[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg21(20),
      R => \Audio_Codec/rst\
    );
\slv_reg21_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg21[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg21(21),
      R => \Audio_Codec/rst\
    );
\slv_reg21_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg21[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg21(22),
      R => \Audio_Codec/rst\
    );
\slv_reg21_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg21[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg21(23),
      R => \Audio_Codec/rst\
    );
\slv_reg21_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg21[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg21(24),
      R => \Audio_Codec/rst\
    );
\slv_reg21_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg21[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg21(25),
      R => \Audio_Codec/rst\
    );
\slv_reg21_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg21[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg21(26),
      R => \Audio_Codec/rst\
    );
\slv_reg21_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg21[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg21(27),
      R => \Audio_Codec/rst\
    );
\slv_reg21_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg21[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg21(28),
      R => \Audio_Codec/rst\
    );
\slv_reg21_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg21[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg21(29),
      R => \Audio_Codec/rst\
    );
\slv_reg21_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg21[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg21(2),
      R => \Audio_Codec/rst\
    );
\slv_reg21_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg21[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg21(30),
      R => \Audio_Codec/rst\
    );
\slv_reg21_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg21[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg21(31),
      R => \Audio_Codec/rst\
    );
\slv_reg21_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg21[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg21(3),
      R => \Audio_Codec/rst\
    );
\slv_reg21_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg21[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg21(4),
      R => \Audio_Codec/rst\
    );
\slv_reg21_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg21[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg21(5),
      R => \Audio_Codec/rst\
    );
\slv_reg21_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg21[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg21(6),
      R => \Audio_Codec/rst\
    );
\slv_reg21_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg21[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg21(7),
      R => \Audio_Codec/rst\
    );
\slv_reg21_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg21[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg21(8),
      R => \Audio_Codec/rst\
    );
\slv_reg21_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg21[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg21(9),
      R => \Audio_Codec/rst\
    );
\slv_reg22[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg20[15]_i_2_n_0\,
      I1 => \slv_reg18[31]_i_2_n_0\,
      O => \slv_reg22[15]_i_1_n_0\
    );
\slv_reg22[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg20[23]_i_2_n_0\,
      I1 => \slv_reg18[31]_i_2_n_0\,
      O => \slv_reg22[23]_i_1_n_0\
    );
\slv_reg22[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg20[31]_i_2_n_0\,
      I1 => \slv_reg18[31]_i_2_n_0\,
      O => \slv_reg22[31]_i_1_n_0\
    );
\slv_reg22[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg20[7]_i_2_n_0\,
      I1 => \slv_reg18[31]_i_2_n_0\,
      O => \slv_reg22[7]_i_1_n_0\
    );
\slv_reg22_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg22[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg22(0),
      R => \Audio_Codec/rst\
    );
\slv_reg22_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg22[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg22(10),
      R => \Audio_Codec/rst\
    );
\slv_reg22_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg22[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg22(11),
      R => \Audio_Codec/rst\
    );
\slv_reg22_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg22[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg22(12),
      R => \Audio_Codec/rst\
    );
\slv_reg22_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg22[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg22(13),
      R => \Audio_Codec/rst\
    );
\slv_reg22_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg22[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg22(14),
      R => \Audio_Codec/rst\
    );
\slv_reg22_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg22[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg22(15),
      R => \Audio_Codec/rst\
    );
\slv_reg22_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg22[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg22(16),
      R => \Audio_Codec/rst\
    );
\slv_reg22_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg22[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg22(17),
      R => \Audio_Codec/rst\
    );
\slv_reg22_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg22[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg22(18),
      R => \Audio_Codec/rst\
    );
\slv_reg22_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg22[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg22(19),
      R => \Audio_Codec/rst\
    );
\slv_reg22_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg22[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg22(1),
      R => \Audio_Codec/rst\
    );
\slv_reg22_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg22[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg22(20),
      R => \Audio_Codec/rst\
    );
\slv_reg22_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg22[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg22(21),
      R => \Audio_Codec/rst\
    );
\slv_reg22_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg22[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg22(22),
      R => \Audio_Codec/rst\
    );
\slv_reg22_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg22[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg22(23),
      R => \Audio_Codec/rst\
    );
\slv_reg22_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg22[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg22(24),
      R => \Audio_Codec/rst\
    );
\slv_reg22_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg22[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg22(25),
      R => \Audio_Codec/rst\
    );
\slv_reg22_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg22[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg22(26),
      R => \Audio_Codec/rst\
    );
\slv_reg22_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg22[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg22(27),
      R => \Audio_Codec/rst\
    );
\slv_reg22_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg22[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg22(28),
      R => \Audio_Codec/rst\
    );
\slv_reg22_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg22[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg22(29),
      R => \Audio_Codec/rst\
    );
\slv_reg22_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg22[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg22(2),
      R => \Audio_Codec/rst\
    );
\slv_reg22_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg22[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg22(30),
      R => \Audio_Codec/rst\
    );
\slv_reg22_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg22[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg22(31),
      R => \Audio_Codec/rst\
    );
\slv_reg22_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg22[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg22(3),
      R => \Audio_Codec/rst\
    );
\slv_reg22_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg22[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg22(4),
      R => \Audio_Codec/rst\
    );
\slv_reg22_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg22[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg22(5),
      R => \Audio_Codec/rst\
    );
\slv_reg22_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg22[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg22(6),
      R => \Audio_Codec/rst\
    );
\slv_reg22_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg22[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg22(7),
      R => \Audio_Codec/rst\
    );
\slv_reg22_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg22[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg22(8),
      R => \Audio_Codec/rst\
    );
\slv_reg22_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg22[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg22(9),
      R => \Audio_Codec/rst\
    );
\slv_reg23[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg20[15]_i_2_n_0\,
      I1 => \slv_reg19[31]_i_2_n_0\,
      O => \slv_reg23[15]_i_1_n_0\
    );
\slv_reg23[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg20[23]_i_2_n_0\,
      I1 => \slv_reg19[31]_i_2_n_0\,
      O => \slv_reg23[23]_i_1_n_0\
    );
\slv_reg23[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg20[31]_i_2_n_0\,
      I1 => \slv_reg19[31]_i_2_n_0\,
      O => \slv_reg23[31]_i_1_n_0\
    );
\slv_reg23[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg20[7]_i_2_n_0\,
      I1 => \slv_reg19[31]_i_2_n_0\,
      O => \slv_reg23[7]_i_1_n_0\
    );
\slv_reg23_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg23[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg23(0),
      R => \Audio_Codec/rst\
    );
\slv_reg23_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg23[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg23(10),
      R => \Audio_Codec/rst\
    );
\slv_reg23_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg23[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg23(11),
      R => \Audio_Codec/rst\
    );
\slv_reg23_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg23[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg23(12),
      R => \Audio_Codec/rst\
    );
\slv_reg23_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg23[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg23(13),
      R => \Audio_Codec/rst\
    );
\slv_reg23_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg23[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg23(14),
      R => \Audio_Codec/rst\
    );
\slv_reg23_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg23[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg23(15),
      R => \Audio_Codec/rst\
    );
\slv_reg23_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg23[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg23(16),
      R => \Audio_Codec/rst\
    );
\slv_reg23_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg23[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg23(17),
      R => \Audio_Codec/rst\
    );
\slv_reg23_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg23[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg23(18),
      R => \Audio_Codec/rst\
    );
\slv_reg23_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg23[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg23(19),
      R => \Audio_Codec/rst\
    );
\slv_reg23_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg23[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg23(1),
      R => \Audio_Codec/rst\
    );
\slv_reg23_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg23[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg23(20),
      R => \Audio_Codec/rst\
    );
\slv_reg23_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg23[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg23(21),
      R => \Audio_Codec/rst\
    );
\slv_reg23_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg23[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg23(22),
      R => \Audio_Codec/rst\
    );
\slv_reg23_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg23[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg23(23),
      R => \Audio_Codec/rst\
    );
\slv_reg23_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg23[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg23(24),
      R => \Audio_Codec/rst\
    );
\slv_reg23_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg23[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg23(25),
      R => \Audio_Codec/rst\
    );
\slv_reg23_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg23[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg23(26),
      R => \Audio_Codec/rst\
    );
\slv_reg23_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg23[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg23(27),
      R => \Audio_Codec/rst\
    );
\slv_reg23_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg23[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg23(28),
      R => \Audio_Codec/rst\
    );
\slv_reg23_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg23[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg23(29),
      R => \Audio_Codec/rst\
    );
\slv_reg23_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg23[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg23(2),
      R => \Audio_Codec/rst\
    );
\slv_reg23_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg23[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg23(30),
      R => \Audio_Codec/rst\
    );
\slv_reg23_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg23[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg23(31),
      R => \Audio_Codec/rst\
    );
\slv_reg23_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg23[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg23(3),
      R => \Audio_Codec/rst\
    );
\slv_reg23_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg23[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg23(4),
      R => \Audio_Codec/rst\
    );
\slv_reg23_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg23[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg23(5),
      R => \Audio_Codec/rst\
    );
\slv_reg23_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg23[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg23(6),
      R => \Audio_Codec/rst\
    );
\slv_reg23_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg23[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg23(7),
      R => \Audio_Codec/rst\
    );
\slv_reg23_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg23[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg23(8),
      R => \Audio_Codec/rst\
    );
\slv_reg23_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg23[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg23(9),
      R => \Audio_Codec/rst\
    );
\slv_reg24[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg16[15]_i_2_n_0\,
      I1 => \slv_reg24[31]_i_2_n_0\,
      O => \slv_reg24[15]_i_1_n_0\
    );
\slv_reg24[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg16[23]_i_2_n_0\,
      I1 => \slv_reg24[31]_i_2_n_0\,
      O => \slv_reg24[23]_i_1_n_0\
    );
\slv_reg24[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg16[31]_i_2_n_0\,
      I1 => \slv_reg24[31]_i_2_n_0\,
      O => \slv_reg24[31]_i_1_n_0\
    );
\slv_reg24[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000047034400"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => s00_axi_awvalid,
      I2 => \axi_awaddr_reg_n_0_[2]\,
      I3 => s00_axi_awaddr(3),
      I4 => \axi_awaddr_reg_n_0_[5]\,
      I5 => mem_logic(3),
      O => \slv_reg24[31]_i_2_n_0\
    );
\slv_reg24[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg16[7]_i_2_n_0\,
      I1 => \slv_reg24[31]_i_2_n_0\,
      O => \slv_reg24[7]_i_1_n_0\
    );
\slv_reg24_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg24[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg24(0),
      R => \Audio_Codec/rst\
    );
\slv_reg24_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg24[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg24(10),
      R => \Audio_Codec/rst\
    );
\slv_reg24_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg24[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg24(11),
      R => \Audio_Codec/rst\
    );
\slv_reg24_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg24[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg24(12),
      R => \Audio_Codec/rst\
    );
\slv_reg24_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg24[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg24(13),
      R => \Audio_Codec/rst\
    );
\slv_reg24_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg24[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg24(14),
      R => \Audio_Codec/rst\
    );
\slv_reg24_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg24[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg24(15),
      R => \Audio_Codec/rst\
    );
\slv_reg24_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg24[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg24(16),
      R => \Audio_Codec/rst\
    );
\slv_reg24_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg24[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg24(17),
      R => \Audio_Codec/rst\
    );
\slv_reg24_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg24[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg24(18),
      R => \Audio_Codec/rst\
    );
\slv_reg24_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg24[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg24(19),
      R => \Audio_Codec/rst\
    );
\slv_reg24_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg24[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg24(1),
      R => \Audio_Codec/rst\
    );
\slv_reg24_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg24[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg24(20),
      R => \Audio_Codec/rst\
    );
\slv_reg24_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg24[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg24(21),
      R => \Audio_Codec/rst\
    );
\slv_reg24_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg24[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg24(22),
      R => \Audio_Codec/rst\
    );
\slv_reg24_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg24[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg24(23),
      R => \Audio_Codec/rst\
    );
\slv_reg24_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg24[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg24(24),
      R => \Audio_Codec/rst\
    );
\slv_reg24_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg24[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg24(25),
      R => \Audio_Codec/rst\
    );
\slv_reg24_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg24[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg24(26),
      R => \Audio_Codec/rst\
    );
\slv_reg24_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg24[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg24(27),
      R => \Audio_Codec/rst\
    );
\slv_reg24_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg24[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg24(28),
      R => \Audio_Codec/rst\
    );
\slv_reg24_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg24[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg24(29),
      R => \Audio_Codec/rst\
    );
\slv_reg24_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg24[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg24(2),
      R => \Audio_Codec/rst\
    );
\slv_reg24_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg24[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg24(30),
      R => \Audio_Codec/rst\
    );
\slv_reg24_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg24[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg24(31),
      R => \Audio_Codec/rst\
    );
\slv_reg24_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg24[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg24(3),
      R => \Audio_Codec/rst\
    );
\slv_reg24_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg24[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg24(4),
      R => \Audio_Codec/rst\
    );
\slv_reg24_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg24[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg24(5),
      R => \Audio_Codec/rst\
    );
\slv_reg24_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg24[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg24(6),
      R => \Audio_Codec/rst\
    );
\slv_reg24_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg24[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg24(7),
      R => \Audio_Codec/rst\
    );
\slv_reg24_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg24[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg24(8),
      R => \Audio_Codec/rst\
    );
\slv_reg24_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg24[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg24(9),
      R => \Audio_Codec/rst\
    );
\slv_reg25[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg16[15]_i_2_n_0\,
      I1 => \slv_reg25[31]_i_2_n_0\,
      O => \slv_reg25[15]_i_1_n_0\
    );
\slv_reg25[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg16[23]_i_2_n_0\,
      I1 => \slv_reg25[31]_i_2_n_0\,
      O => \slv_reg25[23]_i_1_n_0\
    );
\slv_reg25[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg16[31]_i_2_n_0\,
      I1 => \slv_reg25[31]_i_2_n_0\,
      O => \slv_reg25[31]_i_1_n_0\
    );
\slv_reg25[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444500000005000"
    )
        port map (
      I0 => mem_logic(3),
      I1 => s00_axi_awaddr(0),
      I2 => \axi_awaddr_reg_n_0_[2]\,
      I3 => \axi_awaddr_reg_n_0_[5]\,
      I4 => s00_axi_awvalid,
      I5 => s00_axi_awaddr(3),
      O => \slv_reg25[31]_i_2_n_0\
    );
\slv_reg25[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg16[7]_i_2_n_0\,
      I1 => \slv_reg25[31]_i_2_n_0\,
      O => \slv_reg25[7]_i_1_n_0\
    );
\slv_reg25_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg25[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg25(0),
      R => \Audio_Codec/rst\
    );
\slv_reg25_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg25[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg25(10),
      R => \Audio_Codec/rst\
    );
\slv_reg25_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg25[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg25(11),
      R => \Audio_Codec/rst\
    );
\slv_reg25_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg25[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg25(12),
      R => \Audio_Codec/rst\
    );
\slv_reg25_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg25[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg25(13),
      R => \Audio_Codec/rst\
    );
\slv_reg25_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg25[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg25(14),
      R => \Audio_Codec/rst\
    );
\slv_reg25_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg25[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg25(15),
      R => \Audio_Codec/rst\
    );
\slv_reg25_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg25[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg25(16),
      R => \Audio_Codec/rst\
    );
\slv_reg25_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg25[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg25(17),
      R => \Audio_Codec/rst\
    );
\slv_reg25_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg25[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg25(18),
      R => \Audio_Codec/rst\
    );
\slv_reg25_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg25[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg25(19),
      R => \Audio_Codec/rst\
    );
\slv_reg25_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg25[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg25(1),
      R => \Audio_Codec/rst\
    );
\slv_reg25_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg25[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg25(20),
      R => \Audio_Codec/rst\
    );
\slv_reg25_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg25[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg25(21),
      R => \Audio_Codec/rst\
    );
\slv_reg25_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg25[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg25(22),
      R => \Audio_Codec/rst\
    );
\slv_reg25_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg25[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg25(23),
      R => \Audio_Codec/rst\
    );
\slv_reg25_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg25[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg25(24),
      R => \Audio_Codec/rst\
    );
\slv_reg25_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg25[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg25(25),
      R => \Audio_Codec/rst\
    );
\slv_reg25_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg25[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg25(26),
      R => \Audio_Codec/rst\
    );
\slv_reg25_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg25[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg25(27),
      R => \Audio_Codec/rst\
    );
\slv_reg25_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg25[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg25(28),
      R => \Audio_Codec/rst\
    );
\slv_reg25_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg25[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg25(29),
      R => \Audio_Codec/rst\
    );
\slv_reg25_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg25[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg25(2),
      R => \Audio_Codec/rst\
    );
\slv_reg25_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg25[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg25(30),
      R => \Audio_Codec/rst\
    );
\slv_reg25_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg25[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg25(31),
      R => \Audio_Codec/rst\
    );
\slv_reg25_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg25[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg25(3),
      R => \Audio_Codec/rst\
    );
\slv_reg25_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg25[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg25(4),
      R => \Audio_Codec/rst\
    );
\slv_reg25_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg25[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg25(5),
      R => \Audio_Codec/rst\
    );
\slv_reg25_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg25[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg25(6),
      R => \Audio_Codec/rst\
    );
\slv_reg25_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg25[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg25(7),
      R => \Audio_Codec/rst\
    );
\slv_reg25_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg25[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg25(8),
      R => \Audio_Codec/rst\
    );
\slv_reg25_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg25[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg25(9),
      R => \Audio_Codec/rst\
    );
\slv_reg26[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg16[15]_i_2_n_0\,
      I1 => \slv_reg26[31]_i_2_n_0\,
      O => \slv_reg26[15]_i_1_n_0\
    );
\slv_reg26[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg16[23]_i_2_n_0\,
      I1 => \slv_reg26[31]_i_2_n_0\,
      O => \slv_reg26[23]_i_1_n_0\
    );
\slv_reg26[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg16[31]_i_2_n_0\,
      I1 => \slv_reg26[31]_i_2_n_0\,
      O => \slv_reg26[31]_i_1_n_0\
    );
\slv_reg26[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4703440000000000"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => s00_axi_awvalid,
      I2 => \axi_awaddr_reg_n_0_[2]\,
      I3 => s00_axi_awaddr(3),
      I4 => \axi_awaddr_reg_n_0_[5]\,
      I5 => mem_logic(3),
      O => \slv_reg26[31]_i_2_n_0\
    );
\slv_reg26[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg16[7]_i_2_n_0\,
      I1 => \slv_reg26[31]_i_2_n_0\,
      O => \slv_reg26[7]_i_1_n_0\
    );
\slv_reg26_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg26[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg26(0),
      R => \Audio_Codec/rst\
    );
\slv_reg26_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg26[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg26(10),
      R => \Audio_Codec/rst\
    );
\slv_reg26_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg26[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg26(11),
      R => \Audio_Codec/rst\
    );
\slv_reg26_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg26[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg26(12),
      R => \Audio_Codec/rst\
    );
\slv_reg26_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg26[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg26(13),
      R => \Audio_Codec/rst\
    );
\slv_reg26_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg26[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg26(14),
      R => \Audio_Codec/rst\
    );
\slv_reg26_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg26[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg26(15),
      R => \Audio_Codec/rst\
    );
\slv_reg26_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg26[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg26(16),
      R => \Audio_Codec/rst\
    );
\slv_reg26_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg26[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg26(17),
      R => \Audio_Codec/rst\
    );
\slv_reg26_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg26[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg26(18),
      R => \Audio_Codec/rst\
    );
\slv_reg26_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg26[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg26(19),
      R => \Audio_Codec/rst\
    );
\slv_reg26_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg26[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg26(1),
      R => \Audio_Codec/rst\
    );
\slv_reg26_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg26[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg26(20),
      R => \Audio_Codec/rst\
    );
\slv_reg26_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg26[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg26(21),
      R => \Audio_Codec/rst\
    );
\slv_reg26_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg26[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg26(22),
      R => \Audio_Codec/rst\
    );
\slv_reg26_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg26[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg26(23),
      R => \Audio_Codec/rst\
    );
\slv_reg26_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg26[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg26(24),
      R => \Audio_Codec/rst\
    );
\slv_reg26_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg26[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg26(25),
      R => \Audio_Codec/rst\
    );
\slv_reg26_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg26[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg26(26),
      R => \Audio_Codec/rst\
    );
\slv_reg26_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg26[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg26(27),
      R => \Audio_Codec/rst\
    );
\slv_reg26_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg26[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg26(28),
      R => \Audio_Codec/rst\
    );
\slv_reg26_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg26[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg26(29),
      R => \Audio_Codec/rst\
    );
\slv_reg26_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg26[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg26(2),
      R => \Audio_Codec/rst\
    );
\slv_reg26_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg26[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg26(30),
      R => \Audio_Codec/rst\
    );
\slv_reg26_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg26[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg26(31),
      R => \Audio_Codec/rst\
    );
\slv_reg26_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg26[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg26(3),
      R => \Audio_Codec/rst\
    );
\slv_reg26_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg26[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg26(4),
      R => \Audio_Codec/rst\
    );
\slv_reg26_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg26[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg26(5),
      R => \Audio_Codec/rst\
    );
\slv_reg26_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg26[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg26(6),
      R => \Audio_Codec/rst\
    );
\slv_reg26_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg26[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg26(7),
      R => \Audio_Codec/rst\
    );
\slv_reg26_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg26[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg26(8),
      R => \Audio_Codec/rst\
    );
\slv_reg26_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg26[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg26(9),
      R => \Audio_Codec/rst\
    );
\slv_reg27[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg27[31]_i_2_n_0\,
      I1 => \slv_reg16[15]_i_2_n_0\,
      O => \slv_reg27[15]_i_1_n_0\
    );
\slv_reg27[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg27[31]_i_2_n_0\,
      I1 => \slv_reg16[23]_i_2_n_0\,
      O => \slv_reg27[23]_i_1_n_0\
    );
\slv_reg27[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg27[31]_i_2_n_0\,
      I1 => \slv_reg16[31]_i_2_n_0\,
      O => \slv_reg27[31]_i_1_n_0\
    );
\slv_reg27[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C000A0A0C0000000"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[5]\,
      I1 => s00_axi_awaddr(3),
      I2 => mem_logic(3),
      I3 => s00_axi_awaddr(0),
      I4 => s00_axi_awvalid,
      I5 => \axi_awaddr_reg_n_0_[2]\,
      O => \slv_reg27[31]_i_2_n_0\
    );
\slv_reg27[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg27[31]_i_2_n_0\,
      I1 => \slv_reg16[7]_i_2_n_0\,
      O => \slv_reg27[7]_i_1_n_0\
    );
\slv_reg27_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg27[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg27(0),
      R => \Audio_Codec/rst\
    );
\slv_reg27_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg27[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg27(10),
      R => \Audio_Codec/rst\
    );
\slv_reg27_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg27[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg27(11),
      R => \Audio_Codec/rst\
    );
\slv_reg27_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg27[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg27(12),
      R => \Audio_Codec/rst\
    );
\slv_reg27_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg27[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg27(13),
      R => \Audio_Codec/rst\
    );
\slv_reg27_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg27[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg27(14),
      R => \Audio_Codec/rst\
    );
\slv_reg27_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg27[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg27(15),
      R => \Audio_Codec/rst\
    );
\slv_reg27_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg27[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg27(16),
      R => \Audio_Codec/rst\
    );
\slv_reg27_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg27[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg27(17),
      R => \Audio_Codec/rst\
    );
\slv_reg27_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg27[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg27(18),
      R => \Audio_Codec/rst\
    );
\slv_reg27_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg27[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg27(19),
      R => \Audio_Codec/rst\
    );
\slv_reg27_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg27[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg27(1),
      R => \Audio_Codec/rst\
    );
\slv_reg27_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg27[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg27(20),
      R => \Audio_Codec/rst\
    );
\slv_reg27_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg27[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg27(21),
      R => \Audio_Codec/rst\
    );
\slv_reg27_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg27[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg27(22),
      R => \Audio_Codec/rst\
    );
\slv_reg27_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg27[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg27(23),
      R => \Audio_Codec/rst\
    );
\slv_reg27_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg27[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg27(24),
      R => \Audio_Codec/rst\
    );
\slv_reg27_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg27[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg27(25),
      R => \Audio_Codec/rst\
    );
\slv_reg27_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg27[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg27(26),
      R => \Audio_Codec/rst\
    );
\slv_reg27_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg27[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg27(27),
      R => \Audio_Codec/rst\
    );
\slv_reg27_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg27[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg27(28),
      R => \Audio_Codec/rst\
    );
\slv_reg27_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg27[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg27(29),
      R => \Audio_Codec/rst\
    );
\slv_reg27_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg27[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg27(2),
      R => \Audio_Codec/rst\
    );
\slv_reg27_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg27[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg27(30),
      R => \Audio_Codec/rst\
    );
\slv_reg27_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg27[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg27(31),
      R => \Audio_Codec/rst\
    );
\slv_reg27_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg27[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg27(3),
      R => \Audio_Codec/rst\
    );
\slv_reg27_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg27[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg27(4),
      R => \Audio_Codec/rst\
    );
\slv_reg27_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg27[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg27(5),
      R => \Audio_Codec/rst\
    );
\slv_reg27_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg27[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg27(6),
      R => \Audio_Codec/rst\
    );
\slv_reg27_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg27[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg27(7),
      R => \Audio_Codec/rst\
    );
\slv_reg27_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg27[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg27(8),
      R => \Audio_Codec/rst\
    );
\slv_reg27_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg27[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg27(9),
      R => \Audio_Codec/rst\
    );
\slv_reg28[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg20[15]_i_2_n_0\,
      I1 => \slv_reg24[31]_i_2_n_0\,
      O => \slv_reg28[15]_i_1_n_0\
    );
\slv_reg28[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg20[23]_i_2_n_0\,
      I1 => \slv_reg24[31]_i_2_n_0\,
      O => \slv_reg28[23]_i_1_n_0\
    );
\slv_reg28[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg20[31]_i_2_n_0\,
      I1 => \slv_reg24[31]_i_2_n_0\,
      O => \slv_reg28[31]_i_1_n_0\
    );
\slv_reg28[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg20[7]_i_2_n_0\,
      I1 => \slv_reg24[31]_i_2_n_0\,
      O => \slv_reg28[7]_i_1_n_0\
    );
\slv_reg28_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg28[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg28(0),
      R => \Audio_Codec/rst\
    );
\slv_reg28_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg28[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg28(10),
      R => \Audio_Codec/rst\
    );
\slv_reg28_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg28[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg28(11),
      R => \Audio_Codec/rst\
    );
\slv_reg28_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg28[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg28(12),
      R => \Audio_Codec/rst\
    );
\slv_reg28_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg28[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg28(13),
      R => \Audio_Codec/rst\
    );
\slv_reg28_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg28[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg28(14),
      R => \Audio_Codec/rst\
    );
\slv_reg28_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg28[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg28(15),
      R => \Audio_Codec/rst\
    );
\slv_reg28_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg28[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg28(16),
      R => \Audio_Codec/rst\
    );
\slv_reg28_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg28[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg28(17),
      R => \Audio_Codec/rst\
    );
\slv_reg28_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg28[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg28(18),
      R => \Audio_Codec/rst\
    );
\slv_reg28_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg28[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg28(19),
      R => \Audio_Codec/rst\
    );
\slv_reg28_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg28[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg28(1),
      R => \Audio_Codec/rst\
    );
\slv_reg28_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg28[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg28(20),
      R => \Audio_Codec/rst\
    );
\slv_reg28_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg28[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg28(21),
      R => \Audio_Codec/rst\
    );
\slv_reg28_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg28[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg28(22),
      R => \Audio_Codec/rst\
    );
\slv_reg28_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg28[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg28(23),
      R => \Audio_Codec/rst\
    );
\slv_reg28_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg28[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg28(24),
      R => \Audio_Codec/rst\
    );
\slv_reg28_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg28[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg28(25),
      R => \Audio_Codec/rst\
    );
\slv_reg28_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg28[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg28(26),
      R => \Audio_Codec/rst\
    );
\slv_reg28_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg28[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg28(27),
      R => \Audio_Codec/rst\
    );
\slv_reg28_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg28[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg28(28),
      R => \Audio_Codec/rst\
    );
\slv_reg28_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg28[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg28(29),
      R => \Audio_Codec/rst\
    );
\slv_reg28_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg28[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg28(2),
      R => \Audio_Codec/rst\
    );
\slv_reg28_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg28[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg28(30),
      R => \Audio_Codec/rst\
    );
\slv_reg28_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg28[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg28(31),
      R => \Audio_Codec/rst\
    );
\slv_reg28_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg28[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg28(3),
      R => \Audio_Codec/rst\
    );
\slv_reg28_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg28[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg28(4),
      R => \Audio_Codec/rst\
    );
\slv_reg28_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg28[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg28(5),
      R => \Audio_Codec/rst\
    );
\slv_reg28_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg28[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg28(6),
      R => \Audio_Codec/rst\
    );
\slv_reg28_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg28[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg28(7),
      R => \Audio_Codec/rst\
    );
\slv_reg28_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg28[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg28(8),
      R => \Audio_Codec/rst\
    );
\slv_reg28_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg28[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg28(9),
      R => \Audio_Codec/rst\
    );
\slv_reg29[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg29[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(1),
      O => \slv_reg29[15]_i_1_n_0\
    );
\slv_reg29[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg29[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(2),
      O => \slv_reg29[23]_i_1_n_0\
    );
\slv_reg29[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg29[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(3),
      O => \slv_reg29[31]_i_1_n_0\
    );
\slv_reg29[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"202A000A20200000"
    )
        port map (
      I0 => \slv_reg29[31]_i_3_n_0\,
      I1 => s00_axi_awaddr(1),
      I2 => s00_axi_awvalid,
      I3 => \axi_awaddr_reg_n_0_[3]\,
      I4 => s00_axi_awaddr(0),
      I5 => \axi_awaddr_reg_n_0_[2]\,
      O => \slv_reg29[31]_i_2_n_0\
    );
\slv_reg29[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A80000000000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_awaddr(4),
      I2 => s00_axi_awvalid,
      I3 => \axi_awaddr_reg_n_0_[6]\,
      I4 => mem_logic(4),
      I5 => mem_logic(5),
      O => \slv_reg29[31]_i_3_n_0\
    );
\slv_reg29[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg29[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(0),
      O => \slv_reg29[7]_i_1_n_0\
    );
\slv_reg29_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg29[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg29(0),
      R => \Audio_Codec/rst\
    );
\slv_reg29_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg29[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg29(10),
      R => \Audio_Codec/rst\
    );
\slv_reg29_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg29[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg29(11),
      R => \Audio_Codec/rst\
    );
\slv_reg29_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg29[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg29(12),
      R => \Audio_Codec/rst\
    );
\slv_reg29_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg29[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg29(13),
      R => \Audio_Codec/rst\
    );
\slv_reg29_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg29[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg29(14),
      R => \Audio_Codec/rst\
    );
\slv_reg29_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg29[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg29(15),
      R => \Audio_Codec/rst\
    );
\slv_reg29_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg29[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg29(16),
      R => \Audio_Codec/rst\
    );
\slv_reg29_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg29[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg29(17),
      R => \Audio_Codec/rst\
    );
\slv_reg29_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg29[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg29(18),
      R => \Audio_Codec/rst\
    );
\slv_reg29_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg29[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg29(19),
      R => \Audio_Codec/rst\
    );
\slv_reg29_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg29[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg29(1),
      R => \Audio_Codec/rst\
    );
\slv_reg29_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg29[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg29(20),
      R => \Audio_Codec/rst\
    );
\slv_reg29_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg29[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg29(21),
      R => \Audio_Codec/rst\
    );
\slv_reg29_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg29[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg29(22),
      R => \Audio_Codec/rst\
    );
\slv_reg29_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg29[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg29(23),
      R => \Audio_Codec/rst\
    );
\slv_reg29_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg29[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg29(24),
      R => \Audio_Codec/rst\
    );
\slv_reg29_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg29[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg29(25),
      R => \Audio_Codec/rst\
    );
\slv_reg29_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg29[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg29(26),
      R => \Audio_Codec/rst\
    );
\slv_reg29_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg29[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg29(27),
      R => \Audio_Codec/rst\
    );
\slv_reg29_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg29[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg29(28),
      R => \Audio_Codec/rst\
    );
\slv_reg29_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg29[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg29(29),
      R => \Audio_Codec/rst\
    );
\slv_reg29_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg29[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg29(2),
      R => \Audio_Codec/rst\
    );
\slv_reg29_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg29[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg29(30),
      R => \Audio_Codec/rst\
    );
\slv_reg29_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg29[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg29(31),
      R => \Audio_Codec/rst\
    );
\slv_reg29_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg29[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg29(3),
      R => \Audio_Codec/rst\
    );
\slv_reg29_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg29[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg29(4),
      R => \Audio_Codec/rst\
    );
\slv_reg29_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg29[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg29(5),
      R => \Audio_Codec/rst\
    );
\slv_reg29_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg29[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg29(6),
      R => \Audio_Codec/rst\
    );
\slv_reg29_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg29[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg29(7),
      R => \Audio_Codec/rst\
    );
\slv_reg29_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg29[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg29(8),
      R => \Audio_Codec/rst\
    );
\slv_reg29_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg29[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg29(9),
      R => \Audio_Codec/rst\
    );
\slv_reg2[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg2[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(1),
      O => \slv_reg2[15]_i_1_n_0\
    );
\slv_reg2[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg2[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(2),
      O => \slv_reg2[23]_i_1_n_0\
    );
\slv_reg2[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg2[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(3),
      O => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000002A200000000"
    )
        port map (
      I0 => \slv_reg18[31]_i_2_n_0\,
      I1 => \axi_awaddr_reg_n_0_[6]\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_awaddr(4),
      I4 => mem_logic(4),
      I5 => s00_axi_wvalid,
      O => \slv_reg2[31]_i_2_n_0\
    );
\slv_reg2[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg2[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(0),
      O => \slv_reg2[7]_i_1_n_0\
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg2(0),
      R => \Audio_Codec/rst\
    );
\slv_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg2(10),
      R => \Audio_Codec/rst\
    );
\slv_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg2(11),
      R => \Audio_Codec/rst\
    );
\slv_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg2(12),
      R => \Audio_Codec/rst\
    );
\slv_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg2(13),
      R => \Audio_Codec/rst\
    );
\slv_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg2(14),
      R => \Audio_Codec/rst\
    );
\slv_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg2(15),
      R => \Audio_Codec/rst\
    );
\slv_reg2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg2(16),
      R => \Audio_Codec/rst\
    );
\slv_reg2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg2(17),
      R => \Audio_Codec/rst\
    );
\slv_reg2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg2(18),
      R => \Audio_Codec/rst\
    );
\slv_reg2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg2(19),
      R => \Audio_Codec/rst\
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg2(1),
      R => \Audio_Codec/rst\
    );
\slv_reg2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg2(20),
      R => \Audio_Codec/rst\
    );
\slv_reg2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg2(21),
      R => \Audio_Codec/rst\
    );
\slv_reg2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg2(22),
      R => \Audio_Codec/rst\
    );
\slv_reg2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg2(23),
      R => \Audio_Codec/rst\
    );
\slv_reg2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg2(24),
      R => \Audio_Codec/rst\
    );
\slv_reg2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg2(25),
      R => \Audio_Codec/rst\
    );
\slv_reg2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg2(26),
      R => \Audio_Codec/rst\
    );
\slv_reg2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg2(27),
      R => \Audio_Codec/rst\
    );
\slv_reg2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg2(28),
      R => \Audio_Codec/rst\
    );
\slv_reg2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg2(29),
      R => \Audio_Codec/rst\
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg2(2),
      R => \Audio_Codec/rst\
    );
\slv_reg2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg2(30),
      R => \Audio_Codec/rst\
    );
\slv_reg2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg2(31),
      R => \Audio_Codec/rst\
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg2(3),
      R => \Audio_Codec/rst\
    );
\slv_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg2(4),
      R => \Audio_Codec/rst\
    );
\slv_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg2(5),
      R => \Audio_Codec/rst\
    );
\slv_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg2(6),
      R => \Audio_Codec/rst\
    );
\slv_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg2(7),
      R => \Audio_Codec/rst\
    );
\slv_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg2(8),
      R => \Audio_Codec/rst\
    );
\slv_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg2(9),
      R => \Audio_Codec/rst\
    );
\slv_reg30[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg30[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(1),
      O => \slv_reg30[15]_i_1_n_0\
    );
\slv_reg30[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg30[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(2),
      O => \slv_reg30[23]_i_1_n_0\
    );
\slv_reg30[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg30[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(3),
      O => \slv_reg30[31]_i_1_n_0\
    );
\slv_reg30[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4703440000000000"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => s00_axi_awvalid,
      I2 => \axi_awaddr_reg_n_0_[2]\,
      I3 => s00_axi_awaddr(1),
      I4 => \axi_awaddr_reg_n_0_[3]\,
      I5 => \slv_reg29[31]_i_3_n_0\,
      O => \slv_reg30[31]_i_2_n_0\
    );
\slv_reg30[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg30[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(0),
      O => \slv_reg30[7]_i_1_n_0\
    );
\slv_reg30_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg30[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg30(0),
      R => \Audio_Codec/rst\
    );
\slv_reg30_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg30[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg30(10),
      R => \Audio_Codec/rst\
    );
\slv_reg30_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg30[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg30(11),
      R => \Audio_Codec/rst\
    );
\slv_reg30_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg30[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg30(12),
      R => \Audio_Codec/rst\
    );
\slv_reg30_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg30[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg30(13),
      R => \Audio_Codec/rst\
    );
\slv_reg30_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg30[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg30(14),
      R => \Audio_Codec/rst\
    );
\slv_reg30_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg30[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg30(15),
      R => \Audio_Codec/rst\
    );
\slv_reg30_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg30[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg30(16),
      R => \Audio_Codec/rst\
    );
\slv_reg30_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg30[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg30(17),
      R => \Audio_Codec/rst\
    );
\slv_reg30_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg30[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg30(18),
      R => \Audio_Codec/rst\
    );
\slv_reg30_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg30[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg30(19),
      R => \Audio_Codec/rst\
    );
\slv_reg30_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg30[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg30(1),
      R => \Audio_Codec/rst\
    );
\slv_reg30_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg30[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg30(20),
      R => \Audio_Codec/rst\
    );
\slv_reg30_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg30[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg30(21),
      R => \Audio_Codec/rst\
    );
\slv_reg30_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg30[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg30(22),
      R => \Audio_Codec/rst\
    );
\slv_reg30_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg30[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg30(23),
      R => \Audio_Codec/rst\
    );
\slv_reg30_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg30[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg30(24),
      R => \Audio_Codec/rst\
    );
\slv_reg30_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg30[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg30(25),
      R => \Audio_Codec/rst\
    );
\slv_reg30_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg30[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg30(26),
      R => \Audio_Codec/rst\
    );
\slv_reg30_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg30[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg30(27),
      R => \Audio_Codec/rst\
    );
\slv_reg30_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg30[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg30(28),
      R => \Audio_Codec/rst\
    );
\slv_reg30_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg30[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg30(29),
      R => \Audio_Codec/rst\
    );
\slv_reg30_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg30[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg30(2),
      R => \Audio_Codec/rst\
    );
\slv_reg30_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg30[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg30(30),
      R => \Audio_Codec/rst\
    );
\slv_reg30_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg30[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg30(31),
      R => \Audio_Codec/rst\
    );
\slv_reg30_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg30[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg30(3),
      R => \Audio_Codec/rst\
    );
\slv_reg30_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg30[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg30(4),
      R => \Audio_Codec/rst\
    );
\slv_reg30_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg30[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg30(5),
      R => \Audio_Codec/rst\
    );
\slv_reg30_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg30[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg30(6),
      R => \Audio_Codec/rst\
    );
\slv_reg30_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg30[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg30(7),
      R => \Audio_Codec/rst\
    );
\slv_reg30_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg30[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg30(8),
      R => \Audio_Codec/rst\
    );
\slv_reg30_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg30[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg30(9),
      R => \Audio_Codec/rst\
    );
\slv_reg31[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg31[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(1),
      O => \slv_reg31[15]_i_1_n_0\
    );
\slv_reg31[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg31[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(2),
      O => \slv_reg31[23]_i_1_n_0\
    );
\slv_reg31[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg31[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(3),
      O => \slv_reg31[31]_i_1_n_0\
    );
\slv_reg31[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A800A0080800000"
    )
        port map (
      I0 => \slv_reg29[31]_i_3_n_0\,
      I1 => s00_axi_awaddr(1),
      I2 => s00_axi_awvalid,
      I3 => \axi_awaddr_reg_n_0_[3]\,
      I4 => s00_axi_awaddr(0),
      I5 => \axi_awaddr_reg_n_0_[2]\,
      O => \slv_reg31[31]_i_2_n_0\
    );
\slv_reg31[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg31[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(0),
      O => \slv_reg31[7]_i_1_n_0\
    );
\slv_reg31_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg31[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg31(0),
      R => \Audio_Codec/rst\
    );
\slv_reg31_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg31[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg31(10),
      R => \Audio_Codec/rst\
    );
\slv_reg31_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg31[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg31(11),
      R => \Audio_Codec/rst\
    );
\slv_reg31_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg31[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg31(12),
      R => \Audio_Codec/rst\
    );
\slv_reg31_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg31[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg31(13),
      R => \Audio_Codec/rst\
    );
\slv_reg31_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg31[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg31(14),
      R => \Audio_Codec/rst\
    );
\slv_reg31_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg31[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg31(15),
      R => \Audio_Codec/rst\
    );
\slv_reg31_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg31[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg31(16),
      R => \Audio_Codec/rst\
    );
\slv_reg31_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg31[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg31(17),
      R => \Audio_Codec/rst\
    );
\slv_reg31_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg31[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg31(18),
      R => \Audio_Codec/rst\
    );
\slv_reg31_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg31[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg31(19),
      R => \Audio_Codec/rst\
    );
\slv_reg31_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg31[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg31(1),
      R => \Audio_Codec/rst\
    );
\slv_reg31_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg31[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg31(20),
      R => \Audio_Codec/rst\
    );
\slv_reg31_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg31[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg31(21),
      R => \Audio_Codec/rst\
    );
\slv_reg31_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg31[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg31(22),
      R => \Audio_Codec/rst\
    );
\slv_reg31_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg31[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg31(23),
      R => \Audio_Codec/rst\
    );
\slv_reg31_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg31[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg31(24),
      R => \Audio_Codec/rst\
    );
\slv_reg31_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg31[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg31(25),
      R => \Audio_Codec/rst\
    );
\slv_reg31_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg31[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg31(26),
      R => \Audio_Codec/rst\
    );
\slv_reg31_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg31[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg31(27),
      R => \Audio_Codec/rst\
    );
\slv_reg31_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg31[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg31(28),
      R => \Audio_Codec/rst\
    );
\slv_reg31_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg31[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg31(29),
      R => \Audio_Codec/rst\
    );
\slv_reg31_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg31[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg31(2),
      R => \Audio_Codec/rst\
    );
\slv_reg31_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg31[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg31(30),
      R => \Audio_Codec/rst\
    );
\slv_reg31_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg31[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg31(31),
      R => \Audio_Codec/rst\
    );
\slv_reg31_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg31[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg31(3),
      R => \Audio_Codec/rst\
    );
\slv_reg31_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg31[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg31(4),
      R => \Audio_Codec/rst\
    );
\slv_reg31_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg31[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg31(5),
      R => \Audio_Codec/rst\
    );
\slv_reg31_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg31[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg31(6),
      R => \Audio_Codec/rst\
    );
\slv_reg31_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg31[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg31(7),
      R => \Audio_Codec/rst\
    );
\slv_reg31_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg31[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg31(8),
      R => \Audio_Codec/rst\
    );
\slv_reg31_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg31[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg31(9),
      R => \Audio_Codec/rst\
    );
\slv_reg3[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg3[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(1),
      O => \slv_reg3[15]_i_1_n_0\
    );
\slv_reg3[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg3[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(2),
      O => \slv_reg3[23]_i_1_n_0\
    );
\slv_reg3[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg3[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(3),
      O => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002020200020"
    )
        port map (
      I0 => \slv_reg19[31]_i_2_n_0\,
      I1 => mem_logic(4),
      I2 => s00_axi_wvalid,
      I3 => \axi_awaddr_reg_n_0_[6]\,
      I4 => s00_axi_awvalid,
      I5 => s00_axi_awaddr(4),
      O => \slv_reg3[31]_i_2_n_0\
    );
\slv_reg3[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg3[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(0),
      O => \slv_reg3[7]_i_1_n_0\
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg3(0),
      R => \Audio_Codec/rst\
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg3(10),
      R => \Audio_Codec/rst\
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg3(11),
      R => \Audio_Codec/rst\
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg3(12),
      R => \Audio_Codec/rst\
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg3(13),
      R => \Audio_Codec/rst\
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg3(14),
      R => \Audio_Codec/rst\
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg3(15),
      R => \Audio_Codec/rst\
    );
\slv_reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg3(16),
      R => \Audio_Codec/rst\
    );
\slv_reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg3(17),
      R => \Audio_Codec/rst\
    );
\slv_reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg3(18),
      R => \Audio_Codec/rst\
    );
\slv_reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg3(19),
      R => \Audio_Codec/rst\
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg3(1),
      R => \Audio_Codec/rst\
    );
\slv_reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg3(20),
      R => \Audio_Codec/rst\
    );
\slv_reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg3(21),
      R => \Audio_Codec/rst\
    );
\slv_reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg3(22),
      R => \Audio_Codec/rst\
    );
\slv_reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg3(23),
      R => \Audio_Codec/rst\
    );
\slv_reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg3(24),
      R => \Audio_Codec/rst\
    );
\slv_reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg3(25),
      R => \Audio_Codec/rst\
    );
\slv_reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg3(26),
      R => \Audio_Codec/rst\
    );
\slv_reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg3(27),
      R => \Audio_Codec/rst\
    );
\slv_reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg3(28),
      R => \Audio_Codec/rst\
    );
\slv_reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg3(29),
      R => \Audio_Codec/rst\
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg3(2),
      R => \Audio_Codec/rst\
    );
\slv_reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg3(30),
      R => \Audio_Codec/rst\
    );
\slv_reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg3(31),
      R => \Audio_Codec/rst\
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg3(3),
      R => \Audio_Codec/rst\
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg3(4),
      R => \Audio_Codec/rst\
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg3(5),
      R => \Audio_Codec/rst\
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg3(6),
      R => \Audio_Codec/rst\
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg3(7),
      R => \Audio_Codec/rst\
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg3(8),
      R => \Audio_Codec/rst\
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg3(9),
      R => \Audio_Codec/rst\
    );
\slv_reg4[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg4[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(1),
      O => \slv_reg4[15]_i_1_n_0\
    );
\slv_reg4[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg4[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(2),
      O => \slv_reg4[23]_i_1_n_0\
    );
\slv_reg4[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg4[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(3),
      O => \slv_reg4[31]_i_1_n_0\
    );
\slv_reg4[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000015100000000"
    )
        port map (
      I0 => mem_logic(2),
      I1 => \axi_awaddr_reg_n_0_[5]\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_awaddr(3),
      I4 => mem_logic(3),
      I5 => \slv_reg4[31]_i_5_n_0\,
      O => \slv_reg4[31]_i_2_n_0\
    );
\slv_reg4[31]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => s00_axi_awvalid,
      I2 => \axi_awaddr_reg_n_0_[2]\,
      O => mem_logic(2)
    );
\slv_reg4[31]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => s00_axi_awvalid,
      I2 => \axi_awaddr_reg_n_0_[3]\,
      O => mem_logic(3)
    );
\slv_reg4[31]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5050300000003000"
    )
        port map (
      I0 => s00_axi_awaddr(4),
      I1 => \axi_awaddr_reg_n_0_[6]\,
      I2 => s00_axi_wvalid,
      I3 => \axi_awaddr_reg_n_0_[4]\,
      I4 => s00_axi_awvalid,
      I5 => s00_axi_awaddr(2),
      O => \slv_reg4[31]_i_5_n_0\
    );
\slv_reg4[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg4[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(0),
      O => \slv_reg4[7]_i_1_n_0\
    );
\slv_reg4_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg4(0),
      R => \Audio_Codec/rst\
    );
\slv_reg4_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \slv_reg4__0\(10),
      R => \Audio_Codec/rst\
    );
\slv_reg4_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \slv_reg4__0\(11),
      R => \Audio_Codec/rst\
    );
\slv_reg4_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \slv_reg4__0\(12),
      R => \Audio_Codec/rst\
    );
\slv_reg4_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \slv_reg4__0\(13),
      R => \Audio_Codec/rst\
    );
\slv_reg4_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \slv_reg4__0\(14),
      R => \Audio_Codec/rst\
    );
\slv_reg4_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \slv_reg4__0\(15),
      R => \Audio_Codec/rst\
    );
\slv_reg4_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \slv_reg4__0\(16),
      R => \Audio_Codec/rst\
    );
\slv_reg4_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \slv_reg4__0\(17),
      R => \Audio_Codec/rst\
    );
\slv_reg4_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \slv_reg4__0\(18),
      R => \Audio_Codec/rst\
    );
\slv_reg4_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \slv_reg4__0\(19),
      R => \Audio_Codec/rst\
    );
\slv_reg4_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg4(1),
      R => \Audio_Codec/rst\
    );
\slv_reg4_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \slv_reg4__0\(20),
      R => \Audio_Codec/rst\
    );
\slv_reg4_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \slv_reg4__0\(21),
      R => \Audio_Codec/rst\
    );
\slv_reg4_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \slv_reg4__0\(22),
      R => \Audio_Codec/rst\
    );
\slv_reg4_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \slv_reg4__0\(23),
      R => \Audio_Codec/rst\
    );
\slv_reg4_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \slv_reg4__0\(24),
      R => \Audio_Codec/rst\
    );
\slv_reg4_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \slv_reg4__0\(25),
      R => \Audio_Codec/rst\
    );
\slv_reg4_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \slv_reg4__0\(26),
      R => \Audio_Codec/rst\
    );
\slv_reg4_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \slv_reg4__0\(27),
      R => \Audio_Codec/rst\
    );
\slv_reg4_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \slv_reg4__0\(28),
      R => \Audio_Codec/rst\
    );
\slv_reg4_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \slv_reg4__0\(29),
      R => \Audio_Codec/rst\
    );
\slv_reg4_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg4(2),
      R => \Audio_Codec/rst\
    );
\slv_reg4_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \slv_reg4__0\(30),
      R => \Audio_Codec/rst\
    );
\slv_reg4_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \slv_reg4__0\(31),
      R => \Audio_Codec/rst\
    );
\slv_reg4_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg4(3),
      R => \Audio_Codec/rst\
    );
\slv_reg4_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg4(4),
      R => \Audio_Codec/rst\
    );
\slv_reg4_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg4(5),
      R => \Audio_Codec/rst\
    );
\slv_reg4_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg4(6),
      R => \Audio_Codec/rst\
    );
\slv_reg4_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg4(7),
      R => \Audio_Codec/rst\
    );
\slv_reg4_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg4(8),
      R => \Audio_Codec/rst\
    );
\slv_reg4_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg4(9),
      R => \Audio_Codec/rst\
    );
\slv_reg7[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg7[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(1),
      O => \slv_reg7[15]_i_1_n_0\
    );
\slv_reg7[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg7[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(2),
      O => \slv_reg7[23]_i_1_n_0\
    );
\slv_reg7[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg7[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(3),
      O => \slv_reg7[31]_i_1_n_0\
    );
\slv_reg7[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008880800000000"
    )
        port map (
      I0 => mem_logic(4),
      I1 => s00_axi_wvalid,
      I2 => \axi_awaddr_reg_n_0_[6]\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_awaddr(4),
      I5 => \slv_reg19[31]_i_2_n_0\,
      O => \slv_reg7[31]_i_2_n_0\
    );
\slv_reg7[31]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s00_axi_awaddr(2),
      I1 => s00_axi_awvalid,
      I2 => \axi_awaddr_reg_n_0_[4]\,
      O => mem_logic(4)
    );
\slv_reg7[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg7[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(0),
      O => \slv_reg7[7]_i_1_n_0\
    );
\slv_reg7_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg7(0),
      R => \Audio_Codec/rst\
    );
\slv_reg7_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \slv_reg7__0\(10),
      R => \Audio_Codec/rst\
    );
\slv_reg7_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \slv_reg7__0\(11),
      R => \Audio_Codec/rst\
    );
\slv_reg7_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \slv_reg7__0\(12),
      R => \Audio_Codec/rst\
    );
\slv_reg7_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \slv_reg7__0\(13),
      R => \Audio_Codec/rst\
    );
\slv_reg7_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \slv_reg7__0\(14),
      R => \Audio_Codec/rst\
    );
\slv_reg7_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \slv_reg7__0\(15),
      R => \Audio_Codec/rst\
    );
\slv_reg7_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \slv_reg7__0\(16),
      R => \Audio_Codec/rst\
    );
\slv_reg7_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \slv_reg7__0\(17),
      R => \Audio_Codec/rst\
    );
\slv_reg7_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \slv_reg7__0\(18),
      R => \Audio_Codec/rst\
    );
\slv_reg7_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \slv_reg7__0\(19),
      R => \Audio_Codec/rst\
    );
\slv_reg7_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \slv_reg7__0\(1),
      R => \Audio_Codec/rst\
    );
\slv_reg7_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \slv_reg7__0\(20),
      R => \Audio_Codec/rst\
    );
\slv_reg7_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \slv_reg7__0\(21),
      R => \Audio_Codec/rst\
    );
\slv_reg7_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \slv_reg7__0\(22),
      R => \Audio_Codec/rst\
    );
\slv_reg7_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \slv_reg7__0\(23),
      R => \Audio_Codec/rst\
    );
\slv_reg7_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \slv_reg7__0\(24),
      R => \Audio_Codec/rst\
    );
\slv_reg7_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \slv_reg7__0\(25),
      R => \Audio_Codec/rst\
    );
\slv_reg7_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \slv_reg7__0\(26),
      R => \Audio_Codec/rst\
    );
\slv_reg7_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \slv_reg7__0\(27),
      R => \Audio_Codec/rst\
    );
\slv_reg7_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \slv_reg7__0\(28),
      R => \Audio_Codec/rst\
    );
\slv_reg7_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \slv_reg7__0\(29),
      R => \Audio_Codec/rst\
    );
\slv_reg7_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \slv_reg7__0\(2),
      R => \Audio_Codec/rst\
    );
\slv_reg7_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \slv_reg7__0\(30),
      R => \Audio_Codec/rst\
    );
\slv_reg7_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \slv_reg7__0\(31),
      R => \Audio_Codec/rst\
    );
\slv_reg7_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \slv_reg7__0\(3),
      R => \Audio_Codec/rst\
    );
\slv_reg7_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \slv_reg7__0\(4),
      R => \Audio_Codec/rst\
    );
\slv_reg7_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \slv_reg7__0\(5),
      R => \Audio_Codec/rst\
    );
\slv_reg7_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \slv_reg7__0\(6),
      R => \Audio_Codec/rst\
    );
\slv_reg7_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \slv_reg7__0\(7),
      R => \Audio_Codec/rst\
    );
\slv_reg7_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \slv_reg7__0\(8),
      R => \Audio_Codec/rst\
    );
\slv_reg7_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \slv_reg7__0\(9),
      R => \Audio_Codec/rst\
    );
\slv_reg8[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg8[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(1),
      O => \slv_reg8[15]_i_1_n_0\
    );
\slv_reg8[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg8[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(2),
      O => \slv_reg8[23]_i_1_n_0\
    );
\slv_reg8[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg8[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(3),
      O => \slv_reg8[31]_i_1_n_0\
    );
\slv_reg8[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000002A200000000"
    )
        port map (
      I0 => \slv_reg24[31]_i_2_n_0\,
      I1 => \axi_awaddr_reg_n_0_[6]\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_awaddr(4),
      I4 => mem_logic(4),
      I5 => s00_axi_wvalid,
      O => \slv_reg8[31]_i_2_n_0\
    );
\slv_reg8[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg8[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(0),
      O => \slv_reg8[7]_i_1_n_0\
    );
\slv_reg8_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg8(0),
      R => \Audio_Codec/rst\
    );
\slv_reg8_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg8(10),
      R => \Audio_Codec/rst\
    );
\slv_reg8_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg8(11),
      R => \Audio_Codec/rst\
    );
\slv_reg8_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg8(12),
      R => \Audio_Codec/rst\
    );
\slv_reg8_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg8(13),
      R => \Audio_Codec/rst\
    );
\slv_reg8_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg8(14),
      R => \Audio_Codec/rst\
    );
\slv_reg8_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg8(15),
      R => \Audio_Codec/rst\
    );
\slv_reg8_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \slv_reg8__0\(16),
      R => \Audio_Codec/rst\
    );
\slv_reg8_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \slv_reg8__0\(17),
      R => \Audio_Codec/rst\
    );
\slv_reg8_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \slv_reg8__0\(18),
      R => \Audio_Codec/rst\
    );
\slv_reg8_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \slv_reg8__0\(19),
      R => \Audio_Codec/rst\
    );
\slv_reg8_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg8(1),
      R => \Audio_Codec/rst\
    );
\slv_reg8_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \slv_reg8__0\(20),
      R => \Audio_Codec/rst\
    );
\slv_reg8_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \slv_reg8__0\(21),
      R => \Audio_Codec/rst\
    );
\slv_reg8_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \slv_reg8__0\(22),
      R => \Audio_Codec/rst\
    );
\slv_reg8_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \slv_reg8__0\(23),
      R => \Audio_Codec/rst\
    );
\slv_reg8_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \slv_reg8__0\(24),
      R => \Audio_Codec/rst\
    );
\slv_reg8_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \slv_reg8__0\(25),
      R => \Audio_Codec/rst\
    );
\slv_reg8_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \slv_reg8__0\(26),
      R => \Audio_Codec/rst\
    );
\slv_reg8_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \slv_reg8__0\(27),
      R => \Audio_Codec/rst\
    );
\slv_reg8_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \slv_reg8__0\(28),
      R => \Audio_Codec/rst\
    );
\slv_reg8_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \slv_reg8__0\(29),
      R => \Audio_Codec/rst\
    );
\slv_reg8_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg8(2),
      R => \Audio_Codec/rst\
    );
\slv_reg8_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \slv_reg8__0\(30),
      R => \Audio_Codec/rst\
    );
\slv_reg8_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \slv_reg8__0\(31),
      R => \Audio_Codec/rst\
    );
\slv_reg8_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg8(3),
      R => \Audio_Codec/rst\
    );
\slv_reg8_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg8(4),
      R => \Audio_Codec/rst\
    );
\slv_reg8_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg8(5),
      R => \Audio_Codec/rst\
    );
\slv_reg8_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg8(6),
      R => \Audio_Codec/rst\
    );
\slv_reg8_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg8(7),
      R => \Audio_Codec/rst\
    );
\slv_reg8_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg8(8),
      R => \Audio_Codec/rst\
    );
\slv_reg8_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg8(9),
      R => \Audio_Codec/rst\
    );
\slv_reg9[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg9[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(1),
      O => \slv_reg9[15]_i_1_n_0\
    );
\slv_reg9[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg9[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(2),
      O => \slv_reg9[23]_i_1_n_0\
    );
\slv_reg9[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg9[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(3),
      O => \slv_reg9[31]_i_1_n_0\
    );
\slv_reg9[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002020200020"
    )
        port map (
      I0 => \slv_reg25[31]_i_2_n_0\,
      I1 => mem_logic(4),
      I2 => s00_axi_wvalid,
      I3 => \axi_awaddr_reg_n_0_[6]\,
      I4 => s00_axi_awvalid,
      I5 => s00_axi_awaddr(4),
      O => \slv_reg9[31]_i_2_n_0\
    );
\slv_reg9[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg9[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(0),
      O => \slv_reg9[7]_i_1_n_0\
    );
\slv_reg9_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg9(0),
      R => \Audio_Codec/rst\
    );
\slv_reg9_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg9(10),
      R => \Audio_Codec/rst\
    );
\slv_reg9_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg9(11),
      R => \Audio_Codec/rst\
    );
\slv_reg9_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg9(12),
      R => \Audio_Codec/rst\
    );
\slv_reg9_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg9(13),
      R => \Audio_Codec/rst\
    );
\slv_reg9_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg9(14),
      R => \Audio_Codec/rst\
    );
\slv_reg9_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg9(15),
      R => \Audio_Codec/rst\
    );
\slv_reg9_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \slv_reg9__0\(16),
      R => \Audio_Codec/rst\
    );
\slv_reg9_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \slv_reg9__0\(17),
      R => \Audio_Codec/rst\
    );
\slv_reg9_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \slv_reg9__0\(18),
      R => \Audio_Codec/rst\
    );
\slv_reg9_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \slv_reg9__0\(19),
      R => \Audio_Codec/rst\
    );
\slv_reg9_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg9(1),
      R => \Audio_Codec/rst\
    );
\slv_reg9_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \slv_reg9__0\(20),
      R => \Audio_Codec/rst\
    );
\slv_reg9_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \slv_reg9__0\(21),
      R => \Audio_Codec/rst\
    );
\slv_reg9_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \slv_reg9__0\(22),
      R => \Audio_Codec/rst\
    );
\slv_reg9_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \slv_reg9__0\(23),
      R => \Audio_Codec/rst\
    );
\slv_reg9_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \slv_reg9__0\(24),
      R => \Audio_Codec/rst\
    );
\slv_reg9_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \slv_reg9__0\(25),
      R => \Audio_Codec/rst\
    );
\slv_reg9_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \slv_reg9__0\(26),
      R => \Audio_Codec/rst\
    );
\slv_reg9_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \slv_reg9__0\(27),
      R => \Audio_Codec/rst\
    );
\slv_reg9_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \slv_reg9__0\(28),
      R => \Audio_Codec/rst\
    );
\slv_reg9_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \slv_reg9__0\(29),
      R => \Audio_Codec/rst\
    );
\slv_reg9_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg9(2),
      R => \Audio_Codec/rst\
    );
\slv_reg9_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \slv_reg9__0\(30),
      R => \Audio_Codec/rst\
    );
\slv_reg9_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \slv_reg9__0\(31),
      R => \Audio_Codec/rst\
    );
\slv_reg9_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg9(3),
      R => \Audio_Codec/rst\
    );
\slv_reg9_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg9(4),
      R => \Audio_Codec/rst\
    );
\slv_reg9_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg9(5),
      R => \Audio_Codec/rst\
    );
\slv_reg9_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg9(6),
      R => \Audio_Codec/rst\
    );
\slv_reg9_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg9(7),
      R => \Audio_Codec/rst\
    );
\slv_reg9_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg9(8),
      R => \Audio_Codec/rst\
    );
\slv_reg9_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg9[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg9(9),
      R => \Audio_Codec/rst\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Lab3Component1_1 is
  port (
    tmds : out STD_LOGIC_VECTOR ( 3 downto 0 );
    tmdsb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ac_mclk : out STD_LOGIC;
    ac_dac_sdata : out STD_LOGIC;
    LRCLK_reg : out STD_LOGIC;
    BCLK_int_reg : out STD_LOGIC;
    flagQOut : out STD_LOGIC;
    axi_awready_reg : out STD_LOGIC;
    axi_rvalid_reg : out STD_LOGIC;
    axi_arready_reg : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    scl : inout STD_LOGIC;
    sda : inout STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    btn : in STD_LOGIC_VECTOR ( 3 downto 0 );
    switch : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    ac_adc_sdata : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_bready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Lab3Component1_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Lab3Component1_1 is
  signal Lab3Component1_1_slave_lite_v1_0_S00_AXI_inst_n_43 : STD_LOGIC;
  signal Lab3Component1_1_slave_lite_v1_0_S00_AXI_inst_n_5 : STD_LOGIC;
  signal Lab3Component1_1_slave_lite_v1_0_S00_AXI_inst_n_6 : STD_LOGIC;
  signal axi_arready_i_1_n_0 : STD_LOGIC;
  signal \^axi_arready_reg\ : STD_LOGIC;
  signal axi_awready_i_2_n_0 : STD_LOGIC;
  signal \^axi_awready_reg\ : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal \^axi_rvalid_reg\ : STD_LOGIC;
  signal axi_wready : STD_LOGIC;
  signal axi_wready_i_1_n_0 : STD_LOGIC;
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_wready\ : STD_LOGIC;
  signal state_read : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
  axi_arready_reg <= \^axi_arready_reg\;
  axi_awready_reg <= \^axi_awready_reg\;
  axi_rvalid_reg <= \^axi_rvalid_reg\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_wready <= \^s00_axi_wready\;
Lab3Component1_1_slave_lite_v1_0_S00_AXI_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Lab3Component1_1_slave_lite_v1_0_S00_AXI
     port map (
      BCLK_int_reg => BCLK_int_reg,
      \FSM_onehot_state_write_reg[1]_0\ => Lab3Component1_1_slave_lite_v1_0_S00_AXI_inst_n_5,
      \FSM_onehot_state_write_reg[2]_0\ => Lab3Component1_1_slave_lite_v1_0_S00_AXI_inst_n_6,
      \FSM_onehot_state_write_reg[2]_1\ => Lab3Component1_1_slave_lite_v1_0_S00_AXI_inst_n_43,
      LRCLK_reg => LRCLK_reg,
      ac_adc_sdata => ac_adc_sdata,
      ac_dac_sdata => ac_dac_sdata,
      ac_mclk => ac_mclk,
      axi_arready_reg_0 => \^axi_arready_reg\,
      axi_arready_reg_1 => axi_arready_i_1_n_0,
      axi_awready_reg_0 => \^axi_awready_reg\,
      axi_awready_reg_1 => axi_awready_i_2_n_0,
      axi_bvalid_reg_0 => axi_bvalid_i_1_n_0,
      axi_rvalid_reg_0 => \^axi_rvalid_reg\,
      axi_rvalid_reg_1 => axi_rvalid_i_1_n_0,
      axi_wready => axi_wready,
      axi_wready_reg_0 => axi_wready_i_1_n_0,
      btn(3 downto 0) => btn(3 downto 0),
      flagQOut => flagQOut,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(4 downto 0) => s00_axi_araddr(4 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(4 downto 0) => s00_axi_awaddr(4 downto 0),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bvalid => \^s00_axi_bvalid\,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => \^s00_axi_wready\,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      scl => scl,
      sda => sda,
      state_read(1 downto 0) => state_read(1 downto 0),
      switch(3 downto 0) => switch(3 downto 0),
      tmds(3 downto 0) => tmds(3 downto 0),
      tmdsb(3 downto 0) => tmdsb(3 downto 0)
    );
axi_arready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF55FFFF40554055"
    )
        port map (
      I0 => state_read(0),
      I1 => s00_axi_rready,
      I2 => \^axi_rvalid_reg\,
      I3 => state_read(1),
      I4 => s00_axi_arvalid,
      I5 => \^axi_arready_reg\,
      O => axi_arready_i_1_n_0
    );
axi_awready_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEFFEAEAFFFFEAEA"
    )
        port map (
      I0 => axi_wready,
      I1 => s00_axi_wvalid,
      I2 => Lab3Component1_1_slave_lite_v1_0_S00_AXI_inst_n_6,
      I3 => s00_axi_awvalid,
      I4 => \^axi_awready_reg\,
      I5 => Lab3Component1_1_slave_lite_v1_0_S00_AXI_inst_n_5,
      O => axi_awready_i_2_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFABFF0000"
    )
        port map (
      I0 => axi_wready,
      I1 => Lab3Component1_1_slave_lite_v1_0_S00_AXI_inst_n_6,
      I2 => Lab3Component1_1_slave_lite_v1_0_S00_AXI_inst_n_5,
      I3 => s00_axi_bready,
      I4 => \^s00_axi_bvalid\,
      I5 => Lab3Component1_1_slave_lite_v1_0_S00_AXI_inst_n_43,
      O => axi_bvalid_i_1_n_0
    );
axi_rvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2A2A2A2FAAAAAAA"
    )
        port map (
      I0 => \^axi_rvalid_reg\,
      I1 => s00_axi_rready,
      I2 => state_read(0),
      I3 => \^axi_arready_reg\,
      I4 => s00_axi_arvalid,
      I5 => state_read(1),
      O => axi_rvalid_i_1_n_0
    );
axi_wready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => axi_wready,
      I1 => \^s00_axi_wready\,
      O => axi_wready_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    LED : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    ac_mclk : out STD_LOGIC;
    ac_adc_sdata : in STD_LOGIC;
    ac_dac_sdata : out STD_LOGIC;
    ac_bclk : out STD_LOGIC;
    ac_lrclk : out STD_LOGIC;
    scl : inout STD_LOGIC;
    sda : inout STD_LOGIC;
    tmds : out STD_LOGIC_VECTOR ( 3 downto 0 );
    tmdsb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    btn : in STD_LOGIC_VECTOR ( 4 downto 0 );
    switch : in STD_LOGIC_VECTOR ( 3 downto 0 );
    exSel : in STD_LOGIC;
    clk : in STD_LOGIC;
    flagQOut : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_Lab3Component1_1_0_2,Lab3Component1_1,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Lab3Component1_1,Vivado 2024.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_mode : string;
  attribute x_interface_mode of clk : signal is "slave clk";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
  attribute x_interface_mode of s00_axi_aclk : signal is "slave S00_AXI_CLK";
  attribute x_interface_parameter of s00_axi_aclk : signal is "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXI_RST RST";
  attribute x_interface_mode of s00_axi_aresetn : signal is "slave S00_AXI_RST";
  attribute x_interface_parameter of s00_axi_aresetn : signal is "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute x_interface_info of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute x_interface_info of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute x_interface_info of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute x_interface_info of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute x_interface_info of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute x_interface_info of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute x_interface_info of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute x_interface_info of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute x_interface_info of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  attribute x_interface_info of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute x_interface_info of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute x_interface_info of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute x_interface_mode of s00_axi_awaddr : signal is "slave S00_AXI";
  attribute x_interface_parameter of s00_axi_awaddr : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 7, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute x_interface_info of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute x_interface_info of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute x_interface_info of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute x_interface_info of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute x_interface_info of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
begin
  LED(7) <= \<const0>\;
  LED(6) <= \<const0>\;
  LED(5) <= \<const0>\;
  LED(4) <= \<const1>\;
  LED(3) <= \<const0>\;
  LED(2) <= \<const1>\;
  LED(1) <= \<const0>\;
  LED(0) <= \<const0>\;
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Lab3Component1_1
     port map (
      BCLK_int_reg => ac_bclk,
      LRCLK_reg => ac_lrclk,
      ac_adc_sdata => ac_adc_sdata,
      ac_dac_sdata => ac_dac_sdata,
      ac_mclk => ac_mclk,
      axi_arready_reg => s00_axi_arready,
      axi_awready_reg => s00_axi_awready,
      axi_rvalid_reg => s00_axi_rvalid,
      btn(3 downto 0) => btn(3 downto 0),
      flagQOut => flagQOut,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(4 downto 0) => s00_axi_araddr(6 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(4 downto 0) => s00_axi_awaddr(6 downto 2),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      scl => scl,
      sda => sda,
      switch(3 downto 0) => switch(3 downto 0),
      tmds(3 downto 0) => tmds(3 downto 0),
      tmdsb(3 downto 0) => tmdsb(3 downto 0)
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
