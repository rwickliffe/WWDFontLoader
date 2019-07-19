//
//  WWDFontLoader.h
//
//  Created by Russell Wickliffe on 7/1/19.
//  Copyright © 2019 Wyldwood, LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface WWDFontLoader : NSObject

+ (void)loadFontNamed:(nullable NSString *)fontName
        withExtension:(nullable NSString *)extension
      inBundleWithURL:(NSURL *)bundleURL;

+ (void)loadFontWithData:(nullable NSData *)fontData;

@end

NS_ASSUME_NONNULL_END
