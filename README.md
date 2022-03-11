# OpenMMLab Kaggle Shell Script
![GitHub](https://img.shields.io/github/license/MaxVanDijck/openmmlab-kaggle) ![GitHub last commit](https://img.shields.io/github/last-commit/MaxVanDijck/openmmlab-kaggle) 

Shell script for cloning and compressing commonly used computer vision repositories from [OpenMMLab](https://github.com/open-mmlab) for ease of upload to kaggle and for other applications.

Feel free to open a PR if you find yourself using a repo which isn't included in the script! :sparkles:

## Kaggle Checklist
See this [kaggle notebook](https://www.kaggle.com/maxvandijck/openmmlab-offline-installation) for how to install.
Following openmmlab repos installs have been tested on a kaggle offline notebook:
- [x] MMCV
- [x] MMClassification
- [x] MMDetection
- [x] MMSegmentation
- [ ] MMPose
- [ ] MMOCR
- [ ] MMGeneration
- [ ] MMFewShot
- [x] MMTracking

## Usage
Simply run the shell script using `bash`, the `-r` arg can be used to remove the folder containing the repositories after compression if desired.
```
bash make_dataset.sh -r
```
**OR** use the available kaggle upload [here](https://www.kaggle.com/maxvandijck/openmmlab-essential-repositories).
