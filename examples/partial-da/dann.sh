#!/usr/bin/env bash
# Office31
CUDA_VISIBLE_DEVICES=0 python examples/partial-da/dann.py data/office31 -d Office31 -s A -t W -a resnet50  --epochs 5 --seed 0 > benchmarks/partial_dann/Office31_A2W.txt
CUDA_VISIBLE_DEVICES=0 python examples/partial-da/dann.py data/office31 -d Office31 -s D -t W -a resnet50  --epochs 5 --seed 0 > benchmarks/partial_dann/Office31_D2W.txt
CUDA_VISIBLE_DEVICES=0 python examples/partial-da/dann.py data/office31 -d Office31 -s W -t D -a resnet50  --epochs 5 --seed 0 > benchmarks/partial_dann/Office31_W2D.txt
CUDA_VISIBLE_DEVICES=0 python examples/partial-da/dann.py data/office31 -d Office31 -s A -t D -a resnet50  --epochs 5 --seed 0 > benchmarks/partial_dann/Office31_A2D.txt
CUDA_VISIBLE_DEVICES=0 python examples/partial-da/dann.py data/office31 -d Office31 -s D -t A -a resnet50  --epochs 5 --seed 0 > benchmarks/partial_dann/Office31_D2A.txt
CUDA_VISIBLE_DEVICES=0 python examples/partial-da/dann.py data/office31 -d Office31 -s W -t A -a resnet50  --epochs 5 --seed 0 > benchmarks/partial_dann/Office31_W2A.txt

# Office-Home
CUDA_VISIBLE_DEVICES=0 python examples/partial-da/dann.py data/office-home -d OfficeHome -s Ar -t Cl -a resnet50 --epochs 5 --seed 0 > benchmarks/partial_dann/OfficeHome_Ar2Cl.txt
CUDA_VISIBLE_DEVICES=0 python examples/partial-da/dann.py data/office-home -d OfficeHome -s Ar -t Pr -a resnet50  --epochs 5 --seed 0 > benchmarks/partial_dann/OfficeHome_Ar2Pr.txt
CUDA_VISIBLE_DEVICES=0 python examples/partial-da/dann.py data/office-home -d OfficeHome -s Ar -t Rw -a resnet50 --epochs 5 --seed 0 > benchmarks/partial_dann/OfficeHome_Ar2Rw.txt
CUDA_VISIBLE_DEVICES=0 python examples/partial-da/dann.py data/office-home -d OfficeHome -s Cl -t Ar -a resnet50 --epochs 5 --seed 0 > benchmarks/partial_dann/OfficeHome_Cl2Ar.txt
CUDA_VISIBLE_DEVICES=0 python examples/partial-da/dann.py data/office-home -d OfficeHome -s Cl -t Pr -a resnet50 --epochs 5 --seed 0 > benchmarks/partial_dann/OfficeHome_Cl2Pr.txt
CUDA_VISIBLE_DEVICES=0 python examples/partial-da/dann.py data/office-home -d OfficeHome -s Cl -t Rw -a resnet50 --epochs 5 --seed 0 > benchmarks/partial_dann/OfficeHome_Cl2Rw.txt
CUDA_VISIBLE_DEVICES=0 python examples/partial-da/dann.py data/office-home -d OfficeHome -s Pr -t Ar -a resnet50 --epochs 5 --seed 0 > benchmarks/partial_dann/OfficeHome_Pr2Ar.txt
CUDA_VISIBLE_DEVICES=0 python examples/partial-da/dann.py data/office-home -d OfficeHome -s Pr -t Cl -a resnet50 --epochs 5 --seed 0 > benchmarks/partial_dann/OfficeHome_Pr2Cl.txt
CUDA_VISIBLE_DEVICES=0 python examples/partial-da/dann.py data/office-home -d OfficeHome -s Pr -t Rw -a resnet50 --epochs 5 --seed 0 > benchmarks/partial_dann/OfficeHome_Pr2Rw.txt
CUDA_VISIBLE_DEVICES=0 python examples/partial-da/dann.py data/office-home -d OfficeHome -s Rw -t Ar -a resnet50 --epochs 5 --seed 0 > benchmarks/partial_dann/OfficeHome_Rw2Ar.txt
CUDA_VISIBLE_DEVICES=0 python examples/partial-da/dann.py data/office-home -d OfficeHome -s Rw -t Cl -a resnet50 --epochs 5 --seed 0 > benchmarks/partial_dann/OfficeHome_Rw2Cl.txt
CUDA_VISIBLE_DEVICES=0 python examples/partial-da/dann.py data/office-home -d OfficeHome -s Rw -t Pr -a resnet50 --epochs 5 --seed 0 > benchmarks/partial_dann/OfficeHome_Rw2Pr.txt

# VisDA-2017
CUDA_VISIBLE_DEVICES=0 python examples/partial-da/dann.py data/visda-2017 -d VisDA2017 -s Synthetic -t Real -a resnet50 --epochs 5 --seed 0 > benchmarks/partial_dann/VisDA2017_S2R.txt
CUDA_VISIBLE_DEVICES=0 python examples/partial-da/dann.py data/visda-2017 -d VisDA2017 -s Real -t Synthetic -a resnet50 --epochs 5 --seed 0 > benchmarks/partial_dann/VisDA2017_R2S.txt

# ImageNet-Caltech
CUDA_VISIBLE_DEVICES=0 python examples/partial-da/dann.py data/ImageNetCaltech -d ImageNetCaltech -s I -t C -a resnet50  --epochs 5 --seed 0 > benchmarks/partial_dann/I2C.txt
CUDA_VISIBLE_DEVICES=0 python examples/partial-da/dann.py data/ImageNetCaltech -d CaltechImageNet -s C -t I -a resnet50  --epochs 5 --seed 0 --bottleneck-dim 2048 > benchmarks/partial_dann/C2I.txt