#! /bin/bash 

echo "Welcome to portal registration"
 
FirstName(){
 firstName=$1
 if [[ "${firstName:0:1}" =~ [A-Z] ]]
 then
	if [[ ${#firstName} < 3 ]]
	then
		echo "First name must be at least 3 digits"
		exit
	else
		echo "First name done"
	fi 
 else
	echo "First letter must be capital"
	exit
 fi
}

EmailValidation(){
regex="^(([-a-zA-Z0-9\!#\$%\&\'*+/=?^_`{\|}~]+|(\"([][,:;<>\&@a-zA-Z0-9\!#\$%\&\'*+/=?^_`{\|}~-]|(\\\\[\\ \"]))+\"))\.)*([-a-zA-Z0-9\!#\$%\&\'*+/=?^_`{\|}~]+|(\"([][,:;<>\&@a-zA-Z0-9\!#\$%\&\'*+/=?^_`{\|}~-]|(\\\\[\\ \"]))+\"))@\w((-|\w)*\w)*\.(\w((-|\w)*\w)*\.)*\w{2,4}$"

if [[ $1 =~ $regex ]]
then
    echo "OK"
else
    echo "Please enter a valid email"
fi

}


echo "Enter First Name "
read firstName
FirstName $firstName
echo "Enter second Name"
read secName
FirstName $secName
echo "Enter Email "
read email
EmailValidation $email
