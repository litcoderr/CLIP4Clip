cd ..

CUDA_VISIBLE_DEVICES='2,5'

docker run --gpus '"'device=$CUDA_VISIBLE_DEVICES'"' --ipc=host --rm -it \
    --mount src=$(pwd),dst=/CLIP4Clip,type=bind \
    --mount src=/media/data,dst=/data,type=bind \
    -e NVIDIA_VISIBLE_DEVICES=$CUDA_VISIBLE_DEVICES \
    -w /CLIP4Clip \
    litcoderr/clip4clip:latest \
    bash -c "bash" \
