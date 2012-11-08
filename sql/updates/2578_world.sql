DELETE FROM `script_texts` WHERE `entry` IN (-1000403,-1000404,-1000405,-1000406,-1000407,-1000408,-1000409);
INSERT INTO `script_texts` VALUES ('-1000409', 'You find it, you keep it! Don''t tell no one that Rin''ji talked to you!', null, 'Vous l''avez trouvé, vous le gardez ! Ne dites à personne que Rin''ji vous a parlé !', null, null, null, null, null, null, '0', '0', '1', '0', 'SAY_RIN_PROGRESS_2');
INSERT INTO `script_texts` VALUES ('-1000408', 'Rin''ji will tell you secret now... $n, should go to the Overlook Cliffs. Rin''ji hid something on island  there', null, 'Rin''ji va vous dire son secret maintenant... $n, vous devriez aller aux Hauts-Surplombs, Rin''ji a caché quelque chose sur cette île.', null, null, null, null, null, null, '0', '0', '1', '0', 'SAY_RIN_PROGRESS_1');
INSERT INTO `script_texts` VALUES ('-1000406', 'Rin''ji is being attacked!', null, 'Rin''ji se fait attaquer !', null, null, null, null, null, null, '0', '0', '1', '0', 'SAY_RIN_HELP_2');
INSERT INTO `script_texts` VALUES ('-1000407', 'Rin''ji can see road now, $n. Rin''ji knows the way home.', null, 'Rin''ji voit la route maintenant, $n. Rin''ji connaît la route jusqu''à la maison.', null, null, null, null, null, null, '0', '0', '1', '0', 'SAY_RIN_COMPLETE');
INSERT INTO `script_texts` VALUES ('-1000405', 'Rin''ji needs help!', null, 'Rin''ji a besoin d''aide !', null, null, null, null, null, null, '0', '0', '1', '0', 'SAY_RIN_HELP_1');
INSERT INTO `script_texts` VALUES ('-1000404', 'Attack my sisters! The troll must not escape!', null, 'Attaquez mes soeurs ! Le troll ne doit pas s''échapper !', null, null, null, null, null, null, '0', '0', '0', '0', 'SAY_RIN_BY_OUTRUNNER');
INSERT INTO `script_texts` VALUES ('-1000403', 'Rin''ji is free!', null, 'Rin''ji est libre !', null, null, null, null, null, null, '0', '0', '0', '0', 'SAY_RIN_FREE');

UPDATE `creature_template` SET `ScriptName` = 'npc_OOxO9hl' WHERE `entry` = '7806';
UPDATE `creature_template` SET `ScriptName` = 'npc_rinji' WHERE `entry` = '7780';
UPDATE `quest_template` SET `SpecialFlags` = '2' WHERE `entry` = '836';
UPDATE `quest_template` SET `SpecialFlags` = '2' WHERE `entry` = '2742';

