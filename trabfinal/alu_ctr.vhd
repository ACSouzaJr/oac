-- Quartus II VHDL Template
-- Basic Shift Register

library ieee;
use ieee.std_logic_1164.all;
use work.mips_pkg.all;

entity alu_ctr is
	port 
	(
		op_alu		: in std_logic_vector(2 downto 0);
		funct			: in std_logic_vector(5 downto 0);
		shift_ctr	: out std_logic;
		alu_ctr	   : out std_logic_vector(3 downto 0)
	);
end entity;

architecture behav of alu_ctr is

begin

alu_ctr <= 	ULA_AND when (op_alu="010" and funct=iAND) else
				ULA_AND when (op_alu="011") 					 else
				ULA_OR  when (op_alu="010" and funct=iOR)  else
				ULA_OR  when (op_alu="100") 					 else
				ULA_XOR when (op_alu="010" and funct=iXOR) else
				ULA_SLL when (op_alu="010" and funct=iSLL) else
				ULA_SRA when (op_alu="010" and funct=iSRA) else
				ULA_SRL when (op_alu="010" and funct=iSRL) else
				ULA_ADD when (op_alu="010" and funct=iADD) else
				ULA_ADD when (op_alu="000")                else
				ULA_SUB when (op_alu="010" and funct=iSUB) else
				ULA_SUB when (op_alu="001") 					 else
				ULA_SLT when (op_alu="010" and funct=iSLT) else
				ULA_NOR when (op_alu="010" and funct=iNOR) else
				ULA_NOP;
				
shift_ctr <= '1' when ((op_alu="010" and funct=iSLL) or (op_alu="010" and funct=iSRL)) else
				 '0';
				
end architecture;