__version__ = '0.1'
__author__ = 'Tester'

#home page FB

Email_Phone_Field_To_Login = '//input[@id =\'email\']'
Password_Field_To_Login = '//input[@id =\'pass\']'
Login_Button  = '//input[@value =\'Log In\']'
Forgot_account  = '//a[contains(text(), \'Forgot account?\')]'
English_Link  = '//a[@title=\'English (US)\']'
First_Name_Field  = '//input[@name =\'firstname\']'
Last_Name_Field  = '//input[@name =\'lastname\']'
Email_Field  = '//input[@name =\'reg_email__\']'
Re_Enter_Email_Field = '//input[@name =\'reg_email_confirmation__\']'
New_Password = '//input[@name =\'reg_passwd__\']'
Select_Month = '//select[@name=\'birthday_month\']'
Select_Day = '//select[@name=\'birthday_day\']'
Select_Year = '//select[@name=\'birthday_year\']'
Q_About_BD_Info = '//a[@id =\'birthday-help\']'
Female = '//input[@value=\'1\']'
Male = '//input[@value=\'2\']'
Sign_Up_Button = '//button[@name =\'websubmit\']'
Incorrect_Email_Error = '//div[@id = \'reg_error_inner\']'

#Forgot pass FB

Email_Or_Phone_To_Recall_Pass = '//input[@id =\'identify_email\']'
Search_Button = '//input[@name =\'did_submit\']'

#Fight booking page

Flight_Xpath = '//a[contains(text(), \'Flights\')]'
Oneway_Xpath = '//input[@value=\'oneway\']'
Passenger_X = '//select[@name=\'passCount\']'
From_X = '//select[@name=\'fromPort\']'
To_X = '//select[@name=\'toPort\']'

#flight authorization page
Class_X = '//input[@type=\'radio\'][@value=\'Business\']'
Continue_X = '//input[@name=\'findFlights\']'
Continue2_X = '//input[@name=\'reserveFlights\']'
Submit2_X = '//input[@name=\'buyFlights\']'

#Flight confirmation page

Confirmation_X = '//*[contains(text(),\'itinerary\')]'
BookedNo_X = '//*[contains(text(),\'# 2017\')]'
