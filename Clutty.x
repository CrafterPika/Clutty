%hook SBLockScreenViewController
- (void)viewWillAppear:(BOOL)arg1 {
	%orig;
	[[[UIAlertView alloc] initWithTitle:@"Thanks" message:@"Thanks for installing the Tweak :>" delegate:nil cancelButtonTitle:@"Dismiss" otherButtonTitles:nil] show];
}
%end

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
