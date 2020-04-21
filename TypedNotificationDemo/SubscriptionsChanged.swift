import Foundation
import TypedNotification

struct SubscriptionsChanged : TypedNotification {
    var sender: Any
    static var name = Notification.Name.didCreateShoppingList

    var subscribed: Set<Int> = []
    var unsusbscribed: Set<Int> = []
}

extension Notification.Name {
    static let didCreateShoppingList = Notification.Name("subscriptionsChanged")
}
