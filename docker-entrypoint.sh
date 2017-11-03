#!/bin/bash -e
echo "**** Starting GlobaLeaks ..."
service tor restart
service globaleaks restart
sleep infinity
