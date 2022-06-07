//
//  CounterSnapshotTests.swift
//  TCA_CounterTests
//
//  Created by Lukáš Korba on 07.06.2022.
//

import XCTest
@testable import TCA_Counter
import SnapshotTesting
import ComposableArchitecture

class CounterSnapshotTests: XCTestCase {
    func testSnapshotIncrement() throws {
        let store = Store(
            initialState: .placeholder,
            reducer: CounterReducer.default,
            environment: CounterEnvironment()
        )
        
        ViewStore(store).send(.increment)

        let view = Counter(store: store)
            .environment(\.colorScheme, .light)
            .frame(
                width: UIScreen.main.bounds.width,
                height: UIScreen.main.bounds.height,
                alignment: .center
            )
        
        assertSnapshot(matching: view, as: .image)
    }
}
