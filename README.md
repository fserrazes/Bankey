# Bankey

<p>
    <img src="https://img.shields.io/badge/iOS-15.0+-orange.svg"/>
</p>

This a mock banking project using UIKIT with Unit Tests without Storyboards.

The source code is part of Udemy training course "The Swift Arcade Professional iOS Development" by Jonathan Rasmusson. I included some personal touches and additional features.

The course is very well organised, despite my experience, I was able to extract some ideas and reinforce my knowledge.

## Sections

+ __[LoginView](/.additional%20files/LoginView-README.md)__
+ __[Onboarding](/.additional%20files/Onboarding-README.md)__
+ __[AccountSummary](/.additional%20files/AccountSummary-README.md)__
+ __[Animations](/.additional%20files/Animation-README.md)__

## Considerations (Downside)

1. Some methods and variables were declared as public only to be tested.
2. The two projects `Bankey` and `Password` could be integrated. In fact there is no reason for them to be separate.
3. After I started working with TDD in 2018. I find it very strange to develop any project, then look for what to test.

## TODO's

* Using `Password` project inside `Bankey`
* I'm not happy to let some methods and variables public only for tests.

## Technologies used

*  UIKit with + xib (no storyboard)
*  MVC + MVVM architecture
*  AutoLayout
*  Networking - URLSession
*  Saving user actions - UserDefaults
*  GCD (DispatchQueue.main, DispatchGroup)
*  UITableView, UITabBarController, UIPageViewController
*  Delegate pattern, NotificationCenter
*  UIViewPropertyAnimator, CAKeyFrameAnimation, CGAffineTransform
*  CABasicAnimation, CAAnimationGroup
*  XCTest

## Training Course (Udemy)

+ [The Swift Arcade Professional iOS Development Course - UIKit](https://www.udemy.com/course/the-swift-arcade-professional-ios-development-course-uikit/) by Jonathan Rasmusson (Last updated 05/2022).
