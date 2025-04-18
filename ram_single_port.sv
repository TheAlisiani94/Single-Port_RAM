// Module: ram_single_port
// The RAM has a 64x8 configuration (64 locations, 8-bit data width).
module ram_single_port (
    output reg [7:0] q,           // 8-bit output data (read data)
    input [7:0] data,             // 8-bit input data (write data)
    input [5:0] read_addr,        // 6-bit read address (0 to 63)
    input [5:0] write_addr,       // 6-bit write address (0 to 63)
    input we,                     // Write enable (active high)
    input clk                     // Clock input
);
    // Internal RAM storage: 64 locations, each 8 bits wide
    reg [7:0] ram [0:63];

    // Synchronous write and asynchronous read process
    always @(posedge clk) begin
        // Write operation: store data to write_addr when we is high
        if (we)
            ram[write_addr] <= data;
        
        // Read operation: output data from read_addr
        q <= ram[read_addr];
    end
endmodule
