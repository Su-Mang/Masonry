//
//  ResignViewController.h
//  Te1
//
//  Created by 岳靖翔 on 2019/9/15.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import "ViewController.h"
@protocol PassDelegate <NSObject>
-(void)put:(NSString*)str1and:(NSString*)str2;
NS_ASSUME_NONNULL_BEGIN
@end
@interface ResignViewController : ViewController
@property(nonatomic,assign)id<PassDelegate> delegate;
@end

NS_ASSUME_NONNULL_END
