if status is-interactive
    # Commands to run in interactive sessions can go here
end

if not pgrep -u (id -u) ssh-agent >/dev/null
    eval (ssh-agent -c)
end

if not ssh-add -l >/dev/null 2>&1
    ssh-add ~/.ssh/id_ed25519 >/dev/null 2>&1
end

#cat ~/.cache/wal/sequences
