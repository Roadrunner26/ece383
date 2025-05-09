type rom_row_type is array (7 downto 0) of std_logic_vector(23 downto 0);
type rom_type is array (7 downto 0) of rom_row_type;

signal ROM : rom_type := (
    0 => (X"000B15", X"001310", X"76BBB4", X"508B87", X"6F9F9F", X"6F9699", X"789B9F", X"6A9194"),
    1 => (X"001E27", X"00342F", X"41968F", X"70B8B5", X"003132", X"07383D", X"000E12", X"002226"),
    2 => (X"001419", X"002A2B", X"55AEAC", X"479295", X"00272F", X"073944", X"001B25", X"00242D"),
    3 => (X"001F23", X"00383C", X"3D9096", X"5A9CA8", X"699EAE", X"588193", X"88ABBF", X"000A1B"),
    4 => (X"001C20", X"00121E", X"70B1C3", X"7CACC2", X"001A35", X"000623", X"000928", X"000D28"),
    5 => (X"000E12", X"002530", X"5B8E9F", X"5D889B", X"001128", X"021732", X"00021C", X"000A25"),
    6 => (X"000D10", X"000F14", X"689497", X"75A6AA", X"5B8C91", X"6D98A1", X"83A3B0", X"6E7F91"),
    7 => (X"00040B", X"002223", X"002928", X"001E1D", X"002324", X"002529", X"001F26", X"001C27")
);
