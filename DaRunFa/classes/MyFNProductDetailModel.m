//
//  MyFNProductDetailModel.m
//  DaRunFa
//
//  Created by King on 2017/11/29.
//
//

#import "MyFNProductDetailModel.h"
#import "FNProductDetailResponseModel.h"
@implementation MyFNProductDetailModel


-(instancetype)initWithListModel:(FNProductDetailResponseModel*)model
{
    
    if(self = [super init])
    {
        self.productId = model.productId;
        self.productName = model.productName;
        self.barcode = model.barcode;
        self.imgUrlArray = model.imgUrlArray;
        self.boxSpec = model.boxSpec;
        self.cartNum = model.cartNum;
        self.cid = model.cid;
        self.cornerIcon = model.cornerIcon;
        self.detailScoreDesc = model.detailScoreDesc;
        self.minOrderNum = model.minOrderNum;
        self.multiScoreTips = model.multiScoreTips;
        self.orderType = model.orderType;
        self.originalPrice = model.originalPrice;
        self.packageScoreDesc = model.packageScoreDesc;
        self.spec = model.spec;
        //self.popUpTags = model.popUpTags;
        self.stock = model.stock;
        self.stockMsg = model.stockMsg;
        self.price = model.price;
        self.promotionFlag = model.promotionFlag;
        self.purchaseLimit = model.purchaseLimit;
        self.score = model.score;
        self.showDesc = model.showDesc;
        self.spec = model.spec;
        self.statusNo = model.statusNo;
        self.stock = model.stock;
        self.stockDesc = model.stockDesc;
        self.stockMsg = model.stockMsg;
        //self.tagArray = model.tagArray;

    }
    
    return self;
}

//如果需要指定“唯一约束”字段,就实现该函数,这里指定 productId 为“唯一约束”.
+(NSString *)bg_uniqueKey{
    
    
    return @"productId";
}


@end
