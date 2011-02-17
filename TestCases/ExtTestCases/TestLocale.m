//
//  TestLocale.m
//  TestApp
//
//  Created by WooKyoung Noh on 20/12/10.
//  Copyright 2010 factorcat. All rights reserved.
//

#import "UnitTest.h"
#import "Logger.h"
#import "NSArrayExt.h"
#import "NSStringExt.h"
#import "Inspect.h"

@interface TestLocale : NSObject
@end

@implementation TestLocale

-(void) test_locale {
}

/*
 NSLocale* locale = [[NSLocale alloc] initWithLocaleIdentifier:@"ko_KR"];
 NSMutableArray* ary = [NSMutableArray array];
 NSArray* availableLocaleIdentifiers = [[NSLocale availableLocaleIdentifiers] sort];
 for (NSString* localeIdentifier in availableLocaleIdentifiers) {
 NSString* displayName = [locale displayNameForKey:NSLocaleIdentifier value:localeIdentifier];
 [ary addObject:PAIR(localeIdentifier, displayName)];
 }
 [locale release];
 log_info(@"ary %@", [ary inspect]);

 
 
 ["af", "남아공 공용어"],
 ["af_NA", "남아공 공용어(나미비아)"],
 ["af_ZA", "남아공 공용어(남아프리카)"],
 ["ak", "아칸어"],
 ["ak_GH", "아칸어(가나)"],
 ["am", "암하라어"],
 ["am_ET", "암하라어(이디오피아)"],
 ["ar", "아랍어"],
 ["ar_AE", "아랍어(아랍에미리트 연합)"],
 ["ar_BH", "아랍어(바레인)"],
 ["ar_DZ", "아랍어(알제리)"],
 ["ar_EG", "아랍어(이집트)"],
 ["ar_IQ", "아랍어(이라크)"],
 ["ar_JO", "아랍어(요르단)"],
 ["ar_KW", "아랍어(쿠웨이트)"],
 ["ar_LB", "아랍어(레바논)"],
 ["ar_LY", "아랍어(리비아)"],
 ["ar_MA", "아랍어(모로코)"],
 ["ar_OM", "아랍어(오만)"],
 ["ar_QA", "아랍어(카타르)"],
 ["ar_SA", "아랍어(사우디아라비아)"],
 ["ar_SD", "아랍어(수단)"],
 ["ar_SY", "아랍어(시리아)"],
 ["ar_TN", "아랍어(튀니지)"],
 ["ar_YE", "아랍어(예멘)"],
 ["as", "아샘어"],
 ["as_IN", "아샘어(인도)"],
 ["asa", "Asu"],
 ["asa_TZ", "Asu (Tanzania)"],
 ["az", "아제르바이잔어"],
 ["az_Cyrl", "아제르바이잔어(키릴 문자)"],
 ["az_Cyrl_AZ", "아제르바이잔어(키릴 문자, 아제르바이잔)"],
 ["az_Latn", "아제르바이잔어(로마자)"],
 ["az_Latn_AZ", "아제르바이잔어(로마자, 아제르바이잔)"],
 ["be", "벨로루시어"],
 ["be_BY", "벨로루시어(벨라루스)"],
 ["bem", "벰바어"],
 ["bem_ZM", "벰바어(잠비아)"],
 ["bez", "Bena"],
 ["bez_TZ", "Bena (Tanzania)"],
 ["bg", "불가리아어"],
 ["bg_BG", "불가리아어(불가리아)"],
 ["bm", "밤바라어"],
 ["bm_ML", "밤바라어(말리)"],
 ["bn", "벵골어"],
 ["bn_BD", "벵골어(방글라데시)"],
 ["bn_IN", "벵골어(인도)"],
 ["bo", "티베트어"],
 ["bo_CN", "티베트어(중국)"],
 ["bo_IN", "티베트어(인도)"],
 ["ca", "카탈로니아어"],
 ["ca_ES", "카탈로니아어(스페인)"],
 ["cgg", "Chiga"],
 ["cgg_UG", "Chiga (Uganda)"],
 ["chr", "체로키어"],
 ["chr_US", "체로키어(미국)"],
 ["cs", "체코어"],
 ["cs_CZ", "체코어(체코)"],
 ["cy", "웨일스어"],
 ["cy_GB", "웨일스어(영국)"],
 ["da", "덴마크어"],
 ["da_DK", "덴마크어(덴마크)"],
 ["dav", "Taita"],
 ["dav_KE", "Taita (Kenya)"],
 ["de", "독일어"],
 ["de_AT", "독일어(오스트리아)"],
 ["de_BE", "독일어(벨기에)"],
 ["de_CH", "독일어(스위스)"],
 ["de_DE", "독일어(독일)"],
 ["de_LI", "독일어(리히텐슈타인)"],
 ["de_LU", "독일어(룩셈부르크)"],
 ["ebu", "Embu"],
 ["ebu_KE", "Embu (Kenya)"],
 ["ee", "에웨어"],
 ["ee_GH", "에웨어(가나)"],
 ["ee_TG", "에웨어(토고)"],
 ["el", "그리스어"],
 ["el_CY", "그리스어(사이프러스)"],
 ["el_GR", "그리스어(그리스)"],
 ["en", "영어"],
 ["en_AU", "영어(오스트레일리아)"],
 ["en_BE", "영어(벨기에)"],
 ["en_BW", "영어(보츠와나)"],
 ["en_BZ", "영어(벨리즈)"],
 ["en_CA", "영어(캐나다)"],
 ["en_GB", "영어(영국)"],
 ["en_HK", "영어(홍콩, 중국 특별행정구)"],
 ["en_IE", "영어(아일랜드)"],
 ["en_IN", "영어(인도)"],
 ["en_JM", "영어(자메이카)"],
 ["en_MH", "영어(마샬 군도)"],
 ["en_MT", "영어(몰타)"],
 ["en_MU", "영어(모리셔스)"],
 ["en_NA", "영어(나미비아)"],
 ["en_NZ", "영어(뉴질랜드)"],
 ["en_PH", "영어(필리핀)"],
 ["en_PK", "영어(파키스탄)"],
 ["en_SG", "영어(싱가포르)"],
 ["en_TT", "영어(트리니다드 토바고)"],
 ["en_US", "영어(미국)"],
 ["en_US_POSIX", "영어(미국, POSIX)"],
 ["en_VI", "영어(미국령 버진 아일랜드)"],
 ["en_ZA", "영어(남아프리카)"],
 ["en_ZW", "영어(짐바브웨)"],
 ["eo", "에스페란토어"],
 ["es", "스페인어"],
 ["es_AR", "스페인어(아르헨티나)"],
 ["es_BO", "스페인어(볼리비아)"],
 ["es_CL", "스페인어(칠레)"],
 ["es_CO", "스페인어(콜롬비아)"],
 ["es_CR", "스페인어(코스타리카)"],
 ["es_DO", "스페인어(도미니카 공화국)"],
 ["es_EC", "스페인어(에콰도르)"],
 ["es_ES", "스페인어(스페인)"],
 ["es_GQ", "스페인어(적도 기니)"],
 ["es_GT", "스페인어(과테말라)"],
 ["es_HN", "스페인어(온두라스)"],
 ["es_MX", "스페인어(멕시코)"],
 ["es_NI", "스페인어(니카라과)"],
 ["es_PA", "스페인어(파나마)"],
 ["es_PE", "스페인어(페루)"],
 ["es_PR", "스페인어(푸에르토리코)"],
 ["es_PY", "스페인어(파라과이)"],
 ["es_SV", "스페인어(엘살바도르)"],
 ["es_US", "스페인어(미국)"],
 ["es_UY", "스페인어(우루과이)"],
 ["es_VE", "스페인어(베네수엘라)"],
 ["et", "에스토니아어"],
 ["et_EE", "에스토니아어(에스토니아)"],
 ["eu", "바스크어"],
 ["eu_ES", "바스크어(스페인)"],
 ["fa", "페르시아어"],
 ["fa_AF", "페르시아어(아프가니스탄)"],
 ["fa_IR", "페르시아어(이란)"],
 ["ff", "풀라어"],
 ["ff_SN", "풀라어(세네갈)"],
 ["fi", "핀란드어"],
 ["fi_FI", "핀란드어(핀란드)"],
 ["fil", "필리핀어"],
 ["fil_PH", "필리핀어(필리핀)"],
 ["fo", "페로어"],
 ["fo_FO", "페로어(페로제도)"],
 ["fr", "프랑스어"],
 ["fr_BE", "프랑스어(벨기에)"],
 ["fr_BL", "프랑스어(생 바르텔르미)"],
 ["fr_CA", "프랑스어(캐나다)"],
 ["fr_CF", "프랑스어(중앙 아프리카 공화국)"],
 ["fr_CH", "프랑스어(스위스)"],
 ["fr_CI", "프랑스어(코트디부아르)"],
 ["fr_CM", "프랑스어(카메룬)"],
 ["fr_FR", "프랑스어(프랑스)"],
 ["fr_GN", "프랑스어(기니)"],
 ["fr_GP", "프랑스어(과들루프)"],
 ["fr_LU", "프랑스어(룩셈부르크)"],
 ["fr_MC", "프랑스어(모나코)"],
 ["fr_MF", "프랑스어(생 마르탱)"],
 ["fr_MG", "프랑스어(마다가스카르)"],
 ["fr_ML", "프랑스어(말리)"],
 ["fr_MQ", "프랑스어(말티니크)"],
 ["fr_NE", "프랑스어(니제르)"],
 ["fr_RE", "프랑스어(리유니온)"],
 ["fr_SN", "프랑스어(세네갈)"],
 ["ga", "아일랜드어"],
 ["ga_IE", "아일랜드어(아일랜드)"],
 ["gl", "갈리시아어"],
 ["gl_ES", "갈리시아어(스페인)"],
 ["gsw", "독일어 (스위스)"],
 ["gsw_CH", "독일어 (스위스)(스위스)"],
 ["gu", "구자라트어"],
 ["gu_IN", "구자라트어(인도)"],
 ["guz", "Gusii"],
 ["guz_KE", "Gusii (Kenya)"],
 ["gv", "맹크스어"],
 ["gv_GB", "맹크스어(영국)"],
 ["ha", "하우사어"],
 ["ha_Latn", "하우사어(로마자)"],
 ["ha_Latn_GH", "하우사어(로마자, 가나)"],
 ["ha_Latn_NE", "하우사어(로마자, 니제르)"],
 ["ha_Latn_NG", "하우사어(로마자, 나이지리아)"],
 ["haw", "하와이어"],
 ["haw_US", "하와이어(미국)"],
 ["he", "히브리어"],
 ["he_IL", "히브리어(이스라엘)"],
 ["hi", "힌디어"],
 ["hi_IN", "힌디어(인도)"],
 ["hr", "크로아티아어"],
 ["hr_HR", "크로아티아어(크로아티아)"],
 ["hu", "헝가리어"],
 ["hu_HU", "헝가리어(헝가리)"],
 ["hy", "아르메니아어"],
 ["hy_AM", "아르메니아어(아르메니아)"],
 ["id", "인도네시아어"],
 ["id_ID", "인도네시아어(인도네시아)"],
 ["ig", "이그보어"],
 ["ig_NG", "이그보어(나이지리아)"],
 ["ii", "쓰촨 이어"],
 ["ii_CN", "쓰촨 이어(중국)"],
 ["is", "아이슬란드어"],
 ["is_IS", "아이슬란드어(아이슬란드)"],
 ["it", "이탈리아어"],
 ["it_CH", "이탈리아어(스위스)"],
 ["it_IT", "이탈리아어(이탈리아)"],
 ["ja", "일본어"],
 ["ja_JP", "일본어(일본)"],
 ["jmc", "Machame"],
 ["jmc_TZ", "Machame (Tanzania)"],
 ["ka", "그루지야어"],
 ["ka_GE", "그루지야어(그루지야)"],
 ["kab", "커바일어"],
 ["kab_DZ", "커바일어(알제리)"],
 ["kam", "캄바어"],
 ["kam_KE", "캄바어(케냐)"],
 ["kde", "Makonde"],
 ["kde_TZ", "Makonde (Tanzania)"],
 ["kea", "Kabuverdianu"],
 ["kea_CV", "Kabuverdianu (Cape Verde)"],
 ["khq", "Koyra Chiini"],
 ["khq_ML", "Koyra Chiini (Mali)"],
 ["ki", "키쿠유어"],
 ["ki_KE", "키쿠유어(케냐)"],
 ["kk", "카자흐어"],
 ["kk_Cyrl", "카자흐어(키릴 문자)"],
 ["kk_Cyrl_KZ", "카자흐어(키릴 문자, 카자흐스탄)"],
 ["kl", "그린란드어"],
 ["kl_GL", "그린란드어(그린란드)"],
 ["kln", "Kalenjin"],
 ["kln_KE", "Kalenjin (Kenya)"],
 ["km", "캄보디아어"],
 ["km_KH", "캄보디아어(캄보디아)"],
 ["kn", "카나다어"],
 ["kn_IN", "카나다어(인도)"],
 ["ko", "한국어"],
 ["ko_KR", "한국어(대한민국)"],
 ["kok", "코카니어"],
 ["kok_IN", "코카니어(인도)"],
 ["kw", "콘월어"],
 ["kw_GB", "콘월어(영국)"],
 ["lag", "Langi"],
 ["lag_TZ", "Langi (Tanzania)"],
 ["lg", "간다어"],
 ["lg_UG", "간다어(우간다)"],
 ["lt", "리투아니아어"],
 ["lt_LT", "리투아니아어(리투아니아)"],
 ["luo", "루오어"],
 ["luo_KE", "루오어(케냐)"],
 ["luy", "Luyia"],
 ["luy_KE", "Luyia (Kenya)"],
 ["lv", "라트비아어"],
 ["lv_LV", "라트비아어(라트비아)"],
 ["mas", "마사이어"],
 ["mas_KE", "마사이어(케냐)"],
 ["mas_TZ", "마사이어(탄자니아)"],
 ["mer", "Meru"],
 ["mer_KE", "Meru (Kenya)"],
 ["mfe", "Morisyen"],
 ["mfe_MU", "Morisyen (Mauritius)"],
 ["mg", "마다가스카르어"],
 ["mg_MG", "마다가스카르어(마다가스카르)"],
 ["mk", "마케도니아어"],
 ["mk_MK", "마케도니아어(마케도니아)"],
 ["ml", "말라얄람어"],
 ["ml_IN", "말라얄람어(인도)"],
 ["mr", "마라티어"],
 ["mr_IN", "마라티어(인도)"],
 ["ms", "말레이어"],
 ["ms_BN", "말레이어(브루나이)"],
 ["ms_MY", "말레이어(말레이시아)"],
 ["mt", "몰타어"],
 ["mt_MT", "몰타어(몰타)"],
 ["naq", "Nama"],
 ["naq_NA", "Nama (Namibia)"],
 ["nb", "노르웨이어(보크말)"],
 ["nb_NO", "노르웨이어(보크말)(노르웨이)"],
 ["nd", "은데벨레어(북부)"],
 ["nd_ZW", "은데벨레어(북부)(짐바브웨)"],
 ["ne", "네팔어"],
 ["ne_IN", "네팔어(인도)"],
 ["ne_NP", "네팔어(네팔)"],
 ["nl", "네덜란드어"],
 ["nl_BE", "네덜란드어(벨기에)"],
 ["nl_NL", "네덜란드어(네덜란드)"],
 ["nn", "노르웨이어(니노르스크)"],
 ["nn_NO", "노르웨이어(니노르스크)(노르웨이)"],
 ["nyn", "니안콜어"],
 ["nyn_UG", "니안콜어(우간다)"],
 ["om", "오로모어 (아판)"],
 ["om_ET", "오로모어 (아판)(이디오피아)"],
 ["om_KE", "오로모어 (아판)(케냐)"],
 ["or", "오리야어"],
 ["or_IN", "오리야어(인도)"],
 ["pa", "펀잡어"],
 ["pa_Arab", "펀잡어(아랍 문자)"],
 ["pa_Arab_PK", "펀잡어(아랍 문자, 파키스탄)"],
 ["pa_Guru", "펀잡어(구르무키 문자)"],
 ["pa_Guru_IN", "펀잡어(구르무키 문자, 인도)"],
 ["pl", "폴란드어"],
 ["pl_PL", "폴란드어(폴란드)"],
 ["ps", "파시토어 (푸시토)"],
 ["ps_AF", "파시토어 (푸시토)(아프가니스탄)"],
 ["pt", "포르투갈어"],
 ["pt_BR", "포르투갈어(브라질)"],
 ["pt_GW", "포르투갈어(기네비쏘)"],
 ["pt_MZ", "포르투갈어(모잠비크)"],
 ["pt_PT", "포르투갈어(포르투갈)"],
 ["rm", "레토로만어"],
 ["rm_CH", "레토로만어(스위스)"],
 ["ro", "루마니아어"],
 ["ro_MD", "루마니아어(몰도바)"],
 ["ro_RO", "루마니아어(루마니아)"],
 ["rof", "Rombo"],
 ["rof_TZ", "Rombo (Tanzania)"],
 ["ru", "러시아어"],
 ["ru_MD", "러시아어(몰도바)"],
 ["ru_RU", "러시아어(러시아)"],
 ["ru_UA", "러시아어(우크라이나)"],
 ["rw", "르완다어"],
 ["rw_RW", "르완다어(르완다)"],
 ["rwk", "Rwa"],
 ["rwk_TZ", "Rwa (Tanzania)"],
 ["saq", "Samburu"],
 ["saq_KE", "Samburu (Kenya)"],
 ["seh", "Sena"],
 ["seh_MZ", "Sena (Mozambique)"],
 ["ses", "Koyraboro Senni"],
 ["ses_ML", "Koyraboro Senni (Mali)"],
 ["sg", "산고어"],
 ["sg_CF", "산고어(중앙 아프리카 공화국)"],
 ["shi", "Tachelhit"],
 ["shi_Latn", "Tachelhit (Latin)"],
 ["shi_Latn_MA", "Tachelhit (Latin, Morocco)"],
 ["shi_Tfng", "Tachelhit (Tifinagh)"],
 ["shi_Tfng_MA", "Tachelhit (Tifinagh, Morocco)"],
 ["si", "스리랑카어"],
 ["si_LK", "스리랑카어(스리랑카)"],
 ["sk", "슬로바키아어"],
 ["sk_SK", "슬로바키아어(슬로바키아)"],
 ["sl", "슬로베니아어"],
 ["sl_SI", "슬로베니아어(슬로베니아)"],
 ["sn", "쇼나어"],
 ["sn_ZW", "쇼나어(짐바브웨)"],
 ["so", "소말리아어"],
 ["so_DJ", "소말리아어(지부티)"],
 ["so_ET", "소말리아어(이디오피아)"],
 ["so_KE", "소말리아어(케냐)"],
 ["so_SO", "소말리아어(소말리아)"],
 ["sq", "알바니아어"],
 ["sq_AL", "알바니아어(알바니아)"],
 ["sr", "세르비아어"],
 ["sr_Cyrl", "세르비아어(키릴 문자)"],
 ["sr_Cyrl_BA", "세르비아어(키릴 문자, 보스니아 헤르체고비나)"],
 ["sr_Cyrl_ME", "세르비아어(키릴 문자, 몬테네그로)"],
 ["sr_Cyrl_RS", "세르비아어(키릴 문자, 세르비아)"],
 ["sr_Latn", "세르비아어(로마자)"],
 ["sr_Latn_BA", "세르비아어(로마자, 보스니아 헤르체고비나)"],
 ["sr_Latn_ME", "세르비아어(로마자, 몬테네그로)"],
 ["sr_Latn_RS", "세르비아어(로마자, 세르비아)"],
 ["sv", "스웨덴어"],
 ["sv_FI", "스웨덴어(핀란드)"],
 ["sv_SE", "스웨덴어(스웨덴)"],
 ["sw", "스와힐리어"],
 ["sw_KE", "스와힐리어(케냐)"],
 ["sw_TZ", "스와힐리어(탄자니아)"],
 ["ta", "타밀어"],
 ["ta_IN", "타밀어(인도)"],
 ["ta_LK", "타밀어(스리랑카)"],
 ["te", "텔루구어"],
 ["te_IN", "텔루구어(인도)"],
 ["teo", "Teso"],
 ["teo_KE", "Teso (Kenya)"],
 ["teo_UG", "Teso (Uganda)"],
 ["th", "태국어"],
 ["th_TH", "태국어(태국)"],
 ["ti", "티그리냐어"],
 ["ti_ER", "티그리냐어(에리트리아)"],
 ["ti_ET", "티그리냐어(이디오피아)"],
 ["to", "통가어"],
 ["to_TO", "통가어(통가)"],
 ["tr", "터키어"],
 ["tr_TR", "터키어(터키)"],
 ["tzm", "Central Morocco Tamazight"],
 ["tzm_Latn", "Central Morocco Tamazight (Latin)"],
 ["tzm_Latn_MA", "Central Morocco Tamazight (Latin, Morocco)"],
 ["uk", "우크라이나어"],
 ["uk_UA", "우크라이나어(우크라이나)"],
 ["ur", "우르두어"],
 ["ur_IN", "우르두어(인도)"],
 ["ur_PK", "우르두어(파키스탄)"],
 ["uz", "우즈베크어"],
 ["uz_Arab", "우즈베크어(아랍 문자)"],
 ["uz_Arab_AF", "우즈베크어(아랍 문자, 아프가니스탄)"],
 ["uz_Cyrl", "우즈베크어(키릴 문자)"],
 ["uz_Cyrl_UZ", "우즈베크어(키릴 문자, 우즈베키스탄)"],
 ["uz_Latn", "우즈베크어(로마자)"],
 ["uz_Latn_UZ", "우즈베크어(로마자, 우즈베키스탄)"],
 ["vi", "베트남어"],
 ["vi_VN", "베트남어(베트남)"],
 ["vun", "Vunjo"],
 ["vun_TZ", "Vunjo (Tanzania)"],
 ["xog", "Soga"],
 ["xog_UG", "Soga (Uganda)"],
 ["yo", "요루바어"],
 ["yo_NG", "요루바어(나이지리아)"],
 ["zh", "중국어"],
 ["zh_Hans", "중국어(한자(간체))"],
 ["zh_Hans_CN", "중국어(한자(간체), 중국)"],
 ["zh_Hans_HK", "중국어(한자(간체), 홍콩, 중국 특별행정구)"],
 ["zh_Hans_MO", "중국어(한자(간체), 마카오, 중국 특별행정구)"],
 ["zh_Hans_SG", "중국어(한자(간체), 싱가포르)"],
 ["zh_Hant", "중국어(한자(번체))"],
 ["zh_Hant_HK", "중국어(한자(번체), 홍콩, 중국 특별행정구)"],
 ["zh_Hant_MO", "중국어(한자(번체), 마카오, 중국 특별행정구)"],
 ["zh_Hant_TW", "중국어(한자(번체), 대만)"],
 ["zu", "줄루어"],
 ["zu_ZA", "줄루어(남아프리카)"]
 
*/

@end