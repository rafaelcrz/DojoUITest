//
//  DojoUITest1UITests.swift
//  DojoUITest1UITests
//
//  Created by Rafael Ramos on 30/11/23.
//

import XCTest

final class DojoUITest1UITests: XCTestCase {
    
    let app = XCUIApplication()
    
    override func setUpWithError() throws {
        app.launch()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        
        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDownWithError() throws {
        
    }
    
    func testExample() throws {
        let predicate: NSPredicate = .init(format: "label beginswith 'São Paulo'")
    
        let cell: XCUIElement = app.tables.cells.containing(predicate).element
        
        cell.tap()
    }
}
