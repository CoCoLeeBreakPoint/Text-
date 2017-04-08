//
//  ViewController.m
//  Text输入条件限制
//
//  Created by cocolee on 2017/4/8.
//  Copyright © 2017年 cocolee. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITextFieldDelegate>
@property(nonatomic,strong)UITextField * ShowText;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
        [self ShowText];
    // Do any additional setup after loading the view, typically from a nib.
}
-(UITextField*)ShowText{
    if (!_ShowText) {
        _ShowText = [[UITextField alloc]initWithFrame:CGRectMake(10, 64, self.view.frame.size.width -20, 40)];
        _ShowText.backgroundColor =[UIColor yellowColor];
        _ShowText.clearButtonMode = YES;
        _ShowText.delegate = self;
        [self.view addSubview:_ShowText];
    }
    return _ShowText;
}

//键盘控制输入方法
-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    /*  禁止输入空格的方式一
     
     if (_ShowText == textField) //申明归属
     {
     if ([@" " rangeOfString:string].location != NSNotFound)
     {
     return NO;
     }
     else
     {
     return YES;
     }
     }
     return YES;
     
     */
    
    
    /*  禁止输入空格的方式二
     
     
     NSCharacterSet *CharSet =[NSCharacterSet characterSetWithCharactersInString:@" "];
     NSString *FileString =[[string componentsSeparatedByCharactersInSet:CharSet] componentsJoinedByString:@""];
     if ([string isEqualToString:FileString]) {
     return YES;
     }
     return NO;
     
     */
    
    /*  禁止输入数字
     NSCharacterSet *Charset =[NSCharacterSet characterSetWithCharactersInString:@"0123456789"];
     NSString *fileStr =[[string componentsSeparatedByCharactersInSet:Charset]componentsJoinedByString:@""];
     if ([string isEqualToString:fileStr]) {
     return YES;
     }
     return NO;
     
     */
    
    /*  只允许输入数字
     NSCharacterSet *Charset =[[NSCharacterSet characterSetWithCharactersInString:@"0123456789"]invertedSet];
     NSString *fileStr =[[string componentsSeparatedByCharactersInSet:Charset]componentsJoinedByString:@""];
     if ([string isEqualToString:fileStr]) {
     return YES;
     }
     return NO;
     */
    return YES;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
