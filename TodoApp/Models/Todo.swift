import Foundation

struct Todo: Identifiable {
    let id = UUID()
    var title: String
    var isCompleted: Bool
}

enum FilterType{
    case all
    case completed
    case pending
}
