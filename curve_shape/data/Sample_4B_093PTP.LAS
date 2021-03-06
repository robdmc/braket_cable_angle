~VERSION INFORMATION
VERS.           2.0   :CWLS Log ASCII Standard - VERSION 2.0
WRAP.           NO    :One Line per depth step
PROD.  Schlumberger   :LAS Producer
PROG.  DLIS to ASCII 19C2-270                          :LAS Program name and version
CREA.        2018/08/03 10:59                          :LAS Creation date {YYYY/MM/DD hh:mm}
DLIS_CREA.  2018-Aug-03 09:56                          :DLIS Creation date and time {YYYY-MMM-DD hh:mm}
SOURCE.     PERFO_Perfo_093PTP.DLIS                    :DLIS File Name
FILE-ID.     PERFO_Perfo_093PTP                        :File Identification Number
#--------------------------------------------------
~WELL INFORMATION
#MNEM.UNIT      DATA             DESCRIPTION
#---- ------ --------------   -----------------------------
STRT .S            0.0       :START TIME      
STOP .S          101.0       :STOP TIME      
STEP .S            1.0       :STEP     
NULL .          -999.25      :NULL VALUE
COMP .        SHELL INTERNATIONAL EP                   :COMPANY
WELL .        WPP TEST 4                               :WELL
FLD  .        WILDCAT                                  :FIELD
LOC  .        NA                                       :LOCATION
CNTY .        HARRIS                                   :COUNTY
STAT .        TEXAS                                    :STATE
CTRY .                                                 :COUNTRY
API  .        NA                                       :API NUMBER
UWI  .                                                 :UNIQUE WELL ID
DATE .        02-Aug-2018                              :LOG DATE {DD-MMM-YYYY}
SRVC .        Schlumberger                             :SERVICE COMPANY
LATI .DEG                                              :LATITUDE
LONG .DEG                                              :LONGITUDE
GDAT .                                                 :GeoDetic Datum
SECT .        NA                                       :Section
RANG .        NA                                       :Range
TOWN .        NA                                       :Township
#-----------------------------------------------------------------------------
~PARAMETER INFORMATION
#MNEM.UNIT    VALUE                      DESCRIPTION
#---- -----   --------------------       ------------------------
U-PHASE_B_COMP_PER_YT.                 0 :Phase B Comparator Period Yt
U-PHASE_A_COMP_PER_XT.                 0 :Phase A Comparator Period Xt
U-MAX_EXC_CUR_LIMIT.MA       265.00000   :Requested CM Current Limit
U-REQ_EXC_FQ.HZ              50          :Requested CM Frequency
U-TILT_Y_OFFSET.          -2.06578       :WPTET Tilt Y Offset
U-TILT_Y_GAIN.           1.02173         :WPTET Tilt Y Gain
U-TILT_X_OFFSET.           2.30841       :WPTET Tilt X Offset
U-TILT_X_GAIN.           1.00000         :WPTET Tilt X Gain
U-TILT_OFFSET_TOL.           0.00100     :WPTET Tilt Offset Calibration Tolerance
U-MOT_CUR_LIMIT_REQ.MA        70.00000   :Requested Motor Current Limit
U-MOT_SPD_REQ_WPMS.RPM        1.00000    :Requested Motor Speed
U-STD_TOL_TILT.           0.01000        :Tilt Standard Deviation Tolerance
CWEI .LB/F      29.00000                 :Casing Weight
CSIZ .IN         7.00000                 :Current Casing Size
LCC  .               440                 :Logging Company Code
LUN  .              2134                 :Logging Unit Number
HIDE .                                   :Header Identifier
HID1 .                                   :Header Identifier Line 1
R1   .                                   :Remark Line 1
WITN .        MR. KELLY McCOY            :Witness's Name
ENGI .        MORRIS MOORE               :Engineer's Name
LUL  .        IOWA COLONY                :Logging Unit Location
DATE .        02-Aug-20187                :Date as Month-Day-Year
STAT .        TEXAS                      :State or Province
COUN .        HARRIS                     :County or Rig Name
FN   .        WILDCAT                    :Field Name
WN   .        WPP TEST 4                 :Well Name
CN   .        SHELL INTERNATIONAL EP     :Company Name
CLAB .        County                     :County/Rig Label
SLAB .        State                      :State/Province Label
RUN  .          1                        :RUN NUMBER
PDAT .        GROUND LEVEL               :Permanent Datum
EPD  .                                   :Elevation of Permanent Datum above Mean Sea Level
LMF  .          NA                       :Logging Measured From (Name of Logging Elevation Reference)
APD  .                                   :Elevation of Depth Reference (LMF) above Permanent Datum
#-----------------------------------------------------------------------------
~CURVE INFORMATION
#MNEM.UNIT   API CODE                                  DESCRIPTION
#---- -----  --------                                  -----------------------
TIME .S                                                :TIME {F10.1}
FREQ_EMF_SL.HZ                                         :Electromagnetic Field Frequency {F13.4}
PH_SH_WPPCM_SL.DEG                                     :WPPCM Phase Shift {F13.4}
RB_SL.DEG                                              :Relative Bearing {F13.4}
SDEV_SL.DEG                                            :Sonde Deviation {F13.4}
RTIX_SL.DEG                                            :Raw X-axis Tilt {F13.4}
RTIY_SL.DEG                                            :Raw Y-axis Tilt {F13.4}
TILX_SL.DEG                                            :X-axis Tilt {F13.4}
TILY_SL.DEG                                            :Y-axis Tilt {F13.4}
ROTA_SL.DEG                                            :Motor Rotation Angle {F13.4}
TOD7 .S                                                :Time of Day {I11}
TOJ  .S                                                :Time of Job {F13.4}
#-----------------------------------------------------------------------------
# 
#     TIME    FREQ_EMF_SL  PH_SH_WPPCM_    RB_SL       SDEV_SL      RTIX_SL      RTIY_SL      TILX_SL      TILY_SL      ROTA_SL        TOD7            TOJ
#                          SL
~A  
       0.0    1090.1163       0.0000     -10.4355      78.4954     -12.5320    -101.2200     -10.2236    -105.4850      60.7402 1533252198 9999999.9999
       1.0    1123.2029       0.0000      -4.6758      75.1782      -6.8283    -101.2602      -4.5199    -105.5260      65.2131 1533252198 9999999.9999
       2.0    1175.7943       0.0000       4.4221      75.2737       1.9682    -101.0995       4.2766    -105.3619      71.3148 1533252199 9999999.9999
       3.0    1235.7206       0.0000      12.5691      82.8787      10.1622    -100.1757      12.4706    -104.4180      77.4428 1533252200 9999999.9999
       4.0    1309.3575       0.0000      19.1693      89.4639      17.5930     -97.5247      19.9014    -101.7094      83.5446 1533252201 9999999.9999
       5.0    1434.9490       0.0000      24.7931    -999.2500      24.9837     -92.8653      27.2921     -96.9488      89.6726 1533252202 9999999.9999
       6.0    1548.7335       0.0000      29.3693    -999.2500      31.9325     -87.0813      34.2409     -91.0392      96.1824 1533252203 9999999.9999
       7.0    1662.2340       0.0000      33.4997    -999.2500      38.8412     -80.0120      41.1496     -83.8162     102.2842 1533252204 9999999.9999
       8.0    1757.8126       0.0000      37.5767    -999.2500      45.7097     -71.4163      48.0181     -75.0338     108.3860 1533252205 9999999.9999
       9.0    1845.4724       0.0000      42.4937    -999.2500      52.0560     -59.1655      54.3644     -62.5168     114.5009 1533252206 9999999.9999
      10.0    1921.1066       0.0000      51.4474    -999.2500      73.5853     -47.5172      75.8937     -50.6154     120.6027 1533252207 9999999.9999
      11.0    2003.2051       0.0000      55.2074    -999.2500      82.2212     -40.8093      84.5296     -43.7618     126.7045 1533252208 9999999.9999
      12.0    2083.3333       0.0000      59.2549    -999.2500      89.5616     -33.6797      91.8700     -36.4773     132.8064 1533252209 9999999.9999
      13.0    2143.6738       0.0000      63.9874    -999.2500      95.5967     -26.2690      97.9051     -28.9055     138.9083 1533252210 9999999.9999
      14.0    2190.4207       0.0000      69.3896    -999.2500      99.4928     -19.1193     101.8012     -21.6005     145.0102 1533252211 9999999.9999
      15.0    2232.1428       0.0000      76.0988      84.3153     101.1798     -11.6082     103.4882     -13.9262     151.0998 1533252212 9999999.9999
      16.0    2260.8521       0.0000      83.9670      77.1979     101.8225      -3.7355     104.1309      -5.8824     157.2017 1533252213 9999999.9999
      17.0    2282.8735       0.0000      93.6220      76.0827     102.0635       5.4627     104.3719       3.5156     163.3036 1533252214 9999999.9999
      18.0    2312.9111       0.0000     101.7645      83.2731     101.2200      13.4558     103.5284      11.6824     169.4055 1533252215 9999999.9999
      19.0    2320.5444       0.0000     108.8608      89.5509      97.9263      21.2482     100.2347      19.6440     175.9185 1533252216 9999999.9999
      20.0    2312.9111       0.0000     115.0061    -999.2500      92.7047      29.1208      95.0131      27.6878     182.0173 1533252217 9999999.9999
      21.0    2305.3279       0.0000     120.0194    -999.2500      86.0772      36.5517      88.3856      35.2801     188.1323 1533252218 9999999.9999
      22.0    2282.8735       0.0000     124.6711    -999.2500      78.3250      44.1432      80.6334      43.0365     194.2342 1533252219 9999999.9999
      23.0    2268.1450       0.0000     129.1240    -999.2500      68.9662      51.3330      71.2746      50.3825     200.3361 1533252220 9999999.9999
      24.0    2242.8230       0.0000     137.4959    -999.2500      54.4058      66.4256      56.7142      65.8031     206.4387 1533252221 9999999.9999
      25.0    2183.6179       0.0000     141.6957    -999.2500      47.7582      76.5175      50.0666      76.1142     212.5415 1533252222 9999999.9999
      26.0    2130.6819       0.0000     145.5544    -999.2500      40.7692      84.9525      43.0776      84.7325     218.6434 1533252223 9999999.9999
      27.0    2074.1150       0.0000     149.7019    -999.2500      33.4187      92.1423      35.7271      92.0786     224.7453 1533252224 9999999.9999
      28.0    2026.2969       0.0000     154.6877    -999.2500      25.6263      97.8460      27.9347      97.9061     230.8472 1533252225 9999999.9999
      29.0    1942.3344       0.0000     160.6064    -999.2500      17.7135     103.2685      20.0219     103.4465     236.9491 1533252226 9999999.9999
      30.0    1865.0531       0.0000     167.5756      79.9186       9.9212     105.7187      12.2296     105.9499     243.0541 1533252227 9999999.9999
      31.0    1793.6862       0.0000     176.0511      73.9416       1.4862     106.2810       3.7946     106.5244     249.5494 1533252228 9999999.9999
      32.0    1714.9390       0.0000    -175.3413      74.0855      -6.7882     106.3212      -4.4798     106.5654     255.6513 1533252229 9999999.9999
      33.0    1631.3805       0.0000    -167.3983      83.2556     -14.8215     104.0718     -12.5131     104.2672     261.7531 1533252230 9999999.9999
      34.0    1552.1523       0.0000    -160.2830    -999.2500     -23.0155      99.2920     -20.7071      99.3836     267.8549 1533252231 9999999.9999
      35.0    1470.9729       0.0000    -154.2288    -999.2500     -31.1292      93.1867     -28.8208      93.1456     273.9567 1533252232 9999999.9999
      36.0    1362.6454       0.0000    -149.0670    -999.2500     -39.0018      85.8362     -36.6934      85.6354     280.0461 1533252233 9999999.9999
      37.0    1278.4092       0.0000    -144.3317    -999.2500     -46.7138      77.5217     -44.4054      77.1402     286.1479 1533252234 9999999.9999
      38.0    1216.4792       0.0000    -139.6859    -999.2500     -53.9037      68.0423     -51.5953      67.4549     292.2505 1533252235 9999999.9999
      39.0    1173.8313       0.0000    -131.9265    -999.2500     -67.4398      55.4300     -65.1314      54.5686     298.3553 1533252236 9999999.9999
      40.0    1128.6116       0.0000    -127.4924    -999.2500     -76.8388      48.6820     -74.5304      47.6739     304.4541 1533252237 9999999.9999
      41.0    1083.3976       0.0000    -123.3019    -999.2500     -84.9525      41.8135     -82.6441      40.6562     310.5689 1533252238 9999999.9999
      42.0    1035.5303       0.0000    -118.6688    -999.2500     -92.1825      34.4630     -89.8741      33.1460     316.6707 1533252239 9999999.9999
      43.0    1004.4643       0.0000    -113.2066    -999.2500     -98.5690      26.7108     -96.2606      25.2254     323.1806 1533252240 9999999.9999
      44.0     972.5104       0.0000    -106.6037    -999.2500    -103.3488      18.6775    -101.0404      17.0175     329.2855 1533252241 9999999.9999
      45.0     937.5000       0.0000     -99.3162      80.1993    -105.7990      11.0057    -103.4906       9.1790     335.3842 1533252242 9999999.9999
      46.0     906.0889       0.0000     -90.8730      76.2554    -106.0802       2.8518    -103.7718       0.8480     341.4991 1533252243 9999999.9999
      47.0     893.4244       0.0000     -82.2461      78.8281    -105.8793      -5.4225    -103.5709      -7.6061     347.6009 1533252244 9999999.9999
      48.0     875.6227       0.0000     -74.3943      96.3366    -104.3128     -13.4960    -102.0044     -15.8550     353.7189 1533252245 9999999.9999
      49.0     859.5660       0.0000     -67.2449    -999.2500    -100.0953     -22.0113     -97.7869     -24.5554     359.8176 1533252246 9999999.9999
      50.0     849.1848       0.0000     -61.6709    -999.2500     -94.3515     -29.8840     -92.0431     -32.5991       5.9355 1533252247 9999999.9999
      51.0     849.1848       0.0000     -57.0789    -999.2500     -87.6838     -37.3148     -85.3754     -40.1914      12.0343 1533252248 9999999.9999
      52.0     855.3832       0.0000     -52.9916    -999.2500     -79.9317     -44.3842     -77.6233     -47.4143      18.1392 1533252249 9999999.9999
      53.0     868.0555       0.0000     -48.8313    -999.2500     -70.7737     -51.2527     -68.4653     -54.4320      24.2410 1533252250 9999999.9999
      54.0     880.0062       0.0000     -40.7217    -999.2500     -55.5505     -65.0700     -53.2421     -68.5496      30.3560 1533252251 9999999.9999
      55.0     899.1368       0.0000     -35.9959    -999.2500     -48.1197     -77.0397     -45.8113     -80.7793      36.8759 1533252252 9999999.9999
      56.0     915.5273       0.0000     -31.9507    -999.2500     -40.8897     -85.3542     -38.5813     -89.2745      42.9808 1533252253 9999999.9999
      57.0     952.7439       0.0000     -27.5423    -999.2500     -33.5392     -92.1022     -31.2308     -96.1691      49.0795 1533252254 9999999.9999
      58.0     995.9278       0.0000     -22.4700    -999.2500     -26.2288     -97.2033     -23.9204    -101.3811      55.1813 1533252255 9999999.9999
      59.0    1055.7433       0.0000     -16.2725    -999.2500     -18.7177    -100.3363     -16.4093    -104.5821      61.2832 1533252256 9999999.9999
      60.0    1100.3522       0.0000      -8.6760      77.1242     -10.7647    -101.2200      -8.4563    -105.4850      67.3850 1533252257 9999999.9999
      61.0    1148.8971       0.0000       0.8530      74.5790      -1.4862    -101.1798       0.8222    -105.4440      73.4867 1533252258 9999999.9999
      62.0    1212.2845       0.0000       9.4950      78.3436       6.9890    -100.7380       9.2974    -104.9925      79.5885 1533252259 9999999.9999
      63.0    1278.4092       0.0000      16.6763      99.5254      14.6608     -98.8100      16.9692    -103.0226      85.6810 1533252260 9999999.9999
      64.0    1400.6475       0.0000      22.6366    -999.2500      22.0113     -94.9138      24.3197     -99.0418      91.7959 1533252261 9999999.9999
      65.0    1515.3556       0.0000      27.5866    -999.2500      29.1208     -89.6118      31.4292     -93.6246      97.8977 1533252262 9999999.9999
      66.0    1623.8453       0.0000      31.8975    -999.2500      36.1098     -82.9040      38.4182     -86.7710     103.9994 1533252263 9999999.9999
      67.0    1719.1321       0.0000      35.9277    -999.2500      42.9783     -75.0313      45.2867     -78.7273     110.5070 1533252264 9999999.9999
      68.0    1802.8846       0.0000      40.3380    -999.2500      49.7665     -64.7888      52.0749     -68.2623     116.5842 1533252265 9999999.9999
      69.0    1885.0536       0.0000      49.8414    -999.2500      69.4883     -50.1280      71.7967     -53.2829     122.6992 1533252266 9999999.9999
      70.0    1980.6338       0.0000      53.6997    -999.2500      78.9275     -43.5407      81.2359     -46.5525     128.7886 1533252267 9999999.9999
      71.0    2049.9270       0.0000      57.5176    -999.2500      86.7198     -36.6722      89.0282     -39.5347     134.8905 1533252268 9999999.9999
      72.0    2111.4866       0.0000      61.7677    -999.2500      93.1063     -29.6028      95.4147     -32.3118     140.9955 1533252269 9999999.9999
      73.0    2170.1389       0.0000      67.1494    -999.2500      98.2477     -21.9310     100.5561     -24.4733     147.0974 1533252270 9999999.9999
      74.0    2218.0601       0.0000      73.3252    -999.2500     100.7782     -14.5805     103.0866     -16.9631     153.1745 1533252271 9999999.9999
      75.0    2239.2517       0.0000      81.0902      79.3535     101.5413      -6.5472     103.8497      -8.7552     159.2764 1533252272 9999999.9999
      76.0    2275.4854       0.0000      90.0281      75.7888     101.9028       2.0485     104.2112       0.0272     165.3783 1533252273 9999999.9999
      77.0    2297.7942       0.0000      98.7296      78.8446     101.8225      10.4032     104.1309       8.5634     171.4679 1533252274 9999999.9999
      78.0    2312.9111       0.0000     106.2442      92.1900      99.5732      18.2357     101.8816      16.5661     177.5698 1533252275 9999999.9999
      79.0    2312.9111       0.0000     112.7391    -999.2500      94.9138      26.0682      97.2222      24.5688     184.0906 1533252276 9999999.9999
      80.0    2297.7942       0.0000     118.1929    -999.2500      88.8085      33.7400      91.1169      32.4073     190.1925 1533252277 9999999.9999
      81.0    2290.3093       0.0000     122.9557    -999.2500      81.4178      41.2913      83.7262      40.1227     196.2975 1533252278 9999999.9999
      82.0    2275.4854       0.0000     127.4269    -999.2500      72.5812      48.6418      74.8896      47.6329     202.4093 1533252279 9999999.9999
      83.0    2239.2517       0.0000     132.2221    -999.2500      61.6960      55.5103      64.0044      54.6506     208.5143 1533252280 9999999.9999
      84.0    2197.2656       0.0000     139.8965    -999.2500      50.8108      72.2598      53.1192      71.7641     214.6162 1533252281 9999999.9999
      85.0    2163.4614       0.0000     144.0023    -999.2500      43.6210      81.7793      45.9294      81.4904     220.7181 1533252282 9999999.9999
      86.0    2098.8806       0.0000     147.9827    -999.2500      36.3910      89.3708      38.6994      89.2468     226.8200 1533252283 9999999.9999
      87.0    2049.9270       0.0000     152.5348    -999.2500      28.7995      96.2795      31.1079      96.3056     232.9219 1533252284 9999999.9999
      88.0    1969.5378       0.0000     158.1169    -999.2500      20.8465     101.6217      23.1549     101.7638     239.0238 1533252285 9999999.9999
      89.0    1900.3378       0.0000     164.7170      89.4341      12.9738     105.0760      15.2822     105.2932     245.1134 1533252286 9999999.9999
      90.0    1816.8605       0.0000     172.5522      75.4844       4.9003     106.0400       7.2087     106.2782     251.2153 1533252287 9999999.9999
      91.0    1736.1111       0.0000    -178.8461      73.3914      -3.4142     106.4015      -1.1058     106.6475     257.7221 1533252288 9999999.9999
      92.0    1654.4117       0.0000    -170.5529      77.4500     -11.5278     105.4375      -9.2194     105.6626     263.8239 1533252289 9999999.9999
      93.0    1576.5134       0.0000    -162.8736      93.5298     -19.8825     101.3807     -17.5741     101.5176     269.9288 1533252290 9999999.9999
      94.0    1502.4038       0.0000    -156.4935    -999.2500     -27.9560      95.6368     -25.6476      95.6490     275.6226 1533252291 9999999.9999
      95.0    1400.6475       0.0000    -151.0081    -999.2500     -35.9492      88.8487     -33.6408      88.7133     281.7244 1533252292 9999999.9999
      96.0    1311.8003       0.0000    -146.3199    -999.2500     -43.4603      81.2170     -41.1519      80.9158     287.8139 1533252293 9999999.9999
      97.0    1244.4691       0.0000    -141.5875    -999.2500     -51.0920      72.0590     -48.7836      71.5589     293.9033 1533252294 9999999.9999
      98.0    1185.7083       0.0000    -135.8131    -999.2500     -58.8843      59.9287     -56.5759      59.1650     300.0051 1533252295 9999999.9999
      99.0    1143.2927       0.0000    -129.1003    -999.2500     -73.4247      51.2125     -71.1162      50.2594     306.1200 1533252296 9999999.9999
     100.0    1100.3522       0.0000    -124.9131    -999.2500     -81.9802      44.4645     -79.6718      43.3648     312.2249 1533252297 9999999.9999
     101.0    1055.7433       0.0000    -120.5356    -999.2500     -89.5717      37.3550     -87.2633      36.1008     318.3236 1533252298 9999999.9999
