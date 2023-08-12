% boxplots for fall down,push down

% fall down
fall_max_polarr = [2.1639	2.1578	2.5236	2.3832	2.0011	2.6884	2.8284	2.8284	2.0107	2.8284	2.0608	2.0899	1.8033	1.8963	2.8284	2.7753	2.8284	2.8284	2.8284	2.5977	2.8284	2.8284	2.0204	2.604	2.5236	2.8626	2.5647	2.0424	2.509	2.1646	2.5419]';
fall_mean_bef_down = [0.8736	0.7112	0.7024	0.7057	0.7787	0.8367	0.8616	0.8108	0.7667	0.8485	0.8438	0.8063	0.9148	0.9246	0.8593	0.8245	0.9597	0.7654	0.7306	0.9291	0.7514	0.7308	0.8697	0.8871	0.8722	0.9159	0.86	0.7527	0.8162	0.8679	0.8967]';
fall_mean_aft_down = [-0.3277	0.4855	0.4344	0.3131	0.3807	-0.4089	0.0258	0.1467	0.1534	0.0326	0.2009	0.1137	0.035	-0.0824	-0.242	-0.101	0.3489	0.0754	0.2998	0.1339	0.1586	0.2178	-0.4358	0.1974	-0.0014	0.0098	0.0971	0.2369	0.4285	0.1368	-0.3498]';
fall_area_gyro = [3370.80 	3562.30 	3837.00 	3904.70 	4595.40 	3238.50 	2871.50 	3454.70 	3478.80 	3332.10 	2955.00 	2901.20 	3176.40 	3125.40 	3424.80 	3777.90 	2812.00 	4965.30 	5203.70 	3755.50 	3803.70 	3807.60 	3840.50 	3822.80 	4060.10 	4580.10 	4708.30 	4072.90 	3691.10 	4063.10 	4336.70 ]';
fall_max_gyro = [217.9252	404.3045	404.3045	404.3045	308.2945	258.3747	218.4607	268.1561	271.8146	291.877	291.877	291.877	209.3049	205.8987	282.1756	289.9437	269.1935	364.7467	364.7467	244.7002	262.309	262.309	414.2684	433.2463	433.2463	433.2463	433.2463	323.4251	373.3849	418.031	418.031]';
% push down
push_max_polarr = [2.0253	2.8284	2.0515	1.9736	2.8284	2.8284	2.5564	2.0926	1.8349	2.4565	2.52	2.5235	2.4611	1.8324	2.3112	2.8966	1.731	2.6729	2.7683	1.8607	2.5044	2.0094	2.4973	2.8284	2.8284	2.0098	2.5768	2.0169	2.1764	2.1227	1.8162	2.8284	2.8284	2.8284	2.8284	2.4075	2.2951	2.8284	1.7166	2.2275	2.7192	1.7051	2.5013	2.5236	2.711	3.0406	2.262	2.3105	2.8523	1.7429	2.5903	2.4385	2.6581	2.4367	2.2316	2.1109	1.9704]';
push_mean_bef_down = [0.766	0.7353	0.9576	0.7873	0.7238	0.7024	0.9292	0.849	0.859	0.8473	0.9115	0.8889	0.8411	0.9222	0.8251	0.8584	0.9392	0.8701	0.8301	1.011	0.897	0.8826	0.833	0.8137	0.8144	0.8269	0.6957	0.6071	1.0127	0.8793	0.8137	0.8226	0.8184	0.8169	0.8133	0.7769	0.8057	0.8271	0.7921	0.8912	0.7973	0.8387	0.9019	0.8359	0.8028	0.8672	0.9084	0.8076	1.0071	1.0131	0.7517	0.7353	0.8448	0.8416	0.8617	0.8539	0.7469]';
push_mean_aft_down = [-0.0362	-0.11	-0.192	-0.2564	-0.1926	-0.1845	-0.0863	-0.1014	-0.0845	-0.39	-0.1141	0.3466	-0.0156	-0.363	0.4447	0.4507	0.3888	-0.0656	0.3103	0.3633	0.4499	0.4983	-0.1519	-0.2637	-0.0032	-0.155	-0.3688	-0.2533	0.4342	-0.3909	-0.1639	-0.4245	-0.2077	-0.2509	-0.3212	-0.2374	-0.1691	-0.3847	0.0514	0.3984	-0.1823	0.4692	0.025	-0.2954	-0.427	-0.225	0.0543	-0.1039	0.5418	0.5856	0.0498	0.1254	0.0609	0.1186	0.1186	-0.0681	-0.0344]';
push_area_gyro = [3698.60 	4198.70 	3462.30 	4466.80 	4570.00 	4644.90 	3678.30 	4296.00 	3606.70 	5282.20 	4632.40 	4135.70 	4000.60 	4440.80 	4161.60 	2959.80 	3196.50 	3826.10 	4116.40 	2299.10 	2347.80 	1924.50 	5071.60 	5537.70 	5754.60 	5974.30 	5855.40 	5939.50 	2187.00 	3520.80 	2844.70 	3936.80 	3623.30 	3802.10 	3799.80 	3725.10 	3645.30 	3664.60 	3335.60 	2956.20 	3067.50 	1373.60 	2412.10 	4649.50 	4974.30 	5044.10 	4655.10 	4019.80 	2959.80 	3197.40 	4905.10 	4846.10 	4342.70 	4651.40 	4570.30 	3624.80 	2505.00 ]';
push_max_gyro = [364.476	364.476	333.3166	386.9371	386.9371	404.6581	352.0892	352.0892	347.4307	433.2419	346.5151	398.132	398.132	349.718	349.718	218.2529	358.2218	381.9985	381.9985	218.8665	207.037	210.5101	404.7278	404.7278	404.7278	404.7278	433.2419	433.2419	230.6753	259.7792	327.49	389.7285	389.7285	397.6857	397.6857	397.6857	397.6857	392.712	392.712	180.1518	202.0886	149.8831	193.5867	370.6455	370.6455	370.6455	370.6455	274.8831	333.8492	333.8492	382.4722	382.4722	401.1208	401.1208	401.1208	347.1046	131.9263]';
% boxplot
% make the features of the same length
maxlength = max([length(fall_max_polarr),length(push_max_polarr)]);
% fall down
if length(fall_max_polarr)<maxlength
    wfall_max_polarr = zeros(maxlength,1);
    wfall_max_polarr(:,:)=NaN;
    wfall_max_polarr(1:numel(fall_max_polarr))=fall_max_polarr;
    fall_max_polarr = wfall_max_polarr;
    
    wfall_mean_bef_down = zeros(maxlength,1);
    wfall_mean_bef_down(:,:)=NaN;
    wfall_mean_bef_down(1:numel(fall_mean_bef_down))=fall_mean_bef_down;
    fall_mean_bef_down = wfall_mean_bef_down;
    
    wfall_mean_aft_down = zeros(maxlength,1);
    wfall_mean_aft_down(:,:)=NaN;
    wfall_mean_aft_down(1:numel(fall_mean_aft_down))=fall_mean_aft_down;
    fall_mean_aft_down = wfall_mean_aft_down;
    
    wfall_area_gyro = zeros(maxlength,1);
    wfall_area_gyro(:,:)=NaN;
    wfall_area_gyro(1:numel(fall_area_gyro))=fall_area_gyro;
    fall_area_gyro = wfall_area_gyro;
    
    wfall_max_gyro = zeros(maxlength,1);
    wfall_max_gyro(:,:)=NaN;
    wfall_max_gyro(1:numel(fall_max_gyro))=fall_max_gyro;
    fall_max_gyro = wfall_max_gyro;    
