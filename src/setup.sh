sudo apt update
sudo apt install protobuf-compiler -y
sudo apt install git-all -y

sudo apt-get update
sudo add-apt-repository ppa:deadsnakes/ppa -y
sudo apt-get install -y openjdk-8-jdk
sudo apt-get install -y openjdk-11-jdk
sudo apt-get install -y maven
sudo apt-get install autoconf -y
sudo apt-get install libtool -y

pip3 install jsonlines
pip3 install GitPython
pip3 install beautifulsoup4==4.12.3
pip3 install javalang==0.13.0
pip3 install openai==0.28.0
pip3 install torch==2.1.0
pip3 install transformers==4.31.0
pip3 install accelerate==0.21.0
pip3 install git+https://github.com/jose/javalang.git@start_position_and_end_position

# protobuf is needed to set up for Java projects in the evaluation
sudo apt-get install build-essential
sudo apt install g++
wget https://github.com/google/protobuf/releases/download/v2.5.0/protobuf-2.5.0.tar.gz
tar xvf protobuf-2.5.0.tar.gz
cd protobuf-2.5.0
./autogen.sh
./configure --prefix=/usr
make
make install
protoc --version