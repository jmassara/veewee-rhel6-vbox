veewee-rhel6-vbox
=================

# Setup veewee using rvm
```
$ curl -L https://get.rvm.io | bash -s master --ruby latest-1.9
$ rvm install ruby-1.9.2-p290
$ mkdir $HOME/opt
$ cd $HOME/opt
$ git clone https://github.com/jedi4ever/veewee.git
$ echo 'rvm use ruby-1.9.2-p290@veewee --create' > veewee/.rvmrc
$ cd veewee
$ gem install bundler
$ bundle install
```
You will need to download the RHEL 6.4 ISO file and copy it into `$HOME/opt/veewee/iso`.

# RHEL 6.4 veewee templates
You must configure a RHEL yum repository yourself. None of these templates provide any as it requires licensing.

### rhel-server-6.4-x86_64-minimal
Barebones RHEL6 installation.

```
$ cp -pR <project_dir>/veewee-rhel6-vbox/rhel-server-6.4-x86_64-minimal templates
$ alias veewee='bundle exec veewee'
$ veewee vbox define 'rhel64-minimal' 'rhel-server-6.4-x86_64-minimal'
$ veewee vbox build 'rhel64-minimal'
$ veewee vbox export 'rhel64-minimal'
$ vagrant box add 'rhel64-minimal' 'rhel64-minimal.box'
```
