# kali-docker

####Install & First used
1. create an ssh key to pull additional content from GitHub (and configure your GitHub profile with this new ssh key)
   1. put these files to /devops/ssh (used in Dockerfile)
2. launch Makefile commande "build"
3. Launch Makefile command "start" to take command of kali docker to realise some pen-tests commands

## Example of use of skavngr/rapidscan
Juste launch this command:
`python3 rapidscan.py example.com`
You will have two files:
- RS-Vulnerability-Report => rapport of vulnerability found
- RS-Debug-ScanLog => debug scripts ?
More details here: https://github.com/skavngr/rapidscan