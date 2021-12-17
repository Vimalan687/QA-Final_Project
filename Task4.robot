*** Settings ***
Documentation    Suite description
Library     SeleniumLibrary
Resource    Command.robot

*** Variables ***
${NUMBER_TO_PASS_ON}=    1
${dur}=  //*[@id="dt_amount_input"]
*** Keywords ***
clear Input Field
     [Arguments]    ${input}
     Wait until page contains element       ${input}    60
     ${curr_val}=    Get element attribute    ${input}    value
     ${length}=     Get Length     ${curr_val}
     Repeat keyword   ${length}    Press Keys   ${input}    BACKSPACE
     Repeat keyword   1    Press Keys   ${input}     DELETE
*** Test Cases ***
Open Deriv
     Login
     wait until page does not contain element   //*[@class="chart-container__loader"]    60
     click element    //*[@class="cq-symbol-select-btn"]
     Wait until page contains element        //*[text()="Synthetic Indices"]//parent::div[contains(@class,"sc-mcd__filter__item--selected")]    30
     click element   //*[text()="Synthetic Indices"]//parent::div[contains(@class,"sc-mcd__filter__item--selected")]
     Wait until page contains element    //*[text()="AUD/USD"]      20
     click element   //*[text()="AUD/USD"]
     Wait until page contains element       //*[@class="trade-container__fieldset"]    60
     Click element  //*[@id="dt_contract_dropdown"]
#     Wait until page contains element   //*[@id="dc_all_link"]    60
#     Click element  //*[@id="dc_all_link"]
     Wait until page contains element   //*[@value="high_low"]    60
     Click element  //*[@value="high_low"]
    Wait until page contains element       //*[@class="trade-container__fieldset"]    60
     Click element    dt_simple_toggle
     Wait until page contains element       //*[@class="duration-container"]    60
#     Wait until page contains element       //*[@id="dropdown-display"]    60
#     Click element    //*[@id="dropdown-display"]
     clear Input Field  //*[@name="duration"]
     Input Text  //*[@name="duration"]   4
     clear Input Field  //*[@id="dt_barrier_1_input"]
     Input Text  //*[@id="dt_barrier_1_input"]  +0.01
     wait until page contains    Contracts more than 24 hours in duration would need an absolute barrier.     60
     clear Input Field  //*[@id="dt_barrier_1_input"]
     Input Text  //*[@id="dt_barrier_1_input"]  0.7092
     wait until page does not contain element    //*[@id="dt_purchase_put_button" and contains(@class, "btn-purchase--disabled")]    60
     Click element    dt_purchase_put_button


