sub init()
    testFileList = m.top.findNode("testFiles")
    boundingRect = testFileList.boundingRect()
    testFileList.translation = [ (1280 - boundingRect.width) / 2, (720 - boundingRect.height) / 2 ]

    testFileList.observeField("itemSelected", "onItemSelected")
    m.top.setFocus(true)
end sub

sub onItemSelected(message as Object)
    selectedIndex = message.getData()
    selectedFile = message.getRoSGNode().content.getChild(selectedIndex)
    run(selectedFile.uri)

    compileErrors = GetLastRunCompileError()
    if compileErrors <> invalid and compileErrors.count() > 0 then
        for each error in compileErrors
            print error
        end for
    end if

    runtimeError = GetLastRunRuntimeError()
    if runtimeError <> invalid and runtimeError > 0 then
        print runtimeError
    end if
end sub
