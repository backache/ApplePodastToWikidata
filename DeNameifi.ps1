#Get  URL
#http://itunes.apple.com/lookup?id=1411257149
$Q = 'Q386813','Q5157411','Q5215376','Q13835647','Q24034462','Q98594067','Q98596483','Q105747334','Q109640080','Q109673371','Q110545509','Q110555592','Q110560867','Q110597510','Q111043029','Q111149454','Q113758030','Q117191036','Q117821489','Q118640309','Q120716452','Q120781837','Q122723366','Q123179100','Q123200168','Q123281075','Q123282026','Q123285308','Q123311626','Q123377480','Q123396144','Q123398216','Q123398245','Q123398250','Q123398259','Q123398264','Q123398276','Q123398282','Q123398286','Q123398289','Q123398293','Q123401250','Q123401326','Q123401325','Q123401328','Q123401710','Q123401709','Q123509683','Q123511410','Q123511430','Q123511446','Q123511468','Q123511475','Q123511747','Q123511860','Q123517981'
#$QID ="Q83060868"
#to do
# get the podcast logo URL and put it in P10286
# take <itunes:category text="Education"> and set it as genre
# get <link> and make it official website
$errstring=''
$debgstring=''
function Send-Wikidata {

    param (
        $QID
    )
    $out =""
    #$QID ="Q5597021"

    #Retrieve the wikidata item and put in a variable called WD then show me what you got
    $Response = Invoke-WebRequest -Uri "https://wikidata.org/w/rest.php/wikibase/v0/entities/items/$QID" -UseBasicParsing
    If ($Response.StatusCode -ne "200") {
        # WD failed to respond.
        Write-Host "Message: $($Response.StatusCode) $($Response.StatusDescription)"
    }

    #Make a dictionary of the response from Wikidata
    $WD = $response | ConvertFrom-Json
    $statement=$WD.statements.P2561.id
    if ($statement.length -gt 0) {
    $out += "%7C%7C-STATEMENT%7C$($WD.statements.P2561.id)"}

    return $out
}
#$out += "%7C%7C$QID%7CP1019%7C$URL%7CP2241%7C$Q1193907"
$output = "https://quickstatements.toolforge.org/#/v1="
foreach ($Qitem in $Q) {
    $itemoutput = Send-Wikidata($Qitem)
    $output = $output + $itemoutput
}
       Start-Process "chrome.exe" "$output"
$output
#   Start-Process "chrome.exe" "$output"
