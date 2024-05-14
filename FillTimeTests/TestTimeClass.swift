//
//  FillTimeTests.swift
//  FillTimeTests
//
//  Created by 황석현 on 4/16/24.
//

import XCTest
@testable import FillTime

final class TestTimeClass: XCTestCase {
    
    var timerTests: TimeModel!

    override func setUpWithError() throws {
        timerTests = TimeModel()
    }

    override func tearDownWithError() throws {
        timerTests = nil
    }
    
    // MARK: 5초동안 동작하는 타이머
    func testStartTimer() {
        timerTests.startTimer()
        XCTAssertTrue(timerTests.timer.isValid, "It's Still Running!")
    }
    
    func testStartLoopTimer() {
        timerTests.workTime = 5
        timerTests.restTime = 5
        timerTests.cycle = 2
        timerTests.startLoopTimer()
        XCTAssertTrue(timerTests.timer.isValid, "It's Still Running!")
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
