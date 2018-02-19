sub Main()
    print "welcome"
    mainScreen = createObject("roSGScreen")
    m.msgPort = createObject("roMessagePort")
    mainScreen.setMessagePort(m.msgPort)

    testbed = mainScreen.createScene("Testbed")
    mainScreen.show()

    while(true)
        msg = wait(0, m.msgPort)
        msgType = type(msg)

        if msgType = "roSGScreenEvent"
            if msg.isScreenClosed() then return
        end if
    end while
end sub
