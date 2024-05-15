import XCTest
import bip32_ed25519_swift
@testable import arc52_swift_example

final class arc52_swift_exampleTests: XCTestCase {
    func testRandomGeneratePK() throws {
        let wallet = try Arc52SwiftExample().wallet
        let publicKey = wallet!.keyGen(context: KeyContext.Address, account: 0, change: 0, keyIndex: 0)
        print([UInt8](publicKey))
    }
}
