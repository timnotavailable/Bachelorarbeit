% boxplots for walk,siup,jump,roll,shake,run,shoulderhit,push
% parameters:winlen = 600;fs = 50Hz;thwidth = 25;peakthreshold = 0.2;peakthreshold_th = 20;
disp('Parameters:winlen = 600;fs = 50Hz;thwidth = 25;peakthreshold = 0.2;peakthreshold_th = 20;');
% walk
walk_area_polarr = [0.1929	0.4279	0.2189	0.1661	0.249	0.2638	0.258	0.3026	0.2232	0.2218	0.214	0.4307	0.2225]';
walk_area_gyro_hori = [17.713	52.8399	16.6912	12.5774	28.8017	29.7182	19.585	23.7826	21.0284	17.9345	23.1176	59.8849	3.658]';
walk_area_accy = [0.1686	0.2877	0.1341	0.0777	0.2231	0.1884	0.0542	0.1724	0.1451	0.1101	0.1424	0.6022	0.011]';
walk_polarr_var = [0.0124	0.2577	0.0222	0.0155	0.0289	0.0215	0.0102	0.0356	0.0128	0.0115	0.0143	0.0818	0.0011]';
walk_dpolarth_mean = [28.0832	40.2461	19.6972	17.2407	34.4061	34.8783	8.93	21.6283	27.761	21.6563	26.0268	43.0636	2.5447]';
walk_dpolarth_var = [1096.30 	1820.50 	732.85 	641.08 	1649.90 	1552.30 	299.35 	684.28 	1100.50 	804.05 	1033.30 	1483.90 	18.24 ]';
% situp
situp_area_polarr = [0.5993	0.7381	0.7758]';
situp_area_gyro_hori = [80.7948	85.882	61.2776]';
situp_area_accy = [0.403	0.5461	0.647]';
situp_polarr_var = [0.125	0.0854	0.069]';
situp_dpolarth_mean = [9.5054	6.2388	4.6317]';
situp_dpolarth_var = [239.0924	115.8601	123.3855]';
% jump
jump_area_polarr = [0.4605	0.5646	0.0868]';
jump_area_gyro_hori = [54.3224	89.8322	10.0255]';
jump_area_accy = [0.5832	0.6744	0.0543]';
jump_polarr_var = [0.1058	0.2142	0.006]';
jump_dpolarth_mean = [47.6564	45.4732	23.9497]';
jump_dpolarth_var = [1828.60 	1880.10 	798.58 ]';
% roll
roll_area_polarr = [0.2386]';
roll_area_gyro_hori = [12.5025]';
roll_area_accy = [0.0562]';
roll_polarr_var = [0.0088]';
roll_dpolarth_mean = [12.5555]';
roll_dpolarth_var = [333.583]';
% shake
shake_area_polarr = [0.6192	0.5684	0.1329]';
shake_area_gyro_hori = [73.2845	73.0729	11.6129]';
shake_area_accy = [0.2562	0.2529	0.0473]';
shake_polarr_var = [0.169	0.1573	0.0053]';
shake_dpolarth_mean = [25.5167	24.6962	22.0766]';
shake_dpolarth_var = [1092.50 	1262.60 	915.30 ]';
% run
run_area_polarr = [0.3906	0.2398	0.1763	0.5863	0.4291	0.4281]';
run_area_gyro_hori = [38.6448	25.1039	17.4486	63.5092	45.8047	39.323]';
run_area_accy = [0.4637	0.2283	0.195	0.302	0.2393	0.1648]';
run_polarr_var = [0.1549	0.027	0.0155	0.2142	0.1556	0.0767]';
run_dpolarth_mean = [37.9488	35.1609	32.0251	25.0056	25.5915	16.6388]';
run_dpolarth_var = [1795.30 	1414.80 	1218.40 	1110.60 	966.71 	509.49 ]';
% shoulderhit
shoulderhit_area_polarr = [0.4236	0.4724	0.6033	0.2348	0.5067	0.2108	0.2265	0.2539	0.2279	0.3265	0.2355	0.3632	0.2581	0.1741	0.2244	0.5637	0.5627	0.4498	0.5205	0.5224	0.2858	0.2711	0.2982	0.2533	0.2778	0.2945]';
shoulderhit_area_gyro_hori = [40.7371	50.9586	58.4026	32.4024	69.8354	23.6286	27.7093	35.0084	32.0109	40.3663	27.2328	37.5295	26.0642	15.1267	23.6947	56.1707	49.0973	48.2837	48.9173	41.8986	27.6293	31.1955	32.2361	27.0017	30.1307	31.9981]';
shoulderhit_area_accy = [0.3097	0.2944	0.3307	0.1189	0.2555	0.107	0.1356	0.1517	0.0981	0.2575	0.1085	0.2028	0.1625	0.0525	0.1196	0.2927	0.316	0.3056	0.3393	0.3124	0.2028	0.208	0.2042	0.1876	0.1806	0.2284]';
shoulderhit_polarr_var = [0.1884	0.3141	0.1506	0.021	0.1295	0.0178	0.0202	0.0439	0.0297	0.0537	0.0195	0.0869	0.0419	0.0021	0.0257	0.2512	0.2003	0.1508	0.2269	0.1858	0.0617	0.0924	0.1372	0.0794	0.1008	0.1279]';
shoulderhit_dpolarth_mean = [32.8971	39.2504	17.6587	32.487	27.1269	20.5223	28.5482	24.9454	18.1995	37.3331	25.9383	32.1196	28.8805	11.9743	22.0382	33.5726	28.8956	31.7514	31.2853	28.8855	30.1253	33.2063	29.1028	35.6711	29.0807	37.3181]';
shoulderhit_dpolarth_var = [1528.70 	1808.80 	801.98 	1648.50 	1299.50 	680.36 	1035.50 	924.35 	700.13 	1363.40 	1285.80 	1513.30 	1161.90 	341.76 	729.08 	1436.80 	1058.00 	1466.80 	1201.20 	1077.10 	1177.30 	1674.10 	1383.30 	1499.80 	1229.10 	1534.60 ]';
% push
push_area_polarr = [0.5346	0.5078	0.5543	0.4796	0.425	0.3889	0.5298	0.523	0.5586	0.4017	0.4029	0.47	0.4095	0.4171	0.4035	0.392	0.4183	0.4293	0.4476	0.4252	0.5288	0.3977	0.1784	0.3481	0.1718	0.1766	0.4079	0.224	0.192	0.1932	0.2236	0.2258	0.2221	0.3736	0.3774	0.2012	0.4924	0.4591	0.4366	0.3991	0.4319	0.1312	0.4934	0.3003	0.6554	0.5269	0.6968	0.6384	0.2354	0.16	0.6162	1.1234	0.9627	0.9566	0.6559	0.7758	0.9797	0.5961	0.4786	0.4513	0.5515	0.5872	0.4667	0.5109	0.3676	0.1334	0.1736	0.1318	0.1504]';
push_area_gyro_hori = [44.8644	53.4427	55.9183	56.4882	52.6064	44.3444	51.9849	49.0819	51.5835	44.6706	40.8387	49.0504	40.9129	47.1895	42.6813	49.0021	47.4349	47.329	47.2261	41.8689	58.0917	47.0593	18.4206	37.6337	20.7719	25.419	46.0503	35.888	21.4673	23.1364	26.2071	23.9601	23.1641	39.0038	39.1713	21.8382	52.439	46.0168	44.1178	46.4378	43.4487	12.0263	55.1489	24.037	92.4311	56.7308	96.8651	72.6787	28.3361	20.0854	58.4781	106.0104	76.6918	60.0871	55.7805	62.0785	59.0708	55.8417	46.4576	47.0377	52.478	53.6681	42.0641	51.5886	33.4579	9.0482	13.1667	8.1977	12.0915]';
push_area_accy = [0.364	0.2622	0.3144	0.2568	0.2641	0.2687	0.3135	0.3185	0.2807	0.2275	0.2174	0.2759	0.2288	0.223	0.2206	0.1924	0.2103	0.2365	0.2683	0.2513	0.3365	0.2559	0.0748	0.1845	0.0974	0.1484	0.2478	0.1362	0.0922	0.1145	0.1527	0.1125	0.1201	0.2611	0.2468	0.1346	0.3619	0.2815	0.2225	0.2129	0.203	0.0432	0.3256	0.1392	0.3843	0.3434	0.4561	0.3883	0.1185	0.0679	0.2961	0.6015	0.6188	0.5957	0.2681	0.3826	0.6644	0.3102	0.2133	0.216	0.2509	0.2514	0.2282	0.2337	0.1513	0.0581	0.0701	0.0393	0.0569]';
push_polarr_var = [0.1657	0.1243	0.1616	0.1371	0.1255	0.1027	0.1177	0.1275	0.1239	0.0849	0.0894	0.1614	0.1252	0.1028	0.1174	0.1016	0.0919	0.0967	0.1164	0.0783	0.1782	0.0957	0.0116	0.0607	0.0169	0.017	0.2576	0.0225	0.0084	0.0097	0.0295	0.0251	0.0278	0.0641	0.0759	0.055	0.119	0.1019	0.1014	0.0826	0.1165	0.0055	0.2	0.1022	0.297	0.1466	0.2872	0.3039	0.0203	0.0074	0.2688	0.2628	0.2436	0.1843	0.1641	0.1562	0.106	0.1719	0.1681	0.1372	0.1642	0.1733	0.1444	0.1545	0.1408	0.0039	0.0065	0.0023	0.0052]';
push_dpolarth_mean = [34.3716	25.8955	32.2401	37.9879	36.8563	37.9463	40.6956	44.6483	27.7076	40.0171	40.4455	39.7703	36.6136	35.7011	35.7403	39.6455	37.1204	39.2763	41.6994	40.0815	34.7081	41.1376	20.6457	28.8964	30.7302	37.6338	34.7679	24.4918	22.0581	19.6161	28.7077	22.3527	24.5664	33.2916	30.3263	28.6789	40.1498	36.9062	35.2251	37.3233	37.5582	17.5681	42.8062	33.9425	30.5074	33.1283	39.9253	39.3173	27.2535	24.289	25.1119	22.0671	25.5562	18.6982	29.2057	19.5669	11.7943	28.5405	25.5407	23.7404	28.1715	24.1829	22.2631	29.8846	22.6317	18.2997	15.2828	10.7247	15.5265]';
push_dpolarth_var = [1460.40 	1036.30 	1384.80 	1808.20 	1763.80 	1781.30 	1883.40 	2388.00 	1468.10 	1745.10 	1678.50 	1671.50 	1639.80 	1503.50 	1574.00 	1744.10 	1485.40 	1678.50 	1803.60 	1932.20 	1587.70 	1853.90 	830.98 	1278.20 	1268.40 	1296.40 	1583.40 	1322.10 	962.07 	635.79 	918.41 	918.74 	1059.70 	1375.70 	1296.60 	1307.60 	1691.80 	1563.80 	1478.50 	1609.20 	1838.20 	608.73 	1878.80 	1497.20 	1623.40 	1811.50 	2112.70 	1762.70 	1123.60 	1099.00 	1216.70 	1193.10 	1377.20 	968.40 	1151.50 	748.10 	453.65 	1162.20 	1106.10 	741.07 	1143.60 	1019.60 	991.86 	1395.30 	981.65 	746.42 	324.46 	192.56 	468.02 ]';
% boxplot
% make the features of the same length
maxlength = max([length(push_area_polarr),length(shoulderhit_area_polarr),length(run_area_polarr),length(walk_area_polarr)]);
% walk
if length(walk_area_polarr)<maxlength
    wwalk_area_polarr = zeros(maxlength,1);
    wwalk_area_polarr(:,:)=NaN;
    wwalk_area_polarr(1:numel(walk_area_polarr))=walk_area_polarr;
    walk_area_polarr = wwalk_area_polarr;
    
    wwalk_area_gyro_hori = zeros(maxlength,1);
    wwalk_area_gyro_hori(:,:)=NaN;
    wwalk_area_gyro_hori(1:numel(walk_area_gyro_hori))=walk_area_gyro_hori;
    walk_area_gyro_hori = wwalk_area_gyro_hori;
    
    wwalk_area_accy = zeros(maxlength,1);
    wwalk_area_accy(:,:)=NaN;
    wwalk_area_accy(1:numel(walk_area_accy))=walk_area_accy;
    walk_area_accy = wwalk_area_accy;
    
    wwalk_polarr_var = zeros(maxlength,1);
    wwalk_polarr_var(:,:)=NaN;
    wwalk_polarr_var(1:numel(walk_polarr_var))=walk_polarr_var;
    walk_polarr_var = wwalk_polarr_var;
    
    wwalk_dpolarth_mean = zeros(maxlength,1);
    wwalk_dpolarth_mean(:,:)=NaN;
    wwalk_dpolarth_mean(1:numel(walk_dpolarth_mean))=walk_dpolarth_mean;
    walk_dpolarth_mean = wwalk_dpolarth_mean;
    
    wwalk_dpolarth_var = zeros(maxlength,1);
    wwalk_dpolarth_var(:,:)=NaN;
    wwalk_dpolarth_var(1:numel(walk_dpolarth_var))=walk_dpolarth_var;
    walk_dpolarth_var = wwalk_dpolarth_var;
