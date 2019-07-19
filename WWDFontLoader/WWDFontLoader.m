//
//  WWDFontLoader.m
//
//  Created by Russell Wickliffe on 7/1/19.
//  Copyright © 2019 Wyldwood, LLC. All rights reserved.
//

#import "WWDFontLoader.h"

#import <CoreText/CoreText.h>

@implementation WWDFontLoader

+ (void)loadFontNamed:(NSString *)fontName
        withExtension:(NSString *)extension
      inBundleWithURL:(NSURL *)bundleURL
{
    NSURL *fontURL = [NSBundle URLForResource:fontName withExtension:extension subdirectory:nil inBundleWithURL:bundleURL];
    NSData *fontData = [NSData dataWithContentsOfURL:fontURL];
    
    [self loadFontWithData:fontData];
}

+ (void)loadFontWithData:(NSData *)fontData
{
    CFErrorRef error;
    CGDataProviderRef provider = CGDataProviderCreateWithCFData((CFDataRef)fontData);
    CGFontRef font = CGFontCreateWithDataProvider(provider);
    
    if (!CTFontManagerRegisterGraphicsFont(font, &error)) {
        CFStringRef errorDescription = CFErrorCopyDescription(error);
        NSLog(@"Failed to load font: %@", errorDescription);
        CFRelease(errorDescription);
    }
    CGFontRelease(font);
    CGDataProviderRelease(provider);
}

@end
