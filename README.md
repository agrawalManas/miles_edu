# miles_edu_assignment

This is a simple flutter application against the assignment given by Mile Education. It contains three screens supporting both and iOS and Android platform. The application is built with respect to the screen recording given in the initial notion document. 

This application contains the following:

Home Screen:
All the JSON parsing to render the content on screen, pull down to refresh, caching

Testimonial Screen:
Shows testimonial video of a candidate

Youtube Video Player Screen:
Shows the youtube video present in inshorts section


## Pre-requisites for execution
 1. Flutter Version- 3.19.6
 2. Xcode Version- 15.2
 3. Make sure to install Cocoapods for iOS

## Getting Started

1. Clone the project or download the zip file
2. Run "flutter clean" on terminal
3. Run "flutter pub get" on terminal to fetch all the dependicies/packages required
4. Run "cd ios" to go to ios folder
5. Run "pod install" to install pods
6. Run the application using "flutter run"
 
## Project Architecture
This app follows the MVC architecture pattern, a design paradigm that separates the application logic into three interconnected components:
 
1. Model: Represents the data and business logic of the application.
2. View: Displays the user interface and interacts with the user.
3. Controller: Handles user input, updates the model, and manipulates the view.

## Third Party Packages
1. youtube_player_flutter- for playing youtube videos
2. carousel_slider: for displaying the carousel
3. flutter_screenutil- for UI responsiveness
4. cached_network_image- for caching the network images
5. flutter_svg- for handling svg images

## Design Patterns
This app follows Factory design patterns for optimal performance and integritry.

## Project Structure
- common_widgets: contains the widgets used or maybe used globally in the project
- utils: contains all the necessary configuration related files like responsiveness, app_utils, etc.
- constants: contains all the predefined fiels image_path, app_colors, text_styles, etc.
- modules: consists of the various application modules. Each of the module contains following directories:
  1. presentation- contains all the UI part of a specific module
    1. widgets- contains the widgets used in the paricular module
  2. domain- contains the business logic part of a specific module
  3. models- contains the model file for a corresponding json response

## NOTE
- No specific font family is being in the application
- Talk_to_us_bottomsheet does not contain any animation/gif as the required assets were not present in figma
- The gif present for talk_to_us bottomshet in different from the one present in screen_recording as exproted from figma
- Used the default circular_indicator for depictig the loading state on pull down to refresh in home screen, as no asset was present on figma
- The image_path present in the given json files are not working as the token is expired, so all the placeholder images are exported from the figma and used
- The bottom_navigation bar is slightly different from the given screen recording due to timeline constraints for assessment submission
  
  
  



