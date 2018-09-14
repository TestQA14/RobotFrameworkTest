*** Settings ***
Documentation        Testing MercuryTours Website Keywords
Library               Selenium2Library
Library                BuiltIn
Variables                ../Variable/Variables.py
Variables                ../Locators/Elements.py
Library                  Locators

*** Keywords ***


Open Mercury Website in Chrome and Maximize
     Open Browser    url=${URL}    browser=gc
     Maximize Browser Window
     Log to console    Browser is Maximized
 

Verify the Home page title
    Title Should Be    ${title}
    Log to console    Home Page Title Verified
    
    
Open FB Website in Chrome and Maximize
     Open Browser    url=${URLFB}    browser=gc
     Maximize Browser Window
     Log to console    Browser is Maximized

Verify the FB Home page title
    Title Should Be    ${titleFB}
    Log to console    Home Page Title Verified    