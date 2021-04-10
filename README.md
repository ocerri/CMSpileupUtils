# CMSpileupUtils
Pileup utility for CMS.

Need to place it inside a cms release (note: pileupCalc.py is broken in CMSSW_10_2_X, so please use another version).
ParkingBPHX_results contains the lumi sections crab report for a submission which run on 99.9% of the dataset or more.

Reweighting twiki: https://twiki.cern.ch/twiki/bin/viewauth/CMS/PileupMCReweightingUtilities
Pileup JSON twiki: https://twiki.cern.ch/twiki/bin/view/CMS/PileupJSONFileforData

1) Calculate the delivered and recorded luminosity per lumi section for your given trigger paths.
  Need to use blilcalc (https://cms-service-lumi.web.cern.ch/cms-service-lumi/brilwsdoc.html).
  If they don't exists already in `lumi_brilcalc`, compute them using `getLumiPer_TriggerPath_and_Part.sh` (e.g. `./getLumiPer_TriggerPath_and_Part.sh Mu12_IP6 5 &> Mu12_p5.log &`). 
  
2) Create the HLT corrected pileup file. If they don't exists already in `HLT_corrected_PileupJSON`, compute them using `createHLTCorrectedPileupJSON.sh` (e.g. `./createHLTCorrectedPileupJSON.sh Mu12_IP6 5 &> Mu12_p5.log &`). 

3) Create the pileup histogram using `createDataPileupHisto.sh`.
