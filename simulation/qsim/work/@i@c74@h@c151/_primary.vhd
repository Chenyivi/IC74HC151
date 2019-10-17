library verilog;
use verilog.vl_types.all;
entity IC74HC151 is
    port(
        EN_Part         : in     vl_logic;
        SelectPart      : in     vl_logic_vector(2 downto 0);
        Single_Part     : in     vl_logic_vector(7 downto 0);
        Y               : out    vl_logic;
        YF              : out    vl_logic
    );
end IC74HC151;
