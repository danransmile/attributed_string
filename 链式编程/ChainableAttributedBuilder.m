//
//  ChainableAttributedBuilder.m
//  链式编程
//
//  Created by 刘艳芹 on 2023/6/16.
//

#import "ChainableAttributedBuilder.h"

@implementation ChainableAttributedBuilder

- (instancetype)init {
    if (self = [super init]) {
        _mutableAttributedString = [[NSMutableAttributedString alloc] init];
    }
    return self;
}

- (ChainableAttributedBuilder *(^)(NSString *text))append {
    return ^(NSString *text) {
        NSAttributedString *attributedString = [[NSAttributedString alloc] initWithString:text];
        [self.mutableAttributedString appendAttributedString:attributedString];
        return self;
    };
}

- (ChainableAttributedBuilder *(^)(UIColor *color))textColor {
    return ^(UIColor *color) {
        [self.mutableAttributedString addAttribute:NSForegroundColorAttributeName value:color range:NSMakeRange(0, self.mutableAttributedString.length)];
        return self;
    };
}

- (ChainableAttributedBuilder *(^)(UIFont *font))font {
    return ^(UIFont *font) {
        [self.mutableAttributedString addAttribute:NSFontAttributeName value:font range:NSMakeRange(0, self.mutableAttributedString.length)];
        return self;
    };
}

- (ChainableAttributedBuilder *(^)(NSParagraphStyle *style))paragraphStyle {
    return ^(NSParagraphStyle *style) {
        [self.mutableAttributedString addAttribute:NSParagraphStyleAttributeName value:style range:NSMakeRange(0, self.mutableAttributedString.length)];
        return self;
    };
}

@end
