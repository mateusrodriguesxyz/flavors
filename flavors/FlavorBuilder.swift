
@resultBuilder
struct FlavorBuilder {
    
    static func buildBlock<Content>(_ content: Content) -> Content where Content: Flavor {
        print(#function)
        return content
    }
    
    static func buildIf<Content>(_ content: Content?) -> Content? where Content: Flavor {
        print(#function)
        return content
    }
    
    static func buildEither<TrueContent, FalseContent>(first: TrueContent) -> ConditionalContent<TrueContent, FalseContent> {
        print(#function)
        return .init(storage: .trueContent(first))
    }
    
    static func buildEither<TrueContent, FalseContent>(second: FalseContent) -> ConditionalContent<TrueContent, FalseContent> {
        print(#function)
        return .init(storage: .falseContent(second))
    }

    static func buildBlock<C0, C1>(_ c0: C0, _ c1: C1) -> TupleFlavor<(C0, C1)> where C0: Flavor, C1: Flavor {
        print(#function)
        return .init((c0, c1))
    }
    
    static func buildBlock<C0, C1, C2>(_ c0: C0, _ c1: C1, _ c2: C2) -> TupleFlavor<(C0, C1, C2)> where C0: Flavor, C1: Flavor, C2: Flavor {
        print(#function)
        return .init((c0, c1, c2))
    }
    
    static func buildBlock<C0, C1, C2, C3>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3) -> TupleFlavor<(C0, C1, C2, C3)> where C0: Flavor, C1: Flavor, C2: Flavor, C3: Flavor {
        print(#function)
        return .init((c0, c1, c2, c3))
    }
    
    static func buildBlock<C0, C1, C2, C3, C4>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, _ c4: C4) -> TupleFlavor<(C0, C1, C2, C3, C4)> where C0: Flavor, C1: Flavor, C2: Flavor, C3: Flavor, C4: Flavor {
        print(#function)
        return .init((c0, c1, c2, c3, c4))
    }
    
    static func buildBlock<C0, C1, C2, C3, C4, C5>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, _ c4: C4, _ c5: C5) -> TupleFlavor<(C0, C1, C2, C3, C4, C5)> where C0: Flavor, C1: Flavor, C2: Flavor, C3: Flavor, C4: Flavor, C5: Flavor {
        print(#function)
        return .init((c0, c1, c2, c3, c4, c5))
    }
    
    static func buildBlock<C0, C1, C2, C3, C4, C5, C6>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, _ c4: C4, _ c5: C5, _ c6: C6) -> TupleFlavor<(C0, C1, C2, C3, C4, C5, C6)> where C0: Flavor, C1: Flavor, C2: Flavor, C3: Flavor, C4: Flavor, C5: Flavor, C6: Flavor {
        print(#function)
        return .init((c0, c1, c2, c3, c4, c5, c6))
    }
    
    static func buildBlock<C0, C1, C2, C3, C4, C5, C6, C7>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, _ c4: C4, _ c5: C5, _ c6: C6, _ c7: C7) -> TupleFlavor<(C0, C1, C2, C3, C4, C5, C6, C7)> where C0: Flavor, C1: Flavor, C2: Flavor, C3: Flavor, C4: Flavor, C5: Flavor, C6: Flavor, C7: Flavor {
        print(#function)
        return .init((c0, c1, c2, c3, c4, c5, c6, c7))
    }
    
    static func buildBlock<C0, C1, C2, C3, C4, C5, C6, C7, C8>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, _ c4: C4, _ c5: C5, _ c6: C6, _ c7: C7, _ c8: C8) -> TupleFlavor<(C0, C1, C2, C3, C4, C5, C6, C7, C8)> where C0: Flavor, C1: Flavor, C2: Flavor, C3: Flavor, C4: Flavor, C5: Flavor, C6: Flavor, C7: Flavor, C8: Flavor {
        print(#function)
        return .init((c0, c1, c2, c3, c4, c5, c6, c7, c8))
    }
    
    static func buildBlock<C0, C1, C2, C3, C4, C5, C6, C7, C8, C9>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, _ c4: C4, _ c5: C5, _ c6: C6, _ c7: C7, _ c8: C8, _ c9: C9) -> TupleFlavor<(C0, C1, C2, C3, C4, C5, C6, C7, C8, C9)> where C0: Flavor, C1: Flavor, C2: Flavor, C3: Flavor, C4: Flavor, C5: Flavor, C6: Flavor, C7: Flavor, C8: Flavor, C9: Flavor {
        print(#function)
        return .init((c0, c1, c2, c3, c4, c5, c6, c7, c8, c9))
    }
    
    static func buildFinalResult<Content>(_ content: Content) -> Content where Content: Flavor {
        print(#function)
        print("\t", "-", type(of: content))
        return content
    }

}
