pip3 install -r scripts/requirement.txt

run UI test:
robot --loglevel TRACE -d results/UI -v env:env testcases/AddToCart/addIphoneToCart.robot


run API test:
robot --loglevel TRACE -d results/API -v env:env testcases/API/demoApi.robot


- test result is stored at results folder
- open report,log.html in browser to view detail