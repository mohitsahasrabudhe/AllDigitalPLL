
	


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

--  Uncomment the following lines to use the declarations that are
--  provided for instantiating Xilinx primitive components.
--library UNISIM;
--use UNISIM.VComponents.all;

entity fdd is
    Port ( clk_in : in std_logic;
    		 sel:in std_logic_vector(3 downto 0);
		 mout:out std_logic;
           clk_out : out std_logic_vector(15 downto 0);
           reset : in std_logic);
end fdd;

architecture Behavioral of fdd is
 	signal temp:std_logic_vector(15 downto 0):=x"0000";
	
	
	begin
	process(clk_in,reset)
		begin
		if(reset='1')then
		temp(0) <= '0';
		elsif(reset='0')then
		if(clk_in'event AND clk_in= '1')then
		temp(0) <= NOT temp(0);
		end if;
		end if;
	end process;

	process(temp(0),reset)
		begin
		if(reset='1')then
		temp(1) <= '0';
		elsif(reset='0')then
		if(temp(0)'event AND temp(0)= '1')then
		temp(1) <= NOT temp(1);
		end if;
		end if;
	end process;

	process(temp(1),reset)
		begin
		if(reset='1')then
		temp(2) <= '0';
		elsif(reset='0')then
		if(temp(1)'event AND temp(1)= '1')then
		temp(2) <= NOT temp(2);
		end if;
		end if;
	end process;

	process(temp(2),reset)
		begin
		if(reset='1')then
		temp(3) <= '0';
		elsif(reset='0')then
		if(temp(2)'event AND temp(2)= '1')then
		temp(3) <= NOT temp(3);
		end if;
		end if;
	end process;

	process(temp(3),reset)
		begin
		if(reset='1')then
		temp(4) <= '0';
		elsif(reset='0')then
		if(temp(3)'event AND temp(3)= '1')then
		temp(4) <= NOT temp(4);
		end if;
		end if;
	end process;

	process(temp(4),reset)
		begin
		if(reset='1')then
		temp(5) <= '0';
		elsif(reset='0')then
		if(temp(4)'event AND temp(4)= '1')then
		temp(5) <= NOT temp(5);
		end if;
		end if;
	end process;

	process(temp(5),reset)
		begin
		if(reset='1')then
		temp(6) <= '0';
		elsif(reset='0')then
		if(temp(5)'event AND temp(5)= '1')then
		temp(6) <= NOT temp(6);
		end if;
		end if;
	end process;

			process(temp(6),reset)
		begin
		if(reset='1')then
		temp(7) <= '0';
		elsif(reset='0')then
		if(temp(6)'event AND temp(6)= '1')then
		temp(7) <= NOT temp(7);
		end if;
		end if;
	end process;

	
		process(temp(7),reset)
		begin
		if(reset='1')then
		temp(8) <= '0';
		elsif(reset='0')then
		if(temp(7)'event AND temp(7)= '1')then
		temp(8) <= NOT temp(8);
		end if;
		end if;
	end process;

		process(temp(8),reset)
		begin
		if(reset='1')then
		temp(9) <= '0';
		elsif(reset='0')then
		if(temp(8)'event AND temp(8)= '1')then
		temp(9) <= NOT temp(9);
		end if;
		end if;
	end process;

		process(temp(9),reset)
		begin
		if(reset='1')then
		temp(10) <= '0';
		elsif(reset='0')then
		if(temp(9)'event AND temp(9)= '1')then
		temp(10) <= NOT temp(10);
		end if;
		end if;
	end process;


		process(temp(10),reset)
		begin
		if(reset='1')then
		temp(11) <= '0';
		elsif(reset='0')then
		if(temp(10)'event AND temp(10)= '1')then
		temp(11) <= NOT temp(11);
		end if;
		end if;
	end process;
	
		process(temp(11),reset)
		begin
		if(reset='1')then
		temp(12) <= '0';
		elsif(reset='0')then
		if(temp(11)'event AND temp(11)= '1')then
		temp(12) <= NOT temp(12);
		end if;
		end if;
	end process;

		process(temp(12),reset)
		begin
		if(reset='1')then
		temp(13) <= '0';
		elsif(reset='0')then
		if(temp(12)'event AND temp(12)= '1')then
		temp(13) <= NOT temp(13);
		end if;
		end if;
	end process;

	process(temp(13),reset)
		begin
		if(reset='1')then
		temp(14) <= '0';
		elsif(reset='0')then
		if(temp(13)'event AND temp(13)= '1')then
		temp(14) <= NOT temp(14);
		end if;
		end if;
	end process;

		process(temp(14),reset)
		begin
		if(reset='1')then
		temp(15) <= '0';
		elsif(reset='0')then
		if(temp(14)'event AND temp(14)= '1')then
		temp(15) <= NOT temp(15);
		end if;
		end if;
	end process;

	process(sel,temp)
	begin
	case sel is
	when "0000" => mout <=temp(0) ;
	when "0001" => mout <=temp(1);
	when "0010" => mout <=temp(2);
	when "0011" => mout <=temp(3);
	when "0100" => mout <=temp(4);
	when "0101" => mout <=temp(5);
	when "0110" => mout <=temp(6);
	when "0111" => mout <=temp(7);
	when "1000" => mout <=temp(8);
	when "1001" => mout <=temp(9);
	when "1010" => mout <=temp(10);
	when "1011" => mout <=temp(11);
	when "1100" => mout <=temp(12);
	when "1101" => mout <=temp(13);
	when "1110" => mout <=temp(14);
	when "1111" => mout <=temp(15);
	when others =>null;
	end case;
	end process;





clk_out(0) <= temp(0);
clk_out(1) <= temp(1);
clk_out(2) <= temp(2);
clk_out(3) <= temp(3);

clk_out(4) <= temp(4);
clk_out(5) <= temp(5);
clk_out(6) <= temp(6);
clk_out(7) <= temp(7);
clk_out(8) <= temp(8);
clk_out(9) <= temp(9);
clk_out(10) <= temp(10);
clk_out(11) <= temp(11);
clk_out(12) <= temp(12);
clk_out(13) <= temp(13);
clk_out(14) <= temp(14);
clk_out(15) <= temp(15);

end Behavioral;
