# invoke this commnd by just running git-random

git-random(){ gitRan=$(curl -L -s http://whatthecommit.com/ |grep -A 1 "\"c" |tail -1 |sed 's/<p>//'); git commit -m "$gitRan"; }

