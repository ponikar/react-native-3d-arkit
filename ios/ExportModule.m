//
//  ExportModule.m
//  ARModal
//
//  Created by Ponikar Darshan janardan on 22/02/23.
//

#import <Foundation/Foundation.h>

#import "React/RCTBridgeModule.h"
#import "React/RCTViewManager.h"


@interface RCT_EXTERN_MODULE(CubeManager, RCTViewManager)
  RCT_EXPORT_VIEW_PROPERTY(x, CGFloat)
  RCT_EXPORT_VIEW_PROPERTY(y, CGFloat)
  RCT_EXPORT_VIEW_PROPERTY(z, CGFloat)
  RCT_EXPORT_VIEW_PROPERTY(rotateX, CGFloat)
  RCT_EXPORT_VIEW_PROPERTY(rotateY, CGFloat)
  RCT_EXPORT_VIEW_PROPERTY(rotateZ, CGFloat)
  RCT_EXPORT_VIEW_PROPERTY(width, CGFloat)
  RCT_EXPORT_VIEW_PROPERTY(height, CGFloat)
  RCT_EXPORT_VIEW_PROPERTY(rotateDuration, CDouble)
  RCT_EXPORT_VIEW_PROPERTY(inifiniteRotation, CBool)
@end

@interface RCT_EXTERN_MODULE(CameraManager, RCTViewManager)
@end

@interface RCT_EXTERN_MODULE(SceneManager, RCTViewManager)
@end

