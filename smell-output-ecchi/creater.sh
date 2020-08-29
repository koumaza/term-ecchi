#!/usr/bin/env fish

function cal_nowtime
        math 86400 - (math (date +%H) \*60\*60 + (date +%M) \*60 + (date +%S.%3N))
end
function cal_difftime
        math $start_time - (cal_nowtime)
end

read output_file -p "echo -e 'Output File: > '"
read null -p "echo -ne 'Enter to Start:'"
echo -e '\nCtrl + C to exit'
set -x start_time (cal_nowtime)
set -x count 0

while set -x count (math $count + 1)
        read null -p "echo Count [$count]"
        echo s\ (cal_difftime) >> $output_file
        set -x start_time (cal_nowtime)
end
