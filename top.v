module top(
    input [7:0]sw,
    output [5:0]led
);

light light_inst(
    .downstairs(sw[0]),
    .upstairs(sw[1]),
    .stair_light(led[0])
);

adder adder_inst(
    .A(sw[2]),
    .B(sw[3]),
    .Y(led[1]),
    .Carry(led[2])
);

wire LSBCout;

full_adder LSBAdder(
    .A(sw[4]),
    .B(sw[6]),
    .Y(led[3]),
    .Cin(1'b0),
    .Cout(LSBCout)
);

full_adder MSBAdder(
    .A(sw[5]),
    .B(sw[7]),
    .Cin(LSBCout),
    .Y(led[4]),
    .Cout(led[5])
);

endmodule