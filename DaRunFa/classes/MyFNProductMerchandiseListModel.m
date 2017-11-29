//
//  MyFNProductMerchandiseListModel.m
//  DaRunFa
//
//  Created by King on 2017/11/28.
//
//

#import "MyFNProductMerchandiseListModel.h"
#import "FNProductMerchandiseListModel.h"


@implementation MyFNProductMerchandiseListModel



-(instancetype)initWithListModel:(FNProductMerchandiseListModel*)model
{
    
    if(self = [super init])
    {
        self.productID = model.productID;
        self.attributedProductName = model.attributedProductName;
        self.barcode = model.barcode;
        self.boxSpec = model.boxSpec;
        self.category_id = model.category_id;
        self.cid = model.cid;
        self.cornerIconUrl = model.cornerIconUrl;
        self.count = model.count;
        self.min_order_num = model.min_order_num;
        self.om = model.om;
        self.op = model.op;
        self.productName = model.productName;
        self.productPictureURL = model.productPictureURL;
        self.productPrice = model.productPrice;
        self.promotion_flag = model.promotion_flag;
        self.spec = model.spec;
        self.status = model.status;
        self.stock = model.stock;
        self.stockMsg = model.stockMsg;
        self.tags = model.tags;

    }
    
    return self;
}

//如果需要指定“唯一约束”字段,就实现该函数,这里指定 name 为“唯一约束”.
+(NSString *)bg_uniqueKey{
    
    
    return @"productID";
}





@end
