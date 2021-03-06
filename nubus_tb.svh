
`include "nubus.svh"

// ======================================================
// Convert tm/ad lines to the data mask
// ======================================================

function [31:0] get_mask (input [3:0] tmn);
   begin
      case (tmn)
        TMADN_RD_WORD:   get_mask = 'hFFFFFFFF;
        TMADN_RD_HALF_0: get_mask = 'h0000FFFF;
        TMADN_RD_BLOCK:  get_mask = 'hFFFFFFFF;
        TMADN_RD_HALF_1: get_mask = 'hFFFF0000;
        TMADN_RD_BYTE_0: get_mask = 'h000000FF;
        TMADN_RD_BYTE_1: get_mask = 'h0000FF00;
        TMADN_RD_BYTE_2: get_mask = 'h00FF0000;
        TMADN_RD_BYTE_3: get_mask = 'hFF000000;
      endcase // case (tmn)
   end
endfunction // do_math

// ======================================================
// Convert tm lines to the string form
// ======================================================

function string get_status_str (input [1:0] tmn);
   begin
      case (tmn)
        TMN_TRY_AGAIN_LATER: get_status_str = "TryAgainLater";
        TMN_TIMEOUT_ERROR:   get_status_str = "TimeoutError";
        TMN_ERROR:           get_status_str = "Error";
        TMN_COMPLETE:        get_status_str = "Complete";
      endcase // case (tmn)
   end
endfunction // get_status

// ======================================================
// Convert tmadn lines to the string form
// ======================================================

function string get_start_str (input [3:0] tmadn);
   begin
     case (tmadn)
     TMADN_RD_WORD:   get_start_str = "ReadWord";
     TMADN_RD_HALF_0: get_start_str = "ReadHalf0";
     TMADN_RD_BLOCK:  get_start_str = "ReadBlock";
     TMADN_RD_HALF_1: get_start_str = "ReadHalf1";
     TMADN_RD_BYTE_0: get_start_str = "ReadByte0";
     TMADN_RD_BYTE_1: get_start_str = "ReadByte1";
     TMADN_RD_BYTE_2: get_start_str = "ReadByte2";
     TMADN_RD_BYTE_3: get_start_str = "ReadByte3";

     TMADN_WR_WORD:  get_start_str  = "WriteWord";
     TMADN_WR_HALF_0: get_start_str = "WriteHalf0";
     TMADN_WR_BLOCK:  get_start_str = "WriteBlock";
     TMADN_WR_HALF_1: get_start_str = "WriteHalf1";
     TMADN_WR_BYTE_0: get_start_str = "WriteByte0";
     TMADN_WR_BYTE_1: get_start_str = "WriteByte1";
     TMADN_WR_BYTE_2: get_start_str = "WriteByte2";
     TMADN_WR_BYTE_3: get_start_str = "WriteByte3";
     endcase // case (tmn)
   end 
endfunction // get_start_str



