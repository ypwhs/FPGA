library verilog;
use verilog.vl_types.all;
entity test is
    port(
        EN              : in     vl_logic;
        A0              : in     vl_logic;
        A1              : in     vl_logic;
        A2              : in     vl_logic;
        DATA            : out    vl_logic_vector(7 downto 0)
    );
end test;
