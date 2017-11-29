#line 1 "/Users/king/Desktop/2017工作/快手/测试app/大润发/DaRunFa/DaRunFa/DaRunFa.xm"
#import "FNTagTitleModel.h"
#import "FNDepartmentElementModel.h"
#import "FNProductMerchandiseListModel.h"
#import "MyFNProductMerchandiseListModel.h"
#import "FNProductDetailModel.h"
#import "MyFNProductDetailModel.h"
#import "ProgressHUD.h"


UIButton * refreshProductDetailInfoBtn=nil;

int maxQueryCount = 200;

int theLocal = 0;

NSMutableArray * thePIDArray=nil;

int totalProduct = 0;





@class FNEmptyView,FNMoreListCategoryView,FNHotRecommendProductParameterModel,FNMaskView,FNHomeCategoryModel,FNMoreProductViewModel,FNScrollPageView,FNSecondCategoryScrollView,FNHomeCategoryModel,FNHomeCollectionViewFlowLayout,FNHomeCategoryNavigatorHeaderView,FNNavigationAccountUnusualPromptView,FNHomeViewModel,BackViewProtocol,FNProductListDropdownView,FNOrdinaryProductListViewModel,FNProListSortView,FNDepartmentSearchBar,FNDepartmentViewModel,NSLayoutConstraint,FNDepartmentViewModelDelegate,FNDepartmentService,FNDepartmentFirstClassifiedResponseModel;






















































#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class FNDepartmentElementModel; @class FNTagTitleModel; @class FNProductMerchandiseListModel; @class FNProductDetailService; @class FNDepartmentViewModel; @class FNProductDetailResponseModel; @class FNDepartmentViewController; @class FNProductDetailParameterModel; @class FNUser; 
static _Bool (*_logos_orig$_ungrouped$FNProductMerchandiseListModel$modelCustomTransformFromDictionary$)(_LOGOS_SELF_TYPE_NORMAL FNProductMerchandiseListModel* _LOGOS_SELF_CONST, SEL, id); static _Bool _logos_method$_ungrouped$FNProductMerchandiseListModel$modelCustomTransformFromDictionary$(_LOGOS_SELF_TYPE_NORMAL FNProductMerchandiseListModel* _LOGOS_SELF_CONST, SEL, id); static id (*_logos_meta_orig$_ungrouped$FNTagTitleModel$modelWithtagTitle$andNormalTitleFont$andSelectedTitleFont$andNormalTitleColor$andSelectedTitleColor$)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, id, id, id, id, id); static id _logos_meta_method$_ungrouped$FNTagTitleModel$modelWithtagTitle$andNormalTitleFont$andSelectedTitleFont$andNormalTitleColor$andSelectedTitleColor$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, id, id, id, id, id); static void (*_logos_orig$_ungrouped$FNDepartmentViewModel$requestMerchandiseListDataWithCompletion$)(_LOGOS_SELF_TYPE_NORMAL FNDepartmentViewModel* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$FNDepartmentViewModel$requestMerchandiseListDataWithCompletion$(_LOGOS_SELF_TYPE_NORMAL FNDepartmentViewModel* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$FNDepartmentViewController$viewDidLoad)(_LOGOS_SELF_TYPE_NORMAL FNDepartmentViewController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$FNDepartmentViewController$viewDidLoad(_LOGOS_SELF_TYPE_NORMAL FNDepartmentViewController* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$FNDepartmentViewController$viewDidAppear$)(_LOGOS_SELF_TYPE_NORMAL FNDepartmentViewController* _LOGOS_SELF_CONST, SEL, _Bool); static void _logos_method$_ungrouped$FNDepartmentViewController$viewDidAppear$(_LOGOS_SELF_TYPE_NORMAL FNDepartmentViewController* _LOGOS_SELF_CONST, SEL, _Bool); static void _logos_method$_ungrouped$FNDepartmentViewController$refreshProductDetailInfoBtn_click$(_LOGOS_SELF_TYPE_NORMAL FNDepartmentViewController* _LOGOS_SELF_CONST, SEL, UIButton *); static void _logos_method$_ungrouped$FNDepartmentViewController$receiveProductIDArrayWithLocation$Count$(_LOGOS_SELF_TYPE_NORMAL FNDepartmentViewController* _LOGOS_SELF_CONST, SEL, int, int); static void _logos_method$_ungrouped$FNDepartmentViewController$gainNextProductDetailInfo(_LOGOS_SELF_TYPE_NORMAL FNDepartmentViewController* _LOGOS_SELF_CONST, SEL); static NSString * _logos_method$_ungrouped$FNDepartmentViewController$gainThePID(_LOGOS_SELF_TYPE_NORMAL FNDepartmentViewController* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$FNDepartmentViewController$existTheDetailInfoWithProductID$(_LOGOS_SELF_TYPE_NORMAL FNDepartmentViewController* _LOGOS_SELF_CONST, SEL, NSString *); 
static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$FNUser(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("FNUser"); } return _klass; }static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$FNProductDetailParameterModel(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("FNProductDetailParameterModel"); } return _klass; }static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$FNDepartmentElementModel(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("FNDepartmentElementModel"); } return _klass; }static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$FNProductDetailResponseModel(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("FNProductDetailResponseModel"); } return _klass; }static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$FNProductDetailService(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("FNProductDetailService"); } return _klass; }
#line 78 "/Users/king/Desktop/2017工作/快手/测试app/大润发/DaRunFa/DaRunFa/DaRunFa.xm"


