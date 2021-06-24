*** Settings ***
Library    SeleniumLibrary
Resource    ../Test/testHotel.robot

*** Variables ***
${url}    https://tiket.com

*** Keywords ***
open tiket.com
    Open Browser    ${url}    Chrome
    Maximize Browser Window

*** Test Cases ***
open Browser
    open tiket.com
click Hotel    
    user click ikonhotel 
click Destination
    user click destination
click DateCheckin
    user click dateCheckin
click AddGuest
    user click addGuest
click FindHotel
    user click findHotel
click FilterBreakfast
    user click filterBreakfast
click ChosenHotel
    user click chosenHotel