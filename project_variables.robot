*** Variables ***
${SIGN_IN_LINK}  class:login
${EMAIL_FIELD}   id:email
${PASSWORD_FIELD}  id:passwd
${LOGINBUTTON}   xpath://*[@id="SubmitLogin"]/span
${LOGGEDINUSER}  Taofik Araba
${FORGOT_PASSWORD_LINK}  xpath://*[@id="login_form"]/div/p[1]/a
${FORGOT_PASSWORD_EMAIL}  id:email
${FORGOT_PASSWORD_RETRIEVE_BTN}  xpath://*[@id="form_forgotpassword"]/fieldset/p/button/span
${URL}  http://automationpractice.com/index.php
${BROWSER}   chrome  #fireforx

#homepage
${URL}  http://automationpractice.com/index.php
${BROWSER}   chrome  #fireforx
#register newuser
${CREATE_ACC_EMAIL}  name:email_create
${CREATEACC_BTN}  id:SubmitCreate
${FIRST_NAME}   id:customer_firstname
${LAST_NAME}   id:customer_lastname
${PASSWORD}    id:passwd
${DOB_DAY}     id:days
${DOB_MONTHS}  id:months
${DOB_YEAR}    id:years
${ADDRESS}   name:address1
${CITY}     id:city
${STATE}    id:id_state
${POSTCODE}  id:postcode
${MOBILE_PHONE}  id:phone_mobile
${REGISTER_BUTTON}  xpath://*[@id="submitAccount"]/span
${ALIAS}
