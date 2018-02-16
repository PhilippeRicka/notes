clear
clf
format long

nloop = 20;
T = 0.8;
dt = 0.01;
C = 0.000025 ;
R1 = 1600;
R2 = 13000;
alpha = 1/(C/(dt) + 1/R2);
beta = 1 + R1/R2 + R1*C/(dt);
gamma = R1*C/(dt);

time = 1:T/dt;
q = (10*exp(-100*(time*dt-0.38).^2)+5)/1000000;
p = 0*time;

%q = [q,q];q = [q,q];q = [q,q];q = [q,q];q = [q,q];
T = length(q)*dt;
time = 1:T/dt;

while 0
    Q = [0, 8.201628352490424
    0.010000000000000009, 8.250319284802039
    0.020000000000000018, 8.347701149425284
    0.030000000000000027, 8.445083014048528
    0.040000000000000036, 8.335528416347387
    0.050000000000000044, 7.67820083014049
    0.06000000000000005, 7.215636973180075
    0.07000000000000028, 6.582654853128993
    0.08000000000000007, 6.2905092592592595
    0.09000000000000008, 5.986190932311622
    0.10000000000000009, 5.767081736909326
    0.10999999999999988, 5.4505906768837775
    0.11999999999999988, 5.158445083014051
    0.1299999999999999, 4.939335887611755
    0.1399999999999999, 4.622844827586206
    0.1499999999999999, 4.4889447637292434
    0.15999999999999992, 4.452426564495532
    0.16999999999999993, 4.440253831417621
    0.17999999999999994, 4.428081098339717
    0.18999999999999995, 4.428081098339717
    0.20000000000000018, 4.415908365261814
    0.20999999999999996, 4.403735632183903
    0.21999999999999997, 4.391562899105999
    0.22999999999999998, 4.379390166028102
    0.24, 4.379390166028102
    0.25, 4.367217432950191
    0.26, 4.318526500638569
    0.27, 4.160280970625799
    0.28, 4.038553639846754
    0.29000000000000004, 3.868135376756065
    0.30000000000000004, 3.7707535121328277
    0.31000000000000005, 3.600335249042139
    0.32000000000000006, 4.622844827586206
    0.32000000000000006, 3.624680715197954
    0.3300000000000003, 6.765245849297578
    0.3300000000000003, 5.986190932311622
    0.3300000000000003, 5.170617816091955
    0.3400000000000001, 8.907646871008943
    0.3400000000000001, 8.128591954022987
    0.3400000000000001, 7.31301883780332
    0.3500000000000001, 10.344029374201789
    0.3500000000000001, 9.564974457215836
    0.3500000000000001, 8.749401340996165
    0.3600000000000001, 12.486430395913157
    0.3600000000000001, 11.707375478927204
    0.3600000000000001, 10.891802362707537
    0.3700000000000001, 13.898467432950191
    0.3700000000000001, 13.119412515964243
    0.3700000000000001, 12.303839399744572
    0.3800000000000001, 16.040868454661556
    0.3800000000000001, 15.261813537675607
    0.3800000000000001, 14.44624042145594
    0.3900000000000001, 17.477250957854405
    0.3900000000000001, 16.698196040868453
    0.3900000000000001, 15.882622924648789
    0.40000000000000013, 19.619651979565774
    0.40000000000000013, 18.84059706257982
    0.40000000000000013, 18.025023946360154
    0.41000000000000014, 21.03168901660281
    0.41000000000000014, 20.252634099616856
    0.41000000000000014, 19.43706098339719
    0.42000000000000015, 22.20027139208174
    0.42000000000000015, 21.33600734355045
    0.43000000000000016, 21.080379948914434
    0.43000000000000016, 20.070043103448278
    0.44000000000000017, 19.984833971902937
    0.44000000000000017, 18.974497126436784
    0.4500000000000002, 18.353687739463602
    0.4500000000000002, 17.33117816091954
    0.4600000000000002, 17.258141762452105
    0.4600000000000002, 16.23563218390805
    0.4700000000000002, 15.602650063856963
    0.4700000000000002, 14.592313218390807
    0.4800000000000002, 14.507104086845466
    0.4800000000000002, 13.496767241379313
    0.4900000000000002, 12.85161238825032
    0.4900000000000002, 11.84127554278416
    0.5000000000000002, 11.756066411238827
    0.5000000000000002, 10.74572956577267
    0.5100000000000002, 10.124920178799492
    0.5100000000000002, 9.114583333333336
    0.5200000000000002, 8.712883141762454
    0.5300000000000002, 8.067728288633461
    0.5400000000000003, 7.532128033205616
    0.5500000000000003, 7.179118773946364
    0.5600000000000003, 6.947836845466149
    0.5700000000000003, 7.532128033205616
    0.5800000000000003, 8.335528416347387
    0.5900000000000003, 8.518119412515965
    0.5900000000000003, 7.726891762452112
    0.6000000000000003, 7.47126436781609
    0.6000000000000003, 6.6800367177522375
    0.6100000000000003, 6.765245849297578
    0.6200000000000003, 5.596663473818651
    0.6300000000000003, 5.487108876117496
    0.6400000000000003, 5.4505906768837775
    0.6500000000000004, 5.5114543422733036
    0.6600000000000004, 5.827945402298845
    0.6700000000000004, 6.44875478927203
    0.6800000000000004, 6.8748004469987265
    0.6900000000000004, 7.495609833971905
    0.7000000000000006, 7.90948275862069
    0.7100000000000004, 8.42073754789272
    0.7200000000000004, 8.42073754789272
    0.7300000000000004, 8.323355683269476
    0.7400000000000004, 8.299010217113675
    0.7500000000000004, 8.65201947637292
    0.7600000000000005, 8.250319284802039
    0.7700000000000005, 7.8364463601532535
    0.7800000000000005, 7.215636973180075
    0.7900000000000005, 6.789591315453386
    0.8000000000000005, 6.168781928480215
    0.8100000000000005, 5.7792544699872295
    0.8200000000000005, 5.462763409961688
    0.8300000000000007, 5.316690613026815
    0.8400000000000003, 5.121926883780326
    0.8500000000000005, 4.927163154533844
    0.8600000000000008, 4.793263090676881
    0.8700000000000006, 4.671535759897829
    0.8800000000000003, 4.622844827586206
    0.8900000000000006, 4.428081098339717
    0.9000000000000008, 4.172453703703702
    0.9100000000000006, 4.026380906768843
    0.9200000000000004, 4.087244572158362
    0.9300000000000006, 4.184626436781606
    0.9400000000000008, 4.233317369093228
    0.9500000000000011, 4.33069923371648
    0.9600000000000004, 4.622844827586206
    0.9700000000000006, 4.781090357598977
    0.9800000000000009, 4.854126756066414
    0.9900000000000007, 4.902817688378029
    1.0000000000000004, 4.878472222222221
    1.0100000000000007, 4.8054358237547845
    1.020000000000001, 4.671535759897829
    1.0300000000000007, 4.7445721583652585
    1.0400000000000005, 4.939335887611755
    1.0500000000000007, 4.963681353767562
    1.060000000000001, 4.452426564495532
    1.0700000000000007, 4.367217432950191
    1.0800000000000005, 4.47677203065134
    1.0900000000000007, 4.635017560664117
    1.100000000000001, 4.7445721583652585
    1.1100000000000008, 5.048890485312903
    1.1200000000000006, 7.519955300127712
    1.1200000000000006, 6.740900383141756
    1.1200000000000006, 5.961845466155815
    1.1200000000000006, 5.07323595146871
    1.1300000000000008, 10.879629629629626
    1.1300000000000008, 10.100574712643681
    1.1300000000000008, 9.321519795657728
    1.1300000000000008, 8.445083014048528
    1.140000000000001, 13.143757982120054
    1.140000000000001, 12.364703065134101
    1.140000000000001, 11.585648148148145
    1.140000000000001, 10.697038633461048
    1.1500000000000008, 16.503432311621964
    1.1500000000000008, 15.724377394636015
    1.1500000000000008, 14.945322477650066
    1.1500000000000008, 14.056712962962965
    1.1600000000000006, 19.887452107279696
    1.1600000000000006, 19.108397190293747
    1.1600000000000006, 18.32934227330779
    1.1600000000000006, 17.44073275862069
    1.1700000000000008, 22.12723499361431
    1.1700000000000008, 21.348180076628353
    1.1700000000000008, 20.5691251596424
    1.1700000000000008, 19.6805156449553
    1.180000000000001, 22.212444125159642
    1.1900000000000008, 21.83508939974457
    1.2000000000000006, 21.46990740740741
    1.2000000000000006, 20.459570561941252
    1.2100000000000013, 20.47174329501916
    1.2100000000000013, 19.692688378033203
    1.2100000000000013, 18.670178799489147
    1.220000000000001, 17.769396551724135
    1.220000000000001, 16.990341634738186
    1.220000000000001, 15.967832056194126
    1.2300000000000009, 15.967832056194126
    1.2300000000000009, 15.18877713920817
    1.2300000000000009, 14.166267560664114
    1.2400000000000007, 13.265485312899106
    1.2400000000000007, 12.486430395913157
    1.2400000000000007, 11.45174808429119
    1.2500000000000009, 11.463920817369093
    1.2500000000000009, 10.648347701149426
    1.2600000000000011, 10.39272030651341
    1.270000000000001, 9.905810983397192
    1.2800000000000007, 9.759738186462322
    1.2800000000000007, 8.956337803320562
    1.290000000000001, 8.664192209450825
    1.290000000000001, 7.860791826309068
    1.3000000000000012, 7.82427362707535
    1.310000000000001, 8.213801085568328
    1.3200000000000007, 8.274664750957854
    1.330000000000001, 7.946000957854402
    1.3400000000000012, 7.726891762452112
    1.350000000000001, 7.386055236270764
    1.3600000000000008, 7.166946040868453
    1.370000000000001, 6.96000957854406
    1.370000000000001, 6.107918263090681
    1.3800000000000012, 5.742736270753511
    1.3800000000000012, 4.939335887611755
    1.390000000000001, 5.365381545338444
    1.4000000000000008, 5.7792544699872295
    1.410000000000001, 6.071400063856963
    1.4200000000000013, 6.4852729885057485
    1.430000000000001, 6.765245849297578
    1.4400000000000008, 7.191291507024268
    1.450000000000001, 7.47126436781609
    1.4600000000000013, 7.885137292464876
    1.4700000000000015, 8.311182950191572
    1.4800000000000009, 8.335528416347387
    1.490000000000001, 8.201628352490424
    1.5000000000000013, 8.116419220945083
    1.5100000000000011, 7.970346424010216
    1.520000000000001, 7.897310025542787
    1.5300000000000011, 7.726891762452112
    1.5400000000000014, 7.483437100894001
    1.5500000000000012, 6.923491379310342
    1.560000000000001, 6.558309386973178
    1.5700000000000012, 6.022709131545334
    1.5800000000000018, 5.462763409961688
    1.5900000000000012, 5.109754150702422
    1.600000000000001, 4.866299489144318
    1.6100000000000012, 4.793263090676881
    1.6200000000000014, 4.695881226053636
    1.6300000000000012, 4.574153895274584
    1.640000000000001, 4.2941810344827545
    1.6500000000000012, 4.0994173052362655
    1.6600000000000015, 3.8437899106002575
    1.6700000000000013, 3.795098978288628
    1.680000000000001, 3.795098978288628
    1.6900000000000013, 3.795098978288628
    1.7000000000000015, 3.8559626436781613
    1.7100000000000013, 3.9776899744572205
    1.720000000000001, 4.075071839080465
    1.7300000000000013, 4.19679916985951
    1.7400000000000015, 4.2941810344827545
    1.7500000000000013, 4.464599297573436
    1.7600000000000011, 4.70805395913154
    1.7700000000000014, 5.170617816091955
    1.7800000000000016, 5.1340996168582365
    1.7900000000000014, 5.07323595146871
    1.8000000000000012, 5.121926883780326
    1.8100000000000014, 5.19496328224777
    1.8200000000000016, 5.255826947637303
    1.8300000000000014, 5.0001995530012735
    1.8400000000000016, 4.574153895274584
    1.8500000000000014, 4.2941810344827545
    1.8600000000000017, 3.880308109833969
    1.8700000000000014, 3.5881625159642354
    1.8800000000000012, 3.928999042145591
    1.8900000000000015, 6.570482120051089
    1.8900000000000015, 5.791427203065133
    1.8900000000000015, 4.635017560664117
    1.9000000000000017, 8.639846743295024
    1.9000000000000017, 7.860791826309068
    1.9000000000000017, 7.081736909323126
    1.9100000000000015, 11.731720945083016
    1.9100000000000015, 10.952666028097063
    1.9100000000000015, 10.17361111111111
    1.9100000000000015, 9.382383461047255
    1.9200000000000013, 13.77674010217114
    1.9200000000000013, 12.997685185185187
    1.9200000000000013, 12.218630268199234
    1.9300000000000015, 16.86861430395913
    1.9300000000000015, 16.08955938697318
    1.9300000000000015, 15.31050446998723
    1.9400000000000017, 18.937978927203066
    1.9400000000000017, 18.158924010217113
    1.9400000000000017, 17.379869093231164
    1.9500000000000015, 22.00550766283525
    1.9500000000000015, 21.226452745849297
    1.9500000000000015, 20.070043103448278
    1.9600000000000013, 22.49241698595147
    1.9600000000000013, 21.542943805874845
    1.9700000000000015, 21.202107279693486
    1.9700000000000015, 20.167424968071522
    1.9800000000000018, 20.05787037037037
    1.9800000000000018, 19.023188058748403
    1.9900000000000015, 18.353687739463602
    1.9900000000000015, 17.306832694763727
    2.0000000000000013, 16.625159642401027
    2.0000000000000013, 15.590477330779056
    2.010000000000001, 15.480922733077907
    2.010000000000001, 14.44624042145594
    2.020000000000001, 13.77674010217114
    2.020000000000001, 12.729885057471265
    2.0300000000000007, 12.63250319284802
    2.0300000000000007, 11.585648148148145
    2.0400000000000005, 10.90397509578544
    2.0400000000000005, 9.869292784163473
    2.0500000000000003, 9.759738186462322
    2.0500000000000003, 8.725055874840358
    2.06, 8.05555555555555
    2.06, 7.118255108556838
    2.07, 7.118255108556838
    2.0799999999999996, 7.179118773946364
    2.0899999999999994, 6.911318646232438
    2.099999999999999, 6.631345785440608
    2.109999999999999, 6.826109514687097
    2.1199999999999988, 6.972182311621964
    2.1299999999999986, 7.2521551724137865
    2.1299999999999986, 6.400063856960408
    2.1399999999999983, 6.473100255427852
    2.1399999999999983, 5.414072477650059
    2.149999999999998, 4.695881226053636
    2.149999999999998, 3.624680715197954
    2.159999999999998, 3.369053320561946
    2.1699999999999977, 3.9168263090676874
    2.1799999999999975, 4.367217432950191
    2.1899999999999973, 5.061063218390807
    2.199999999999997, 5.742736270753511
    2.209999999999997, 6.193127394636015
    2.2199999999999966, 6.88697318007663
    2.2299999999999964, 7.337364303959127
    2.239999999999996, 8.03121008939975
    2.249999999999996, 8.323355683269476
    2.259999999999996, 8.359873882503187
    2.2699999999999956, 8.335528416347387
    2.2799999999999954, 8.250319284802039
    2.289999999999995, 8.05555555555555
    2.299999999999995, 7.653855363984668
    2.3099999999999947, 7.264327905491697
    2.3199999999999945, 6.996527777777779
    2.3299999999999943, 6.594827586206897
    2.339999999999994, 6.327027458492971
    2.349999999999994, 5.925327266922089
    2.3599999999999937, 5.657527139208177
    2.3699999999999934, 5.267999680715199
    2.3799999999999932, 5.0001995530012735
    2.389999999999993, 4.598499361430392
    2.399999999999993, 4.33069923371648
    2.4099999999999926, 3.928999042145591
    2.4199999999999924, 3.5394715836526203
    2.4299999999999926, 3.3933987867177464
    2.439999999999992, 3.3203623882503166
    2.4499999999999917, 3.2716714559386944
    2.4599999999999915, 3.1986350574712574
    2.4699999999999913, 3.1499441251596423
    2.479999999999991, 3.1499441251596423
    2.489999999999991, 3.2108077905491683
    2.4999999999999907, 3.296016922094502
    2.5099999999999905, 3.3812260536398426
    2.5199999999999902, 3.4542624521072796
    2.52999999999999, 3.7342353128991164
    2.5399999999999903, 4.0994173052362655
    2.5499999999999896, 4.464599297573436
    2.5599999999999894, 4.598499361430392
    2.569999999999989, 4.647190293742028
    2.579999999999989, 4.647190293742028
    2.5899999999999888, 4.635017560664117
    2.5999999999999885, 4.47677203065134
    2.6099999999999883, 4.05072637292465
    2.619999999999988, 3.6368534482758648
    2.629999999999988, 3.3447078544061313
    2.6399999999999877, 2.9916985951468646
    2.649999999999988, 4.817608556832688
    2.649999999999988, 4.038553639846754
    2.649999999999988, 3.10125319284802
    2.6599999999999873, 7.276500638569601
    2.6599999999999873, 6.497445721583652
    2.6599999999999873, 5.56014527458494
    2.669999999999987, 8.907646871008943
    2.669999999999987, 8.128591954022987
    2.669999999999987, 7.191291507024268
    2.679999999999987, 11.366538952745852
    2.679999999999987, 10.5874840357599
    2.679999999999987, 9.650183588761177
    2.6899999999999866, 12.997685185185187
    2.6899999999999866, 12.218630268199234
    2.6899999999999866, 11.293502554278419
    2.6999999999999864, 15.456577266922096
    2.6999999999999864, 14.677522349936144
    2.6999999999999864, 13.752394636015328
    2.709999999999986, 17.112068965517242
    2.709999999999986, 16.33301404853129
    2.709999999999986, 15.395713601532567
    2.719999999999986, 19.57096104725415
    2.719999999999986, 18.7919061302682
    2.719999999999986, 17.854605683269476
    2.7299999999999858, 20.508261494252874
    2.7399999999999856, 20.43522509578544
    2.7499999999999853, 19.850933908045977
    2.7599999999999856, 19.461406449553003
    2.769999999999985, 19.108397190293747
    2.769999999999985, 18.317169540229887
    2.7799999999999847, 18.548451468710088
    2.7799999999999847, 17.769396551724135
    2.7799999999999847, 16.74688697318008
    2.7899999999999845, 15.846104725415067
    2.7899999999999845, 15.067049808429118
    2.7899999999999845, 14.044540229885058
    2.7999999999999843, 14.044540229885058
    2.7999999999999843, 13.265485312899106
    2.7999999999999843, 12.255148467432953
    2.809999999999984, 11.366538952745852
    2.809999999999984, 10.5874840357599
    2.809999999999984, 9.564974457215836
    2.819999999999984, 8.664192209450825
    2.819999999999984, 7.885137292464876
    2.819999999999984, 6.8748004469987265
    2.8299999999999836, 6.533963920817364
    2.8399999999999834, 6.655691251596423
    2.849999999999983, 6.740900383141756
    2.859999999999983, 5.718390804597696
    2.869999999999983, 4.659363026819925
    2.8799999999999826, 4.622844827586206
    2.8799999999999826, 3.819444444444443
    2.8899999999999824, 5.694045338441889
    2.8899999999999824, 4.695881226053636
    2.899999999999982, 5.608836206896548
    2.909999999999982, 5.048890485312903
    2.9199999999999817, 4.172453703703702
    2.9299999999999815, 3.296016922094502
    2.9399999999999813, 2.9308349297573457
    2.949999999999981, 3.4420897190293758
    2.959999999999981, 3.807271711366539
    2.9699999999999807, 4.342871966794391
    2.9799999999999804, 4.70805395913154
    2.9899999999999802, 5.255826947637303
    2.99999999999998, 5.621008939974452
    3.00999999999998, 6.168781928480215
    3.0199999999999796, 6.533963920817364
    3.0299999999999794, 7.0695641762452155
    3.039999999999979, 7.434746168582372
    3.049999999999979, 7.47126436781609
    3.0599999999999787, 7.507782567049809
    3.0699999999999785, 7.47126436781609
    3.0799999999999783, 6.899145913154534
    3.089999999999978, 6.400063856960408
    3.099999999999978, 5.621008939974452
    3.1099999999999786, 5.109754150702422
    3.1199999999999775, 4.6106720945082955
    3.1299999999999772, 4.342871966794391
    3.139999999999977, 4.172453703703702
    3.149999999999977, 3.9046535759897765
    3.1599999999999766, 3.7829262452107244
    3.1699999999999764, 3.7098898467432946
    3.179999999999976, 3.68554438058748
    3.189999999999976, 3.6368534482758648
    3.1999999999999758, 3.600335249042139
    3.2099999999999755, 3.7342353128991164
    3.2199999999999753, 3.8316171775223467
    3.229999999999975, 3.6368534482758648
    3.239999999999975, 3.5151261174968056
    3.2499999999999747, 3.5272988505747094
    3.2599999999999745, 3.551644316730524
    3.2699999999999743, 3.5759897828863316
    3.279999999999974, 3.600335249042139
    3.289999999999974, 3.7098898467432946
    3.2999999999999736, 3.819444444444443
    3.3099999999999734, 3.5029533844188947
    3.319999999999973, 3.0160440613026793
    3.329999999999974, 2.9308349297573457
    3.3399999999999728, 3.247325989782887
    3.3499999999999726, 2.906489463601531
    3.3599999999999723, 3.9168263090676874
    3.3599999999999723, 2.89431673052362
    3.369999999999972, 6.643518518518512
    3.369999999999972, 5.864463601532577
    3.369999999999972, 4.829781289910599
    3.379999999999972, 8.445083014048528
    3.379999999999972, 7.666028097062579
    3.379999999999972, 6.631345785440608
    3.3899999999999717, 11.171775223499363
    3.3899999999999717, 10.39272030651341
    3.3899999999999717, 9.35803799489144
    3.3999999999999715, 12.997685185185187
    3.3999999999999715, 12.218630268199234
    3.3999999999999715, 11.183947956577263
    3.4099999999999713, 15.724377394636015
    3.4099999999999713, 14.945322477650066
    3.4099999999999713, 13.910640166028099
    3.419999999999971, 17.525941890166028
    3.419999999999971, 16.74688697318008
    3.419999999999971, 15.712204661558111
    3.429999999999971, 20.252634099616856
    3.429999999999971, 19.473579182630907
    3.429999999999971, 18.43889687100894
    3.4399999999999706, 20.666507024265645
    3.4399999999999706, 19.76572477650064
    3.4499999999999704, 19.473579182630907
    3.4499999999999704, 18.48758780332056
    3.45999999999997, 17.891123882503198
    3.45999999999997, 16.892959770114942
    3.46999999999997, 16.819923371647512
    3.46999999999997, 15.833931992337167
    3.47999999999997, 15.237468071519793
    3.47999999999997, 14.239303959131547
    3.4899999999999696, 14.166267560664114
    3.4899999999999696, 13.180276181353769
    3.4999999999999694, 12.583812260536401
    3.4999999999999694, 11.585648148148145
    3.509999999999969, 11.512611749680715
    3.509999999999969, 10.526620370370367
    3.519999999999969, 9.930156449553003
    3.519999999999969, 8.944165070242658
    3.5299999999999687, 8.858955938697314
    3.5299999999999687, 7.885137292464876
    3.5399999999999685, 7.3251915708812305
    3.5399999999999685, 6.351372924648786
    3.549999999999969, 5.523627075351207
    3.559999999999968, 5.255826947637303
    3.569999999999968, 5.158445083014051
    3.5799999999999677, 5.085408684546614
    3.5899999999999674, 4.33069923371648
    3.5999999999999672, 4.47677203065134
    3.609999999999967, 4.111590038314176
    3.619999999999967, 3.746408045977013
    3.6299999999999666, 3.1864623243933536
    3.6399999999999664, 3.0647349936143087
    3.649999999999966, 3.6977171136653837
    3.659999999999966, 4.33069923371648
    3.6699999999999657, 4.768917624521073
    3.6799999999999655, 5.401899744572155
    3.6899999999999653, 5.827945402298845
    3.699999999999965, 6.473100255427852
    3.709999999999965, 6.899145913154534
    3.7199999999999647, 7.386055236270764
    3.7299999999999645, 7.459091634738186
    3.7399999999999642, 7.495609833971905
    3.749999999999964, 7.507782567049809
    3.759999999999964, 7.239982439335883
    3.7699999999999645, 6.826109514687097
    3.7799999999999634, 6.533963920817364
    3.789999999999963, 6.120090996168578
    3.799999999999963, 5.827945402298845
    3.8099999999999627, 5.414072477650059
    3.8199999999999625, 5.1340996168582365
    3.8299999999999623, 4.70805395913154
    3.839999999999962, 4.428081098339717
    3.849999999999962, 4.12376277139208
    3.8599999999999617, 3.9776899744572205
    3.8699999999999615, 3.9046535759897765
    3.8799999999999613, 3.758580779054917
    3.889999999999961, 3.6611989144316723
    3.899999999999961, 3.4420897190293758
    3.9099999999999606, 3.222980523627072
    3.9199999999999604, 3.235153256704983
    3.92999999999996, 3.356880587484035
    3.93999999999996, 3.5272988505747094
    3.9499999999999598, 3.6490261813537685
    3.9599999999999596, 3.8437899106002575
    3.9699999999999593, 3.746408045977013
    3.979999999999959, 3.624680715197954
    3.98999999999996, 3.5759897828863316
    3.9999999999999587, 3.795098978288628
    4.009999999999959, 4.111590038314176
    4.019999999999959, 4.05072637292465
    4.0299999999999585, 3.819444444444443
    4.039999999999958, 3.8437899106002575
    4.049999999999958, 3.941171775223502
    4.059999999999958, 3.6977171136653837
    4.069999999999958, 2.8212803320562045
    4.079999999999957, 5.036717752234992
    4.079999999999957, 4.257662835249043
    4.079999999999957, 3.3933987867177464
    4.089999999999957, 6.570482120051089
    4.089999999999957, 5.791427203065133
    4.089999999999957, 4.927163154533844
    4.099999999999957, 8.883301404853132
    4.099999999999957, 8.10424648786718
    4.099999999999957, 7.227809706257979
    4.109999999999957, 10.417065772669222
    4.109999999999957, 9.63801085568327
    4.109999999999957, 8.761574074074069
    4.119999999999957, 12.729885057471265
    4.119999999999957, 11.950830140485316
    4.119999999999957, 11.074393358876119
    4.129999999999956, 14.263649425287358
    4.129999999999956, 13.484594508301406
    4.129999999999956, 12.608157726692209
    4.139999999999956, 16.552123243933586
    4.139999999999956, 15.773068326947637
    4.139999999999956, 14.908804278416348
    4.149999999999956, 18.08588761174968
    4.149999999999956, 17.306832694763727
    4.149999999999956, 16.44256864623244
    4.159999999999956, 20.398706896551722
    4.159999999999956, 19.619651979565774
    4.159999999999956, 18.743215197956577
    4.1699999999999555, 22.49241698595147
    4.1699999999999555, 21.33600734355045
    4.179999999999955, 22.49241698595147
    4.179999999999955, 21.506425606641123
    4.189999999999955, 20.909961685823752
    4.189999999999955, 19.911797573435503
    4.199999999999955, 19.838761174968074
    4.199999999999955, 18.84059706257982
    4.209999999999955, 18.231960408684547
    4.209999999999955, 17.22162356321839
    4.2199999999999545, 17.136414431673053
    4.2199999999999545, 16.138250319284804
    4.229999999999954, 15.52961366538953
    4.229999999999954, 14.531449553001277
    4.239999999999954, 14.458413154533844
    4.239999999999954, 13.460249042145595
    4.249999999999954, 12.85161238825032
    4.249999999999954, 11.853448275862071
    4.259999999999954, 11.780411877394638
    4.259999999999954, 10.782247765006385
    4.269999999999953, 10.17361111111111
    4.269999999999953, 9.175446998722862
    4.279999999999953, 8.56681034482758
    4.279999999999953, 7.568646232439335
    4.289999999999953, 7.154773307790549
    4.299999999999953, 6.923491379310342
    4.3099999999999525, 6.972182311621964
    4.319999999999952, 6.96000957854406
    4.329999999999952, 6.935664112388245
    4.339999999999952, 6.107918263090681
    4.349999999999952, 6.047054597701148
    4.3599999999999515, 5.9375
    4.369999999999951, 5.56014527458494
    4.379999999999951, 4.890644955300132
    4.379999999999951, 4.0994173052362655
    4.389999999999951, 4.513290229885051
    4.399999999999951, 4.927163154533844
    4.40999999999995, 5.547972541507029
    4.41999999999995, 5.949672733077904
    4.42999999999995, 6.509618454661563
    4.43999999999995, 6.716554916985956
    4.4499999999999496, 6.838282247765001
    4.459999999999949, 6.911318646232438
    4.469999999999949, 7.008700510855682
    4.479999999999949, 7.239982439335883
    4.489999999999949, 7.4469189016602755
    4.4999999999999485, 7.751237228607913
    4.509999999999948, 7.82427362707535
    4.519999999999948, 7.179118773946364
    4.529999999999948, 6.838282247765001
    4.539999999999948, 6.460927522349941
    4.549999999999947, 6.205300127713926
    4.559999999999947, 5.8401181353767555
    4.569999999999947, 5.596663473818651
    4.579999999999947, 5.231481481481481
    4.589999999999947, 4.866299489144318
    4.599999999999946, 4.598499361430392
    4.609999999999946, 4.160280970625799
    4.619999999999946, 3.941171775223502
    4.629999999999946, 3.953344508301406
    4.6399999999999455, 4.002035440613021
    4.649999999999945, 4.002035440613021
    4.659999999999945, 3.7098898467432946
    4.669999999999945, 3.1986350574712574
    4.679999999999945, 3.089080459770109
    4.689999999999944, 3.052562260536398
    4.699999999999944, 3.089080459770109
    4.709999999999944, 3.356880587484035
    4.719999999999944, 3.941171775223502
    4.729999999999944, 4.233317369093228
    4.739999999999943, 4.440253831417621
    4.749999999999943, 4.537635696040866
    4.759999999999943, 4.695881226053636
    4.769999999999943, 4.8054358237547845
    4.7799999999999425, 4.9515086206896655
    4.789999999999942, 5.121926883780326
    4.799999999999942, 5.487108876117496
    4.809999999999942, 4.890644955300132
    4.819999999999942, 4.257662835249043
    4.8299999999999415, 3.600335249042139
    4.839999999999941, 3.819444444444443
    4.849999999999941, 4.184626436781606
    4.859999999999941, 4.075071839080465
    4.869999999999941, 4.452426564495532
    4.869999999999941, 3.6368534482758648
    4.87999999999994, 6.083572796934867
    4.87999999999994, 5.304517879948911
    4.87999999999994, 4.379390166028102
    4.88999999999994, 8.49377394636015
    4.88999999999994, 7.714719029374201
    4.88999999999994, 6.80176404853129
    4.89999999999994, 10.928320561941248
    4.89999999999994, 10.149265644955303
    4.89999999999994, 9.236310664112391
    4.90999999999994, 12.55946679438059
    4.90999999999994, 11.780411877394638
    4.90999999999994, 10.855284163473819
    4.9199999999999395, 14.994013409961688
    4.9199999999999395, 14.214958492975736
    4.9199999999999395, 13.289830779054917
    4.929999999999939, 16.60081417624521
    4.929999999999939, 15.82175925925926
    4.929999999999939, 14.908804278416348
    4.939999999999939, 19.035360791826307
    4.939999999999939, 18.256305874840358
    4.939999999999939, 17.343350893997446
    4.949999999999939, 19.984833971902937
    4.949999999999939, 19.0110153256705
    4.959999999999939, 19.43706098339719
    4.9699999999999385, 19.16926085568327
    4.979999999999938, 18.767560664112388
    4.979999999999938, 17.635496487867176
    4.989999999999938, 17.452905491698598
    4.989999999999938, 16.32084131545339
    4.999999999999938, 15.480922733077907
    4.999999999999938, 14.348858556832695
    5.009999999999938, 13.508939974457217
    5.009999999999938, 12.364703065134101
    5.019999999999937, 12.19428480204342
    5.019999999999937, 11.050047892720308
    5.029999999999937, 10.22230204342273
    5.029999999999937, 9.078065134099617
    5.039999999999937, 8.907646871008943
    5.039999999999937, 7.763409961685824
    5.049999999999937, 6.911318646232438
    5.049999999999937, 5.815772669220941
    5.0599999999999365, 5.547972541507029
    5.069999999999936, 5.523627075351207
    5.079999999999936, 5.523627075351207
    5.089999999999936, 5.523627075351207
    5.099999999999936, 5.401899744572155];

    T=dt*length(Q(:,1));
    q=Q(:,2);
    p=q;
    
