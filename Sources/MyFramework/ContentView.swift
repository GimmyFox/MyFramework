import SwiftUI
import NukeUI

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
      LazyImage(request: .init(
        url: URL(string: "https://avatars.mds.yandex.net/i?id=01d16986e6cb5aad4c60b03ab44f95f2_l-12176797-images-thumbs&n=13")!,
        processors: [.resize(size: CGSize(width: UIScreen.main.bounds.width, height: 150))],
        priority: .low
      )) { state in
        if let image = state.image {
          image
            .resizable()
            .frame(maxWidth: .infinity, maxHeight: 250)
        }
      }
    }
  }
}

#Preview {
  GreetingView(name: "Maks", surname: "...")
}
