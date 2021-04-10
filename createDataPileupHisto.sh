#!/bin/bash
trg=$1
part=$2

# cd ~/work/CMSSW_10_3_1/src/; cmsenv; cd -

echo "pileupCalc.py -i ParkingBPH${part}_results/processedLumis.json --inputLumiJSON HLT_corrected_PileupJSON/${trg}_part${part}_PileupJSON.txt --calcMode true --minBiasXsec 69200 --maxPileupBin 100 --numPileupBins 100 pileupHistos/pileupHisto_${trg}_part${part}.root"

pileupCalc.py -i ParkingBPH${part}_results/processedLumis.json --inputLumiJSON HLT_corrected_PileupJSON/${trg}_part${part}_PileupJSON.txt --calcMode true --minBiasXsec 69200 --maxPileupBin 100 --numPileupBins 100 pileupHistos/pileupHisto_${trg}_part${part}.root

echo "Done!"
