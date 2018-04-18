**| [Overview](#overview) | [Launching the notebooks](#launching-the-notebooks) | [Running the notebooks](#running-the-notebooks) | [Issues](#issues) | [License](#license) |**

# heagy_2018_emcyl

[![Build Status](https://travis-ci.org/simpeg-research/heagy_2018_emcyl.svg?branch=master)](https://travis-ci.org/simpeg-research/heagy_2018_emcyl)
[![Binder](https://mybinder.org/badge.svg)](https://mybinder.org/v2/gh/simpeg-research/heagy_2018_emcyl/master)
[![Azure Notebooks](https://notebooks.azure.com/launch.png)](https://notebooks.azure.com/import/gh/simpeg-research/heagy_2018_emcyl)

<img src="figures/kaufman_zones.png" width=40% align="middle">

## Overview

This repository contains the notebooks used to generate the examples shown in "Finite volume electromagnetic modelling on 2D and 3D cylindrical meshes with applications to steel cased wells" by [Lindsey J. Heagy](https://github.com/lheagy) and [Douglas W. Oldenburg](https://github.com/dougoldenburg). There are two directories of notebooks

- [notebooks](notebooks): contains the notebooks used to generate figures in the paper
    - [1_TDEM_Comparison_w_Commer](notebooks/1_TDEM_Comparison_w_Commer.ipynb): Figures 3 and 4
    - [2_DC_Kaufman_infinite_well](notebooks/2_DC_Kaufman_infinite_well.ipynb): Figure 5
    - [3_DC_Kaufman_finite_well](notebooks/3_DC_Kaufman_finite_well.ipynb): Figure 6
    - [4_TDEM_current_plots](notebooks/4_TDEM_current_plots.ipynb): Figure 7
    - [5_FDEM_following_Augustin_Fig3](notebooks/5_FDEM_following_Augustin_Fig3.ipynb): Figures 8 - 10
    - [6_FDEM_Permeability](notebooks/6_FDEM_Permeability.ipynb): Figures 11 and 12
    - [7_TDEM_Permeability](notebooks/7_TDEM_Permeability.ipynb): Figures 13 and 14

- [appendix_notebooks](appendix_notebooks): supplementary notebooks that contain notebooks examining the impact of formulation choice for the discretization of Maxwell's equations and additional tests for the 2D and 3D cyl codes
     - [compare_2D_and_3D_with_target](appendix_notebooks/compare_2D_and_3D_with_target.ipynb): compares results of 2D and 3D problems for a cylindrically symmetric source and target
     - [compare_3D_FDEM_horizontal_electric_dipole](appendix_notebooks/compare_3D_FDEM_horizontal_electric_dipole.ipynb): compares the 3D cyl code with an analytic for a horizontal electric dipole (FDEM) that is offset from the axis of symmetry
     - [compare_3D_cyl_and_tensor_sources_downhole](appendix_notebooks/compare_3D_cyl_and_tensor_sources_downhole.ipynb): this example compares results from a 3D tensor simulation and a 3D cyl simulation in a grounded-source FDEM experiment
     - [compare_TDEM_horizontal_electric_dipole](appendix_notebooks/compare_TDEM_horizontal_electric_dipole.ipynb): compares the 3D cyl code with an analytic for a horizontal electric dipole (TDEM) that is offset from the axis of symmetry
     - [cyl3D_DC_horizontal_electric_dipole](appendix_notebooks/cyl3D_DC_horizontal_electric_dipole.ipynb): compares the 3D cyl code with an analytic for a horizontal electric dipole (DC) that is offset from the axis of symmetry
     - [cyl3D_DC_vertical_electric_dipole](appendix_notebooks/cyl3D_DC_vertical_electric_dipole.ipynb): compares the 2D and 3D cyl codes with an analytic for a vertical electric dipole (DC) that is offset from the axis of symmetry
     - [electric_3D_EB_HJ](appendix_notebooks/electric_3D_EB_HJ.ipynb): compares the two different discretizations of Maxwell's equations (EB, HJ) for an electric dipole positioned on the axis of symmetry
     - [extension_5_FDEM_following_Augustin_Fig3_pipe_radius](appendix_notebooks/extension_5_FDEM_following_Augustin_Fig3_pipe_radius.ipynb): extension of notebook 5 above to examine the impact of pipe radius on the extent of the static shielding region


## Launching the notebooks

### Online
The notebooks can be run online through [mybinder](https://mybinder.org/v2/gh/simpeg-research/heagy_2018_emcyl/master) or [azure notebooks](https://notebooks.azure.com/import/gh/simpeg-research/heagy_2018_emcyl).

### Locally
To run them locally, you will need to have python installed, preferably through [anaconda](https://www.anaconda.com/download/).

You can then clone this reposiroty. From a command line, run

```
git clone https://github.com/simpeg-research/heagy_2018_emcyl.git
```

Then `cd` into the `heagy_2018_emcyl`

```
cd heagy_2018_emcyl
```

To setup your software environment, we recommend you use the provided conda environment

```
conda env create -f environment.yml
source activate emcyl-environment
```

alternatively, you can install dependencies through pypi
```
pip install -r requirements.txt
```

You can then launch Jupyter
```
jupyter notebook
```

Jupyter will then launch in your web-browser.

## Running the notebooks

Each cell of code can be run with `shift + enter` or you can run the entire notebook by selecting `cell`, `Run All` in the toolbar.

<img src="figures/cell_run_all.png" width=80% align="middle">

For more information on running Jupyter notebooks, see the [Jupyter Documentation](https://jupyter.readthedocs.io/en/latest/)

## Issues

If you run into problems or bugs, please let us know by [creating an issue](https://github.com/simpeg-research/heagy_2018_emcyl/issues/new) in this repository.

## License

These notebooks are licensed under the [MIT License](/LICENSE) which allows academic and commercial re-use and adaptation of this work.
