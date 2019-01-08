// # Proxy Compiler 18.9.4-973a4d-20181128

import Foundation
import SAPOData

open class Supplier: EntityValue {
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    private static var supplierID_: Property = NorthwindEntitiesMetadata.EntityTypes.supplier.property(withName: "SupplierID")

    private static var companyName_: Property = NorthwindEntitiesMetadata.EntityTypes.supplier.property(withName: "CompanyName")

    private static var contactName_: Property = NorthwindEntitiesMetadata.EntityTypes.supplier.property(withName: "ContactName")

    private static var contactTitle_: Property = NorthwindEntitiesMetadata.EntityTypes.supplier.property(withName: "ContactTitle")

    private static var address_: Property = NorthwindEntitiesMetadata.EntityTypes.supplier.property(withName: "Address")

    private static var city_: Property = NorthwindEntitiesMetadata.EntityTypes.supplier.property(withName: "City")

    private static var region_: Property = NorthwindEntitiesMetadata.EntityTypes.supplier.property(withName: "Region")

    private static var postalCode_: Property = NorthwindEntitiesMetadata.EntityTypes.supplier.property(withName: "PostalCode")

    private static var country_: Property = NorthwindEntitiesMetadata.EntityTypes.supplier.property(withName: "Country")

    private static var phone_: Property = NorthwindEntitiesMetadata.EntityTypes.supplier.property(withName: "Phone")

    private static var fax_: Property = NorthwindEntitiesMetadata.EntityTypes.supplier.property(withName: "Fax")

    private static var homePage_: Property = NorthwindEntitiesMetadata.EntityTypes.supplier.property(withName: "HomePage")

    private static var products_: Property = NorthwindEntitiesMetadata.EntityTypes.supplier.property(withName: "Products")

    public init(withDefaults: Bool = true) {
        super.init(withDefaults: withDefaults, type: NorthwindEntitiesMetadata.EntityTypes.supplier)
    }

    open class var address: Property {
        get {
            objc_sync_enter(Supplier.self)
            defer { objc_sync_exit(Supplier.self) }
            do {
                return Supplier.address_
            }
        }
        set(value) {
            objc_sync_enter(Supplier.self)
            defer { objc_sync_exit(Supplier.self) }
            do {
                Supplier.address_ = value
            }
        }
    }

