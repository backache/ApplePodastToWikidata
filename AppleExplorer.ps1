    #$APPLEID='1434243584' #lex fridman
    #$QID='Q109248984' #lex

    $URL = 'http://itunes.apple.com/lookup?id='+$APPLEID
    $output = "https://quickstatements.toolforge.org/#/v1="
    $out=''

    $APPLEID='1321808251' #cheapshow
    $QID='Q110555759' #cheapshow

   

    $AppleToWD = @{
        '1318'    = 'Q105012442'
        '1533'    = 'Q106393247'
        '1303' = 'Q105011645'
        #'26'='Q104822033' #  interview podcast
     
        #'26'='Q106393006' #  interview podcast
        # ''='Q74303978' # news and journalism podcast
        # ''='Q106747100' # film review podcast
        # ''='Q72910060' # companion podcast
        '1309'='Q105908617' # film and television podcast
        # ''='Q106405444' # skeptical podcast
        # ''='Q106634018' # government podcast
        # ''='Q106640639' # pets and animal podcast
        # ''='Q106720962' # spirituality podcast
        # ''='Q106727696' # relationship podcast
        # ''='Q106744755' # volleyball podcast
        # ''='Q106749370' # outdoor podcastview
        # ''='Q106882447' # podcasting podcast
        # ''='Q106915059' # training podcast
        # ''='Q106997754' # video game music podcast
        # ''='Q114907029' # fantasy baseball podcast
        # ''='Q105011746' # crypto and blockchain podcast
        # ''='Q105884862' # educational podcast
        # ''='Q105885086' # comics podcast
        # ''='Q106625373' # health and fitness podcast
        # ''='Q106625351' # society and culture podcast
        # ''='Q106632707' # non-profit podcast
        # ''='Q106633376' # how-to podcast
        # ''='Q106639813' # mental health podcast
        # ''='Q106647217' # hobby podcast
        # ''='Q106633624' # comedy fiction podcast
        # ''='Q106697982' # music ' #  podcast
        # ''='Q106698140' # entertainment news podcast
        # ''='Q106704934' # news commentary podcast
        # ''='Q106727577' # earth science podcast
        # ''='Q106727595' # nature podcast
        # ''='Q106727771' # cricket podcast
        # ''='Q106727901' # association football podcast
        # ''='Q106727832' # fantasy sports podcast
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
        # ''='Q106747143' # television review podcast
        # ''='Q106748640' # athletics podcast
        # ''='Q106882423' # Apple podcast
        # ''='Q106914773' # drama podcast
        # ''='Q106914963' # educational technology podcast
        # '1484'='Q106997767' # retro gaming podcast
        # ''='Q28136925' # horror podcast
        # ''='Q115835375' # economics podcast
        # ''='Q105884943' # feminist podcast
        # ''='Q106625210' # fashion and beauty podcast
        # ''='Q106625305' # investment podcast
        # ''='Q106625239' # visual arts podcast
        # ''='Q106633165' # improvised comedy podcast
        '1484'='Q106633763' # drama fiction podcast
        # ''='Q106727999' # tennis podcast
        # ''='Q106747030' # film history podcast
        # ''='Q106749118' # amateur sports podcast
        # ''='Q106779416' # wicca and witchcraft podcast
        # ''='Q106914977' # higher education podcast
        # ''='Q1011299' # religion and spirituality podcast
        # ''='Q106697970' # music commentary podcast
        # ''='Q106720947' # Buddhistic podcast
        # ''='Q106720953' # Hinduistic podcast
        # ''='Q108357966' # actual play podcast
        # '1485'='Q105885182' # science fiction podcast
        # ''='Q105011823' # history podcast
        # ''='Q106720957' # Jewish podcast
        # ''='Q107442212' # ecology and enviromental podcast
        # ''='Q86833385' # video game podcast
        # ''='Q106625193' # literary podcast
        # ''='Q106633152' # comedy ' #  podcast
        # ''='Q106639809' # fitness podcast
        # ''='Q106639851' # pornographic or erotic podcast
        # ''='Q106640680' # aviation podcast
        # ''='Q106640655' # kid's story podcast
        # ''='Q106640665' # leisure podcast
        # ''='Q106698131' # daily news podcast
        # ''='Q106720960' # religious podcast
        # ''='Q106727563' # chemistry podcast
        # ''='Q106727748' # baseball podcast
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
        # ''='Q105882178' # arts podcast
        # ''='Q105882199' # automobile and automotive podcast
        # ''='Q105474650' # fantasy podcast
        # ''='Q106393042' # law and justice podcast
        # ''='Q106625419' # documentary podcast
        # ''='Q106625324' # marketing podcast
        # ''='Q106625375' # medicine podcast
        # ''='Q106633353' # course podcast
        # ''='Q106633193' # stand-up comedy podcast
        # ''='Q106633485' # language learning podcast
        # ''='Q106639844' # nutrition podcast
        # ''='Q106640589' # children's educational podcast
        # ''='Q106647111' # crafts podcast
        # ''='Q106727619' # personal journal podcast
        # ''='Q106727950' # running podcast
        # ''='Q106727966' # swimming podcast
        # ''='Q106745341' # wrestling podcast
        # ''='Q106749214' # college and high school sports podcast
        # ''='Q106779377' # astrology podcast
        # ''='Q106882433' # gadget podcast
        # ''='Q106914703' # sex and sexuality podcast
        # ''='Q106996733' # shopping podcast
        # ''='Q106997718' # english learning podcast
        # ''='Q106997706' # SEO marketing podcast
        # ''='Q4088259' # blogcast
        # ''='Q105885166' # speculative/fantastic fiction podcast
        # ''='Q106707362' # Islamic podcast
        # ''='Q28135032' # political podcast
        # ''='Q106720951' # Christian podcast
        # ''='Q106779606' # Taoistic podcast
        # ''='Q110164689' # games podcast
        # ''='Q105012297' # film podcast
        # ''='Q105850136' # advice podcast
        # ''='Q106392517' # astronomy podcast
        # ''='Q105012442' # technology podcast
        # ''='Q105012024' # true crime podcast
        # ''='Q105440808' # sports podcast
        # ''='Q106393132' # philosophy podcast
        # ''='Q106393171' # socialist podcast
        # ''='Q105580963' # music podcast
        # ''='Q106462625' # places and travel podcast
        # ''='Q106625222' # performing arts podcast
        # ''='Q106625318' # management podcast
        # ''='Q106639800' # alternative health podcast
        # ''='Q106625263' # career podcast
        # ''='Q106681812' # political satire podcast
        # ''='Q106697896' # home and gardening podcast
        # ''='Q106698068' # business news podcast
        # ''='Q106704937' # sports news podcast
        # ''='Q106727754' # basketball podcast
        # ''='Q106727584' # mathematics podcast
        # ''='Q106727600' # physics podcast
        # ''='Q106745097' # wilderness podcast
        # ''='Q106748356' # american football podcast
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
        # ''='Q106392716' # food and drinks podcast
        # ''='Q106392992' # improvisational podcast
        # ''='Q106625205' # design podcast
        # ''='Q106625270' # entrepreneur podcast
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

    # Go and get Apple's data
        $Response = Invoke-WebRequest -Uri "$URL" -UseBasicParsing -ContentType "application/xml"

        $Feed =$Response.Content| ConvertFrom-Json 

        foreach ($Qitem in $Feed.results.genreIds) {
            #$Qitem
         $genre=$AppleToWD[$QItem]
        if ($genre.length -gt 0) {$out += "%7C%7C$QID%7CP136%7C$genre%7CS248%7CQ70058728%7CP813"}   
        }
        $feed.results.genreIds
        $feed.results.genres
        $output = $output + $out

       Start-Process "chrome.exe" "$output"