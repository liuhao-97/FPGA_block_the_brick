`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/07/2022 05:48:34 PM
// Design Name: 
// Module Name: position_logic
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

//This is the position of the block
module position_logic
#(parameter blk_width = 11'd128,
parameter blk_height = 10'd10)
(
input clk,
input [4:0] button,  // middle up down left right 
output reg [10:0] blkpos_x,
output reg [9:0] blkpos_y
    );

 
reg [5:0] button_current_stage;
reg [5:0] button_next_stage;

parameter button_S0 = 6'b100000;  //rst center button
parameter button_S1 = 6'b010000;  //up
parameter button_S2 = 6'b001000;  //down
parameter button_S3 = 6'b000100;  //left
parameter button_S4 = 6'b000010;  //right
parameter button_S5 = 6'b000001;  //no button is pressed

wire rst = button[4];

always@(posedge clk)
begin
  if(rst)
    button_current_stage <= button_S0;
  else
    button_current_stage <= button_next_stage;
end



always@*
begin

    case (button)    //1 is press
      5'b10000:  button_next_stage = button_S0 ;
      5'b01000:  button_next_stage = button_S1 ;
      5'b00100:  button_next_stage = button_S2 ;
      5'b00010:  button_next_stage = button_S3 ;
      5'b00001:  button_next_stage = button_S4 ;        
      default:   button_next_stage = button_S5 ;  
    endcase
    /*
  case (button_current_stage)
    button_S0:
      begin
        case (button)
          5'b10000:  button_next_stage = button_S0 ;
          5'b01000:  button_next_stage = button_S1 ;
          5'b00100:  button_next_stage = button_S2 ;
          5'b00010:  button_next_stage = button_S3 ;
          5'b00001:  button_next_stage = button_S4 ;        
          default:   button_next_stage = button_S5 ;  
        endcase   
      end
      
    button_S1:
      begin
        case (button)
          5'b10000:  button_next_stage = button_S0 ;
          5'b01000:  button_next_stage = button_S1 ;
          5'b00100:  button_next_stage = button_S2 ;
          5'b00010:  button_next_stage = button_S3 ;
          5'b00001:  button_next_stage = button_S4 ;        
          default:   button_next_stage = button_S5 ;   
        endcase   
      end
    
    button_S2:
      begin
        case (button)
          5'b10000:  button_next_stage = button_S0 ;
          5'b01000:  button_next_stage = button_S1 ;
          5'b00100:  button_next_stage = button_S2 ;
          5'b00010:  button_next_stage = button_S3 ;
          5'b00001:  button_next_stage = button_S4 ;        
          default:   button_next_stage = button_S5 ;  
        endcase   
      end
      
    button_S3:
      begin
        case (button)
          5'b10000:  button_next_stage = button_S0 ;
          5'b01000:  button_next_stage = button_S1 ;
          5'b00100:  button_next_stage = button_S2 ;
          5'b00010:  button_next_stage = button_S3 ;
          5'b00001:  button_next_stage = button_S4 ;        
          default:   button_next_stage = button_S5 ;  
        endcase   
      end
      
    button_S4:
      begin
        case (button)
          5'b10000:  button_next_stage = button_S0 ;
          5'b01000:  button_next_stage = button_S1 ;
          5'b00100:  button_next_stage = button_S2 ;
          5'b00010:  button_next_stage = button_S3 ;
          5'b00001:  button_next_stage = button_S4 ;        
          default:   button_next_stage = button_S5 ;  
        endcase   
      end
      
    button_S5:
      begin
        case (button)
          5'b10000:  button_next_stage = button_S0 ;
          5'b01000:  button_next_stage = button_S1 ;
          5'b00100:  button_next_stage = button_S2 ;
          5'b00010:  button_next_stage = button_S3 ;
          5'b00001:  button_next_stage = button_S4 ;        
          default:   button_next_stage = button_S5 ;  
        endcase   
      end  
  default: button_next_stage = button_S5 ;
  endcase*/
end


always@(posedge clk)
begin
  if(rst)
  begin
    blkpos_x <= 11'd623  ;
    blkpos_y <= 10'd753  ;
  end
  else
  begin
  case(button_next_stage)
    button_S0: 
      begin
        blkpos_x <= 11'd623  ;
        blkpos_y <= 10'd753  ;
      end
    
    button_S1: //up
      begin
        if((blkpos_x>=10) && (blkpos_x+blk_width<=1269) && (blkpos_y>=600) && (blkpos_y+blk_height<=789))
        begin
          blkpos_x <= blkpos_x ;
          blkpos_y <= blkpos_y - 10'd4 ;
        end
        else
        begin
          blkpos_x <= blkpos_x ;
          blkpos_y <= blkpos_y ;
        end
      end
      
     button_S2: //down
      begin
      if((blkpos_x>=10) && (blkpos_x+blk_width<=1269) && (blkpos_y>=596) && (blkpos_y+blk_height<=785))
      begin
        blkpos_x <= blkpos_x  ;
        blkpos_y <= blkpos_y + 10'd4 ;
      end
      else
      begin
        blkpos_x <= blkpos_x ;
        blkpos_y <= blkpos_y ;
      end
      end
      
     button_S3: //left
      begin
      if((blkpos_x>=14) && (blkpos_x+blk_width<=1269) && (blkpos_y>=596) && (blkpos_y+blk_height<=789))
      begin
        blkpos_x <= blkpos_x - 11'd4 ;
        blkpos_y <= blkpos_y ;
      end
      else
      begin
        blkpos_x <= blkpos_x ;
        blkpos_y <= blkpos_y ;
      end
      end
       
     button_S4: //right
      begin
      if((blkpos_x>=10) && (blkpos_x+blk_width<=1265) && (blkpos_y>=596) && (blkpos_y+blk_height<=789))
      begin
        blkpos_x <= blkpos_x + 11'd4 ;
        blkpos_y <= blkpos_y ;
      end
      else
      begin
        blkpos_x <= blkpos_x ;
        blkpos_y <= blkpos_y ;
      end
      end
      
     button_S5: 
      begin
        blkpos_x <= blkpos_x ;
        blkpos_y <= blkpos_y ;
      end
      
    default:  
    begin
        blkpos_x <= blkpos_x ;
        blkpos_y <= blkpos_y ;
    end 
  endcase
  end
end 
    
    
    
endmodule
