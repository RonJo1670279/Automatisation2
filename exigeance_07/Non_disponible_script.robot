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
    produit non disponible    Samsung    Samsung SyncMaster 941BW
Test two
    Rechercher non disponible    Samsunxxxx