end

A=[0.009457241071900751,5.000000000000002;
0.0174033891646457,5.000000000000002;
0.02534822384448276,5.01567886658796;
0.03329408006769263,5.019163059163061;
0.041240228160437584,5.019163059163061;
0.049186376253182534,5.019163059163061;
0.057132524345927485,5.019163059163061;
0.06507867243867244,5.019163059163061;
0.07302482053141739,5.019163059163061;
0.08097096862416234,5.019163059163061;
0.08891711671690729,5.019163059163061;
0.0973668295636882,4.977888777888779;
0.10480882916332702,5.026131444313265;
0.11275556099514213,5.019163059163061;
0.12070170908788709,5.019163059163061;
0.128647857180632,5.019163059163061;
0.13659400527337698,5.019163059163061;
0.14454015336612192,5.019163059163061;
0.15248630145886688,5.019163059163061;
0.16043244955161182,5.019163059163061;
0.16837801390528662,5.026131444313265;
0.17632153517221577,5.057489177489179;
0.18426505643914495,5.088846910665094;
0.192208285836539,5.123688836416111;
0.20015136929916558,5.160272858454679;
0.20808803163202017,5.2735091171454815;
0.2160246939648748,5.386745375836286;
0.22395799979807596,5.540049849140759;
0.23188751132732097,5.738648825921555;
0.2398127907483071,5.987768595041324;
0.2477328165176618,6.299603830512924;
0.2556480264396876,6.668928243473701;
0.26319781570378425,7.08877344877345;
0.269665097345935,7.495988455988458;
0.2754100018887453,7.903203463203466;
0.2811528998285019,8.334372294372297;
0.28653380657736677,8.775122655122658;
0.29155490073294116,9.199447536590396;
0.29657347230181935,9.653885796742943;
0.301591585218571,10.113799216656362;
0.3066096981353227,10.573712636569782;
0.31162735239994777,11.039101216244077;
0.3166454653166994,11.499014636157497;
0.3213047593864348,11.930639730639733;
0.3256058461453226,12.326676286676289;
0.33026536954112123,12.75556380127809;
0.3356458176378595,13.201789321789324;
0.34138751161578385,13.64733044733045;
0.34749369389062235,14.053480840147511;
0.35468344586821504,14.459582841401026;
0.36260259602896444,14.781870654597931;
0.37053283723204716,14.971759149940972;
0.3784757747599061,15.01008526826709;
0.3864317004820765,14.893364817001185;
0.39439959285518544,14.63379247015611;
0.4020158991863285,14.259590187590192;
0.4085515257284891,13.850937950937954;
0.41436605939726356,13.42695526695527;
0.41982132512214787,12.980045351473926;
0.42455064008320553,12.57579605579608;
0.42891834606347695,12.17656565656566;
0.4332871222320437,11.764559884559887;
0.4376558984006104,11.352554112554115;
0.44202494211625104,10.9373544973545;
0.4463939858318916,10.522154882154885;
0.45076302954753217,10.10695526695527;
0.45513180571609896,9.694949494949498;
0.4595005818846657,9.282943722943726;
0.46386935805323243,8.870937950937954;
0.4685982908041846,8.471251288394146;
0.4736904760393766,8.04692640692641;
0.4791434198378701,7.6277344877344895;
0.4853198555151784,7.1952348885682245;
0.4918560305288403,6.780035273368609;
0.499113188154064,6.3814823560278136;
0.5070901284827605,6.013900039354587;
0.5150613773555229,5.714259477895842;
0.5230269347723512,5.482560671651582;
0.5309878222766181,5.306608946608948;
0.5389447695421613,5.177693821330186;
0.5468980684385158,5.0923311032401966;
0.5548494701828924,5.029615636888366;
0.5627983910362206,4.996515807424901;
0.5707458525418735,4.980836940836943;
0.5786920006346183,4.980836940836943;
0.5866381487273633,4.980836940836943;
0.5945842968201083,4.980836940836943;
0.6020696141886868,4.93840445269017;
0.6104765930055982,4.980836940836943;
0.6184227410983432,4.980836940836943;
0.6263688891910881,4.980836940836943;
0.6343150372838331,4.980836940836943;
0.642261185376578,4.980836940836943;
0.6502073334693229,4.980836940836943;
0.6581534815620679,4.980836940836943;
0.6660996296548128,4.980836940836943;
0.6740457777475578,4.980836940836943;
0.6819919258403028,4.980836940836943;
0.6899380739330477,4.980836940836943;
0.6983522765209527,4.937035662749949;
0.7058303701185376,4.980836940836943;
0.7137765182112825,4.980836940836943;
0.72172252036926,4.982579037124495;
0.7296672091143295,5.000000000000002;
0.7376133572070744,5.000000000000002;
0.7455595052998194,5.000000000000002;
0.7535056533925644,5.000000000000002;
0.7614518014853093,5.000000000000002;
0.7693979495780542,5.000000000000002;
0.7773440976707992,5.000000000000002;
0.7852902457635441,5.000000000000002;
0.7932363938562891,5.000000000000002;
];

