-- controller
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity ctrl is
  port ( rst   : in STD_LOGIC;
         start : in STD_LOGIC;
         clk   : in STD_LOGIC;       
         imm   : out std_logic_vector(3 downto 0); -- entrada do datapath
			selc_dp : out std_logic_vector(3 downto 0); -- seleciona operaçao dp
			selcrf : out std_logic_vector(1 downto 0); -- seleciona o registrador
			enbcrf : out std_LOGIC; -- habilita registrador
			enbcacc : out std_LOGIC -- habilita acumulador
       );
end ctrl;

architecture fsm of ctrl is
  type state_type is (s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,done);
  signal state : state_type; 		

  
	-- constants declared for ease of reading code
	
	constant mova    : std_logic_vector(3 downto 0) := "0000"; --s5
	constant movr    : std_logic_vector(3 downto 0) := "0001"; --s6
	constant load    : std_logic_vector(3 downto 0) := "0010"; --s7
	constant add	   : std_logic_vector(3 downto 0) := "0011"; --s8
   constant sub	   : std_logic_vector(3 downto 0) := "0100"; --s9
	constant andr    : std_logic_vector(3 downto 0) := "0101"; --s10
   constant orr     : std_logic_vector(3 downto 0) := "0110"; --s11
   constant jmp	   : std_logic_vector(3 downto 0) := "0111"; --s12
	constant inv     : std_logic_vector(3 downto 0) := "1000"; --s13
	constant halt	   : std_logic_vector(3 downto 0) := "1001"; --done
	

	-- as you add more code for your algorithms make sure to increase the
	-- array size. ie. 2 lines of code here, means array size of 0 to 1.
	type PM_BLOCK is array (0 to 4) of std_logic_vector(7 downto 0);
	constant PM : PM_BLOCK := (	

	
    "00100101",   -- load 5
	-- "10000001", --inv PEGANDO ADRESS E USANDO PARA CONVERTER
	  "00010000", --move acc para rf
	-- "00100101",   -- load 5
	 
	 "00100010", --load 2
	  "01100000", -- acc and rf[0]
	-- "00110000", --soma acc + rf[0]
	-- "10000000", --inv OK
	-- "01000100", --sub acc e rf[0]
	-- "01010000", -- acc and rf[0]
	--"01110000", --jmp to 0000
	
	 "10011111"		-- halt
    );
  		 
begin

	process (clk,rst)
	
  
	variable IR : std_logic_vector(7 downto 0);
	variable OPCODE : std_logic_vector( 3 downto 0);
	variable ADDRESS : std_logic_vector (3 downto 0);
	variable PC : integer;
    
	begin
		
		if(rst='1') then
		imm<="0000";
		
		elsif(clk'event and clk = '0') then			
      
      --
      -- steady state
      --
    
      case state is
        
        when s0 =>    -- steady state
          PC := 0;
          imm <= "0000";
          if start = '1' then
            state <= s1;
          else 
            state <= s0;
          end if;
          
        when s1 =>				-- fetch instruction
          IR := PM(PC);
          OPCODE := IR(7 downto 4);
          ADDRESS:= IR(3 downto 0);
          
			 -- FALTA IMM, enbcacc, enbcrf
			 imm <= ADDRESS;
			 enbcacc <= '0';
			 enbcrf <= '0';
			 
			 state <= s2;
          
        when s2 =>				-- increment PC
          PC := PC + 1;
          state <= s4;
          
          
        when s4 =>				-- decode instruction
		  
          case OPCODE IS
			 
            when mova =>state <= s5;
				
				when movr =>state <= s6;
				
				when load =>state <= s7; 
				 
				 when add =>state <= s8;
				 
				 when sub =>state <= s9;
				 
				 when andr =>state <= s10;
				 
				 when orr =>state <= s11;
				 
				 when jmp =>state <= s12;
				 
				 when inv =>state <= s13;
				 
            when halt =>state <= done;
				  
            when others =>state<=s1;
				  
          end case;
        
       
		when s5 =>
			--deve mover o registrador para o acumulador
			selc_dp <= "0000"; -- seleciona a operaçao
			selcrf <= ADDRESS(3 downto 2); -- indica o registrador
			enbcacc <= '0'; 
			enbcrf <= '1';
			state <= s1;
			
		when s6 =>
			--move acumulador para registrador
			selc_dp <= "0001";
			selcrf <= ADDRESS(3 downto 2); -- indica o registrador
			enbcacc <= '1'; 
			enbcrf <= '0';
			state <= s1;
			 
        when s7 =>  
			selc_dp <= "0010";							-- load
			enbcacc <= '0'; 
			enbcrf <= '0';
          imm <= ADDRESS;                       -- set the immediate port
																-- to the lower_ir
          state <= s1;
          
			when s8 =>
			-- realiza soma
			selc_dp <= "0011";
			selcrf <= ADDRESS(3 downto 2); 
			enbcacc <= '1'; 
			enbcrf <= '1';
			state <= s1;
			
			when s9 =>
			--realiza subtraçao
			selc_dp <= "0100";
			selcrf <= ADDRESS(3 downto 2); 
			enbcacc <= '1'; 
			enbcrf <= '1';
			state <= s1;
			
			when s10 =>
			--usa and
			selc_dp <= "0101";
			selcrf <= ADDRESS(3 downto 2); 
			enbcacc <= '1'; 
			enbcrf <= '1';
			state <= s1;
			
			when s11 =>
			--usa or
			selc_dp <= "0110";
			selcrf <= ADDRESS(3 downto 2); 
			enbcacc <= '1'; 
			enbcrf <= '1';
			state <= s1;
			
			when s12 =>
			--jump
			PC := conv_integer(ADDRESS);
			enbcacc <= '0'; 
			enbcrf <= '0';
			state <= s1;
			
        when s13 => 
			selc_dp <= "1000";
			enbcacc <= '1'; 
			enbcrf <= '0';
          state <= s1;
          
        when done =>                            -- stay here forever
          state <= done;
			 --halt
          
        when others =>
      end case;
      
    end if;
  end process;				
end fsm;
