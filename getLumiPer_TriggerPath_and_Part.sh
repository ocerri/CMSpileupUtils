#!/bin/bash
trg=$1
part=$2

# export PATH=$HOME/.local/bin:/cvmfs/cms-bril.cern.ch/brilconda/bin:$PATH
# cd ~/work/CMSSW_10_2_3/src/; cmsenv; cd

auxPart=$(($part-1))
echo "brilcalc lumi --byls --normtag /cvmfs/cms-bril.cern.ch/cms-lumi-pog/Normtags/normtag_PHYSICS.json -i ParkingBPH${part}_results/processedLumis.json --hltpath HLT_${trg}_part${auxPart}_v? -o lumi_brilcalc/lumi_${trg}_part${part}.csv -c web"
brilcalc lumi --byls --normtag /cvmfs/cms-bril.cern.ch/cms-lumi-pog/Normtags/normtag_PHYSICS.json -i ParkingBPH${part}_results/processedLumis.json --hltpath "HLT_${trg}_part${auxPart}_v?" -o lumi_brilcalc/lumi_${trg}_part${part}.csv -c web
echo "Done!"