% L=length(A(:,1));
% for K=1:5
%     B((1+(K-1)*L):K*L,1) = A(:,1) + 0.7932363938562891*(K-1);
%     B((1+(K-1)*L):K*L,2) = A(:,2);
% end
% 
 r=A(:,2)/1000000;
% T=5*T;
% time = 1:T/dt;
 pi=p;

for i=1:nloop    
    for t=1:T/dt-1
        p(t+1) = alpha*(beta*q(t+1)-gamma*q(t)+C*p(t)/(dt));
         pi(t+1) = R2*dt*(q(t+1)+C*pi(t)/dt)/(R2*C+dt);
    end
p(1)=p(T/dt);
 pi(1) = pi(T/dt);
end




% plotyy(time,1000000*q,time,133.322*p)
% subplot(121)
% plot(1000000*q)
% subplot(122)
% plot(133.322*p)

return

% KALMAN

qens = 10;

% bruits
sdmes = 4/133.322;

% mesure de p
y = p + randn(size(p))*sdmes;

init=[20,500,25000,0.65]';

% pr?dictions initiales
xf = init*(1:qens);
for i=1:qens
    xf(:,i) = init + [0;init(2)*randn(1)/1000;init(3)*randn(1)/1000;init(4)*randn(1)/1000];
end
xf_bar = mean(xf')';
xa = xf;

% allocations
e = zeros(1,qens);
y_kal = e;

%test=zeros(5,T/dt);

for t=2:length(p);
    Pyy = 0;
    Pxy = zeros(4,1);
    
% pr?diction
    for i=1:qens
        xf(1,i) = ( (1+xa(2,i)/xa(3,i)+xa(2,i)*xa(4,i)/dt)*q(t) - (xa(2,i)*xa(4,i)/dt)*q(t-1) + xa(4,i)*xa(1,i)/dt)/(xa(4,i)/dt + 1/xa(3,i));
        xf(2:4,i) = xa(2:4,i);
        xf(:,i) = xf(:,i) + [0;init(2)*randn(1)/1000;init(3)*randn(1)/1000;init(4)*randn(1)/1000];
        xf_bar = xf_bar + xf(:,i);
    end
    xf_bar = xf_bar/qens;
    
% bruitage des mesures
    e = sdmes*randn(1,qens);
    y_kal = y(t) + e;
    y_kal_bar = mean(y_kal);
    
    test(t) = xf_bar(4);
% calcul de Rk
    R = e*e'/(qens-1);
    
% calcul des matrices interm?diaires
% 
     for i=1:qens
         Pxy = Pxy + (xf(:,i)-xf_bar)*(y_kal(i)-y_kal_bar);
%         Pyy = Pyy + (y_kal(i)-y_kal_bar)^2;
     end
     Pxy = Pxy/(qens-1);
%     Pyy = Pyy/(qens-1) + Rk;
%     K = Pxy/Pyy;
    
    K = Pxy*inv(cov(y_kal)+R);
    
% analyse
    for i=1:qens
        xa(:,i) = xf(:,i) + K*(y(t) - xf(1,i));
    end
    tr(t-1,:) = xa(2,:);
    xf_bar = 0*xf_bar;
end

plot(1:t-1,tr(:,1),1:t-1,R1*ones(1,t-1))


% mean(xa(1,:))
% mean(xa(2,:))
% mean(xa(3,:))
% mean(xa(4,:))

