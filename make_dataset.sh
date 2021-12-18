# clones openmmlab repos commonly used in kaggle competitions
# or for general purpose computer vision applications
# creates tar.gz file for upload to kaggle and optionally removes openmmlab-repos directory

# make folder for repos
mkdir openmmlab-repos

# mim
mkdir openmmlab-repos/mim
git clone https://github.com/open-mmlab/mim.git openmmlab-repos/mim
# mmcv
mkdir openmmlab-repos/mmcv
git clone https://github.com/open-mmlab/mmcv.git openmmlab-repos/mmcv
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

# create tar.gz file
tar -czvf openmmlab-repos.tar.gz openmmlab-repos
ls -l openmmlab-repos.tar.gz

# remove folder if desired
if [ "$1" = "-r" ]; then
    rm -rf openmmlab-repos
    echo "openmmlab-repos directory removed"
else
    echo "openmmlab-repos directory not removed"
fi