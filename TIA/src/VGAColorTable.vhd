-- Atari on an FPGA
-- Masters of Engineering Project
-- Cornell University, 2007
-- Daniel Beer
-- TIAColorTable.v
-- Synchronous color lookup table that maps the Atari indexed colors to RGB.
-- ported from Verilog to VHDL: Frank Buss, 2012

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

-- -----------------------------------------------------------------------

entity VGAColorTable is
	port (
		-- Clock input	
		clk : in std_logic;
		
		-- luminance
		lum : in std_logic_vector(3 downto 0);
		
		-- hue
		hue : in std_logic_vector(3 downto 0);

		-- Mode (0 = NTSC, 1 = PAL, 2 = SECAM)
		mode : in std_logic_vector(1 downto 0);

		-- 24 bit color output
		outColor : out std_logic_vector(23 downto 0)
	);
end;

architecture rtl of VGAColorTable is
begin

	process(clk)
	begin
		if rising_edge(clk) then
			case "0000000" & mode & hue & lum(3 downto 1) is
				-- NTSC Colors
				when X"0000" => outColor <= x"000000";
				when X"0001" => outColor <= x"404040";
				when X"0002" => outColor <= x"6C6C6C";
				when X"0003" => outColor <= x"909090";
				when X"0004" => outColor <= x"B0B0B0";
				when X"0005" => outColor <= x"C8C8C8";
				when X"0006" => outColor <= x"DCDCDC";
				when X"0007" => outColor <= x"ECECEC";
				when X"0008" => outColor <= x"444400";
				when X"0009" => outColor <= x"646410";
				when X"000a" => outColor <= x"848424";
				when X"000b" => outColor <= x"A0A034";
				when X"000c" => outColor <= x"B8B840";
				when X"000d" => outColor <= x"D0D050";
				when X"000e" => outColor <= x"E8E85C";
				when X"000f" => outColor <= x"FCFC68";
				when X"0010" => outColor <= x"702800";
				when X"0011" => outColor <= x"844414";
				when X"0012" => outColor <= x"985C28";
				when X"0013" => outColor <= x"AC783C";
				when X"0014" => outColor <= x"BC8C4C";
				when X"0015" => outColor <= x"CCA05C";
				when X"0016" => outColor <= x"DCB468";
				when X"0017" => outColor <= x"ECC878";
				when X"0018" => outColor <= x"841800";
				when X"0019" => outColor <= x"983418";
				when X"001a" => outColor <= x"AC5030";
				when X"001b" => outColor <= x"C06848";
				when X"001c" => outColor <= x"D0805C";
				when X"001d" => outColor <= x"E09470";
				when X"001e" => outColor <= x"ECA880";
				when X"001f" => outColor <= x"FCBC94";
				when X"0020" => outColor <= x"880000";
				when X"0021" => outColor <= x"9C2020";
				when X"0022" => outColor <= x"B03C3C";
				when X"0023" => outColor <= x"C05858";
				when X"0024" => outColor <= x"D07070";
				when X"0025" => outColor <= x"E08888";
				when X"0026" => outColor <= x"ECA0A0";
				when X"0027" => outColor <= x"FCB4B4";
				when X"0028" => outColor <= x"78005C";
				when X"0029" => outColor <= x"8C2074";
				when X"002a" => outColor <= x"A03C88";
				when X"002b" => outColor <= x"B0589C";
				when X"002c" => outColor <= x"C070B0";
				when X"002d" => outColor <= x"D084C0";
				when X"002e" => outColor <= x"DC9CD0";
				when X"002f" => outColor <= x"ECB0E0";
				when X"0030" => outColor <= x"480078";
				when X"0031" => outColor <= x"602090";
				when X"0032" => outColor <= x"783CA4";
				when X"0033" => outColor <= x"8C58B8";
				when X"0034" => outColor <= x"A070CC";
				when X"0035" => outColor <= x"B484DC";
				when X"0036" => outColor <= x"C49CEC";
				when X"0037" => outColor <= x"D4B0FC";
				when X"0038" => outColor <= x"140084";
				when X"0039" => outColor <= x"302098";
				when X"003a" => outColor <= x"4C3CAC";
				when X"003b" => outColor <= x"6858C0";
				when X"003c" => outColor <= x"7C70D0";
				when X"003d" => outColor <= x"9488E0";
				when X"003e" => outColor <= x"A8A0EC";
				when X"003f" => outColor <= x"BCB4FC";
				when X"0040" => outColor <= x"000088";
				when X"0041" => outColor <= x"1C209C";
				when X"0042" => outColor <= x"3840B0";
				when X"0043" => outColor <= x"505CC0";
				when X"0044" => outColor <= x"6874D0";
				when X"0045" => outColor <= x"7C8CE0";
				when X"0046" => outColor <= x"90A4EC";
				when X"0047" => outColor <= x"A4B8FC";
				when X"0048" => outColor <= x"00187C";
				when X"0049" => outColor <= x"1C3890";
				when X"004a" => outColor <= x"3854A8";
				when X"004b" => outColor <= x"5070BC";
				when X"004c" => outColor <= x"6888CC";
				when X"004d" => outColor <= x"7C9CDC";
				when X"004e" => outColor <= x"90B4EC";
				when X"004f" => outColor <= x"A4C8FC";
				when X"0050" => outColor <= x"002C5C";
				when X"0051" => outColor <= x"1C4C78";
				when X"0052" => outColor <= x"386890";
				when X"0053" => outColor <= x"5084AC";
				when X"0054" => outColor <= x"689CC0";
				when X"0055" => outColor <= x"7CB4D4";
				when X"0056" => outColor <= x"90CCE8";
				when X"0057" => outColor <= x"A4E0FC";
				when X"0058" => outColor <= x"003C2C";
				when X"0059" => outColor <= x"1C5C48";
				when X"005a" => outColor <= x"387C64";
				when X"005b" => outColor <= x"509C80";
				when X"005c" => outColor <= x"68B494";
				when X"005d" => outColor <= x"7CD0AC";
				when X"005e" => outColor <= x"90E4C0";
				when X"005f" => outColor <= x"A4FCD4";
				when X"0060" => outColor <= x"003C00";
				when X"0061" => outColor <= x"205C20";
				when X"0062" => outColor <= x"407C40";
				when X"0063" => outColor <= x"5C9C5C";
				when X"0064" => outColor <= x"74B474";
				when X"0065" => outColor <= x"8CD08C";
				when X"0066" => outColor <= x"A4E4A4";
				when X"0067" => outColor <= x"B8FCB8";
				when X"0068" => outColor <= x"143800";
				when X"0069" => outColor <= x"345C1C";
				when X"006a" => outColor <= x"507C38";
				when X"006b" => outColor <= x"6C9850";
				when X"006c" => outColor <= x"84B468";
				when X"006d" => outColor <= x"9CCC7C";
				when X"006e" => outColor <= x"B4E490";
				when X"006f" => outColor <= x"C8FCA4";
				when X"0070" => outColor <= x"2C3000";
				when X"0071" => outColor <= x"4C501C";
				when X"0072" => outColor <= x"687034";
				when X"0073" => outColor <= x"848C4C";
				when X"0074" => outColor <= x"9CA864";
				when X"0075" => outColor <= x"B4C078";
				when X"0076" => outColor <= x"CCD488";
				when X"0077" => outColor <= x"E0EC9C";
				when X"0078" => outColor <= x"442800";
				when X"0079" => outColor <= x"644818";
				when X"007a" => outColor <= x"846830";
				when X"007b" => outColor <= x"A08444";
				when X"007c" => outColor <= x"B89C58";
				when X"007d" => outColor <= x"D0B46C";
				when X"007e" => outColor <= x"E8CC7C";
				when X"007f" => outColor <= x"FCE08C";
				-- PAL Colors
				when X"0080" => outColor <= x"000000";
				when X"0081" => outColor <= x"282828";
				when X"0082" => outColor <= x"505050";
				when X"0083" => outColor <= x"747474";
				when X"0084" => outColor <= x"949494";
				when X"0085" => outColor <= x"B4B4B4";
				when X"0086" => outColor <= x"D0D0D0";
				when X"0087" => outColor <= x"ECECEC";
				when X"0088" => outColor <= x"000000";
				when X"0089" => outColor <= x"282828";
				when X"008a" => outColor <= x"505050";
				when X"008b" => outColor <= x"747474";
				when X"008c" => outColor <= x"949494";
				when X"008d" => outColor <= x"B4B4B4";
				when X"008e" => outColor <= x"D0D0D0";
				when X"008f" => outColor <= x"ECECEC";
				when X"0090" => outColor <= x"805800";
				when X"0091" => outColor <= x"947020";
				when X"0092" => outColor <= x"A8843C";
				when X"0093" => outColor <= x"BC9C58";
				when X"0094" => outColor <= x"CCAC70";
				when X"0095" => outColor <= x"DCC084";
				when X"0096" => outColor <= x"ECD09C";
				when X"0097" => outColor <= x"FCE0B0";
				when X"0098" => outColor <= x"445C00";
				when X"0099" => outColor <= x"5C7820";
				when X"009a" => outColor <= x"74903C";
				when X"009b" => outColor <= x"8CAC58";
				when X"009c" => outColor <= x"A0C070";
				when X"009d" => outColor <= x"B0D484";
				when X"009e" => outColor <= x"C4E89C";
				when X"009f" => outColor <= x"D4FCB0";
				when X"00a0" => outColor <= x"703400";
				when X"00a1" => outColor <= x"885020";
				when X"00a2" => outColor <= x"A0683C";
				when X"00a3" => outColor <= x"B48458";
				when X"00a4" => outColor <= x"C89870";
				when X"00a5" => outColor <= x"DCAC84";
				when X"00a6" => outColor <= x"ECC09C";
				when X"00a7" => outColor <= x"FCD4B0";
				when X"00a8" => outColor <= x"006414";
				when X"00a9" => outColor <= x"208034";
				when X"00aa" => outColor <= x"3C9850";
				when X"00ab" => outColor <= x"58B06C";
				when X"00ac" => outColor <= x"70C484";
				when X"00ad" => outColor <= x"84D89C";
				when X"00ae" => outColor <= x"9CE8B4";
				when X"00af" => outColor <= x"B0FCC8";
				when X"00b0" => outColor <= x"700014";
				when X"00b1" => outColor <= x"882034";
				when X"00b2" => outColor <= x"A03C50";
				when X"00b3" => outColor <= x"B4586C";
				when X"00b4" => outColor <= x"C87084";
				when X"00b5" => outColor <= x"DC849C";
				when X"00b6" => outColor <= x"EC9CB4";
				when X"00b7" => outColor <= x"FCB0C8";
				when X"00b8" => outColor <= x"005C5C";
				when X"00b9" => outColor <= x"207474";
				when X"00ba" => outColor <= x"3C8C8C";
				when X"00bb" => outColor <= x"58A4A4";
				when X"00bc" => outColor <= x"70B8B8";
				when X"00bd" => outColor <= x"84C8C8";
				when X"00be" => outColor <= x"9CDCDC";
				when X"00bf" => outColor <= x"B0ECEC";
				when X"00c0" => outColor <= x"70005C";
				when X"00c1" => outColor <= x"842074";
				when X"00c2" => outColor <= x"943C88";
				when X"00c3" => outColor <= x"A8589C";
				when X"00c4" => outColor <= x"B470B0";
				when X"00c5" => outColor <= x"C484C0";
				when X"00c6" => outColor <= x"D09CD0";
				when X"00c7" => outColor <= x"E0B0E0";
				when X"00c8" => outColor <= x"003C70";
				when X"00c9" => outColor <= x"1C5888";
				when X"00ca" => outColor <= x"3874A0";
				when X"00cb" => outColor <= x"508CB4";
				when X"00cc" => outColor <= x"68A4C8";
				when X"00cd" => outColor <= x"7CB8DC";
				when X"00ce" => outColor <= x"90CCEC";
				when X"00cf" => outColor <= x"A4E0FC";
				when X"00d0" => outColor <= x"580070";
				when X"00d1" => outColor <= x"6C2088";
				when X"00d2" => outColor <= x"803CA0";
				when X"00d3" => outColor <= x"9458B4";
				when X"00d4" => outColor <= x"A470C8";
				when X"00d5" => outColor <= x"B484DC";
				when X"00d6" => outColor <= x"C49CEC";
				when X"00d7" => outColor <= x"D4B0FC";
				when X"00d8" => outColor <= x"002070";
				when X"00d9" => outColor <= x"1C3C88";
				when X"00da" => outColor <= x"3858A0";
				when X"00db" => outColor <= x"5074B4";
				when X"00dc" => outColor <= x"6888C8";
				when X"00dd" => outColor <= x"7CA0DC";
				when X"00de" => outColor <= x"90B4EC";
				when X"00df" => outColor <= x"A4C8FC";
				when X"00e0" => outColor <= x"3C0080";
				when X"00e1" => outColor <= x"542094";
				when X"00e2" => outColor <= x"6C3CA8";
				when X"00e3" => outColor <= x"8058BC";
				when X"00e4" => outColor <= x"9470CC";
				when X"00e5" => outColor <= x"A884DC";
				when X"00e6" => outColor <= x"B89CEC";
				when X"00e7" => outColor <= x"C8B0FC";
				when X"00e8" => outColor <= x"000088";
				when X"00e9" => outColor <= x"20209C";
				when X"00ea" => outColor <= x"3C3CB0";
				when X"00eb" => outColor <= x"5858C0";
				when X"00ec" => outColor <= x"7070D0";
				when X"00ed" => outColor <= x"8484E0";
				when X"00ee" => outColor <= x"9C9CEC";
				when X"00ef" => outColor <= x"B0B0FC";
				when X"00f0" => outColor <= x"000000";
				when X"00f1" => outColor <= x"282828";
				when X"00f2" => outColor <= x"505050";
				when X"00f3" => outColor <= x"747474";
				when X"00f4" => outColor <= x"949494";
				when X"00f5" => outColor <= x"B4B4B4";
				when X"00f6" => outColor <= x"D0D0D0";
				when X"00f7" => outColor <= x"ECECEC";
				when X"00f8" => outColor <= x"000000";
				when X"00f9" => outColor <= x"282828";
				when X"00fa" => outColor <= x"505050";
				when X"00fb" => outColor <= x"747474";
				when X"00fc" => outColor <= x"949494";
				when X"00fd" => outColor <= x"B4B4B4";
				when X"00fe" => outColor <= x"D0D0D0";
				when X"00ff" => outColor <= x"ECECEC";
				-- SECAM Colors
				when X"0100" => outColor <= x"000000";
				when X"0101" => outColor <= x"2121FF";
				when X"0102" => outColor <= x"F03C79";
				when X"0103" => outColor <= x"FF50FF";
				when X"0104" => outColor <= x"7FFF00";
				when X"0105" => outColor <= x"7FFFFF";
				when X"0106" => outColor <= x"FFFF3F";
				when X"0107" => outColor <= x"FFFFFF";
				when X"0108" => outColor <= x"000000";
				when X"0109" => outColor <= x"2121FF";
				when X"010a" => outColor <= x"F03C79";
				when X"010b" => outColor <= x"FF50FF";
				when X"010c" => outColor <= x"7FFF00";
				when X"010d" => outColor <= x"7FFFFF";
				when X"010e" => outColor <= x"FFFF3F";
				when X"010f" => outColor <= x"FFFFFF";
				when X"0110" => outColor <= x"000000";
				when X"0111" => outColor <= x"2121FF";
				when X"0112" => outColor <= x"F03C79";
				when X"0113" => outColor <= x"FF50FF";
				when X"0114" => outColor <= x"7FFF00";
				when X"0115" => outColor <= x"7FFFFF";
				when X"0116" => outColor <= x"FFFF3F";
				when X"0117" => outColor <= x"FFFFFF";
				when X"0118" => outColor <= x"000000";
				when X"0119" => outColor <= x"2121FF";
				when X"011a" => outColor <= x"F03C79";
				when X"011b" => outColor <= x"FF50FF";
				when X"011c" => outColor <= x"7FFF00";
				when X"011d" => outColor <= x"7FFFFF";
				when X"011e" => outColor <= x"FFFF3F";
				when X"011f" => outColor <= x"FFFFFF";
				when X"0120" => outColor <= x"000000";
				when X"0121" => outColor <= x"2121FF";
				when X"0122" => outColor <= x"F03C79";
				when X"0123" => outColor <= x"FF50FF";
				when X"0124" => outColor <= x"7FFF00";
				when X"0125" => outColor <= x"7FFFFF";
				when X"0126" => outColor <= x"FFFF3F";
				when X"0127" => outColor <= x"FFFFFF";
				when X"0128" => outColor <= x"000000";
				when X"0129" => outColor <= x"2121FF";
				when X"012a" => outColor <= x"F03C79";
				when X"012b" => outColor <= x"FF50FF";
				when X"012c" => outColor <= x"7FFF00";
				when X"012d" => outColor <= x"7FFFFF";
				when X"012e" => outColor <= x"FFFF3F";
				when X"012f" => outColor <= x"FFFFFF";
				when X"0130" => outColor <= x"000000";
				when X"0131" => outColor <= x"2121FF";
				when X"0132" => outColor <= x"F03C79";
				when X"0133" => outColor <= x"FF50FF";
				when X"0134" => outColor <= x"7FFF00";
				when X"0135" => outColor <= x"7FFFFF";
				when X"0136" => outColor <= x"FFFF3F";
				when X"0137" => outColor <= x"FFFFFF";
				when X"0138" => outColor <= x"000000";
				when X"0139" => outColor <= x"2121FF";
				when X"013a" => outColor <= x"F03C79";
				when X"013b" => outColor <= x"FF50FF";
				when X"013c" => outColor <= x"7FFF00";
				when X"013d" => outColor <= x"7FFFFF";
				when X"013e" => outColor <= x"FFFF3F";
				when X"013f" => outColor <= x"FFFFFF";
				when X"0140" => outColor <= x"000000";
				when X"0141" => outColor <= x"2121FF";
				when X"0142" => outColor <= x"F03C79";
				when X"0143" => outColor <= x"FF50FF";
				when X"0144" => outColor <= x"7FFF00";
				when X"0145" => outColor <= x"7FFFFF";
				when X"0146" => outColor <= x"FFFF3F";
				when X"0147" => outColor <= x"FFFFFF";
				when X"0148" => outColor <= x"000000";
				when X"0149" => outColor <= x"2121FF";
				when X"014a" => outColor <= x"F03C79";
				when X"014b" => outColor <= x"FF50FF";
				when X"014c" => outColor <= x"7FFF00";
				when X"014d" => outColor <= x"7FFFFF";
				when X"014e" => outColor <= x"FFFF3F";
				when X"014f" => outColor <= x"FFFFFF";
				when X"0150" => outColor <= x"000000";
				when X"0151" => outColor <= x"2121FF";
				when X"0152" => outColor <= x"F03C79";
				when X"0153" => outColor <= x"FF50FF";
				when X"0154" => outColor <= x"7FFF00";
				when X"0155" => outColor <= x"7FFFFF";
				when X"0156" => outColor <= x"FFFF3F";
				when X"0157" => outColor <= x"FFFFFF";
				when X"0158" => outColor <= x"000000";
				when X"0159" => outColor <= x"2121FF";
				when X"015a" => outColor <= x"F03C79";
				when X"015b" => outColor <= x"FF50FF";
				when X"015c" => outColor <= x"7FFF00";
				when X"015d" => outColor <= x"7FFFFF";
				when X"015e" => outColor <= x"FFFF3F";
				when X"015f" => outColor <= x"FFFFFF";
				when X"0160" => outColor <= x"000000";
				when X"0161" => outColor <= x"2121FF";
				when X"0162" => outColor <= x"F03C79";
				when X"0163" => outColor <= x"FF50FF";
				when X"0164" => outColor <= x"7FFF00";
				when X"0165" => outColor <= x"7FFFFF";
				when X"0166" => outColor <= x"FFFF3F";
				when X"0167" => outColor <= x"FFFFFF";
				when X"0168" => outColor <= x"000000";
				when X"0169" => outColor <= x"2121FF";
				when X"016a" => outColor <= x"F03C79";
				when X"016b" => outColor <= x"FF50FF";
				when X"016c" => outColor <= x"7FFF00";
				when X"016d" => outColor <= x"7FFFFF";
				when X"016e" => outColor <= x"FFFF3F";
				when X"016f" => outColor <= x"FFFFFF";
				when X"0170" => outColor <= x"000000";
				when X"0171" => outColor <= x"2121FF";
				when X"0172" => outColor <= x"F03C79";
				when X"0173" => outColor <= x"FF50FF";
				when X"0174" => outColor <= x"7FFF00";
				when X"0175" => outColor <= x"7FFFFF";
				when X"0176" => outColor <= x"FFFF3F";
				when X"0177" => outColor <= x"FFFFFF";
				when X"0178" => outColor <= x"000000";
				when X"0179" => outColor <= x"2121FF";
				when X"017a" => outColor <= x"F03C79";
				when X"017b" => outColor <= x"FF50FF";
				when X"017c" => outColor <= x"7FFF00";
				when X"017d" => outColor <= x"7FFFFF";
				when X"017e" => outColor <= x"FFFF3F";
				when X"017f" => outColor <= x"FFFFFF";
				when others => outColor <= (others => '0');
			end case;
		end if;
	end process;

end;