// # Proxy Compiler 18.9.4-973a4d-20181128

import Foundation
import SAPOData

open class CustomerAndSuppliersByCity: EntityValue {
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    private static var city_: Property = NorthwindEntitiesMetadata.EntityTypes.customerAndSuppliersByCity.property(withName: "City")

    private static var companyName_: Property = NorthwindEntitiesMetadata.EntityTypes.customerAndSuppliersByCity.property(withName: "CompanyName")

    private static var contactName_: Property = NorthwindEntitiesMetadata.EntityTypes.customerAndSuppliersByCity.property(withName: "ContactName")

    private static var relationship_: Property = NorthwindEntitiesMetadata.EntityTypes.customerAndSuppliersByCity.property(withName: "Relationship")

    public init(withDefaults: Bool = true) {
        super.init(withDefaults: withDefaults, type: NorthwindEntitiesMetadata.EntityTypes.customerAndSuppliersByCity)
    }

    open class func array(from: EntityValueList) -> Array<CustomerAndSuppliersByCity> {
        return ArrayConverter.convert(from.toArray(), Array<CustomerAndSuppliersByCity>())
    }

    open class var city: Property {
        get {
            objc_sync_enter(CustomerAndSuppliersByCity.self)
            defer { objc_sync_exit(CustomerAndSuppliersByCity.self) }
            do {
                return CustomerAndSuppliersByCity.city_
            }
        }
        set(value) {
            objc_sync_enter(CustomerAndSuppliersByCity.self)
            defer { objc_sync_exit(CustomerAndSuppliersByCity.self) }
            do {
                CustomerAndSuppliersByCity.city_ = value
            }
        }
    }

    open var city: String? {
        get {
            return StringValue.optional(self.optionalValue(for: CustomerAndSuppliersByCity.city))
        }
        set(value) {
            self.setOptionalValue(for: CustomerAndSuppliersByCity.city, to: StringValue.of(optional: value))
        }
    }

    open class var companyName: Property {
        get {
            objc_sync_enter(CustomerAndSuppliersByCity.self)
            defer { objc_sync_exit(CustomerAndSuppliersByCity.self) }
            do {
                return CustomerAndSuppliersByCity.companyName_
            }
        }
        set(value) {
            objc_sync_enter(CustomerAndSuppliersByCity.self)
            defer { objc_sync_exit(CustomerAndSuppliersByCity.self) }
            do {
                CustomerAndSuppliersByCity.companyName_ = value
            }
        }
    }

    open var companyName: String? {
        get {
            return StringValue.optional(self.optionalValue(for: CustomerAndSuppliersByCity.companyName))
        }
        set(value) {
            self.setOptionalValue(for: CustomerAndSuppliersByCity.companyName, to: StringValue.of(optional: value))
        }
    }

    open class var contactName: Property {
        get {
            objc_sync_enter(CustomerAndSuppliersByCity.self)
            defer { objc_sync_exit(CustomerAndSuppliersByCity.self) }
            do {
                return CustomerAndSuppliersByCity.contactName_
            }
        }
        set(value) {
            objc_sync_enter(CustomerAndSuppliersByCity.self)
            defer { objc_sync_exit(CustomerAndSuppliersByCity.self) }
            do {
                CustomerAndSuppliersByCity.contactName_ = value
            }
        }
    }

    open var contactName: String? {
        get {
            return StringValue.optional(self.optionalValue(for: CustomerAndSuppliersByCity.contactName))
        }
        set(value) {
            self.setOptionalValue(for: CustomerAndSuppliersByCity.contactName, to: StringValue.of(optional: value))
        }
    }

    open func copy() -> CustomerAndSuppliersByCity {
        return CastRequired<CustomerAndSuppliersByCity>.from(self.copyEntity())
    }

    open override var isProxy: Bool {
        return true
    }

    open class func key(companyName: String?, relationship: String?) -> EntityKey {
        return EntityKey().with(name: "CompanyName", value: StringValue.of(optional: companyName)).with(name: "Relationship", value: StringValue.of(optional: relationship))
    }

    open var old: CustomerAndSuppliersByCity {
        return CastRequired<CustomerAndSuppliersByCity>.from(self.oldEntity)
    }

    open class var relationship: Property {
        get {
            objc_sync_enter(CustomerAndSuppliersByCity.self)
            defer { objc_sync_exit(CustomerAndSuppliersByCity.self) }
            do {
                return CustomerAndSuppliersByCity.relationship_
            }
        }
        set(value) {
            objc_sync_enter(CustomerAndSuppliersByCity.self)
            defer { objc_sync_exit(CustomerAndSuppliersByCity.self) }
            do {
                CustomerAndSuppliersByCity.relationship_ = value
            }
        }
    }

    open var relationship: String? {
        get {
            return StringValue.optional(self.optionalValue(for: CustomerAndSuppliersByCity.relationship))
        }
        set(value) {
            self.setOptionalValue(for: CustomerAndSuppliersByCity.relationship, to: StringValue.of(optional: value))
        }
    }
}
