#import "Tweak.h"

%hook SBDockView
-(void)setBackgroundAlpha:(double)arg1{
	NSDictionary *bundleDefaults = [[NSUserDefaults standardUserDefaults] persistentDomainForName:@"io.crafterpika.cluttyprefs"];

	id ClearDock = [bundleDefaults valueForKey:@"ClearDock"];
	if ([ClearDock isEqual:@0]){
		//Nothing Will Happen
	} else{
		%orig(0.0);
	}
}
%end

%hook SBIconImageView
-(void)setProgressAlpha:(double)arg1{
	NSDictionary *bundleDefaults = [[NSUserDefaults standardUserDefaults] persistentDomainForName:@"io.crafterpika.cluttyprefs"];

	id AppProgressBar = [bundleDefaults valueForKey:@"AppProgressBar"];
	if ([AppProgressBar isEqual:@0]){
		//Nothing Will Happen
	} else{
		%orig(0.5);
	}
}
%end

%hook _UIStatusBarStringView
-(void)setText:(id)arg1{

	NSDictionary *bundleDefaults = [[NSUserDefaults standardUserDefaults] persistentDomainForName:@"io.crafterpika.cluttyprefs"];
	
	id StatusBar2Apple = [bundleDefaults valueForKey:@"StatusBar2Apple"];
	if ([StatusBar2Apple isEqual:@0]){
		%orig;
	} else{
		%orig(@"");
	}
}
%end