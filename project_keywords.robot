*** Settings ***
Documentation  Keywords for project
Library  SeleniumLibrary
Resource  project_variables.robot

*** Keywords ***
Navigate to login page
    Open Browser  http://automationpractice.com/index.php?  chrome
    wait until element is visible  ${SIGN_IN_LINK}
    Click Element  ${SIGN_IN_LINK}

Enter valid login credentials
    Input Text  ${EMAIL_FIELD}  ${username_email}
    Input Text  ${PASSWORD_FIELD}  ${password}

