#!/bin/bash

BFT_SMART_LIB=lib/bft-smart-1.2.1-UCL.jar
CHAINSPACE_LIB=target/chainspace-1.0-SNAPSHOT-jar-with-dependencies.jar

rm -rf chainspacecore-*

cp -r chainspacecore chainspacecore-0-0
cd chainspacecore-0-0
printf "shardConfigFile ChainSpaceConfig/shardConfig.txt\nthisShard 0\nthisReplica 0" > ChainSpaceConfig/config.txt
cp config/hosts.config.0 config/hosts.config
screen -dmS s0n0 java -cp ${BFT_SMART_LIB}:${CHAINSPACE_LIB} uk.ac.ucl.cs.sec.chainspace.bft.TreeMapServer ChainSpaceConfig/config.txt
cd ../
sleep 1

cp -r chainspacecore chainspacecore-0-1
cd chainspacecore-0-1
printf "shardConfigFile ChainSpaceConfig/shardConfig.txt\nthisShard 0\nthisReplica 1" > ChainSpaceConfig/config.txt
cp config/hosts.config.0 config/hosts.config
screen -dmS s0n1 java -cp ${BFT_SMART_LIB}:${CHAINSPACE_LIB} uk.ac.ucl.cs.sec.chainspace.bft.TreeMapServer ChainSpaceConfig/config.txt
cd ../
sleep 1

cp -r chainspacecore chainspacecore-0-2
cd chainspacecore-0-2
printf "shardConfigFile ChainSpaceConfig/shardConfig.txt\nthisShard 0\nthisReplica 2" > ChainSpaceConfig/config.txt
cp config/hosts.config.0 config/hosts.config
screen -dmS s0n2 java -cp ${BFT_SMART_LIB}:${CHAINSPACE_LIB} uk.ac.ucl.cs.sec.chainspace.bft.TreeMapServer ChainSpaceConfig/config.txt
cd ../
sleep 1

cp -r chainspacecore chainspacecore-0-3
cd chainspacecore-0-3
printf "shardConfigFile ChainSpaceConfig/shardConfig.txt\nthisShard 0\nthisReplica 3" > ChainSpaceConfig/config.txt
cp config/hosts.config.0 config/hosts.config
screen -dmS s0n3 java -cp ${BFT_SMART_LIB}:${CHAINSPACE_LIB} uk.ac.ucl.cs.sec.chainspace.bft.TreeMapServer ChainSpaceConfig/config.txt
cd ../
sleep 1

cp -r chainspacecore chainspacecore-1-0
cd chainspacecore-1-0
printf "shardConfigFile ChainSpaceConfig/shardConfig.txt\nthisShard 1\nthisReplica 0" > ChainSpaceConfig/config.txt
cp config/hosts.config.1 config/hosts.config
screen -dmS s1n0 java -cp ${BFT_SMART_LIB}:${CHAINSPACE_LIB} uk.ac.ucl.cs.sec.chainspace.bft.TreeMapServer ChainSpaceConfig/config.txt
cd ../
sleep 1

cp -r chainspacecore chainspacecore-1-1
cd chainspacecore-1-1
printf "shardConfigFile ChainSpaceConfig/shardConfig.txt\nthisShard 1\nthisReplica 1" > ChainSpaceConfig/config.txt
cp config/hosts.config.1 config/hosts.config
screen -dmS s1n1 java -cp ${BFT_SMART_LIB}:${CHAINSPACE_LIB} uk.ac.ucl.cs.sec.chainspace.bft.TreeMapServer ChainSpaceConfig/config.txt
cd ../
sleep 1

cp -r chainspacecore chainspacecore-1-2
cd chainspacecore-1-2
printf "shardConfigFile ChainSpaceConfig/shardConfig.txt\nthisShard 1\nthisReplica 2" > ChainSpaceConfig/config.txt
cp config/hosts.config.1 config/hosts.config
screen -dmS s1n2 java -cp ${BFT_SMART_LIB}:${CHAINSPACE_LIB} uk.ac.ucl.cs.sec.chainspace.bft.TreeMapServer ChainSpaceConfig/config.txt
cd ../
sleep 1

cp -r chainspacecore chainspacecore-1-3
cd chainspacecore-1-3
printf "shardConfigFile ChainSpaceConfig/shardConfig.txt\nthisShard 1\nthisReplica 3" > ChainSpaceConfig/config.txt
cp config/hosts.config.1 config/hosts.config
screen -dmS s1n3 java -cp ${BFT_SMART_LIB}:${CHAINSPACE_LIB} uk.ac.ucl.cs.sec.chainspace.bft.TreeMapServer ChainSpaceConfig/config.txt
cd ../
