#import "GildedRose.h"
#import "Item.h"

@implementation GildedRose

@synthesize items = _items;

- (id)initWith:(NSArray *)items {
    if (self = [super init]) {
        _items = items;
    }
    return self;
}

- (void)updateQuality {

    for (int i = 0; i < [self.items count]; i++) {
        if (![[self.items[i] name] isEqualToString:@"Aged Brie"] && ![[self.items[i] name] isEqualToString:@"Backstage passes to a TAFKAL80ETC concert"]) {
            if ([self.items[i] quality] > 0) {
                if (![[self.items[i] name] isEqualToString:@"Sulfuras, Hand of Ragnaros"]) {
                    [self.items[i] setQuality:[self.items[i] quality] - 1];
                }
            }
        }
        else {
            if ([self.items[i] quality] < 50) {
                [self.items[i] setQuality:[self.items[i] quality] + 1];
                if ([[self.items[i] name] isEqualToString:@"Backstage passes to a TAFKAL80ETC concert"]) {
                    if ([self.items[i] sellIn] < 11) {
                        if ([self.items[i] quality] < 50) {
                            [self.items[i] setQuality:[self.items[i] quality] + 1];
                        }
                    }
                    if ([self.items[i] sellIn] < 6) {
                        if ([self.items[i] quality] < 50) {
                            [self.items[i] setQuality:[self.items[i] quality] + 1];
                        }
                    }
                }
            }
        }
        if (![[self.items[i] name] isEqualToString:@"Sulfuras, Hand of Ragnaros"]) {
            [self.items[i] setSellIn:[self.items[i] sellIn] - 1];
        }
        if ([self.items[i] sellIn] < 0) {
            if (![[self.items[i] name] isEqualToString:@"Aged Brie"]) {
                if (![[self.items[i] name] isEqualToString:@"Backstage passes to a TAFKAL80ETC concert"]) {
                    if ([self.items[i] quality] > 0) {
                        if (![[self.items[i] name] isEqualToString:@"Sulfuras, Hand of Ragnaros"]) {
                            [self.items[i] setQuality:[self.items[i] quality] - 1];
                        }
                    }
                }
                else {
                    [self.items[i] setQuality:[self.items[i] quality] - [self.items[i] quality]];
                }
            }
            else {
                if ([self.items[i] quality] < 50) {
                    [self.items[i] setQuality:[self.items[i] quality] + 1];
                }
            }
        }
    }

}

@end
