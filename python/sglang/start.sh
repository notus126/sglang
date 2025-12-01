export HF_ENDPOINT="https://hf-mirror.com"
python bench_serving.py \
  --backend sglang \
  --model /state/partition/.cache/huggingface/hub/models--meta-llama--Llama-2-7b-chat-hf/snapshots/f5db02db724555f92da89c216ac04704f23d4590 \
  --host localhost \
  --port 30000 \
  --request-rate 1 \
  --longbench-min-context 200 \
  --max-concurrency 4 \
  --random-output-len 128 \
  --dataset-path /home/zyning/.cache/huggingface/hub/datasets--zai-org--LongBench/snapshots/5e628be450b7e67fb7ae6e201bd6d8f7056f7672/data \
  --dataset-name longbench \
  --num-prompts 30 \

