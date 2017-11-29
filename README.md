# darunfaelufa


## 功能介绍

本项目的主要功能是采集“大润发e路发”APP中的商品数据

代码仅供学习交流，谢绝其他非法用途，感谢您 帮忙在右上角 点个“⭐️”，非常感谢

APP与服务器使用HTTPS协议加密数据，起初尝试HTTPS抓包，失败。

数据传输过程中加密，但在APP内部必然要解密之后使用，于是决定在APP内部完成数据采集。


## 开发和使用环境

开发环境：TheOS + iOSOpenDev + Xcode

分析工具：静态分析用Hopper，动态分析用lldb和debugserver

使用环境：越狱的苹果手机或iPad

开发语言：OC

APP版本：1.0.8

## 采集的数据模型

商品分类有两级分类：

一级分类对应的类：FNTagTitleModel

二级分类对应的类：FNDepartmentElementModel

商品信息对应的类：FNProductMerchandiseListModel

## 主要代码

- 保存一级目录的主要代码：

```
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

```



- 保存二级目录的主要代码：
```
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
```

- 保存商品信息的主要代码：
```
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
```

## 结语

- 代码仅供学习交流，谢绝其他非法用途，感谢您 帮忙在右上角 点个“⭐️”，非常感谢

- iOS逆向开发基本流程：

  1.使用 dumpdecrypted 对目标APP砸壳 [教程](http://bbs.iosre.com/t/dumpdecrypted-app/22)

  2.使用 class-dump 导出APP的头文件，方便查找APP中定义的类和类的属性

  3.使用 Hopper 做静态分析，从Hopper中的汇编代码可大体看出OC代码逻辑

  4.使用 lldb 和 debugserver 做动态调试，分析具体数据和代码逻辑

  5.使用 Logify.pl 来跟踪函数的调用，以及获取调用的参数 [教程](http://www.blogfshare.com/ioss-theos-logify.html)

  6.交替使用3、4、5步，逐步完成分析，根据分析内容，编写tweak。


- 当前项目中使用的他人库：

  1.[BGFMDB](https://github.com/huangzhibiao/BGFMDB)是一个封装了FMDB的库，不需要写sql语句就可完成数据的增删改查，我个人感觉很好用



  2.[ProgressHUD](https://github.com/relatedcode/ProgressHUD)进度提示控件，简单好用
