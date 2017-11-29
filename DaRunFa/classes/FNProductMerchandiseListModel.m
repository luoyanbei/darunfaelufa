//
//  FNProductMerchandiseListModel.m
//  DaRunFa
//
//  Created by King on 2017/11/28.
//
//

#import "FNProductMerchandiseListModel.h"

@implementation FNProductMerchandiseListModel


//根据某个属性的唯一性保存数据，存在则不保存
+(void)SaveByUniquePropertyWithObject:(FNProductMerchandiseListModel *)tmp
{
    //
    /**
     查询类中是否已存在该数据.
     */
    NSInteger count = [FNProductMerchandiseListModel bg_countWhere:@[@"productID",@"=",[tmp productID]]];
    
    if (count==0)
    {
        NSLog(@"保存---FNDepartmentElementModel--1");

        //保存
        [tmp bg_saveOrUpdate];
        NSLog(@"保存---FNDepartmentElementModel--2");

    }
    else
    {
        NSLog(@"保存---FNDepartmentElementModel--已存在，不保存");
        
    }
}

@end
