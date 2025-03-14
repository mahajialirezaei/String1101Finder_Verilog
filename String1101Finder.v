module String1101Finder(
    input c0,
    input c1,
    input in,
    output out,
    output next0,
    output next1
);



assign out = c1 & c0 & in;
assign next0 = (c1 & ~c0) | (~c1 &  c0 & in);
assign next1 = (~(c0 ^ c1) & in) | (~in & c1 & ~c0);

endmodule