// Created by Leopold Lemmermann on 01.09.2023.

import ComposableArchitecture
import SwiftUI

public struct CurrentView: View {
  @Environment(\.currentStore) var store

  public var body: some View {
    WithViewStore(store) { _ in
      // TODO: configure Current view
      Render()
    }
  }

  public init() {
    
  }
}

// MARK: - (RENDER)

extension CurrentView {
  struct Render: View {
    var body: some View {
      Text("CURRENT") // TODO: implement Current render view
    }
  }
}

// MARK: - (PREVIEWS)

#Preview {
  Color.accentColor
    .frame(maxWidth: .infinity, maxHeight: .infinity)
    .ignoresSafeArea()
    .overlay(alignment: .bottom, content: CurrentView.Render.init)
}
