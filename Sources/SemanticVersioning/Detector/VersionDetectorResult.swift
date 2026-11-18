//
//  Created by Vitali Kurlovich on 19.03.26.
//

public nonisolated struct VersionDetectorResult: Equatable, Sendable {
    public let range: Range<String.Index>
    public let version: Version
}
