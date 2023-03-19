*** Settings ***
Documentation    l'utilisateur est en mesure de rechercher des produits
Library    Selenium2Library
Library    DateTime
Library    Screenshot
Resource    ../Resources/Keywords.robot
Test Setup    On ouvre le browser
Test Teardown    Fermer le browser

*** Variables ***
${Timeout}    5s
${vBrowser}    chrome
${vURL}        http://tutorialsninja.com/demo/

*** Test Cases ***
Test One
    Rechercher    Samsung
