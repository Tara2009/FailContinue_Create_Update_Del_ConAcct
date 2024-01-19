# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Resource               ../FailCont_Resource/FContCommon.robot
Suite Setup            Setup Browser
Suite Teardown         End suite

*** Variables ***
${ContactMessage}      Hup! Contact created Successfully.
${ContactUpdate}       Yeap! Contact updated Successfully.
${ContactDelete}       Yeap! Contact Delete Successfully.

*** Test Cases ***
Entering a Contacts
    [Tags]             Contact
    Appstate           Home
    LaunchApp          Sales
    ClickText          Contacts
    ClickUntil         New Contact                 New
    UseModal           On
    TypeText           Person Location             JKC College Road orion restuant
    TypeText           Phone                       +919966116682
    Picklist           Salutation                  Mr.
    TypeText           First Name                  Pleasehelp_11
    TypeText           Last Name                   Helptocreate_12
    ComboBox           Search Accounts...          GenePoint
    TypeText           Email                       tvsh@gmail.com
    TypeText           Title                       project16
    TypeText           Mailing Street              hanuman nagar 4th line
    TypeText           Mailing City                guntur
    TypeText           Mailing State/Province      ap
    TypeText           Mailing Zip/Postal Code     522006
    TypeText           Mailing Country             india
    TypeText           Other Street                vijayapuri colony
    TypeText           Other City                  guntur
    TypeText           Other State/Province        ap
    TypeText           Other Zip/Postal Code       52206
    TypeText           Other Country               india
    TypeText           Fax                         7398878560
    PickList           Lead Source                 Web
    TypeText           Home Phone                  8987
    ClickText          Birthdate                   anchor=Home Phone
    DropDown           Pick a Year                 1979
    ClickText          Previous                    Month
    ClickText          Previous                    Month
    ClickText          Previous                    Month
    ClickText          20
    TypeText           Other Phone                 987946
    TypeText           Department                  testing department
    TypeText           Assistant                   no assistant
    TypeText           Asst. Phone                 00000034
    TypeText           Description                 learning copado robotic testing
    ClickText          Save                        partial_match=False
    UseModal           Off
    log                ${ContactMessage}
    ClickText          Details
    Sleep              5s

    # End creation of contacts
Update/Edit the Contact
    [Tags]             Updatecontact
    [Documentation]    update or Edit the Contact
    ClickText          Contacts
    ClickText          Select a List View: Contacts
    ClickText          All Contacts
    TypeText           Search this list...         Pleasehelp_11\n
    ClickText          Pleasehelp_11 Helptocreate_12
    ClickText          Details
    ClickText          Edit Mobile
    TypeText           Mobile                      5207207177
    ClickText          Save                        partial_match=False
    ClickText          Contacts
    ClickText          Select a List View: Contacts
    ClickText          All Contacts
    Log                ${ContactUpdate}
    #TypeText           Search this list...         Pleasehelp_9\n
    #ClickText          Pleasehelp_9 Helptocreate_10
    #ClickText          Details
    #VerifyText         Mobile
    #VerifyText         (420) 720-7177
    #ClickText          Contacts

Delete the Record from Contact
    [Tags]             DeleteContact
    [Documentation]    Open the record from the Contact List and delete Selected Record from the Contact
    ClickText          Contacts
    ClickText          Clear
    ClickText          Select a List View: Contacts
    ClickText          All Contacts                
    TypeText           Search this list...         Pleasehelp_11\n        
    ClickText          Pleasehelp_11 Helptocreate_12
    ClickText          Details
    ClickText          Show more actions
    ClickText          Delete
    UseModal           On
    VerifyText         Are you sure you want to delete this contact?
    ClickText          Delete
    Log                ${ContactDelete}
    #ClickText          Contacts
    #ClickText          Select a List View: Contacts
    #ClickText          All Contacts
    Sleep              3s
