# SystemsProg_Bash_HW3

For this assignment, you will use awk, bash, and some other command-line utilities to create a
program for printing user statistics. 
The program should take the output from "Last" and print the
following for each user with a username matching the abc123 format:
• Username
• Most recent hostname from which they logged in
• Total time logged in
• Number of times logged in

Input:

1 rslavin pts /2 129.115.27.54 Thu Aug 16 09:31 still logged in

2 xlg795 pts /1 n0000a061 .cs.uts Thu Aug 16 08:31 still logged in

3 wjq861 pts /1 n0000f64 .cs. utsa Thu Aug 16 07:40 - 07:41 (00:01)

4 michael pts /1 70.12.32.84 Thu Aug 16 00:18 - 00:25 (00:07)

5 pwj861 pts /1 71.122.21.84 Wed Aug 15 22:18 - 23:27 (01:08)

6 daw925 pts /1 cpe -67 -11 -242 -1. Wed Aug 15 21:40 - 21:42 (00:01)

7 michael pts /1 79.12.2.4 Wed Aug 15 20:08 - 20:32 (00:24)

8 hlh735 pts /1 n0000a154 .cs.uts Wed Aug 15 17:23 - 17:48 (00:25)

9 gan122 pts /2 cpe -66 -69 -13 -217 Wed Aug 15 14:00 - 14:04 (00:03)

10 rkd397 pts /1 n0000a023 .cs.uts Wed Aug 15 09:11 - 14:55 (05:43)

Output:

1 User : gan122
    2 Last host : cpe -66 -69 -13 -217
    3 Total Time : 0:03
    4 Total Sessions : 1
5 User : pwj861
    6 Last host : 71.122.21.84
    7 Total Time : 1:08
    8 Total Sessions : 1
9 User : hlh735
    10 Last host : n0000a154 .cs.uts
    11 Total Time : 1:37
    12 Total Sessions : 2
.
.
.
