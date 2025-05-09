type rom_row_type is array (7 downto 0) of std_logic_vector(23 downto 0);
type rom_type is array (7 downto 0) of rom_row_type;

signal ROM : rom_type := (
    0 => (X"00282B", X"00181E", X"668894", X"8BABBA", X"658695", X"81A5B3", X"00101D", X"234F5A"),
    1 => (X"001115", X"7BADB4", X"7DA3B0", X"001726", X"022634", X"5A818E", X"7CA8B3", X"265660"),
    2 => (X"5C9CA5", X"669FA8", X"001724", X"001421", X"00121E", X"000F1A", X"000C15", X"32636A"),
    3 => (X"61A6B3", X"5C96A2", X"000915", X"000712", X"04252E", X"000A12", X"00191F", X"0E3F43"),
    4 => (X"63AABA", X"67A2B0", X"01232D", X"00131B", X"00080E", X"012428", X"000E10", X"205050"),
    5 => (X"001525", X"6B99A8", X"5E7F88", X"00171D", X"072A2E", X"587E81", X"799CA0", X"315959"),
    6 => (X"000310", X"001220", X"60818A", X"79A5A8", X"629596", X"6F9C9F", X"000D16", X"0F272F"),
    7 => (X"02000B", X"060E19", X"11333C", X"002B2F", X"001314", X"002327", X"011B28", X"394C5A")
);
