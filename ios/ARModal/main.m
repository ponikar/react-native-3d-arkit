#import <UIKit/UIKit.h>

#import "AppDelegate.h"
#import "experiment.h"

int main(int argc, char *argv[])
{
  
  @autoreleasepool {
    runJS();
    return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
  }
}