end;
% situp
if length(situp_area_polarr)<maxlength
    wsitup_area_polarr = zeros(maxlength,1);
    wsitup_area_polarr(:,:)=NaN;
    wsitup_area_polarr(1:numel(situp_area_polarr))=situp_area_polarr;
    situp_area_polarr = wsitup_area_polarr;
    
    wsitup_area_gyro_hori = zeros(maxlength,1);
    wsitup_area_gyro_hori(:,:)=NaN;
    wsitup_area_gyro_hori(1:numel(situp_area_gyro_hori))=situp_area_gyro_hori;
    situp_area_gyro_hori = wsitup_area_gyro_hori;
    
    wsitup_area_accy = zeros(maxlength,1);
    wsitup_area_accy(:,:)=NaN;
    wsitup_area_accy(1:numel(situp_area_accy))=situp_area_accy;
    situp_area_accy = wsitup_area_accy;
    
    wsitup_polarr_var = zeros(maxlength,1);
    wsitup_polarr_var(:,:)=NaN;
    wsitup_polarr_var(1:numel(situp_polarr_var))=situp_polarr_var;
    situp_polarr_var = wsitup_polarr_var;
    
    wsitup_dpolarth_mean = zeros(maxlength,1);
    wsitup_dpolarth_mean(:,:)=NaN;
    wsitup_dpolarth_mean(1:numel(situp_dpolarth_mean))=situp_dpolarth_mean;
    situp_dpolarth_mean = wsitup_dpolarth_mean;
    
    wsitup_dpolarth_var = zeros(maxlength,1);
    wsitup_dpolarth_var(:,:)=NaN;
    wsitup_dpolarth_var(1:numel(situp_dpolarth_var))=situp_dpolarth_var;
    situp_dpolarth_var = wsitup_dpolarth_var;
