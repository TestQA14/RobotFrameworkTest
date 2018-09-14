*** Settings ***
Documentation    Testing MercuryTours Webdite
Library          Selenium2Library
Library          BuiltIn
Library          ../Locators/Locators.py
Resource         ../Keyword/Keywords.robot
Resource         ../Keyword/Common.robot
Variables        ../Variable/Variables.py
Variables        ../Locators/Elements.py

*** Test Cases ***
TestCase1: Login Invalid Credentials
    [Documentation]    This is to verify invalid login Mercury Tours Home Page
    [Tags]    smoke
        Open Mercury Website in Chrome and Maximize
        Verify the Home page title
        Click on Sign-On Link
        Verify SignOn Page title
      #  Check if Registration link is available
    #    Check header is successfully displaying
        Enter Invalid UserName
        Enter Invalid Password
        Click on Submit
        sleep    ${timeout}
    [Teardown]    Close browser

TestCase2: User Registration in Mercury Website
    [Documentation]    This is to verify the Registration flow in Mercury Home Page
    [Tags]    sanity
        Open Mercury Website in Chrome and Maximize
        Verify the Home page title
        Click on Register link
        Verify Registration Page
        sleep    ${timeout}
        Provide user details
        sleep    ${timeout}
        Click on submit registration
   #     Check Post registration page
   #     UserID should be created successfully
    [Teardown]    Close Browser
        
TestCase3: Booking flight and then SignOff
    [Documentation]    This is to verify the flight booking flow in Mercury Home Page after Registration
    [Tags]    Regression
        Open Mercury Website in Chrome and Maximize
        Verify the Home page title
        Click on Register link
        sleep    ${timeout}
        Click on submit registration
        Goto Flight Booking section
        Check the Booking Page
        Provide user necessary details and continue
        Select Available flights and continue
        Provice payment details and secure booking
        Check confirmation page and bookind ID
    [TearDown]    Close Browser

TestCase4: Open support page
    [Documentation]    This is to verify the link to Support Page
    [Tags]    Regression
    Open Mercury Website in Chrome and Maximize
    Verify the Home page title
    Goto Support Page
    sleep    ${timeout}
    Check Support Page
    Come back to Home page
    sleep    ${timeout}
    [TearDown]    Close Browser
TestCase5: Open contact page
    [Documentation]    This is to verify the link to Contact Page
    [Tags]    Regression
    Open Mercury Website in Chrome and Maximize
    Verify the Home page title
    Goto Contact Page
    sleep    ${timeout}
    Check Contact Page
    Come back to Home page
    sleep    ${timeout}
    [TearDown]    Close Browser
    