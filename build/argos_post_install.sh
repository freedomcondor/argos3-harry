#!/bin/bash -e

# Update library paths
sudo /sbin/ldconfig

# Update MIME type database
sudo /usr/bin/update-mime-database "/usr/local/share/mime/" 2> /dev/null

# Update desktop entry database
[ -x /usr/bin/update-desktop-database ] && sudo update-desktop-database -q 2> /dev/null

# Add bash completion script if bash-completion is installed
[ -d /etc/bash_completion.d ] && sudo ln -sf /usr/local/share/argos3/argos3_bash_completion.sh /etc/bash_completion.d/argos3
