"""
test_locators.py contains all the locators for the SauceDemo project.
"""

#LoginPage Locators
username_input = "css:#user-name"
password_input = "css:#password"
login_button = "id:login-button"
login_error_element = "css:h3"


#InventoryPage Locators
menu_button = "css:#react-burger-menu-btn"
cart_container = "css:div.shopping_cart_container"
cart_button = "css:a.shopping_cart_link"
cart_badge = "css:span.shopping_cart_badge"
logout_button = "css:a#logout_sidebar_link"


#CartPage Locators
itemList_locator = "css:div.inventory_item_name"
itemPrice_locator = "css:div.inventory_item_price"
remove_button = "css:.btn.btn_secondary.btn_small.cart_button"


#CheckoutPage Locators
checkout_button = "css:button#checkout"
finish_button = "css:button#finish"
firstname_input = "css:input#first-name"
lastname_input = "css:input#last-name"
postalcode_input = "css:input#postal-code"
continue_button = "css:input#continue"
checkout_element = "css:h2.complete-header"
checkout_summary_container = "css:div#checkout_summary_container"
