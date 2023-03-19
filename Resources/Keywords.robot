*** Settings ***
Library    Selenium2Library
Library    Screenshot
Variables    ../Resources/Locators/Locators.py

*** Variables ***
${TIMEOUT}     5s
${vBrowser}   chrome
${vURL}        http://tutorialsninja.com/demo/

*** Keywords ***
On ouvre le browser
    Ouvrir le browser    ${vURL}    ${vBrowser}         
Ouvrir le browser
    # vURL contient l'adresse URL de la page web
    # vBrowser contient l'identifiant du navigateur cible
    [Arguments]    ${vURL}    ${vBrowser}  
    Set Selenium Timeout   ${TIMEOUT}
    # Definir la valeur de timeout pour le cas de test
    # Ouvrir le navigateur en precisant l'URL et le navigateur
    Open Browser    ${vURL}    ${vBrowser}
    # Maximiser la fenetre du navigateur
    Maximize Browser Window
Fermer le browser
    Close Browser

Register_keyword
    [Arguments]    ${vFname}    ${vLname}    ${vemail}    ${vtlphone}    ${vpassword}    ${vconfirm} 
    #On attend que le bouton sois visible
    Wait Until Element Is Visible    ${btn_my_account}
    #On clique sur le bouton 
    Click Element    ${btn_my_account}

    #on clique sur register
    Click Element    ${btn_register}

    #on sassure quon est sur la bonne page
    Wait Until Element Is Not Visible    ${btn_register}

    #On remplie les details
    #firstname
    Input Text    ${txt_fname}    ${vFname}
    #Lastname
    Input Text    ${txt_lname}    ${vLname}
    #Email
    Input Text    ${txt_email}    ${vemail}
    #telephone
    Input Text    ${txt_telephone}    ${vtlphone}
    #mot de passe
    Input Text    ${txt_password}    ${vpassword}
    #confirmer mot de passe
    Input Text    ${txt_confirm}    ${vconfirm}
    #accepter conditions
    Click Element    ${btn_policy}
    #On clique continuer
    Click Button    ${btn_continuer}
    #condition de succes
    Wait Until Element Is Visible    ${frame_confirmer}





    
 
Register_with_newsletter_script_nominal


    [Arguments]    ${vFname}    ${vLname}    ${vemail}    ${vtlphone}    ${vpassword}    ${vconfirm} 
    #On attend que le bouton sois visible
    Wait Until Element Is Visible    ${btn_my_account}
    #On clique sur le bouton 
    Click Element    ${btn_my_account}

    #on clique sur register
    Click Element    ${btn_register}

    #on sassure quon est sur la bonne page
    Wait Until Element Is Not Visible    ${btn_register}

    #On remplie les details
    #firstname
    Input Text    ${txt_fname}    ${vFname}
    #Lastname
    Input Text    ${txt_lname}    ${vLname}
    #Email
    Input Text    ${txt_email}    ${vemail}
    #telephone
    Input Text    ${txt_telephone}    ${vtlphone}
    #mot de passe
    Input Text    ${txt_password}    ${vpassword}
    #confirmer mot de passe
    Input Text    ${txt_confirm}    ${vconfirm}
     #inscrire au news letter
    Set Selenium Timeout   ${TIMEOUT}
    Click Button    ${btn_newsletter_oui}
    #accepter conditions
    Click Element    ${btn_policy}
    #On clique continuer
    Click Button    ${btn_continuer}
    #condition de succes
    Wait Until Element Is Visible    ${frame_confirmer}



Register_double_script_fail

    [Arguments]    ${vFname}    ${vLname}    ${vemail}    ${vtlphone}    ${vpassword}    ${vconfirm} 
    #On attend que le bouton sois visible
    Wait Until Element Is Visible    ${btn_my_account}
    #On clique sur le bouton 
    Click Element    ${btn_my_account}

    #on clique sur register
    Click Element    ${btn_register}

    #on sassure quon est sur la bonne page
    Wait Until Element Is Not Visible    ${btn_register}

    #On remplie les details
    #firstname
    Input Text    ${txt_fname}    ${vFname}
    #Lastname
    Input Text    ${txt_lname}    ${vLname}
    #Email
    Input Text    ${txt_email}    ${vemail}
    #telephone
    Input Text    ${txt_telephone}    ${vtlphone}
    #mot de passe
    Input Text    ${txt_password}    ${vpassword}
    #confirmer mot de passe
    Input Text    ${txt_confirm}    ${vconfirm}
    #accepter conditions
    Click Element    ${btn_policy}
    #On clique continuer
    Click Button    ${btn_continuer}
    #condition de succes
    Wait Until Element Is Visible    ${frame_warning}

