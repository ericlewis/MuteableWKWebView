//
//  MuteableWKWebView.m
//  MuteableWKWebView
//
//  Created by Hori,Masaki on 2017/05/21.
//  Copyright © 2017年 Hori,Masaki. All rights reserved.
//

#import "MuteableWKWebView.h"
#import "MuteableWKWebViewPrivate.h"

#import <objc/runtime.h>


static const char *mutekey = "HMMuteKey";

@interface WKWebView (HMMuteExtensionPrivate)

@property _WKMediaMutedState mute;

@end

@implementation WKWebView (HMMuteExtension)

- (BOOL)isMuted {
    
    return self.mute != _WKMediaNoneMuted;
}

- (void)setMuted:(BOOL)isMuted {
    
    self.mute = isMuted ? _WKMediaAudioMuted : _WKMediaNoneMuted;
}

- (void)setMute:(_WKMediaMutedState)mute {
    
    objc_setAssociatedObject(self, mutekey, [NSNumber numberWithInteger:mute], OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    
    [self _setPageMuted:mute];
}

- (_WKMediaMutedState)mute {
    NSNumber *muteVal = objc_getAssociatedObject(self, mutekey);
    return muteVal.integerValue;
}

@end
