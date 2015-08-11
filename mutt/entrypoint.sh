#!/bin/bash
set -e

sed -i "s/OFFICE_USERNAME/$OFFICE_USERNAME/g" "$HOME/.mutt/muttrc"
sed -i "s/OFFICE_PASSWORD/$OFFICE_PASSWORD/g" "$HOME/.mutt/muttrc"
sed -i "s/OFFICE_REALNAME/$OFFICE_REALNAME/g" "$HOME/.mutt/muttrc"
sed -i "s/OFFICE_EMAIL/$OFFICE_EMAIL/g" "$HOME/.mutt/muttrc"


if [ -e "$HOME/.muttrc.local" ]; then
	echo "source $HOME/.muttrc.local" >> "$HOME/.mutt/muttrc"
fi

exec "$@"
