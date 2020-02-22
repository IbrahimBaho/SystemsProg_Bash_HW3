BEGIN{}
{
    if ( $1 ~ /^[a-z]{3}[0-9]{3}$/ )
    {   
       if ( $1 in UserArr )
       {  
            # user already exists
            SessArr[$1]+= 1;
            MinTimeArr[$1] += substr($10,5,2)
            HouTimeArr[$1] += substr($10,2,2) + int(MinTimeArr[$1]/60)
            MinTimeArr[$1] %= 60
        }
        else
        {
            UserArr[$1] = $1;
            SessArr[$1] = 1;
            HostArr[$1] = $3;
            TimeArr[$1] = $NF;

           if (match( $NF, "in"))
           {
             # logged in for the first time and still in
                if( substr(curTime,15,2) < substr($7,4,2))
                {
                    HouTimeArr[$1] = (substr(curTime,12,2)-substr($7,1,2)) - 1
                    MinTimeArr[$1] = (substr(curTime,15,2)-substr($7,4,2)) + 60
                }else {
                    HouTimeArr[$1] = (substr(curTime,12,2)-substr($7,1,2))
                    MinTimeArr[$1] = (substr(curTime,15,2)-substr($7,4,2))
                }
           }
           else {
             # first time logged - NF is Time logged
             HouTimeArr[$1] = substr($NF,2,2);
             MinTimeArr[$1] = substr($NF,5,2);
           }
        }
    }
}
END { 
    for ( user in UserArr ) {
        printf("User: %s\n", user);
        printf("     Last host: %s\n", HostArr[user]);
        printf("     Total Time: %s:%s\n", HouTimeArr[user],MinTimeArr[user]);
        printf("     Total Sessions: %d\n", SessArr[user]);

        }
}
