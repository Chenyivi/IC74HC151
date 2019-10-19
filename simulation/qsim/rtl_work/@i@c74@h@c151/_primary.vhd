library verilog;
use verilog.vl_types.all;
entity IC74HC151 is
    generic(
        DATA_SelectPart : integer := 3;
        DATA_Single_Part: integer := 8
    );
    port(
        EN_Part         : in     vl_logic;
        SelectPart      : in     vl_logic_vector;
        Single_Part     : in     vl_logic_vector;
        Y               : out    vl_logic;
        YF              : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DATA_SelectPart : constant is 1;
    attribute mti_svvh_generic_type of DATA_Single_Part : constant is 1;
end IC74HC151;
