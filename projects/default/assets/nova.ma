//Maya ASCII 2025ff03 scene
//Name: nova.ma
//Last modified: Wed, Feb 25, 2026 09:58:11 PM
//Codeset: 1252
file -rdi 1 -ns "basicsBall_rig_v0_1_beta_AULA_2026" -rfn "basicsBall_rig_v0_1_beta_AULA_2026RN"
		 -op "VERS|2026|UVER|undef|MADE|undef|CHNG|Wed, Feb 25, 2026 05:01:56 PM|ICON|undef|INFO|undef|OBJN|745|INCL|undef(|LUNI|cm|TUNI|pal|AUNI|deg|TDUR|141120000|"
		 -typ "mayaBinary" "C:/Users/1106022856/Documents/maya/projects/default//scenes/basicsBall_rig_v0.1_beta_AULA_2026.mb";
file -r -ns "basicsBall_rig_v0_1_beta_AULA_2026" -dr 1 -rfn "basicsBall_rig_v0_1_beta_AULA_2026RN"
		 -op "VERS|2026|UVER|undef|MADE|undef|CHNG|Wed, Feb 25, 2026 05:01:56 PM|ICON|undef|INFO|undef|OBJN|745|INCL|undef(|LUNI|cm|TUNI|pal|AUNI|deg|TDUR|141120000|"
		 -typ "mayaBinary" "C:/Users/1106022856/Documents/maya/projects/default//scenes/basicsBall_rig_v0.1_beta_AULA_2026.mb";
requires maya "2025ff03";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" -nodeType "aiStandardSurface"
		 -nodeType "aiImagerDenoiserOidn" "mtoa" "5.4.5";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2025";
fileInfo "version" "2025";
fileInfo "cutIdentifier" "202409190603-cbdc5a7e54";
fileInfo "osv" "Windows 11 Education v2009 (Build: 26200)";
fileInfo "UUID" "CD243ADA-4AD6-5443-2405-5EBD767E3F52";
fileInfo "license" "education";
createNode transform -s -n "persp";
	rename -uid "BF91DB58-4314-315A-1EA5-64B144143C3F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 7.5390721383340713 7.5390721383287769 7.539072138332509 ;
	setAttr ".r" -type "double3" -35.264389682754675 44.999999999999986 -6.7469753495924175e-15 ;
	setAttr ".rp" -type "double3" 2.5034308110517582e-13 7.1329054431944175e-14 -9.0949470177292824e-13 ;
	setAttr ".rpt" -type "double3" -6.2868197392081772e-13 -5.6275257832506691e-13 2.3172616902022222e-13 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "24A289A8-4C4D-9839-94EE-168F4B9EBD0D";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 13.058055985522543;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 1.8189894035458565e-12 -2.2737367544323206e-12 0 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "08676607-4F43-3696-1AF6-1A851FCA4FBB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 5.9402244575264049 8.0953953565038521 14.635246475472815 ;
	setAttr ".r" -type "double3" -29.400000000000073 23.200000000000006 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "F8B5AD4F-43B8-6DA6-2E02-44B040A68915";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 14.453740278520167;
	setAttr ".ow" 6.1419455689687128;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".tp" -type "double3" 0 1 0 ;
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "front";
	rename -uid "B0B2BEEB-4DE9-D634-F616-B8B0B5BCD979";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "DCDE5CD3-4440-2B3A-6CDE-24A2DAF77F68";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "77E33A78-4750-DD2E-8B0E-2696A427D5FA";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 10.304583279002296 -3.4694469519536142e-17 -1.0232158002831948e-16 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".rpt" -type "double3" 3.2048216561266349e-16 3.5364861376311585e-17 1.0232205392534177e-16 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "2284B607-4419-3975-932D-A4937816835F";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 10.304583279002296;
	setAttr ".ow" 48.980568436985664;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" 0 6.7039185677544323e-19 4.7389702228819421e-22 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "pCube1";
	rename -uid "FA802699-4D01-DE7C-D1CE-DF98D56EA18B";
	setAttr ".t" -type "double3" 0 -1.8512992160240223 0 ;
	setAttr ".s" -type "double3" 2.2489103643990003 2.2489103643990003 2.2489103643990003 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	rename -uid "27ABFFD7-43BA-D774-A063-E895F9A7980D";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "5636BCD9-4527-7242-C963-0F967EBD1D5F";
	setAttr -s 41 ".lnk";
	setAttr -s 41 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "0E307069-46AA-3B53-3BA7-CF9DA51A3D8F";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "963FD7F1-4CE0-55D7-A4D3-40A09822EA69";
createNode displayLayerManager -n "layerManager";
	rename -uid "3BA9B4AD-4CE2-8168-9383-36BA2FD12EB8";
createNode displayLayer -n "defaultLayer";
	rename -uid "5A1CE5B2-42D5-9197-1DAB-0FB0AC2FDC88";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "037A473F-4D83-DE4F-0394-ADAD3C292B63";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "A3BF509B-476A-558C-6E0C-CABD3BC8D4B1";
	setAttr ".g" yes;
