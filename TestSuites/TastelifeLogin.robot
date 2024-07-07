*** Settings ***
Resource   TastelifeSetting.robot


*** Test Cases ***
Tastelife-Login-PositiveCase
   Open Browser    ${URL}   ${Browser} 
   Maximize Browser Window
   Login-Positive-Credentials
   [Teardown]  Log Test Result

Tastelife-Login-NegativeCase
   Open Browser    ${URL}   ${Browser} 
   Maximize Browser Window
   Login-Negative-Credentials
   Wait Until Page Contains  Sorry, unrecognized username or password. Have you forgotten your password?  ${TIMEOUT}  
   [Teardown]    Log Test Result