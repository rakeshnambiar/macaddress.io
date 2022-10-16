# macaddress.io
This tool will help to find out the `company name` of a `Mac Address`

## How to run the utility
- Clone the project
- Give the execution permission for the `GetMacAddress.sh` script using `chmod +x GetMacAddress.sh` command
- Then run the script using the command `sh GetMacAddress.sh <API_KEY> <INPUT_MAC_ADDRESS>`

## How to execute the project locally
- Clone the project
- Run `pipenv install`
- Open it in the IDE upon your choice
- Create `.env` file and add the `API_KEY=xxxxxxx` and `MAC_ADDRESS=44:38:39:ff:ef:57`
- The log file will be created in the `logs` folder

## Security measures
- First of all the `API_KEY` is not directly mentioned anywhere in the program
- The application will run as `non-root` user

## Additional info
- In case the user doesn't want to pass the `API_KEY` all the time, they can store it as an environment variable in the system and adjust the shell script accordingly
- I haven't handled the output format as this is optional
- It is not a best practise to build the image everytime. Rather it can build and push to the `Docker registry` and pull and run in the shell script
