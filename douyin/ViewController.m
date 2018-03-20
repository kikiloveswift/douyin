//
//  ViewController.m
//  douyin
//
//  Created by kong on 2018/3/20.
//  Copyright © 2018年 kong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    int res = getAllWays2(10);
    int res1 = getAllWays(10);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

int getAllWays(int n)
{
    if (n <= 2)
    {
        return n;
    }
    if (n == 3)
    {
        return 4;
    }
    int a = 1;
    int b = 2;
    int c = 4;
    int temp = 0;
    for (int i = 4; i <= n; i++)
    {
        temp = a + b + c;
        a = b;
        b = c;
        c = temp;
    }
    return temp;
}

int getAllWays2(int n)
{
    if (n <= 2)
    {
        return n;
    }
    if (n == 3)
    {
        return 4;
    }
    return getAllWays2(n-1) + getAllWays2(n-2) + getAllWays2(n-3);
}


@end
