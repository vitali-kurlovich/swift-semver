//
//  Created by Vitali Kurlovich on 12.03.26.
//

public nonisolated extension Version {
    /// Version metadata
    ///
    /// for more info read [Semantic Versioning](https://semver.org/#spec-item-10)
    nonisolated struct Metadata: Hashable, Sendable {
        public let value: Substring
    }
}

public nonisolated extension Version.Metadata {
    init(_ string: String) throws(VersionError) {
        let parser = VersionParser()
        self = try parser.parseMetadata(string)
    }
}

nonisolated extension Version.Metadata: Comparable {
    public static func < (lhs: borrowing Self, rhs: borrowing Self) -> Bool {
        lhs.value.compare(rhs.value, options: [.numeric]) == .orderedAscending
    }
}

nonisolated extension Version.Metadata: CustomStringConvertible {
    public var description: String {
        formatted()
    }
}