end;
% jump
if length(jump_area_polarr)<maxlength
    wjump_area_polarr = zeros(maxlength,1);
    wjump_area_polarr(:,:)=NaN;
    wjump_area_polarr(1:numel(jump_area_polarr))=jump_area_polarr;
    jump_area_polarr = wjump_area_polarr;
    
    wjump_area_gyro_hori = zeros(maxlength,1);
    wjump_area_gyro_hori(:,:)=NaN;
    wjump_area_gyro_hori(1:numel(jump_area_gyro_hori))=jump_area_gyro_hori;
    jump_area_gyro_hori = wjump_area_gyro_hori;
    
    wjump_area_accy = zeros(maxlength,1);
    wjump_area_accy(:,:)=NaN;
    wjump_area_accy(1:numel(jump_area_accy))=jump_area_accy;
    jump_area_accy = wjump_area_accy;
    
    wjump_polarr_var = zeros(maxlength,1);
    wjump_polarr_var(:,:)=NaN;
    wjump_polarr_var(1:numel(jump_polarr_var))=jump_polarr_var;
    jump_polarr_var = wjump_polarr_var;
    
    wjump_dpolarth_mean = zeros(maxlength,1);
    wjump_dpolarth_mean(:,:)=NaN;
    wjump_dpolarth_mean(1:numel(jump_dpolarth_mean))=jump_dpolarth_mean;
    jump_dpolarth_mean = wjump_dpolarth_mean;
    
    wjump_dpolarth_var = zeros(maxlength,1);
    wjump_dpolarth_var(:,:)=NaN;
    wjump_dpolarth_var(1:numel(jump_dpolarth_var))=jump_dpolarth_var;
    jump_dpolarth_var = wjump_dpolarth_var;
