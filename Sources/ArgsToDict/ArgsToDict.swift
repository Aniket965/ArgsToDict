public func argsToDict(args:[String]) -> Dictionary<String, Any> {
    var ops:[String: Any] = [:]
    var withoutFlags:[String] = []
    var skip = false
    
    // checking single - flags
    for (index, arg) in args.enumerated() {
        if (!skip) {
            if arg.contains("-") {
                var flag = arg
                flag.removeFirst(1)
                ops[flag] = args[index + 1]
                
                // skips the next iteration
                skip = true
                continue
            }
                
            else {
                withoutFlags.append(arg)
            }
        
        }
        else {
            skip = false
        }
    }
    ops["_"] = withoutFlags
    return ops
    
}
