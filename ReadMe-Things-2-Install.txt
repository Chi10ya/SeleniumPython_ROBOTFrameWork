
--- Selenium with Python - Robot Framework - By SDET

Part 1: Introduction to Robot Framewor | Environment Setup | Selenium with python

Robot Framework is a generic test automation framework for acceptance testing
Acceptance test-driver development (ATDD)
It utilizes the keyword driver testing approach
Provides test libraries implemented either with Python or Java, and users can create new higher level keywords from existing onees using the same syntax that is used
for creating test cases
Not much programming is required.

* Installation steps:

>> Install Python
    > download it from www.python.org
    > This PC> Advanced System Settings > Edit Environment Variable : Copy and paste the path "C:\Program Files (x86)\Python3.6.4\Scripts"
    > Verify python version >: python --version

>> Install pip (by default pip will be installed along with python 3)
    >> pip --version
    >> pip list

>> Install Pycharm IDE
    > Go to www.jetbrains.com

>> Install Selenium
    >> pip install selenium
    >> pip uninstall selenium

>> Install robot framwework

    >> pip install robotframework
    >> pip install --upgrade robotframework
    >> pip show robotframework
    >> pip check robotframework
    >> pip install robotframewrok==2.9.2 (for to install any specific version)
    >> pip uninstall robotframework

>> Install robot framework selenium library

    >> pip install robotframework-seleniumlibrary
    >> pip uninstall robotframework-seleniumlibrary

# --- Adding the libraries to the Project

Add the below libraries to the project by
 > Selecting the project in PyCharm
 > Click File > Settings
 > Select Project Interpreter under your project name
 > Click on +
 > Search for the libraries one after the other and click on Install
    selenium, robotframework, robotframework-seleniumlibrary.
 > Click on OK
 > Relaunch the PyCharm

# -- Add plugin IntelliBot @ SeleniumLibrary Patched

 > Selecting the project in PyCharm
 > Click File > Settings
 > Click on Plugin
 > Search for IntelliBot @ SeleniumLibrary Patched
 > Click on Install and then Apply and then OK


2: First Test case in Robot Framework

Note:    File Extensions in robot framework
        > Test Case ==> .robot
        > Excel ==> .xls
        > notepad ==> .txt
        > python ==> .py

    >> How to run the robot file from terminal:   robot TestCases\TC1.robot

3: How to handle inputbox in Robot framework

    > Working with Web Elements
    > Text Box / Input Box
        - Visibility Status
        - Enabled Status
        - Provide Value
        - Clearing Value
        - Verify title of the page.

4: Working with Radio button & Check boxes

5: How to select Options from Drop-down & listboxes

6: Waits & Timeouts in Robot framework

        Selenium speed
            Ex:     set selenium speed  3 seconds

        Selenium Timeout
            Ex:     set selenium timeout    10 seconds
                    wait until page contains    Register    # Max timeout is 5 seconds by default until and unless the set selenium timeout 10 seconds

        Implicit wait
            Ex:     set selenium implicit wait  10 seconds

        Sleep
            Ex: sleep   5






