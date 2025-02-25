// The Swift Programming Language
// https://docs.swift.org/swift-book

import x_hd_wallet_api
import MnemonicSwift

public class Arc52SwiftExample {
    public var wallet: XHDWalletAPI?
    public var seedPhrase: String
    public init() throws {
        //seedPhrase = try Mnemonic.generateMnemonic(strength: 256)
        seedPhrase = "spatial grief runway menu surround verb nice truth cabbage round amount spin jazz bottom office sadness palace shrug play bamboo skull dismiss perfect harbor"
        wallet = x_hd_wallet_api.XHDWalletAPI(seed: try Mnemonic.deterministicSeedString(from: seedPhrase))
    }
}
