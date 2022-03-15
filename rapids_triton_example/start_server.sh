rm -rf models/.ipynb_checkpoints/

#docker run --rm  --gpus='1' --shm-size=1g --ulimit memlock=-1 --ulimit stack=67108864 -p 8000:8000 -p 8001:8001 -p 8002:8002 -it rapidstriton tritonserver --model-repository models
docker run -v $(pwd)/models:/opt/tritonserver/models --rm  --gpus='1' --shm-size=1g --ulimit memlock=-1 --ulimit stack=67108864 -p 8000:8000 -p 8001:8001 -p 8002:8002 -it rapidstriton tritonserver --model-repository models

