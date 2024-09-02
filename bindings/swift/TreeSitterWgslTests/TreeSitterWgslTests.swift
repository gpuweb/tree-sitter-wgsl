import XCTest
import SwiftTreeSitter
import TreeSitterWgsl

final class TreeSitterWgslTests: XCTestCase {
    func testCanLoadGrammar() throws {
        let parser = Parser()
        let language = Language(language: tree_sitter_wgsl())
        XCTAssertNoThrow(try parser.setLanguage(language),
                         "Error loading WGSL grammar")
    }
}
