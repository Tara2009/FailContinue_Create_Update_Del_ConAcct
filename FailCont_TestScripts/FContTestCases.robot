# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Resource                   ../FailCont_Resource/FContCommon.robot
Suite Setup                Setup Browser
Suite Teardown             End suite

*** Variables ***
${ContactMessage}        Hup! Contact created Successfully.

*** Test Cases ***
Entering a Contacts
    [Tags]                 Contact
    Appstate               Home
    LaunchApp              Sales
    ClickText              Contacts
    ClickUntil             New Contact                 New
    UseModal               On
    TypeText               Phone                       +917396637450
    Picklist               Salutation                  Mr.
    TypeText               First Name                  Pleasehelp
    TypeText               Last Name                   Helptocreate
    ComboBox               Search Accounts...          GenePoint
    TypeText               Email                       tvsh@gmail.com
    TypeText               Title                       project16
    TypeText               Mailing Street              hanuman nagar 4th line
    TypeText               Mailing City                guntur
    TypeText               Mailing State/Province      ap
    TypeText               Mailing Zip/Postal Code     522006
    TypeText               Mailing Country             india
    TypeText               Other Street                vijayapuri colony
    TypeText               Other City                  guntur
    TypeText               Other State/Province        ap
    TypeText               Other Zip/Postal Code       52206
    TypeText               Other Country               india
    TypeText               Fax                         7398878560
    PickList               Lead Source                 Web
    TypeText               Home Phone                  8987
    ClickText              Birthdate                   anchor=Home Phone
    DropDown               Pick a Year                 1979
    ClickText              Previous                    Month
    ClickText              Previous                    Month
    ClickText              Previous                    Month
    ClickText              20
    TypeText               Other Phone                 987946
    TypeText               Department                  testing department
    TypeText               Assistant                   no assistant
    TypeText               Asst. Phone                 00000034
    TypeText               Description                 learning copado robotic testing
    ClickText              Save                        partial_match=False
    UseModal               Off
    log                    ${ContactMessage}
    ClickText              Details

    # End creation of contacts
