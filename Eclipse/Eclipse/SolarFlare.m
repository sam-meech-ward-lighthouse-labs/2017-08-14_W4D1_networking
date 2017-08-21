//
//  SolarFlare.m
//  Eclipse
//
//  Created by Sam Meech-Ward on 2017-08-21.
//  Copyright © 2017 Sam Meech-Ward. All rights reserved.
//

#import "SolarFlare.h"

@implementation SolarFlare

- (instancetype)init
{
    self = [super init];
    if (self) {
        _color = [UIColor magentaColor];
        _gamaRay = @"🤗";
        
        _flares = @[@"",@1, [[SolarFlare alloc] init]];
    }
    return self;
}

@end
