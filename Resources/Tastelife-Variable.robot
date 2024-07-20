*** Settings ***
Library           SeleniumLibrary

 
*** Variables ***
${Browser}    Chrome
${URL}   https://uat.tastelifelivelife.com/
${User-Email}  ABCD@test.com
${User-Password}  Ak@123456
${Wrong-User}   XYZ@gmail.com
${Wrong-Password}  Ak@123
${TIMEOUT}  10s