Login_script_nominal
    [Arguments]    ${vemail}    ${vpassword}
    #On attend que my account
     Wait Until Element Is Visible    ${btn_my_account}
    #On clique sur le bouton 
    Click Element    ${btn_my_account}
    #On attend que my account
     Wait Until Element Is Visible    ${btn_login}
    #On clique sur Login
    Click Element    ${btn_login}
    #on sassure quon est sur la page pour connecter
    Wait Until Element Is Visible    ${frame_connecter }
    #on met les inputs
    Input Text     ${txt_email}    ${vemail}
    Input Text    ${txt_password}    ${vpassword}
    #On clique sur Login
    Click Element    ${btn_connecter}
    #On sassure quon est bien connecter
    Wait Until Element Is Visible    ${frame_my_account}
    #On se deconnecte
    #On clique sur le bouton my account
    Click Element    ${btn_my_account}
    Wait Until Element Is Visible    ${btn_logout}
    #On clique sur logout
    Click Element    ${btn_logout}
    Wait Until Element Is Visible    ${frame_logout}




Reinitaliser mot de passe
  [Arguments]    ${vemail}
    #On attend que my account
     Wait Until Element Is Visible    ${btn_my_account}
    #On clique sur le bouton 
    Click Element    ${btn_my_account}
    #On attend que my account
     Wait Until Element Is Visible    ${btn_login}
    #On clique sur Login
    Click Element    ${btn_login}
    #on sassure quon est sur la page pour connecter
    Wait Until Element Is Visible    ${frame_connecter }
    #On clique sur Forgotten Password
    Click Element    ${btn_mdp_oublier}
    #on sassure quon est sur la page forgotten password
    Wait Until Element Is Visible    ${frame_mdp_oublier}
    #On met le courriel
     Input Text     ${txt_email}    ${vemail}
     #on clique sur continuer
     Click Element    ${btn_continuer}
     #On sassure que le courriel a ete envoyer
     Wait Until Element Is Visible    ${frame_confirmation}

Rechercher
    [Arguments]    ${Vtext_recherche}
    #On attend que lespace de recherhce saffiche
     Wait Until Element Is Visible    ${txt_recherche}
    #On met les texts
    Input Text    ${txt_recherche}    ${Vtext_recherche}
    #on clique pour rechercher
    Click Button    ${btn_rechercher}
    #on attend quon soit sur la bonne page
    Wait Until Element Is Visible    ${frame_rechercher}
    #Pour quon a le temps de voir le resultat
    Set Selenium Timeout   ${TIMEOUT}

produit non disponible
    [Arguments]    ${Vtext_recherche}    ${vtitre_produit_by_title}
    #On attend que lespace de recherhce saffiche
     Wait Until Element Is Visible    ${txt_recherche}
    #On met les texts
    Input Text    ${txt_recherche}    ${Vtext_recherche}
    #on clique pour rechercher
    Click Button    ${btn_rechercher}
    #on attend quon soit sur la bonne page
    Wait Until Element Is Visible    ${frame_rechercher}
    #On clique sur le produit recherhche
    #Samsung SyncMaster 941BW
    Click Element    ${btn_produit_1}${vtitre_produit_by_title}${btn_produit_2}
    #On sassyre que le botuon add to cart saffiche
    Wait Until Element Is Visible    ${btn_add_to_cart}
    #On clique sur add to cart
    Click Button        ${btn_add_to_cart}
    #on sassure que le produit est ajouter au panier
    Wait Until Element Is Visible    ${frame_confirmation}
    #on attend clique sur notre panier
    Click Element    ${btn_panier}
    #on sassure quon est sur la page
    Wait Until Element Is Visible    ${btn_checkout}
    #on clique sur checkout
    Click Element   ${btn_checkout}
    #On sassure que lalerte de non disponibiliter saffiche
    Wait Until Element Is Visible    ${frame_warning}

