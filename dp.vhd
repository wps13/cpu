--*************************************************************************
-- datapath for microprocessor
--*************************************************************************

--exemplo de alu
-- http://allaboutfpga.com/vhdl-code-for-4-bit-alu/
library ieee;
use ieee.std_logic_1164.all;

entity FA is port
(
	a,b,cin : in std_logic;
	s,cout : out std_logic
);
end FA;

architecture hardware of FA is 
begin
	
	s <= (a xor b) xor cin;
	cout <= (a and b) or (a and cin) or (b and cin);
end hardware;

--************************************************************************
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity somador_4bits is port 
(
	A : in std_logic_vector(3 downto 0);
	B : in std_logic_vector(3 downto 0);
	
	cin : in std_logic;                  
	s   : out std_logic_vector(3 downto 0);  		
	cout : out std_logic       
);
end somador_4bits;

architecture hardware of somador_4bits is

component FA port
(
	a,b,cin : in std_logic;
	s,cout : out std_logic
);
end component;

signal cout_0to1 : std_logic;
signal cout_1to2 : std_logic;
signal cout_2to3 : std_logic;

begin

	FA_0 : FA port map(a => A(0), b => B(0), cin => cin, s => S(0), cout => cout_0to1);
	FA_1 : FA port map(a => A(1), b => B(1), cin => cout_0to1, s => S(1), cout => cout_1to2);
	FA_2 : FA port map(a => A(2), b => B(2), cin => cout_1to2, s => S(2), cout => cout_2to3);
	FA_3 : FA port map(a => A(3), b => B(3), cin => cout_2to3, s => S(3), cout => cout);

end hardware;

--************************************************************************

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity alu is
  port ( rst   : in std_logic;  --a alu precisa msm de rst?
         clk   : in std_LOGIC;
			--vetor para entrada 1, que sera considerado o registrador para alguns casos
			registradorEnt :in std_LOGIC_VECTOR(3 downto 0); 
			--vetor para entrada 2, que sera considerado o acumulador para alguns casos
			accEnt :in std_LOGIC_VECTOR(3 downto 0); 
			sel : in std_logic_vector(3 downto 0); -- codigo da operacao
         output: out STD_LOGIC_VECTOR (3 downto 0) --saida
       );
end alu;


architecture bhv of alu is

component somador_4bits
 port (
	A : in std_logic_vector(3 downto 0);
	B : in std_logic_vector(3 downto 0);
	
	cin : in std_logic;                  
	s   : out std_logic_vector(3 downto 0);  		
	cout : out std_logic       
);
end component;


signal result_soma , result_sub : std_logic_vector(3 downto 0);
signal cout : std_logic;

begin

	soma : somador_4bits port map(accEnt,registradorEnt, '0', result_soma, cout);
	sub : somador_4bits port map(accEnt, not (registradorEnt),'1', result_sub, cout);
	
	process (rst, clk,sel,registradorEnt,accEnt)
	begin
	  
	  if(rst = '1') then
	  output<="0000";
	  
	  elsif (clk='0' and clk'event) then
		case(sel) is
		
		when "0000" =>
	 -- armazena rf no acc 
		output<=registradorEnt;
		
		when "0001" =>
		 --armazena acc no rf
		output<=accEnt;
		
		when "0010" =>
		 --armazena o immediate
		output <= registradorEnt;
		
		when "0011" => 
		 --soma acc e rf
		 --	USAR SOMADOR
		output<=result_soma;
		
		when "0100" => 
		--subtrai rf de acc
		output<=result_sub;
		
		when "0101" => 
		 --compara rf e acc  usando and
		output<=accEnt and registradorEnt;
		
		when "0110" => 
		 --compara rf e acc usando or
		output<=accEnt or registradorEnt;
		
		when "0111" => 
		 --considerando que seja enviado adress
		output<=registradorEnt;
		
		when "1000" => 
		--nega acc e armazena no acc
		output<=not(accEnt);
		
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
         registradorEnt : in std_LOGIC_VECTOR(3 downto 0);
			accEnt : in std_LOGIC_VECTOR(3 downto 0); 
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
signal registradorEnt_alu : std_LOGIC_VECTOR(3 downto 0);
signal accEnt_alu : std_LOGIC_VECTOR(3 downto 0);
signal enb_rf : std_logic;
signal output_rf : std_logic_vector(3 downto 0);
signal enb_acc :  STD_LOGIC;
signal output_acc: STD_LOGIC_VECTOR (3 downto 0);

signal entrada_acc : std_LOGIC_VECTOR(3 downto 0);

signal entrada_rf: std_LOGIC_VECTOR(3 downto 0);


begin	
	
	alu1: alu port map (rst,clk,registradorEnt_alu,accEnt_alu,sel_dp,alu_out);
	
	--rf1 : rf port map(rst,clk,entrada_rf,selrf,enbrf,output_rf);
	--acc1: acc port map(rst,clk,entrada_acc,enbacc,output_acc);
	
	--LINHAS NOVAS APOS TROCA DA ENTRADA DO RF E ACC
	rf1 : rf port map(rst,clk,alu_out,selrf,enbrf,output_rf);
	acc1: acc port map(rst,clk,alu_out,enbacc,output_acc);
	
	
	process (rst, clk,sel_dp,output_rf,alu_out,output_acc,imm)
	
	begin
		

			if (rst='1') then
			output_4 <= "0000";
			end if;
			
			if (clk='0' and clk'event) then
				case sel_dp is 
				
					--armazena registrador no acumulador
					when "0000" =>
					registradorEnt_alu<= output_rf;
					accEnt_alu<="0000";
					--entrada_acc <= alu_out;
					
					when "0001" =>
					registradorEnt_alu<="0000";
					accEnt_alu<= output_acc;
					--entrada_rf <= alu_out;
					
					when "0010" =>
					registradorEnt_alu<= imm;
					accEnt_alu <= "0000";
					--entrada_acc <= alu_out;
					
					when "0011" => 
					registradorEnt_alu <= output_rf;
					accEnt_alu <= output_acc;
					--entrada_acc<= alu_out;
					
					--adiçao
					when "0100" =>
					registradorEnt_alu <= output_rf;
					accEnt_alu <= output_acc;
					--entrada_acc <= alu_out;
					
					--subtraçao
					when "0101" =>
					registradorEnt_alu <= output_rf;
					accEnt_alu <= output_acc;
					--entrada_acc <= alu_out;
					
				
					when "1000" =>
					registradorEnt_alu<="0000";
					accEnt_alu<= output_acc;
					--entrada_acc <= alu_out;
					
					when others =>
				end case;
			end if;
			
			output_4 <= alu_out;
		
   end process;
end rtl2;