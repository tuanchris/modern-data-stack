#! /bin/bash
sudo apt-get update
sudo apt-get install -y apt-transport-https ca-certificates curl gnupg2 software-properties-common wget
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add --
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian buster stable"
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io
sudo usermod -a -G docker $USER

sudo wget https://github.com/docker/compose/releases/download/1.26.2/docker-compose-$(uname -s)-$(uname -m) -O /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version

cd
curl -sSL https://install.astronomer.io | sudo bash
if [[ ! -e airflow ]]; then
    mkdir airflow && cd airflow && astro dev init
elif [[ ! -d airflow ]]; then
    echo "airbyte already exists but is not a directory" 1>&2
    cd airflow
fi
astro dev start

EOF
