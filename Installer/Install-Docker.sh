set -eu

# See https://docs.docker.com/engine/install/ubuntu/

# Add Docker’s official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Verify the key with the last 8 characters of the fingerprint
sudo apt-key fingerprint 0EBFCD88

# Set up the stable repository for x86_64/amd64
sudo add-apt-repository \
	"deb [arch=amd64] https://download.docker.com/linux/ubuntu \
	$(lsb_release -cs) \
	stable"

# Install the latest version of Docker Engine
sudo apt update
sudo apt install docker-ce -y

# Add "ubuntu" user to the "docker" group to use Docker as a non-root user
sudo usermod -aG docker ubuntu
