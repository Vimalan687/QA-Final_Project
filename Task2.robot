*** Settings ***

Library     SeleniumLibrary
Resource    Command.robot
*** Variables ***

*** Keyword ***
#keyword
Task2

    wait until page does not contain element   //*[@class="chart-container__loader"]    60
    click element    //*[@class="cq-symbol-select-btn"]
    Wait until page contains element        //*[text()="Synthetic Indices"]//parent::div[contains(@class,"sc-mcd__filter__item--selected")]    30
    click element   //*[text()="Synthetic Indices"]//parent::div[contains(@class,"sc-mcd__filter__item--selected")]
    Wait until page contains element    //*[text()="Volatility 10 (1s) Index"]      20
    click element   //*[text()="Volatility 10 (1s) Index"]
    Wait until page contains element       //*[@name="contract_type" and contains(@value,"rise_fall")]      10
    wait until page does not contain element    //*[@id="dt_purchase_call_button" and contains(@class, "btn-purchase--disabled")]    60
    Click element    dt_purchase_call_button

#    click element    //*[@class="btn-purchase__info btn-purchase__info--left"]


#
#
#  wait until page does not contain element   //*[@id="dt_purchase_call_button" and contains(@class, "btn-purchase--disabled")]     60
#  click element    //*[@id="dt_purchase_call_button"]

#      click element    //*[@class="btn-purchase btn-purchase--1"]

#        wait until page contains element      //*[@class="sc-mcd__filter__item sc-mcd__filter__item--selected"]     60

#    click element    //*[@class="sc-mcd__item sc-mcd__item--1HZ10V"]

#        wait until page contains element      //*[@class="sc-mcd__item sc-mcd__item--1HZ10V"]     60
#  click element    //*[@class="sc-mcd__item sc-mcd__item--1HZ10V"]
#        wait until page contains element      //*[@class="sc-mcd__filter__item sc-mcd__filter__item--selected"]     60

#  //*[text()="Real" and contains(@class,"active")]
#  Close Browser
*** Test Cases ***
Open Deriv
     Login
     Task2
