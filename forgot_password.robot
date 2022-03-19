*** Settings ***
Documentation    Basic robotfarmework tests
Library          SeleniumLibrary
Resource         project_keywords.robot
Suite Setup      Navigate to login page
Suite Teardown   Close All Browsers

*** Test Cases ***
User Should be able to retireve password
    Select forgot password link
    Enter email to retrieve password  arabataofikolasile@gmail.com
    Click retrieve button and assert success message  A confirmation email has been sent to your address: arabataofikolasile@gmail.com


