# I want at least 5000K

# AlF
pbay -pf exomol /home/pcubillos/ast/data/ExoMol/AlF_mollist/27Al-19F__MoLLIST.pf

# C2H2
pbay -pf exomol /home/pcubillos/ast/data/ExoMol/C2H2_acety/12C2-1H2__aCeTY.pf

# C2H4
pbay -pf states 5.0 6000.0 5.0 \
    /home/pcubillos/ast/data/ExoMol/C2H4_mayty/12C2-1H4__MaYTY.states.bz2

# CaH
pbay -pf exomol /home/pcubillos/ast/data/ExoMol/CaH_xab/40Ca-1H__XAB.pf

# CH4
pbay -pf states 5.0 6000.0 5.0 /nas/exoplanets/opacities/exomol/CH4_mm/12C-1H4__MM.states.bz2

# CO2
# get from Zenodo repository
# wget https://zenodo.org/records/16965391/files/PF_ames_CO2.dat

# CO
pbay -pf tips CO

# CS2
pbay -pf tips CS2

# CS
pbay -pf states 5.0 6000.0 5.0 \
    /home/pcubillos/ast/data/ExoMol/CS_jnk/12C-32S__JnK.states.bz2 \
    /home/pcubillos/ast/data/ExoMol/CS_jnk/12C-33S__JnK.states.bz2 \
    /home/pcubillos/ast/data/ExoMol/CS_jnk/12C-34S__JnK.states.bz2 \
    /home/pcubillos/ast/data/ExoMol/CS_jnk/12C-36S__JnK.states.bz2 \
    /home/pcubillos/ast/data/ExoMol/CS_jnk/13C-32S__JnK.states.bz2 \
    /home/pcubillos/ast/data/ExoMol/CS_jnk/13C-33S__JnK.states.bz2 \
    /home/pcubillos/ast/data/ExoMol/CS_jnk/13C-34S__JnK.states.bz2 \
    /home/pcubillos/ast/data/ExoMol/CS_jnk/13C-36S__JnK.states.bz2

# FeH
pbay -pf exomol \
    /home/pcubillos/ast/data/ExoMol/FeH_mollist/56Fe-1H__MoLLIST.pf

# H2O
pbay -pf exomol /home/pcubillos/ast/data/ExoMol/H2O_pokazatel/1H2-16O__POKAZATEL.pf

# H2S
pbay -pf tips H2S

# HCl
pbay -pf exomol \
    /home/pcubillos/ast/data/ExoMol/HCl_hitran/1H-35Cl__HITRAN-HCl.pf \
    /home/pcubillos/ast/data/ExoMol/HCl_hitran/1H-37Cl__HITRAN-HCl.pf \
    /home/pcubillos/ast/data/ExoMol/HCl_hitran/2H-35Cl__HITRAN-HCl.pf \
    /home/pcubillos/ast/data/ExoMol/HCl_hitran/2H-37Cl__HITRAN-HCl.pf

# HCN
pbay -pf states 5.0 6000.0 5.0 \
    /home/pcubillos/ast/data/ExoMol/HCN_harris-larner/1H-12C-14N__Harris.states.bz2 \
    /home/pcubillos/ast/data/ExoMol/HCN_harris-larner/1H-13C-14N__Larner.states.bz2

# HF
pbay -pf exomol /home/pcubillos/ast/data/ExoMol/HF_coxon_hajig/1H-19F__Coxon-Hajig.pf

# KCl
pbay -pf states 5.0 6000.0 5.0 \
    /home/pcubillos/ast/data/ExoMol/KCl_barton/39K-35Cl__Barton.states \
    /home/pcubillos/ast/data/ExoMol/KCl_barton/39K-37Cl__Barton.states \
    /home/pcubillos/ast/data/ExoMol/KCl_barton/41K-35Cl__Barton.states \
    /home/pcubillos/ast/data/ExoMol/KCl_barton/41K-37Cl__Barton.states

# KOH
pbay -pf states 5.0 6000.0 5.0  \
    /nas/exoplanets/opacities/exomol/KOH_oyt4/39K-16O-1H__OYT4.states.bz2

# NaCl
pbay -pf states 5.0 6000.0 5.0 \
    /home/pcubillos/ast/data/ExoMol/NaCl_barton/23Na-35Cl__Barton.states \
    /home/pcubillos/ast/data/ExoMol/NaCl_barton/23Na-37Cl__Barton.states

# NaH
pbay -pf exomol \
    /home/pcubillos/ast/data/ExoMol/NaH_rivlin/23Na-1H__Rivlin.pf \
    /home/pcubillos/ast/data/ExoMol/NaH_rivlin/23Na-2H__Rivlin.pf

# NH3
pbay -pf tips NH3