static _Bool _logos_method$_ungrouped$FNProductMerchandiseListModel$modelCustomTransformFromDictionary$(_LOGOS_SELF_TYPE_NORMAL FNProductMerchandiseListModel* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    HBLogDebug(@"-[<FNProductMerchandiseListModel: %p> modelCustomTransformFromDictionary:%@]", self, arg1);
    
    
    if(self)
    {
        NSLog(@"保存---FNDepartmentElementModel--1");

        MyFNProductMerchandiseListModel * tmp = [[MyFNProductMerchandiseListModel alloc] initWithListModel:self];
        NSLog(@"保存---FNDepartmentElementModel--2");

        
        
        [tmp bg_saveOrUpdate];
        NSLog(@"保存---FNDepartmentElementModel--3");
    }
    
    _Bool r = _logos_orig$_ungrouped$FNProductMerchandiseListModel$modelCustomTransformFromDictionary$(self, _cmd, arg1);
    HBLogDebug(@" = %d", r);

    
    
    return r;
}























































































































































































static id _logos_meta_method$_ungrouped$FNTagTitleModel$modelWithtagTitle$andNormalTitleFont$andSelectedTitleFont$andNormalTitleColor$andSelectedTitleColor$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, id arg2, id arg3, id arg4, id arg5) {
    HBLogDebug(@"+[<FNTagTitleModel: %p> modelWithtagTitle:%@ andNormalTitleFont:%@ andSelectedTitleFont:%@ andNormalTitleColor:%@ andSelectedTitleColor:%@]", self, arg1, arg2, arg3, arg4, arg5);
    id r = _logos_meta_orig$_ungrouped$FNTagTitleModel$modelWithtagTitle$andNormalTitleFont$andSelectedTitleFont$andNormalTitleColor$andSelectedTitleColor$(self, _cmd, arg1, arg2, arg3, arg4, arg5);
    HBLogDebug(@" = %@", r);
    
    FNTagTitleModel * tmp = (FNTagTitleModel *)r;
    
    
    
    


    NSInteger count = [FNTagTitleModel bg_countWhere:@[@"tagTitle",@"=",[tmp tagTitle]]];
    
    if (count==0 && ![[tmp tagTitle] isEqualToString:@"爆款推荐"])
    {
        
        [tmp bg_saveOrUpdate];
        NSLog(@"保存---FNTagTitleModel");
    }
    else
    {
        NSLog(@"保存---FNTagTitleModel--已存在，不保存");

    }
    
    
    return r;
}














