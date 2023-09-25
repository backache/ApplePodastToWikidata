#Get  URL
#http://itunes.apple.com/lookup?id=1411257149
$Q ='Q244869','Q1200587','Q1796856','Q4730020','Q4770811','Q5500109','Q5593660','Q6691681','Q7534660','Q7719546','Q7828066','Q8038522','Q15995072','Q16001054','Q17055759','Q17075542','Q18981151','Q19599503','Q20746348','Q21504132','Q22907952','Q27058061','Q27962618','Q28126603','Q28136616','Q28154756','Q29831996','Q30102076','Q39057764','Q39060126','Q43307108','Q47507321','Q48806075','Q55394405','Q55631015','Q55919161','Q56073654','Q56542667','Q58314970','Q59532114','Q60763858','Q61565788','Q63089911','Q64023922','Q64084176','Q64398237','Q64535837','Q64536292','Q65029527','Q65057110','Q65062788','Q65090946','Q65091325','Q65120935','Q65148979','Q65160089','Q66314459','Q67361333','Q68131854','Q68789992','Q71379113','Q73611391','Q76167254','Q77307737','Q79388328','Q79389895','Q79675897','Q80575723','Q83060868','Q84263800','Q84993101','Q85748336','Q90785055','Q92586583','Q93458251','Q93916020','Q93984347','Q96410964','Q96759387','Q96787632','Q97354731','Q97376487','Q98594221','Q98605746','Q99746006','Q100896082','Q101011912','Q101011979','Q101013097','Q101356160','Q111327751','Q116149735','Q119470852','Q1185824','Q2917613','Q2992067','Q3208519','Q3228577','Q3324704','Q4103885'
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

    #Retrieve the wikidata item and put in a variable called WD then show me what you got
    $Response = Invoke-WebRequest -Uri "https://wikidata.org/w/rest.php/wikibase/v0/entities/items/$QID" -UseBasicParsing
    If ($Response.StatusCode -ne "200") {
        # WD failed to respond.
        Write-Host "Message: $($Response.StatusCode) $($Response.StatusDescription)"
    }

    #Make a dictionary of the response from Wikidata
    $WD = $response | ConvertFrom-Json
    #$WD
    #if more than one $URL=$WD.statements.p1019.value.content[1]
    #if just one $URL=$WD.statements.p1019.value.content
   
    #From the WIkidate Dictionary  extra the value of the newest web feed URL
    $APPLEID=$WD.statements.p5842.value.content | Sort-Object -Property ID| Select-Object -first 1
    $URL = 'http://itunes.apple.com/lookup?id='+$APPLEID

    # Go and get the RSS file
    try {
        $Response = Invoke-WebRequest -Uri "$URL" -UseBasicParsing -ContentType "application/xml"

        $Feed =$Response.Content| ConvertFrom-Json 

        [datetime]$date=get-date
        $datestr = $date.ToString("yyyy-MM-dd")
        [datetime]$releasedate = $feed.results.releasedate
        $releasedatestr = $releasedate.ToString("yyyy-MM-dd")
        $span=new-timespan -Start $feed.results.releasedate -End $date
        
        #$dateURLencoded=[System.Web.HTTPUtility]::UrlEncode($feed.results.releasedate)
        if ($span.Days -gt 365) {$out = "%7C%7C$QID%7CP582%7C%2b$($releasedatestr)T00:00:00Z%2F11%7CP585%7C%2b$($datestr)T00:00:00Z%2F11"}
        #get the largest number of podcasts the wididata entry has
        $AppleAmount=$Feed.Results.trackCount
        $BiggestWDamount=0
        ForEach ($CountEntry in $WD.statements.p1113.value.content.amount) {
    
            if ($CountEntry.length -gt 0) {$currentcount = $CountEntry.Substring(1)}
            if ($currentcount -gt $BiggestWDamount) {$BiggestWDamount=$currentcount} 
         }
        if ($AppleAmount -gt $BiggestWDamount) {$out = "%7C%7C$QID%7CP1113%7C$AppleAmount%7CP585%7C%2b$($datestr)T00:00:00Z%2F11"}
 
        if ($WD.statements.p1019.value.content.length -eq 0){
            #   Write-Output "set it"
               $rssURL=$feed.Results.feedUrl
               if ($rssURL.length -gt 0){
               $rssURLencoded=[System.Web.HTTPUtility]::UrlEncode($rssURL)
               $out += "%7C%7C$QID%7CP1019%7C%22$rssURLencoded%22"}
           }

    #       $output = "https://quickstatements.toolforge.org/#/v1="
   #$output = $output + $out
   #Start-Process "chrome.exe" "$output"
        
    }
    catch {$errstring+="Cannot download podcast feed for $QID"
} 
    return $out
}
#$out += "%7C%7C$QID%7CP1019%7C$URL%7CP2241%7C$Q1193907"
$output = "https://quickstatements.toolforge.org/#/v1="

$ratelimitcount=0
foreach ($Qitem in $Q) {
    $ratelimitcount=$ratelimitcount+1
    $itemoutput = Send-Wikidata($Qitem)
    $output = $output + $itemoutput
    if ($ratelimitcount -eq 20) {Start-sleep -seconds 60
        $ratelimitcount=0}
}
       Start-Process "chrome.exe" "$output"
$output
#   Start-Process "chrome.exe" "$output"
