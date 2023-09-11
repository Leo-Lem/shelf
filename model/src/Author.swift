// Created by Leopold Lemmermann on 05.09.23.

import SwiftData
import struct Foundation.UUID

@Model
public class Author {
  @Attribute(.unique) public let id: UUID
  public let name: String
  public let brief: String

  @Relationship(.cascade) public var books: [Book] = []

  public init(name: String, brief: String, books: [Book]) {
    id = UUID()
    self.name = name
    self.brief = brief
    self.books = books
  }
}