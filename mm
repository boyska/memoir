#!/usr/bin/env python3

import time
import os

lines = [ time.asctime() ]

while 1:
    line = input()

    # get more user input until an empty line
    if len( line ) == 0:
        break
    else:
        lines.append( line + '\n' )


# only write the entry if the user entered something
if len( lines ) > 1:
    memoir_path = os.path.expanduser( '~/.memoir' )

    # prepend a seperator only if the file exists ( there are entries already in there )
    if os.path.exists( memoir_path ):
        lines.insert( 0, '--------------------\n' )

    with open( memoir_path, 'a' ) as f:
        f.writelines( lines )