createNode reference -n "basicsBall_rig_v0_1_beta_AULA_2026RN";
	rename -uid "7A7BD4BF-4F66-94F9-D415-139350D37711";
	setAttr -s 10 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".phl[3]" 0;
	setAttr ".phl[4]" 0;
	setAttr ".phl[5]" 0;
	setAttr ".phl[6]" 0;
	setAttr ".phl[7]" 0;
	setAttr ".phl[8]" 0;
	setAttr ".phl[9]" 0;
	setAttr ".phl[10]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"basicsBall_rig_v0_1_beta_AULA_2026RN"
		"basicsBall_rig_v0_1_beta_AULA_2026RN" 0
		"basicsBall_rig_v0_1_beta_AULA_2026RN" 16
		2 "|basicsBall_rig_v0_1_beta_AULA_2026:basicBall|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ctrls|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_base_offset|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_base" 
		"translate" " -type \"double3\" 0 0 -0.039703098242347634"
		2 "|basicsBall_rig_v0_1_beta_AULA_2026:basicBall|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ctrls|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_base_offset|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_base|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_center_offset|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_center" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|basicsBall_rig_v0_1_beta_AULA_2026:basicBall|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ctrls|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_base_offset|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_base|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_center_offset|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_center|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_rotExtA_offset|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_rotExtA|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_rotExtB_offset|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_rotExtB" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|basicsBall_rig_v0_1_beta_AULA_2026:basicBall|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ctrls|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_base_offset|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_base|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_center_offset|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_center|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_rotExtA_offset|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_rotExtA|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_rotExtB_offset|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_rotExtB|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_top_offset|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_top" 
		"twist" " -k 1"
		2 "|basicsBall_rig_v0_1_beta_AULA_2026:basicBall|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_DO_NOT_TOUCH|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_geometry|basicsBall_rig_v0_1_beta_AULA_2026:plain_grp|basicsBall_rig_v0_1_beta_AULA_2026:plain_ball|basicsBall_rig_v0_1_beta_AULA_2026:plain_ballShape" 
		"instObjGroups.objectGroups" " -s 6"
		2 "|basicsBall_rig_v0_1_beta_AULA_2026:basicBall|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_DO_NOT_TOUCH|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_skeleton|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_sk_c_middle_offset|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_sk_c_middle|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_rotInside_offset|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_rotInside" 
		"rotate" " -type \"double3\" 0 -87.47946761107178304 0"
		5 4 "basicsBall_rig_v0_1_beta_AULA_2026RN" "|basicsBall_rig_v0_1_beta_AULA_2026:basicBall|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ctrls|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_base_offset|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_base|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_center_offset|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_center|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_rotExtA_offset|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_rotExtA.translateZ" 
		"basicsBall_rig_v0_1_beta_AULA_2026RN.placeHolderList[1]" ""
		5 4 "basicsBall_rig_v0_1_beta_AULA_2026RN" "|basicsBall_rig_v0_1_beta_AULA_2026:basicBall|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ctrls|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_base_offset|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_base|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_center_offset|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_center|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_rotExtA_offset|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_rotExtA.translateY" 
		"basicsBall_rig_v0_1_beta_AULA_2026RN.placeHolderList[2]" ""
		5 4 "basicsBall_rig_v0_1_beta_AULA_2026RN" "|basicsBall_rig_v0_1_beta_AULA_2026:basicBall|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ctrls|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_base_offset|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_base|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_center_offset|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_center|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_rotExtA_offset|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_rotExtA.translateX" 
		"basicsBall_rig_v0_1_beta_AULA_2026RN.placeHolderList[3]" ""
		5 4 "basicsBall_rig_v0_1_beta_AULA_2026RN" "|basicsBall_rig_v0_1_beta_AULA_2026:basicBall|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ctrls|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_base_offset|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_base|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_center_offset|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_center|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_rotExtA_offset|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_rotExtA.rotateX" 
		"basicsBall_rig_v0_1_beta_AULA_2026RN.placeHolderList[4]" ""
		5 4 "basicsBall_rig_v0_1_beta_AULA_2026RN" "|basicsBall_rig_v0_1_beta_AULA_2026:basicBall|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ctrls|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_base_offset|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_base|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_center_offset|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_center|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_rotExtA_offset|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_rotExtA.rotateY" 
		"basicsBall_rig_v0_1_beta_AULA_2026RN.placeHolderList[5]" ""
		5 4 "basicsBall_rig_v0_1_beta_AULA_2026RN" "|basicsBall_rig_v0_1_beta_AULA_2026:basicBall|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ctrls|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_base_offset|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_base|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_center_offset|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_center|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_rotExtA_offset|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_rotExtA.rotateZ" 
		"basicsBall_rig_v0_1_beta_AULA_2026RN.placeHolderList[6]" ""
		5 4 "basicsBall_rig_v0_1_beta_AULA_2026RN" "|basicsBall_rig_v0_1_beta_AULA_2026:basicBall|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ctrls|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_base_offset|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_base|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_center_offset|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_center|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_rotExtA_offset|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_rotExtA|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_rotExtB_offset|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_rotExtB|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_top_offset|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_top.twist" 
		"basicsBall_rig_v0_1_beta_AULA_2026RN.placeHolderList[7]" ""
		5 4 "basicsBall_rig_v0_1_beta_AULA_2026RN" "|basicsBall_rig_v0_1_beta_AULA_2026:basicBall|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ctrls|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_base_offset|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_base|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_center_offset|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_center|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_rotExtA_offset|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_rotExtA|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_rotExtB_offset|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_rotExtB|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_top_offset|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_top.translateY" 
		"basicsBall_rig_v0_1_beta_AULA_2026RN.placeHolderList[8]" ""
		5 4 "basicsBall_rig_v0_1_beta_AULA_2026RN" "|basicsBall_rig_v0_1_beta_AULA_2026:basicBall|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ctrls|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_base_offset|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_base|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_center_offset|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_center|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_rotExtA_offset|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_rotExtA|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_rotExtB_offset|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_rotExtB|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_top_offset|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_top.translateX" 
		"basicsBall_rig_v0_1_beta_AULA_2026RN.placeHolderList[9]" ""
		5 4 "basicsBall_rig_v0_1_beta_AULA_2026RN" "|basicsBall_rig_v0_1_beta_AULA_2026:basicBall|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ctrls|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_base_offset|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_base|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_center_offset|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_center|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_rotExtA_offset|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_rotExtA|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_rotExtB_offset|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_rotExtB|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_top_offset|basicsBall_rig_v0_1_beta_AULA_2026:basicBall_ac_cn_top.translateZ" 
		"basicsBall_rig_v0_1_beta_AULA_2026RN.placeHolderList[10]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "F303A443-4294-D4FC-FA5C-8CBA645F846A";
	addAttr -ci true -sn "ARV_options" -ln "ARV_options" -dt "string";
	setAttr ".version" -type "string" "5.5.4.2";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "3D1926BB-404D-A397-53EC-D597D8FCA80B";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "48283EC3-4F6A-5231-EBD7-1A9F1D0F162A";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "66270C50-4615-3EEC-D0AC-909EC262C4EA";
	setAttr ".ai_translator" -type "string" "maya";
	setAttr ".output_mode" 0;