DELETE FROM `script_waypoint` WHERE `entry`=7806;
INSERT INTO `script_waypoint` VALUES
   (7806,0,495.404358,-3478.350830,114.837,0, ''),
   (7806,1,492.704742,-3486.112549,108.627,0, ''),
   (7806,2,487.249756,-3485.764404,107.890,0, ''),
   (7806,3,476.851959,-3489.875977,99.985,0, ''),
   (7806,4,467.212402,-3493.355469,99.819,0, ''),
   (7806,5,460.017029,-3496.984375,104.481,0, ''),
   (7806,6,439.619446,-3500.730225,110.534,0, ''),
   (7806,7,428.326385,-3495.874756,118.662,0, ''),
   (7806,8,424.664032,-3489.381592,121.999,0, ''),
   (7806,9,424.137299,-3470.952637,124.333,0, ''),
   (7806,10,421.791107,-3449.242676,119.126,0, ''),
   (7806,11,404.247070,-3429.376953,117.644,0, ''),
   (7806,12,335.465271,-3430.717773,116.456,0, ''),
   (7806,13,317.160126,-3426.708984,116.226,0, ''),
   (7806,14,331.180115,-3464.002197,117.143,0, ''),
   (7806,15,336.393616,-3501.877441,118.201,0, ''),
   (7806,16,337.251312,-3544.764648,117.284,0, ''),
   (7806,17,337.748932,-3565.415527,116.797,0, ''),
   (7806,18,336.010925,-3597.363037,118.225,0, ''),
   (7806,19,324.619141,-3622.884033,119.811,0, ''),
   (7806,20,308.027466,-3648.600098,123.047,0, ''),
   (7806,21,276.325409,-3685.738525,128.356,0, ''),
   (7806,22,239.981064,-3717.330811,131.874,0, ''),
   (7806,23,224.950974,-3730.169678,132.125,0, ''),
   (7806,24,198.707870,-3768.292725,129.420,0, ''),
   (7806,25,183.758316,-3791.068848,128.045,0, ''),
   (7806,26,178.110657,-3801.575439,128.370,3000, 'SAY_OOX_DANGER'),
   (7806,27,162.215225,-3827.014160,129.424,0, ''),
   (7806,28,141.664734,-3864.519287,131.419,0, ''),
   (7806,29,135.301697,-3880.089111,132.120,0, ''),
   (7806,30,122.461151,-3910.071533,135.605,0, ''),
   (7806,31,103.376175,-3937.725098,137.342,0, ''),
   (7806,32,81.414474,-3958.614258,138.469,0, ''),
   (7806,33,55.378139,-3982.004639,136.520,0, ''),
   (7806,34,13.983131,-4013.952881,126.903,0, ''),
   (7806,35,-21.658007,-4048.713623,118.068,0, ''),
   (7806,36,-52.443058,-4081.209717,117.477,0, ''),
   (7806,37,-102.710854,-4116.760742,118.666,0, ''),
   (7806,38,-92.996193,-4135.847168,119.310,0, ''),
   (7806,39,-86.391273,-4153.331055,122.502,0, ''),
   (7806,40,-85.746086,-4163.600586,121.892,0, ''),
   (7806,41,-90.544006,-4183.577637,117.587,0, ''),
   (7806,42,-110.223564,-4205.861328,121.878,0, ''),
   (7806,43,-115.257607,-4211.962402,121.878,3000, 'SAY_OOX_DANGER'),
   (7806,44,-128.594650,-4233.343750,117.766,0, ''),
   (7806,45,-135.358917,-4258.120117,117.562,0, ''),
   (7806,46,-156.832428,-4258.961914,120.059,0, ''),
   (7806,47,-167.119873,-4274.102539,117.062,0, ''),
   (7806,48,-176.291016,-4287.594727,118.721,0, ''),
   (7806,49,-196.992981,-4315.815430,117.588,0, ''),
   (7806,50,-209.329300,-4331.671387,115.142,0, ''),
   (7806,51,-232.292236,-4356.015625,108.543,0, ''),
   (7806,52,-232.159683,-4370.904297,102.815,0, ''),
   (7806,53,-210.271133,-4389.896973,84.167,0, ''),
   (7806,54,-187.940186,-4407.532715,70.987,0, ''),
   (7806,55,-181.353577,-4418.771973,64.778,0, ''),
   (7806,56,-170.529861,-4440.438965,58.943,0, ''),
   (7806,57,-141.428543,-4465.323242,45.963,0, ''),
   (7806,58,-120.993629,-4487.088379,32.075,0, ''),
   (7806,59,-104.134621,-4501.837402,25.051,0, ''),
   (7806,60,-84.154663,-4529.436523,11.952,0, ''),
   (7806,61,-88.698898,-4544.626465,9.055,0, ''),
   (7806,62,-100.603447,-4575.034180,11.388,0, ''),
   (7806,63,-106.908669,-4600.407715,11.046,0, ''),
   (7806,64,-106.831703,-4620.503418,11.057,3000, 'SAY_OOX_COMPLETE');

DELETE FROM `script_waypoint` WHERE `entry`=7780;
INSERT INTO `script_waypoint` VALUES
   (7780,0,261.058868,-2757.876221,122.553,0, ''),
   (7780,1,259.812195,-2758.249023,122.555,0, 'SAY_RIN_FREE'),
   (7780,2,253.823441,-2758.619141,122.562,0, ''),
   (7780,3,241.394791,-2769.754883,123.309,0, ''),
   (7780,4,218.915588,-2783.397461,123.355,0, ''),
   (7780,5,209.088196,-2789.676270,122.001,0, ''),
   (7780,6,204.453568,-2792.205811,120.620,0, ''),
   (7780,7,182.012604,-2809.995361,113.887,0, 'summon'),
   (7780,8,164.411591,-2825.162842,107.779,0, ''),
   (7780,9,149.727600,-2833.704346,106.224,0, ''),
   (7780,10,142.448074,-2838.807373,109.665,0, ''),
   (7780,11,133.274963,-2845.135254,112.606,0, ''),
   (7780,12,111.247459,-2861.065674,116.305,0, ''),
   (7780,13,96.104073,-2874.886230,114.397,0, 'summon'),
   (7780,14,73.369942,-2881.184570,117.666,0, ''),
   (7780,15,58.579178,-2889.151611,116.253,0, ''),
   (7780,16,33.214249,-2906.343994,115.083,0, ''),
   (7780,17,19.586519,-2908.712402,117.276,7500, 'SAY_RIN_COMPLETE'),
   (7780,18,10.282522,-2911.607422,118.394,0, ''),
   (7780,19,-37.580383,-2942.730225,117.145,0, ''),
   (7780,20,-68.599411,-2953.694824,116.685,0, ''),
   (7780,21,-102.054253,-2956.965576,116.677,0, ''),
   (7780,22,-135.993637,-2955.743652,115.788,0, ''),
   (7780,23,-171.561600,-2951.417480,115.451,0, '');
