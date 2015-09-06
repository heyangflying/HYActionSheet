# HYActionSheet

同步ActionSheet



![image](https://github.com/hy285585804/HYActionSheet/blob/master/ActionSheet.gif)





 /** 创建*/
 
 
 
    HYActionSheet * actionSheet = [[HYActionSheet alloc] init];
    
    NSArray *items = @[@"相机", @"手机相册", @"QQ空间相册", @"取消"];
    
    actionSheet.titles = items;
    
    actionSheet.destructiveButtonIndex = 3;
    
    actionSheet.cancelButtonIndex = 3;




    /** HYActionSheet 抛弃传统协议传值方式同步得到选中的值*/
  
    
    
    
    NSLog(@"当前选中按钮: -> %@", items[[actionSheet showInView:self.view]]);
    
    
    
    
