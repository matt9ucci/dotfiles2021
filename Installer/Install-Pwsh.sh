set -eu

case $OSNAME in
	"Ubuntu" | "Debian GNU/Linux")
		sudo snap install powershell --classic
		;;
	"Amazon Linux AMI")
		# https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell-core-on-linux#red-hat-enterprise-linux-rhel-7
		curl https://packages.microsoft.com/config/rhel/7/prod.repo | sudo tee /etc/yum.repos.d/microsoft.repo
		sudo yum install powershell -y
		;;
	*)
		echo "Unsupported OS" >&2
		exit 1
esac

pwsh -c 'git clone https://github.com/matt9ucci/PSProfiles.git (Split-Path $PROFILE)'
