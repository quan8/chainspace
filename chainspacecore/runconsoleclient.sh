#!/bin/bash

BFT_SMART_LIB=lib/bft-smart-1.2.1-UCL.jar
CHAINSPACE_LIB=target/chainspace-1.0-SNAPSHOT-jar-with-dependencies.jar

rm config/currentView
java -cp ${BFT_SMART_LIB}:${CHAINSPACE_LIB} uk.ac.ucl.cs.sec.chainspace.bft.ConsoleClient ChainSpaceClientConfig/config.txt
