//
//  ScanQRCodeViewController.m
//  OnChain.IO
//
//  Created by Cool on 1/26/15.
//  Copyright (c) 2015 IT. All rights reserved.
//

#import "ScanQRCodeViewController.h"
#import <CoreBitcoin/CoreBitcoin.h>

@interface ScanQRCodeViewController ()

- (IBAction)onQRScan:(id)sender;
@end

@implementation ScanQRCodeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)onQRScan:(id)sender {
    UIView * view =  [BTCQRCode scannerViewWithBlock:^(NSString *message) {
        NSLog(@"QR ====> %@", message);
        
    }];
    [self.view addSubview:view];
}
@end
