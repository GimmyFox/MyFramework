import SwiftUI

public struct GreetingView: View {
  public let name: String
  public let surname: String
  
  public init(name: String, surname: String) {
    self.name = name
    self.surname = surname
  }
  
  public var body: some View {
    VStack {
      Text("Hello, \(name)!")
        .foregroundStyle(.green)
    }
  }
}

#Preview {
  GreetingView(name: "Maks", surname: "...")
}
