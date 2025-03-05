


module tb_lea_test_vector; 
    reg [31:0] key [0:3]; // 128비트 키: 4 x 32비트 
    reg [31:0] plaintext [0:3]; // 128비트 평문: 4 x 32비트 

    initial begin 
        // 키 초기화 
        key[0] = 32'h3C2D1E0F; 
        key[1] = 32'h78695A4B; 
        key[2] = 32'hB4A59687; 
        key[3] = 32'hF0E1D2C3;
        
        // 평문(plaintext) 초기화
        plaintext[0] = 32'h13121110;
        plaintext[1] = 32'h17161514;
        plaintext[2] = 32'h1B1A1918;
        plaintext[3] = 32'h1F1E1D1C;

        // 시뮬레이션에서 출력 확인
        $display("======== LEA Test Vectors ========");
        $display("Key:        %08h %08h %08h %08h", 
                key[0], key[1], key[2], key[3]);
        $display("Plaintext:  %08h %08h %08h %08h",
                plaintext[0], plaintext[1], plaintext[2], plaintext[3]);

        // 원하는 만큼 시뮬레이션 진행 후 종료
        #10 $finish;
    end 
endmodule