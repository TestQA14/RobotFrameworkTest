*** Settings ***
Documentation        Testing MercuryTours Website Keywords
Library               Selenium2Library
Library                BuiltIn
Variables              /Users/irinachemisova/Documents/RobotFrameworkTest/Test/Variable/Variables.py
Variables              /Users/irinachemisova/Documents/RobotFrameworkTest/Test/Locators/Elements.py
Library                /Users/irinachemisova/Documents/RobotFrameworkTest/Test/Locators/Locators.py
*** Keywords ***

Click on Sign-On Link
    ${signOn}=    Get SignOn Xpath
    Click Element     xpath=${signOn}
    Log to console    Clicked on Signon link succesfully.
    
  
Verify SignOn Page title
    ${WindowTitle}=    Get Title
    Should Be Equal     ${WindowTitle}    Sign-on: Mercury Tours
    Log to console    Navigated to    :${Title}
    

Check if Registration link is available
    ${a}=    Get RegisterLink Xpath
    ${b}=    Get Element Attribute    xpath=${a}   
    Log to console    Href  attribute found    :${b}
   
   
Check header is successfully displaying
    ${a}=    Get Enter Your Info Xpath
    ${b}=    Get Text    ${a}
    Log to console    ${b}


Enter Invalid UserName
    ${a}=    Get UserName
    Input Text    ${a}    ${UserName}
    Log to console    Entered wrong username

Enter Invalid Password
    ${a}=    Get Password
    Input Text    ${a}    ${Passsword}
    Log to console    Entered wrong password
 
Click on Submit
    ${a}=    Get Submit
    Click Element    ${a}
    Log to console    Clicking on Submit

Click on Register link
    ${a}=    Get RegisterLink Xpath
    Click Element    ${a}
    Log to console    Clicking on Register Link

Verify Registration Page
  #  ${a}=   Register Text
  #  ${b}=    Get Text    ${a}
    ${WindowTitle}=    Get Title
    Should Be Equal    ${WindowTitle}    Register: Mercury Tours
    Log to console    User Navigated to -     ${WindowTitle}
    Log to console    ${WindowTitle}
    
Provide user details
    ${FirstName}=    First Name
    ${LastName}=    Last Name
    ${phone}=    phone
    ${userID}=    User ID
    ${country}=    country
    ${userName}=    User Name
    ${password}=    password
    ${confirmPassword}=    Confirm Password
    Input Text                 ${FirstName}         ${U_FirstName}       
    Input Text                 ${LastName}          ${U_LastName}  
    Input Text                 ${phone}             ${U_phone}  
    Input Text                 ${userID}            ${U_userID}
    Click Element              ${country}           
    Select From List By Label  ${country}           ${U_country}      
    Input Text                 ${userName}          ${U_userName}  
    Input Text                 ${password}          ${U_password}  
    Input Text                 ${confirmPassword}   ${U_confirmPassword}  
    
    Log to console    Entered FirstName
    Log to console    Entered LastName
    Log to console    Entered Phone
    Log to console    Entered userID
    Log to console    Entered Country
    Log to console    Entered UserName
    Log to console    Entered Password
    Log to console    Entered ConfirmPassword

Click on submit registration
    ${a}=    Get submit for register
    Click Element    ${a}
    Log to console    Submitted Registration

#Check Post registration page
#    ${a}=    Post_Regis_ThankYou
#    ${b}=    Get Text    ${a}
#    Log to console    ${b}
#    Element Should Contain    ${a}    ${b}

#UserID should be created successfully
#    ${a}=    post_Regis_userID
#    ${b}=    Get Text    ${a}
#    Log to console    ${b}
#    Element Should Contain    ${a}    ${b}
    
Goto Flight Booking section
    Click Element    ${Flight_Xpath}
    sleep    2s

Check the Booking Page
    ${WindowTitle}=    Get Title
    Should Be Equal    ${WindowTitle}    Find a Flight: Mercury Tours:
    Log to console    Navigated to :    ${WindowTitle}
 
 Provide user necessary details and continue
     Click Element                                ${Oneway_Xpath}
     Click Element                                ${Passenger_X}
     Select From List By Label                    ${Passenger_X}        1
     Click Element                                ${From_X}
     Select From List By Label                    ${From_X}              London
     Click Element                                ${To_X}
     Select From List By Label                    ${To_X}                Paris
     Click Element                                ${Class_X}
     Click Element                                ${Continue_X}
     sleep                                        2s

