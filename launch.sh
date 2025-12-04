CUDA_VISIBLE_DEVICES=3 python -m sglang.launch_server \
  --model-path /state/partition/.cache/huggingface/hub/models--meta-llama--Llama-2-7b-chat-hf/snapshots/f5db02db724555f92da89c216ac04704f23d4590 \
  --port 30000 \
  --host 0.0.0.0 \