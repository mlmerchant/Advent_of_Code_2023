#!/bin/bash
# Run using https://tio.run/#bash

# use calibration or challenge
DATA="challenge"
FOLDER="data"
DEBUG="false"


mkdir $FOLDER
cd $FOLDER || exit 5

cat << EOF  > "calibration"
seeds: 79 14 55 13

seed-to-soil map:
50 98 2
52 50 48

soil-to-fertilizer map:
0 15 37
37 52 2
39 0 15

fertilizer-to-water map:
49 53 8
0 11 42
42 0 7
57 7 4

water-to-light map:
88 18 7
18 25 70

light-to-temperature map:
45 77 23
81 45 19
68 64 13

temperature-to-humidity map:
0 69 1
1 0 69

humidity-to-location map:
60 56 37
56 93 4
EOF
cat << EOF  > "challenge"
seeds: 2906961955 52237479 1600322402 372221628 2347782594 164705568 541904540 89745770 126821306 192539923 3411274151 496169308 919015581 8667739 654599767 160781040 3945616935 85197451 999146581 344584779

seed-to-soil map:
2328388605 1716277852 240111965
3183744888 3056742994 1057221520
0 1574488136 141789716
886579086 0 430196980
141789716 2525350732 49125971
881053613 1956389817 5525473
3131936012 3013025394 43717600
629464378 1322898901 251589235
2568500570 1961915290 563435442
190915687 2574476703 438548691
3175653612 4113964514 8091276
1435686684 430196980 892701921
1316776066 4122055790 118910618

soil-to-fertilizer map:
0 847324382 159395290
1690371026 1633839702 81823607
1942873068 561308539 283153025
702170285 347687930 213620609
477747447 1412279682 221560020
1284811016 1006719672 253212372
2226026093 170678435 177009495
3187826244 2792977617 352243190
4225283470 3206651416 69683826
2970405965 3691658787 56026212
1538023388 1259932044 152347638
1772194633 0 170678435
3540069434 3376298700 315360087
159395290 2084683431 318352157
915790894 1715663309 369020122
2792977617 4117538948 177428348
3026432177 3145220807 61430609
699307467 844461564 2862818
3855429521 3747684999 21637270
3877066791 3769322269 348216679
3087862786 3276335242 99963458

fertilizer-to-water map:
1957494254 3160765597 68123328
3668612865 2055686861 40068724
435525860 0 215171709
417459051 715121035 18066809
3249874551 2634587998 121218972
3537356195 3926770979 26944785
409490069 215171709 7968982
3247878798 2456653359 1995753
152557237 570466650 62164110
0 223140691 152557237
3740494262 3322870672 151571624
4127559328 2467180030 146770000
2244919185 2003747275 51939586
1782523793 2281682898 174970461
829840892 2458649112 8530918
3415930152 2819793210 9616809
3451260386 2162555289 86095809
650697569 632630760 82490275
1725834205 787129181 30553919
2298219434 2095755585 66799704
4274329328 2613950030 20637968
2025617582 4242693061 52274235
3564300980 2248651098 31671137
2296858771 2280322235 1360663
3162226157 4125227747 85652641
1564565599 1911070479 92676796
3892065886 3691277537 235493442
3371093523 1848297376 44836629
1187663862 1437436130 376901737
1689179378 2755806970 36654827
2077891817 1238471779 167027368
2365019138 2792461797 27331413
2678412296 3953715764 63025182
2741437478 817683100 420788679
2461577055 3474442296 216835241
787129181 3228888925 21340999
3595972117 3250229924 72640748
838371810 2829410019 331355578
3425546961 4085967450 25713425
1657242395 1405499147 31936983
3708681589 4210880388 31812673
1756388124 4111680875 13546872
1169727388 1893134005 17936474
2392350551 4016740946 69226504
808470180 1826926664 21370712
218943670 379920251 190546399
214721347 375697928 4222323
1769934996 1814337867 12588797

water-to-light map:
3411019791 3038265544 83843899
1902872961 1862724448 39203216
3968365807 2753393749 138464731
1729762115 1614300400 173110846
3494863690 3122109443 473502117
423365393 445887946 9248183
2869853730 3595611560 11542547
910597576 2054510840 169422772
609563085 2589844190 163549559
2522382340 1299215911 3599854
2525982194 609563085 139503131
131438599 455136129 141314541
4106830538 3607154107 188136758
2106420951 2290083024 299761166
2406182117 966254850 82053377
1157660094 1302815765 172746664
97774358 248386611 33664241
432613576 282050852 163837094
2835557666 1794281538 34296064
1953837775 2043524684 10986156
1964823931 1901927664 141597020
2881396277 749066216 217188634
3404149499 1787411246 6870292
1330406758 3795290865 240494284
773112644 4035785149 137484932
3282452284 4173270081 121697215
2665485325 3001382926 36882618
272753140 97774358 150612253
0 38271406 59502952
3098584911 1115348538 183867373
1570901042 2938014447 31884700
1942076177 1602538802 11761598
2488235494 1828577602 34146846
1080020348 2969899147 31483779
1602785742 1475562429 126976373
1111504127 2891858480 46155967
2768517355 1048308227 67040311
59502952 0 38271406
2702367943 2223933612 66149412

