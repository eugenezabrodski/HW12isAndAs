import UIKit

var anyItems: [Any] = [2.5, true, "Jack", 2, 4.4, false, "Kate", 6]
print(anyItems)

for item in anyItems {
    if item is Int {
        print ("\(item) is Int")
    } else if item is Bool {
        print ("\(item) is Bool type")
    } else if item is String {
        print ("\(item) is String")
    } else if item is Double {
        print ("\(item) is Double")
    }
}


var anyDictionary: [String: Any] = ["Double": 2.5, "Bool": true, "Int": 2, "String": "kate"]
for (key, value) in anyDictionary {
    print ("\(key) is a \(value)")
}

var anyItems1: [Any] = [2.5, true, "Jack", 2, 4.4, false, "Kate", 6]
var total: Double = 0
func result(anyItems1: [Any], total: Double) -> Double {
    var total: Double = 0
    for item in anyItems {
        if let itemInt = item as? Int {
            total = total + Double(itemInt)
        } else if let itemDouble = item as? Double {
            total = total + itemDouble
        } else if let itemBool = item as? Bool {
            if itemBool {
                total = total + 2
            } else {
                total = total - 3
            }
        } else if let itemString = item as? String {
            total = total + 1
        }
    }
    return total
}
print(result(anyItems1: anyItems1, total: total))
total = 0
print(total)

func result1(anyItems1: [Any], total: Double) -> Double {
    var total: Double = 0
    for item in anyItems {
        if let itemInt = item as? Int {
            total = total + Double(itemInt)
        } else if let itemDouble = item as? Double {
            total = total + itemDouble
        } else {
            if let itemString = item as? String {
                total = total + (Double(itemString) ?? 0)
    }
    }
}
    return total
}
print(result1(anyItems1: anyItems1, total: 0))

