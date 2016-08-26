//
//  ViewController.m
//  毛玻璃
//
//  Created by 窦心东 on 16/8/26.
//  Copyright © 2016年 窦心东. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){

    //声明一个毛玻璃视觉管理类
    UIVisualEffectView *_effectView;
    
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:self.view.frame];
    imageView.image = [UIImage imageNamed:@"9922720e0cf3d7ca021ac950f71fbe096b63a92c.jpg"];
    [self.view addSubview:imageView];
    UISlider *slider = [[UISlider alloc] initWithFrame:CGRectMake(20, self.view.frame.size.height-50, 280, 30)];
    [slider addTarget:self action:@selector(slider:) forControlEvents:UIControlEventValueChanged];
    slider.minimumValue= 0;
    slider.maximumValue= 100;
    [self.view addSubview:slider];
    //进行毛玻璃初始化
    _effectView = [[UIVisualEffectView alloc] initWithEffect:[UIBlurEffect effectWithStyle:UIBlurEffectStyleDark]];
    /*
     UIBlurEffectStyleExtraLight,
     UIBlurEffectStyleLight,
     UIBlurEffectStyleDark
     */
    _effectView.frame= imageView.frame;
    _effectView.alpha = 0;
    [imageView addSubview:_effectView];
}
- (void)slider:(UISlider*)slider{
    float value = slider.value;
    float tip = value/100;
    _effectView.alpha = tip;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