light-to-temperature map:
2325040309 318068442 41526915
3863810956 4139509244 32531846
3695021342 4093645836 45863408
3176344157 3053768010 518677185
2214303174 207331307 110737135
1166404663 0 207331307
3896342802 3761428671 206212717
216675148 359595357 47363132
4102555519 3967641388 126004448
264038280 406958489 888098871
4228559967 3572445195 66407329
1152137151 1295057360 14267512
3053768010 3638852524 122576147
1373735970 1526000020 840567204
0 1309324872 216675148
3740884750 4172041090 122926206

temperature-to-humidity map:
0 1391213880 85308204
3458067104 3613119976 31521054
1325453299 1240145095 151068785
4139914424 3458067104 155052872
1271510819 1186202615 53942480
85308204 0 1186202615
3489588158 3644641030 650326266

humidity-to-location map:
167312469 2495357077 210182350
1429747769 3808500825 68802537
2550869359 1829966489 80945905
1243007130 3610450429 186740639
1735537822 990200552 68491638
2426758858 2125855270 111895863
1637338839 2027656287 98198983
3109292740 3306673452 735862
3647611593 2386885260 96257179
3910495658 3919394548 32743716
3860612665 3289982755 16690697
3743868772 1910912394 116743893
1498550306 2705539427 138788533
0 1662654020 167312469
2631815264 512723076 477477476
836912419 1370893553 291760467
2271993218 3307409314 154765640
4136363029 3910495658 8898890
377494819 3797191068 11309757
1804029460 1058692190 209661300
836150842 3517760656 761577
3110028602 3518522233 91928196
2538654721 2483142439 12214638
687016715 2237751133 149134127
3201956798 2844327960 445654795
1128672886 1268353490 102540063
2057482281 0 214510937
388804576 214510937 298212139
1231212949 3505966475 11794181
2013690760 3462174954 43791521
3943239374 3952138264 193123655
EOF

###
###   Destination, Source, Length
###


function StringContains() (
    echo $1 | grep -F $2 > /dev/null
)


function Debug(){
    if [[ ${DEBUG} == "true"  ]]; then echo "DEBUG: ${1}" ; fi
}


function ConvertSeed() {
    local seed=$1
    local startSeed=$seed
    local endSeed=$seed
    for inputFile in {1..7}; do
        while read -r var; do
            local sourceRangeStart=$(echo "$var" | cut -d ' ' -f 2)
            local destinationRangeStart=$(echo "$var" | cut -d ' ' -f 1)
            local sourceRangeLength=$(echo "$var" | cut -d ' ' -f 3)

            local sourceRangeEnd=$(awk "BEGIN {print ($sourceRangeStart + $sourceRangeLength - 1)}")

           # if (( $endSeed >= $sourceRangeStart) && $endSeed < $sourceRangeEnd )); then
           if (awk "{ if ($endSeed >= $sourceRangeStart) exit 0; else exit 1; }") && (awk "{ if ($endSeed <= $sourceRangeEnd) exit 0; else exit 1; }"); then
                endSeed=$(awk "BEGIN {print ($endSeed - $sourceRangeStart)}")
                endSeed=$(awk "BEGIN {print ($endSeed + $destinationRangeStart)}")
                break
           fi
        done < "$inputFile"
    done
    echo "$startSeed" > "results/$endSeed"
}


# Split the data into separate files.
shouldWrite="false"
while read -r line; do
    if StringContains "${line:-blank}" "seeds" ; then
        shouldWrite="false"
        echo "${line//\: /\:}" | cut -d ':' -f2 > seeds
    elif StringContains "${line:-blank}" "map"; then
        writeFile=$(echo $line | cut -d " " -f 1 | cut -d "-" -f 3 )
        shouldWrite="true"
    elif StringContains "${line:-blank}" "blank"; then
        shouldWrite="false"
    fi
    if `$shouldWrite`; then
        if (echo $line | grep -v "[a-z]" > /dev/null); then
            echo $line >> $writeFile
        fi
    fi
done < $DATA

# clean up initial data files
rm calibration; rm challenge

# read seeds into an array
seeds=( `cat seeds` )
rm seeds

# put the table in order
mv soil 1
mv fertilizer 2
mv water 3
mv light 4
mv temperature 5
mv humidity 6
mv location 7

mkdir results

###DEBUG####
# Seed 79, soil 81, fertilizer 81, water 81, light 74, temperature 78, humidity 78, location 82.
# Seed 14, soil 14, fertilizer 53, water 49, light 42, temperature 42, humidity 43, location 43.
# Seed 55, soil 57, fertilizer 57, water 53, light 46, temperature 82, humidity 82, location 86.
# Seed 13, soil 13, fertilizer 52, water 41, light 34, temperature 34, humidity 35, location 35.

for seed in "${seeds[@]}"; do
    ConvertSeed "$seed"
done

# Solution is 486613012.
# for the diagnostic data, 35 is the answer
ls results/* | sort | head -n 1 | cut -d '/' -f 2