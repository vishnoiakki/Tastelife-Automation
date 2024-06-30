*** Settings ***
Resource   TastelifeSetting.robot 



*** Test Cases ***


TC003-Tastelife Signup

    [Documentation]    This test case is to verify the Tastelife signup functionality

    Open Browser    ${URL}   ${Browser} 
    Maximize Browser Window  
    Wait Until Element Is Visible   xpath=//li[@data-id='3171']
    Click Link   link=SIGN UP / LOGIN
    Click Element    xpath://div[@class='signup']
    Input Text   //input[@id='edit-field-first-name-und-0-value']     Akhlesh 
    input text  //input[@id='edit-field-middle-name-und-0-value']    kumar
    input text  //input[@id='edit-field-last-name-und-0-value']      Vishnoi
    input text  //input[@id='edit-mail']     akhleshvishnoi
    input text   id=edit-mail     Vishnoiakhlesh@gmail.com
    input text   //input[@id='edit-field-mobile-und-0-value']     7989878998
    Select From List By Label  xpath=//select[@id='edit-field-user-age-range-und']   18-30
    Select From List By label    //select[@id='edit-field-gender-und']   Male
    Wait Until Element Is Visible  xpath=//div[@id='edit_field_user_site_und_chosen'] 
    Click Element   id=edit_field_user_site_und_chosen
    click element   xpath=//div[@id='edit_field_user_site_und_chosen']/div/div/input
    Input Text   xpath=//div[@id='edit_field_user_site_und_chosen']/div/div/input    Ball  #selecting site from the dropdown
    Click Element   xpath=//div[@id='edit_field_user_site_und_chosen']/div/ul/li  #Clicking company dropdown
    sleep  3s
    Select From List By Label   field_company_name[und]   ESS   #selecting company from dropdwon 
    Click Element  xpath=//div[@id='edit-field-terms-and-condition']/div/label/span
    Page Should Contain  PLEASE READ THE FOLLOWING TERMS AND CONDITIONS CAREFULLY. 
    ...    BY ACCESSING AND USING THIS SITE, YOU ACKNOWLEDGE THAT YOU HAVE READ THESE TERMS AND CONDITIONS AND THAT YOU ACCEPT AND WILL BE BOUND BY THEM.
    Sleep   2s
    Click Element   class=jconfirm-closeIcon
    Click element   xpath=//div[@id='edit-field-subscription']/div/label
    click button   id=edit-submit
   
   