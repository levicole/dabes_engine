#import <Cocoa/Cocoa.h>
#import "engine.h"

@interface SDKEngineView : NSOpenGLView

@property (nonatomic, assign) Engine *engine;

- (id)initWithFrame:(NSRect)frameRect
        pixelFormat:(NSOpenGLPixelFormat *)format
         touchInput:(Input *)touchInput;
  - (void)update;

@end
