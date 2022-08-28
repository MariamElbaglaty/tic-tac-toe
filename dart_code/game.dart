import 'dart:io';
import 'dart:math';
void main(List<String> args) {
  List board = ['','','','','','','','',''];
display(board);
var x = Random().nextInt(2);

while(true){

print ('Player 1 ,enter a number between 1 and 9');
int num1 = int.parse(stdin.readLineSync()!);

if (board[num1-1]=='X'||board[num1-1]=='O')
{
print ('Player 1 ,enter another number between 1and 9 this number is taken');
int num1 = int.parse(stdin.readLineSync()!);
}

players(board,num1,'player1');
print (' ');
display(board);
win(board);


print (' ');

print ('Player 2 ,enter a number between 1 and 9');
int num2 = int.parse(stdin.readLineSync()!);

if (board[num2-1]=='X' || board[num2-1]=='O')
{
print ('Player 2 ,enter another number between 1and 9 this number is taken');
int num2 = int.parse(stdin.readLineSync()!);
}
print ('  ');
players(board,num2,'player2');

display(board);
print('       ');
win(board);
}



}

void players(List board,int num , String player)

{ String symbol;
if (player=='player1')
{
  symbol='X';
}
else 
{
  symbol='O';
}

switch(num)
{
case 1: board[0]=symbol;
break;

case 2: board[1]=symbol;
break;

case 3: board[2]=symbol;
break;

case 4: board[3]=symbol;
break;

case 5: board[4]=symbol;
break;

case 6: board[5]=symbol;
break;

case 7: board[6]=symbol;
break;

case 8: board[7]=symbol;
break;

case 9: board[8]=symbol;
break;

}

}

 display(List board){
//List board = ['','','','','','','','',''];
print(board[0]+'|'+board[1]+'|'+board[2]);
print('-----');
print(board[3]+'|'+board[4]+'|'+board[5]);
print('-----');
print(board[6]+'|'+board[7]+'|'+board[8]);

//return board;

}

 win (List board )
{
List top_row=[board[0] ,board[1],board[2]];

List medium_row=[board[3] ,board[4],board[5]];

List bottom_row=[board[6] ,board[7],board[8]];

List firs_column=[board[0] ,board[3],board[6]];

List second_column=[board[1] ,board[4],board[7]];

List third_column=[board[2] ,board[5],board[8]];

List diagonal1=[board[0] ,board[4],board[8]];

List diagonal2=[board[2] ,board[4],board[6]];

if ( top_row[0]=='X'&&top_row[1]=='X'&&top_row[2]=='X')
{
  print ('winner player number 1');
  
}

else if ( top_row[0]=='O'&&top_row[1]=='O'&&top_row[2]=='O')
{
  print ('winner player number 2');
}

else if ( medium_row[0]=='X'&&medium_row[1]=='X'&&medium_row[2]=='X')
{
  print ('winner player number 1');
}

else if ( medium_row[0]=='O'&&medium_row[1]=='O'&&medium_row[2]=='O')
{
  print ('winner player number 2');
  }

else if ( bottom_row[0]=='X'&&bottom_row[1]=='X'&&bottom_row[2]=='X')
{
  print ('winner player number 1');
}

else if ( bottom_row[0]=='O'&&bottom_row[1]=='O'&&bottom_row[2]=='O')
{
  print ('winner player number 2');
  
}


else if ( firs_column[0]=='X'&&firs_column[1]=='X'&&firs_column[2]=='X')
{
  print ('winner player number 1');
}

else if ( firs_column[0]=='O'&&firs_column[1]=='O'&&firs_column[2]=='O')
{
  print ('winner player number 2');
}

else if ( second_column[0]=='X'&&second_column[1]=='X'&&second_column[2]=='X')
{
  print ('winner player number 1');
  
}

else if ( second_column[0]=='O'&&second_column[1]=='O'&&second_column[2]=='O')
{
  print ('winner player number 2');
}

else if ( third_column[0]=='X'&&third_column[1]=='X'&&third_column[2]=='X')
{
  print ('winner player number 1');
}

else if ( third_column[0]=='O'&&third_column[1]=='O'&&third_column[2]=='O')
{
  print ('winner player number 2');
}

else if ( diagonal1[0]=='X'&&diagonal1[1]=='X'&&diagonal1[2]=='X')
{
  print ('winner player number 1');
  
}

else if ( diagonal1[0]=='O'&&diagonal1[1]=='O'&&diagonal1[2]=='O')
{
  print ('winner player number 2');
}

else if ( diagonal2[0]=='X'&&diagonal2[1]=='X'&&diagonal2[2]=='X')
{
  print ('winner player number 1');

}

else if ( diagonal2[0]=='O'&&diagonal2[1]=='O'&&diagonal2[2]=='O')
{
  print ('winner player number 2');
}

}



