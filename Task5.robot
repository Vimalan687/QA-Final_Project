*** Settings ***
Documentation    Suite description
Library     SeleniumLibrary
Resource    Command.robot


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
     Wait until page contains element    //*[text()="Volatility 50 Index"]      20
     click element   //*[text()="Volatility 50 Index"]
     Wait until page contains element       //*[@class="trade-container__fieldset"]    60
     Click element  //*[@id="dt_contract_dropdown"]
     Wait until page contains element   //*[@id="dc_all_link"]    60
     Wait until page contains element   //*[@id="dt_contract_multiplier_item"]    60
     Click element  //*[@id="dt_contract_multiplier_item"]
     wait until page does not contain element   //*[@text()="Payout"]    60
     Wait until page contains element   //*[@id="dropdown-display"]    60


     Wait until page contains element   //*[@id="dt_amount_input_add"]   60
     Click element  //*[@id="dt_amount_input_add"]

     Wait until page contains element   //*[@id="dt_amount_input_sub"]   60
     Click element  //*[@id="dt_amount_input_sub"]

     Wait until page contains element   //*[@id="dropdown-display"]  60
     Click element  //*[@id="dropdown-display"]
     Wait until page contains element   //*[@id="20"]   60
     Click element  //*[@id="20"]

     Wait until page contains element   //*[@id="dropdown-display"]  60
     Click element  //*[@id="dropdown-display"]
     Wait until page contains element   //*[@id="40"]   60
     Click element  //*[@id="40"]

     Wait until page contains element   //*[@id="dropdown-display"]  60
     Click element  //*[@id="dropdown-display"]
     Wait until page contains element   //*[@id="60"]   60
     Click element  //*[@id="60"]

     Wait until page contains element   //*[@id="dropdown-display"]  60
     Click element  //*[@id="dropdown-display"]
     Wait until page contains element   //*[@id="100"]   60
     Click element  //*[@id="100"]

     Wait until page contains element   //*[@id="dropdown-display"]  60
     Click element  //*[@id="dropdown-display"]
     Wait until page contains element   //*[@id="200"]   60



     Wait until page contains element   //*[@for="dt_cancellation-checkbox_input"]    60
     Click element  //*[@for="dt_cancellation-checkbox_input"]

# 5m
     Wait until page contains element   (//*[@id="dropdown-display"])[2]   60
     Click element  (//*[@id="dropdown-display"])[2]

     Wait until page contains element   //*[@value="5m"]  60
     Click element  //*[@value="5m"]

#10m
     Wait until page contains element   (//*[@id="dropdown-display"])[2]   60
     Click element  (//*[@id="dropdown-display"])[2]

     Wait until page contains element   //*[@value="10m"]  60
     Click element  //*[@value="10m"]

#15m
     Wait until page contains element   (//*[@id="dropdown-display"])[2]   60
     Click element  (//*[@id="dropdown-display"])[2]

     Wait until page contains element   //*[@value="15m"]  60
     Click element  //*[@value="15m"]

#30m
     Wait until page contains element   (//*[@id="dropdown-display"])[2]   60
     Click element  (//*[@id="dropdown-display"])[2]

     Wait until page contains element   //*[@value="30m"]  60
     Click element  //*[@value="30m"]

#60m
     Wait until page contains element   (//*[@id="dropdown-display"])[2]   60
     Click element  (//*[@id="dropdown-display"])[2]

     Wait until page contains element   //*[@value="60m"]  60
     Click element  //*[@value="60m"]

# Min And MAX
     clear Input Field  dt_amount_input
     Input Text  dt_amount_input   2001
     wait until page contains    Maximum stake allowed is 2000.00.    60
     clear Input Field  dt_amount_input
     Input Text  dt_amount_input   0
     wait until page contains    Please enter a stake amount that's at least 1.00.    60
     clear Input Field  dt_amount_input
     Input Text  dt_amount_input   1000