static void _logos_method$_ungrouped$FNDepartmentViewModel$requestMerchandiseListDataWithCompletion$(_LOGOS_SELF_TYPE_NORMAL FNDepartmentViewModel* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    HBLogDebug(@"-[<FNDepartmentViewModel: %p> requestMerchandiseListDataWithCompletion:%@]", self, arg1);
    _logos_orig$_ungrouped$FNDepartmentViewModel$requestMerchandiseListDataWithCompletion$(self, _cmd, arg1);
    
    
    NSMutableArray * subClassifiedDataArray = [self subClassifiedDataArray];
    
    for (id tmp in subClassifiedDataArray)
    {
        if ([tmp isKindOfClass:[_logos_static_class_lookup$FNDepartmentElementModel() class]])
        {
            NSLog(@"判断--FNDepartmentElementModel--是--1");
            
            [FNDepartmentElementModel SaveByUniquePropertyWithObject:tmp];
            
            







            
            
            NSString * logout = [NSString stringWithFormat:@"判断--FNDepartmentElementModel--是--(cname=%@;  departmentId=%@; pid=%@; cateid=%@;  classifiedId=%@; order=%@; )",[tmp cname],[tmp departmentId],[tmp pid],[tmp cateid],[tmp classifiedId],[tmp order]];
            
            
            NSLog(@"%@",logout);

        }
        else
        {
            NSLog(@"判断--FNDepartmentElementModel--不是");

        }
    }
    
    return;
    
    NSIndexPath * theIndexPath = [self selectSubClassifiedIndexPath];
    
    int tmpItem = [theIndexPath item];
    
    id theElementModel = [subClassifiedDataArray safeObjectAtIndex:tmpItem];
    
    
    if (theElementModel) {
        
    }
    
}









static void _logos_method$_ungrouped$FNDepartmentViewController$viewDidLoad(_LOGOS_SELF_TYPE_NORMAL FNDepartmentViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) { HBLogDebug(@"-[<FNDepartmentViewController: %p> viewDidLoad]", self); NSLog(@"开始执行 - (void)viewDidLoad"); _logos_orig$_ungrouped$FNDepartmentViewController$viewDidLoad(self, _cmd); NSLog(@"结束执行 - (void)viewDidLoad"); }

static void _logos_method$_ungrouped$FNDepartmentViewController$viewDidAppear$(_LOGOS_SELF_TYPE_NORMAL FNDepartmentViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, _Bool arg1) {
    
    HBLogDebug(@"-[<FNDepartmentViewController: %p> viewDidAppear:%d]", self, arg1);
    NSLog(@"开始执行 - (void)viewWillAppear:(_Bool)arg1");
    _logos_orig$_ungrouped$FNDepartmentViewController$viewDidAppear$(self, _cmd, arg1);
    NSLog(@"结束执行 - (void)viewWillAppear:(_Bool)arg1");
    
    
    
    
    if (refreshProductDetailInfoBtn==nil)
    {
        UIButton * btn = [[UIButton alloc] init];
        
        
        float thewidth = 180;
        btn.frame = CGRectMake(SCREEN_WIDTH-thewidth-10,20,thewidth,40);
        
        
        [btn addTarget:self action:@selector(refreshProductDetailInfoBtn_click:) forControlEvents:UIControlEventTouchUpInside];
        
        refreshProductDetailInfoBtn = btn;
        
        [btn setTitle:@"开始更新商品详情数据" forState:UIControlStateNormal];
        btn.backgroundColor = [UIColor redColor];
        
        [[self view] addSubview:btn];
        
        HBLogDebug(@"添加btn");
        
    }
    
}



static void _logos_method$_ungrouped$FNDepartmentViewController$refreshProductDetailInfoBtn_click$(_LOGOS_SELF_TYPE_NORMAL FNDepartmentViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UIButton * btn) {
    
    btn.hidden = YES;
    
    [ProgressHUD show];
    
    NSInteger count = [MyFNProductMerchandiseListModel bg_countWhere:nil];

    totalProduct = (int)count;
    
    int theRightCount = maxQueryCount>totalProduct?totalProduct:maxQueryCount;
    theLocal = 0;
    


    [self receiveProductIDArrayWithLocation:theLocal Count:theRightCount];

    
}





