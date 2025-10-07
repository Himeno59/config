sudo apt install curl zip unzip

# install SDKMAN
curl -s "https://get.sdkman.io" | bash

# load initialize script
source "$HOME/.sdkman/bin/sdkman-init.sh"
source ~/.bashrc

# install java
sdk install java 17.0.9-tem
sdk default java 17.0.9-tem

# install maven
sdk install maven 3.9.11
sdk default maven 3.9.11

which java
which javac
which mvn