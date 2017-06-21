# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs
M2_HOME=/usr/maven/apache-maven-3.3.9/
JAVA_HOME=/usr/java/latest
PATH=$PATH:$HOME/bin:$JAVA_HOME/bin:$M2_HOME/bin
KERN_DIR=/usr/src/kernels/2.6.32-642.11.1.el6.x86_64

export M2_HOME
export JAVA_HOME
export PATH
export KERN_DIR

alias quickbuild='mvn clean install -DskipTests -Drat.skip'
alias deepcleanbuild='rm -rf ~/.m2/repository && mvn clean install'

source ~/.git-completion.bash
