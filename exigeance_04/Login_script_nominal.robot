*** Settings ***
Documentation  l'utilisateur peut se connecter avec des informations d'identification valides
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
    Login_script_nominal    ronny.lol61@gmail.com      12345678