@testable import arc52_swift_example
import x_hd_wallet_api
import XCTest

final class arc52_swift_exampleTests: XCTestCase {
    func testRandomGeneratePK() throws {
        let wallet = try Arc52SwiftExample().wallet
        let publicKey = try wallet!.keyGen(context: KeyContext.Address, account: 0, change: 0, keyIndex: 0)
        print([UInt8](publicKey))
        let publicKey2 = try wallet!.keyGen(context: KeyContext.Address, account: 0, change: 0, keyIndex: 100_000)
        print([UInt8](publicKey2))
    }
}
