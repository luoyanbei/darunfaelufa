# darunfaelufa


----------------------------------------------------

代码仅供学习交流，感谢您 帮忙在右上角 点个“⭐️”，非常非常感谢

----------------------------------------------------

本项目的主要功能是采集“大润发e路发”APP中的商品数据

----------------------------------------------------

APP与服务器使用HTTPS协议加密数据，起初尝试HTTPS抓包，失败。
数据传输过程中加密，但在APP内部必然要解密之后使用，于是决定在APP内部完成数据采集。

----------------------------------------------------

开发环境：TheOS+iOSOpenDev+Xcode
使用环境：越狱的苹果手机或iPad
开发语言：OC

----------------------------------------------------

商品分类有两级目录：
一级目录对应的类：FNTagTitleModel
二级目录对应的类：FNDepartmentElementModel
商品信息对应的类：FNProductMerchandiseListModel

----------------------------------------------------
保存一级目录的主要代码：
%hook FNTagTitleModel
+ (id)modelWithtagTitle:(id)arg1 andNormalTitleFont:(id)arg2 andSelectedTitleFont:(id)arg3 andNormalTitleColor:(id)arg4 andSelectedTitleColor:(id)arg5
{
    %log;
    id r = %orig;
    HBLogDebug(@" = %@", r);
    
    FNTagTitleModel * tmp = (FNTagTitleModel *)r;
    
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

----------------------------------------------------
保存二级目录的主要代码：
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
            
            NSString * logout = [NSString stringWithFormat:@"判断--FNDepartmentElementModel--是--(cname=%@;  departmentId=%@; pid=%@; cateid=%@;  classifiedId=%@; order=%@; )",[tmp cname],[tmp departmentId],[tmp pid],[tmp cateid],[tmp classifiedId],[tmp order]];
            
            NSLog(@"%@",logout);
        }
        else
        {
            NSLog(@"判断--FNDepartmentElementModel--不是");
        }
    }
    
    return;
}

%end

----------------------------------------------------
保存商品信息的主要代码：
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

----------------------------------------------------

代码仅供学习交流，感谢您 帮忙在右上角 点个“⭐️”，非常非常感谢

当前项目中使用的他人库：
1.BGFMDB是一个封装了FMDB的库，不需要写sql语句就可完成数据的增删改查，我个人感觉很好用
https://github.com/huangzhibiao/BGFMDB
2.进度提示控件ProgressHUD，简单好用
https://github.com/relatedcode/ProgressHUD



