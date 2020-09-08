echo "Updating git for day $(date)"
message="Updating git for day $(date)"
read message
git add .
git commit -m”${message}”
if [ n “$(git status — porcelain)” ];
then
 echo “No changes found”
else
 git status
 #add your git repository URL here
 git remote add origin (remote repository URL) 
 echo “Pushing data to remote server!!!”
 git push -f origin master
fi
#TO EXECUTE THE CODE AUTOMATICALLY EVERYDAY USE THE FOLLOWING COMMANDS IN YOUR TERMINAL(exclude the "#")

#crontab -e
#this will open the editor for crontab -> type the following command

#59 23 * * * /home/your_username/run-me.sh >/dev/null 2>&1 
#This will make the script at /home/your_username/run-me.sh run at 23 hours 59 minutes every day every week and every month
#the >/dev/null 2>&1 command is to stop the notification mails
