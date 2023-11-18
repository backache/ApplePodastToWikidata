#Get  URL
#http://itunes.apple.com/lookup?id=879979828
$Q = 'Q123470663'
#https://podcasts.apple.com/gb/genre/podcasts-sport/id1545
#$QID ="Q83060868"
#to do
# get the podcast logo URL and put it in P10286
# take <itunes:category text="Education"> and set it as genre
# get <link> and make it official website
$errstring=''
$debgstring=''

$AppleToWD = @{
    '1533'    = 'Q106393247' #science
    '1303' = 'Q105011645'
    #'26'='Q24634210' #   podcast
    '1525'='Q106393006' #  interview podcast (music)
    #'1525'='Q106393006' #  interview podcast
    #''='Q74303978' # news and journalism podcast
    '1563'='Q106747100' # film review podcast
    # ''='Q72910060' # companion podcast
    '1309'='Q105908617' # film and television podcast
    # ''='Q106405444' # skeptical podcast
    # ''='Q106634018' # government podcast
    # ''='Q106640639' # pets and animal podcast
    '1444'='Q106720962' # spirituality podcast
    # ''='Q106727696' # relationship podcast
    # ''='Q106744755' # volleyball podcast
    # ''='Q106749370' # outdoor podcastview
    # ''='Q106882447' # podcasting podcast
    # ''='Q106915059' # training podcast
    # ''='Q106997754' # video game music podcast
    # ''='Q114907029' # fantasy baseball podcast
    # ''='Q105011746' # crypto and blockchain podcast
    '1304'='Q105884862' # educational podcast
    # ''='Q105885086' # comics podcast
    '1512'='Q106625373' # health and fitness podcast
    '1324'='Q106625351' # society and culture podcast
    '1494'='Q106632707' # non-profit podcast
    # ''='Q106633376' # how-to podcast
    # ''='Q106639813' # mental health podcast
    # ''='Q106647217' # hobby podcast
    # ''='Q106633624' # comedy fiction podcast
    ''='Q106697982' #music interview podcast
    # ''='Q106698140' # entertainment news podcast
    '1489'='Q106704934' # news commentary podcast
    # ''='Q106727577' # earth science podcast
    # ''='Q106727595' # nature podcast
    '1554'='Q106727771' # cricket podcast
    '1546'='Q106727901' # association football podcast
    '1560'='Q106727832' # fantasy sports podcast
    # ''='Q106727914' # golf podcast
    '1483'='Q105885059' # fiction podcast
    # ''='Q106882567' # programming podcast
    # ''='Q106996728' # sales podcast
    # ''='Q106393247' # science podcast
    # ''='Q104822202' # LGBT podcast
    # ''='Q106640442' # children and family podcast
    # ''='Q106647192' # role-playing or board game podcast
    # ''='Q106704989' # tech news podcast
    # ''='Q106727580' # life science podcast
    # ''='Q106727606' # social science podcast
    # ''='Q106727935' # rugby podcast
    # ''='Q106747061' # film ' #  podcast
    '1561'='Q106747143' # television review podcast
    # ''='Q106748640' # athletics podcast
    # ''='Q106882423' # Apple podcast
    # ''='Q106914773' # drama podcast
    # ''='Q106914963' # educational technology podcast
    # '1484'='Q106997767' # retro gaming podcast
    # ''='Q28136925' # horror podcast
    # ''='Q115835375' # economics podcast
    # ''='Q105884943' # feminist podcast
    '1459'='Q106625210' # fashion and beauty podcast
    #''='Q106625305' # investment podcast
    '1406'='Q106625239' # visual arts podcast
    '1495'='Q106633165' # improvised comedy podcast
    '1484'='Q106633763' # drama fiction podcast
    '1556'='Q106727999' # tennis podcast
    # ''='Q106747030' # film history podcast
    # ''='Q106749118' # amateur sports podcast
    # ''='Q106779416' # wicca and witchcraft podcast
    # ''='Q106914977' # higher education podcast
    '1314'='Q1011299' # religion and spirituality podcast
    # ''='Q106697970' # music commentary podcast
    # ''='Q106720947' # Buddhistic podcast
    # ''='Q106720953' # Hinduistic podcast
    # ''='Q108357966' # actual play podcast
    '1485'='Q105885182' # science fiction podcast
    '1487'='Q105011823' # history podcast
    # ''='Q106720957' # Jewish podcast
    # ''='Q107442212' # ecology and enviromental podcast
    # ''='Q86833385' # video game podcast
    # ''='Q106625193' # literary podcast
    #'1303'='Q106633152' # comedy  podcast
    # ''='Q106639809' # fitness podcast
    # ''='Q106639851' # pornographic or erotic podcast
    # ''='Q106640680' # aviation podcast
    # ''='Q106640655' # kid's story podcast
    # ''='Q106640665' # leisure podcast
    '1526'='Q106698131' # daily news podcast
    # ''='Q106720960' # religious podcast
    # ''='Q106727563' # chemistry podcast
    '1549'='Q106727748' # baseball podcast
    # ''='Q106727590' # naturalist podcast
    # ''='Q106748460' # combat sports podcast
    # ''='Q106882617' # web design podcast
    # ''='Q106902380' # storytelling podcast
    # ''='Q106914698' # self-help podcast
    # ''='Q106915044' # K-12 podcast
    # ''='Q106997772' # arcade games podcast
    # ''='Q106997761' # PC gaming podcast
    # ''='Q105007352' # business and finance podcast
    # ''='Q105011645' # comedy and humor podcast
    # ''='Q105011790' # anime and manga podcast
    '1301'='Q105882178' # arts podcast
    # ''='Q105882199' # automobile and automotive podcast
    # ''='Q105474650' # fantasy podcast
    # ''='Q106393042' # law and justice podcast
    # ''='Q106625419' # documentary podcast
    '1491'='Q106625324' # marketing podcast
    '1518'='Q106625375' # medicine podcast
    # ''='Q106633353' # course podcast
    # ''='Q106633193' # stand-up comedy podcast
    # ''='Q106633485' # language learning podcast
    # ''='Q106639844' # nutrition podcast
    # ''='Q106640589' # children's educational podcast
    # ''='Q106647111' # crafts podcast
    # ''='Q106727619' # personal journal podcast
    # ''='Q106727950' # running podcast
    # ''='Q106727966' # swimming podcast
    '1555'='Q106745341' # wrestling podcast
    # ''='Q106749214' # college and high school sports podcast
    # ''='Q106779377' # astrology podcast
    # ''='Q106882433' # gadget podcast
    '1516'='Q106914703' # sex and sexuality podcast
    # ''='Q106996733' # shopping podcast
    # ''='Q106997718' # english learning podcast
    # ''='Q106997706' # SEO marketing podcast
    # ''='Q4088259' # blogcast
    # ''='Q105885166' # speculative/fantastic fiction podcast
    # ''='Q106707362' # Islamic podcast
    '1527'='Q28135032' # political podcast
    # ''='Q106720951' # Christian podcast
    # ''='Q106779606' # Taoistic podcast
    '1509'='Q110164689' # games podcast
    # ''='Q105012297' # film podcast
    # ''='Q105850136' # advice podcast
    # ''='Q106392517' # astronomy podcast
    '1318'='Q105012442' # technology podcast
    '1488'='Q105012024' # true crime podcast
    '1545'='Q105440808' # sports podcast
    # ''='Q106393132' # philosophy podcast
    # ''='Q106393171' # socialist podcast
    '1310'='Q105580963' # music podcast
    '1320'='Q106462625' # places and travel podcast
    '1405'='Q106625222' # performing arts podcast
    #''='Q106625318' # management podcast
    # ''='Q106639800' # alternative health podcast
    #''='Q106625263' # career podcast
    # ''='Q106681812' # political satire podcast
    # ''='Q106697896' # home and gardening podcast
    # ''='Q106698068' # business news podcast
    # ''='Q106704937' # sports news podcast
    '1548'='Q106727754' # basketball podcast
    '1536'='Q106727584' # mathematics podcast
    '1542'='Q106727600' # physics podcast
    # ''='Q106745097' # wilderness podcast
    '1547'='Q106748356' # american football podcast
    # ''='Q106779676' # atheistic podcast
    # ''='Q106882658' # audio drama podcast
    # ''='Q106882589' # VR and AR podcast
    # ''='Q106902607' # personal finance podcast
    # ''='Q106996766' # startup podcast
    # ''='Q106996797' # venture capital podcast
    # ''='Q106997784' # esports podcast
    # ''='Q108263475' # skate podcast
    # ''='Q106070543' # pop culture podcast
    # ''='Q114907042' # fantasy football podcast
    # ''='Q105908707' # television podcast
    '1306'='Q106392716' # food and drinks podcast
    # ''='Q106392992' # improvisational podcast
    '1402'='Q106625205' # design podcast
    #''='Q106625270' # entrepreneur podcast
    # ''='Q106633543' # self-improvement podcast
    # ''='Q106640603' # parenting podcast
    # ''='Q106697975' # music history podcast
    # ''='Q106727922' # hockey podcast
    # ''='Q106746993' # aftershow podcast
    # ''='Q106873456' # popular science podcast
    # ''='Q106882415' # AI and data science podcast
    # ''='Q106912483' # animation podcast
    # ''='Q107442166' # entertainment podcast

}


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
   
    #From the Wikidata Dictionary  extra the value of the newest web feed URL
    $APPLEID=$WD.statements.p5842.value.content | Sort-Object -Property ID| Select-Object -first 1
    $URL = 'http://itunes.apple.com/lookup?id='+$APPLEID

    # Go and get Apple's data
    try {
        $Response = Invoke-WebRequest -Uri "$URL" -UseBasicParsing -ContentType "application/xml"

        $Feed =$Response.Content| ConvertFrom-Json 

        [datetime]$date=get-date
        $datestr = $date.ToString("yyyy-MM-dd")
        [datetime]$releasedate = $feed.results.releasedate
        $releasedatestr = $releasedate.ToString("yyyy-MM-dd")
        $span=new-timespan -Start $feed.results.releasedate -End $date
        if ($span.Days -gt 365) {$out = "%7C%7C$QID%7CP582%7C%2b$($releasedatestr)T00:00:00Z%2F11%7CP585%7C%2b$($datestr)T00:00:00Z%2F11%7CS248%7CQ70058728%7CP813"}
        #get the largest number of podcasts the wikidata entry has
        $AppleAmount=$Feed.Results.trackCount
        $BiggestWDamount=0
        ForEach ($CountEntry in $WD.statements.p1113.value.content.amount) {
    
            if ($CountEntry.length -gt 0) {$currentcount = $CountEntry.Substring(1)}
            if ($currentcount -gt $BiggestWDamount) {$BiggestWDamount=$currentcount} 
         }
        if ($AppleAmount -gt $BiggestWDamount) {$out = "%7C%7C$QID%7CP1113%7C$AppleAmount%7CP585%7C%2b$($datestr)T00:00:00Z%2F11%7CS248%7CQ70058728"}
 #removed date retrieved %7CP813%7C%2b$($datestr)T00:00:00Z%2F11
        foreach ($Qitem in $Feed.results.genreIds) {
            #$Qitem
         $genre=$AppleToWD[$QItem]
        if ($genre.length -gt 0) {$out += "%7C%7C$QID%7CP136%7C$genre%7CS248%7CQ70058728%7CP813"}   
        }
        if ($WD.statements.p2561.value.content.length -gt 0){
            $name=$WD.statements.p2561.value.content
            $name=[System.Web.HTTPUtility]::UrlEncode($name)
            $out += "%7C%7C-$QID%7CP2561%7C%22$name%22"
        }

        if ($WD.statements.p10286.value.content.length -eq 0){
            #   Write-Output "set it"
               $logoURL=$feed.Results.artworkUrl600
               if ($logoURL.length -eq 0){$logoURL=$feed.Results.artworkUrl300}
               if ($logoURL.length -eq 0){$logoURL=$feed.Results.artworkUrl100}
               if ($logoURL.length -eq 0){$logoURL=$feed.Results.artworkUrl60}
               if ($logoURL.length -eq 0){$logoURL=$feed.Results.artworkUrl30}
               if ($logoURL.length -gt 0){
               $logoURLencoded=[System.Web.HTTPUtility]::UrlEncode($logoURL)
               $out += "%7C%7C$QID%7CP10286%7C%22$logoURLencoded%22%7CS248%7CQ70058728%7CP813"}
           }

           if ($WD.statements.p1019.value.content.length -eq 0){
            #   Write-Output "set it"
               $rssURL=$feed.Results.feedUrl
               if ($rssURL.length -gt 0){
               $rssURLencoded=[System.Web.HTTPUtility]::UrlEncode($rssURL)
               $out += "%7C%7C$QID%7CP1019%7C%22$rssURLencoded%22%7CS248%7CQ70058728%7CP813"}
           }



    #       $output = "https://quickstatements.toolforge.org/#/v1="
   #$output = $output + $out
   #Start-Process "chrome.exe" "$output"
   #$feed.results.genreIds
   #$feed.results.genres   
    }
    catch {$errstring+="Cannot download podcast feed for $QID"
} 
    return $out
}
#$out += "%7C%7C$QID%7CP1019%7C$URL%7CP2241%7C$Q1193907"
$output = "https://quickstatements.toolforge.org/#/v1="
$spawncount=0
$ratelimitcount=0
foreach ($Qitem in $Q) {
    $ratelimitcount=$ratelimitcount+1
    $spawncount=$spawncount+1
    $itemoutput = Send-Wikidata($Qitem)
    $output = $output + $itemoutput
    $ratelimitcount

    if ($ratelimitcount -eq 20) {Start-sleep -seconds 60
        $ratelimitcount=0}
   if ($output.length -gt 3000) {Start-Process "chrome.exe" "$output"
   $output = "https://quickstatements.toolforge.org/#/v1="
            $spawncount=0}
            
}
       Start-Process "chrome.exe" "$output"
$output
#   Start-Process "chrome.exe" "$output"
