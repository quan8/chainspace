#!/bin/bash

BFT_SMART_LIB=lib/bft-smart-1.2.1-UCL.jar
CLIENT_API_DB=database
CHAINSPACE_LIB=target/chainspace-1.0-SNAPSHOT-jar-with-dependencies.jar

rm config/currentView
java -Dclient.api.database=${CLIENT_API_DB} -cp ${BFT_SMART_LIB}:${CHAINSPACE_LIB} uk.ac.ucl.cs.sec.chainspace.Client ChainSpaceClientConfig/config.txt
