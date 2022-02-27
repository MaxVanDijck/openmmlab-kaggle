# clones openmmlab repos commonly used in kaggle competitions
# or for general purpose computer vision applications
# creates tar.gz file for upload to kaggle and optionally removes openmmlab-repos directory

# make folder for repos
mkdir openmmlab-repos
mkdir openmmlab-repos/src

# pytorch for kaggle installation
wget https://download.pytorch.org/whl/cu111/torch-1.9.0%2Bcu111-cp37-cp37m-linux_x86_64.whl -P openmmlab-repos/src

# mmcv
mkdir openmmlab-repos/mmcv
git clone https://github.com/open-mmlab/mmcv.git openmmlab-repos/mmcv
wget https://download.openmmlab.com/mmcv/dist/cu111/torch1.9.0/mmcv_full-1.4.6-cp37-cp37m-manylinux1_x86_64.whl -P openmmlab-repos/src
# mmclassification
mkdir openmmlab-repos/mmclassification
git clone https://github.com/open-mmlab/mmclassification.git openmmlab-repos/mmclassification
# mmdetection
mkdir openmmlab-repos/mmdetection
git clone https://github.com/open-mmlab/mmdetection.git openmmlab-repos/mmdetection
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
# mmtracking
mkdir openmmlab-repos/mmtracking
git clone https://github.com/open-mmlab/mmtracking.git openmmlab-repos/mmtracking

# download all requirements
pip download -d openmmlab-repos/src -r openmmlab-repos/mmcv/requirements.txt
pip download -d openmmlab-repos/src -r openmmlab-repos/mmclassification/requirements.txt
pip download -d openmmlab-repos/src -r openmmlab-repos/mmdetection/requirements.txt
pip download -d openmmlab-repos/src -r openmmlab-repos/mmsegmentation/requirements.txt
pip download -d openmmlab-repos/src -r openmmlab-repos/mmpose/requirements.txt
pip download -d openmmlab-repos/src -r openmmlab-repos/mmocr/requirements.txt
pip download -d openmmlab-repos/src -r openmmlab-repos/mmgeneration/requirements.txt
pip download -d openmmlab-repos/src -r openmmlab-repos/mmfewshot/requirements.txt
pip download -d openmmlab-repos/src -r openmmlab-repos/mmtracking/requirements.txt

# remaining requirements
wget https://files.pythonhosted.org/packages/22/51/52442c59db26637681148c21f8984eed58c9db67053a0a4783a047010c98/importlib_metadata-4.2.0-py3-none-any.whl -P openmmlab-repos/src

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
