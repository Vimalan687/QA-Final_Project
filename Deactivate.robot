*** Settings ***
Documentation    Suite description
Library     SeleniumLibrary
Resource    Command.robot
*** Keywords ***

*** Test Cases ***
Open Deriv
    Login
   wait until page contains element  //*[@class="dc-icon"]   10
   click element    //*[@class="dc-icon"]
   wait until page contains element  //*[@id="dc_deactivate-account_link"]   60
   click element    //*[@id="dc_deactivate-account_link"]
   wait until page contains element  //*[@class="dc-btn dc-btn--primary dc-btn__large deactivate-account__button"]   60
   click element    //*[@class="dc-btn dc-btn--primary dc-btn__large deactivate-account__button"]
   wait until page contains element  //*[@id="app_contents"]/div/div/div/div/div[2]/div/div[2]/div/div/div/form/label[1]/span[2]  60
   click element   //*[@id="app_contents"]/div/div/div/div/div[2]/div/div[2]/div/div/div/form/label[1]/span[2]
   wait until page contains element  //*[@id="app_contents"]/div/div/div/div/div[2]/div/div[2]/div/div/div/form/label[2]/span[2]  60
   click element   //*[@id="app_contents"]/div/div/div/div/div[2]/div/div[2]/div/div/div/form/label[2]/span[2]
   wait until page contains element  //*[@id="app_contents"]/div/div/div/div/div[2]/div/div[2]/div/div/div/form/label[3]/span[2]  60
   click element   //*[@id="app_contents"]/div/div/div/div/div[2]/div/div[2]/div/div/div/form/label[3]/span[2]
   wait until page contains element  //*[@class="dc-checkbox deactivate-account-reasons__checkbox dc-checkbox--disabled"]  60
      wait until page contains element     //*[@name="other_trading_platforms"]  60
   Input Text  //*[@name="other_trading_platforms"]   Deriv
  wait until page contains element     //*[@name="do_to_improve"]  60
   Input Text  //*[@name="do_to_improve"]   none

   wait until page contains element  //*[@id="app_contents"]/div/div/div/div/div[2]/div/div[2]/div/div/div/form/div[3]/div[2]/button[2]  60
   click element   //*[@id="app_contents"]/div/div/div/div/div[2]/div/div[2]/div/div/div/form/div[3]/div[2]/button[2]
      wait until page contains element  //*[@class="dc-btn dc-btn__effect dc-btn--primary dc-btn__large"]  60
   click element   //*[@class="dc-btn dc-btn__effect dc-btn--primary dc-btn__large"]