Rechercher non disponible
       [Arguments]    ${Vtext_recherche} 
    #On attend que lespace de recherhce saffiche
     Wait Until Element Is Visible    ${txt_recherche}
    #On met les texts
    Input Text    ${txt_recherche}    ${Vtext_recherche}
    #on clique pour rechercher
    Click Button    ${btn_rechercher}
    #on attend quon soit sur la bonne page
    Wait Until Element Is Visible    ${frame_non_disponible }
    #On clique sur le produit recherhche

Acheter produit
        [Arguments]    ${Vtext_recherche}    ${vtitre_produit_by_title}    ${vemail}        ${vFname}  
        ...    ${vLname}    ${vtlphone}    ${vadresse}     ${vcity}    ${vadress_postal}    
    #On attend que lespace de recherhce saffiche
     Wait Until Element Is Visible    ${txt_recherche}
    #On met les texts
    Input Text    ${txt_recherche}    ${Vtext_recherche}
    #on clique pour rechercher
    Click Button    ${btn_rechercher}
    #on attend quon soit sur la bonne page
    Wait Until Element Is Visible    ${frame_rechercher}
    #On clique sur le produit recherhche
     #HP LP3065
    Click Element    ${btn_produit_1}${vtitre_produit_by_title}${btn_produit_2}
      #On clique sur add to cart
    Click Button        ${btn_add_to_cart}
    #on sassure que le produit est ajouter au panier
    Wait Until Element Is Visible    ${frame_confirmation}
    #on attend clique sur notre panier
    Click Element    ${btn_panier}
    #on sassure quon est sur la page
    Wait Until Element Is Visible    ${btn_menu_checkout}
    #on clique sur checkout
    Click Element   ${btn_checkout}
    #on sassure quon est sur la page
    Sleep   ${TIMEOUT} 
    #On clique btn de guess
    Select Radio Button    account    guest
     #On clique btn de guess
    Click Element    ${btn_continuer_checkout}
    #on sassure quon est sur la page
    Sleep   ${TIMEOUT} 
    #On rempli le formulaire
           #firstname
    Input Text    ${txt_payment_fname}    ${vFname}
    #Lastname
    Input Text    ${txt_payment_lname}    ${vLname}
    #Email
    Input Text    ${txt_payment_email}    ${vemail}
    #telephone
    Input Text    ${txt_payment_telephone}    ${vtlphone}
    #mot de passe
    Input Text    ${txt_payment_adresse }    ${vadresse}
    #inut postal code
     Input Text    ${txt_city}    ${vcity}
    #inut postal code
     Input Text    ${txt_post_code}    ${vadress_postal}
    #On choisi le pays
    Select From List By Value    ${btn_pays}    38    #canada
     Sleep   ${TIMEOUT} 
    #On choisi la region
    Select From List By Value   ${btn_region}    612    #   Quebec
    #On clique sure continuer guest
    Click Element    ${btn_continuer_personal_detail}
    Sleep   ${TIMEOUT} 
    #On clique sur conitnuer shipment
    Click Element    ${btn_continuer_ship_method}
     #on sassure que lelement dadresse est selectionner
    Wait Until Element Is Visible    ${frame_shipping_rate}
    #On clique sur conitnuer
    Click Element    ${btn_continuer_ship_method }
       #on sassure que lelement dadresse est selectionner
    Wait Until Element Is Visible    ${btn_continuer_payment}
     #on accept la politique
    Select Checkbox    ${btn_agree_term}
    #On clique sur conitnuer
    Click Element    ${btn_continuer_payment}
       #on sassure que lelement dadresse est selectionner
    Wait Until Element Is Visible    ${btn_confirmer_order}
    #On clique sur conitnuer
    Click Element    ${btn_confirmer_order}
    #On sassure que la commande a ete passer
    Wait Until Element Is Visible    ${frame_success}
    #On clique sur continue
    Click Element    ${btn_continuer_apres_commande}
    #On sassure quon est retouner sur la page daccueil
    Wait Until Element Is Not Visible    ${frame_success}



    
    



    




    


    
      

    


   



    








