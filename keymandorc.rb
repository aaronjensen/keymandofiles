# Start Keymando at login
# -----------------------------------------------------------
# start_at_login

# Disable Keymando when using these applications
# -----------------------------------------------------------
# disable "Remote Desktop Connection"
# disable /VirtualBox/

# Basic mapping
# -----------------------------------------------------------
# map "<Ctrl-[>", "<Escape>"
# map "<Ctrl-m>", "<Ctrl-F2>"


# Commands
# -----------------------------------------------------------

# Command launcher window via Cmd-Space
# map "<Cmd- >" do                                                                                                                                                                                                         
#   trigger_item_with(Commands.items, RunRegisteredCommand.new)                                                                                                                                                             
# end 
# 
# Register commands 
# -----------------------------------------------------------
# command "Volume Up" do 
#   `osascript -e 'set volume output volume (output volume of (get volume settings) + 7)'`
# end
# 
# command "Volume Down" do 
#   `osascript -e 'set volume output volume (output volume of (get volume settings) - 7)'`
# end

# Repeat last command via Cmd-.
map "<Cmd-.>", RunLastCommand.instance

#map "<Cmd-Tab>", noop

except /iTerm/, /MacVim/ do
  map '<Ctrl-j>', '<Down>'
  map '<Ctrl-k>', '<Up>'
  map '<Ctrl-h>', '<Left>'
  map '<Ctrl-l>', '<Right>'
  map '<Ctrl-0>', '<Cmd-Left>'

  map '<Ctrl-u>', '<PageUp>'
  map '<Ctrl-d>', '<PageDown>'

  map '<Cmd-p>', Commands.press_button_on_ui
  map '`lc', Commands.left_click_element
  map '`rc', Commands.right_click_element;
  map ('<Ctrl-r>') { reload }

  map('<Ctrl-f>') { activate('iTerm') }
end

only /iTerm/ do
  map '<Cmd-w>', noop
  map '<Cmd-q>', noop
  map '<Cmd-r>', noop
  map '<Cmd-t>', noop
end

map(";i") { activate('iTerm') }
map(";c") { activate('Google Chrome') }
map(";f") { activate('Firefox') }
map(";s") { activate('Sparrow') }
map(";k") { activate('Skype') }
map(";l") { activate('Flowdock') }
map(";h") { activate('HipChat') }

start_at_login
# -----------------------------------------------------------
# Visit http://keymando.com to see what else Keymando can do!
# -----------------------------------------------------------
