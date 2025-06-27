import SwiftUI

public struct GreetingView: View {
  public let name: String
  public var body: some View {
    VStack {
      Text("Hello, \(name)!")
        .foregroundStyle(.green)
    }
  }
}

#Preview {
  GreetingView(name: "Maks")
}