static void _logos_method$_ungrouped$FNDepartmentViewController$receiveProductIDArrayWithLocation$Count$(_LOGOS_SELF_TYPE_NORMAL FNDepartmentViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, int loca, int rcount) {
    [MyFNProductMerchandiseListModel bg_findAllAsyncWithRange:NSMakeRange(loca,rcount) orderBy:nil desc:NO complete:^(NSArray * _Nullable array) {
        
        NSLog(@"执行--PIDAWL--1--theLocal=%d; rCount=%d; totalProduct=%d",theLocal,rcount,totalProduct);

        
        
                
        if(!thePIDArray || [thePIDArray count]<=0)
        {
            NSMutableArray * theArray = [[NSMutableArray alloc] init];
            
            for(MyFNProductMerchandiseListModel * p in array){
                
                [theArray addObject:[p productID]];
            }
            
            NSLog(@"执行--PIDAWL--2");
            thePIDArray = theArray;

            if([thePIDArray count]>0)
            {
                [ProgressHUD show];

                NSLog(@"执行--PIDAWL--2.1--Array= %@",thePIDArray);

                NSLog(@"执行--PIDAWL--2.2--ArrayCount= %d",(int)[thePIDArray count]);
                
                
                
                theLocal = theLocal+(int)[thePIDArray count];
            }
            else
            {
                [ProgressHUD dismiss];
                NSLog(@"执行--PIDAWL--2.3--已无数据");

                
                [ProgressHUD showSuccess:@"已获取全部商品详情"];
                return;
            }
            
            
            
        }
        
        
        if(!thePIDArray || [thePIDArray count]<=0)
        {
            NSLog(@"执行--PIDAWL--3--theLocal=%d; totalProduct=%d",theLocal,totalProduct);
            
            
            
            if(theLocal<0 || theLocal >= totalProduct)
            {
                NSLog(@"执行--PIDAWL--4");
                
                
                return ;
            }
            else
            {
                NSLog(@"执行--PIDAWL--5");
                
                int theRightCount = maxQueryCount>totalProduct?totalProduct:maxQueryCount;
                
                


                [self receiveProductIDArrayWithLocation:theLocal Count:theRightCount];
                NSLog(@"执行--PIDAWL--6");
                return ;
                
            }
            NSLog(@"执行--PIDAWL--7");
            
            return ;
        }

        NSLog(@"执行--PIDAWL--8");
        

        [self gainNextProductDetailInfo];
        
        NSLog(@"执行--PIDAWL--11");
        
        
        
    }];
    
}



static void _logos_method$_ungrouped$FNDepartmentViewController$gainNextProductDetailInfo(_LOGOS_SELF_TYPE_NORMAL FNDepartmentViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    if(!thePIDArray || [thePIDArray count]<=0)
    {
        NSLog(@"执行--gPDI--1");
        
        
        if(theLocal > totalProduct)
        {
            [ProgressHUD dismiss];

            NSLog(@"执行--gPDI--2");
            
            [ProgressHUD showSuccess:@"已获取全部商品详情"];
            return ;
        }
        else
        {
            NSLog(@"执行--gPDI--3");
            
            int theRightCount = maxQueryCount>totalProduct?totalProduct:maxQueryCount;
            
            


            [self receiveProductIDArrayWithLocation:theLocal Count:theRightCount];
            NSLog(@"执行--gPDI--4");
            return ;
            
        }
        NSLog(@"执行--gPDI--5");
        
        return ;
    }
    
    NSString * thePID = [self gainThePID];
    
    if(thePID==nil)
    {
        
        [ProgressHUD dismiss];
        
        NSLog(@"执行--gPDI--6");
        
        [ProgressHUD showSuccess:@"已获取全部商品详情"];
        return;
    }
    
    NSLog(@"执行--gPDI--7");

    [ProgressHUD show];

    id pModel = [[_logos_static_class_lookup$FNProductDetailParameterModel() alloc] init];
    
    [pModel setProductId:thePID];
    
    id user = [_logos_static_class_lookup$FNUser() shareInstance];
    
    NSString * rtNo = [user rtNo];
    
    [pModel setStoreId:rtNo];
    
    void (^successBlock)(id response,BOOL result) = ^(id response,BOOL result){
        NSLog(@"获取详情成功--1");
        [ProgressHUD dismiss];

        if([response isKindOfClass:[_logos_static_class_lookup$FNProductDetailResponseModel() class]])
        {
            NSLog(@"获取详情成功--2");
            
            id pDetailModel = response;
            
            if(pDetailModel)
            {
                NSLog(@"获取详情成功--3");
                
                MyFNProductDetailModel * myPDetailModel = [[MyFNProductDetailModel alloc] initWithListModel:pDetailModel];
                NSLog(@"获取详情成功--4");
                
                [myPDetailModel bg_saveOrUpdate];
                NSLog(@"获取详情成功--保存[%@]成功",[myPDetailModel productId]);
                
            }
            NSLog(@"获取详情成功--5");
            
            
            
            
            
        }
        NSLog(@"获取详情成功--6");
        
        
        [self gainNextProductDetailInfo];
        
    };
    
    
    void (^failBlock)(id response,NSError * error) = ^(id response,NSError * error){
        [ProgressHUD dismiss];

        NSLog(@"获取详情失败，error=%@",error);
        [self gainNextProductDetailInfo];

    };
    
    
    NSLog(@"获取详情---1");
    
    [_logos_static_class_lookup$FNProductDetailService() requestProductDetailWithParameterModel:pModel success:successBlock failure:failBlock];
    NSLog(@"获取详情---2");
    NSLog(@"执行--gPDI--8");

    
}



