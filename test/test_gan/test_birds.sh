## test 512 resolution
# name='birds_512'
# CUDA_VISIBLE_DEVICES=${device} python test_worker.py \
#                                     --dataset birds \
#                                     --model_name ${name} \
#                                     --load_from_epoch 80 \
#                                     --test_sample_num 10 \
#                                     --finest_size 512 \
#                                     --batch_size 4

# test 256
# use customized pickle file
name='birds_256'
CUDA_VISIBLE_DEVICES=${device} python test_worker.py \
                                    --dataset birds \
                                    --model_name ${name} \
                                    --load_from_epoch 500 \
                                    --test_sample_num 10 \
                                    --save_visual_results \
                                    --batch_size 8 \
                                    --testpickle '../process_coco_data/interp_exp/demo/birds/text_perword.pickle' \
                                    --fixed_z


