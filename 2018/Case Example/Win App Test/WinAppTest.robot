*** Settings ***
Library           Selenium2Library
Library           Collections
Library           String
Library           AutoItLibrary    ${OUTPUTDIR}    10    ${True}

*** Test Cases ***
Mreport
    Run    C:\\VB\\MreportC\\MreportC.exe    C:\\VB\\MreportC
    Wait For Active Window    โปรแกรมแจ้งงานซ่อม ส่วนการแจ้งงานซ่อม Material Maintenance Report Client(MreportC) Version 4.2
    Comment    Control Click    โปรแกรมแจ้งงานซ่อม ส่วนการแจ้งงานซ่อม Material Maintenance Report Client(MreportC) Version 4.2    คอมพิวเตอร์    [CLASS:WindowsForms10.BUTTON.app.0.378734a]
    Control Focus    โปรแกรมแจ้งงานซ่อม ส่วนการแจ้งงานซ่อม Material Maintenance Report Client(MreportC) Version 4.2    ${EMPTY}    [NAME:tHead]
    Send    12345
    Comment    Control Command    โปรแกรมแจ้งงานซ่อม ส่วนการแจ้งงานซ่อม Material Maintenance Report Client(MreportC) Version 4.2    ${EMPTY}    [NAME:CmbPosition]    ShowDropDown    ${EMPTY}
    Control Focus    โปรแกรมแจ้งงานซ่อม ส่วนการแจ้งงานซ่อม Material Maintenance Report Client(MreportC) Version 4.2    ${EMPTY}    [NAME:CmbPosition]
    Send    {DOWN}
    Control Focus    โปรแกรมแจ้งงานซ่อม ส่วนการแจ้งงานซ่อม Material Maintenance Report Client(MreportC) Version 4.2    ${EMPTY}    [NAME:dtpStart]
    Send    {DOWN}{DOWN}
    Send    {RIGHT}
    Send    {DOWN}
    Comment    Control Command    โปรแกรมแจ้งงานซ่อม ส่วนการแจ้งงานซ่อม Material Maintenance Report Client(MreportC) Version 4.2    ${EMPTY}    [NAME:CmbPosition]    SelectString    ผู้จัดการ
    Comment    Send    !{F4}

GoodsOrder
    Run    C:\\VB\\GoodsOrder\\GoodsOrder.exe    C:\\VB\\GoodsOrder
    Wait For Active Window    Goods Order Version 1.07
    Control Click    Goods Order Version 1.07    สั่งสินค้า    [NAME:button2]
    Sleep    3
    Control Click    Goods Order Version 1.07    เพิ่ม    [NAME:button11]
    Wait For Active Window    Goods
