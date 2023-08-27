//
//  ChainableAttributedBuilder.h
//  链式编程
//
//  Created by 刘艳芹 on 2023/6/16.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ChainableAttributedBuilder : NSObject

@property (nonatomic, strong, readonly) NSMutableAttributedString *mutableAttributedString;

- (ChainableAttributedBuilder *(^)(NSString *text))append;
- (ChainableAttributedBuilder *(^)(UIColor *color))textColor;
- (ChainableAttributedBuilder *(^)(UIFont *font))font;
- (ChainableAttributedBuilder *(^)(NSParagraphStyle *style))paragraphStyle;

@end

NS_ASSUME_NONNULL_END
