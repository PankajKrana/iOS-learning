import Foundation


enum TabModel: String, CaseIterable {
    
    case home = "house"
    case search = "magnifyingglass"
    case credit = "creditcard.fill"
    case profile = "person"

    var title: String {
        switch self {
        case .home:
            return "Home"
        case .search:
            return "Search"
        case .credit:
            return "Credit"
        case .profile:
            return "Profile"
        }
    }
}
