
[![License](https://img.shields.io/github/license/masakih/WKWebKitMuteExt.svg)](https://github.com/masakih/WKWebKitMuteExt/blob/master/LICENSE)

# MuteableWKWebView (SwiftPM)

Mute per WKWebView like Safari.

----
# How to use

Load this project with SwiftPM.

```Swift
import MuteableWKWebView
```

MuteableWKWebView append mute property into WKWebView.

Usage:
```Swift

// Mute
webView.muted = true

// Unmute
webView.muted = false

// Check is playing audio
webView.isPlayingAudio()
```
