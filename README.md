# iOS Prework - **Colorized Bio**

Submitted by: Patt Martin

**Colorized Bio** is an app that that displays some details about the author. Specifically these details include their name, the college that they currently attend, and their current job.

**Time spent**: 1.5 hours spent in total

## Required Features

The following **required** functionality is completed:
- [x] Users are see a screen with three labels and a button
- [x] Tapping the button changes the screen color to a random color

## Optional Features

The following **optional** features were completed:
- [x] Added an offset stroke to the colorizer 
- [x] Recolored all UILabels to an inverted version of the random color.
    - **Reasoning**: Sometimes the background color would shift too close to black and the UILabels could become difficult to read.
    - **Topics covered**: Rather than creating specific references, IBOutlets, for each UILabel, I used a IBOutlet Collection to recolor all UILabels without much code repetition.
- [x] Added a check to determine and re-randomize if the contrast difference was too little between the randomColor and its inverted counterpart.
    - **Reasoning**: Similar to the previous issue, the contrast difference would decrease as randomColor approached 50%.
    - **Topics covered**: Explored the `reduce()` function of an array with a closure. Also learned more about the syntax and meaning behind `$0` and `$1`. 
    - **Alternatives Solution:** Instead of fully randomizing the color values, a pool of colors can be randomly picked from to quickly ensure a more tailored user experiences.
 
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
### Inspiration
Make a list of your favorite 3-5 applications and identify 2-3 features that make them your favorite app. Features can be repeated for multiple apps.
- **Apollo for Reddit** - Newsreader
    - **Back and Forward Swipe Navigation**: Typically apps can accept a swipe from the left edge to interactively go to the previous screen. Apollo was able to do the same thing in reverse for screens you navigated away from. This was likely implemented as a stack where screens navigated away from would be pushed onto the forward stack. This would likely require a custom made navigation controller.
    - **Tap status bar again to return to place**: Typically when a user taps on the status bar (top of the screen above the navigation bar), their scroll position is returned to the top position. With Apollo, a second tap will return them to the position before the move.
    - **Gif Scrubber**: Typically gifs are displayed as an auto-playing media with no controls. With Apollo, gifs have a minimal timeline at the bottom and the user can drag from left and right to manually scrub through a gif. Since gifs are usually short form content, the need for a complex video playing UI is not needed.

    Note: Apollo was recently sunsetted due to the Reddit's API price hikes. As a result the features are inaccessible at the time of this writing.
- **Spotify** - Audio Entertainment
    - **Dynamic UI Coloring**: Parts of Spotify's user interface is intelligently colored based on playlist and album art. It appears that there is some advanced processing that is applied to find key colors that are accessible to read. The colors are further made accessible by incorporating color-variated gradient and transparent-to-black gradients when needed. It's likely that this processing is a custom solution as the cross-platform desktop app also uses it.
    - **Custom Slider**: This may be personal preference, but I like the custom solution for the scrollbar for lists with a larger amount of items. While the original scrollbar may be percieved as invisible, the functionality of discrete scrolling by first character groupings is also percieved as invisible. This is in contrast to Apple's solution which involves displaying the entire alphabet minus absent groups in place of the scroll bar.
    - **Spotify Unwrapped: A Collective Event**: By placing Spotify Unwrapped so near the new year it has become a popular activity for users to share their year in review. I personally feel that music habits are not too close to personalized data compared to physical traits like height and weight. Because of this, it feels more comfortable to see how your music habits is in comparison to others.
- **Termius** - SSH Client and Terminal
    - **Shared Sessions**: A recent trend in software over the past few years has been collaborative editing. Networking alone is a complex field of software development. For now, the development of these features is an unknown area to me where I am largely unfamilar with how things are implemented to be as frictionless as possible to the end-user.
    - **Automation and Autocomplete**: For Termius to succeed, it must offer a significantly better user experience than the existing terminal/SSH experience. By offering automation tools to quickly turn repetitive commands into a bash scripts and to supplement that with autocomplete, Termius offers that incentive. By combining this with AI, Termius markets itself well as a productivity tool.
    - **Per connection user preferences**: While user style preferences may sometimes be pushed back for more functional features, I feel that a specific styling of workspaces can be a crucial feature. This stems from coming in to your own personalized workspace ready to do a specific task. By having specific colors and features for different terminals, it may subconsciously easier to recall commands and directories for a specific machine. 
- **Calcbot 2** - Utility
    - **Multiple App Themes**: From tinkering with an app of my own, implementing multiple themes (excluding light/dark mode) can be a challenge to implement into a pre-existing app. If planned well from the beginning, the developer can use multiple app themes as a nice paid incentive that allows users to stylize the app to their preferences.
    - **Sleek History View**: By implementing a history view, the developer needs to strike a balance between displaying enough information to be useful and not displaying too much that it overwhelms the history. 
    - **Improving upon Simplicity**: It is a near guarentee that every single device owner has at one point used the default calculator (excluding the iPad). The developer needs to again strike a balance between familarity and innovation. One of the ways this was accomplished was with the unit conversion mode. While simple, the feature doubles the useablity of the familiar calculator app. 
- **Target** - Commerce
    - **Simplistic Shopping Experience**: It is refreshing to be able to open a commerce app without most of the app being products. Most customers are likely to open the app with an idea of what to buy already in mind. By bringing related products in with the searched product, the customer is better onboarded to the commerce experience. Additionally, the curbside pickup feature's accelerated development cycle was a crucial feature for the peak of the US pandemic.
    - **Item Finding and Price Checking**: One of the most longterm defining features of the Target app was its relationship to the in-store experience. To this day, the in-app and onsite shopping experience are awkwardly opposed to each other. In comparison, Target's app will show you the item's location in comparison to your own. For the onsite to in-app experience, a barcode reader provides utility for products with missing or out-of-date pricing information.

### Gradebook - My App Idea
Think of an app idea that you would like to build. It can be a new idea or an improvement on an existing app. Write a short paragraph describing the app and the features you would like to implement. You are not commiting to this idea, but it helps to start brain storming early on and get feedback from your peers and instructors.

My inspiration for **Gradebook** is the student experience of not completely knowing their grade until crucial points of the semester, typically right before finals. Some instructors may do all their grades at once, the assignments may be laid out in such a way that larger weighted assignments are later in the semester, or their may be a mismatch between the final weights and the displayed weights. For this project, I would like the user interface to be visually informative such that the user will know their best, average, and worst case scenarios for the rest of their course. The process of adding an assignment needs to be as seamless as possible to encourage interactions that are short, frequent, and close to the moment. 


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