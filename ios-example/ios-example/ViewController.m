//
//  ViewController.m
//  ios-example
//
//  Created by xiejunyi on 2020/3/24.
//  Copyright © 2020 xiejunyi. All rights reserved.
//

#import "ViewController.h"
#import "dobby.h"

void test_symbol(int a, int b) {
    if (a > b) {
        a = a - 1;
    } else {
        b = b - 1;
    }
}

void (*origin_test_symbol)(int a, int b);

void fake_test_symbol(int a, int b) {
    printf("execute fake_test_symbol\n");
    origin_test_symbol(a,b);
}

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    void (*find_result)(void);
    find_result = DobbyFindSymbol("ios-example", "_test_symbol");
    
    DobbyHook((void *)find_result, (void *)fake_test_symbol, (void **)&origin_test_symbol);
    test_symbol(1,2);
    
    // Do any additional setup after loading the view.
}


@end
