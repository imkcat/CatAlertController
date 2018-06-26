User UIAlertController like the boss.

- [Requirements](#requirements)
- [Usage](#usage)
- [License](#license)


## Requirements

- Swift 4+
- iOS 8.0+

## Usage

Here is the alert style sample code in iPhone:

```swift
AlertController(title: "AlertController", 
                message: "Hello AlertController", 
                preferredStyle: UIAlertControllerStyle.alert)
                .addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel, handler: nil))
                .addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
                .flash(from: self, animated: true, delay: 0.3, completion: nil)
```

Here is the action sheet style sample code in iPad:

```swift
// Don't worry the action sheet style present in iPad, it won't be crash, take it easy :)
AlertController(title: "Action Sheet Style", 
                message: "This is AlertController", 
                preferredStyle: UIAlertControllerStyle.actionSheet)
                .addAction(UIAlertAction(title: "Item 1", style: UIAlertActionStyle.default, handler: nil))
                .addAction(UIAlertAction(title: "Item 2", style: UIAlertActionStyle.default, handler: nil))
                .addAction(UIAlertAction(title: "Item 3", style: UIAlertActionStyle.default, handler: nil))
                .addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel, handler: nil))
                .flash(from: self, animated: true, delay: 1, completion: nil)
```

## License

AlertController is available under the MIT license. See the LICENSE file for more info.