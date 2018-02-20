function onKeyEvent(key as String, press as Boolean) as Boolean
    print "GOT A KEY"
    if press then
        if key = "OK" then
            print "Received OK event on", m.top.uri
            return true
        end if
    end if

    return false
end function
