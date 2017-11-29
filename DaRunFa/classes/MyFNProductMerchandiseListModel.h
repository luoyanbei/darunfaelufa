//
//  MyFNProductMerchandiseListModel.h
//  DaRunFa
//
//  Created by King on 2017/11/28.
//
//

#import <Foundation/Foundation.h>
#import "BGFMDB.h" //添加该头文件,本类就具有了存储功能.


@class FNProductMerchandiseListModel;

@interface MyFNProductMerchandiseListModel : NSObject

@property(copy, nonatomic) NSString *productID;
@property(retain, nonatomic) NSAttributedString *attributedProductName;
@property(copy, nonatomic) NSString *barcode;
@property(copy, nonatomic) NSString *boxSpec;
@property(copy, nonatomic) NSString *category_id;
@property(copy, nonatomic) NSString *cid;
@property(copy, nonatomic) NSString *cornerIconUrl;
@property(copy, nonatomic) NSString *count;
@property(copy, nonatomic) NSString *min_order_num;
@property(copy, nonatomic) NSString *om;
@property(copy, nonatomic) NSString *op;
@property(copy, nonatomic) NSString *productName;
@property(copy, nonatomic) NSString *productPictureURL;
@property(copy, nonatomic) NSString *productPrice;
@property(copy, nonatomic) NSString *promotion_flag;
@property(copy, nonatomic) NSString *spec;
@property(copy, nonatomic) NSString *status;
@property(copy, nonatomic) NSString *stock;
@property(copy, nonatomic) NSString *stockMsg;
@property(retain, nonatomic) NSArray *tags;


//+(void)SaveByUniquePropertyWithObject:(FNProductMerchandiseListModel *)tmp;

-(instancetype)initWithListModel:(FNProductMerchandiseListModel*)model;


@end
