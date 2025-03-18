# Installation of graphormer
# 2024.12.12
git clone https://github.com/microsoft/Graphormer.git
cd Graphormer
git submodule update --init --recursive

conda create -n graphormer python=3.9.12
conda activate graphormer

# conda install python==3.9.12

pip install pip==22.1.2 setuptools==61.2.0 typing-extensions==4.3.0
pip install torch==1.9.1+cu111 torchaudio==0.9.1 -f https://download.pytorch.org/whl/cu111/torch_stable.html

pip install  lmdb==1.3.0 numpy==1.23.1 certifi==2022.6.15 charset-normalizer==2.1.0 \
googledrivedownloader==0.4 idna==3.3 isodate==0.6.1 networkx==2.8.5 pandas==1.4.3 \
pyparsing==3.0.9 python-dateutil==2.8.2 python-louvain==0.16 pytz==2022.1  \
requests==2.28.1 six==1.16.0 torch-geometric==1.7.2 tqdm==4.64.0 tzdata==2022.1 urllib3==1.26.11 \
protobuf==3.20.1 littleutils==0.2.2 ogb==1.3.2 outdated==0.2.1 -i https://pypi.mirrors.ustc.edu.cn/simple/
#rdflib==6.2.0
pip install torch-scatter==2.0.9 torch-sparse==0.6.12 -f https://pytorch-geometric.com/whl/torch-1.9.1+cu111.html
pip install torch-geometric==1.7.2 ogb==1.3.2 rdkit-pypi==2021.9.3
pip install dgl==0.7.2 -f https://data.dgl.ai/wheels/repo.html
# pip install tensorboardX==2.1

pip install PyYAML==6.0 antlr4-python3-runtime==4.8 bitarray==3.0.0 cffi==1.17.1 \
colorama==0.4.6 cython==3.0.11 hydra-core==1.0.7  lxml==5.3.0 omegaconf==2.0.6 \
portalocker==3.0.0 pycparser==2.22 regex==2024.11.6 sacrebleu==2.4.3 tabulate==0.9.0 \
-i https://pypi.mirrors.ustc.edu.cn/simple/

cd fairseq
pip install --editable ./ -i https://pypi.mirrors.ustc.edu.cn/simple/   