createNode aiImagerDenoiserOidn -s -n "defaultArnoldDenoiser";
	rename -uid "705EAE27-43D1-7829-707F-CAB040E93AF7";
createNode animCurveTL -n "basicBall_ac_cn_rotExtA_translateX";
	rename -uid "0B0759BB-46D4-424A-A7D3-3DA397157DEE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1.8636350340136054 0 18.636359693877552 0
		 39.136356462585034 0;
createNode animCurveTL -n "basicBall_ac_cn_rotExtA_translateY";
	rename -uid "1BB247BD-4643-CA00-F7C4-EC8C1F00B0F5";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1.8636350340136054 6.0032281490891446 13.045451360544218 -0.72521899404869417
		 39.136356462585034 5.9128980555550781;
	setAttr -s 3 ".ktl[0:2]" no no no;
	setAttr -s 3 ".kix[0:2]"  0.035622224561868719 0.011856766028267064 
		0.33960462006821129;
	setAttr -s 3 ".kiy[0:2]"  -0.99936532715382109 -0.99992970607905785 
		0.94056828674388437;
	setAttr -s 3 ".kox[0:2]"  0.65492521761927813 0.027205927885309029 
		0.8687045404875593;
	setAttr -s 3 ".koy[0:2]"  -0.75569369411577159 0.9996298502385268 
		-0.49533061820999758;
createNode animCurveTL -n "basicBall_ac_cn_rotExtA_translateZ";
	rename -uid "9F8447D3-4F94-25D9-F89E-DFBF1A254B1A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1.8636350340136054 0;
createNode animCurveTA -n "basicBall_ac_cn_rotExtA_rotateX";
	rename -uid "8F6B8CAA-453E-60F9-CB29-90964C5A68B6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1.8636350340136054 0;
createNode animCurveTA -n "basicBall_ac_cn_rotExtA_rotateY";
	rename -uid "2D5C2CDB-40BB-1DE8-C25A-B3B26E7709D7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1.8636350340136054 0;
createNode animCurveTA -n "basicBall_ac_cn_rotExtA_rotateZ";
	rename -uid "F9F27E2F-483F-CF63-2607-C0970C7E971B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1.8636350340136054 0;
createNode animCurveTL -n "basicBall_ac_cn_top_translateX";
	rename -uid "95825051-455D-AAA4-1764-BCAADA1444F8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  8 0 11.181816496598639 0 13.045452891156463 0
		 26.090904251700682 0;
createNode animCurveTL -n "basicBall_ac_cn_top_translateY";
	rename -uid "51EA293E-4424-8846-50DA-1B814313AE75";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  8 0 11.181816496598639 0.91837936632630424
		 13.045452891156463 -0.64296805412554814 26.090904251700682 0;
createNode animCurveTL -n "basicBall_ac_cn_top_translateZ";
	rename -uid "A56A736F-4DEF-B559-4D2C-E1A2802D930B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  8 0 11.181816496598639 0 13.045452891156463 0
		 26.090904251700682 0;
createNode animCurveTU -n "basicBall_ac_cn_top_twist";
	rename -uid "2AA700D9-4F1C-B183-34C3-DEB19DCB958C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  8 0 11.181816496598639 0 13.045452891156463 0
		 26.090904251700682 0;
createNode multiplyDivide -n "basicsBall_rig_v0_1_beta_AULA_2027:ball_cn_axisYZDiv";
	rename -uid "9DCB136F-472C-DF8D-0EFF-25B4E25BF310";
	setAttr ".op" 2;
	setAttr ".i1" -type "float3" 0 1 0 ;
createNode multiplyDivide -n "basicsBall_rig_v0_1_beta_AULA_2027:ball_cn_normalizeDiv";
	rename -uid "D33C2D25-463F-1CA3-AF22-BB85AFA39739";
	setAttr ".op" 2;
createNode multiplyDivide -n "basicsBall_rig_v0_1_beta_AULA_2027:ball_cn_normalGlobalMult";
	rename -uid "71A9E789-4958-8409-BF21-619BECFD85F2";
	setAttr ".i2" -type "float3" 1 2 1 ;
createNode materialInfo -n "basicsBall_rig_v0_1_beta_AULA_2027:materialInfo42";
	rename -uid "E871BC70-4FEB-EA5D-6D2E-AA80E40D2D26";
createNode shadingEngine -n "basicsBall_rig_v0_1_beta_AULA_2027:aiStandardSurface1SG";
	rename -uid "FA863347-4D8B-9624-B641-11B85ADF6977";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode aiStandardSurface -n "basicsBall_rig_v0_1_beta_AULA_2027:Cor_bola";
	rename -uid "E0F9AF4E-407E-565A-E142-DD99B52F6B4A";
	setAttr ".base_color" -type "float3" 0.41166392 0.73400003 0.36700001 ;
createNode shadingEngine -n "basicsBall_rig_v0_1_beta_AULA_2027:blinn3SG";
	rename -uid "BBA72E96-463C-7EC6-8DA0-44ACD6FB6659";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "basicsBall_rig_v0_1_beta_AULA_2027:materialInfo24";
	rename -uid "EEAD73DC-40DB-8515-1EF4-C1AE971F3299";
createNode blinn -n "basicsBall_rig_v0_1_beta_AULA_2027:mtl_basket_orange";
	rename -uid "35B978CB-4E8D-C8BC-29CE-2F97A3D23061";
	setAttr ".c" -type "float3" 0.787 0.3601312 0.075552009 ;
