echo
echo -e "\e[1;106m#######   FILES IN PICTURE   ######\e[0m"
echo
echo

if [ ! -e /sdcard/Archive_Picture ]; then
cd /sdcard/ && mkdir Archive_Picture
fi
echo
echo
if [ -e "/sdcard/FIP" ]; then 
printf "\e[1;91m      Excellent! FIP folder PRESENT\n"
else
printf "\e[1;91m      FIP folder CREATED\n"
cd /sdcard/ && mkdir FIP
fi
if [ -e "/sdcard/FIP/secret" ]; then
printf "\e[1;91m      Excellent! secret folder PRESENT\n"
else
printf "\e[1;91m      secret folder CREATED\n"
cd /sdcard/FIP && mkdir secret
fi
printf "\n\n\e[92mCOPY your files inside FIP/secret folder and Copy your Image to FIP folder and named as image.jpg \n\n\e[91m"
echo "Press Y if done copying files inside secret folder else Press N | (y/n)"
echo -e "\e[97m"
read -p $"Enter: " option
echo 
echo
if [[ $option == "y" || $option == "Y" ]]; then
cd /sdcard/FIP/
zip -r secret.zip secret/
cat image.jpg secret.zip>Picture.jpg
rm -rf secret.zip
cp Picture.jpg /sdcard/Archive_Picture/
echo
echo -e "\e[1;106m#######   DONE IMAGE STORED IN ARCHIVE PICTURE ######\e[0m"

else
echo -e "\e[2m COME AFTER COPYING YOUR FILES  \e[0m"
fi
echo 
echo
