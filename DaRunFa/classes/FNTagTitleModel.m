//
//  FNTagTitleModel.m
//  DaRunFa
//
//  Created by King on 2017/11/28.
//
//

#import "FNTagTitleModel.h"

@implementation FNTagTitleModel

//如果需要指定“唯一约束”字段,就实现该函数,这里指定 name 为“唯一约束”.
+(NSString *)bg_uniqueKey{
    return @"tagTitle";
}

@end
