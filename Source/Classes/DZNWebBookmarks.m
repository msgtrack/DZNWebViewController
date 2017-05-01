//
//  DZNWebBookmarks.m
//  Pods
//

#import "DZNWebBookmarks.h"
#import "DZNWebBookmark.h"

@interface DZNWebBookmarks ()

@property (nonatomic, strong) NSMutableArray<DZNWebBookmark *> *bookmarks;

@end

@implementation DZNWebBookmarks

-(void)loadBookmarks
{
	if( self.bookmarks == 0 )
	{
		id saved = [[NSUserDefaults standardUserDefaults] objectForKey:@"WebBookmarks"];

		if( (saved != 0) && ([saved isKindOfClass:[NSMutableArray class]]))
		{
			self.bookmarks = saved;
		}
		else
		{
			self.bookmarks = [[NSMutableArray<DZNWebBookmark*> alloc] init];
		}
	}
	
}

-(void)addBookmark:(NSString*)name url:(NSString*)url
{
	[self loadBookmarks];
	
	DZNWebBookmark *bookmark = [[DZNWebBookmark alloc] init];
	bookmark.name = name;
	bookmark.url = url;
	
	[self.bookmarks addObject:bookmark];
	[[NSUserDefaults standardUserDefaults] setObject:self.bookmarks forKey:@"WebBookmarks"]; // privacy concerns?
	
}


@end
