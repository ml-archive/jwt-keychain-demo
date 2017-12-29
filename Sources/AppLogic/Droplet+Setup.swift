import Vapor
import JWTKeychain
import VaporMySQL
import VaporForms
import JWTKeychain

public func setup(_ drop: Droplet) throws {
    try drop.addProvider(VaporMySQL.Provider.self)
    try drop.addProvider(VaporForms.Provider.self)
    drop.preparations.append(User.self)

    let configuration = try JWTKeychain.Configuration(drop: drop)

    drop.collection(
        try ApiUserRoutes<User>(
            drop: drop,
            mailer: Mailer(configuration: configuration, drop: drop)
        )
    )
}
