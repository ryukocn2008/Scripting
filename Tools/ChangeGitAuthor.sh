git filter-branch --commit-filter '
        if [ "$GIT_COMMITTER_NAME" = "U-CORP\longhu" ];
        then
                GIT_COMMITTER_NAME="ryukocn2008";
                GIT_AUTHOR_NAME="ryukocn2008";
                GIT_COMMITTER_EMAIL="ryukocn2008@yahoo.co.jp";
                GIT_AUTHOR_EMAIL="ryukocn2008@yahoo.co.jp";
                git commit-tree "$@";
        else
                git commit-tree "$@";
        fi' HEAD
