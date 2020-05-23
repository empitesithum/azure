if [ $(dpkg-query -W -f='${Status}' dotnet 2>/dev/null | grep -c "ok installed") -eq 0 ];
then
  echo "Installing dotnet core"	
  wget https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
  sudo dpkg -i packages-microsoft-prod.deb
  sudo add-apt-repository universe
  sudo apt-get update -y
  sudo apt-get install apt-transport-https  -y
  sudo apt-get update  -y
  sudo apt-get install dotnet-sdk-3.1  -y
else 
  echo "Dotnet core installed"
fi
dotnet --list-sdks
