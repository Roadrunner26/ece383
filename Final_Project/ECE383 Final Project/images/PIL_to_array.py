from PIL import Image

# === CONFIG ===
#filename = "left_doodle.png"
filename = "BlueC.png"
N = 7  # Number of columns (0 to 46 = 47 entries)
M = 7  # Number of rows (0 to 44 = 45 entries)
output_file = "BlueC.vhd"

# === LOAD IMAGE ===
img = Image.open(filename).convert("RGB")
pixels = list(img.getdata())

# === VALIDATION ===
expected_pixels = (N + 1) * (M + 1)  # 47 * 45 = 2115
if len(pixels) < expected_pixels:
    raise ValueError(f"Not enough pixels: expected at least {expected_pixels}, but got {len(pixels)}.")

# === GENERATE VHDL 2D ARRAY ===
with open(output_file, "w") as f:
    f.write("type rom_row_type is array ({} downto 0) of std_logic_vector(23 downto 0);\n".format(N))
    f.write("type rom_type is array ({} downto 0) of rom_row_type;\n\n".format(M))
    f.write("signal ROM : rom_type := (\n")

    for row_idx in range(M + 1):
        start_idx = row_idx * (N + 1)
        end_idx = start_idx + (N + 1)
        row_pixels = pixels[start_idx:end_idx]

        f.write(f"    {row_idx} => (")
        for col_idx, (r, g, b) in enumerate(row_pixels):
            rgb_val = (r << 16) | (g << 8) | b
            hexval = f'X"{rgb_val:06X}"'
            f.write(hexval)
            if col_idx != N:
                f.write(", ")
        f.write(")")
        if row_idx != M:
            f.write(",\n")
        else:
            f.write("\n");  # no comma after last row

    f.write(");\n")

print(f"Done! VHDL ROM array written to {output_file}")
