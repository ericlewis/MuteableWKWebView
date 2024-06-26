//
//  MuteableWKWebViewPrivate.h
//  MuteableWKWebView
//
//  Created by Hori,Masaki on 2018/02/15.
//  Copyright © 2018年 Hori,Masaki. All rights reserved.
//

#ifndef MuteableWKWebViewPrivate_h
#define MuteableWKWebViewPrivate_h


typedef NS_OPTIONS(NSInteger, _WKMediaMutedState) {
    _WKMediaNoneMuted = 0,
    _WKMediaAudioMuted = 1 << 0,
    _WKMediaCaptureDevicesMuted = 1 << 1,
};

@interface WKWebView (HMMuteExtension)
- (void)_setPageMuted:(_WKMediaMutedState)mutedState;
@end

@interface WKWebView (MWKPlayingAudio)
- (BOOL)_isPlayingAudio;
@end

#endif /* MuteableWKWebViewPrivate_h */
