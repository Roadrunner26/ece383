type rom_row_type is array (7 downto 0) of std_logic_vector(23 downto 0);
type rom_type is array (7 downto 0) of rom_row_type;

signal ROM : rom_type := (
    0 => (X"001E25", X"69A3A7", X"60979C", X"5F8B94", X"65949C", X"64A1A4", X"00161B", X"083A45"),
    1 => (X"6BA7AF", X"73BCC2", X"00141C", X"001B2B", X"002A3A", X"49A2A8", X"51ABB3", X"0E4F61"),
    2 => (X"4D8C93", X"449599", X"00363D", X"001528", X"001125", X"58C0C9", X"37A2AC", X"155B72"),
    3 => (X"6CA5AC", X"54A3A7", X"003239", X"000F24", X"001229", X"49BAC2", X"35A7B1", X"084B65"),
    4 => (X"77A7AB", X"4E9695", X"00242A", X"001F35", X"001D32", X"2D9AA1", X"42B1BA", X"1C5872"),
    5 => (X"84A1A5", X"6FA7A6", X"001E21", X"122D40", X"00182A", X"369398", X"4DACB2", X"305D72"),
    6 => (X"000609", X"628B87", X"82AAAA", X"6E7C89", X"758F9C", X"72BCBD", X"00191C", X"122F3F"),
    7 => (X"131718", X"011A16", X"000805", X"03060F", X"000B13", X"00100C", X"002B27", X"435059")
);
