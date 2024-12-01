# Instructions
# make sure puppet_agent version is 8.x

Run the following commands to get bolt going:

echo "export BOLT_PROJECT='/puppet_course'" >> /root/.bashrc
exec bash
cat bolt-ssh-key.pub >> ~/.ssh/authorized_keys

# set puppet server on nodes
puppet config set server puppet.local

# puppet.db
see /etc/puppetlabs/puppetdb/conf.d/jetty.ini
puppetdb ssl-setup -f