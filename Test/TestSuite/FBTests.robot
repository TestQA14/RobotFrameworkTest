*** Settings ***
Documentation    Testing MercuryTours Webdite
Library          Selenium2Library
Library          BuiltIn
Resource         ../Keyword/Keywords.robot
Resource         ../Keyword/Common.robot
Variables        ../Variable/Variables.py
Variables        ../Locators/Elements.py

*** Test Cases ***

TestCase1: Check Facebook Home page
    [Documentation]    This is to verify Facebook home page
    [Tags]    smoke
        Open FB Website in Chrome and Maximize
        Verify the FB Home page title
        Check Home FB page
        sleep    ${timeout}
    [Teardown]    Close browser
    
TestCase2: Valid trying to Login in Facebook
    [Documentation]    This is to verify invalid login Facebook Home Page
    [Tags]    smoke
        Open FB Website in Chrome and Maximize
        Verify the FB Home page title
       # Check Home FB page
        Login Facebook
        sleep    ${timeout}
    [Teardown]    Close browser

TestCase3: Valid trying to SignUp in Facebook
    [Documentation]    This is to verify invalid login Facebook Home Page
    [Tags]    smoke
        Open FB Website in Chrome and Maximize
        Verify the FB Home page title
        Provide user info to signUp in Facebook
        Press SignUp after input user information
        sleep    ${timeout}
    [Teardown]    Close browser
TestCase4: Trying to find forgotten account
    [Documentation]    This is to verify invalid login Facebook Home Page
    [Tags]    smoke
        Open FB Website in Chrome and Maximize
        Verify the FB Home page title
        GoTo Find Your Account
        Search account 
        sleep    ${timeout}
    [Teardown]    Close browser