"""
test_data.py contains all the data for the SauceDemo project.
"""

# Booting URL Data
browser_name = "Firefox"
webpage_url = "https://www.saucedemo.com/"

# User Credentials
valid_username = "standard_user"
valid_password = "secret_sauce"
invalid_username = "invalid_user"
invalid_password = "no_entry"
first_name = "Peter"
last_name = "Pan"
postal_code = "738009"

# WebPage Navigation Data
inventory_page_url = "https://www.saucedemo.com/inventory.html"
about_url = "https://saucelabs.com/"
cart_page_url = "https://www.saucedemo.com/cart.html"
checkout_page_url = ["https://www.saucedemo.com/checkout-step-one.html", "https://www.saucedemo.com/checkout-step-two.html"]
checkout_complete_page_url = "https://www.saucedemo.com/checkout-complete.html"


# WebPage Errors And Messages
logo_text = "Swag Labs"
invalid_login_error_message = "Epic sadface: Username and password do not match any user in this service"
checkout_message = ["Thank you for your order!", "Your order has been dispatched, and will arrive just as fast as the pony can get there!"]
checkout_first_name_error_message = "Error: First Name is required"
checkout_last_name_error_message = "Error: Last Name is required"
checkout_postal_code_error_message = "Error: Postal Code is required"


# WebPage Items Data
multiple_items = ["Sauce Labs Bike Light","Sauce Labs Backpack", "Sauce Labs Fleece Jacket", "Sauce Labs Onesie"]
single_item = ["Sauce Labs Backpack"]
inventory_items = {"Sauce Labs Backpack" : "css:button#add-to-cart-sauce-labs-backpack",
                   "Sauce Labs Bike Light" : "css:button#add-to-cart-sauce-labs-bike-light",
                   "Sauce Labs Bolt T-Shirt" : "css:button#add-to-cart-sauce-labs-bolt-t-shirt",
                   "Sauce Labs Fleece Jacket" : "css:button#add-to-cart-sauce-labs-fleece-jacket",
                   "Sauce Labs Onesie" : "css:button#add-to-cart-sauce-labs-onesie",
                   "Test.allTheThings() T-Shirt (Red)" : "id:add-to-cart-test.allthethings()-t-shirt-(red)"}
inventory_prices = {29.99: ["Sauce Labs Backpack"],
                    9.99: ["Sauce Labs Bike Light"],
                    15.99: ["Sauce Labs Bolt T-Shirt", "Test.allTheThings() T-Shirt (Red)"],
                    49.99: ["Sauce Labs Fleece Jacket"],
                    7.99: ["Sauce Labs Onesie"]}

