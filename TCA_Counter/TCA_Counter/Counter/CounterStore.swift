//
//  CounterStore.swift
//  TCA_Counter
//
//  Created by Lukáš Korba on 07.06.2022.
//

import Foundation
import ComposableArchitecture

typealias CounterReducer = Reducer<CounterState, CounterAction, CounterEnvironment>
typealias CounterStore = Store<CounterState, CounterAction>
typealias CounterViewStore = ViewStore<CounterState, CounterAction>

// MARK: - State

struct CounterState: Equatable {
    var value = 0
}

// MARK: - Action

enum CounterAction: Equatable {
    case increment
    case decrement
}

// MARK: - Environment

struct CounterEnvironment {
    
}

extension CounterEnvironment {
    static let live = CounterEnvironment(
    )

    static let mock = CounterEnvironment(
    )
}

// MARK: - Reducer

extension CounterReducer {
    static let `default` = CounterReducer { state, action, environment in
        switch action {
        case .increment:
            state.value += 1
            return .none
        
        case .decrement:
            state.value -= 1
            return .none
        }
    }
}

// MARK: - Store

extension CounterStore {

}

// MARK: - ViewStore

extension CounterViewStore {

}

// MARK: - Placeholders

extension CounterState {
    static let placeholder = CounterState(
    )
}

extension CounterStore {
    static let placeholder = CounterStore(
        initialState: .placeholder,
        reducer: .default,
        environment: CounterEnvironment()
    )
}
