# Secure-Zip-Manager
This scrit is helpfull to save the space
10 day old file which is not modified( from last 10 days) and which size is grater then 20MB
It compres this file and save it in a folder
Save space and secure file 

# How to automate it
In terminal run this command
>crontab -e
then it open vi or nano editor
Write time and location of your script which you want to automate
05 1 * * * /home/vboxuser/myscripts/archive_file.sh

05 1 * * * ==> this is night 01:05 time everyday run it 
/home/vboxuser/myscripts/archive_file.sh ==> this is my file location including file name

Run in terminal
>crontab -l 
    it show the crontab which you created recently

Run in terminal
>crontab -r
    it remove the crontab which you created to automate the script
    
# NOTE
You can write your location where you want to apply this scripts in BASE
And also you want to update DAYS or DEPTH
