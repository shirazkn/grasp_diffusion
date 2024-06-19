conda env create -f environment.yml && conda activate se3dif_env
pip install -e .

MACOSX_DEPLOYMENT_TARGET=10.14 CC=clang CXX=clang++ pip install "git+https://github.com/facebookresearch/pytorch3d.git"

brew install suite-sparse

SUITESPARSE_INCLUDE_DIR=/opt/homebrew/Cellar/suite-sparse/7.7.0/include/suitesparse SUITESPARSE_LIBRARY_DIR=/opt/homebrew/Cellar/suite-sparse/7.7.0/lib pip install scikit-sparse --no-cache-dir --no-binary :all: --no-build-isolation

pip install theseus-ai==0.1.3

git clone https://github.com/robotgradient/mesh_to_sdf.git
cd mesh_to_sdf && pip install -e . && cd ..

mkdir data
cd data
git clone https://huggingface.co/camusean/grasp_diffusion models
cd ..