Select Available flights and continue
    ${WindowTitle}=        Get Title
    Should Be Equal        ${WindowTitle}         Select a Flight: Mercury Tours
    Log to console         Navigated to :         ${WindowTitle}
    Click Element                                 ${Continue2_X}

Provice payment details and secure booking
    ${WindowTitle}=    Get Title
    Should Be Equal        ${WindowTitle}         Book a Flight: Mercury Tours
    Log to console         Navigated to :         ${WindowTitle}
    Click Element                                 ${Submit2_X}

Check confirmation page and bookind ID
    sleep                                         2s
    ${WindowTitle}=    Get Title
    Should Be Equal        ${WindowTitle}         Flight Confirmation: Mercury Tours
    Log to console         Navigated to :         ${WindowTitle}

Goto Support page
    ${a}    Get Support Link Xpath
    Click Element    ${a}
    sleep    ${timeout}
    
Check Support page
    ${WindowTitle}=        Get Title
    Should Be Equal        ${WindowTitle}          Under Construction: Mercury Tours
    Log to console         Navigated to:           ${WindowTitle}
    Page Should Contain    This section of our web site is currently under construction.   Sorry for any inconvienece. 
    ${a}    Get Back to Home Xpath
    Page Should Contain Link    ${a}
    Log to console    Window Title is:              ${WindowTitle}
    Log to console    Page has special text
    Log to console    Back To Home link is displaying

Come back to Home page
    ${a}    Get Back To Home Xpath 
    Click Element    ${a}    

Goto Contact page
    ${a}    Get Contact Link Xpath
    Click Element    ${a}    
    sleep    ${timeout}
    
Check Contact page
     ${WindowTitle}=        Get Title
    Should Be Equal        ${WindowTitle}          Under Construction: Mercury Tours
    Log to console         Navigated to:           ${WindowTitle}
    Page Should Contain    This section of our web site is currently under construction.   Sorry for any inconvienece. 
    ${a}    Get Contact Link Xpath
    Page Should Contain Link    ${a}
    Log to console    Window Title is:              ${WindowTitle}
    Log to console    Page has special text
    Log to console    Back To Home link is displaying
    
    
#FB
Check Home FB page
     Should Be Equal        ${titleFB}          Facebook - Log In or Sign Up
     Log to console         Navigated to:          ${titleFB} 
     Page Should Contain Textfield   ${Email_Phone_Field_To_Login}
     Page Should Contain Textfield   ${Password_Field_To_Login}
     Page Should Contain Link   ${Login_Button}

Login Facebook
     Should Be Equal               ${titleFB}                       Facebook - Log In or Sign Up
     Log to console                 Navigated to:                           ${titleFB} 
     Input Text                 ${Email_Phone_Field_To_Login}               ${FB_Email} 
     Input Text                 ${Password_Field_To_Login}                  ${FB_Password} 
     Click Element              ${Login_Button}
     
Provide user info to signUp in Facebook
     Should Be Equal               ${titleFB}                       Facebook - Log In or Sign Up
     Log to console                 Navigated to:                           ${titleFB} 
     Input Text                    ${First_Name_Field}                      ${FB_FirstName}
     Input Text                    ${Last_Name_Field}                       ${FB_LastName}
     Input Text                    ${Email_Field}                           ${FB_REG_EMAIL}
     Input Text                    ${Re_Enter_Email_Field}                  ${FB_REG_EMAIL}
     Input Text                    ${New_Password}                          ${FB_NEW_PASSWORD}     
     Click Element                 ${Select_Month}
     Select From List By Label     ${Select_Month}                          Aug
     Click Element                 ${Select_Day}                            
     Select From List By Label     ${Select_Day}                            3
     Click Element                 ${Select_Year}
     Select From List By Label     ${Select_Year}                           1990
     Click Element                 ${Female}

Press SignUp after input user information
     Click Element                 ${SignUpButton}

GoTo Find Your Account
     Should Be Equal        ${titleFB}          Facebook - Log In or Sign Up
     Log to console         Navigated to:          ${titleFB} 
     Click Element          ${Forgot_account}
     sleep                  ${timeout}
Search account     
     Input Text             ${Email_Or_Phone_To_Recall_Pass}    ${FB_Email}
     Click Element          ${Search_Button}
     