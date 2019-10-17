library verilog;
use verilog.vl_types.all;
entity IC74HC151_vlg_sample_tst is
    port(
        EN_Part         : in     vl_logic;
        SelectPart      : in     vl_logic_vector(2 downto 0);
        Single_Part     : in     vl_logic_vector(7 downto 0);
        sampler_tx      : out    vl_logic
    );
end IC74HC151_vlg_sample_tst;
