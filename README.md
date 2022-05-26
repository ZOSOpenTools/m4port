# m4port
Place to share information about configure/build of m4 for z/OS (only deltas to open source)

# pre-reqs
You need gnu make, xlclang, and curl to download and unzip a tarball or git to build from scratch. 
Detailed dependencies are in setenv.sh

You will also need a 'bootstrap' m4 to build using the tarball. 

To build, use build.sh from (https://github.com/ZOSOpenTools/utils) after setting up your environment, e.g.
```
. ./setenv.sh
build.sh
```

For details on the build, see (https://zosopentools.github.io/meta/#/Guides/Porting)

See expectedResults.txt for current failures
