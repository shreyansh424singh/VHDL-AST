library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity des_loop is
	port(clk :  in std_logic;
		  rst : in std_logic;
		  mode : in std_logic; -- 0 encrypt, 1 decrypt
		  key_in : in std_logic_vector(63 downto 0);
		  key_pre_w_in : in std_logic_vector(63 downto 0);
		  key_pos_w_in : in std_logic_vector(63 downto 0);
		  blk_in : in std_logic_vector(63 downto 0);
		  blk_out : out std_logic_vector(63 downto 0));
end des_loop;

architecture Behavioral of des_loop is
	signal after_ip_s : std_logic_vector(63 downto 0);
	signal after_ip_minus_one_s : std_logic_vector(63 downto 0);
	--signal after_f_s : std_logic_vector(31 downto 0);
	--signal final_s : std_logic_vector(63 downto 0);
	component des_round is
		port(clk : in std_logic;
			  l_0 : in std_logic_vector(31 downto 0);
		     r_0 : in std_logic_vector(31 downto 0);
		     k_i : in std_logic_vector(47 downto 0);
		     l_1 : out std_logic_vector(31 downto 0);
		     r_1 : out std_logic_vector(31 downto 0));
	end component;
	signal key_s : std_logic_vector(47 downto 0);
	signal l_0_s : std_logic_vector(31 downto 0);
begin
	pr_rst_delay : process(clk, rst)
	begin
		if rising_edge(clk) then
			rst_s <= rst;
		end if;
	end process;	
	-- IP
	blk_in_s <= (blk_in xor key_pre_w_in) when mode = '0' else (blk_in xor key_pos_w_in);
	pr_seq: process(clk, rst_s, blk_in_s)
	begin
		if rst_s = '1' then
			l_0_s <= blk_in_s(6) & blk_in_s(14) & blk_in_s(22) & blk_in_s(30) & blk_in_s(38) & blk_in_s(46) & blk_in_s(54)  & blk_in_s(62) &
							  blk_in_s(4) & blk_in_s(12) & blk_in_s(20) & blk_in_s(28) & blk_in_s(36) & blk_in_s(44) & blk_in_s(52)  & blk_in_s(60) &
							  blk_in_s(2) & blk_in_s(10) & blk_in_s(18) & blk_in_s(26) & blk_in_s(34) & blk_in_s(42) & blk_in_s(50)  & blk_in_s(58) &
							  blk_in_s(0) & blk_in_s(8)  & blk_in_s(16) & blk_in_s(24) & blk_in_s(32) & blk_in_s(40) & blk_in_s(48)  & blk_in_s(56);
							  
			r_0_s <= blk_in_s(7) & blk_in_s(15) & blk_in_s(23) & blk_in_s(31) & blk_in_s(39) & blk_in_s(47) & blk_in_s(55)  & blk_in_s(63) &
							  blk_in_s(5) & blk_in_s(13) & blk_in_s(21) & blk_in_s(29) & blk_in_s(37) & blk_in_s(45) & blk_in_s(53)  & blk_in_s(61) &
							  blk_in_s(3) & blk_in_s(11) & blk_in_s(19) & blk_in_s(27) & blk_in_s(35) & blk_in_s(43) & blk_in_s(51)  & blk_in_s(59) &
							  blk_in_s(1) & blk_in_s(9)  & blk_in_s(17) & blk_in_s(25) & blk_in_s(33) & blk_in_s(41) & blk_in_s(49)  & blk_in_s(57);		
		elsif rising_edge(clk) then
			l_0_s <= l_1_s;
			r_0_s <= r_1_s;
		end if;
	end process;
	DES_ROUND_0 :  des_round port map (clk, l_0_s, r_0_s, k_0_s, l_1_s, r_1_s);
	final_s <= r_1_s & l_1_s;
end Behavioral;
