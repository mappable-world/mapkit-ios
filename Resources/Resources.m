#import <resource_bundle_accessor.h>

@interface MappableMobileSwiftResources : NSObject
@end

@implementation MappableMobileSwiftResources

+ (NSBundle *)mapkitResourcesBundle
{
    return SWIFTPM_MODULE_BUNDLE;
}

@end
