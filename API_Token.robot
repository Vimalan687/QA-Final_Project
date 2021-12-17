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
   wait until page contains element  //*[@class="dc-icon"]   10
   click element    //*[@class="dc-icon"]
   wait until page contains element  //*[@id="dc_api-token_link"]   60
   click element    //*[@id="dc_api-token_link"]
   #   FOR READ
   wait until page contains element  //*[@class="composite-checkbox api-token__checkbox"]   40
   click element      //*[@class="dc-checkbox__box"]//following-sibling::span[text()="Read"]
   wait until page contains element  //*[@class="dc-checkbox__box dc-checkbox__box--active"]//following-sibling::span[text()="Read"]
   click element    //*[text()="Read"]
   # Trade
   wait until page contains element  //*[@class="composite-checkbox api-token__checkbox"]   40
   click element      //*[@class="dc-checkbox__box"]//following-sibling::span[text()="Trade"]
   wait until page contains element  //*[@class="dc-checkbox__box dc-checkbox__box--active"]//following-sibling::span[text()="Trade"]
   click element    //*[text()="Trade"]
   # Payments
   wait until page contains element  //*[@class="composite-checkbox api-token__checkbox"]   40
   click element      //*[@class="dc-checkbox__box"]//following-sibling::span[text()="Payments"]
   wait until page contains element  //*[@class="dc-checkbox__box dc-checkbox__box--active"]//following-sibling::span[text()="Payments"]
   click element    //*[text()="Payments"]
   # Admin
   wait until page contains element  //*[@class="composite-checkbox api-token__checkbox"]   40
   click element      //*[@class="dc-checkbox__box"]//following-sibling::span[text()="Admin"]
   wait until page contains element  //*[@class="dc-checkbox__box dc-checkbox__box--active"]//following-sibling::span[text()="Admin"]
   click element    //*[text()="Admin"]
      # Trading info
   wait until page contains element  //*[@class="composite-checkbox api-token__checkbox"]   40
   click element      //*[@class="dc-checkbox__box"]//following-sibling::span[text()="Trading information"]
   wait until page contains element  //*[@class="dc-checkbox__box dc-checkbox__box--active"]//following-sibling::span[text()="Trading information"]
   click element    //*[text()="Trading information"]

   # Token name min limit
   wait until page contains element  //*[@name="token_name"]   40
   Input Text  //*[@name="token_name"]   2
   wait until page contains  Length of token name must be between 2 and 32 characters.  40
   sleep   1
   clear Input Field  //*[@name="token_name"]
   Input Text  //*[@name="token_name"]   22
#   wait until page does not contain   Length of token name must be between 2 and 32 characters.   40
   clear Input Field  //*[@name="token_name"]

   # Token name max limit
   wait until page contains element  //*[@name="token_name"]   40
   Input Text  //*[@name="token_name"]   sssssssssssssssssssssssssssssssss
   wait until page contains  Maximum 32 characters.   40
   sleep   1
   clear Input Field  //*[@name="token_name"]
   Input Text  //*[@name="token_name"]   22
   wait until page does not contain   Maximum 32 characters.    40
   clear Input Field  //*[@name="token_name"]

   # Token none
   wait until page contains element  //*[@name="token_name"]   40
   Input Text  //*[@name="token_name"]   123
   wait until page does not contain  Please enter a token name.   40
   clear Input Field  //*[@name="token_name"]

  # CREATE button validation
#   wait until page contains element  //*[@class="composite-checkbox api-token__checkbox"]   40
#   click element      //*[@class="dc-checkbox__box"]//following-sibling::span[text()="Read"]
#   wait until page contains element  //*[@name="token_name"]   40
#   Input Text  //*[@name="token_name"]   123

   # Create and Delete API token button
   wait until page contains element  //*[@class="composite-checkbox api-token__checkbox"]   40
   click element      //*[@class="dc-checkbox__box"]//following-sibling::span[text()="Read"]
   wait until page contains element  //*[@name="token_name"]   40
   Input Text  //*[@name="token_name"]   123
   click element      //*[@class="dc-btn dc-btn__effect dc-btn--primary dc-btn__large da-api-token__button"]
   wait until page contains element  //*[@class="dc-btn dc-btn--secondary dc-btn__small"]   40
   wait until page contains element  //*[@id="app_contents"]/div/div/div/div/div[2]/div/div[2]/div/section/div/div/form/div/div[3]/div[2]/div/div/table/tbody/tr/td[5]/button  30
   click element  //*[@id="app_contents"]/div/div/div/div/div[2]/div/div[2]/div/section/div/div/form/div/div[3]/div[2]/div/div/table/tbody/tr/td[5]/button
   wait until page contains element  //*[@id="app_contents"]/div/div/div/div/div[2]/div/div[2]/div/section/div/div/form/div/div[3]/div[2]/div/div/table/tbody/tr/td[5]/div/button[2]  20
   click element  //*[@id="app_contents"]/div/div/div/div/div[2]/div/div[2]/div/section/div/div/form/div/div[3]/div[2]/div/div/table/tbody/tr/td[5]/div/button[2]



