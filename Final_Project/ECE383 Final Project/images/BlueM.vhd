type rom_row_type is array (6 downto 0) of std_logic_vector(23 downto 0);
type rom_type is array (7 downto 0) of rom_row_type;

signal ROM : rom_type := (
    0 => (X"70989F", X"4D9893", X"003229", X"001F18", X"003830", X"5BB8AD", X"439F94"),
    1 => (X"69AAB0", X"4EAEAA", X"4DB8B2", X"003735", X"4BB0AC", X"36B0A5", X"198E85"),
    2 => (X"4E949E", X"49B0B5", X"28999D", X"58BAC3", X"41AAB0", X"2BB0AD", X"48C8C7"),
    3 => (X"5691A3", X"3796AA", X"49B3C9", X"3F96B2", X"4CACC5", X"31B3C1", X"28A6B5"),
    4 => (X"669FB0", X"5AAEC8", X"002D4D", X"5A9FC6", X"00284B", X"3AAEC5", X"36A6BE"),
    5 => (X"5999A2", X"569CB3", X"001D3B", X"002C50", X"000C2E", X"4DA9BE", X"52AAC0"),
    6 => (X"6FA4A8", X"699DAA", X"001C32", X"000420", X"000D26", X"569AA7", X"66A5B4"),
    7 => (X"00060C", X"00090A", X"000609", X"040B13", X"07141A", X"00130F", X"000D09")
);
