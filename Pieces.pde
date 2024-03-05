public class Piece{
  boolean redTurn = true;
  boolean onePiece = true;
  
  public void playPiece(int col){
    onePiece = true;
    if (onePiece){
      for (int i = b.board.length-1; i >= 0 ; i--){
        if (b.board[i][col] == 0){
          if (redTurn){
            b.board[i][col] = 1;
            i = -1;
            redTurn = !redTurn;
          }else{
            b.board[i][col] = 2;
            i = -1;
            redTurn = !redTurn;
          }//END else
        }//END if
      }//END for i
      onePiece = false;
    }//END if
  }//END playPiece
  
  public void printPiece(int i, int j, int c){
    ellipseMode(CORNER); rectMode(CORNER);
    if (c == 1){
      fill(255,0,0);
    } else {
      fill(0,0,255);
    }//END else
    ellipse(j*height/b.cols+3,i*width/b.rows+3,height/b.cols-6,width/b.rows-6);
    //rect(j*height/b.cols,i*width/b.rows,height/b.cols-1,width/b.rows-1);
  }//END printPiece
  
  public int mouseSect(int x){
    int sect = 0;
      for (int i = 0; i < b.board[0].length; i++){
        if (w.winner == 0){
          if (x < (i+1)*height/b.cols && x > (i)*height/b.cols){
            sect = i;
            fill(#e7e7e7); rectMode(CORNER); ellipseMode(CORNER);
            rect(0,0, width-1, height/b.cols-1);
            if(redTurn){
              fill(255,0,0); stroke(0);
            }else{
              fill(0,0,255); stroke(0); 
            }//END else
            //rect((i)*height/b.cols,0,height/b.cols-1,width/b.rows-1);
            ellipse((i)*height/b.cols+3,+3,height/b.cols-6,width/b.rows-6);
          }//END if
        }//END if
      }//END for i
    return sect;
  }//END MouseWithinX
}//END Pieces
