//
//  DZNWebBookmark.m
//  Pods
//
//  Created by test on 4/28/17.
//
//

#import "DZNWebBookmark.h"

@implementation DZNWebBookmark

- (id)initWithCoder:(NSCoder *)coder
{
	self = [super init];
	if (self)
	{
		self.name = [coder decodeObjectForKey:@"b_name"];
		self.url = [coder decodeObjectForKey:@"b_url"];
	}
	return self;
}

- (void)encodeWithCoder:(NSCoder*)coder
{
	[coder encodeObject:self.name forKey:@"b_name"];
	[coder encodeObject:self.url forKey:@"b_url"];
}

@end
