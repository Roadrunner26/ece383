type rom_row_type is array (7 downto 0) of std_logic_vector(23 downto 0);
type rom_type is array (8 downto 0) of rom_row_type;

signal ROM : rom_type := (
    0 => (X"3E6464", X"355959", X"214545", X"2E5051", X"315354", X"143637", X"163839", X"4F6E70"),
    1 => (X"000F10", X"5E9192", X"5A8C8D", X"6D9FA0", X"629294", X"6F9FA1", X"6E9EA0", X"001113"),
    2 => (X"002E30", X"5C9C9E", X"5E9B9E", X"003134", X"002B2F", X"003135", X"609B9F", X"639EA2"),
    3 => (X"002F35", X"579EA4", X"65ACB2", X"003239", X"003E45", X"00252C", X"6BAEB6", X"54979F"),
    4 => (X"00303A", X"66B3BD", X"37848E", X"66B0BB", X"5EA8B3", X"4D95A1", X"559DA9", X"001E2A"),
    5 => (X"00313E", X"4B99A6", X"54A2AF", X"002836", X"002533", X"00202F", X"559EAD", X"6BB4C3"),
    6 => (X"001223", X"61A4B5", X"5598A9", X"002636", X"00141F", X"00222B", X"5EA1A9", X"51919A"),
    7 => (X"000C20", X"729CB2", X"618EA1", X"70A0AC", X"6DA0A1", X"5A8D88", X"6B9D92", X"00251C"),
    8 => (X"07283B", X"00071C", X"001A2A", X"022A32", X"002825", X"002318", X"00180A", X"000C00")
);
