__author__ = 'Tester'
__version__ = '0.1'
ROBOT_SYSLOG_FILE = '/RobotFrameworkTest/Test/TestSuite/Result/syslog.txt'

class Locators:
    ROBOT_LIBRARY_SCOPE = 'GLOBAL'
    
    def __init__(self):
        self._counter = 0
    
    def get_SignOn_xpath(self): 
        xpath = "//a[contains(text(),'SIGN-ON')]"
        return(xpath)
    
    
    def get_registerLink_xpath(self): 
        xpath = "//a[contains(text(), 'REGISTER')]"
        return(xpath)
    
    def get_Enter_Your_Info_xpath(self):
        xpath = "/html/body/div/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[5]/td/form/table/tbody/tr[1]/td/font/font/b/font/font"
        return(xpath)
    
    def get_UserName(self):
        xpath = "//input[@name='userName']"
        return(xpath)
    
    def get_Password(self):
        xpath = "//input[@name='password']"
        return(xpath)
    
    def get_submit(self):
        xpath = "//input[@name='login']"
        return(xpath)
    
    def get_submit_for_register(self):
        xpath = "//input[@name='register']"
        return(xpath)
    
    def get_Register(self): 
        xpath = "//*[contains(text(), 'REGISTER')]"
        return(xpath)

    def RegisterText(self): 
        xpath = '/html/body/div/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[3]/td/p/font/text()'
        return(xpath)
    
    def FirstName(self):
        xpath = "//input[@name='firstName']"
        return(xpath)

    def LastName(self):
        xpath = "//input[@name='lastName']"
        return(xpath)
    
    def phone(self):
        xpath = "//input[@name='phone']"
        return(xpath)
       
    def userID(self):
        xpath = "//input[@name='userName']"
        return(xpath)
    
    def country(self):
        xpath = "//select[@name='country']"
        return(xpath)
    
    def userName(self):
        xpath = "//input[@name='userName']"
        return(xpath)
   
    def password(self):
        xpath = "//input[@name='password']"
        return(xpath)
   
    def confirmPassword(self):
        xpath = "//input[@name='confirmPassword']"
        return(xpath)
    
    def get_support_link_xpath(self):
        xpath = "//*[contains(text(),'SUPPORT')]"
        return(xpath)
    
    def get_back_to_home_xpath(self):
        xpath = "//a[@href='mercurywelcome.php']"
        return(xpath)
    
    def get_contact_link_xpath(self):
        xpath = "//*[contains(text(),'CONTACT')]"
        return(xpath)