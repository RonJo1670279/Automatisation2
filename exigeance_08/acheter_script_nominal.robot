*** Settings ***
Documentation    l'Utilisateur est informé lorsque le produit recherché n'est pas disponible
Library    Selenium2Library
Library    DateTime
Library    Screenshot
Resource    ../Resources/Keywords.robot
Test Setup    On ouvre le browser
Test Teardown  Fermer le browser

*** Variables ***
${Timeout}    5s
${vBrowser}    chrome
${vURL}        http://tutorialsninja.com/demo/

*** Test Cases ***
Test one 
    Acheter produit    hp    HP LP3065    ronny.lol61@gmail.com    Ron    Jos    514-509-6301    10555 Ave de Bois-de-Boulogne    Montreal    H4N 1L4