end;
% roll
if length(roll_area_polarr)<maxlength
    wroll_area_polarr = zeros(maxlength,1);
    wroll_area_polarr(:,:)=NaN;
    wroll_area_polarr(1:numel(roll_area_polarr))=roll_area_polarr;
    roll_area_polarr = wroll_area_polarr;
    
    wroll_area_gyro_hori = zeros(maxlength,1);
    wroll_area_gyro_hori(:,:)=NaN;
    wroll_area_gyro_hori(1:numel(roll_area_gyro_hori))=roll_area_gyro_hori;
    roll_area_gyro_hori = wroll_area_gyro_hori;
    
    wroll_area_accy = zeros(maxlength,1);
    wroll_area_accy(:,:)=NaN;
    wroll_area_accy(1:numel(roll_area_accy))=roll_area_accy;
    roll_area_accy = wroll_area_accy;
    
    wroll_polarr_var = zeros(maxlength,1);
    wroll_polarr_var(:,:)=NaN;
    wroll_polarr_var(1:numel(roll_polarr_var))=roll_polarr_var;
    roll_polarr_var = wroll_polarr_var;
    
    wroll_dpolarth_mean = zeros(maxlength,1);
    wroll_dpolarth_mean(:,:)=NaN;
    wroll_dpolarth_mean(1:numel(roll_dpolarth_mean))=roll_dpolarth_mean;
    roll_dpolarth_mean = wroll_dpolarth_mean;
    
    wroll_dpolarth_var = zeros(maxlength,1);
    wroll_dpolarth_var(:,:)=NaN;
    wroll_dpolarth_var(1:numel(roll_dpolarth_var))=roll_dpolarth_var;
    roll_dpolarth_var = wroll_dpolarth_var;
