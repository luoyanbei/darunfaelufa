//
//  FNProductDetailModel.h
//  DaRunFa
//
//  Created by King on 2017/11/29.
//
//

#import <Foundation/Foundation.h>



@class FNProductDetailCampResponseModel, NSArray, NSString;

@interface FNProductDetailModel : NSObject
@property(copy, nonatomic) NSString *barcode; // @synthesize barcode=_barcode;
@property(copy, nonatomic) NSString *boxSpec; // @synthesize boxSpec=_boxSpec;
@property(retain, nonatomic) FNProductDetailCampResponseModel *campData; // @synthesize campData=_campData;
@property(nonatomic) long long cartNum; // @synthesize cartNum=_cartNum;
@property(copy, nonatomic) NSString *cid; // @synthesize cid=_cid;
@property(copy, nonatomic) NSString *cornerIcon; // @synthesize cornerIcon=_cornerIcon;
@property(copy, nonatomic) NSString *detailScoreDesc; // @synthesize detailScoreDesc=_detailScoreDesc;
@property(retain, nonatomic) NSArray *imgUrlArray; // @synthesize imgUrlArray=_imgUrlArray;
@property(nonatomic) long long minOrderNum; // @synthesize minOrderNum=_minOrderNum;
@property(copy, nonatomic) NSString *multiScoreTips; // @synthesize multiScoreTips=_multiScoreTips;
@property(nonatomic) unsigned long long orderType; // @synthesize orderType=_orderType;
@property(copy, nonatomic) NSString *originalPrice; // @synthesize originalPrice=_originalPrice;
@property(copy, nonatomic) NSString *packageScoreDesc; // @synthesize packageScoreDesc=_packageScoreDesc;
@property(retain, nonatomic) NSArray *popUpTags; // @synthesize popUpTags=_popUpTags;
@property(copy, nonatomic) NSString *price; // @synthesize price=_price;
@property(copy, nonatomic) NSString *productId; // @synthesize productId=_productId;
@property(copy, nonatomic) NSString *productName; // @synthesize productName=_productName;
@property(copy, nonatomic) NSString *promotionFlag; // @synthesize promotionFlag=_promotionFlag;
@property(copy, nonatomic) NSString *purchaseLimit; // @synthesize purchaseLimit=_purchaseLimit;
@property(nonatomic) long long score; // @synthesize score=_score;
@property(copy, nonatomic) NSString *showDesc; // @synthesize showDesc=_showDesc;
@property(copy, nonatomic) NSString *spec; // @synthesize spec=_spec;
@property(copy, nonatomic) NSString *statusNo; // @synthesize statusNo=_statusNo;
@property(nonatomic) long long stock; // @synthesize stock=_stock;
@property(copy, nonatomic) NSString *stockDesc; // @synthesize stockDesc=_stockDesc;
@property(copy, nonatomic) NSString *stockMsg; // @synthesize stockMsg=_stockMsg;
@property(retain, nonatomic) NSArray *tagArray; // @synthesize tagArray=_tagArray;
@end
