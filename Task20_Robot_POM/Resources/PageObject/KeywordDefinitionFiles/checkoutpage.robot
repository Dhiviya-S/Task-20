# Resources\PageObject\KeywordDefinitionFiles\checkoutpage.robot
# checkoutpage.robot contains keywords for testing the checkout summary and adding details of user.

*** Settings ***
# General documentation for this file
Documentation    This file contains detailed keyword definitions specifically designed for testing the various features of the checkout page on the SauceDemo website.

# Libraries used in this file
Library          SeleniumLibrary
Library          Collections
Library          String

# Variables files for locators and test data
Variables        ../Locators/test_locators.py
Variables        ../TestData/test_data.py

# Resource files for additional keyword definitions
Resource         ../KeywordDefinitionFiles/generic.robot
Resource         ../KeywordDefinitionFiles/inventorypage.robot
Resource         ../KeywordDefinitionFiles/cartpage.robot

*** Keywords ***
# Keyword to navigate to the checkout details page
Go To Checkout Details
    Navigate To WebPage    ${checkout_button}    ${checkout_page_url}[0]


# Keyword to navigate to the checkout overview page
Go To Checkout Overview
    Navigate To WebPage    ${continue_button}    ${checkout_page_url}[1]


# Keyword to add checkout details
Add Checkout Details
    # Input user details into the checkout form like first name, last name and postal code
    Input Text    ${firstname_input}    ${first_name}
    Input Text    ${lastname_input}    ${last_name}
    Input Text    ${postalcode_input}    ${postal_code}


# Keyword to verify the checkout summary
Verify Checkout Summary 

    # To check the total products in the cart
    ${cart_items} =    Collect List Of Elements
    Log To Console   "Items in checkout summary: ${cart_items}"
    # Wait until the checkout summary container is visible
    Wait Until Element Is Visible    ${checkout_summary_container}  timeout=5s

    # Verify that the number of items in the cart matches the expected count
    # ${cart_badge} is a locator for the cart badge that shows the number of items
    ${summary_quantities} =    Get Text    ${cart_badge}
    Log To Console    "Quantities listed in summary: ${summary_quantities}"

    # Compute expected quantity from number of items in cart
    ${expected_quantity}=    Get Length    ${cart_items}

    # Verify the actual quantity matches expected
    Should Be Equal As Integers    ${summary_quantities}    ${expected_quantity}
    