end;
% shake
if length(shake_area_polarr)<maxlength
    wshake_area_polarr = zeros(maxlength,1);
    wshake_area_polarr(:,:)=NaN;
    wshake_area_polarr(1:numel(shake_area_polarr))=shake_area_polarr;
    shake_area_polarr = wshake_area_polarr;
    
    wshake_area_gyro_hori = zeros(maxlength,1);
    wshake_area_gyro_hori(:,:)=NaN;
    wshake_area_gyro_hori(1:numel(shake_area_gyro_hori))=shake_area_gyro_hori;
    shake_area_gyro_hori = wshake_area_gyro_hori;
    
    wshake_area_accy = zeros(maxlength,1);
    wshake_area_accy(:,:)=NaN;
    wshake_area_accy(1:numel(shake_area_accy))=shake_area_accy;
    shake_area_accy = wshake_area_accy;
    
    wshake_polarr_var = zeros(maxlength,1);
    wshake_polarr_var(:,:)=NaN;
    wshake_polarr_var(1:numel(shake_polarr_var))=shake_polarr_var;
    shake_polarr_var = wshake_polarr_var;
    
    wshake_dpolarth_mean = zeros(maxlength,1);
    wshake_dpolarth_mean(:,:)=NaN;
    wshake_dpolarth_mean(1:numel(shake_dpolarth_mean))=shake_dpolarth_mean;
    shake_dpolarth_mean = wshake_dpolarth_mean;
    
    wshake_dpolarth_var = zeros(maxlength,1);
    wshake_dpolarth_var(:,:)=NaN;
    wshake_dpolarth_var(1:numel(shake_dpolarth_var))=shake_dpolarth_var;
    shake_dpolarth_var = wshake_dpolarth_var;
