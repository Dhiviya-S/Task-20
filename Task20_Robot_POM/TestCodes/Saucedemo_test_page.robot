# TestCodes\Saucedemo_test_page.robot
# Saucedemo_test_page.robot contains test cases for the login functionality of the SauceDemo website.
# Actual test cases are defined and utilized all the Resources files.

*** Settings ***
# General documentation for this test suite
Documentation    Test cases for the login page of the SauceDemo website.

# Libraries used in this test suite
Library          SeleniumLibrary
Library          Collections
Library          String

# Setup actions before the test
Test Setup       Open Webpage URL    ${browser_name}    ${webpage_url}

# Teardown actions after the test
Test Teardown    Close The Browser

# Variables files for locators and test data
Variables        ../Resources/PageObject/Locators/test_locators.py
Variables        ../Resources/PageObject/TestData/test_data.py

# Resource files for additional keyword definitions
Resource         ../Resources/PageObject/KeywordDefinitionFiles/generic.robot
Resource         ../Resources/PageObject/KeywordDefinitionFiles/loginpage.robot
Resource         ../Resources/PageObject/KeywordDefinitionFiles/inventorypage.robot
Resource         ../Resources/PageObject/KeywordDefinitionFiles/cartpage.robot
Resource         ../Resources/PageObject/KeywordDefinitionFiles/checkoutpage.robot


*** Test Cases ***
# Test case to validate the login functionality with valid credentials
Login with Valid Credentials
    
    # Enters valid user credentials and logs in
    Login Into The Webpage
    # Successfully navigates to the inventory page 
    Verify HomePage Login
    

# Test case to validate the login functionality with invalid credentials
Login with Invalid Credentials

    # Enters invalid user credentials and attempts to log in
    Enter User Credentials And Login    ${invalid_username}   ${invalid_password}
   
    # Verifies that the login error message is displayed
    Verify Notification Message    ${login_error_element}    ${invalid_login_error_message}
    Log To Console  ${invalid_login_error_message}


# Test case to validate the items in the cart after adding a product
Add Product to Cart and Verify Cart
   
    # Logs in to the webpage and implicit wait is set for 10 seconds
    Login Into The Webpage
    Set Selenium Timeout    10s

    # Adds a single item to the cart and verifies it
    Add Items To Cart    ${single_item}
    # Navigates to the cart page
    Go To Cart
    # Verifies that single item added by user is present in the cart
    Verify Items In Cart    ${single_item}
    

# Test case to validate the checkout process with multiple products
Add Multiple Products to Cart and Verify Checkout
    
    # Logs in to the webpage and adds multiple items to the cart
    Login Into The Webpage
    Add Items To Cart    ${multiple_items}

    # Navigates to the cart page 
    Set Selenium Timeout    10s
    Go To Cart

    # Navigates to checkout page and adds checkout details
    Go To Checkout Details
    Add Checkout Details

    # Navigates to checkout overview page by clicking continue button
    Go To Checkout Overview
    # Verifies the checkout summary by checking the items and quantities in the cart
    Verify Items In Cart    ${multiple_items}
    Verify Checkout Summary    
    
    