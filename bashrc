#
# save original PATH 
#
if [ "$PATH_ORI" == "" ] ; then
	export PATH_ORI=$PATH
fi

export PATH=/usr/lib/ccache:$PATH_ORI


#
# for make
#
NUMBER_OF_CORE="`grep -c ^processor /proc/cpuinfo`"
BEST_JOBS="`expr $NUMBER_OF_CORE + 1`"
export MAKEFLAGS="-j$BEST_JOBS"

#
# for git
#
#PS1+=`echo -n $(BR=$(git branch 2> /dev/null | grep '*'))`
#PS1+=`echo -n $(BR=`git branch 2>/dev/null | grep "*" | awk '{print $2}'`; if [ "$BR" != "" ] ; then echo "($BR)"; fi;)`
#echo -n $(BR=`git branch 2>/dev/null | grep "*" | awk '{print $2}'`; if [ "$BR" != "" ] ; then echo "($BR)"; fi;)

