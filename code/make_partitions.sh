# I want at least 5000K
# Use exomol or hitran/tips files whenever possible
# If temp is not covered, compute from states files

# AlF
pbay -pf exomol inputs/27Al-19F__MoLLIST.pf

# C2H2
pbay -pf exomol inputs/12C2-1H2__aCeTY.pf

# C2H4
pbay -pf states 5.0 6000.0 5.0 inputs/12C2-1H4__MaYTY.states.bz2

# CaH
pbay -pf exomol inputs/40Ca-1H__XAB.pf

# CH4
pbay -pf states 5.0 6000.0 5.0 inputs/12C-1H4__MM.states.bz2

# CO2
# get from Zenodo repository
# wget https://zenodo.org/records/16965391/files/PF_ames_CO2.dat

# CO
pbay -pf tips CO

# CS2
pbay -pf tips CS2

# CS
pbay -pf states 5.0 6000.0 5.0 \
    inputs/12C-32S__JnK.states.bz2 \
    inputs/12C-33S__JnK.states.bz2 \
    inputs/12C-34S__JnK.states.bz2 \
    inputs/12C-36S__JnK.states.bz2 \
    inputs/13C-32S__JnK.states.bz2 \
    inputs/13C-33S__JnK.states.bz2 \
    inputs/13C-34S__JnK.states.bz2 \
    inputs/13C-36S__JnK.states.bz2

# FeH
pbay -pf exomol inputs/56Fe-1H__MoLLIST.pf

# H2O
pbay -pf exomol inputs/1H2-16O__POKAZATEL.pf

# H2S
pbay -pf tips H2S

# HCl
pbay -pf exomol \
    inputs/1H-35Cl__HITRAN-HCl.pf \
    inputs/1H-37Cl__HITRAN-HCl.pf \
    inputs/2H-35Cl__HITRAN-HCl.pf \
    inputs/2H-37Cl__HITRAN-HCl.pf

# HCN
pbay -pf states 5.0 6000.0 5.0 \
    inputs/1H-12C-14N__Harris.states.bz2 \
    inputs/1H-13C-14N__Larner.states.bz2

# HF
pbay -pf exomol inputs/1H-19F__Coxon-Hajig.pf

# KCl
pbay -pf states 5.0 6000.0 5.0 \
    inputs/39K-35Cl__Barton.states \
    inputs/39K-37Cl__Barton.states \
    inputs/41K-35Cl__Barton.states \
    inputs/41K-37Cl__Barton.states

# KOH
pbay -pf states 5.0 6000.0 5.0 inputs/39K-16O-1H__OYT4.states.bz2

# NaCl
pbay -pf states 5.0 6000.0 5.0 \
    inputs23Na-35Cl__Barton.states \
    inputs23Na-37Cl__Barton.states

# NaH
pbay -pf exomol \
    inputs/23Na-1H__Rivlin.pf \
    inputs/23Na-2H__Rivlin.pf

# NH3
pbay -pf tips NH3

# OCS
pbay -pf states 5.0 6000.0 5.0 inputs/16O-12C-32S__OYT8.states.bz2

# OH
pbay -pf tips OH

# PH3
pbay -pf states 5.0 6000.0 5.0 inputs/31P-1H3__SAlTY.states.bz2

# PH
pbay -pf states 5.0 6000.0 5.0 inputs/31P-1H__LaTY.states

# PN
pbay -pf exomol \
    inputs/31P-14N__PaiN.pf \
    inputs/31P-15N__PaiN.pf

# PO
pbay -pf exomol inputs/31P-16O__POPS.pf

# SH
pbay -pf exomol \
    inputs/32S-1H__GYT.pf \
    inputs/32S-2H__GYT.pf \
    inputs/33S-1H__GYT.pf \
    inputs/34S-1H__GYT.pf \
    inputs/36S-1H__GYT.pf

# SiH
pbay -pf exomol \
    inputs/28Si-1H__SiGHTLY.pf \
    inputs/28Si-2H__SiGHTLY.pf \
    inputs/29Si-1H__SiGHTLY.pf \
    inputs/30Si-1H__SiGHTLY.pf

# SiH4
pbay -pf states 5.0 6000.0 5.0 inputs/28Si-1H4__OY2T.states.bz2

# SiO
pbay -pf exomol inputs/28Si-16O__SiOUVenIR.pf

# SiS
pbay -pf exomol \
    inputs/28Si-32S__UCTY.pf \
    inputs/28Si-33S__UCTY.pf \
    inputs/28Si-34S__UCTY.pf \
    inputs/28Si-36S__UCTY.pf \
    inputs/29Si-32S__UCTY.pf \
    inputs/29Si-33S__UCTY.pf \
    inputs/29Si-34S__UCTY.pf \
    inputs/29Si-36S__UCTY.pf \
    inputs/30Si-32S__UCTY.pf \
    inputs/30Si-33S__UCTY.pf \
    inputs/30Si-34S__UCTY.pf \
    inputs/30Si-36S__UCTY.pf

# SO2
pbay -pf tips SO2

# SO
pbay -pf exomol inputs/32S-16O__SOLIS.pf

# TiO
pbay -pf exomol \
    inputs/46Ti-16O__Toto.pf \
    inputs/47Ti-16O__Toto.pf \
    inputs/48Ti-16O__Toto.pf \
    inputs/49Ti-16O__Toto.pf \
    inputs/50Ti-16O__Toto.pf

# VO
pbay -pf exomol inputs/51V-16O__HyVO.pf