# OCS
pbay -pf states 5.0 6000.0 5.0  \
    /home/pcubillos/ast/data/ExoMol/OCS_oyt8/16O-12C-32S__OYT8.states.bz2

# OH
pbay -pf tips OH

# PH3
pbay -pf states 5.0 6000.0 5.0  \
    /nas/exoplanets/opacities/exomol/PH3_salty/31P-1H3__SAlTY.states.bz2

# PH
pbay -pf states 5.0 6000.0 5.0 \
    /home/pcubillos/ast/data/ExoMol/PH_laty/31P-1H__LaTY.states

# PN
pbay -pf exomol \
    /home/pcubillos/ast/data/ExoMol/PN_pain/31P-14N__PaiN.pf \
    /home/pcubillos/ast/data/ExoMol/PN_pain/31P-15N__PaiN.pf

# PO
pbay -pf exomol /home/pcubillos/ast/data/ExoMol/PO_pops/31P-16O__POPS.pf

# SH
pbay -pf exomol \
    /home/pcubillos/ast/data/ExoMol/SH_gyt/32S-1H__GYT.pf \
    /home/pcubillos/ast/data/ExoMol/SH_gyt/32S-2H__GYT.pf \
    /home/pcubillos/ast/data/ExoMol/SH_gyt/33S-1H__GYT.pf \
    /home/pcubillos/ast/data/ExoMol/SH_gyt/34S-1H__GYT.pf \
    /home/pcubillos/ast/data/ExoMol/SH_gyt/36S-1H__GYT.pf

# SiH
pbay -pf exomol \
    /home/pcubillos/ast/data/ExoMol/SiH_sightly/28Si-1H__SiGHTLY.pf \
    /home/pcubillos/ast/data/ExoMol/SiH_sightly/28Si-2H__SiGHTLY.pf \
    /home/pcubillos/ast/data/ExoMol/SiH_sightly/29Si-1H__SiGHTLY.pf \
    /home/pcubillos/ast/data/ExoMol/SiH_sightly/30Si-1H__SiGHTLY.pf

# SiH4
pbay -pf states 5.0 6000.0 5.0  \
    /nas/exoplanets/opacities/exomol/SiH4_oy2t/28Si-1H4__OY2T.states.bz2

# SiO
pbay -pf exomol \
    /home/pcubillos/ast/data/ExoMol/SiO_siouvenir/28Si-16O__SiOUVenIR.pf

# SiS
pbay -pf exomol \
    /home/pcubillos/ast/data/ExoMol/SiS_ucty/28Si-32S__UCTY.pf \
    /home/pcubillos/ast/data/ExoMol/SiS_ucty/28Si-33S__UCTY.pf \
    /home/pcubillos/ast/data/ExoMol/SiS_ucty/28Si-34S__UCTY.pf \
    /home/pcubillos/ast/data/ExoMol/SiS_ucty/28Si-36S__UCTY.pf \
    /home/pcubillos/ast/data/ExoMol/SiS_ucty/29Si-32S__UCTY.pf \
    /home/pcubillos/ast/data/ExoMol/SiS_ucty/29Si-33S__UCTY.pf \
    /home/pcubillos/ast/data/ExoMol/SiS_ucty/29Si-34S__UCTY.pf \
    /home/pcubillos/ast/data/ExoMol/SiS_ucty/29Si-36S__UCTY.pf \
    /home/pcubillos/ast/data/ExoMol/SiS_ucty/30Si-32S__UCTY.pf \
    /home/pcubillos/ast/data/ExoMol/SiS_ucty/30Si-33S__UCTY.pf \
    /home/pcubillos/ast/data/ExoMol/SiS_ucty/30Si-34S__UCTY.pf \
    /home/pcubillos/ast/data/ExoMol/SiS_ucty/30Si-36S__UCTY.pf

# SO2
pbay -pf tips SO2

# SO
pbay -pf exomol /home/pcubillos/ast/data/ExoMol/SO_solis/32S-16O__SOLIS.pf

# TiO
pbay -pf exomol \
    /home/pcubillos/ast/data/ExoMol/TiO_toto/46Ti-16O__Toto.pf \
    /home/pcubillos/ast/data/ExoMol/TiO_toto/47Ti-16O__Toto.pf \
    /home/pcubillos/ast/data/ExoMol/TiO_toto/48Ti-16O__Toto.pf \
    /home/pcubillos/ast/data/ExoMol/TiO_toto/49Ti-16O__Toto.pf \
    /home/pcubillos/ast/data/ExoMol/TiO_toto/50Ti-16O__Toto.pf

# VO
pbay -pf exomol /nas/exoplanets/opacities/exomol/VO_hyvo/51V-16O__HyVO.pf

