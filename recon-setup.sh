#!/bin/bash
apt update && apt install -y git curl wget unzip jq python3-pip build-essential nmap httpie snapd
snap install amass
wget https://go.dev/dl/go1.22.2.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.22.2.linux-amd64.tar.gz
echo 'export PATH=$PATH:/usr/local/go/bin:/root/go/bin' >> ~/.bashrc
source ~/.bashrc
go install github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
go install github.com/projectdiscovery/httpx/cmd/httpx@latest
go install github.com/projectdiscovery/nuclei/v3/cmd/nuclei@latest
go install github.com/ffuf/ffuf@latest
go install github.com/lc/gau/v2/cmd/gau@latest
go install github.com/tomnomnom/assetfinder@latest
go install github.com/tomnomnom/waybackurls@latest
