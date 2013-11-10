//
//  VIMathUtil.h
//  VIReuseCollectionDemo
//
//  Created by Vito on 13-11-10.
//  Copyright (c) 2013年 Vito. All rights reserved.
//

/**
 *  Judgment ios version
 */
#define SYSTEM_VERSION_IOS_6 (GD_DeviceSystemMajorVersion() >= 6)
#define SYSTEM_VERSION_IOS_7 (GD_DeviceSystemMajorVersion() >= 7)

#define IS_RETINA ([[UIScreen mainScreen] respondsToSelector:@selector(displayLinkWithTarget:selector:)] && ([UIScreen mainScreen].scale == 2.0))

#define isNull(o) ((NSNull *)o == [NSNull null] || !o || ((NSString *)o).length == 0 || [(NSString *)o isEqualToString:@"(null)"])
