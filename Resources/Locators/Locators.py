#Register
btn_my_account  = "//span[text() ='My Account']"
btn_register = "//*[text() ='Register']"
txt_fname = "//input[@id='input-firstname']"
txt_lname = "//input[@id='input-lastname']"
txt_email = "//input[@id='input-email']"
txt_telephone = "//input[@id='input-telephone']"
txt_password = "//input[@id='input-password']"
txt_confirm = "//input[@id='input-confirm']"
btn_newsletter_oui = "//input[@name='newsletter' and @value ='1']"
btn_newsletter_non = "//input[@name='newsletter' and @value ='0']"
btn_policy = "//input[@type='checkbox']"
btn_continuer = "//input[@value = 'Continue']"
frame_confirmer = "//div[@id='content']"
frame_warning = "//div[@class='alert alert-danger alert-dismissible']"

#Logout
btn_logout = "//ul[@class='dropdown-menu dropdown-menu-right']//a[normalize-space()='Logout']"
frame_logout = "//h1[normalize-space()='Account Logout']"

#Login
btn_login = "//a[text() ='Login']"
btn_connecter = "//input[@value='Login']"
frame_connecter = "//div[@class='well']"
frame_my_account = "//h2[normalize-space()='My Account']"
btn_mdp_oublier = "//div[@class='form-group']//a[normalize-space()='Forgotten Password']"
frame_mdp_oublier = "//h1[normalize-space()='Forgot Your Password?']"
frame_confirmation = "//div[@class='alert alert-success alert-dismissible']"

#Rechercher
txt_recherche = "//input[@name='search']"
frame_rechercher = "//h2[normalize-space()='Products meeting the search criteria']"
btn_rechercher = "//button[@class='btn btn-default btn-lg']"
frame_non_disponible ="//p[contains(text(),'There is no product that matches the search criter')]"
#magasiner
btn_produit_1 ="//img[@title='"
btn_produit_2 = "']"
btn_add_to_cart="//button[@id='button-cart']"
btn_panier = "//span[normalize-space()='Shopping Cart']"
btn_menu_checkout = "//span[normalize-space()='Checkout']"
btn_checkout = "//a[@class='btn btn-primary']"

#checkout

btn_guest = "//*[text() = 'New Customer']"
frame_checkout = "//h1[text() = 'Checkout']"
frame_bill_details = "///legend[normalize-space()='Your Personal Details']"
txt_payment_fname = "id=input-payment-firstname"
txt_payment_lname = "id=input-payment-lastname"
txt_payment_email = "id=input-payment-email"
txt_payment_telephone = "id=input-payment-telephone"
txt_payment_adresse = "id=input-payment-address-1"
txt_city = "id=input-payment-city"
txt_post_code = "id=input-payment-postcode"
btn_pays = "//select[@name='country_id']"
btn_region="//select[@name='zone_id']"
btn_adresse_existe = "//input[@value = 'existing']"
btn_confirmer_adress = "//label[normalize-space()='My delivery and billing addresses are the same.']"
frame_shipping_rate = "//label[normalize-space()='Flat Shipping Rate - $5.00']"
btn_payment = "//div[@id='collapse-payment-method']//div[@class='radio']"
btn_confirmer_order="//input[@id='button-confirm']"
btn_continuer_personal_detail="//input[@id='button-guest']"
btn_continuer_ship_method = "//input[@id='button-shipping-method']"
btn_continuer_payment = "//input[@id='button-payment-method']"
btn_continuer_delivery_detail = "//input[@id='button-guest-shipping']"
btn_continuer_checkout="//input[@id='button-account']"
btn_agree_term = "//input[@name='agree']"
frame_success = "//a[normalize-space()='Success']"
btn_continuer_apres_commande = "//a[text()='Continue']"





























