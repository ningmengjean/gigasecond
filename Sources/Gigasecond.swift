//Solution goes in Sources

import Foundation

class Gigasecond {
    var description: String = ""
    init?(from: String) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
        dateFormatter.timeZone = TimeZone(secondsFromGMT: 0)
        if let date = dateFormatter.date(from: from) {
            let later = date.addingTimeInterval(1000000000)
            description = dateFormatter.string(from: later)
        }
    }
    
}
