'
' VBScript example
' Lists all the links in a web page
'

Class Script
    Dim driver

    Sub Class_Initialize
        Set driver = CreateObject("Selenium.IEDriver")
        driver.Get "https://www.google.co.uk"
        Set links = driver.FindElementsByTag("a").Attribute("href")
        WScript.Echo links.Count & " Links:" & vbCr & Join(links.Values, vbCr)
    End Sub

    Sub Class_Terminate
        driver.Quit    'Stop the browser
    End Sub
End Class

Set s = New Script
