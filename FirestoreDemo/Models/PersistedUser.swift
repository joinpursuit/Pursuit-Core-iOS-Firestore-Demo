import Foundation
import FirebaseAuth

struct PersistedUser {
    let name: String?
    let email: String?
    let uid: String
    
    init(from user: User) {
        self.name = user.displayName
        self.email = user.email
        self.uid = user.uid
    }
    
    var fieldsDict: [String: Any] {
        return [
            "name": name ?? "",
            "email": email ?? ""
        ]
    }
}
