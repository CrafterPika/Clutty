#include <UIKit/UIKit.h>

%hook SBStatusBarManager {
-(void)handleStatusBarTapWithEven:(id)arg1{
      UIAlertView *altert = [[UIAlertView alloc] initWithTitle:@"Thanks" message:@"Thanks for installing the Tweak :)" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
      [alert show];
      %orig;
}

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
