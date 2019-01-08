// # Proxy Compiler 18.9.4-973a4d-20181128

import Foundation
import SAPOData

internal class NorthwindEntitiesMetadataParser {
    internal static let options: Int = (CSDLOption.allowCaseConflicts | CSDLOption.disableFacetWarnings | CSDLOption.disableNameValidation | CSDLOption.processMixedVersions | CSDLOption.retainOriginalText | CSDLOption.ignoreUndefinedTerms)

    internal static let parsed: CSDLDocument = NorthwindEntitiesMetadataParser.parse()

    static func parse() -> CSDLDocument {
        let parser: CSDLParser = CSDLParser()
        parser.logWarnings = false
        parser.csdlOptions = NorthwindEntitiesMetadataParser.options
        let metadata: CSDLDocument = parser.parseInProxy(NorthwindEntitiesMetadataText.xml, url: "ODataWebV3.Northwind.Model")
        metadata.proxyVersion = "18.9.4-973a4d-20181128"
        return metadata
    }
}
