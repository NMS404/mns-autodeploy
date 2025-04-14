#!/bin/bash
echo "🧠 Lancement MetaServer Music Never Stop"
sudo apt update && sudo apt install -y git docker.io docker-compose curl nodejs npm python3 python3-pip ufw unzip

sudo systemctl enable docker
sudo usermod -aG docker $USER

mkdir -p ~/mns-autodeploy/metaforge ~/mns-autodeploy/guardian ~/mns-autodeploy/logs

echo "fastapi\nuvicorn\npython-dotenv" > ~/mns-autodeploy/metaforge/requirements.txt
echo "from fastapi import FastAPI\napp = FastAPI()\n@app.get('/')\ndef read_root(): return {'message': 'MetaForge is alive'}" > ~/mns-autodeploy/metaforge/main.py

echo "fastapi\nuvicorn\npython-dotenv" > ~/mns-autodeploy/guardian/requirements.txt
echo "from fastapi import FastAPI\napp = FastAPI()\n@app.get('/')\ndef read_guardian(): return {'status': 'Guardian is watching'}" > ~/mns-autodeploy/guardian/main.py

cd ~/mns-autodeploy
docker-compose up -d
