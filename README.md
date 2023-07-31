# iOS Prework - *Name of App Here*

Submitted by: Patt Martin

**Name of your app** is an app that... [TODO] 

Time spent: 1.5 hours spent in total

## Required Features

The following **required** functionality is completed:
- [x] Users are see a screen with three labels and a button
- [x] Tapping the button changes the screen color to a random color

## Optional Features

The following **optional** features were completed:
- [x] Recolored all UILabels to an inverted version of the random color.
    - **Reasoning**: Sometimes the background color would shift too close to black and the UILabels could become difficult to read.
    - **Topics covered**: Rather than creating specific references, IBOutlets, for each UILabel, I used a IBOutlet Collection to recolor all UILabels without much code repetition.
- [x] Added a check to determine and re-randomize if the contrast difference was too little between the randomColor and its inverted counterpart.
    - **Reasoning**: Similar to the previous issue, the contrast difference would decrease as randomColor approached 50%.
    - **Topics covered**: Explored the `reduce()` function of an array with a closure. Also learned more about the syntax and meaning behind `$0` and `$1`. 
    - **Alternatives Solution:** Instead of fully randomizing the color values, a pool of colors can be randomly picked from to ensure a more tailored user experiences.
 
## Video Walkthrough

Here's a walkthrough of implemented user stories:

<img src='http://i.imgur.com/link/to/your/gif/file.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

<!-- Replace this with whatever GIF tool you used! -->
GIF created with ...  
<!-- Recommended tools:
[Kap](https://getkap.co/) for macOS
[ScreenToGif](https://www.screentogif.com/) for Windows
[peek](https://github.com/phw/peek) for Linux. -->

## App Brainstorming (Step 4)
Make a list of your favorite 3-5 applications and identify 2-3 features that make them your favorite app. Features can be repeated for multiple apps.
- Apollo for Reddit
    - **Back and Forward Swipe Navigation**: Typically apps can accept a swipe from the left edge to interactively go to the previous screen. Apollo was able to do the same thing in reverse for screens you navigated away from. This was likely implemented as a stack where screens navigated away from would be pushed onto the forward stack. This would likely require a custom made navigation controller.
    - **Tap status bar again to return to place**: Typically when a user taps on the status bar (top of the screen above the nvagiation bar)

Note that Apollo was recently sunsetted due to the Reddit's API price hikes. As a result the features are inaccessible at the time of this writing.


## Notes

The action of adding an IBAction by `ctrl + click + dragging` a UI element to an empty area within the ViewController editor was a little odd.
I have used a little bit of SwiftUI so I was not expected a workflow that was extremely different.
Additionally, I want to look into a method of adding UI elements that does not rely as much on the mouse. I'm a little fond of SwiftUI's more programmatic approach since typing is more comfortable on my wrist compared to a mouse for UI creation.

## License

    Copyright 2023 Patt Martin

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.