end;
% push down
if length(push_max_polarr)<maxlength
    wpush_max_polarr = zeros(maxlength,1);
    wpush_max_polarr(:,:)=NaN;
    wpush_max_polarr(1:numel(push_max_polarr))=push_max_polarr;
    push_max_polarr = wpush_max_polarr;
    
    wpush_mean_bef_down = zeros(maxlength,1);
    wpush_mean_bef_down(:,:)=NaN;
    wpush_mean_bef_down(1:numel(push_mean_bef_down))=push_mean_bef_down;
    push_mean_bef_down = wpush_mean_bef_down;
    
    wpush_mean_aft_down = zeros(maxlength,1);
    wpush_mean_aft_down(:,:)=NaN;
    wpush_mean_aft_down(1:numel(push_mean_aft_down))=push_mean_aft_down;
    push_mean_aft_down = wpush_mean_aft_down;
    
    wpush_area_gyro = zeros(maxlength,1);
    wpush_area_gyro(:,:)=NaN;
    wpush_area_gyro(1:numel(push_area_gyro))=push_area_gyro;
    push_area_gyro = wpush_area_gyro;
    
    wpush_max_gyro = zeros(maxlength,1);
    wpush_max_gyro(:,:)=NaN;
    wpush_max_gyro(1:numel(push_max_gyro))=push_max_gyro;
    push_max_gyro = wpush_max_gyro;    
end;
% max_polarr
boxplot([fall_max_polarr push_max_polarr],{'fall','push'});
title('max polarr');
% mean_bef_down
figure;
boxplot([fall_mean_bef_down push_mean_bef_down],{'fall','push'});
title('mean bef down');
% mean_aft_down
figure;
boxplot([fall_mean_aft_down push_mean_aft_down],{'fall','push'});
title('mean aft down');
% area_gyro
figure;
boxplot([fall_area_gyro push_area_gyro],{'fall','push'});
title('area gyro');
% max_gyro
figure;
boxplot([fall_max_gyro push_max_gyro],{'fall','push'});
title('max gyro');
