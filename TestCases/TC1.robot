
*** Settings ***

# This section is for to specify the built in libraries
Library  SeleniumLibrary

*** Variables ***

#chromeWebDriver= "C:\\Users\\chaitanya.mohammad\\PycharmProjects\\Python_Selenium_BrowserDrivers\\chromedriver.exe"
# Note-1:
# The above chromeWebDriver and the path of it is commented due to, the chrome webdriver is placed in the folder of
# C:\Users\chaitanya.mohammad\AppData\Local\Programs\Python\Python37-32\Scripts
# And the same path is set as Environment Variables > System Variables > Path
# When the webdrivers like chrome driver, gecko driver , ie driver is placed in the Python - scripts folder & Path is set in environment *** variables ***
# no need to specify the path in the code.

${nopCommerceappUrl}     https://demo.nopcommerce.com/
${demoApp}      http://www.practiceselenium.com/practice-form.html
${demoWebShop}  http://demowebshop/tricentis.com/register
${browser}      chrome

*** Test Cases ***

nopCommerce_LoginTest:

    #create webdriver    Chrome     chromeWebDriver # No need to given this . Read Note-1 above
    open browser    ${nopCommerceappUrl}     ${browser}
    maximize browser window
    loginTo_nopCommerce_Application  # Calling the userdefined keyword which is derived below
    title should be     nopCommerce demo store
    close browser

DemoApp_RaioButton_nd_CheckBox
    open browser    ${demoApp}    ${browser}
    maximize browser window
    Access_Demo_Application  # Calling the userdefined keyword which is derived below
    set selenium speed  2seconds
    title should be     practice-form
    #close browser

demo-webshop:
    ${defaultSpeed}=    get selenium speed
    open browser    ${demoWebShop}    ${browser}
    maximize browser window

    set selenium implicit wait  10 seconds
    set selenium timeout    10 seconds
    wait until page contains    Register    # Max timeout is 5 seconds by default until and unless the set selenium timeout 10 seconds
    #sleep 3
    set selenium speed  3 seconds
    select raidio button    Gender  M
    input text  name:FirstName  Chaitanya
    input text  name:LastName   Kumar
    imput text  name:Email  abc@yahoo.com
    ${defaultSpeed}=    get selenium speed
    log to console  ${defualtSpeed}

*** Keywords ***

# creating userdefined keyword loginToApplication

loginTo_nopCommerce_Application
# This section is for Input Text, Clear text in textbox and Clicking on button

    click link      xpath://a[@class='ico-login']
    # creating our own variable for the webelement
    ${"email_txt_box"}  set variable    id:Email
    element should be visible   ${"email_txt_box"}
    input text      ${"email_txt_box"}      chaitan@gmail.com
    sleep   2
    clear element text  ${"email_txt_box"}
    sleep   2
    #(or) you can enter the text into the field as below
    input text      id:Email    pavanoltraining@gmail.com
    input text      id:Password     Test@123
    click element   xpath://input[@class='button-1 login-button']

Access_Demo_Application
# Part 4: This section is for selecting Radio button and checkboxes

  # Selecting Radio buttons
    select radio button     sex     Female      # attribute 'name' value is sex
    select radio button     exp     5           # attribute 'exp' value is 5

  # Select Checkbox
    select checkbox     BlackTea
    select checkbox     RedTea
    unselect checkbox   BlackTea

# Part 5: Handling dropdown listbox and Listbox

  # Dropdown listbox
    # 3 methods available 1: select from list by label, 2: select from list by value, 3: select from list by index
    select from list by label   continents  Australia       # attribute name='continents' label is Australia (Label is the one which is displaying in dropdown listbox
    sleep   2
    select from list by index   continents  6

  # ListBox
    # 3 methods available 1: select from list by label, 2: select from list by value, 3: select from list by index
    select from list by label   selenium_commands  Switch Commands       # attribute name='selenium_commands' value is Switch Commands
    select from list by label   selenium_commands  WebElement Commands   # attribute name='selenium_commands' value is WebElement Commands
    sleep   3
    unselect from list by label   selenium_commands  Switch Commands       # attribute name='selenium_commands' value is Switch Commands


