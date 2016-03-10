#import <Foundation/Foundation.h>

@interface GildedRose : NSObject

@property (nonatomic, readonly) NSArray *items;

- (id)initWith:(NSArray *)items;

- (void)updateQuality;

@end
