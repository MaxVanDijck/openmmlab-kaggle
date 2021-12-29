# clones openmmlab repos commonly used in kaggle competitions
# or for general purpose computer vision applications
# creates tar.gz file for upload to kaggle and optionally removes openmmlab-repos directory

# make folder for repos
mkdir openmmlab-repos
mkdir openmmlab-repos/src

# pytorch for kaggle installation
wget https://download.pytorch.org/whl/cu111/torch-1.9.0%2Bcu111-cp37-cp37m-linux_x86_64.whl -P openmmlab-repos/src

# mim
wget https://files.pythonhosted.org/packages/7b/d2/aa6b8d8c21013af019c5d1fc4c3c4c5e27cb02b2be971780a792a9846fe5/openmim-0.1.5.tar.gz -P openmmlab-repos/src
# mmcv
mkdir openmmlab-repos/mmcv
git clone https://github.com/open-mmlab/mmcv.git openmmlab-repos/mmcv
wget https://download.openmmlab.com/mmcv/dist/cu111/torch1.9.0/mmcv_full-1.4.2-cp37-cp37m-manylinux1_x86_64.whl -P openmmlab-repos/src
# mmclassification
mkdir openmmlab-repos/mmclassification
git clone https://github.com/open-mmlab/mmclassification.git openmmlab-repos/mmclassification
# mmdetection
mkdir openmmlab-repos/mmdetection
git clone https://github.com/open-mmlab/mmdetection.git openmmlab-repos/mmdetection
wget https://files.pythonhosted.org/packages/38/ba/bcffbf95641646635558934932e795169d2282eaae2bbca38a7e4ed13734/mmdet-2.19.1-py3-none-any.whl -P openmmlab-repos/src/
# mmsegmentation
mkdir openmmlab-repos/mmsegmentation
git clone https://github.com/open-mmlab/mmsegmentation.git openmmlab-repos/mmsegmentation
# mmpose
mkdir openmmlab-repos/mmpose
git clone https://github.com/open-mmlab/mmpose.git openmmlab-repos/mmpose
# mmocr
mkdir openmmlab-repos/mmocr
git clone https://github.com/open-mmlab/mmocr openmmlab-repos/mmocr
# mmgeneration
mkdir openmmlab-repos/mmgeneration
git clone https://github.com/open-mmlab/mmgeneration.git openmmlab-repos/mmgeneration
# mmfewshot
mkdir openmmlab-repos/mmfewshot
git clone https://github.com/open-mmlab/mmfewshot.git openmmlab-repos/mmfewshot
# mmtrack
mkdir openmmlab-repos/mmtrack
git clone https://github.com/open-mmlab/mmtracking.git openmmlab-repos/mmtrack

# download all requirements
pip download -d openmmlab-repos/src -r openmmlab-repos/mmcv/requirements.txt
pip download -d openmmlab-repos/src -r openmmlab-repos/mmclassification/requirements.txt
pip download -d openmmlab-repos/src -r openmmlab-repos/mmdetection/requirements.txt
pip download -d openmmlab-repos/src -r openmmlab-repos/mmsegmentation/requirements.txt
pip download -d openmmlab-repos/src -r openmmlab-repos/mmpose/requirements.txt
pip download -d openmmlab-repos/src -r openmmlab-repos/mmocr/requirements.txt
pip download -d openmmlab-repos/src -r openmmlab-repos/mmgeneration/requirements.txt
pip download -d openmmlab-repos/src -r openmmlab-repos/mmfewshot/requirements.txt
pip download -d openmmlab-repos/src -r openmmlab-repos/mmtrack/requirements.txt

# create tar.gz file
tar -czvf openmmlab-repos.tar.gz openmmlab-repos
ls -l openmmlab-repos.tar.gz

# remove folder if desired
if [ "$1" = "-r" ]; then
    rm -rf openmmlab-repos
    rm -rf src
    echo "openmmlab-repos directory removed"
else
    echo "openmmlab-repos directory not removed"
fi