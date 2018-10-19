
local myname, ns = ...


ns.itemdb, ns.bests, ns.allitems = {}, {}, {}


local function ProcessLine(t, value, id, ...)
	if id then
		t[tonumber(id)] = tonumber(value) or 0
		ns.allitems[tonumber(id)] = tonumber(value) or 0
		return ProcessLine(t, value, ...)
	end
end

local function ProcessData(...)
	local t = {}
	for i=1,select("#", ...) do
		local line = select(i, ...)
		if line and line ~= "" then
			ProcessLine(t, string.split(" ", line))
		end
	end
	return t
end

local function DB(name, raw)
	ns.bests[name] = {}
	ns.itemdb[name] = ProcessData(string.split("\n", raw))
end


DB("bandage", [[
61 1251
105 2581
149 3530
279 3531
370 6450
592 6451
740 8544
1090 8545
1362 14529
1544 14530
1636 21990
1849 21991
1923 34721
2325 34722
2392 53049
2576 53050
2760 53051
2828 72985
3231 72986
4748 111603
5006 133940
6436 136653
7866 133942
20952 115497
23276 158381
36577 158382
]])

DB("hppot", [[
74 118
102 4596 858
150 929
303 1710
361 18839 3928
746 11562
801 39327
896 13446 28100 31853
920 57193
1281 22829 32947 33092 33934 39671 43569
1322 40077
1409 34440
1442 33447 41166
2300 57191 63300
4039 76094 76097 89640 113585
5936 117415 109226 109223 136569 129196 140351 127834
7151 127836
22258 115498
33251 152494 163082
]])

DB("mppot", [[
148 2455
419 3385
533 3827
795 6149
920 57193
1010 76094 89641 113585
1139 13443 18841
1153 13444 28101 31855
1409 34440
1484 109226
1537 22832 32948 33093 33935 40067 43570
1683 40077
1723 33448 42545
1788 127836
1840 57192
2020 76098
2384 140347 127835
2968 109222
8313 163082
11084 152495
]])

DB("water", [[
165 159 60269
272 2682
436 1205 19299 90660 9451
466 1179 17404 49365 49601 63530 90659
961 10841 1708 17405 4791 61382
1470 1645 19300 63023
2543 23161
2574 23585 38429 8766
4099 19301
4416 24006 18300 24007 32455
4625 13724
5050 75037 75038
6732 81924 85501 86026 140340
7788 28399 29454 32722 38430 33444 38698 43086
8212 75026
8442 34759 34760 34761 39520
8760 27860 29395 29401 30457 32453 32668 33042 33053 34780 35954 37253 38431 40357 44750
8832 62672 62675 63251 68140
10100 74636 81923 88532 88578 112449
11220 33445 41731 42777 43236 58274 59229
12318 58256 59029 59230
14840 117452 111455 111544 117475
15150 58257
15384 45932
16288 133586
16288 128853 138975 139346 140203 140628 141527
17880 138983
17880 139398 133575 139347 140204 140265 140266 140269 140272 140298 141215 128850 138292 138982 140629
41564 154889
51304 159868 163102 163104 163783 162547 162569 163101
83128 163786 162570 163784 163785 158926 159867 154891
102606 163115
]])

DB("food", [[
76 11109 6299
83 117 16166 17344 19223 2070 20857 23495 2679 2681 30816 4536 4540 4604 4656 5057 60267 60268 60375 60377 60378 60379 6290 7097 787 961 140337
233 12238 16167 17119 17406 18633 19304 2287 24072 414 4537 4541 4592 4605 49600 5066 5095 62909 6316 6316 67230 6890 112095
272 2682 5473
293 16170 19305 2685 3770 422 4538 4542 4593 4606 5478 5526 57518 63693 65730 65731 7228 733 140753 140754
1115 13755 16169 1707 17407 18632 19224 3771 4539 4544 4594 4607 61383 63692 6807 8364
1218 13546 13893 13930 16168 16766 17408 18255 18635 19306 21030 21552 3927 4599 4601 4602 4608 63691 6887
1885 23160
2284 13724
2419 11415 11444 13933 13935 19225 21031 21033 22324 24338 67270 67271 67272 67273 8932 8948 8950 8952 8953 8957 140339
2765 32722
7119 19301
8287 75026 81175 81889 81917 81919 81922 82448 82450 83097 85504 86026 86057 86508 104196
8442 41751 24408 27661 27854 27855 27856 27857 27858 27859 28486 29393 29412 30458 30610 38427 140344 33443 33449 33451 33452 33454 35949 37252 40356 40358 40359 42428 42430 42432 42433 44608 44609 44749
11386 74641 81916 81918 81920 81921 82449 82451 88398 90135 75038 112449
12431 58258 58260 58262 58264 58266 58268 59228 59232 62676
13779 29394 29448 29449 29450 29451 29452 29453 30355 32685 32686 33048 33053 34780 38428
13781 34747 34759 34760 34761 35947 35948 35950 35951 35952 35953 38706 40202 41729 42429 42431 42434 42778 43087 44049 44071 44072 44607 44722 58276 58277 58278 58279 58280 59227 59231 140341
14839 111456 111544 115351 115352 115353 115354 115355 117454 117457 117469 117470 117471 117472 117473 117474 118050 118051 113290 113099 130259 128761
17079 58259 58261 58263 58265 58267 58269 62677
17878 132752 132753
18030 45932
32576 140626 128836 128837 128839 128843 128845 128848 136556 138285 138976 138977 138979 138980 138987 139344 140201 140202 140276 128763 140668 128849 143681
35756 133575 138983 138986 139398 140355
35757 136544 136545 136546 136547 136548 136549 136550 136551 136552 136553 136554 136555 136557 136558 136559 136560 140273 140275 138972 138973 138974 133893 133981 133979 133893 140184 140205 140206 140207 128764 128835 140286 140296 140297 140299 140300 140301 140302 140627 128838 140631 140679 141206 141207 141208 141212 141213 141214 128840 128844 128846 128847 128851 138290 138291 138978 139345
83128 158926 154889
102606 163118 159870 163109 163107 159875 163105 159878 163100 163083 159900 163061 163058 163054 162564 162555 162557 161373 161348 161348 161347 162562 161128 161127 162565 162566 161126 163050 163051 163052 162545 159920 163060 159898 159876 159872 163115 162554 161053 163841
166257 163133 163117 159869 159871 159873 159897 159899 160518 163053 162582 162568 162567 162563 161346 162561 162559 162558 161383 162556 162546 162550 155812 160554 160989 160483 163056 159919 163075 163076 163077 159879 159874 154891 163208
]])

DB("percfood", [[
50 19696 19994 19995 19996 21235
75 20388 20389 20390
100 21215 21537 123859
999 65500 65515 65516 65517 43518 43523 65499 80610 113509
]])

DB("percwater", [[
60 19997 21241
75 20388 20389 20390 21537
100 21215 133980 123859
999 65500 65515 65516 65517 43518 43523 65499 80610 113509
]])
