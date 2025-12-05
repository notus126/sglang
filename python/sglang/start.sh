export HF_ENDPOINT="https://hf-mirror.com"
# export HTTPS_PROXY=127.0.0.1:7890
# longbench
# CUDA_VISIBLE_DEVICES=3 python bench_serving.py \
#   --backend sglang \
#   --model /state/partition/.cache/huggingface/hub/models--meta-llama--Llama-2-7b-chat-hf/snapshots/f5db02db724555f92da89c216ac04704f23d4590 \
#   --host localhost \
#   --port 30000 \
#   --request-rate 1 \
#   --longbench-min-context 200 \
#   --longbench-max-context 800 \
#   --max-concurrency 4 \
#   --sharegpt-output-len 128 \
#   --dataset-path /home/zyning/.cache/huggingface/hub/datasets--zai-org--LongBench/snapshots/5e628be450b7e67fb7ae6e201bd6d8f7056f7672/data \
#   --dataset-name longbench \
#   --num-prompts 30 \


# CUDA_VISIBLE_DEVICES=3 python bench_serving.py \
#   --backend sglang \
#   --model /state/partition/.cache/huggingface/hub/models--meta-llama--Llama-2-7b-chat-hf/snapshots/f5db02db724555f92da89c216ac04704f23d4590 \
#   --host localhost \
#   --port 30000 \
#   --request-rate 1 \
#   --max-concurrency 4 \
#   --sharegpt-output-len 128 \
#   --dataset-name sharegpt \
#   --num-prompts 30 \

# # mix-len
# CUDA_VISIBLE_DEVICES=3 python bench_serving.py \
#   --backend sglang \
#   --model /state/partition/.cache/huggingface/hub/models--meta-llama--Llama-2-7b-chat-hf/snapshots/f5db02db724555f92da89c216ac04704f23d4590 \
#   --host localhost \
#   --port 30000 \
#   --request-rate 1 \
#   --max-concurrency 4 \
#   --sharegpt-output-len 128 \
#   --dataset-path /home/zyning/.cache/huggingface/hub/datasets--zai-org--LongBench/snapshots/5e628be450b7e67fb7ae6e201bd6d8f7056f7672/data \
#   --dataset-name mix-len \
#   --long_request_min_context 8000 \
#   --long_request_max_context 32000 \
#   --short_request_max_context 1000 \
#   --long_request_count 1 \
#   --short_request_count 9 \
#   --num-prompts 50 \

# InfiniteBench
CUDA_VISIBLE_DEVICES=3 python bench_serving.py \
  --backend sglang \
  --model /state/partition/.cache/huggingface/hub/models--meta-llama--Llama-2-7b-chat-hf/snapshots/f5db02db724555f92da89c216ac04704f23d4590 \
  --host localhost \
  --port 30000 \
  --request-rate 1 \
  --infini-min-context 50000 \
  --infini-max-context 1000000 \
  --max-concurrency 4 \
  --sharegpt-output-len 128 \
  --dataset-name infinitebench \
  --num-prompts 30 \
