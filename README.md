# Unwrap
Short way to unwrap optional value for Swift

# Installation

The preferred way of installing SwiftUIX is via the [Swift Package Manager](https://swift.org/package-manager/).

>Xcode 11 integrates with libSwiftPM to provide support for iOS, watchOS, and tvOS platforms.

1. In Xcode, open your project and navigate to **File** → **Swift Packages** → **Add Package Dependency...**
2. Paste the repository URL (`https://github.com/heart/Unwrap`) and click **Next**.
3. For **Rules**, select **Branch** (with branch set to `master`).
4. Click **Finish**.


# Usage

## Just Unwrap it
``` Swift
    let myValue:String? = SomeDataSource.fetch()

    myValue.unwrap{
        print("Value = \($0)")
    }
```

## Nil value
``` Swift
    let myValue:String? = nil

    myValue.unwrap{ _ in
        print("This Line will not run if value is nil")
    }
```