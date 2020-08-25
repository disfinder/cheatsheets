#!/bin/bash

git filter-branch --env-filter "
    GIT_COMMITTER_EMAIL=$1
    GIT_AUTHOR_EMAIL=$1
    GIT_AUTHOR_NAME=\"$2\"
    GIT_COMMITTER_NAME=\"$2\"
    " -- --all
