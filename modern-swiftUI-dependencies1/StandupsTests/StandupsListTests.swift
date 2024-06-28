import Dependencies
import XCTest
import CustomDump

@testable import Standups


class StandupsListTests: XCTestCase {
    //    override func setUp() {
    //        super.setUp()
    //        try? FileManager.default.removeItem(at: .documentsDirectory.appending(component: "standups.json"))
    //    }
    @MainActor
    func testPersistence() async throws {
        let mainQueue = DispatchQueue.test
        withDependencies {
            $0.dataManager = .mock()
            $0.mainQueue = mainQueue.eraseToAnyScheduler()
        } operation: {
            let listModel = StandupsListModel()

            XCTAssertEqual(listModel.standups.count, 0)

            listModel.addStandupButtonTapped()
            listModel.confirmAddStandupButtonTapped()
            XCTAssertEqual(listModel.standups.count, 1)

            mainQueue.run()

            let nextLaunchListModel = StandupsListModel()
            XCTAssertEqual(nextLaunchListModel.standups.count, 1)
        }
    }

    @MainActor
    func testEdit() throws {
        let mainQueue = DispatchQueue.test
        try withDependencies {
            $0.dataManager = .mock(
                initialData: try JSONEncoder().encode([Standup.mock]))
            $0.mainQueue = mainQueue.eraseToAnyScheduler()
        } operation: {
            let listModel = StandupsListModel()
            listModel.addStandupButtonTapped()
            listModel.confirmAddStandupButtonTapped()
            XCTAssertEqual(listModel.standups.count, 2)

            listModel.standupTapped(standup: listModel.standups[0])
            guard case let .some(.detail(detailModel)) = listModel.destination
            else {
                XCTFail()
                return
            }
            XCTAssertEqual(detailModel.standup, listModel.standups[0])

            detailModel.editButtonTapped()
            guard case let .some(.edit(editModel)) = detailModel.destination
            else {
                XCTFail()
                return
            }
            XCTAssertNoDifference(editModel.standup, detailModel.standup)
            editModel.standup.title = "Product"
            detailModel.doneEditingButtonTapped()

            XCTAssertNil(detailModel.destination)
            XCTAssertEqual(detailModel.standup.title, "Product")

            listModel.destination = nil
            
            XCTAssertEqual(listModel.standups[0].title, "Product")
        }
    }
}
