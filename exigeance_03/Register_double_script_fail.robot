*** Settings ***
Documentation    L'utilisateur ne peut pas enregistrer un compte en double.
Library       Selenium2Library
Library       Screenshot
Library       DateTime
Resource      ../Resources/Keywords.robot
Test Setup    On ouvre le browser
Test Teardown    Fermer le browser

*** Variables ***
${Timeout}    5s
${vBrowser}    chrome
${vURL}        http://tutorialsninja.com/demo/


*** Test Cases ***

Test One    
    Register_double_script_fail    Ron    Jon    ronny.lol61@gmail.com    514-500-0000    12345678    12345678