import Vapor
import JWT

public struct Payload: JWTPayload, Authenticatable {
    public let id: UUID
    public let name: String
    public let email: String
    public let isAdmin: Bool
    public let expiration: ExpirationClaim
    
    public func verify(using signer: JWTSigner) throws {
        try self.expiration.verifyNotExpired()
    }
    
    public init(id: UUID,
                name: String,
                email: String,
                isAdmin: Bool,
                expirationDate: Date) {
        self.id = id
        self.name = name
        self.email = email
        self.isAdmin = isAdmin
        self.expiration = ExpirationClaim(value: expirationDate)
    }
}
