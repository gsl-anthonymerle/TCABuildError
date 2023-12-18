import ComposableArchitecture
import SwiftUI

@Reducer
public struct PackageFeature {
    public func reduce(into state: inout State, action: Action) {}
    
    struct SomeThing: Equatable {
        let value: String
    }

    public struct State: Equatable {
        var value: SomeThing = .init(value: "Toto")

        public init() {}
    }

    public enum Action: Equatable {
        case someAction
    }

    public init() {}

    public var body: some ReducerOf<Self> {
        Scope(state: \.value, action: \.someAction) {
            EmptyReducer()
        }
    }
}

