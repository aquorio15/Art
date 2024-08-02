MODEL="Qwen/Qwen-VL-Chat-Int4"  # Replace with your desired model path
DATA="/nfsshare/Amartya/EMNLP-WACV/Internship/"
OUTPUT="/nfsshare/Amartya/EMNLP-WACV/Internship/checkpoint"

CUDA_VISIBLE_DEVICES=0 python /nfsshare/Amartya/EMNLP-WACV/Internship/Qwen-VL-finetune/finetune.py \
    --model_name_or_path ${MODEL} \
    --data_path ${DATA} \
    --fp16 \
    --fix_vit \
    --output_dir ${OUTPUT} \
    --num_train_epochs 1 \
    --per_device_train_batch_size 4 \
    --per_device_eval_batch_size 4 \
    --gradient_accumulation_steps 8 \
    --evaluation_strategy "no" \
    --save_strategy "steps" \
    --save_steps 1000 \
    --save_total_limit 10 \
    --learning_rate 1e-5 \
    --weight_decay 0.1 \
    --adam_beta2 0.95 \
    --warmup_ratio 0.01 \
    --lr_scheduler_type "cosine" \
    --logging_steps 1 \
    --report_to "none" \
    --model_max_length 2048 \
    --lazy_preprocess \
    --gradient_checkpointing \
    --use_lora \
    --q_lora \
    --deepspeed /nfsshare/Amartya/EMNLP-WACV/Internship/Qwen-VL-finetune/finetune/ds_config_zero2.json
