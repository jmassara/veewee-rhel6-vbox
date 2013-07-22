veewee-rhel6-vbox
=================

# Setup veewee using rbenv (my preferred method)
```
$ mkdir ~/.rbenv
$ cd ~/.rbenv
$ git clone https://github.com/sstephenson/rbenv.git .
$ git clone https://github.com/sstephenson/ruby-build.git plugins
$ git clone https://github.com/jamis/rbenv-gemset plugins
$ echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
$ echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
$ exec $SHELL -l
$ rbenv rehash
$ rbenv install 1.9.3-p448
$ mkdir ~/opt
$ cd ~/opt
$ git clone https://github.com/jedi4ever/veewee.git
$ echo '1.9.3-p448' > veewee/.ruby-version
$ echo 'veewee' > veewee/.ruby-gemset
$ rbenv gemset create 1.9.3-p448 veewee
$ rbenv rehash
$ cd veewee
$ gem install bundler
$ bundle install
```

# Setup veewee using rvm
```
$ curl -L https://get.rvm.io | bash -s master --ruby latest-1.9
$ rvm install ruby-1.9.3-p448
$ mkdir ~/opt
$ cd ~/opt
$ git clone https://github.com/jedi4ever/veewee.git
$ echo 'rvm use ruby-1.9.3-p448@veewee --create' > veewee/.rvmrc
$ cd veewee
$ gem install bundler
$ bundle install
```

# Download ISO
You will need to download the RHEL 6.4 ISO file and copy it to `~/opt/veewee/iso/rhel-server-6.4-x86_64-dvd.iso`.

# RHEL 6.4 veewee templates
You must configure a RHEL yum repository yourself. None of these templates provide any as it requires licensing.

### rhel-server-6.4-x86_64-minimal
Barebones RHEL6 installation.
```
$ cd ~/opt/veewee
$ alias veewee='bundle exec veewee'
$ cp -pR <project_dir>/veewee-rhel6-vbox/rhel-server-6.4-x86_64-minimal templates
$ veewee vbox define 'rhel64-minimal' 'rhel-server-6.4-x86_64-minimal'
$ veewee vbox build 'rhel64-minimal'
$ veewee vbox export 'rhel64-minimal'
$ vagrant box add 'rhel64-minimal' 'rhel64-minimal.box'
```
