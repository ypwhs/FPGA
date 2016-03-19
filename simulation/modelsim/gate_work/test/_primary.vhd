library verilog;
use verilog.vl_types.all;
entity test is
    port(
        CLK             : in     vl_logic;
        LED             : out    vl_logic_vector(3 downto 0)
    );
end test;
