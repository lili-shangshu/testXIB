//
//  ViewController.m
//  testXIB
//
//  Created by Star on 2017/11/13.
//  Copyright © 2017年 Pty Ltd. All rights reserved.
//

#import "ViewController.h"

#import "EBBannerView.h"


@interface ViewController ()

@property(nonatomic,strong)NSTimer *timer;


@property (weak, nonatomic) IBOutlet UILabel *showlable;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];


//    NSDateFormatter *fam = [[NSDateFormatter alloc]init];
//    [fam setDateFormat:@"EEEE,dd"];
//    NSString *string1 = [fam stringFromDate:[NSDate date]];
//    NSLog(@"%@",string);
//    [fam setDateFormat:@"MMMM"];
//     NSString *string = [fam stringFromDate:[NSDate date]];
//    NSLog(@"%@",string);
    
   
    // Do any additional setup after loading the view, typically from a nib.
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
   [EBBannerView showWithContent:@"custom content"];
}

- (IBAction)buttonVlivk:(UIButton *)sender {
    
    NSString *goodStr = @"[色][发呆][发怒]";
    const char *jsonString = [goodStr UTF8String];
    
    NSData *jsonData = [NSData dataWithBytes:jsonString length:strlen(jsonString)];
    NSString *goodMsg1 = [[NSString alloc] initWithData:jsonData encoding:NSNonLossyASCIIStringEncoding];
    
    self.showlable.text = goodMsg1;
}


- (void)update{
    NSLog(@"将");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
