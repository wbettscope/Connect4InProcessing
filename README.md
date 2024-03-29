# Connect Four In Processing
Will Betts Cope Personal Project. Fully functional Connect Four game with GUI.

## Installation
1. Follow the download and installation instructions for Processing version 3.5.4 (https://processing.org/download)
2. Download all code files from this repository and place them in a folder named "Connect_4"
3. Place that folder in the same location as the Processing Folder

## Usage
1. Open file 'Connect_4.pde' in Processing
  - This file connects to 'Board.pde,' 'Pieces.pde,' 'Play_Piece.pde,' and 'Win_Detection.pde' via imports
2. Press 'Run'

## Interface 
1. To play a move, highlight within the desired column and click
  - A piece will only be played if the desired move is legal
  - The color of the piece to be played next is indicated by the color of the piece in the top row
2. Turns alternate between players
  - After one player moves, pass the mouse to the other player to take their turn
3. If no moves are legal, it's a draw! Close the program and start again
4. If one player lines up four of their pieces in a row (vertically, horizontally, or diagonally) then they win!
  - The winning pieces will be highlighted and the winner will be displayed in the top row
