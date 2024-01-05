//
//  PracticeView.swift
//  TabViewSample
//
//  Created by Ryuga on 2024/01/05.
//

import SwiftUI


/// 参考：View を拡張したい場合は原則として extension を使用し、
/// 状態保持が必要な場合のみ ViewModifier を実装する。
/// Link: https://github.com/YusukeHosonuma/Effective-SwiftUI/discussions/31
///
struct PracticeView: View {
    var body: some View {
        Text("1. Hello, World!")
            .border(.blue)
            .padding()

        Text("2. Hello, World!")
            .blueBorder(width: 2)

        Text("3. Hello, World!")
            .modifier(BlueBorderModifier(width: 2))
    }
}


// 1. Use Extension
extension View {
    func blueBorder(width: CGFloat) -> some View {
        self.border(.blue, width: width)
    }
}

// 2. Define original modifier
struct BlueBorderModifier: ViewModifier {
    let width: CGFloat

    func body(content: Content) -> some View {
        content
            .border(.blue, width: width)
    }
}

#Preview {
    PracticeView()
}