createNode shadingEngine -n "basicsBall_rig_v0_1_beta_AULA_2027:mtl_basket_blackSG";
	rename -uid "5165AE3B-4071-20E6-8F97-0E9641A9DC41";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "basicsBall_rig_v0_1_beta_AULA_2027:materialInfo25";
	rename -uid "39D701CF-40C3-58B4-779B-B6B2FA17D241";
createNode blinn -n "basicsBall_rig_v0_1_beta_AULA_2027:mtl_basket_black";
	rename -uid "EB257F82-4F5E-1A1B-12AE-40862B947232";
	setAttr ".c" -type "float3" 0.124 0.124 0.124 ;
	setAttr ".sro" 0.4065040647983551;
createNode shadingEngine -n "basicsBall_rig_v0_1_beta_AULA_2027:mtl_baseball_redSG";
	rename -uid "363B4588-43F7-9C31-7259-849FC8A8B30A";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "basicsBall_rig_v0_1_beta_AULA_2027:materialInfo26";
	rename -uid "26F5FBA5-4FE1-C4A8-EC0E-74AD3307CCC7";
createNode lambert -n "basicsBall_rig_v0_1_beta_AULA_2027:mtl_baseball_red";
	rename -uid "37C36F83-4206-8F5F-B202-EDAE978FEDBA";
	setAttr ".c" -type "float3" 0.60100001 0.125008 0.125008 ;
createNode shadingEngine -n "basicsBall_rig_v0_1_beta_AULA_2027:mtl_baseball_whiteSG";
	rename -uid "1C79C68C-4AE8-0F13-0C3E-60921DD6D00E";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "basicsBall_rig_v0_1_beta_AULA_2027:materialInfo27";
	rename -uid "26E6891D-40A0-4BDC-EDE6-39A348A647C8";
createNode lambert -n "basicsBall_rig_v0_1_beta_AULA_2027:mtl_baseball_white";
	rename -uid "BA1E92D0-4263-6FF6-B062-CAA4BDDF4A1D";
	setAttr ".c" -type "float3" 0.79136342 0.79136342 0.79136342 ;
createNode groupId -n "basicsBall_rig_v0_1_beta_AULA_2027:groupId1530";
	rename -uid "C185A747-4098-9ECB-87E6-0685DDAD80AC";
	setAttr ".ihi" 0;
createNode shadingEngine -n "basicsBall_rig_v0_1_beta_AULA_2027:phong1SG";
	rename -uid "7120B31F-4B37-F28F-EBA6-4AA005F5863A";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
createNode materialInfo -n "basicsBall_rig_v0_1_beta_AULA_2027:materialInfo28";
	rename -uid "F4A9B4E9-4E0F-0E1F-B891-5E9329B18768";
createNode phong -n "basicsBall_rig_v0_1_beta_AULA_2027:mtl_beach_white";
	rename -uid "C5F7F547-428C-FA71-D563-31AF88D7151B";
	setAttr ".c" -type "float3" 0.94244295 0.94244295 0.94244295 ;
createNode groupId -n "basicsBall_rig_v0_1_beta_AULA_2027:groupId1531";
	rename -uid "C38D7849-4823-E46C-5845-BB84D5386209";
	setAttr ".ihi" 0;
createNode shadingEngine -n "basicsBall_rig_v0_1_beta_AULA_2027:mtl_beach_blueSG";
	rename -uid "98848205-47E2-DB52-0DD3-AD99A7280C68";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "basicsBall_rig_v0_1_beta_AULA_2027:materialInfo30";
	rename -uid "4DEFC03F-4DAA-9FFA-4824-D6AB250084F3";
createNode phong -n "basicsBall_rig_v0_1_beta_AULA_2027:mtl_beach_blue";
	rename -uid "7FCB6263-4F54-6912-08F8-6F8B500EC285";
	setAttr ".c" -type "float3" 0 0.22447547 0.74819565 ;
createNode groupId -n "basicsBall_rig_v0_1_beta_AULA_2027:groupId1533";
	rename -uid "0092AC54-45FE-6B52-07C5-2F89C573BD63";
	setAttr ".ihi" 0;
createNode shadingEngine -n "basicsBall_rig_v0_1_beta_AULA_2027:mtl_beach_redSG";
	rename -uid "72C9B9F2-4B1B-4FE2-A30C-47AC269D0CFB";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "basicsBall_rig_v0_1_beta_AULA_2027:materialInfo29";
	rename -uid "C37FFEE4-4234-B0B1-1184-5EBDC4FEBCA5";
createNode phong -n "basicsBall_rig_v0_1_beta_AULA_2027:mtl_beach_red";
	rename -uid "CA0AD121-465A-C940-0BA5-B495C61DF6EC";
	setAttr ".c" -type "float3" 0.82734418 0 0 ;
createNode groupId -n "basicsBall_rig_v0_1_beta_AULA_2027:groupId1534";
	rename -uid "03B5B75F-4B56-BA0E-03ED-589E27A9E21C";
	setAttr ".ihi" 0;
createNode groupId -n "basicsBall_rig_v0_1_beta_AULA_2027:groupId1535";
	rename -uid "242F799D-4DA2-AB29-6144-0C875FF2B020";
	setAttr ".ihi" 0;
createNode shadingEngine -n "basicsBall_rig_v0_1_beta_AULA_2027:mtl_beach_yellowSG";
	rename -uid "75B484C9-478D-BC7C-612B-67A0ADFB7034";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "basicsBall_rig_v0_1_beta_AULA_2027:materialInfo31";
	rename -uid "3C3741A8-4BCE-F8DD-2C10-49B8E22E46FD";
createNode phong -n "basicsBall_rig_v0_1_beta_AULA_2027:mtl_beach_yellow";
	rename -uid "D6995D59-4600-A29A-C003-0989C9B43475";
	setAttr ".c" -type "float3" 0.8489204 0.8489204 0 ;
