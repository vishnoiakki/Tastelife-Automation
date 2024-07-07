*** Settings ***
Resource   TastelifeSetting.robot


*** Test Cases ***
Tastelife-Login-PositiveCase
   Open Browser    ${URL}   ${Browser} 
   Maximize Browser Window
   Wait Until Element Is Visible   xpath=//li[@data-id='3171']
   Click Link   link=SIGN UP / LOGIN
   Click Element  xpath=//div[@class='login']
   Input Text   id=edit-name   subhash@gmail.com
   Input Password  id=edit-pass  Q3tech@123
   Click Button   id=edit-submit
   Wait Until Page Contains   Please complete your signup induction
   Page Should Contain Radio Button   //input[@name='q1']
   Select Radio Button    for=edit-q1-1   1
   #Click Element   //label[@for='edit-q1-1']
