veewee-rhel6u4
==============

Red Hat Enterprise Linux 6.4 veewee template

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
$ cp -pR $HOME/src/veewee-rhel6u4/rhel-server-6.4-x86_64-minimal templates
```
NOTE: You will need to download the RHEL6.4 ISO file and copy it into $HOME/opt/veewee/iso before continuing.
```
$ alias veewee='bundle exec veewee'
$ veewee vbox define 'rhel64' 'rhel-server-6.4-x86_64-minimal'
$ veewee vbox build 'rhel64'
$ veewee vbox export 'rhel64'
$ vagrant box add 'rhel64' 'rhel64.box'
```
