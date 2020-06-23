# OPC Client and Server Examples for open62541

## Content

All of the following utilize [open62541](https://open62541.org/).

- a simply client that reads and updates data
- a simply server that stores and recieves data updates
- a simply historical client
- a simply historical server

We wrote all examples in c++, hence, there will be warnings, however, no errors should occur.

## Prerequisite

Download the newest [open62541](https://open62541.org/) release and build from source:

1. Make sure you have all required packages installed. You may find a list at [Building open62541](https://open62541.org/doc/current/building.html)
2. For building with cmake use the following commands:

```
cd open62541 # or however you named the file you saved the open62541 release in
mkdir build
cd build
cmake -DBUILD_SHARED_LIBS=ON -DCMAKE_BUILD_TYPE=RelWithDebInfo -DUA_NAMESPACE_ZERO=FULL -DUA_ENABLE_HISTORIZING=1 -DUA_ENABLE_EXPERIMENTAL_HISTORIZING=1 ..
make
sudo make install
```

## Build Examples

```
cd examples 
mkdir build
cd build
cmake -DUA_NAMESPACE_ZERO=FULL -DUA_ENABLE_HISTORIZING=1 -DUA_ENABLE_EXPERIMENTAL_HISTORIZING=1 ..
make
```

The executables are now in the folder ~/OPCTest/examples/build/bin/examples
