//
//  FNDepartmentElementModel.h
//  DaRunFa
//
//  Created by King on 2017/11/28.
//
//

#import <Foundation/Foundation.h>
#import "BGFMDB.h" //添加该头文件,本类就具有了存储功能.

@interface FNDepartmentElementModel : NSObject

/*
 //第一组
 (cname=茶咖啡;  departmentId=24; pid=1; cateid=;  classifiedId=1; order=1; )
 (cname=乳饮料;  departmentId=25; pid=1; cateid=;  classifiedId=1; order=2; )
 (cname=碳酸饮料;  departmentId=26; pid=1; cateid=;  classifiedId=1; order=3; )
 (cname=功能饮料;  departmentId=27; pid=1; cateid=;  classifiedId=1; order=4; )
 (cname=水;  departmentId=28; pid=1; cateid=;  classifiedId=1; order=5; )
 (cname=果蔬汁;  departmentId=29; pid=1; cateid=;  classifiedId=1; order=6; )
 (cname=白酒;  departmentId=30; pid=1; cateid=;  classifiedId=1; order=7; )
 (cname=黄酒;  departmentId=31; pid=1; cateid=;  classifiedId=1; order=8; )
 (cname=啤酒;  departmentId=32; pid=1; cateid=;  classifiedId=1; order=9; )
 (cname=洋酒;  departmentId=33; pid=1; cateid=;  classifiedId=1; order=10; )
 (cname=葡萄酒;  departmentId=34; pid=1; cateid=;  classifiedId=1; order=11; )
 (cname=滋补酒;  departmentId=35; pid=1; cateid=;  classifiedId=1; order=12; )
 
 */
/*
 //第二组
 (cname=常温奶 ;  departmentId=36; pid=2; cateid=;  classifiedId=1; order=13; )
 (cname=低温牛奶;  departmentId=37; pid=2; cateid=;  classifiedId=1; order=14; )
 (cname=冷藏乳饮;  departmentId=38; pid=2; cateid=;  classifiedId=1; order=15; )
 (cname=冷藏酸奶;  departmentId=39; pid=2; cateid=;  classifiedId=1; order=16; )
 (cname=冷冻面点;  departmentId=40; pid=2; cateid=;  classifiedId=1; order=17; )
 (cname=冷冻速食;  departmentId=41; pid=2; cateid=;  classifiedId=1; order=18; )
 (cname=冰品;  departmentId=42; pid=2; cateid=;  classifiedId=1; order=19; )
 (cname=冷藏熟食;  departmentId=43; pid=2; cateid=;  classifiedId=1; order=20; )
 (cname=奶酪/黄油;  departmentId=44; pid=2; cateid=;  classifiedId=1; order=21; )
 (cname=火锅丸类;  departmentId=45; pid=2; cateid=;  classifiedId=1; order=22; )
 
 */
//+ (id)modelCustomPropertyMapper;

@property(copy, nonatomic) NSString *cateid; // @synthesize cateid=_cateid;
@property(copy, nonatomic) NSString *classifiedId; // @synthesize classifiedId=_classifiedId;
@property(copy, nonatomic) NSString *cname; // @synthesize cname=_cname;
@property(copy, nonatomic) NSString *ctime; // @synthesize ctime=_ctime;
@property(copy, nonatomic) NSString *departmentId; // 可作为唯一标识
@property(nonatomic) _Bool hasRemainder; // @synthesize hasRemainder=_hasRemainder;
@property(copy, nonatomic) NSString *img; // @synthesize img=_img;
@property(copy, nonatomic) NSString *order; // 顺序，从1开始
@property(copy, nonatomic) NSString *pid; // 根据pid属性分组
@property(nonatomic) _Bool selected; // @synthesize selected=_selected;
@property(nonatomic) struct CGSize size; // @synthesize size=_size;
@property(copy, nonatomic) NSString *utime; // @synthesize utime=_utime;

+(void)SaveByUniquePropertyWithObject:(FNDepartmentElementModel *)tmp;


@end
