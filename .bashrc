function ssh() {
  if [[ -n $(printenv TMUX) ]]
  then
          local window_name=$(tmux display -p '#{window_name}' )
          local window_id=$(tmux display -p '#{window_id}' )
          command ssh $@
          tmux rename-window -t $window_id $window_name
  else
          command ssh $@
  fi
}
