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
