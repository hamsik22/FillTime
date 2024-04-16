//
//  FillTimeTests.swift
//  FillTimeTests
//
//  Created by 황석현 on 4/16/24.
//

import XCTest
@testable import FillTime

final class TestTimeClass: XCTestCase {

    override func setUpWithError() throws {
    }

    override func tearDownWithError() throws {
    }

    // MARK: 타이머가 5초 뒤에 멈춘다
    func testTimerWillStopIn5sec() throws {
        var timeLeft = 5
        let expectation = self.expectation(description: "Timer completes")

        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { timer in
            if timeLeft == 0 {
                print(timeLeft)
                timer.invalidate()
                // 비동기 작업이 완료되었음을 알림
                expectation.fulfill()
            } else {
                print(timeLeft)
                timeLeft -= 1
            }
        }
        // 비동기 작업이 6초 이상 소요되면 에러 출력
        waitForExpectations(timeout: 6) { error in
            if let error = error {
                XCTFail("Timer did not finish in time: \(error)")
            }
        }
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
