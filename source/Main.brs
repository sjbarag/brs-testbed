sub Main()
    screen = createObject("roSGScreen")
    m.msgPort = createObject("roMessagePort")
    screen.setMessagePort(m.msgPort)

    main = screen.createScene("Main")

    ' use #222222 as the background color, which requires assigning an empty string as the background URI
    main.backgroundUri = ""
    main.backgroundColor = "0x222222ff"
    screen.show()

    while(true)
        msg = wait(0, m.msgPort)
        msgType = type(msg)

        if msgType = "roSGScreenEvent"
            if msg.isScreenClosed() then return
        end if
    end while
end sub
