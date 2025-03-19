fairseq-train --user-dir ~/Graphormer/fairseq/examples/graphormer  \
   ./data_noedge --valid-subset val_id --best-checkpoint-metric loss \
   --num-workers 0 --ddp-backend=c10d \
   --task is2re --criterion mae_deltapos --arch graphormer3d_base  \
   --optimizer adam --adam-betas '(0.9, 0.98)' --adam-eps 1e-6 --clip-norm 5 \
   --lr-scheduler polynomial_decay --lr 3e-4 --warmup-updates 10  --total-num-update 100 --batch-size 1 \
   --dropout 0.0 --attention-dropout 0.1 --weight-decay 0.001 --update-freq 1 --seed 1 \
   --fp16 --fp16-init-scale 4 --fp16-scale-window 256 --tensorboard-logdir ./tsbs \
   --embed-dim 768 --ffn-embed-dim 768 --attention-heads 48 \
   --max-update 100 --log-interval 10 --log-format simple \
   --save-interval-updates 50 --validate-interval-updates 25 --keep-interval-updates 30 --no-epoch-checkpoints  \
   --save-dir ./ckpt --layers 12 --blocks 4 --required-batch-size-multiple 1  --node-loss-weight 15 --num-kernel 2
