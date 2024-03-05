Board b = new Board();
Piece p = new Piece();
Win w = new Win();

void setup(){
  size(840,840); background(#e7e7e7);
}//END setup

void draw(){
  b.printBoard();
  p.mouseSect(mouseX);
  w.checkWin();
}//END draw
