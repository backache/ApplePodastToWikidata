    $APPLEID='1434243584' #lex fridman
    $URL = 'http://itunes.apple.com/lookup?id='+$APPLEID
    $QID='Q109248984'

    $AppleToWD = @{
        '1318'    = 'Q105012442'
        '1533'    = 'Q106393247'
    
    }

    # Go and get Apple's data
        $Response = Invoke-WebRequest -Uri "$URL" -UseBasicParsing -ContentType "application/xml"

        $Feed =$Response.Content| ConvertFrom-Json 

        foreach ($Qitem in $Feed.results.genreIds) {
            $Qitem
         $genre=$AppleToWD[$QItem]
        if ($genre.length -gt 0) {$out += "%7C%7C$QID%7CP136%7C$genre%7CS248%7CQ70058728%7CP813"}   
        }