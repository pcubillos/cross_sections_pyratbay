# Copyright (c) 2025 Patricio Cubillos
# This is open-source software under the MIT license (see LICENSE).

import pyratbay.opacity as op
import pyratbay.io as io

import numpy as np
import matplotlib
import matplotlib.pyplot as plt

def main():
    cs_files = [
        'cross_section_0.15-33.0um_0200-5000K_R025K_AlF_exomol_mollist.npz',
        'cross_section_0.15-33.0um_0200-5000K_R025K_C2H2_exomol_acety.npz',
        'cross_section_0.15-33.0um_0200-5000K_R025K_CaH_exomol_xab.npz',
        'cross_section_0.15-33.0um_0200-5000K_R025K_CH4_exomol_mm.npz',
        'cross_section_0.15-33.0um_0200-5000K_R025K_CO2_ames_ai3000k.npz',
        'cross_section_0.15-33.0um_0200-5000K_R025K_CO_hitemp_2019.npz',
        'cross_section_0.15-33.0um_0200-5000K_R025K_CS2_hitran_2020.npz',
        'cross_section_0.15-33.0um_0200-5000K_R025K_CS_exomol_jnk.npz',
        'cross_section_0.15-33.0um_0200-5000K_R025K_FeH_exomol_mollist.npz',
        'cross_section_0.15-33.0um_0200-5000K_R025K_H2O_exomol_pokazatel.npz',
        'cross_section_0.15-33.0um_0200-5000K_R025K_H2S_exomol_ayt2.npz',
        'cross_section_0.15-33.0um_0200-5000K_R025K_HCl_exomol_hitran.npz',
        'cross_section_0.15-33.0um_0200-5000K_R025K_HCN_exomol_harris_larner.npz',
        'cross_section_0.15-33.0um_0200-5000K_R025K_HF_exomol_coxon_hajig.npz',
        'cross_section_0.15-33.0um_0200-5000K_R025K_KCl_exomol_barton.npz',
        'cross_section_0.15-33.0um_0200-5000K_R025K_KOH_exomol_oyt4.npz',
        'cross_section_0.15-33.0um_0200-5000K_R025K_NaCl_exomol_barton.npz',
        'cross_section_0.15-33.0um_0200-5000K_R025K_NaH_exomol_rivlin.npz',
        'cross_section_0.15-33.0um_0200-5000K_R025K_NH3_exomol_coyute.npz',
        'cross_section_0.15-33.0um_0200-5000K_R025K_OCS_exomol_oyt8.npz',
        'cross_section_0.15-33.0um_0200-5000K_R025K_OH_hitemp_2022.npz',
        'cross_section_0.15-33.0um_0200-5000K_R025K_PH3_exomol_salty.npz',
        'cross_section_0.15-33.0um_0200-5000K_R025K_PH_exomol_laty.npz',
        'cross_section_0.15-33.0um_0200-5000K_R025K_PN_exomol_pain.npz',
        'cross_section_0.15-33.0um_0200-5000K_R025K_PO_exomol_pops.npz',
        'cross_section_0.15-33.0um_0200-5000K_R025K_SH_exomol_gyt.npz',
        'cross_section_0.15-33.0um_0200-5000K_R025K_SiH4_exomol_oy2t.npz',
        'cross_section_0.15-33.0um_0200-5000K_R025K_SiH_exomol_sightly.npz',
        'cross_section_0.15-33.0um_0200-5000K_R025K_SiO_exomol_siouvenir.npz',
        'cross_section_0.15-33.0um_0200-5000K_R025K_SiS_exomol_oy2t.npz',
        'cross_section_0.15-33.0um_0200-5000K_R025K_SO2_exomol_exoames.npz',
        'cross_section_0.15-33.0um_0200-5000K_R025K_SO_exomol_solis.npz',
        'cross_section_0.15-33.0um_0200-5000K_R025K_TiO_exomol_toto.npz',
        'cross_section_0.15-33.0um_0200-5000K_R025K_VO_exomol_hyvo.npz',
    ]
    ndata = len(cs_files)

    molecs = []
    for i in range(ndata):
        molecule = cs_files[i][43:-4].replace('_', ' ')
        molecs.append(molecule)

    # Calculate cross sections:
    mol, temp, pressure, wn = io.read_opacity(cs_files[0], extract='arrays')
    wl = 1e4/wn

    temps = [300.0, 2000.0]
    ntemp = len(temps)
    nwave = len(wl)
    press = np.array([1.0])
    cross_secs = np.zeros((ndata,ntemp,nwave))
    for i in range(ndata):
        print(molecs[i])
        line_sample = op.Line_Sample(cs_files[i], pressure=press)
        for j in range(ntemp):
            temp = np.tile(temps[j], line_sample.nlayers)
            cross_secs[i,j] = line_sample.calc_cross_section(temp)[0]


    wn_max = {
        "AlF":   4000,
        "C2H2": 10000,
        "CaH":  30000,
        "CH4":  12000,
        "CO2":  20000,
        "CO":   22300,
        "CS2":   6500,
        "CS":   12000,
        "FeH":  16500,
        "H2O":  40000,
        "H2S":  35000,
        "HCl":  20000,
        "HCN":  18000,
        "HF":   32000,
        "KCl":   3000,
        "KOH":   6000,
        "NaCl":  2500,
        "NaH":  33300,
        "NH3":  20000,
        "OCS":  10000,
        "OH":   43500,
        "PH":   10000,
        "PH3":  10000,
        "PN":   67000,
        "PO":   12000,
        "SH":   38000,
        "SiH":  31500,
        "SiH4":  5000,
        "SiO":  67000,
        "SiS":   3750,
        "SO2":   8000,
        "SO":   46000,
        "TiO":  30000,
        "VO":   45000,
    }

    yran = {
        "AlF":  (1e-30, 1e-17),
        "C2H2": (1e-27, 1e-17),
        "CaH":  (1e-30, 3e-13),
        "CH4":  (1e-28, 1e-17),
        "CO2":  (1e-35, 1e-16),
        "CO":   (1e-38, 1e-17),
        "CS2":  (1e-33, 1e-14),
        "CS":   (1e-37, 1e-17),
        "FeH":  (1e-30, 3e-15),
        "H2O":  (3e-31, 1e-17),
        "H2S":  (1e-38, 1e-19),
        "HCl":  (1e-34, 1e-17),
        "HCN":  (1e-34, 1e-17),
        "HF":   (1e-35, 1e-16),
        "KCl":  (1e-35, 1e-20),
        "KOH":  (1e-24, 1e-15),
        "NaCl": (1e-34, 1e-18),
        "NaH":  (1e-33, 1e-14),
        "NH3":  (2e-27, 1e-17),
        "OCS":  (1e-30, 1e-17),
        "OH":   (1e-38, 1e-15),
        "PH":   (1e-40, 1e-17),
        "PH3":  (1e-28, 1e-17),
        "PN":   (1e-40, 3e-15),
        "PO":   (1e-36, 1e-18),
        "SH":   (1e-35, 1e-15),
        "SiH4": (1e-27, 1e-16),
        "SiH":  (1e-32, 1e-15),
        "SiO":  (1e-45, 1e-14),
        "SiS":  (1e-30, 1e-18),
        "SO2":  (1e-31, 1e-17),
        "SO":   (1e-31, 1e-17),
        "TiO":  (1e-32, 1e-14),
        "VO":   (1e-33, 1e-14),
    }


    labs = [f'T = {temp:.0f} K' for temp in temps]
    cols = ['xkcd:blue', 'salmon']
    fs = 12

    for i in range(ndata):
        mol = cs_files[i].split('_')[5]
        fig = plt.figure(1)
        plt.clf()
        plt.subplots_adjust(0.1, 0.09, 0.97, 0.95, hspace=0.22)
        fig.set_size_inches(8.5, 5.5)
        ax = plt.subplot(211)
        for j in range(ntemp):
            ax.plot(
                wn, cross_secs[i,j], color=cols[j],
                lw=1.0, alpha=0.9, label=labs[j],
            )
        ax.set_yscale('log')
        ax.tick_params(which='both', direction='in', right=True, labelsize=fs-1)
        ax.set_title(molecs[i], weight='bold')
        ax.set_xlabel('Wavenumber (cm$^{-1}$)', fontsize=fs)
        ax.set_ylabel('Cross section (cm$^{2}$ molec$^{-1}$)', fontsize=fs)
        ax.set_xlim(300.0, wn_max[mol])
        ax.set_ylim(yran[mol])
        ax.legend(loc='upper right')

        ax = plt.subplot(212)
        for j in range(ntemp):
            ax.plot(wl, cross_secs[i,j], color=cols[j], lw=1.0, alpha=0.9)
        ax.set_yscale('log')
        ax.set_xscale('log')
        ax.xaxis.set_minor_formatter(matplotlib.ticker.NullFormatter())
        ax.xaxis.set_major_formatter(matplotlib.ticker.ScalarFormatter())
        ax.set_xticks([0.15, 0.3, 0.5, 1.0, 2.0, 3.0, 5.0, 10.0, 20.0])
        ax.tick_params(which='both', direction='in', right=True, labelsize=fs-1)
        ax.set_ylabel('Cross section (cm$^{2}$ molec$^{-1}$)', fontsize=fs)
        ax.set_xlabel(r'Wavelength ($\mathrm{\mu}$m)', fontsize=fs)
        ax.set_xlim(0.15, 28.0)
        ax.set_ylim(yran[mol])
        plt.savefig(f'plots/cross_section_{cs_files[i][43:-4]}.png', dpi=300)


if __name__ == '__main__':
    main()
