<img src="https://rawcdn.githack.com/IvanVorobei/RequestPermission/fb53d20f152a3e76e053e6af529306611fb794f0/resources/request-permission - baner.svg"/>

## About
This project is about managing permissions with the customizable visual effects. Beautiful dialog increases the chance of approval (which is important when we request notification). Simple control of this module saves you hours of development. You can start using this project with just two lines of code and easy customization!

Now project in develop and if you find errors, please let me know. I will make changes promptly

Preview GIF loading [4mb]. Please, wait
<img src="https://rawcdn.githack.com/IvanVorobei/RequestPermission/fb53d20f152a3e76e053e6af529306611fb794f0/resources/request-permission - mockup_preview.gif" width="500">
## Support the project
The project is absolutely free, but but it takes time to support and update it. Your support is very motivating and very important. I often receive emails asking me to update or add functionality. [Small donat for a cup of coffee](https://money.yandex.ru/to/410012745748312) helps to develop the project and make it better

## Requirements
Swift 4.2. Ready for use on iOS 10+

## Integration
Drop in `Sparrow` folder to your Xcode project (make sure to enable "Copy items if needed" and "Create groups").

Or via CocoaPods:
```ruby
pod 'SPRequestPermission'
```
## How to use
Call `SPRequestPermission` and choose type UI (for example: `dialog/interactive`)
```swift
class ViewController: UIViewController {

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        SPPermission.Dialog.request(with: [.camera, .microphone, .notification], on: self)
    }
}
```
If you want to know if you have received permission, you should call the function:
```swift
let isAvailableCamera = SPPermission.isAllow(.сamera)
```
## Available permissions

<img src="https://rawcdn.githack.com/IvanVorobei/RequestPermission/951477c8e89de55eeeac441102b52b1415c691b7/resources/request-permission_permissions.png"/>

## Delegates
To track events hide & allowed permission associated with `SPPermission`, implement the protocol `SPPermissionDialogDelegate` and pass the delegate
```swift
SPPermission.Dialog.request(
    with: [.calendar, .microphone],
    on: self,
    delegate: self
)
```
## Customize
If you want to change the text, you need to implement the `SPPermissionDialogDataSource` protocol. Redefine the needed parameters to see the changes. In the project you can find an example
```swift
SPPermission.Dialog.request(
    with: [.calendar, .microphone],
    on: self,
    delegate: self,
    dataSource: self
)
```

## Apps, using Request-Permission
I like the idea to specify applications that use the RequestPermission. Please, contact me via email (you can find it in the section "Contacts") so that I added app here

## License
RequestPermission is released under the MIT license. Check LICENSE.md for details

## Contact
[@ivanvorobei in telegram](https://t.me/ivanvorobei)

[https://hello.ivanvorobei.by](https://hello.ivanvorobei.by)

[https://ivanvorobei.by](https://hello.ivanvorobei.by) 

hello@ivanvorobei.by
