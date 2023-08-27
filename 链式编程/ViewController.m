//
//  ViewController.m
//  链式编程
//
//  Created by 刘艳芹 on 2023/6/16.
//

#import "ViewController.h"
#import "ChainableAttributedBuilder.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    ChainableAttributedBuilder *builder = [[ChainableAttributedBuilder alloc] init];
    builder.append(@"Hello ").font([UIFont systemFontOfSize:16]).textColor([UIColor redColor]);
    builder.append(@"world!").font([UIFont systemFontOfSize:20]).textColor([UIColor blueColor]);

    NSAttributedString *attributedString = builder.mutableAttributedString;
    // 现在，attributedString 是一个带有不同样式的 "Hello world!" 的富文本字符串。

}


@end
