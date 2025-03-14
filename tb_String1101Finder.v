module tb_String1101Finder;


reg c0_tb;
reg c1_tb;
reg in_tb;

wire next0_tb;
wire next1_tb;
wire out_tb;

String1101Finder dut(
    .c0(c0_tb),
    .c1(c1_tb),
    in(in_tb),
    out(out_tb),
    next0(next0_tb),
    next1(next1_tb)
);


initial begin
    c0_tb = 0;
    c1_tb = 0;
    in_tb = 0;



     $display("Time: %t | c0: %b | c1: %b | in: %b | out: %b | next0: %b | next1: %b", $time, c0_tb, c1_tb, in_tb, out_tb, next0_tb, next1_tb);

    in_tb = 1;   
    #10;
    $display("Time: %t | c0: %b | c1: %b | in: %b | out: %b | next0: %b | next1: %b", $time, c0_tb, c1_tb, in_tb, out_tb, next0_tb, next1_tb);



    c1_tb = 1; in_tb = 0;
    #10;
    $display("Time: %t | c0: %b | c1: %b | in: %b | out: %b | next0: %b | next1: %b", $time, c0_tb, c1_tb, in_tb, out_tb, next0_tb, next1_tb);


    in_tb = 1;
    #10;
    $display("Time: %t | c0: %b | c1: %b | in: %b | out: %b | next0: %b | next1: %b", $time, c0_tb, c1_tb, in_tb, out_tb, next0_tb, next1_tb);

    c0_tb = 1;
    c1_tb = 0;
    in_tb = 0;
    #10;
    $display("Time: %t | c0: %b | c1: %b | in: %b | out: %b | next0: %b | next1: %b", $time, c0_tb, c1_tb, in_tb, out_tb, next0_tb, next1_tb);
    

    in_tb = 1;
    #10
    $display("Time: %t | c0: %b | c1: %b | in: %b | out: %b | next0: %b | next1: %b", $time, c0_tb, c1_tb, in_tb, out_tb, next0_tb, next1_tb);



    c0_tb = 1;
    in_tb = 0;
    #10
    $display("Time: %t | c0: %b | c1: %b | in: %b | out: %b | next0: %b | next1: %b", $time, c0_tb, c1_tb, in_tb, out_tb, next0_tb, next1_tb);



    in_tb = 1;
    #10
    $display("Time: %t | c0: %b | c1: %b | in: %b | out: %b | next0: %b | next1: %b", $time, c0_tb, c1_tb, in_tb, out_tb, next0_tb, next1_tb);


    $finish
end

endmodule
