//
//  FNTagTitleModel.h
//  DaRunFa
//
//  Created by King on 2017/11/28.
//
//

#import <Foundation/Foundation.h>

#import "BGFMDB.h" //添加该头文件,本类就具有了存储功能.


@interface FNTagTitleModel : NSObject
{
    NSString *_tagTitle;
    UIFont *_normalTitleFont;
    UIFont *_selectedTitleFont;
    UIColor *_normalTitleColor;
    UIColor *_selectedTitleColor;
}

//+ (id)modelWithtagTitle:(id)arg1 andNormalTitleFont:(id)arg2 andSelectedTitleFont:(id)arg3 andNormalTitleColor:(id)arg4 andSelectedTitleColor:(id)arg5;
@property(retain, nonatomic) UIColor *normalTitleColor; // @synthesize normalTitleColor=_normalTitleColor;
@property(retain, nonatomic) UIFont *normalTitleFont; // @synthesize normalTitleFont=_normalTitleFont;
@property(retain, nonatomic) UIColor *selectedTitleColor; // @synthesize selectedTitleColor=_selectedTitleColor;
@property(retain, nonatomic) UIFont *selectedTitleFont; // @synthesize selectedTitleFont=_selectedTitleFont;
@property(copy, nonatomic) NSString *tagTitle; // @synthesize tagTitle=_tagTitle;


+(NSString *)bg_uniqueKey;

@end
