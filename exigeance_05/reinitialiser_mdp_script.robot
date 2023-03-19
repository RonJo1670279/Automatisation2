*** Settings ***
Documentation  l'utilisateur est en mesure de réinitialiser le mot de passe oublié
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
    Reinitaliser mot de passe    ronny.lol61@gmail.com