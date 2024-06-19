-- Siehe die FSM Beschreibung auf Folie 448

entity studentenleben is
	port(
		clk : in std_logic;
		rst : in std_logic;
		start_exam : in std_logic;
		exam_passed : in std_logic;
		output : out std_logic_vector;
	);
end studentenleben;

architecture RTL of studentenleben is

	type state_type is (study, drink_beer, exam); -- 1.5 Punkte in der Klausur ;)
	type reg_type is record
		state : state_type;
		output : std_logic_vector(1 downto 0); -- Yes, this one needs a second semicolon ;-;
	end record;

	signal r, next_r : reg_type;
	

begin

	reg_proc : process (clk, rst)
	begin
		if rising_edge(clk) then
			r <= next_r;
			if rst = '0' then
				r.state <= study;
				r.output <= "00";
			end if;
		end if;
	end process reg_proc;

	seq_proc : process (r, start_exam, exam_passed)
	variable v := reg_type;
	begin
		v := r;
			case r.state is
				when study =>
					if start_exam = '1' then
						v.state := exam;
					end if;
					v.output := "00";
				when exam =>
					if exam_passed = '1' then
						v.state := drink_beer;
					else
						v.state := study;
					end if;
					v.output := "01";
				when drink_beer =>
					v.state := study;
					v.output := "11";
			end case;

		next_r <= v;
		output <= r.output;
	end process seq_proc

end RTL;