createNode shadingEngine -n "basicsBall_rig_v0_1_beta_AULA_2027:mtl_football_backSG";
	rename -uid "AE0204BA-4242-BDE5-A2FE-A7958FE79D1E";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "basicsBall_rig_v0_1_beta_AULA_2027:materialInfo33";
	rename -uid "8B596B40-4610-0FCD-63EF-1494CF360EDD";
createNode blinn -n "basicsBall_rig_v0_1_beta_AULA_2027:mtl_football_back";
	rename -uid "279CB241-4CED-4677-3CD4-4FAB438C7A87";
	setAttr ".c" -type "float3" 0.073167011 0.073167011 0.073167011 ;
	setAttr ".sc" -type "float3" 0.25203326 0.25203326 0.25203326 ;
	setAttr ".ec" 0.10000000149011612;
	setAttr ".sro" 0.20000000298023224;
createNode shadingEngine -n "basicsBall_rig_v0_1_beta_AULA_2027:mtl_football_whiteSG";
	rename -uid "D286A1E2-492F-B812-76C3-BE829E21189A";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "basicsBall_rig_v0_1_beta_AULA_2027:materialInfo32";
	rename -uid "F34A82D9-4728-EA10-1ABF-4D864D8BA93D";
createNode blinn -n "basicsBall_rig_v0_1_beta_AULA_2027:mtl_football_white";
	rename -uid "AAD86333-4B85-7021-713D-FB8BFBF9626A";
	setAttr ".c" -type "float3" 0.88618296 0.88618296 0.88618296 ;
	setAttr ".sc" -type "float3" 0.21138322 0.21138322 0.21138322 ;
	setAttr ".ec" 0.10000000149011612;
	setAttr ".sro" 0.20000000298023224;
createNode materialInfo -n "basicsBall_rig_v0_1_beta_AULA_2027:materialInfo34";
	rename -uid "779E1EC6-4536-2B1A-5F9D-759501A769A7";
createNode shadingEngine -n "basicsBall_rig_v0_1_beta_AULA_2027:mtl_golf_whiteSG";
	rename -uid "50AD4BBA-4BAC-EB82-F057-19ABC8F7C158";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode phong -n "basicsBall_rig_v0_1_beta_AULA_2027:mtl_golf_white";
	rename -uid "E4EF96AE-41DD-4A14-B27A-88893B4E5A2D";
	setAttr ".c" -type "float3" 0.94244295 0.94244295 0.94244295 ;
createNode shadingEngine -n "basicsBall_rig_v0_1_beta_AULA_2027:lambert2SG";
	rename -uid "46F7B7ED-4DE8-9452-873D-54A4552A5337";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "basicsBall_rig_v0_1_beta_AULA_2027:materialInfo35";
	rename -uid "32DD9341-4AEB-4DC9-B49A-178CDB61ED46";
createNode lambert -n "basicsBall_rig_v0_1_beta_AULA_2027:mtl_tennis_yellow";
	rename -uid "3A8FB0D5-40D6-C40B-A0CF-77B8FB657BC8";
	setAttr ".c" -type "float3" 0.8405472 1 0 ;
createNode shadingEngine -n "basicsBall_rig_v0_1_beta_AULA_2027:mtl_tennis_whiteSG";
	rename -uid "18CBD0E1-4906-3735-926D-38A1D96E5860";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "basicsBall_rig_v0_1_beta_AULA_2027:materialInfo36";
	rename -uid "BFD02A74-41B5-FFF5-22F4-7CB972F3CF9F";
createNode lambert -n "basicsBall_rig_v0_1_beta_AULA_2027:mtl_tennis_white";
	rename -uid "D0D6BE8E-423D-8620-1E87-47B266A5F7C1";
	setAttr ".c" -type "float3" 0.99159998 1 0.94400001 ;
createNode shadingEngine -n "basicsBall_rig_v0_1_beta_AULA_2027:mtl_volley_whiteSG";
	rename -uid "D4FDC08B-4E7B-AF73-F0F1-9AAFC9DAFEA6";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "basicsBall_rig_v0_1_beta_AULA_2027:materialInfo39";
	rename -uid "DDC50171-4216-D5F9-5929-8398EB055A0B";
createNode blinn -n "basicsBall_rig_v0_1_beta_AULA_2027:mtl_volley_white";
	rename -uid "98A39513-463B-91FC-4560-6CB944DAD054";
	setAttr ".c" -type "float3" 0.89300001 0.89300001 0.89300001 ;
	setAttr ".sro" 0.4065040647983551;
createNode shadingEngine -n "basicsBall_rig_v0_1_beta_AULA_2027:mtl_volley_blueSG";
	rename -uid "96344D26-487B-2147-C077-19880372ED35";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "basicsBall_rig_v0_1_beta_AULA_2027:materialInfo40";
	rename -uid "9C5A0EDB-48B3-9028-38EF-19AE04B7ECAE";
createNode blinn -n "basicsBall_rig_v0_1_beta_AULA_2027:mtl_volley_blue";
	rename -uid "FD4687EF-4DCB-389B-462F-5D8EB56ACEE4";
	setAttr ".c" -type "float3" 0 0.29999995 1 ;
	setAttr ".sro" 0.4065040647983551;
createNode shadingEngine -n "basicsBall_rig_v0_1_beta_AULA_2027:mtl_volley_yellowSG";
	rename -uid "EBC2EE3B-44F9-00BC-9736-50812DE01696";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "basicsBall_rig_v0_1_beta_AULA_2027:materialInfo41";
	rename -uid "39AA0843-4C13-6DAC-7045-BBB886CBD68B";
createNode blinn -n "basicsBall_rig_v0_1_beta_AULA_2027:mtl_volley_yellow";
	rename -uid "480ABD65-45AB-5BEB-1FF2-84B9F79F6D1D";
	setAttr ".c" -type "float3" 1 1 0 ;
	setAttr ".sro" 0.4065040647983551;
createNode materialInfo -n "basicsBall_rig_v0_1_beta_AULA_2027:materialInfo43";
	rename -uid "A1AE0199-4071-852D-27B1-FB8F6A40E8FA";
