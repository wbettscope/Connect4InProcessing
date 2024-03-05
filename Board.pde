public class Board{
  int rows = 7; int cols = 7; 
  int[][] board = new int[rows][cols];
  boolean flag = true;
  public void printBoard(){
    for (int i = 0; i < board.length; i++){
      for (int j = 0; j < board[i].length; j++){
        stroke(0); strokeWeight(1); rectMode(CORNER); ellipseMode(CORNER);
        if (i > 0){
          if (board[i][j] == 1){
            p.printPiece(i, j, 1);
          } else if (board[i][j] == 2){
            p.printPiece(i, j, 2);
          } else{
            noFill();//fill(#e7e7e7);
            rect(j*height/cols,i*width/rows,height/cols-1,width/rows-1);
            //ellipse(j*height/cols,i*width/rows,height/cols-1,width/rows-1);
          }//END else 
        }//END if
      }//END for j
    }//END for i
    if (w.winner == 1){
            if (flag){
              fill(#e7e7e7); stroke(0); strokeWeight(2); rectMode(CORNER);
              rect(0,0, width-1, height/b.cols-1);
              flag = false;
            }//END if
            fill(#8523c9, 10); stroke(0); strokeWeight(2); rectMode(CORNER);
            rect(0,0, width-1, height/b.cols-1, 30);
            textSize(128); fill(0); textAlign(CENTER);
            text("RED WINS!", width/2, height/cols - 18);
          }else if (w.winner == 2){
            if (flag){
              fill(#e7e7e7); stroke(0); strokeWeight(2); rectMode(CORNER);
              rect(0,0, width-1, height/b.cols-1);
              flag = false;
            }//END if
            fill(#8523c9, 10); stroke(0); strokeWeight(2); rectMode(CORNER);
            rect(0,0, width-1, height/b.cols-1, 30);
            textSize(128); fill(0); textAlign(CENTER);
            text("BLUE WINS!", width/2, height/cols - 18);
          }//END else if
  }//END PrintBoard
}//END Board
