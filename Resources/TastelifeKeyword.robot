

*** Settings ***
Library           SeleniumLibrary
Resource          Tastelife-Variable.robot


*** Keywords ***  
Login-Positive-Credentials
   Wait Until Element Is Visible   xpath=//li[@data-id='3171']
   Click Link   link=SIGN UP / LOGIN
   Click Element  xpath=//div[@class='login']
   Input Text   id=edit-name   ${User-Email}
   Input Password  id=edit-pass  ${User-Password}
   Click Button   id=edit-submit
   

Login-Negative-Credentials
   Wait Until Element Is Visible   xpath=//li[@data-id='3171']
   Click Link   link=SIGN UP / LOGIN
   Click Element  xpath=//div[@class='login']
   Input Text   id=edit-name   ${Wrong-User}
   Input Password  id=edit-pass  ${Wrong-Password}
   Click Button   id=edit-submit

Log Test Result
   Run Keyword If Test Passed  Log  Weldone test case pass - ${TEST NAME}
   Run Keyword If Test Failed  Log  Opps test case fail - ${TEST NAME}

