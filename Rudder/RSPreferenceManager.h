//
//  RSPreferenceManager.h
//  Pods-DummyTestProject
//
//  Created by Arnab Pal on 27/01/20.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface RSPreferenceManager : NSObject

extern NSString *const RSPrefsKey;
extern NSString *const RSServerConfigKey;
extern NSString *const RSServerLastUpdatedKey;
extern NSString *const RSTraitsKey;
extern NSString *const RSApplicationInfoKey;
extern NSString *const RSExternalIdKey;
extern NSString *const RSOptStatus;

+ (instancetype) getInstance;

- (void) updateLastUpdatedTime: (long) updatedTime;
- (long) getLastUpdatedTime;

- (void) saveConfigJson: (NSString* __nonnull) configJson;
- (NSString* __nullable) getConfigJson;

- (void) saveTraits: (NSString* __nonnull) traits;
- (NSString* __nonnull) getTraits;

- (NSString* __nullable) getBuildVersionCode;
- (void) saveBuildVersionCode: (NSString* __nonnull) versionCode;

- (NSString* __nullable) getExternalIds;
- (void) saveExternalIds: (NSString* __nonnull) externalIdsJson;
- (void) clearExternalIds;

- (NSString* __nullable) getAnonymousId;
- (void) saveAnonymousId: (NSString* __nullable) anonymousId;
- (void) saveAnonymousIdOnce:(NSString * __nullable)anonymousId;
- (void) clearAnonymousId;

- (BOOL) getOptStatus;
- (void) saveOptStatus: (BOOL) optStatus;

@end

NS_ASSUME_NONNULL_END
