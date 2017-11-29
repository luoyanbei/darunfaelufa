//
//  FNDepartmentElementModel.m
//  DaRunFa
//
//  Created by King on 2017/11/28.
//
//

#import "FNDepartmentElementModel.h"

@implementation FNDepartmentElementModel



//根据某个属性的唯一性保存数据，存在则不保存
+(void)SaveByUniquePropertyWithObject:(FNDepartmentElementModel *)tmp
{
    //
    /**
     查询类中是否已存在该数据.
     */
    NSInteger count = [FNDepartmentElementModel bg_countWhere:@[@"departmentId",@"=",[tmp departmentId]]];
    
    if (count==0)
    {
        //保存
        [tmp bg_saveOrUpdate];
        NSLog(@"保存---FNDepartmentElementModel");
    }
    else
    {
        NSLog(@"保存---FNDepartmentElementModel--已存在，不保存");
        
    }
}



@end
