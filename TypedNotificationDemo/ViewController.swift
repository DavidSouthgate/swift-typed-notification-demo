import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        addObserver(SubscriptionsChanged.self, using: self.handleSubscriptionsChanged(_:))
        
        //addObserver(SubscriptionsChanged.self, sender: self) { notification in
        //    self.handleSubscriptionsChanged(notification)
        //}
    }
    
    func handleSubscriptionsChanged(_ notification: SubscriptionsChanged)  {
        print(notification.sender)
        print("Subscribed to: ", notification.subscribed)
        print("Unsubscribed from: ", notification.unsusbscribed)
    }

    @IBAction func button(_ sender: Any) {
        post(SubscriptionsChanged(sender: self, subscribed: [123], unsusbscribed: [567]))
    }
}
