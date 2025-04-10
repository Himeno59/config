## config/ubuntu  
---

初期設定の読み込み  
```bash
cd ~ && sudo apt update && sudo apt upgrade -y && sudo apt install git && git clone https://github.com/Himeno59/config.git && cd config/ubuntu && ./all_ubuntu_initialize.sh && cd ~