
module arbiter(
    input   wire    [3:0]   request     , // [HDMI, CAMERA]
    
    output  reg     [3:0]   grant       
);
/**************************process***************************/
// 高位优先级更高
always@(*)
begin
    case(1'b1)
        request[3]:
            grant = 4'b1000;
        request[2]:
            grant = 4'b0100;
        request[1]:
            grant = 4'b0010;
        request[0]:
            grant = 4'b0001;
        default:
            grant = 4'b0000;
    endcase
end

endmodule