    open var address: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Supplier.address))
        }
        set(value) {
            self.setOptionalValue(for: Supplier.address, to: StringValue.of(optional: value))
        }
    }

    open class func array(from: EntityValueList) -> Array<Supplier> {
        return ArrayConverter.convert(from.toArray(), Array<Supplier>())
    }

    open class var city: Property {
        get {
            objc_sync_enter(Supplier.self)
            defer { objc_sync_exit(Supplier.self) }
            do {
                return Supplier.city_
            }
        }
        set(value) {
            objc_sync_enter(Supplier.self)
            defer { objc_sync_exit(Supplier.self) }
            do {
                Supplier.city_ = value
            }
        }
    }

    open var city: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Supplier.city))
        }
        set(value) {
            self.setOptionalValue(for: Supplier.city, to: StringValue.of(optional: value))
        }
    }

    open class var companyName: Property {
        get {
            objc_sync_enter(Supplier.self)
            defer { objc_sync_exit(Supplier.self) }
            do {
                return Supplier.companyName_
            }
        }
        set(value) {
            objc_sync_enter(Supplier.self)
            defer { objc_sync_exit(Supplier.self) }
            do {
                Supplier.companyName_ = value
            }
        }
    }

    open var companyName: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Supplier.companyName))
        }
        set(value) {
            self.setOptionalValue(for: Supplier.companyName, to: StringValue.of(optional: value))
        }
    }

    open class var contactName: Property {
        get {
            objc_sync_enter(Supplier.self)
            defer { objc_sync_exit(Supplier.self) }
            do {
                return Supplier.contactName_
            }
        }
        set(value) {
            objc_sync_enter(Supplier.self)
            defer { objc_sync_exit(Supplier.self) }
            do {
                Supplier.contactName_ = value
            }
        }
    }

    open var contactName: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Supplier.contactName))
        }
        set(value) {
            self.setOptionalValue(for: Supplier.contactName, to: StringValue.of(optional: value))
        }
    }

    open class var contactTitle: Property {
        get {
            objc_sync_enter(Supplier.self)
            defer { objc_sync_exit(Supplier.self) }
            do {
                return Supplier.contactTitle_
            }
        }
        set(value) {
            objc_sync_enter(Supplier.self)
            defer { objc_sync_exit(Supplier.self) }
            do {
                Supplier.contactTitle_ = value
            }
        }
    }

    open var contactTitle: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Supplier.contactTitle))
        }
        set(value) {
            self.setOptionalValue(for: Supplier.contactTitle, to: StringValue.of(optional: value))
        }
    }

    open func copy() -> Supplier {
        return CastRequired<Supplier>.from(self.copyEntity())
    }

    open class var country: Property {
        get {
            objc_sync_enter(Supplier.self)
            defer { objc_sync_exit(Supplier.self) }
            do {
                return Supplier.country_
            }
        }
        set(value) {
            objc_sync_enter(Supplier.self)
            defer { objc_sync_exit(Supplier.self) }
            do {
                Supplier.country_ = value
            }
        }
    }

    open var country: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Supplier.country))
        }
        set(value) {
            self.setOptionalValue(for: Supplier.country, to: StringValue.of(optional: value))
        }
    }

    open class var fax: Property {
        get {
            objc_sync_enter(Supplier.self)
            defer { objc_sync_exit(Supplier.self) }
            do {
                return Supplier.fax_
            }
        }
        set(value) {
            objc_sync_enter(Supplier.self)
            defer { objc_sync_exit(Supplier.self) }
            do {
                Supplier.fax_ = value
            }
        }
    }

    open var fax: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Supplier.fax))
        }
        set(value) {
            self.setOptionalValue(for: Supplier.fax, to: StringValue.of(optional: value))
        }
    }

    open class var homePage: Property {
        get {
            objc_sync_enter(Supplier.self)
            defer { objc_sync_exit(Supplier.self) }
            do {
                return Supplier.homePage_
            }
        }
        set(value) {
            objc_sync_enter(Supplier.self)
            defer { objc_sync_exit(Supplier.self) }
            do {
                Supplier.homePage_ = value
            }
        }
    }

    open var homePage: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Supplier.homePage))
        }
        set(value) {
            self.setOptionalValue(for: Supplier.homePage, to: StringValue.of(optional: value))
        }
    }

    open override var isProxy: Bool {
        return true
    }

    open class func key(supplierID: Int?) -> EntityKey {
        return EntityKey().with(name: "SupplierID", value: IntValue.of(optional: supplierID))
    }

    open var old: Supplier {
        return CastRequired<Supplier>.from(self.oldEntity)
    }

    open class var phone: Property {
        get {
            objc_sync_enter(Supplier.self)
            defer { objc_sync_exit(Supplier.self) }
            do {
                return Supplier.phone_
            }
        }
        set(value) {
            objc_sync_enter(Supplier.self)
            defer { objc_sync_exit(Supplier.self) }
            do {
                Supplier.phone_ = value
            }
        }
    }

    open var phone: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Supplier.phone))
        }
        set(value) {
            self.setOptionalValue(for: Supplier.phone, to: StringValue.of(optional: value))
        }
    }

    open class var postalCode: Property {
        get {
            objc_sync_enter(Supplier.self)
            defer { objc_sync_exit(Supplier.self) }
            do {
                return Supplier.postalCode_
            }
        }
        set(value) {
            objc_sync_enter(Supplier.self)
            defer { objc_sync_exit(Supplier.self) }
            do {
                Supplier.postalCode_ = value
            }
        }
    }

    open var postalCode: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Supplier.postalCode))
        }
        set(value) {
            self.setOptionalValue(for: Supplier.postalCode, to: StringValue.of(optional: value))
        }
    }

    open class var products: Property {
        get {
            objc_sync_enter(Supplier.self)
            defer { objc_sync_exit(Supplier.self) }
            do {
                return Supplier.products_
            }
        }
        set(value) {
            objc_sync_enter(Supplier.self)
            defer { objc_sync_exit(Supplier.self) }
            do {
                Supplier.products_ = value
            }
        }
    }

    open var products: Array<Product> {
        get {
            return ArrayConverter.convert(EntityValueList.castRequired(self.requiredValue(for: Supplier.products)).toArray(), Array<Product>())
        }
        set(value) {
            Supplier.products.setEntityList(in: self, to: EntityValueList.fromArray(ArrayConverter.convert(value, Array<EntityValue>())))
        }
    }

    open class var region: Property {
        get {
            objc_sync_enter(Supplier.self)
            defer { objc_sync_exit(Supplier.self) }
            do {
                return Supplier.region_
            }
        }
        set(value) {
            objc_sync_enter(Supplier.self)
            defer { objc_sync_exit(Supplier.self) }
            do {
                Supplier.region_ = value
            }
        }
    }

    open var region: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Supplier.region))
        }
        set(value) {
            self.setOptionalValue(for: Supplier.region, to: StringValue.of(optional: value))
        }
    }

    open class var supplierID: Property {
        get {
            objc_sync_enter(Supplier.self)
            defer { objc_sync_exit(Supplier.self) }
            do {
                return Supplier.supplierID_
            }
        }
        set(value) {
            objc_sync_enter(Supplier.self)
            defer { objc_sync_exit(Supplier.self) }
            do {
                Supplier.supplierID_ = value
            }
        }
    }

    open var supplierID: Int? {
        get {
            return IntValue.optional(self.optionalValue(for: Supplier.supplierID))
        }
        set(value) {
            self.setOptionalValue(for: Supplier.supplierID, to: IntValue.of(optional: value))
        }
    }
}
