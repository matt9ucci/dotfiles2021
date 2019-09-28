set -eu

case $OSNAME in
	"Ubuntu" | "Debian GNU/Linux")
		sudo apt install -y openjdk-8-jdk
		;;
	"Amazon Linux AMI")
		sudo yum -y install java-1.8.0-openjdk-devel
		;;
	*)
		echo "Unsupported OS" >&2
		exit 1
esac
