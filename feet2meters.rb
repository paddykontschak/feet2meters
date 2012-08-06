require 'tk' # load Tk library
require 'tkextlib/tile' # load themed widgets

root = TkRoot.new {title "Feet to Meters"} # create main window with title "Feet to Meters"
content = Tk::Tile::Frame.new(root) {padding "3 3 12 12"}.grid(:sticky => 'nsew') # create frame widget. All UI content will be here.
TkGrid.columnconfigure root, 0, :weight => 1; TkGrid.rowconfigure root, 0, :weight => 1 # if window size changes (resize) tell frame to adjust