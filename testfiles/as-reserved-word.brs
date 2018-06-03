function Main()
    print "hello world"

    as = 10
    print "as = "; as

    print "calling foo(5)"
    foo(5)

    print "calling bar(25)"
    bar(25)

    print "calling baz(17)"
    baz(17)

    print "calling bar(false)"
    'bar(false)
end function

function foo(r)
    print "r ="; r
    as = 1000
    print "as = "; as
end function

sub bar(s as integer)
    print "s ="; s
    as = 999
    print "as = "; as
end sub

sub baz(as as integer)
    print "as (arg) = "; as
end sub
