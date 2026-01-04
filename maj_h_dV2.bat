net start w32time

w32tm /resync

w32tm /config /syncfromflags:manual /manualpeerlist:time.nist.gov

exit

https://www.reddit.com/r/Batch/comments/gnhm9g/batch_script_to_automatically_sync_time_and_date/?tl=fr