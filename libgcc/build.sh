conda info gcc | sed -n "s/version     : //p" > __conda_version__.txt
conda info gcc | sed -n "s/build number: //p" > __conda_buildnum__.txt
conda info gcc | sed -n "s/build string: //p" > __conda_buildstr__.txt