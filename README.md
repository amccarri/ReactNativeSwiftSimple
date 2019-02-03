# ReactNativeSwiftSimple
Simple demo of adding native swift to react native app.

I wanted to see how easily it would be to convert a react native app to Swift and embed a react native view into a native view.
There are other guides out there that depend on cocoapods, but some are problematic with changes being made currently to react native.  One
example is RN does not seem to have proper search headers for some of it's libraries, so builds fail.  I do have an open PR
to fix that though.

This approach is to demonstrate the absolute simplest way to mix swift with RN.

Here are the steps I followed:

1. Follow react-native getting started guide to get all the tools installed.  Make sure you follow the instructions under the `building projects with native code` tab.
1. Remove the objective-C files for the main app delegate and replace them with Swift versions.
    1. delete main.m
    1. delete UIApplicationDelegate.h
    1. delete UIApplicationDelegate.m
    1. Create the AppDelegate.swift file.
    1. Xcode will ask you if you want to generate a bridging header, say `yes`.
1. Add the React header files you'll be using to the bridging header.
1. See my implementation of AppDelegate for how to access an RN bundle.
