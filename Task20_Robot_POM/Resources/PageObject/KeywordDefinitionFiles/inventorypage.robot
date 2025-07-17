# Resources\PageObject\KeywordDefinitionFiles\inventorypage.robot
# inventorypage.robot contains keywords for testing the inventory functionality like add to cart, go to cart and logout.

*** Settings ***
# General documentation for this file
Documentation    This file contains detailed keyword definitions specifically designed for testing the various features of the inventory page on the SauceDemo website.

# Libraries used in this file
Library          SeleniumLibrary
Library          Collections

# Variables files for locators and test data
Variables        ../Locators/test_locators.py
Variables        ../TestData/test_data.py

*** Keywords ***
# Keyword to add items to the cart
Add Items To Cart
    [arguments]    ${list}
    # Loop through each item in the list
    FOR    ${item}    IN    @{list}
        # Get the locator for the add to cart button of the item
        # Get From Dictionary means here it fetches data from ${inventory_items} dictionary
        ${locator} =    Get From Dictionary    ${inventory_items}    ${item}
        # Click the add to cart button of the item
        Click Button    ${locator}
    END


# Keyword to collect items in the inventory
Collect List Of Elements

    # Get Webelements fetches all the elements from the page that match the locator
    # Values are stored as list in the variable @{elements}
    @{elements} =    Get Webelements    ${itemList_locator}
    ${list} =    Create List

    # Loop through each element to get its text through Get Text
    FOR    ${element}    IN    @{elements}
        ${text} =    Get Text    ${element}
        Log    ${text}    
        # Append the text to the  empty list created '${list}'
        Append To List    ${list}    ${text}
    END
    RETURN    ${list}


# Keyword to navigate to the cart page
Go To Cart
    # Click the cart button to navigate to the cart page
    #  ${cart_button} is a locator for the cart button
    Click Element    ${cart_button}
    # Verify that the current URL matches the expected cart page URL
    Location Should Be    ${cart_page_url}


# Keyword to log out of the webpage
Logout of the Webpage
    # Click the menu button to open the menu
    Click Button    ${menu_button}
    # Verify that the logout button is visible before clicking
    Wait Until Element Is Visible    ${logout_button}
    # Click the logout button to log out of SauceDemo page.
    Click Element    ${logout_button}






