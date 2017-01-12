import Vapor
import JWTKeychain
import VaporMySQL

let drop = Droplet()

try drop.addProvider(VaporMySQL.Provider.self)
try drop.addProvider(JWTKeychain.Provider.self)

drop.preparations.append(User.self)

drop.group("api") { api in
    api.group("v1") { api in
        api.collection(UserRoutes(drop: drop))
    }
}



drop.run()
