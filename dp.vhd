--*************************************************************************
-- datapath for microprocessor
--*************************************************************************

--exemplo de alu
-- http://allaboutfpga.com/vhdl-code-for-4-bit-alu/

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity alu is
  port ( rst   : in STD_LOGIC;  --a alu precisa msm de rst?
         clk   : in STD_LOGIC;
			--vetor para entrada 1, que sera considerado o registrador para alguns casos
			entrada1 :in std_LOGIC_VECTOR(3 downto 0); 
			--vetor para entrada 2, que sera considerado o acumulador para alguns casos
			entrada2 :in std_LOGIC_VECTOR(3 downto 0); 
			sel : in std_logic_vector(3 downto 0); -- codigo da operacao
         output: out STD_LOGIC_VECTOR (3 downto 0) --saida
       );
end alu;


architecture bhv of alu is

begin
	process (rst, clk,sel,entrada1,entrada2)
	begin
	  
	  if(rst = '1') then
	  output<="0000";
	  
	  elsif (clk='0' and clk'event) then
		case(sel) is
		
		when "0000" =>
	 -- armazena rf no acc 
		output<=entrada1;
		
		when "0001" =>
		 --armazena acc no rf
		output<=entrada2;
		
		when "0010" =>
		 --armazena o immediate
		output <= entrada1;
		
		when "0011" => 
		 --soma acc e rf
		 --	USAR SOMADOR
		output<=entrada1 + entrada2;
		
		when "0100" => 
		--subtrai rf de acc
		output<=entrada1 + ((not(entrada2))+1);
		
		when "0101" => 
		 --compara rf e acc  usando and
		output<=entrada2 and entrada1;
		
		when "0110" => 
		 --compara rf e acc usando or
		output<=entrada2 or entrada1;
		
		when "0111" => 
		 --considerando que seja enviado adress
		output<=entrada1;
		
		when "1000" => 
		--nega acc e armazena no acc
		output<=not(entrada2);
		
		when others =>
		end case;
		
	end if;
	  
	end process;
	
end bhv;

-- *************************************************************************
-- The following is code for an accumulator. you need to figure out
-- the interconnections to the datapath
-- *************************************************************************
library IEEE;
use IEEE.std_logic_1164.all;

entity acc is
  port ( rst   : in STD_LOGIC;
         clk   : in STD_LOGIC;
         input : in STD_LOGIC_VECTOR (3 downto 0);
         enb   : in STD_LOGIC;
         output: out STD_LOGIC_VECTOR (3 downto 0)
       );
end acc;

architecture bhv of acc is
signal temp : STD_LOGIC_VECTOR(3 downto 0);
begin
	process (rst, input, enb, clk)
	begin
		if (rst = '1') then
			output <= "0000";
		elsif (clk'event and clk = '0') then
				if (enb = '1') then 
					output <= input;
					temp <= input;
				else
					output <= temp;
				end if;
		end if;
	end process;
end bhv;

-- ***********************************************************************
-- the following is code for a register file. you may use your own design.
-- you also need to figure out how to connect this inyour datapath.

-- the way the rf works is: it 1st checks for the enable, then checks to
-- see which register is selected and outputs the input into the file. 
-- otherwise, the output will be whatever is stored in the selected register.
-- ***********************************************************************
library IEEE;
use IEEE.std_logic_1164.all;

entity rf is
  port ( rst    : in STD_LOGIC;
         clk    : in STD_LOGIC;
         input  : in std_logic_vector(3 downto 0);
         sel    : in std_logic_vector(1 downto 0);
         enb    : in std_logic;
         output : out std_logic_vector(3 downto 0)
       );
		
end rf;

architecture bhv of rf is

signal out0, out1, out2, out3 : std_logic_vector(3 downto 0);

begin

	process (rst, clk,input,sel,enb)
	
	begin
	
	  if(rst = '1') then
	  output<="0000";
	  
	  elsif(clk'event and clk = '0')then
		 if enb = '0' then
			case (sel) is
			
			  when "00" => 
				out0 <= input;
				 
			  when "01" => 
				 out1<= input;
				 
			  when "10" => 
				out2 <= input;
				 
			  when "11" =>
			  out3 <= input;
				 
			  when others =>
			end case;
		 else
			case (sel) is
			  when "00" =>
				 output <= out0;
			  when "01" =>
				 output <= out1;
			  when "10" =>
				 output <= out2;
			  when "11" =>
				 output <= out3;
			  when others =>
			end case;
	
		end if;
	end if;
	
	end process;	
end bhv;

--*************************************************************************

library IEEE;
use IEEE.std_logic_1164.all;

entity dp is
  port ( rst     : in STD_LOGIC;
         clk     : in STD_LOGIC;
         imm     : in std_logic_vector(3 downto 0);
			sel_dp: in std_LOGIC_VECTOR(3 downto 0);
			selrf: in std_LOGIC_VECTOR(1 downto 0);
			enbrf : in std_LOGIC;
			enbacc: in std_LOGIC;
         output_4: out STD_LOGIC_VECTOR (3 downto 0)
       );
end dp;

architecture rtl2 of dp is

component alu
  port ( rst   : in STD_LOGIC;
         clk   : in STD_LOGIC;
         entrada1 : in std_LOGIC_VECTOR(3 downto 0);
			entrada2 : in std_LOGIC_VECTOR(3 downto 0); 
			sel : in std_logic_vector(3 downto 0);
         output:out STD_LOGIC_VECTOR (3 downto 0)
        );
end component;

component rf 
 port ( rst    : in STD_LOGIC;
         clk    : in STD_LOGIC;
         input  : in std_logic_vector(3 downto 0);
         sel    : in std_logic_vector(1 downto 0);
         enb    : in std_logic;
         output : out std_logic_vector(3 downto 0)
       );
end component;

component acc 
port ( rst   : in STD_LOGIC;
         clk   : in STD_LOGIC;
         input : in STD_LOGIC_VECTOR (3 downto 0);
         enb   : in STD_LOGIC;
         output: out STD_LOGIC_VECTOR (3 downto 0)
       );
end component;


signal alu_out:  std_logic_vector(3 downto 0);
signal entrada1_alu : std_LOGIC_VECTOR(3 downto 0);
signal entrada2_alu : std_LOGIC_VECTOR(3 downto 0);
signal enb_rf : std_logic;
signal output_rf : std_logic_vector(3 downto 0);
signal enb_acc :  STD_LOGIC;
signal output_acc: STD_LOGIC_VECTOR (3 downto 0);

signal entrada_acc : std_LOGIC_VECTOR(3 downto 0);

signal entrada_rf: std_LOGIC_VECTOR(3 downto 0);


begin	
	
	alu1: alu port map (rst,clk,entrada1_alu,entrada2_alu,sel_dp,alu_out);
	
	rf1 : rf port map(rst,clk,entrada_rf,selrf,enbrf,output_rf);
	acc1: acc port map(rst,clk,entrada_acc,enbacc,output_acc);
	
	--LINHAS NOVAS APOS TROCA DA ENTRADA DO RF E ACC
	--rf1 : rf port map(rst,clk,alu_out,selrf,enbrf,output_rf);
	--acc1: acc port map(rst,clk,alu_out,enbacc,output_acc);
	
	
	process (rst, clk,sel_dp,output_rf,alu_out,output_acc,imm)
	
	begin
		

			if (rst='1') then
			output_4 <= "0000";
			end if;
			
			if (clk='0' and clk'event) then
				case sel_dp is 
				
					--armazena registrador no acumulador
					when "0000" =>
					entrada1_alu<= output_rf;
					entrada2_alu<="0000";
					entrada_acc <= alu_out;
					
					when "0001" =>
					entrada1_alu<="0000";
					entrada2_alu<= output_acc;
					entrada_rf <= alu_out;
					
					when "0010" =>
					entrada1_alu<= imm;
					entrada2_alu <= "0000";
					entrada_acc <= alu_out;
					
					when "0011" => 
					entrada1_alu <= output_rf;
					entrada2_alu <= output_acc;
					entrada_acc<= alu_out;
					
					--adiçao
					when "0100" =>
					entrada1_alu <= output_rf;
					entrada2_alu <= output_acc;
					entrada_acc <= alu_out;
					
					--subtraçao
					when "0101" =>
					entrada1_alu <= output_rf;
					entrada2_alu <= output_acc;
					entrada_acc <= alu_out;
					
				
					when "1000" =>
					entrada1_alu<="0000";
					entrada2_alu<= output_acc;
					entrada_acc <= alu_out;
					
					when others =>
				end case;
			end if;
			
			output_4 <= output_acc;
		
   end process;
end rtl2;