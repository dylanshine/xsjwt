import Vapor
import JWT

public enum Configurer {
    public static func configure(_ app: Application) throws {
        
        guard let fileName = Environment.get("JWKS_KEYPAIR_FILE") else {
            fatalError("Please add JWKS filename to environment variables")
        }
        
        let jwksFilePath = app.directory.workingDirectory + fileName
        
        guard
            let jwks = FileManager.default.contents(atPath: jwksFilePath),
            let jwksString = String(data: jwks, encoding: .utf8)
        else {
            fatalError("Failed to load JWKS Keypair file at: \(jwksFilePath)")
        }
        
        try app.jwt.signers.use(jwksJSON: jwksString)
    }
}
