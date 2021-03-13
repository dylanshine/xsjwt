import Vapor
import JWT

public struct Authenticator: JWTAuthenticator {
    public typealias Payload = XSJWT.Payload
    
    public func authenticate(jwt: Payload, for request: Request) -> EventLoopFuture<Void> {
        request.auth.login(jwt)
        return request.eventLoop.makeSucceededFuture(())
    }
}
