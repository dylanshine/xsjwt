import Vapor
import JWT

public struct Payload: JWTPayload, Authenticatable {
    let id: UUID
    let name: String
    let email: String
    let isAdmin: Bool
    let expiration: ExpirationClaim
    
    public func verify(using signer: JWTSigner) throws {
        try self.expiration.verifyNotExpired()
    }
    
    public init(id: UUID,
                name: String,
                email: String,
                isAdmin: Bool,
                expirationDate: Date) throws {
        self.id = id
        self.name = name
        self.email = email
        self.isAdmin = isAdmin
        self.expiration = ExpirationClaim(value: expirationDate)
    }
}
