// The Swift Programming Language
// https://docs.swift.org/swift-book

import bip32_ed25519_swift
import MnemonicSwift

public class Arc52SwiftExample {
    public var wallet: Bip32Ed25519?
    public var seedPhrase: String
    public init() throws {
        seedPhrase = try Mnemonic.generateMnemonic(strength: 256)
        wallet = bip32_ed25519_swift.Bip32Ed25519(seed: try Mnemonic.deterministicSeedString(from: seedPhrase))
    }
}
