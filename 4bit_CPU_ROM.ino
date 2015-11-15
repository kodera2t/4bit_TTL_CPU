//// ROM emulator for TTL based 4-bit CPU
//// 4-bit CPU schematic and circuit is copyrighted by Kaoru Tonami in 2003
//// Circuit is written in the book "How to make CPU", "CPUの創り方" 
//// ISBN4-8399-0986-5, in Japanese.
//// This program is written by kodera2t, Nov. 15, 2015.

///
byte prog[16];

//
void setup() {
  byte i;

for(i=0;i<16;i++){
  prog[i]=0;
}//// initialize program

/////////program part of 4-bit CPU
/////////////////simple blinking///////
//prog[0b0000]=0b10110011;
//prog[0b0001]=0b10110110;
//prog[0b0010]=0b10111100;
//prog[0b0011]=0b10111000;
//prog[0b0100]=0b10111000;
//prog[0b0101]=0b10111100;
//prog[0b0110]=0b10110110;
//prog[0b0111]=0b10110011;
//prog[0b1000]=0b10110001;
//prog[0b1001]=0b11110000;
////////////////////////////////////////

////other commands
////0011abcd: MOV "abcd" to A register
////0111abcd: MOV "abcd" to B register
////00010000: MOV B register to A register
////01000000: MOV A register to B register
////0000abcd: ADD "abcd" to A register
////0101abcd: ADD "abcd" to B register
////00100000: MOV input port (DIP switch) to A register
////01110000: MOV input port (DIP switch) to B register
////1011abcd: MOV "abcd" to output port (LED)
////10010000: MOV B register to output port (LED)
////1111abcd: JMP to "abcd"
////1110abcd: IF C \neq = 0 JMP to "abcd"
//// other details can be found in the book....


prog[0b0000]=0b10110001; //OUT(1011) "0001" to LED
prog[0b0001]=0b10110010; //OUT(1011) "0010" to LED
prog[0b0010]=0b10110100; // same till 0b1110
prog[0b0011]=0b10111000;
prog[0b0100]=0b10111001;
prog[0b0101]=0b10111010;
prog[0b0110]=0b10111100;
prog[0b0111]=0b10111101;
prog[0b1000]=0b10111110;
prog[0b1001]=0b10111111;
prog[0b1010]=0b10110000;
prog[0b1011]=0b10111111;
prog[0b1100]=0b10110000;
prog[0b1101]=0b10111111;
prog[0b1110]=0b10110000;
prog[0b1111]=0b11110000; // JMP(1111) to "0000" first of program




  
    Serial.begin(9600);
//// address bit from D10 to D13 
  for(i=10; i<14; i++){
  pinMode(i, INPUT);
  }

//// data bus from D2 to D9
  for(i=2; i<10; i++){
   pinMode(i, OUTPUT);   
  }
  
}

// the loop function runs over and over again forever
void loop() {

  boolean A[5],b[8];
  byte i,command_data;
  byte temp1;

// address read
    A[0]=digitalRead(10);
    A[1]=digitalRead(11);
    A[2]=digitalRead(12);
    A[3]=digitalRead(13);
    i=A[0]+2*A[1]+4*A[2]+8*A[3];
   // Serial.println(i);
    command_data=prog[i];
    //Serial.println(command_data);

/// converting to each bit
    b[0]=command_data &  0b00000001; 
    b[1]=(command_data & 0b00000010);
    b[2]=(command_data & 0b00000100);
    b[3]=(command_data & 0b00001000);
    b[4]=(command_data & 0b00010000);
    b[5]=(command_data & 0b00100000);
    b[6]=(command_data & 0b01000000);
    b[7]=(command_data & 0b10000000);
///////     

    for(i=2;i<10;i++){
      temp1=i+1;
      digitalWrite(i,b[i-2]);
    }

}
