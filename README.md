ScrollTransition Animations Used in Space Diary

In my app Space Diary(https://apps.apple.com/app/id6499088381), I used scrollTransition for the horizontal scrolling of the diary list. 
scrollTransition is a scrolling method supported from iOS 17 onwards. 
I personally like this interaction effect because it can make scroll effects more dynamic. 
By using rotation3DEffect and scaleEffect, I was able to create a sense of depth during scrolling. 
Additionally, I applied zIndex in reverse order to manage the depth of overlapping diaries while scrolling.

