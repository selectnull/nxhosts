nxhosts
=======

nxhosts is a small bash utility to help manage Nginx server. The
motivation to write this came from often needed process of:

    vi /etc/nginx/sites-available/DOMAIN.conf
    nginx -t # to check we haven't broke something

When adding new server block, it's even worse:

    cd /etc/nginx
    vi sites-available/NEW-DOMAIN.conf
    cd sites-enabled
    ln -s ../sites-available/NEW-DOMAIN.conf
    cd ..
    nginx -t

It's a lot of typing, I wanted something shorter. And with bash
completition.

There is probably something similar outthere, but I just wanted to hack
on something instead of working. Hey, it's Friday...


How to use it?
--------------

List files in `sites-available` directory:

    nxhosts list

Test nginx configuration:

    nxhosts test

Enable or disable specific server(s):

    nxhosts enable server [server ...]

or

    nxhosts disable server [server ...]

View one or more nginx server files (files in `sites-available`
directory):

    nxhosts view server [server ...]

Edit one or more nginx server files (files in `sites-available`
directory):

    nxhosts edit server [server ...]


How to install it?
------------------

Just copy `nxhosts` script to anywhere in PATH. There is bash completion
script, source it from `.profile`. It could be put into
`/etc/bash_completion.d/` but this is not meant to be used by anyone
other than root user, so that does not really makes sense.


Licence
-------

nxhosts is MIT licensed.