static NSString * _logos_method$_ungrouped$FNDepartmentViewController$gainThePID(_LOGOS_SELF_TYPE_NORMAL FNDepartmentViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSLog(@"执行--gainThePID--1");
    
    if(!thePIDArray || [thePIDArray count]<=0)
    {
        NSLog(@"执行--gainThePID--2");

        
        
        if(theLocal >= totalProduct)
        {
            NSLog(@"执行--gainThePID--3");

            
            return nil;
        }
        else
        {
            NSLog(@"执行--gainThePID--4");

            int theRightCount = maxQueryCount>totalProduct?totalProduct:maxQueryCount;
            
            


            [self receiveProductIDArrayWithLocation:theLocal Count:theRightCount];
            NSLog(@"执行--gainThePID--5");
            return nil;

        }
        NSLog(@"执行--gainThePID--6");

        return nil;
    }
    
    NSLog(@"执行--gainThePID--7");

    NSString * thePID = [thePIDArray[0] mutableCopy];
    
    
    [thePIDArray removeObjectAtIndex:0];
    NSLog(@"执行--gainThePID--8");

    if([self existTheDetailInfoWithProductID:thePID])
    {
        NSLog(@"执行--gainThePID--9");

        
        if(!thePIDArray || [thePIDArray count]<=0)
        {
            NSLog(@"执行--gainThePID--10");
            
            
            
            if(theLocal >= totalProduct)
            {
                NSLog(@"执行--gainThePID--11");
                
                
                return nil;
            }
            else
            {
                NSLog(@"执行--gainThePID--12");
                
                int theRightCount = maxQueryCount>totalProduct?totalProduct:maxQueryCount;
                
                


                [self receiveProductIDArrayWithLocation:theLocal Count:theRightCount];
                NSLog(@"执行--gainThePID--13");
                return nil;
                
            }
            NSLog(@"执行--gainThePID--14");
            
            return nil;
        }

        else
        {
            NSLog(@"执行--gainThePID--15");

            
            
            return [self gainThePID];
            
        }
    }
    else
    {
        NSLog(@"执行--gainThePID--16");

        return thePID;
    }
    NSLog(@"执行--gainThePID--17");

    return nil;
    
}



static BOOL _logos_method$_ungrouped$FNDepartmentViewController$existTheDetailInfoWithProductID$(_LOGOS_SELF_TYPE_NORMAL FNDepartmentViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, NSString * pID) {
    NSInteger count = [MyFNProductDetailModel bg_countWhere:@[@"productId",@"=",pID]];
    
    if(count>0)
        return YES;
    return NO;

}







