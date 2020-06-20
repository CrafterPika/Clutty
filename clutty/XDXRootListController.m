#include "XDXRootListController.h"

@implementation XDXRootListController

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [self loadSpecifiersFromPlistName:@"Root" target:self];
	}

	return _specifiers;
}

-(void)FollowTW {
	[[UIApplication sharedApplication]
	openURL:[NSURL URLWithString:@"https://twitter.com/CrafterPika"]
	options:@{}
	completionHandler:nil];
}
@end
