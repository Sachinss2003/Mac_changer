echo "Hello How are you"
echo "Come on lets change the MAC and Have Fun"
echo "Dou You have MAC Chenger"
echo "Enter the Choise"
read -p "Choice:=====>" Choice
case $Choice in
	Yes)
		echo "Select Network Type" 
		read -p "Network_Type:======>" Network_Type
		sudo ifconfig $Network_Type down
		sudo macchanger -r $Network_Type 
		sudo ifconfig $Network_Type up
		macchanger -s $Network_Type
		;;

	No)
		sudo apt install macchanger
		;;
	*)
		echo "Unknown"
		;;
esac
	
