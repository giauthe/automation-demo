## Overview
Repository contain:
* Robot framework demo - api, web
* Newman 
## Prerequisites
1. Install Nodejs 10.15 or higher 
2. Install Python 3
3. Config environment variable for python and nodejs
4. Setup web-driver


# Setup Newman
Nodejs 10.15 or higher 
- cd ~/automation_demo 
- node -v  
- npm -v
- npm install -g newman 
- newman -v
# Run test script with newman: 
- newman run demo_newman.postman_collection.json --verbose
# Run test script and stop when fail: 
- newman run demo_newman.postman_collection.json --verbose --bail


# Setup Robot
- cd ~/automation_demo/demorobotframework
- pip3 install -r scripts/requirement.txt
# run UI test:
robot --loglevel TRACE -d results/UI -v env:env testcases/AddToCart/addIphoneToCart.robot
# run API test:
robot --loglevel TRACE -d results/API -v env:env testcases/API/demoApi.robot
