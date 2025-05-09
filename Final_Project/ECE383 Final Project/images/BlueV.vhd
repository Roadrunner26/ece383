type rom_row_type is array (6 downto 0) of std_logic_vector(23 downto 0);
type rom_type is array (8 downto 0) of rom_row_type;

signal ROM : rom_type := (
    0 => (X"0C4C4E", X"034D4E", X"14535A", X"184E58", X"13434F", X"1B4956", X"194B54"),
    1 => (X"5CAFB7", X"43A0A7", X"00232F", X"001321", X"00101E", X"6499A7", X"64A4AD"),
    2 => (X"43A3B1", X"41A9B6", X"001C2C", X"001A2A", X"002D3F", X"5494A0", X"67B2B8"),
    3 => (X"3A96AB", X"60CADA", X"002032", X"002B3C", X"001F2D", X"5298A2", X"539CA2"),
    4 => (X"519EB8", X"51ADC4", X"3E9BAC", X"001D28", X"6EC1C9", X"5BA4AA", X"6CA9AC"),
    5 => (X"002641", X"509CB4", X"4FA5B4", X"50A7B0", X"459498", X"60A1A3", X"001619"),
    6 => (X"001028", X"002035", X"5CA0AD", X"5DA2A7", X"6DABAA", X"000F0C", X"022020"),
    7 => (X"000919", X"002737", X"001A25", X"59848A", X"001C1C", X"0E2C2A", X"000604"),
    8 => (X"00141C", X"000810", X"00050C", X"051016", X"000508", X"000202", X"01100B")
);
