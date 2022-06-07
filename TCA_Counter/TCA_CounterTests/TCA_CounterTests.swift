//
//  TCA_CounterTests.swift
//  TCA_CounterTests
//
//  Created by Lukáš Korba on 07.06.2022.
//

import XCTest
@testable import TCA_Counter
import ComposableArchitecture

class TCA_CounterTests: XCTestCase {
    func testIncrement() throws {
        let store = TestStore(
            initialState: .placeholder,
            reducer: CounterReducer.default,
            environment: CounterEnvironment()
        )
        
        store.send(.increment) { state in
            state.value = 1
        }
    }

    func testDecrement() throws {
        let store = TestStore(
            initialState: .placeholder,
            reducer: CounterReducer.default,
            environment: CounterEnvironment()
        )
        
        store.send(.increment) { state in
            state.value = -1
        }
    }
}