end;
% run
if length(run_area_polarr)<maxlength
    wrun_area_polarr = zeros(maxlength,1);
    wrun_area_polarr(:,:)=NaN;
    wrun_area_polarr(1:numel(run_area_polarr))=run_area_polarr;
    run_area_polarr = wrun_area_polarr;
    
    wrun_area_gyro_hori = zeros(maxlength,1);
    wrun_area_gyro_hori(:,:)=NaN;
    wrun_area_gyro_hori(1:numel(run_area_gyro_hori))=run_area_gyro_hori;
    run_area_gyro_hori = wrun_area_gyro_hori;
    
    wrun_area_accy = zeros(maxlength,1);
    wrun_area_accy(:,:)=NaN;
    wrun_area_accy(1:numel(run_area_accy))=run_area_accy;
    run_area_accy = wrun_area_accy;
    
    wrun_polarr_var = zeros(maxlength,1);
    wrun_polarr_var(:,:)=NaN;
    wrun_polarr_var(1:numel(run_polarr_var))=run_polarr_var;
    run_polarr_var = wrun_polarr_var;
    
    wrun_dpolarth_mean = zeros(maxlength,1);
    wrun_dpolarth_mean(:,:)=NaN;
    wrun_dpolarth_mean(1:numel(run_dpolarth_mean))=run_dpolarth_mean;
    run_dpolarth_mean = wrun_dpolarth_mean;
    
    wrun_dpolarth_var = zeros(maxlength,1);
    wrun_dpolarth_var(:,:)=NaN;
    wrun_dpolarth_var(1:numel(run_dpolarth_var))=run_dpolarth_var;
    run_dpolarth_var = wrun_dpolarth_var;
end;
% shoulderhit
if length(shoulderhit_area_polarr)<maxlength
    wshoulderhit_area_polarr = zeros(maxlength,1);
    wshoulderhit_area_polarr(:,:)=NaN;
    wshoulderhit_area_polarr(1:numel(shoulderhit_area_polarr))=shoulderhit_area_polarr;
    shoulderhit_area_polarr = wshoulderhit_area_polarr;
    
    wshoulderhit_area_gyro_hori = zeros(maxlength,1);
    wshoulderhit_area_gyro_hori(:,:)=NaN;
    wshoulderhit_area_gyro_hori(1:numel(shoulderhit_area_gyro_hori))=shoulderhit_area_gyro_hori;
    shoulderhit_area_gyro_hori = wshoulderhit_area_gyro_hori;
    
    wshoulderhit_area_accy = zeros(maxlength,1);
    wshoulderhit_area_accy(:,:)=NaN;
    wshoulderhit_area_accy(1:numel(shoulderhit_area_accy))=shoulderhit_area_accy;
    shoulderhit_area_accy = wshoulderhit_area_accy;
    
    wshoulderhit_polarr_var = zeros(maxlength,1);
    wshoulderhit_polarr_var(:,:)=NaN;
    wshoulderhit_polarr_var(1:numel(shoulderhit_polarr_var))=shoulderhit_polarr_var;
    shoulderhit_polarr_var = wshoulderhit_polarr_var;
    
    wshoulderhit_dpolarth_mean = zeros(maxlength,1);
    wshoulderhit_dpolarth_mean(:,:)=NaN;
    wshoulderhit_dpolarth_mean(1:numel(shoulderhit_dpolarth_mean))=shoulderhit_dpolarth_mean;
    shoulderhit_dpolarth_mean = wshoulderhit_dpolarth_mean;
    
    wshoulderhit_dpolarth_var = zeros(maxlength,1);
    wshoulderhit_dpolarth_var(:,:)=NaN;
    wshoulderhit_dpolarth_var(1:numel(shoulderhit_dpolarth_var))=shoulderhit_dpolarth_var;
    shoulderhit_dpolarth_var = wshoulderhit_dpolarth_var;
