#!/bin/bash

if command -v ngrok >/dev/null 2>&1; then
  echo "ngrok has already been installed"
  return
fi

curl -s https://ngrok-agent.s3.amazonaws.com/ngrok.asc |
  sudo gpg --dearmor -o /etc/apt/keyrings/ngrok.gpg &&
  echo "deb [signed-by=/etc/apt/keyrings/ngrok.gpg] https://ngrok-agent.s3.amazonaws.com buster main" |
  sudo tee /etc/apt/sources.list.d/ngrok.list &&
  sudo apt update && sudo apt install -y ngrok
