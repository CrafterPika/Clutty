#include "XDXRootListController.h"
#import <spawn.h>

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

- (void)respring {
    pid_t pid;
    const char* args[] = {"killall", "backboardd", NULL};
    posix_spawn(&pid, "/usr/bin/killall", NULL, NULL, (char* const*)args, NULL);
}

@end