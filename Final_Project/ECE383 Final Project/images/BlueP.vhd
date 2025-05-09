type rom_row_type is array (6 downto 0) of std_logic_vector(23 downto 0);
type rom_type is array (7 downto 0) of rom_row_type;

signal ROM : rom_type := (
    0 => (X"5AA0AA", X"5EABB5", X"5194A4", X"5DA1B4", X"509DAF", X"75B8C8", X"000C19"),
    1 => (X"4EABB3", X"48A9B0", X"00303D", X"002231", X"00242F", X"40909B", X"6CAFB8"),
    2 => (X"38A0A9", X"3EA9AF", X"00202C", X"001C29", X"003137", X"67BCBF", X"4E9DA2"),
    3 => (X"4FBAC2", X"46B4B5", X"002F39", X"001E29", X"003637", X"4A9A99", X"59AAAD"),
    4 => (X"42A5AA", X"4DB1AF", X"599299", X"78A3A9", X"649F9B", X"5C9F98", X"00292B"),
    5 => (X"4CA0A2", X"4EA09C", X"002124", X"001719", X"000E07", X"000D07", X"001015"),
    6 => (X"68A6A5", X"65A29B", X"031718", X"000202", X"000D04", X"122722", X"00080E"),
    7 => (X"000D07", X"001D16", X"000405", X"1A1112", X"0F100A", X"000200", X"000106")
);
