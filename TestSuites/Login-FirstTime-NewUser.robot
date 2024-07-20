*** Settings ***
Resource   TastelifeSetting.robot


*** Test Cases ***
Tastelife-Login-PositiveCase
   Open Browser    ${URL}   ${Browser} 
   Maximize Browser Window
   Wait Until Element Is Visible   xpath=//li[@data-id='3171']
   Click Link   link=SIGN UP / LOGIN
   Click Element  xpath=//div[@class='login']
   Input Text   id=edit-name   ABCD@test.com
   Input Password  id=edit-pass  Ak@123456
   Click Button   id=edit-submit
   Wait Until Page Contains   Please complete your signup induction
   Page Should Contain Radio Button   //input[@name='q1']
   Click Element   xpath=(//label[@class='option'])[1]
   Click element   xpath=//label[@for='edit-q2-0']