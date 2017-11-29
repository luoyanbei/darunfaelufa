#import "FNTagTitleModel.h"
#import "FNDepartmentElementModel.h"
#import "FNProductMerchandiseListModel.h"
#import "MyFNProductMerchandiseListModel.h"
#import "FNProductDetailModel.h"
#import "MyFNProductDetailModel.h"
#import "ProgressHUD.h"

//更新商品详细信息按钮
UIButton * refreshProductDetailInfoBtn=nil;
//数据库最大查询结果条数
int maxQueryCount = 200;
//数据库最大查询结果条数的起始位置
int theLocal = 0;
//pid数组
NSMutableArray * thePIDArray=nil;
//产品总个数
int totalProduct = 0;





@class FNEmptyView,FNMoreListCategoryView,FNHotRecommendProductParameterModel,FNMaskView,FNHomeCategoryModel,FNMoreProductViewModel,FNScrollPageView,FNSecondCategoryScrollView,FNHomeCategoryModel,FNHomeCollectionViewFlowLayout,FNHomeCategoryNavigatorHeaderView,FNNavigationAccountUnusualPromptView,FNHomeViewModel,BackViewProtocol,FNProductListDropdownView,FNOrdinaryProductListViewModel,FNProListSortView,FNDepartmentSearchBar,FNDepartmentViewModel,NSLayoutConstraint,FNDepartmentViewModelDelegate,FNDepartmentService,FNDepartmentFirstClassifiedResponseModel;





//--------------------------------------------

//列表页，产品model
%hook FNProductMerchandiseListModel

- (_Bool)modelCustomTransformFromDictionary:(id)arg1 {
    %log;
    
    
    if(self)
    {
        NSLog(@"保存---FNDepartmentElementModel--1");

        MyFNProductMerchandiseListModel * tmp = [[MyFNProductMerchandiseListModel alloc] initWithListModel:self];
        NSLog(@"保存---FNDepartmentElementModel--2");

        
        //保存
        [tmp bg_saveOrUpdate];
        NSLog(@"保存---FNDepartmentElementModel--3");
    }
    
    _Bool r = %orig;
    HBLogDebug(@" = %d", r);

    
    
    return r;
}

%end







//-------------------------

%hook FNTagTitleModel
+ (id)modelWithtagTitle:(id)arg1 andNormalTitleFont:(id)arg2 andSelectedTitleFont:(id)arg3 andNormalTitleColor:(id)arg4 andSelectedTitleColor:(id)arg5
{
    %log;
    id r = %orig;
    HBLogDebug(@" = %@", r);
    
    FNTagTitleModel * tmp = (FNTagTitleModel *)r;
    
    
    //
    /**
     查询People类中age>=21,name=@"马哥"的数据条数.
     */
    NSInteger count = [FNTagTitleModel bg_countWhere:@[@"tagTitle",@"=",[tmp tagTitle]]];
    
    if (count==0 && ![[tmp tagTitle] isEqualToString:@"爆款推荐"])
    {
        //保存
        [tmp bg_saveOrUpdate];
        NSLog(@"保存---FNTagTitleModel");
    }
    else
    {
        NSLog(@"保存---FNTagTitleModel--已存在，不保存");

    }
    
    
    return r;
}


%end






%hook FNDepartmentViewModel



- (void)requestMerchandiseListDataWithCompletion:(id)arg1
{
    %log;
    %orig;
    
    //保存
    NSMutableArray * subClassifiedDataArray = [self subClassifiedDataArray];
    
    for (id tmp in subClassifiedDataArray)
    {
        if ([tmp isKindOfClass:[%c(FNDepartmentElementModel) class]])
        {
            NSLog(@"判断--FNDepartmentElementModel--是--1");
            //保存
            [FNDepartmentElementModel SaveByUniquePropertyWithObject:tmp];
            
            /*
             NSString *_classifiedId;
             NSString *_departmentId;
             NSString *_pid;
             NSString *_cateid;
             NSString *_cname;
             NSString *_order;
             */
            
            
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
    // = <NSIndexPath: 0xc000000000000016> {length = 2, path = 0 - 1}
    int tmpItem = [theIndexPath item];
    // = 1
    id theElementModel = [subClassifiedDataArray safeObjectAtIndex:tmpItem];
    // = <FNDepartmentElementModel: 0x1702d7bc0>
    
    if (theElementModel) {
        
    }
    
}

%end









