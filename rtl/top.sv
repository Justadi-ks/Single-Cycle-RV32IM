module top (
    input  logic        clk,
    input  logic        reset,
    input  logic        stall,
    input  logic [31:0] instruction,
    input  logic [31:0] mem_out,

    output logic [31:0] rs2_data,
    output logic [31:0] alu_out,
    output logic        mem_write,
    output logic        mem_read,
    output logic [2:0]  fn3,
    output logic [6:0]  opcode,
    output logic [31:0] address
);

    single_cycle_riscv_m u_cpu (
        .clk         (clk),
        .reset       (reset),
        .stall       (stall),
        .instruction (instruction),
        .mem_out     (mem_out),
        .rs2_data    (rs2_data),
        .alu_out     (alu_out),
        .mem_write   (mem_write),
        .mem_read    (mem_read),
        .fn3         (fn3),
        .opcode      (opcode),
        .address     (address)
    );

endmodule
