//
//  FNProductMerchandiseListModel.h
//  DaRunFa
//
//  Created by King on 2017/11/28.
//
//

#import <Foundation/Foundation.h>
//#import "BGFMDB.h" //添加该头文件,本类就具有了存储功能.

@class NSAttributedString;

@interface FNProductMerchandiseListModel : NSObject

@property(copy, nonatomic) NSString *productID; // @synthesize productID=_productID;


@property(retain, nonatomic) NSAttributedString *attributedProductName; // @synthesize attributedProductName=_attributedProductName;
@property(copy, nonatomic) NSString *barcode; // @synthesize barcode=_barcode;
@property(copy, nonatomic) NSString *boxSpec; // @synthesize boxSpec=_boxSpec;
@property(copy, nonatomic) NSString *category_id; // @synthesize category_id=_category_id;
@property(copy, nonatomic) NSString *cid; // @synthesize cid=_cid;
@property(copy, nonatomic) NSString *cornerIconUrl; // @synthesize cornerIconUrl=_cornerIconUrl;
@property(copy, nonatomic) NSString *count; // @synthesize count=_count;
@property(copy, nonatomic) NSString *min_order_num; // @synthesize min_order_num=_min_order_num;
@property(copy, nonatomic) NSString *om; // @synthesize om=_om;
@property(copy, nonatomic) NSString *op; // @synthesize op=_op;
@property(copy, nonatomic) NSString *productName; // @synthesize productName=_productName;
@property(copy, nonatomic) NSString *productPictureURL; // @synthesize productPictureURL=_productPictureURL;
@property(copy, nonatomic) NSString *productPrice; // @synthesize productPrice=_productPrice;
@property(copy, nonatomic) NSString *promotion_flag; // @synthesize promotion_flag=_promotion_flag;
@property(copy, nonatomic) NSString *spec; // @synthesize spec=_spec;
@property(copy, nonatomic) NSString *status; // @synthesize status=_status;
@property(copy, nonatomic) NSString *stock; // @synthesize stock=_stock;
@property(copy, nonatomic) NSString *stockMsg; // @synthesize stockMsg=_stockMsg;
@property(retain, nonatomic) NSArray *tags; // @synthesize tags=_tags;


+(void)SaveByUniquePropertyWithObject:(FNProductMerchandiseListModel *)tmp;


@end
