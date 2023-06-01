import Fluent
import Vapor
import CLDAP

func routes(_ app: Application) throws {
    app.get { req async in
        "\(LDAP_VENDOR_VERSION) \(LDAP_VENDOR_VERSION_MAJOR).\(LDAP_VENDOR_VERSION_MINOR).\(LDAP_VENDOR_VERSION_PATCH)"
    }

    app.get("hello") { req async -> String in
        "Hello, world!"
    }

    try app.register(collection: TodoController())
}
