//
//  DependencyManager.swift
//  Standups
//
//  Created by koki isshiki on 28.06.24.
//

import Foundation
import Dependencies

struct DataManager : Sendable {
    var load: @Sendable (URL) throws -> Data
    var save: @Sendable (Data, URL) throws -> Void
}

extension DataManager: DependencyKey {
    static let liveValue = DataManager(
        load: {url in try Data(contentsOf: url)},
        save: { data, url in try data.write(to: url)}
    )
}

extension DataManager {
    static func mock(initialData: Data = Data()) -> DataManager {
        let data = LockIsolated(initialData)
        return DataManager(
            load: { _ in data.value },
            save: { newData, _ in data.setValue(newData) }
        )
    }
}

extension DependencyValues {
    var dataManager: DataManager {
        get { self[DataManager.self] }
        set { self[DataManager.self] = newValue }
    }
}