end;
% push
if length(push_area_polarr)<maxlength
    wpush_area_polarr = zeros(maxlength,1);
    wpush_area_polarr(:,:)=NaN;
    wpush_area_polarr(1:numel(push_area_polarr))=push_area_polarr;
    push_area_polarr = wpush_area_polarr;
    
    wpush_area_gyro_hori = zeros(maxlength,1);
    wpush_area_gyro_hori(:,:)=NaN;
    wpush_area_gyro_hori(1:numel(push_area_gyro_hori))=push_area_gyro_hori;
    push_area_gyro_hori = wpush_area_gyro_hori;
    
    wpush_area_accy = zeros(maxlength,1);
    wpush_area_accy(:,:)=NaN;
    wpush_area_accy(1:numel(push_area_accy))=push_area_accy;
    push_area_accy = wpush_area_accy;
    
    wpush_polarr_var = zeros(maxlength,1);
    wpush_polarr_var(:,:)=NaN;
    wpush_polarr_var(1:numel(push_polarr_var))=push_polarr_var;
    push_polarr_var = wpush_polarr_var;
    
    wpush_dpolarth_mean = zeros(maxlength,1);
    wpush_dpolarth_mean(:,:)=NaN;
    wpush_dpolarth_mean(1:numel(push_dpolarth_mean))=push_dpolarth_mean;
    push_dpolarth_mean = wpush_dpolarth_mean;
    
    wpush_dpolarth_var = zeros(maxlength,1);
    wpush_dpolarth_var(:,:)=NaN;
    wpush_dpolarth_var(1:numel(push_dpolarth_var))=push_dpolarth_var;
    push_dpolarth_var = wpush_dpolarth_var;
end;
% area_polarr:walk,situp,jump,roll,run,shake,shoulderhit,push
boxplot([walk_area_polarr situp_area_polarr jump_area_polarr roll_area_polarr run_area_polarr shake_area_polarr shoulderhit_area_polarr push_area_polarr],{'walk','situp','jump','roll','run','shake','shoulderhit','push'});
title('area polarr');
% area_gyro_hori
figure;
boxplot([walk_area_gyro_hori situp_area_gyro_hori jump_area_gyro_hori roll_area_gyro_hori run_area_gyro_hori shake_area_gyro_hori shoulderhit_area_gyro_hori push_area_gyro_hori],{'walk','situp','jump','roll','run','shake','shoulderhit','push'});
title('area gyro hori');
% area_accy
figure;
boxplot([walk_area_accy situp_area_accy jump_area_accy roll_area_accy run_area_accy shake_area_accy shoulderhit_area_accy push_area_accy],{'walk','situp','jump','roll','run','shake','shoulderhit','push'});
title('area accy');
% polarr_var
figure;
boxplot([walk_polarr_var situp_polarr_var jump_polarr_var roll_polarr_var run_polarr_var shake_polarr_var shoulderhit_polarr_var push_polarr_var],{'walk','situp','jump','roll','run','shake','shoulderhit','push'});
title('polarr var');
% dpolarth_mean
figure;
boxplot([walk_dpolarth_mean situp_dpolarth_mean jump_dpolarth_mean roll_dpolarth_mean run_dpolarth_mean shake_dpolarth_mean shoulderhit_dpolarth_mean push_dpolarth_mean],{'walk','situp','jump','roll','run','shake','shoulderhit','push'});
title('dpolarth mean');
% dpolarth_var
figure;
boxplot([walk_dpolarth_var situp_dpolarth_var jump_dpolarth_var roll_dpolarth_var run_dpolarth_var shake_dpolarth_var shoulderhit_dpolarth_var push_dpolarth_var],{'walk','situp','jump','roll','run','shake','shoulderhit','push'});
title('dpolarth var');
