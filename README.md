\# Parametric PHITS head and neck phantom for neutron capture therapy simulations



This repository contains a parametrized PHITS input file for Monte Carlo simulations of neutron transport and dose deposition in a simplified heterogeneous head and neck phantom.



The model was developed for a bachelor's thesis project on neutron capture therapy. Several geometry and irradiation parameters are exposed as user-editable variables, including skull thickness, neutron energy, source settings, and tumor position.



PHITS itself, nuclear data libraries, and generated output files are not included.


## Model description

The main PHITS input file defines a simplified heterogeneous head and neck phantom for neutron capture therapy simulations. The geometry is built from basic PHITS surfaces and regions, with several user-editable parameters placed near the beginning of the file.

The model is parametrized so that selected physical and geometrical quantities can be changed without rewriting the full geometry. Examples include neutron source energy, skull thickness, source position, and tumor location. This allows the same input structure to be used for multiple simulation scenarios.

The input file includes material definitions for tissue-equivalent regions, source settings, tumor isotope enrichment, and detector/tally definitions used to study neutron transport, dose deposition, and detector response.

The file `user_routines/usrresol.f` contains a PHITS user routine used to apply Gaussian-type energy smearing to detector spectra after recompiling PHITS with MSYS2 MINGW64.


\## Contents



\- `inputs/BNCT\_head\_phantom.inp` — parametrized PHITS input file

- `user_routines/usrresol.f` — PHITS user routine used for Gaussian energy smearing after recompiling PHITS with MSYS2 MINGW64.


## Editable parameters

Several important simulation parameters are defined near the beginning of the PHITS input file. These include:

- neutron source energy,
- skull thickness,
- source geometry and position and tumor position/depth,
- selected detector/tally settings ("switches").

The exact variable names are documented in comments inside the `.inp` file.

Variables related to phantom geometry are also available at the beginning of the Surface section. The aim of the input file is not to provide a fully anatomical clinical phantom, but rather a controllable simulation geometry suitable for comparing neutron transport and dose deposition trends under different neutron capture therapy conditions.

## User routine

The file `user_routines/usrresol.f` contains a modified PHITS user routine used to apply Gaussian-type energy smearing to detector spectra. The routine was used after recompiling PHITS in an MSYS2 MINGW64 environment.

The exact compilation procedure may depend on the local PHITS installation and compiler setup.



\## Requirements



Running the simulation requires PHITS.



\## Notes

The code was made in PHITS Ver.3.34, on Windows.

Large raw output files are excluded from this repository.

