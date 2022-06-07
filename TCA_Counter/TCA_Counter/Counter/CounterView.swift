//
//  CounterView.swift
//  TCA_Counter
//
//  Created by Lukáš Korba on 07.06.2022.
//

import SwiftUI
import ComposableArchitecture

struct Counter: View {
    let store: CounterStore
    
    var body: some View {
        WithViewStore(store) { viewStore in
            HStack {
                Button(
                    action: { viewStore.send(.decrement) },
                    label: { Text("-") }
                )
                Text("\(viewStore.value)")
                Button(
                    action: { viewStore.send(.increment) },
                    label: { Text("+") }
                )
            }
        }
    }
}

struct Counter_Previews: PreviewProvider {
    static var previews: some View {
    Counter(store: .placeholder)
    }
}
