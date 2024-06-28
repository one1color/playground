import Clocks
import Dependencies
import XCTest
import XCTestDynamicOverlay

@testable import Standups

class RecordMeetingTests: XCTestCase {
    @MainActor
    func testTimer() async {
        await withDependencies {
            $0.continuousClock = ImmediateClock()
        } operation: {
            var standup = Standup.mock
            standup.duration = .seconds(6)
            let recordModel = RecordMeetingModel(
                standup: standup
            )
            let expectation = self.expectation(description: "onMeetingFinished")
            recordModel.onMeetingFinished = { _ in expectation.fulfill() }

            await recordModel.task()
            await fulfillment(of: [expectation], timeout: 1.0)
            XCTAssertEqual(recordModel.secondsElapsed, 6)
            XCTAssertEqual(recordModel.dismiss, true)
        }
    }
}
