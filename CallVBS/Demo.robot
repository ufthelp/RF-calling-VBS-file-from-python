*** Settings ***
Library           Lib/Utility.py    # External python functions

*** Variables ***
${SCRIPTPATH}     ${EXECDIR}\\Lib\\Help.vbs

*** Test Cases ***
CallVBS
    #Call the VBS function
    ${success}    Call VBS    ${SCRIPTPATH}
    Run Keyword If    "${success}"=="FAIL"    FAIL    Not able to launch VBS file
    log    ${SCRIPTPATH}
