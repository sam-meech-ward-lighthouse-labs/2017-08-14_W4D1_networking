//
//  SolarFlare.h
//  Eclipse
//
//  Created by Sam Meech-Ward on 2017-08-21.
//  Copyright © 2017 Sam Meech-Ward. All rights reserved.
//

@import UIKit;

NS_ASSUME_NONNULL_BEGIN

@interface SolarFlare : NSObject

@property (nonatomic, copy) NSString *gamaRay;

@property (nonatomic, strong) UIColor *color;

@property (nonatomic, assign) CGSize size;

@property (nonatomic, strong, nullable) NSString *duration;

@property (nonatomic, strong) NSArray<NSString *> *flares;

@end

NS_ASSUME_NONNULL_END
