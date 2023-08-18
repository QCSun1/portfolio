#!/bin/bash

# format the user accounts into a neat table

# save data into a text file
cat /etc/passwd > userAccounts.txt

#filter users to only show the ones with "/bin/bash" as default shell
grep '/bin/bash' userAccounts.txt > userAccFiltered.txt

#format data into table
awk 'BEGIN {

    FS=":";

    print "| \033[34mUsername               \033[0m | \033[34mUserID\033[0m | \033[34mGroupID\033[0m | \033[34mHome                         \033[0m | \033[34mShell           \033[0m |";

    print "________________________________________________________________________________________________";

}

{

    printf("| \033[33m%-23s\033[0m | \033[35m%-6d\033[0m | \033[35m%-7d\033[0m | \033[35m%-29s\033[0m | \033[35m%-16s\033[0m |\n", $1, $3, $4, $6, $7);

}' userAccFiltered.txt

