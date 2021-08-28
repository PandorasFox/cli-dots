SSH_ENV=$HOME/.ssh/environment

function start_agent() {
	# start ssh-agent and setup environment
	ssh-agent -s | sed 's/^echo/#echo/' >! $SSH_ENV
	chmod 600 $SSH_ENV
	. $SSH_ENV > /dev/null

	# load identies
	echo "starting ssh-agent..."
	ssh-add $HOME/.ssh/id_ed25519
}

function check_local_agent() {
  # if no forwarded agent: check for local agent
  if [ -f "$SSH_ENV" ]; then
    . $SSH_ENV > /dev/null
    ps $SSH_AGENT_PID | grep "ssh-agent -s$" >/dev/null || {
      start_agent;
    }
  else
    start_agent;
  fi
}

if [[ ! -v SSH_AUTH_SOCK ]]; then
  check_local_agent;
fi

