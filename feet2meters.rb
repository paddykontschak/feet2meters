require 'tk' # load Tk library
require 'tkextlib/tile' # load themed widgets

root = TkRoot.new {title "Feet to Meters"} # create main window with title "Feet to Meters"
content = Tk::Tile::Frame.new(root) {padding "3 3 12 12"}.grid(:sticky => 'nsew') # create frame widget. All UI content will be here.
TkGrid.columnconfigure root, 0, :weight => 1; TkGrid.rowconfigure root, 0, :weight => 1 # if window size changes (resize) tell frame to adjust

$feet = TkVariable.new; $meters = TkVariable.new # variables for feet and meters
f = Tk::Tile::Entry.new(content) {width 7; textvariable $feet}.grid( :column => 2, :row => 1, :sticky => 'we' ) # create entry widget .Type number of feet
Tk::Tile::Label.new(content) {textvariable $meters}.grid( :column => 2, :row => 2, :sticky => 'we'); # create label. Will output number of meters
Tk::Tile::Button.new(content) {text 'Calculate'; command {calculate}}.grid( :column => 3, :row => 3, :sticky => 'w') # create button. Click to calculate feet to meters