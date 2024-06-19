Here's how to get the environment running on MacOS Sonoma:

### Set up the environment
- `conda env create -f environment.yml && conda activate se3dif_env`
- `pip install -e .`

### Install PyTorch3D
- `MACOSX_DEPLOYMENT_TARGET=10.14 CC=clang CXX=clang++ pip install "git+https://github.com/facebookresearch/pytorch3d.git"` (as per the instructions on the [pytorch3d github page](https://github.com/facebookresearch/pytorch3d/blob/main/INSTALL.md#2-install-from-pypi-on-mac-only)).

### Install scikit-sparse
- `brew install suite-sparse`
- `SUITESPARSE_INCLUDE_DIR=/opt/homebrew/Cellar/suite-sparse/7.7.0/include/suitesparse SUITESPARSE_LIBRARY_DIR=/opt/homebrew/Cellar/suite-sparse/7.7.0/lib pip install scikit-sparse` 

### Install Theseus-AI
- `pip install theseus-ai==0.1.3`

### Mesh-to-SDF
- clone `https://github.com/robotgradient/mesh_to_sdf`, `cd` into the folder, and do `pip install -e .`

## Notes:

- The root directory for the data is set to the root of the repository. If you want to change this, you can do so in `utils/director_utils.py`. See [the original SE(3) diffusion repo](https://github.com/robotgradient/grasp_diffusion/tree/master) for up-to-date links to the dataset.

- Conda env can be removed using `conda deactivate && conda remove -n se3dif_env --all`

- If you run into unpickling errors at the end, try deleting everything and installing git-lfs first: `brew install git-lfs`, `git lfs install`