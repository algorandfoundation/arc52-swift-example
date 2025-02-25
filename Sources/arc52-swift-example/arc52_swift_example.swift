// The Swift Programming Language
// https://docs.swift.org/swift-book

import x_hd_wallet_api
import MnemonicSwift

public class Arc52SwiftExample {
    public var wallet: XHDWalletAPI?
    public var seedPhrase: String
    public init() throws {
        seedPhrase = try Mnemonic.generateMnemonic(strength: 256)
        wallet = x_hd_wallet_api.XHDWalletAPI(seed: try Mnemonic.deterministicSeedString(from: seedPhrase))
    }
}
