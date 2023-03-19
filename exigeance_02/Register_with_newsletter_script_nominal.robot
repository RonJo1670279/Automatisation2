*** Settings ***
Documentation  l'utilisateur peut s'inscrire à l'application
...    en optant pour l'abonnement à la Newsletter
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
    Register_with_newsletter_script_nominal    Ron    Jon    123456789@yahoo.com    514-500-0000    12345678    12345678