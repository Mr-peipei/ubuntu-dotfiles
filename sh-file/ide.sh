if [ "$#" -eq 0 ]; then
  tmux split-window -h
  tmux split-window -v
  tmux resize-pane -D 15
  tmux select-pane -t 0
  cd ~/../../mnt/c/Users/murakami/Documents
  tmux select-pane -t 1
  cd ~/../../mnt/c/Users/murakami/Documents
else
  case $1 in
    1)
      tmux split-window -v
      tmux resize-pane -D 15
      tmux select-pane -D
      clear
      ;;
    2)
      tmux split-window -h
      tmux split-window -v
      tmux resize-pane -D 15
      tmux select-pane -t 1
      tmux split-window -v
      tmux select-pane -t 1
      clear
      ;;
    py)
      cd ~/Desktop/python
      tmux split-window -v
      tmux split-window -h
      tmux resize-pane -D 15
      tmux select-pane -t 1
      vi .
      clear
      ;;
    *)
      echo [ERROR] "$1" は設定されていない引数です。
      ;;
  esac
fi
