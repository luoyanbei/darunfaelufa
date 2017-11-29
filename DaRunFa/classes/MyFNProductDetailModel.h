//
//  MyFNProductDetailModel.h
//  DaRunFa
//
//  Created by King on 2017/11/29.
//
//

#import <Foundation/Foundation.h>
#import "BGFMDB.h" //添加该头文件,本类就具有了存储功能.
@class FNProductDetailModel,FNProductDetailResponseModel;

@interface MyFNProductDetailModel : NSObject

@property(copy, nonatomic) NSString *barcode;
@property(copy, nonatomic) NSString *boxSpec;
@property(nonatomic) long long cartNum;
@property(copy, nonatomic) NSString *cid;
@property(copy, nonatomic) NSString *cornerIcon;
@property(copy, nonatomic) NSString *detailScoreDesc;
@property(retain, nonatomic) NSArray *imgUrlArray;
@property(nonatomic) long long minOrderNum;
@property(copy, nonatomic) NSString *multiScoreTips;
@property(nonatomic) unsigned long long orderType;
@property(copy, nonatomic) NSString *originalPrice;
@property(copy, nonatomic) NSString *packageScoreDesc;
//@property(retain, nonatomic) NSArray *popUpTags;
@property(copy, nonatomic) NSString *price;
@property(copy, nonatomic) NSString *productId;
@property(copy, nonatomic) NSString *productName;
@property(copy, nonatomic) NSString *promotionFlag;
@property(copy, nonatomic) NSString *purchaseLimit;
@property(nonatomic) long long score;
@property(copy, nonatomic) NSString *showDesc;
@property(copy, nonatomic) NSString *spec;
@property(copy, nonatomic) NSString *statusNo;
@property(nonatomic) long long stock;
@property(copy, nonatomic) NSString *stockDesc;
@property(copy, nonatomic) NSString *stockMsg;
//@property(retain, nonatomic) NSArray *tagArray;


-(instancetype)initWithListModel:(FNProductDetailResponseModel*)model;

@end
