#!/bin/bash
cd /home/oracle && \
rm -rf /home/oracle/WLS_deploy_scripts && \
git clone https://github.com/eugsim1/WLS_deploy_scripts.git && \
chmod u+w /home/oracle/WLS_deploy_scripts/*.sh