createNode shadingEngine -n "basicsBall_rig_v0_1_beta_AULA_2027:aiStandardSurface2SG";
	rename -uid "4F9A75E6-4E59-22AD-5933-A29C3E4CCB9F";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode aiStandardSurface -n "basicsBall_rig_v0_1_beta_AULA_2027:Cor_faixa";
	rename -uid "D68D75CA-440D-4588-6257-3ABEF1AB662F";
	setAttr ".specular" 0.52229297161102295;
	setAttr ".specular_roughness" 0.53503185510635376;
createNode polyCube -n "polyCube1";
	rename -uid "AA5A85F5-4CF2-2435-A8A6-8B80B2DFF875";
	setAttr ".cuv" 4;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "336FD683-427B-46D8-C588-00AFD2161698";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 655\n            -height 330\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 1317\n            -height 706\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 655\n            -height 329\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n"
		+ "        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 655\n            -height 330\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n"
		+ "            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n"
		+ "            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n"
		+ "            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n"
		+ "                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n"
		+ "                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -isSet 0\n                -isSetMember 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n"
		+ "                -renderFilterVisible 0\n                -selectionOrder \"display\" \n                -expandAttribute 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -tangentScale 1\n                -tangentLineThickness 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -limitToSelectedCurves 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n"
		+ "                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -hierarchyBelow 0\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n"
		+ "                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n"
		+ "                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n"
		+ "                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n"
		+ "                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|:persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n"
		+ "                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n"
		+ "                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n"
		+ "                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Side View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Side View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera side` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1317\\n    -height 706\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Side View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera side` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1317\\n    -height 706\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "F3FF5025-4660-9CB0-41E5-1F99E2F1C80D";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 40 -ast 0 -aet 40 ";
	setAttr ".st" 6;
select -ne :time1;
	setAttr ".o" 8;
	setAttr ".unw" 8;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
	setAttr ".rtfm" 1;
select -ne :renderPartition;
	setAttr -s 41 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 44 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 7 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 2 ".r";
select -ne :lightList1;
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".mcfr" 60;
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "standardSurface1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultLightSet;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
	setAttr ".hwfr" 60;
select -ne :ikSystem;
	setAttr -s 5 ".sol";
connectAttr "basicBall_ac_cn_rotExtA_translateZ.o" "basicsBall_rig_v0_1_beta_AULA_2026RN.phl[1]"
		;
connectAttr "basicBall_ac_cn_rotExtA_translateY.o" "basicsBall_rig_v0_1_beta_AULA_2026RN.phl[2]"
		;
connectAttr "basicBall_ac_cn_rotExtA_translateX.o" "basicsBall_rig_v0_1_beta_AULA_2026RN.phl[3]"
		;
connectAttr "basicBall_ac_cn_rotExtA_rotateX.o" "basicsBall_rig_v0_1_beta_AULA_2026RN.phl[4]"
		;
connectAttr "basicBall_ac_cn_rotExtA_rotateY.o" "basicsBall_rig_v0_1_beta_AULA_2026RN.phl[5]"
		;
connectAttr "basicBall_ac_cn_rotExtA_rotateZ.o" "basicsBall_rig_v0_1_beta_AULA_2026RN.phl[6]"
		;
connectAttr "basicBall_ac_cn_top_twist.o" "basicsBall_rig_v0_1_beta_AULA_2026RN.phl[7]"
		;
connectAttr "basicBall_ac_cn_top_translateY.o" "basicsBall_rig_v0_1_beta_AULA_2026RN.phl[8]"
		;
connectAttr "basicBall_ac_cn_top_translateX.o" "basicsBall_rig_v0_1_beta_AULA_2026RN.phl[9]"
		;
connectAttr "basicBall_ac_cn_top_translateZ.o" "basicsBall_rig_v0_1_beta_AULA_2026RN.phl[10]"
		;
