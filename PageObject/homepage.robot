*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${ikonhotel}        xpath://span[contains(text(),'Hotel')]
${tujuan}           id:destination-input
${bali}             xpath://*[contains(text(),'Bali')]
${checkin}          id:date-input-startdate
${dateci}           xpath://div[@id='checkinDate']//div[@role='dialog']//div[@class='content']//div[@class='popup-content']//div[@class='date-range-popup-container']//div[contains(@class,'range-picker start')]//div//div[@aria-label='Mon Jul 19 2021']//div[contains(@class,'day-mod-body')][normalize-space()='19']
${dateco}           xpath://div[@id='checkoutDate']//div[@role='dialog']//div[@class='content']//div[@class='popup-content']//div[@class='date-range-popup-container']//div[contains(@class,'range-picker end')]//div//div[@aria-label='Tue Jul 20 2021']//div[contains(@class,'day-mod-body')][normalize-space()='20']
${twoGuest}        xpath://*[@id="guestAndRoom"]/div/div/div[2]/div/div[2]/div[2]/div[3]/i
${done}            xpath://*[contains(text(),'Selesai')]
${find}            xpath://*[contains(text(),'Cari Hotel')]
${otherFilter}     xpath://*[contains(text(),'Filter Lainnya')]
${breakfast}       xpath://body/div[@id='app']/main/div[@class='hotel-search-list']/div[@class='header-search-wrapper']/div[@class='filter-bar']/div[@class='container flex']/div[@class='filter-bar-content']/div[@class='popover-dropdown']/div[@class='more-filter-popover']/div[@class='tix-pop-over top-bottom show']/div[@class='popover-dropdown-popover']/div[@class='popover-content']/div[@class='more-filter-wrapper']/div[1]/div[1]
${villa}           xpath://*[contains(text(),'Villa')]
${applyFilter}     xpath://*[contains(text(),'Terapkan')]
${hotel}           xpath://*[contains(text(),'The Apurva Kempinski Bali')]



*** Keywords ***
click ikonhotel
    click Element    ${ikonhotel}
click destination
    Wait Until Element Is Visible    ${tujuan}
    click Element    ${tujuan}
    input text       ${tujuan}    Bali
    click Element    ${bali}

click dateCheckin
    click Element    ${checkin}
    click Element    ${dateci}
    click Element    ${dateco}

click addGuest
    click Element    ${twoGuest}
    click Element    ${done}

click findHotel
    click Element    ${find}

click filterBreakfast
    Wait Until Element Is Visible    ${otherFilter}
    click Element    ${otherFilter}
    click Element    ${breakfast}
    click Element    ${villa}
    click Element    ${applyFilter}

click chosenHotel
    Wait Until Element Is Visible    ${hotel} 
    click Element    ${hotel}

# click room 
#     Wait Until Element Is Visible    ${room}
#     Scroll Element In To View   ${topRoom}






