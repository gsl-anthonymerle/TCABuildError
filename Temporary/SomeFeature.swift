import ComposableArchitecture
import MyTemporaryPackage

@Reducer
public struct SomeFeature: Sendable {
    public init() {}

    public struct State: Equatable {
        var child = PackageFeature.State()
    }

    public enum Action {
        case child(PackageFeature.Action)
    }

    public var body: some ReducerOf<Self> {
        Scope(state: \.child, action: \.child) {
            PackageFeature()
        }
    }
}
