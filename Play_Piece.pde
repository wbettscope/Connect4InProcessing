void mousePressed(){
  if (b.board[1][p.mouseSect(mouseX)] == 0 && w.winner == 0){
    switch (p.mouseSect(mouseX)){
      case 0:
      p.playPiece(0);
      break;
      case 1:
      p.playPiece(1);
      break;
      case 2:
      p.playPiece(2);
      break;
      case 3:
      p.playPiece(3);
      break;
      case 4:
      p.playPiece(4);
      break;
      case 5:
      p.playPiece(5);
      break;
      case 6:
      p.playPiece(6);
      break;
    }//END switch
  }//END if
}//END mouseClicked
