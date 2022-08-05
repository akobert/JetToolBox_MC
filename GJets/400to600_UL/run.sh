#!/bin/bash

cluster=$1
process=$2

# CMSSW setup etc
export SCRAM_ARCH="slc7_amd64_gcc820"
export VO_CMS_SW_DIR="/cms/base/cmssoft"
export COIN_FULL_INDIRECT_RENDERING=1

source $VO_CMS_SW_DIR/cmsset_default.sh
export HOME=/home/akobert/

cd /home/akobert/CMSSW_10_6_29/src/GJets/400to600_UL

eval `scramv1 runtime -sh`

cmsRun nano$2.py >& /home/akobert/CMSSW_10_6_29/src/CondorFiles/logfiles_GJets400to600_UL_$1_$2.log
