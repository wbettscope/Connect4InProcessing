public class Win {
  int winner = 0;
  
  public void checkWin(){
    for (int i = 0; i < b.board.length; i++){
      for (int j = 0; j < b.board[i].length-3; j++){
        int actP = b.board[i][j]; //Horizontal
        if (actP == b.board[i][j+1] && actP == b.board[i][j+2] && actP == b.board[i][j+3] && actP != 0){
          noFill(); strokeWeight(5); stroke(0);
          ellipse(j*height/b.cols,i*width/b.rows,height/b.cols-1,width/b.rows-1);
          ellipse((j+1)*height/b.cols,(i)*width/b.rows,height/b.cols-1,width/b.rows-1);
          ellipse((j+2)*height/b.cols,(i)*width/b.rows,height/b.cols-1,width/b.rows-1);
          ellipse((j+3)*height/b.cols,(i)*width/b.rows,height/b.cols-1,width/b.rows-1);
          winner = actP;
        }//END if

        actP = b.board[j][i]; //Vertical
        if (actP == b.board[j+1][i] && actP == b.board[j+2][i] && actP == b.board[j+3][i] && actP != 0){
          noFill(); strokeWeight(5); stroke(0);
          ellipse(i*height/b.cols,j*width/b.rows,height/b.cols-1,width/b.rows-1);
          ellipse((i)*height/b.cols,(j+1)*width/b.rows,height/b.cols-1,width/b.rows-1);
          ellipse((i)*height/b.cols,(j+2)*width/b.rows,height/b.cols-1,width/b.rows-1);
          ellipse((i)*height/b.cols,(j+3)*width/b.rows,height/b.cols-1,width/b.rows-1);
          winner = actP;
        }//END if
      }//END for j
    }//END for i
    
    for (int i = 0; i < b.board.length-3; i++){
      for (int j = 0; j < b.board[0].length-3; j++){
          int actP = b.board[i][j]; //Diagonal L>R
          if (actP == b.board[i+1][j+1] && actP == b.board[i+2][j+2] && actP == b.board[i+3][j+3] && actP != 0){
            noFill(); strokeWeight(5); stroke(0);
            ellipse(j*height/b.cols,i*width/b.rows,height/b.cols-1,width/b.rows-1);
            ellipse((j+1)*height/b.cols,(i+1)*width/b.rows,height/b.cols-1,width/b.rows-1);
            ellipse((j+2)*height/b.cols,(i+2)*width/b.rows,height/b.cols-1,width/b.rows-1);
            ellipse((j+3)*height/b.cols,(i+3)*width/b.rows,height/b.cols-1,width/b.rows-1);
            winner = actP;
          }//END if
      }//END for j
    }//END for i
    
    for (int i = 0; i < b.board.length-3; i++){
      for (int j = b.board[0].length-1; j > 2; j--){
          int actP = b.board[i][j]; //Diagonal R>L
          if (actP == b.board[i+1][j-1] && actP == b.board[i+2][j-2] && actP == b.board[i+3][j-3] && actP != 0){
            noFill(); strokeWeight(5); stroke(0);
            ellipse(j*height/b.cols,i*width/b.rows,height/b.cols-1,width/b.rows-1);
            ellipse((j-1)*height/b.cols,(i+1)*width/b.rows,height/b.cols-1,width/b.rows-1);
            ellipse((j-2)*height/b.cols,(i+2)*width/b.rows,height/b.cols-1,width/b.rows-1);
            ellipse((j-3)*height/b.cols,(i+3)*width/b.rows,height/b.cols-1,width/b.rows-1);
            winner = actP;
          }//END if
      }//END for j
    }//END for i
  }//END checkWin
}//END win