static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$FNProductMerchandiseListModel = objc_getClass("FNProductMerchandiseListModel"); MSHookMessageEx(_logos_class$_ungrouped$FNProductMerchandiseListModel, @selector(modelCustomTransformFromDictionary:), (IMP)&_logos_method$_ungrouped$FNProductMerchandiseListModel$modelCustomTransformFromDictionary$, (IMP*)&_logos_orig$_ungrouped$FNProductMerchandiseListModel$modelCustomTransformFromDictionary$);Class _logos_class$_ungrouped$FNTagTitleModel = objc_getClass("FNTagTitleModel"); Class _logos_metaclass$_ungrouped$FNTagTitleModel = object_getClass(_logos_class$_ungrouped$FNTagTitleModel); MSHookMessageEx(_logos_metaclass$_ungrouped$FNTagTitleModel, @selector(modelWithtagTitle:andNormalTitleFont:andSelectedTitleFont:andNormalTitleColor:andSelectedTitleColor:), (IMP)&_logos_meta_method$_ungrouped$FNTagTitleModel$modelWithtagTitle$andNormalTitleFont$andSelectedTitleFont$andNormalTitleColor$andSelectedTitleColor$, (IMP*)&_logos_meta_orig$_ungrouped$FNTagTitleModel$modelWithtagTitle$andNormalTitleFont$andSelectedTitleFont$andNormalTitleColor$andSelectedTitleColor$);Class _logos_class$_ungrouped$FNDepartmentViewModel = objc_getClass("FNDepartmentViewModel"); MSHookMessageEx(_logos_class$_ungrouped$FNDepartmentViewModel, @selector(requestMerchandiseListDataWithCompletion:), (IMP)&_logos_method$_ungrouped$FNDepartmentViewModel$requestMerchandiseListDataWithCompletion$, (IMP*)&_logos_orig$_ungrouped$FNDepartmentViewModel$requestMerchandiseListDataWithCompletion$);Class _logos_class$_ungrouped$FNDepartmentViewController = objc_getClass("FNDepartmentViewController"); MSHookMessageEx(_logos_class$_ungrouped$FNDepartmentViewController, @selector(viewDidLoad), (IMP)&_logos_method$_ungrouped$FNDepartmentViewController$viewDidLoad, (IMP*)&_logos_orig$_ungrouped$FNDepartmentViewController$viewDidLoad);MSHookMessageEx(_logos_class$_ungrouped$FNDepartmentViewController, @selector(viewDidAppear:), (IMP)&_logos_method$_ungrouped$FNDepartmentViewController$viewDidAppear$, (IMP*)&_logos_orig$_ungrouped$FNDepartmentViewController$viewDidAppear$);{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; memcpy(_typeEncoding + i, @encode(UIButton *), strlen(@encode(UIButton *))); i += strlen(@encode(UIButton *)); _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$FNDepartmentViewController, @selector(refreshProductDetailInfoBtn_click:), (IMP)&_logos_method$_ungrouped$FNDepartmentViewController$refreshProductDetailInfoBtn_click$, _typeEncoding); }{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = 'i'; i += 1; _typeEncoding[i] = 'i'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$FNDepartmentViewController, @selector(receiveProductIDArrayWithLocation:Count:), (IMP)&_logos_method$_ungrouped$FNDepartmentViewController$receiveProductIDArrayWithLocation$Count$, _typeEncoding); }{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$FNDepartmentViewController, @selector(gainNextProductDetailInfo), (IMP)&_logos_method$_ungrouped$FNDepartmentViewController$gainNextProductDetailInfo, _typeEncoding); }{ char _typeEncoding[1024]; unsigned int i = 0; memcpy(_typeEncoding + i, @encode(NSString *), strlen(@encode(NSString *))); i += strlen(@encode(NSString *)); _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$FNDepartmentViewController, @selector(gainThePID), (IMP)&_logos_method$_ungrouped$FNDepartmentViewController$gainThePID, _typeEncoding); }{ char _typeEncoding[1024]; unsigned int i = 0; memcpy(_typeEncoding + i, @encode(BOOL), strlen(@encode(BOOL))); i += strlen(@encode(BOOL)); _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; memcpy(_typeEncoding + i, @encode(NSString *), strlen(@encode(NSString *))); i += strlen(@encode(NSString *)); _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$FNDepartmentViewController, @selector(existTheDetailInfoWithProductID:), (IMP)&_logos_method$_ungrouped$FNDepartmentViewController$existTheDetailInfoWithProductID$, _typeEncoding); }} }
#line 783 "/Users/king/Desktop/2017工作/快手/测试app/大润发/DaRunFa/DaRunFa/DaRunFa.xm"
