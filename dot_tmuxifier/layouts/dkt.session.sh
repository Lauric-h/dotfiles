# Set a custom session root path. Default is `$HOME`.
# Must be called before `initialize_session`.
session_root "~/dev/dkt/saga"

# Create session with specified name if it does not already exist. If no
# argument is given, session name will be based on layout file name.
if initialize_session "dkt"; then

  # Create a new window inline within session layout definition.
  new_window "code"
  split_v 20
  select_pane 1
  run_cmd "lazygit"
  split_h 50
  run_cmd "oc"

  new_window "log"
  split_h 50
  run_cmd "mitmproxy -k"
  select_pane 1
  run_cmd "make start"
  split_v 50
  run_cmd "make npm-watch"

  # Select the default active window on session creation.
  select_window 1

fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session
