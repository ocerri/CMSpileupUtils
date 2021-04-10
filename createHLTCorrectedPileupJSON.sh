#!/bin/bash
trg=$1
part=$2

# cd ~/work/CMSSW_10_3_1/src/; cmsenv; cd -

echo "pileupReCalc_HLTpaths.py -i lumi_brilcalc/lumi_${trg}_part${part}.csv --inputLumiJSON pileup_Collisions18_13TeV_210409.txt -o HLT_corrected_PileupJSON/${trg}_part${part}_PileupJSON.txt --runperiod Run2"

pileupReCalc_HLTpaths.py -i lumi_brilcalc/lumi_${trg}_part${part}.csv --inputLumiJSON pileup_Collisions18_13TeV_210409.txt -o HLT_corrected_PileupJSON/${trg}_part${part}_PileupJSON.txt --runperiod Run2

echo "Done!"
