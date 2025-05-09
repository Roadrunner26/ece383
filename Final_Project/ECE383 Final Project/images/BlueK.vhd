type rom_row_type is array (7 downto 0) of std_logic_vector(23 downto 0);
type rom_type is array (7 downto 0) of rom_row_type;

signal ROM : rom_type := (
    0 => (X"001429", X"6F9FB6", X"6591AA", X"000F26", X"002934", X"00131B", X"6A8B9A", X"718495"),
    1 => (X"002A45", X"498CA9", X"4E8EB1", X"003653", X"001C27", X"57A4AC", X"679BA9", X"07283B"),
    2 => (X"00405A", X"52A7C4", X"489BBB", X"00324E", X"52AEBB", X"4D9DA8", X"001B2E", X"00061E"),
    3 => (X"003443", X"369DB0", X"43A7BE", X"45A4BA", X"4CA2B1", X"002838", X"000E27", X"000725"),
    4 => (X"002C31", X"4CB3BC", X"3CA2AE", X"4BABB7", X"469FA7", X"5DA1AC", X"00091C", X"11213A"),
    5 => (X"002620", X"459E9C", X"43999A", X"003F3F", X"4EB1AE", X"439B9C", X"58979E", X"001C27"),
    6 => (X"002A20", X"67A8A2", X"77B8B4", X"00211E", X"001B15", X"67BDBA", X"6BAFB0", X"5B9094"),
    7 => (X"000E06", X"001B17", X"000A09", X"001A1A", X"053C3E", X"001213", X"001C20", X"002024")
);
