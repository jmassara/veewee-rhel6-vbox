# Base install

sed -i "s/^.*requiretty/#Defaults requiretty/" /etc/sudoers

# Make ssh faster by not waiting on DNS
echo "UseDNS no" >> /etc/ssh/sshd_config
