*** Settings ***

Library     SeleniumLibrary

*** Variables ***
${login_btn}    dt_login_button
${email_field}     name=email
${pass_field}    //*[@type="password"]
${login_auth_btn}    name=login
${Real_acc}      //*[@id="dt_core_account-info_acc-info"]
${acc_header_preload}       dt_core_header_acc-info-preloader
${acc_info}     dt_core_account-info_acc-info
${click_acc_info}       //*[@id="dt_core_account-info_acc-info"]
${click_demo}       //*[@id="dt_core_account-switcher_demo-tab"]
${click_demo_acc}       //*[@id="dt_VRTC4795336"]/span
*** Keyword ***
#keyword
Login
  Open Browser    https://app.deriv.com   chrome
  maximize browser window
  wait until page does not contain element   dt_core_header_acc-info-preloader 60
  wait until page contains element    ${login_btn}   60
  click element     ${login_btn}
  wait until page contains element  ${email_field}   15
  input text  ${email_field}   ${my_email}
  input text  ${pass_field}  ${my_pW}
  click element  ${login_auth_btn}
  wait until page does not contain element   //*[@id="dt_core_header_acc-info-preloader"]    60

  wait until page contains element      ${Real_acc}     60
  click element     ${Real_acc}
  click element     ${Real_acc}
  click element    //*[@id="dt_core_account-switcher_demo-tab"]
    wait until page contains element      ${Real_acc}     60
  click element    //*[@id="dt_VRTC4795336"]/span
  Switch Demo

Switch Demo
    wait until page does not contain element        ${acc_header_preload}   60
    wait until page contains element        ${acc_info}     15
    click element       ${click_acc_info}
    click element       ${click_demo}
    wait until page contains element        ${click_demo_acc}

