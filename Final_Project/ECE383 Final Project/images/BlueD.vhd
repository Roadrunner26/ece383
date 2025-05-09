type rom_row_type is array (7 downto 0) of std_logic_vector(23 downto 0);
type rom_type is array (7 downto 0) of rom_row_type;

signal ROM : rom_type := (
    0 => (X"001822", X"7BAAB4", X"62919B", X"54808B", X"79A3AF", X"7399A6", X"042836", X"000817"),
    1 => (X"000F17", X"6298A0", X"6399A1", X"1A4F57", X"002A33", X"4B7A84", X"6995A0", X"001E2B"),
    2 => (X"00272D", X"70AAAE", X"4D888C", X"003135", X"001116", X"001C22", X"6E9FA6", X"68979F"),
    3 => (X"002426", X"5D9798", X"92CECE", X"001212", X"003031", X"003032", X"578D8F", X"72A3A7"),
    4 => (X"002220", X"649F9B", X"4F8C87", X"002520", X"00120E", X"001815", X"669C9A", X"76A8A7"),
    5 => (X"00221F", X"5D948F", X"5B948E", X"003530", X"001916", X"6E9F9B", X"669994", X"00211E"),
    6 => (X"012728", X"6E9C9A", X"5C8D89", X"7FACA9", X"729193", X"688887", X"002521", X"000C09"),
    7 => (X"00191F", X"002427", X"002626", X"001C1E", X"000C10", X"011D21", X"001C1A", X"001E1E")
);
