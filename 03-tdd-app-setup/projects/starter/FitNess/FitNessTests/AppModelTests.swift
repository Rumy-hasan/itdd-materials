//
//  AppModelTests.swift
//  FitNessTests
//
//  Created by Paradox Space Rumy M1 on 13/6/21.
//  Copyright © 2021 Razeware. All rights reserved.
//

import XCTest
import FitNess

class AppModelTests: XCTestCase {
  var sut: AppModel!
  
  override func setUpWithError() throws {
    // Put setup code here. This method is called before the invocation of each test method in the class.
    super.setUp()
    sut = AppModel()
  }
  
  override func tearDownWithError() throws {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    sut = nil
    super.tearDown()
  }
  
  func testAppModel_whenInitialized_isInNotStartedState() {
    let initialState = sut.appState
    XCTAssertEqual(initialState, AppState.notStarted)
  }
  
  func testAppModel_whenStarted_isInInProgressState(){
    sut.start()
    let observedState = sut.appState
    XCTAssertEqual(observedState, AppState.inProgress)
  }
}
