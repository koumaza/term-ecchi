#!/usr/bin/env fish
if test -n "$speed"
else
        set speed 1
end
function o
        toilet -f mono12 $argv
end
function s
        sleep (math $argv \* $speed||true)
        clear
end
function cou
        clear
        o 3.
        s 1
        o 2..
        s 1
        o 1...
        s 1
        o Go!
        s 1
end
