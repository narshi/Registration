#! /bin/bash -x

echo "Welcome to portal registration"
 
FirstName(){
 read firstName
 if [[ "${firstName:0:1}" =~ [A-Z] ]]
 then
	if [[ ${#firstName} < 3 ]]
	then
		echo "First name must be at least 3 digits"
	else
		echo "First name done"
	fi 
 else
	echo "First letter must be capital"
 fi
}
FirstName
