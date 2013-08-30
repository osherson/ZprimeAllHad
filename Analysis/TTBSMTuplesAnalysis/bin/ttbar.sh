#!/bin/bash
for i in 0 1 2 3 4 5
do 
     python TTHadronicAnalyzerSplit.py --analyzer=TTPairAnalyzer --dirs='/uscms/home/pilot/3DayLifetime/ttjets_powheg10/res/' --outfile=Aug19_ttjets10 --triggerFile=TRIGGER_EFF_TYPE11 --triggerWeight=noWeight --modMassFile=ModMassFileQCD --mistagFile=mistag --useMC --sec=${i} --totalSec=5 &
     python TTHadronicAnalyzerSplit.py --analyzer=TTPairAnalyzer --dirs='/uscms/home/pilot/3DayLifetime/ttjets_powheg7/res/' --outfile=Aug19_ttjets7 --triggerFile=TRIGGER_EFF_TYPE11 --triggerWeight=noWeight --modMassFile=ModMassFileQCD --mistagFile=mistag --useMC --sec=${i} --totalSec=5 &
done
exit
