*** Settings ***
Documentation  Keywords for project
Library  SeleniumLibrary
Resource  project_variables.robot

*** Keywords ***
Navigate to login page
    Open Browser  http://automationpractice.com/index.php?  chrome
    wait until element is visible  ${SIGN_IN_LINK}  10s
    Click Element  ${SIGN_IN_LINK}

Enter valid login credentials
    [Arguments]  ${username_email}  ${password}
    Input Text  ${EMAIL_FIELD}  ${username_email}
    Input Text  ${PASSWORD_FIELD}  ${password}

Click login button and assert login
    wait until element is enabled   ${LOGINBUTTON}  10s
    Click Element  ${LOGINBUTTON}
    Run keyword and ignore error  Page Should Contain  ${LOGGEDINUSER}


Select forgot password link
    wait until element is visible  ${FORGOT_PASSWORD_LINK}   10s
    Click Element  ${FORGOT_PASSWORD_LINK}

Enter email to retrieve password
    [Arguments]  ${retrieve_password_email}
    wait until element is visible  ${FORGOT_PASSWORD_EMAIL}  10s
    Input text  ${FORGOT_PASSWORD_EMAIL}   ${retrieve_password_email}

Click retrieve button and assert success message
    [Arguments]  ${retrieve_password_success_message}
    wait until element is visible  ${FORGOT_PASSWORD_RETRIEVE_BTN}  10s
    Click Element  ${FORGOT_PASSWORD_RETRIEVE_BTN}
    Wait until Page contains  ${retrieve_password_success_message}



Login test
    [Arguments]  ${signinlink}  ${username_email}  ${password}  ${loginbutton}  ${signed_inuser}  #datadriven
    Open Browser  http://automationpractice.com/index.php?  chrome
   Click Element  class:login
   Input Text  id:email  ${username_email}
   Input Text  id:passwd  ${password}
   Click Element  xpath://*[@id="SubmitLogin"]/span
   Page Should Contain  ${signed_inuser}

