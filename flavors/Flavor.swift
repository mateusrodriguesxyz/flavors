import Foundation

// MARK: Protocol

protocol Flavor {
    associatedtype Body: Flavor
    var body: Body { get }
}

// MARK: Extensions

extension Never: Flavor {
    var body: Never { fatalError() }
}

extension Optional: Flavor where Wrapped: Flavor {
    var body: Never { fatalError() }
}

// MARK: Primitive Flavors

struct Vanilla: Flavor {
    typealias Body = Never
    var body: Never { fatalError() }
}

struct Chocolate: Flavor {
    typealias Body = Never
    var body: Never { fatalError() }
}

struct Strawberry: Flavor {
    typealias Body = Never
    var body: Never { fatalError() }
}i

// MARK: Helpers

struct Stack<Content>: Flavor where Content: Flavor {
    
    let content: Content
    
    typealias Body = Never
    
    init(@FlavorBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: Never { fatalError() }
    
}

struct TupleFlavor<T>: Flavor {
    
    var value: T
    
    typealias Body = Never
    var body: Never { fatalError() }
    
    init(_ value: T) {
        self.value = value
    }
    
}

struct ConditionalContent<TrueContent, FalseContent>: Flavor  where TrueContent: Flavor, FalseContent: Flavor {
    
    typealias Body = Never
    
    enum Storage {
        case trueContent(TrueContent)
        case falseContent(FalseContent)
    }
    
    let storage: Storage
    
    var body: Never { fatalError() }
    
}
