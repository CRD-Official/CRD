#!/usr/bin/env bash
python distill.py --dataroot database/summer2winter \
  --gpu_ids 0 \
  --distiller cycleganbest \
  --log_dir logs/cycle_gan/summer2winter/distill_S16 \
  --real_stat_A_path real_stat/summer2winter_A.npz \
  --real_stat_B_path real_stat/summer2winter_B.npz \
  --teacher_ngf 64 --student_ngf 16 \
  --teacher_netG mobile_resnet_9blocks --student_netG mobile_resnet_9blocks \
  --nepochs 100 --nepochs_decay 100 --n_dis 4 \
  --save_latest_freq 25000 --save_epoch_freq 6 \
  --AGD_weights 1e1,1e4,1e1,1e-5