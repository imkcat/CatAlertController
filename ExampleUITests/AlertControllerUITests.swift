//
//  AlertControllerUITests.swift
//  AlertControllerUITests
//
//  Created by vlang on 2018/6/26.
//  Copyright © 2018年 ImKcat. All rights reserved.
//

import XCTest
@testable import CatAlertController

class AlertControllerUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        
        let app = XCUIApplication()
        app.buttons["Alert Popup Example"].tap()
        
        let alertStyleFlashExampleButton = app.buttons["Alert Style Flash Example"]
        alertStyleFlashExampleButton.tap()
        
        let alert = app.alerts["Alert"]
        let cancelButton = alert.buttons["Cancel"]
        cancelButton.tap()
        alertStyleFlashExampleButton.tap()
        
        let okButton = alert.buttons["OK"]
        okButton.tap()
        alertStyleFlashExampleButton.tap()
        
        let alertStyleExampleButton = app.buttons["Alert Style Example"]
        alertStyleExampleButton.tap()
        cancelButton.tap()
        alertStyleExampleButton.tap()
        okButton.tap()
        
        let actionSheetStyleFlashExampleButton = app.buttons["Action Sheet Style Flash Example"]
        actionSheetStyleFlashExampleButton.tap()
        
        let actionSheetSheet = app.sheets["Action Sheet"]
        let item1Button = actionSheetSheet.buttons["Item 1"]
        item1Button.tap()
        actionSheetStyleFlashExampleButton.tap()
        actionSheetStyleFlashExampleButton.tap()
        
        let cancelButton2 = actionSheetSheet.buttons["Cancel"]
        cancelButton2.tap()
        
        let actionSheetStyleExampleButton = app.buttons["Action Sheet Style Example"]
        actionSheetStyleExampleButton.tap()
        item1Button.tap()
        actionSheetStyleExampleButton.tap()
        cancelButton2.tap()
        
    }
    
}
