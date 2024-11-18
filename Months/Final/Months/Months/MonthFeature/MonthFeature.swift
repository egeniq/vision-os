//
//  MonthFeature.swift
//  Months
//
//  Created by Yasser Farahi on 14/11/2024.
//

import SwiftUI
import ComposableArchitecture

@Reducer
struct MonthFeature {
    
    @ObservableState
    struct State: Equatable {
        var id: String = .init()
        var name: String = .init()
        var nameOrigin: String = .init()
        var funFact: String = .init()
        var monthType: MonthType
    }
    
    enum Action: Equatable {
        case getMonthInfo
    }
    
    var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
            case .getMonthInfo:
                guard let selectedMonth = MonthModel.mockData.first(where: { $0.type == state.monthType }) else { return .none }
                state.id = selectedMonth.id.stringValue
                state.name = selectedMonth.name
                state.nameOrigin = selectedMonth.nameOrigin
                state.funFact = selectedMonth.funFact
                state.monthType = selectedMonth.type
                return .none
            }
        }
    }
}
