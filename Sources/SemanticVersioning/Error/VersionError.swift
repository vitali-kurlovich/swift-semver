//
//  Created by Vitali Kurlovich on 13.03.26.
//

public nonisolated enum VersionError: Error, Sendable {
    case invalidFormat
}

nonisolated extension VersionError: CustomStringConvertible {
    public var description: String {
        switch self {
        case .invalidFormat:
            return "Invalid format"
        }
    }
}
