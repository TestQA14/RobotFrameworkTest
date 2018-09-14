*** Settings ***
Documentation    Testing MercuryTours Website
Library          Selenium2Library
Library          BuiltIn
Library          Locators
Resource         ../Keyword/Keywords.robot
Resource         ../Keyword/Common.robot

*** Variable ***
${URL}           http://newtours.demoaut.com/
${title}         Welcome: Mercury Tours
${timeout}       3s


*** Test Cases ***
TestCase1: Navigating Mercury Webpage
    [Tags]    DEBUG
        Open Mercury Website in Chrome and Maximize
        Verify the Home page title
        sleep    ${timeout}
        Click on Sign-On Link
    [Teardown]    Close Browser
    
#*** Keywords ***
#Open Mercury Website in Chrome and Maximize
#    Open Browser    url=${URL}    browser=chrome
#    Maximize Browser Window
#    Log to console    Website Navigated successfully
#Verify the Home page title
#    Title Should Be    ${title}
#    Log to console    Home Page Title Verified
#Click on Sign-On Link
#    ${signOn}=     get_SignOn_xpath
#    Click Element     xpath=${signOn}
#    Log to console    Clicked on Signon link succesfully.