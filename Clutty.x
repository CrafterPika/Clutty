/*
%hook SBDockView
-(void)setBackgroundAlpha:(double)arg1{
	%orig(0.0);
}
%end

%hook SBIconImageView
-(void)setProgressAlpha:(double)arg1{
	%orig(0.5);
}
%end
*/

%hook SBDockView
-(void)setBackgroundAlpha:(double)arg1{
	NSDirectory *bundleDefaults = [[NSUserDefaults standartUserDefaults] persistentDomainForName:@"io.crafterpika.cluttyprefs"];

	id ClearDock = [bundleDefaults valueForKey:@"ClearDock"];
	if ([ClearDock isEqual:@0]){
		//Nothing Will Happen
	} else{
		%orig(0.0);
	}

}

%hook SBIconImageView
-(void)setProgressAlpha:(double)arg1{
	NSDirectory *bundleDefaults = [[NSUserDefaults standartUserDefaults] persistentDomainForName:@"io.crafterpika.cluttyprefs"];

	id AppProgressBar = [bundleDefaults valueForKey:@"AppProgressBar"];
	if ([AppProgressBar isEqual:@0]){
		//Nothing Will Happen
	} else{
		%orig(0.5);
	}
}
%end
