# CMSpileupUtils
Pileup utility for CMS

ParkingBPHX_results contains the lumi sections crab report for a submission which run on 99.9% of the dataset or more.

Reweighting twiki: https://twiki.cern.ch/twiki/bin/viewauth/CMS/PileupMCReweightingUtilities
Pileup JSON twiki: https://twiki.cern.ch/twiki/bin/view/CMS/PileupJSONFileforData

1) Calculate the delivered and recorded luminosity per lumi section for your given trigger paths. 
`brilcalc lumi --byls --normtag /cvmfs/cms-bril.cern.ch/cms-lumi-pog/Normtags/normtag_PHYSICS.json -i [your json] --hltpath [your !HLT path] -o output.csv`