connectAttr "polyCube1.out" "pCubeShape1.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "basicsBall_rig_v0_1_beta_AULA_2027:blinn3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "basicsBall_rig_v0_1_beta_AULA_2027:mtl_basket_blackSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "basicsBall_rig_v0_1_beta_AULA_2027:mtl_baseball_redSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "basicsBall_rig_v0_1_beta_AULA_2027:mtl_baseball_whiteSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "basicsBall_rig_v0_1_beta_AULA_2027:phong1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "basicsBall_rig_v0_1_beta_AULA_2027:mtl_beach_redSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "basicsBall_rig_v0_1_beta_AULA_2027:mtl_beach_blueSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "basicsBall_rig_v0_1_beta_AULA_2027:mtl_beach_yellowSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "basicsBall_rig_v0_1_beta_AULA_2027:mtl_football_whiteSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "basicsBall_rig_v0_1_beta_AULA_2027:mtl_football_backSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "basicsBall_rig_v0_1_beta_AULA_2027:mtl_golf_whiteSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "basicsBall_rig_v0_1_beta_AULA_2027:lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "basicsBall_rig_v0_1_beta_AULA_2027:mtl_tennis_whiteSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "basicsBall_rig_v0_1_beta_AULA_2027:mtl_volley_whiteSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "basicsBall_rig_v0_1_beta_AULA_2027:mtl_volley_blueSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "basicsBall_rig_v0_1_beta_AULA_2027:mtl_volley_yellowSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "basicsBall_rig_v0_1_beta_AULA_2027:aiStandardSurface1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "basicsBall_rig_v0_1_beta_AULA_2027:aiStandardSurface2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "basicsBall_rig_v0_1_beta_AULA_2027:blinn3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "basicsBall_rig_v0_1_beta_AULA_2027:mtl_basket_blackSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "basicsBall_rig_v0_1_beta_AULA_2027:mtl_baseball_redSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "basicsBall_rig_v0_1_beta_AULA_2027:mtl_baseball_whiteSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "basicsBall_rig_v0_1_beta_AULA_2027:phong1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "basicsBall_rig_v0_1_beta_AULA_2027:mtl_beach_redSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "basicsBall_rig_v0_1_beta_AULA_2027:mtl_beach_blueSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "basicsBall_rig_v0_1_beta_AULA_2027:mtl_beach_yellowSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "basicsBall_rig_v0_1_beta_AULA_2027:mtl_football_whiteSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "basicsBall_rig_v0_1_beta_AULA_2027:mtl_football_backSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "basicsBall_rig_v0_1_beta_AULA_2027:mtl_golf_whiteSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "basicsBall_rig_v0_1_beta_AULA_2027:lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "basicsBall_rig_v0_1_beta_AULA_2027:mtl_tennis_whiteSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "basicsBall_rig_v0_1_beta_AULA_2027:mtl_volley_whiteSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "basicsBall_rig_v0_1_beta_AULA_2027:mtl_volley_blueSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "basicsBall_rig_v0_1_beta_AULA_2027:mtl_volley_yellowSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "basicsBall_rig_v0_1_beta_AULA_2027:aiStandardSurface1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "basicsBall_rig_v0_1_beta_AULA_2027:aiStandardSurface2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:ball_cn_normalizeDiv.oy" "basicsBall_rig_v0_1_beta_AULA_2027:ball_cn_axisYZDiv.i2y"
		;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:ball_cn_normalGlobalMult.oy" "basicsBall_rig_v0_1_beta_AULA_2027:ball_cn_normalizeDiv.i2y"
		;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:aiStandardSurface1SG.msg" "basicsBall_rig_v0_1_beta_AULA_2027:materialInfo42.sg"
		;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:Cor_bola.msg" "basicsBall_rig_v0_1_beta_AULA_2027:materialInfo42.m"
		;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:Cor_bola.msg" "basicsBall_rig_v0_1_beta_AULA_2027:materialInfo42.t"
		 -na;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:Cor_bola.out" "basicsBall_rig_v0_1_beta_AULA_2027:aiStandardSurface1SG.ss"
		;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:mtl_basket_orange.oc" "basicsBall_rig_v0_1_beta_AULA_2027:blinn3SG.ss"
		;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:blinn3SG.msg" "basicsBall_rig_v0_1_beta_AULA_2027:materialInfo24.sg"
		;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:mtl_basket_orange.msg" "basicsBall_rig_v0_1_beta_AULA_2027:materialInfo24.m"
		;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:mtl_basket_black.oc" "basicsBall_rig_v0_1_beta_AULA_2027:mtl_basket_blackSG.ss"
		;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:mtl_basket_blackSG.msg" "basicsBall_rig_v0_1_beta_AULA_2027:materialInfo25.sg"
		;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:mtl_basket_black.msg" "basicsBall_rig_v0_1_beta_AULA_2027:materialInfo25.m"
		;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:mtl_baseball_red.oc" "basicsBall_rig_v0_1_beta_AULA_2027:mtl_baseball_redSG.ss"
		;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:mtl_baseball_redSG.msg" "basicsBall_rig_v0_1_beta_AULA_2027:materialInfo26.sg"
		;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:mtl_baseball_red.msg" "basicsBall_rig_v0_1_beta_AULA_2027:materialInfo26.m"
		;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:mtl_baseball_white.oc" "basicsBall_rig_v0_1_beta_AULA_2027:mtl_baseball_whiteSG.ss"
		;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:mtl_baseball_whiteSG.msg" "basicsBall_rig_v0_1_beta_AULA_2027:materialInfo27.sg"
		;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:mtl_baseball_white.msg" "basicsBall_rig_v0_1_beta_AULA_2027:materialInfo27.m"
		;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:mtl_beach_white.oc" "basicsBall_rig_v0_1_beta_AULA_2027:phong1SG.ss"
		;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:groupId1530.msg" "basicsBall_rig_v0_1_beta_AULA_2027:phong1SG.gn"
		 -na;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:groupId1534.msg" "basicsBall_rig_v0_1_beta_AULA_2027:phong1SG.gn"
		 -na;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:phong1SG.msg" "basicsBall_rig_v0_1_beta_AULA_2027:materialInfo28.sg"
		;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:mtl_beach_white.msg" "basicsBall_rig_v0_1_beta_AULA_2027:materialInfo28.m"
		;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:mtl_beach_blue.oc" "basicsBall_rig_v0_1_beta_AULA_2027:mtl_beach_blueSG.ss"
		;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:groupId1531.msg" "basicsBall_rig_v0_1_beta_AULA_2027:mtl_beach_blueSG.gn"
		 -na;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:mtl_beach_blueSG.msg" "basicsBall_rig_v0_1_beta_AULA_2027:materialInfo30.sg"
		;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:mtl_beach_blue.msg" "basicsBall_rig_v0_1_beta_AULA_2027:materialInfo30.m"
		;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:mtl_beach_red.oc" "basicsBall_rig_v0_1_beta_AULA_2027:mtl_beach_redSG.ss"
		;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:groupId1533.msg" "basicsBall_rig_v0_1_beta_AULA_2027:mtl_beach_redSG.gn"
		 -na;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:mtl_beach_redSG.msg" "basicsBall_rig_v0_1_beta_AULA_2027:materialInfo29.sg"
		;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:mtl_beach_red.msg" "basicsBall_rig_v0_1_beta_AULA_2027:materialInfo29.m"
		;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:mtl_beach_yellow.oc" "basicsBall_rig_v0_1_beta_AULA_2027:mtl_beach_yellowSG.ss"
		;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:groupId1535.msg" "basicsBall_rig_v0_1_beta_AULA_2027:mtl_beach_yellowSG.gn"
		 -na;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:mtl_beach_yellowSG.msg" "basicsBall_rig_v0_1_beta_AULA_2027:materialInfo31.sg"
		;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:mtl_beach_yellow.msg" "basicsBall_rig_v0_1_beta_AULA_2027:materialInfo31.m"
		;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:mtl_football_back.oc" "basicsBall_rig_v0_1_beta_AULA_2027:mtl_football_backSG.ss"
		;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:mtl_football_backSG.msg" "basicsBall_rig_v0_1_beta_AULA_2027:materialInfo33.sg"
		;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:mtl_football_back.msg" "basicsBall_rig_v0_1_beta_AULA_2027:materialInfo33.m"
		;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:mtl_football_white.oc" "basicsBall_rig_v0_1_beta_AULA_2027:mtl_football_whiteSG.ss"
		;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:mtl_football_whiteSG.msg" "basicsBall_rig_v0_1_beta_AULA_2027:materialInfo32.sg"
		;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:mtl_football_white.msg" "basicsBall_rig_v0_1_beta_AULA_2027:materialInfo32.m"
		;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:mtl_golf_whiteSG.msg" "basicsBall_rig_v0_1_beta_AULA_2027:materialInfo34.sg"
		;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:mtl_golf_white.msg" "basicsBall_rig_v0_1_beta_AULA_2027:materialInfo34.m"
		;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:mtl_golf_white.oc" "basicsBall_rig_v0_1_beta_AULA_2027:mtl_golf_whiteSG.ss"
		;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:mtl_tennis_yellow.oc" "basicsBall_rig_v0_1_beta_AULA_2027:lambert2SG.ss"
		;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:lambert2SG.msg" "basicsBall_rig_v0_1_beta_AULA_2027:materialInfo35.sg"
		;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:mtl_tennis_yellow.msg" "basicsBall_rig_v0_1_beta_AULA_2027:materialInfo35.m"
		;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:mtl_tennis_white.oc" "basicsBall_rig_v0_1_beta_AULA_2027:mtl_tennis_whiteSG.ss"
		;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:mtl_tennis_whiteSG.msg" "basicsBall_rig_v0_1_beta_AULA_2027:materialInfo36.sg"
		;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:mtl_tennis_white.msg" "basicsBall_rig_v0_1_beta_AULA_2027:materialInfo36.m"
		;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:mtl_volley_white.oc" "basicsBall_rig_v0_1_beta_AULA_2027:mtl_volley_whiteSG.ss"
		;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:mtl_volley_whiteSG.msg" "basicsBall_rig_v0_1_beta_AULA_2027:materialInfo39.sg"
		;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:mtl_volley_white.msg" "basicsBall_rig_v0_1_beta_AULA_2027:materialInfo39.m"
		;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:mtl_volley_blue.oc" "basicsBall_rig_v0_1_beta_AULA_2027:mtl_volley_blueSG.ss"
		;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:mtl_volley_blueSG.msg" "basicsBall_rig_v0_1_beta_AULA_2027:materialInfo40.sg"
		;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:mtl_volley_blue.msg" "basicsBall_rig_v0_1_beta_AULA_2027:materialInfo40.m"
		;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:mtl_volley_yellow.oc" "basicsBall_rig_v0_1_beta_AULA_2027:mtl_volley_yellowSG.ss"
		;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:mtl_volley_yellowSG.msg" "basicsBall_rig_v0_1_beta_AULA_2027:materialInfo41.sg"
		;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:mtl_volley_yellow.msg" "basicsBall_rig_v0_1_beta_AULA_2027:materialInfo41.m"
		;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:aiStandardSurface2SG.msg" "basicsBall_rig_v0_1_beta_AULA_2027:materialInfo43.sg"
		;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:Cor_faixa.msg" "basicsBall_rig_v0_1_beta_AULA_2027:materialInfo43.m"
		;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:Cor_faixa.msg" "basicsBall_rig_v0_1_beta_AULA_2027:materialInfo43.t"
		 -na;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:Cor_faixa.out" "basicsBall_rig_v0_1_beta_AULA_2027:aiStandardSurface2SG.ss"
		;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:blinn3SG.pa" ":renderPartition.st"
		 -na;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:mtl_basket_blackSG.pa" ":renderPartition.st"
		 -na;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:mtl_baseball_redSG.pa" ":renderPartition.st"
		 -na;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:mtl_baseball_whiteSG.pa" ":renderPartition.st"
		 -na;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:phong1SG.pa" ":renderPartition.st"
		 -na;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:mtl_beach_redSG.pa" ":renderPartition.st"
		 -na;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:mtl_beach_blueSG.pa" ":renderPartition.st"
		 -na;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:mtl_beach_yellowSG.pa" ":renderPartition.st"
		 -na;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:mtl_football_whiteSG.pa" ":renderPartition.st"
		 -na;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:mtl_football_backSG.pa" ":renderPartition.st"
		 -na;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:mtl_golf_whiteSG.pa" ":renderPartition.st"
		 -na;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:lambert2SG.pa" ":renderPartition.st"
		 -na;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:mtl_tennis_whiteSG.pa" ":renderPartition.st"
		 -na;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:mtl_volley_whiteSG.pa" ":renderPartition.st"
		 -na;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:mtl_volley_blueSG.pa" ":renderPartition.st"
		 -na;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:mtl_volley_yellowSG.pa" ":renderPartition.st"
		 -na;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:aiStandardSurface1SG.pa" ":renderPartition.st"
		 -na;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:aiStandardSurface2SG.pa" ":renderPartition.st"
		 -na;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:mtl_basket_orange.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:mtl_basket_black.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:mtl_baseball_white.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:mtl_baseball_red.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:mtl_beach_white.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:mtl_beach_yellow.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:mtl_beach_red.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:mtl_beach_blue.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:mtl_football_white.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:mtl_football_back.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:mtl_golf_white.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:mtl_tennis_yellow.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:mtl_tennis_white.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:mtl_volley_blue.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:mtl_volley_yellow.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:mtl_volley_white.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:Cor_bola.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:Cor_faixa.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:ball_cn_normalizeDiv.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:ball_cn_normalGlobalMult.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "basicsBall_rig_v0_1_beta_AULA_2027:ball_cn_axisYZDiv.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCubeShape1.iog" ":initialShadingGroup.dsm" -na;
// End of nova.ma
