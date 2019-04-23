#!/bin/bash

echo "[AniB]: profile.sh"

# https://stackoverflow.com/questions/59895/get-the-source-directory-of-a-bash-script-from-within-the-script-itself
SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
  DIR="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE" # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
done
DIR="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"

# https://stackoverflow.com/questions/192319/how-do-i-know-the-script-file-name-in-a-bash-script
# echo
# echo "# arguments called with ---->  ${@}     "
# echo "# \$1 ---------------------->  $1       "
# echo "# \$2 ---------------------->  $2       "
# echo "# path to me --------------->  ${0}     "
# echo "# parent path -------------->  ${0%/*}  "
# echo "# my name ------------------>  ${0##*/} "
# echo "# BASH_SOURCE   ${BASH_SOURCE}"
# echo "dirname $BASE_SOURCE"
# echo "$(basename $BASH_SOURCE)"
# echo "${BASH_SOURCE[${#BASH_SOURCE[@]} - 1]}"

# Source the common files
source $DIR/common/prompt.sh
source $DIR/common/history.sh

# https://stackoverflow.com/questions/394230/how-to-detect-the-os-from-a-bash-script
if [[ "$OSTYPE" == "linux-gnu" ]]; then
    # linux
    echo $OSTYPE;
    source $DIR/ubuntu/profile.sh
elif [[ "$OSTYPE" == "darwin"* ]]; then
    # Mac OS
    echo $OSTYPE;
    source $DIR/mac/profile.sh
else
    # unknown
    echo $OSTYPE;
fi

#echo "$SOURCE"
#echo "$DIR"

