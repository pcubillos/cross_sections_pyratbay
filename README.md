# Molecular Cross Sections for Exoplanet Atmospheres

Sample cross sections from Ames, Exomol, and HITRAN line transitions for use within the `Pyrat Bay` package ([Cubillos & Blecic 2021, MNRAS, 505, 2675](https://ui.adsabs.harvard.edu/abs/2021MNRAS.505.2675C)).

Users can use these script to reproduce the cross sections stored in https://zenodo.org/records/16965391
Or modify the files to produce cross sections across different wavelength, temperature, and pressure ranges and resolutions.

### Step 1: Download input line-by-line files
Download input files containing the Ames, Exomol, and HITRAN line lists.
Go into the `inputs` folder and download the files using the provided wget_*.txt files. For example:
```
wget -i wget_ames_CO2_ai3000k.txt
```
Note that these are several GBs of data in total.  You may want to let this running into a script and/or organize into folders.

Now we need to unzip .trans.bz2 and .par.bz2 files.  In the same `inputs` folder, run these commands:
```
bzip2 -d *.trans.bz2
bzip2 -d *.par.bz2
```

### Step 2: Generate partition functions

To compute the partition-function files, use the command in the ``code/make_partitions.sh`` file.  To compute all of them at once, run this command from the root folder:
```
sh code/make_partitions.sh
```
Otherwise, copy and paste the commands from ``make_partitions.sh`` into the prompt to execute each individual command.

### Step 3: Compute .tli line lists
The `tli_*.cfg` files take the input line lists and format them for use in `Pyrat Bay` (i.e., the `.tli` files).  User may adjust the temperature ranges (via the partition functions) and wavelength ranges as needed.  To run, execute for example from the prompt:
```
pbay -c tli_CO2_ames_ai3000k.cfg
```

### Step 4: Compute cross-section files
The `opacity_*.cfg` files sample the line-list data into cross sections.  Users may adjust the pressure, wavelength, and temperature sampling as needed.  The extent of line wings can also be setup.  These scripts can be executed using parallel computing via the `ncpu` argument in the configuration files.  To run, execute from the prompt:
```
pbay -c opacity_0.15-33.0um_0200-5000K_R025K_CO2_ames_ai3000k.cfg
```

Note that for the largest line lists, this will have a significant memory demand and will probably take several hours to run.

### Outputs
The output cross sections can be found in these Zenodo repositories
- https://doi.org/10.5281/zenodo.17060936
- https://doi.org/10.5281/zenodo.16965390

The `plots` folder contains figures for the output cross sections at 1 bar, evaluated at 300 and 2000 K.
