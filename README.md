# ArgsToDict
> Swift libary for converting cli arguments into dictionary

## ⚙️ Installation

```swift
.package(url: "http://github.com/aniket965/ArgsToDict.git", from: "1.0.0")

```
## 📗 Usage

```swift
import Foundation
import ArgsToDict

let args = argsToDict(args: CommandLine.arguments)

```
## 📃Example

```
let args = argsToDict(args: ["init","-type","executable"])
// args -> ["type": "executable", "_": ["init"]]
```
## License

MIT © [Aniket965](LICENSE)
