# Dockerfiles for running personal apps

For now there is just a Mutt configuration, heavily tuned to work with GoDaddy/MediaTemple Office 365.

# Mutt

This is basically a merger of [jfrazelle](https://github.com/jfrazelle/dockerfiles/tree/master/mutt) + [ork](https://github.com/ork/mutt-office365) + [joshtronic](http://joshtronic.com/2014/02/17/using-keyring-access-on-the-osx-commandline/).

### Getting started

Open the Keychain Access app, and hit ⌘-N to add a new item.

Keychain Item Name: jomax
Account Name: Your jomax login (e.g. mine is 'jbarratt')
Password: ...

Now, hack any other configuration bits you need to. (This part is highly user dependent, e.g. the vim config, and is probably why this would be hard to make fully generic.)

Then, run 'make' to build your local image, named `mutt`.

Next, edit ./run-mutt.sh, which also needs customization.

Finally, run ./run-mutt.sh. Congratulations, you're mutting.

### To Do

* Move final configuration bits to env vars
* add archive shortcut
* figure out how to do address book
