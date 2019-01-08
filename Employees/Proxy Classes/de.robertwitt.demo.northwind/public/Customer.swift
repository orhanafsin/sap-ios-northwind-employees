// # Proxy Compiler 18.9.4-973a4d-20181128

import Foundation
import SAPOData

open class Customer: EntityValue {
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    private static var customerID_: Property = NorthwindEntitiesMetadata.EntityTypes.customer.property(withName: "CustomerID")

    private static var companyName_: Property = NorthwindEntitiesMetadata.EntityTypes.customer.property(withName: "CompanyName")

    private static var contactName_: Property = NorthwindEntitiesMetadata.EntityTypes.customer.property(withName: "ContactName")

    private static var contactTitle_: Property = NorthwindEntitiesMetadata.EntityTypes.customer.property(withName: "ContactTitle")

    private static var address_: Property = NorthwindEntitiesMetadata.EntityTypes.customer.property(withName: "Address")

    private static var city_: Property = NorthwindEntitiesMetadata.EntityTypes.customer.property(withName: "City")

    private static var region_: Property = NorthwindEntitiesMetadata.EntityTypes.customer.property(withName: "Region")

    private static var postalCode_: Property = NorthwindEntitiesMetadata.EntityTypes.customer.property(withName: "PostalCode")

    private static var country_: Property = NorthwindEntitiesMetadata.EntityTypes.customer.property(withName: "Country")

    private static var phone_: Property = NorthwindEntitiesMetadata.EntityTypes.customer.property(withName: "Phone")

    private static var fax_: Property = NorthwindEntitiesMetadata.EntityTypes.customer.property(withName: "Fax")

    private static var orders_: Property = NorthwindEntitiesMetadata.EntityTypes.customer.property(withName: "Orders")

    private static var customerDemographics_: Property = NorthwindEntitiesMetadata.EntityTypes.customer.property(withName: "CustomerDemographics")

    public init(withDefaults: Bool = true) {
        super.init(withDefaults: withDefaults, type: NorthwindEntitiesMetadata.EntityTypes.customer)
    }

    open class var address: Property {
        get {
            objc_sync_enter(Customer.self)
            defer { objc_sync_exit(Customer.self) }
            do {
                return Customer.address_
            }
        }
        set(value) {
            objc_sync_enter(Customer.self)
            defer { objc_sync_exit(Customer.self) }
            do {
                Customer.address_ = value
            }
        }
    }

    open var address: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Customer.address))
        }
        set(value) {
            self.setOptionalValue(for: Customer.address, to: StringValue.of(optional: value))
        }
    }

    open class func array(from: EntityValueList) -> Array<Customer> {
        return ArrayConverter.convert(from.toArray(), Array<Customer>())
    }

    open class var city: Property {
        get {
            objc_sync_enter(Customer.self)
            defer { objc_sync_exit(Customer.self) }
            do {
                return Customer.city_
            }
        }
        set(value) {
            objc_sync_enter(Customer.self)
            defer { objc_sync_exit(Customer.self) }
            do {
                Customer.city_ = value
            }
        }
    }

    open var city: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Customer.city))
        }
        set(value) {
            self.setOptionalValue(for: Customer.city, to: StringValue.of(optional: value))
        }
    }

    open class var companyName: Property {
        get {
            objc_sync_enter(Customer.self)
            defer { objc_sync_exit(Customer.self) }
            do {
                return Customer.companyName_
            }
        }
        set(value) {
            objc_sync_enter(Customer.self)
            defer { objc_sync_exit(Customer.self) }
            do {
                Customer.companyName_ = value
            }
        }
    }

    open var companyName: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Customer.companyName))
        }
        set(value) {
            self.setOptionalValue(for: Customer.companyName, to: StringValue.of(optional: value))
        }
    }

    open class var contactName: Property {
        get {
            objc_sync_enter(Customer.self)
            defer { objc_sync_exit(Customer.self) }
            do {
                return Customer.contactName_
            }
        }
        set(value) {
            objc_sync_enter(Customer.self)
            defer { objc_sync_exit(Customer.self) }
            do {
                Customer.contactName_ = value
            }
        }
    }

    open var contactName: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Customer.contactName))
        }
        set(value) {
            self.setOptionalValue(for: Customer.contactName, to: StringValue.of(optional: value))
        }
    }

    open class var contactTitle: Property {
        get {
            objc_sync_enter(Customer.self)
            defer { objc_sync_exit(Customer.self) }
            do {
                return Customer.contactTitle_
            }
        }
        set(value) {
            objc_sync_enter(Customer.self)
            defer { objc_sync_exit(Customer.self) }
            do {
                Customer.contactTitle_ = value
            }
        }
    }

    open var contactTitle: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Customer.contactTitle))
        }
        set(value) {
            self.setOptionalValue(for: Customer.contactTitle, to: StringValue.of(optional: value))
        }
    }

    open func copy() -> Customer {
        return CastRequired<Customer>.from(self.copyEntity())
    }

    open class var country: Property {
        get {
            objc_sync_enter(Customer.self)
            defer { objc_sync_exit(Customer.self) }
            do {
                return Customer.country_
            }
        }
        set(value) {
            objc_sync_enter(Customer.self)
            defer { objc_sync_exit(Customer.self) }
            do {
                Customer.country_ = value
            }
        }
    }

    open var country: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Customer.country))
        }
        set(value) {
            self.setOptionalValue(for: Customer.country, to: StringValue.of(optional: value))
        }
    }

    open class var customerDemographics: Property {
        get {
            objc_sync_enter(Customer.self)
            defer { objc_sync_exit(Customer.self) }
            do {
                return Customer.customerDemographics_
            }
        }
        set(value) {
            objc_sync_enter(Customer.self)
            defer { objc_sync_exit(Customer.self) }
            do {
                Customer.customerDemographics_ = value
            }
        }
    }

    open var customerDemographics: Array<CustomerDemographic> {
        get {
            return ArrayConverter.convert(EntityValueList.castRequired(self.requiredValue(for: Customer.customerDemographics)).toArray(), Array<CustomerDemographic>())
        }
        set(value) {
            Customer.customerDemographics.setEntityList(in: self, to: EntityValueList.fromArray(ArrayConverter.convert(value, Array<EntityValue>())))
        }
    }

    open class var customerID: Property {
        get {
            objc_sync_enter(Customer.self)
            defer { objc_sync_exit(Customer.self) }
            do {
                return Customer.customerID_
            }
        }
        set(value) {
            objc_sync_enter(Customer.self)
            defer { objc_sync_exit(Customer.self) }
            do {
                Customer.customerID_ = value
            }
        }
    }

    open var customerID: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Customer.customerID))
        }
        set(value) {
            self.setOptionalValue(for: Customer.customerID, to: StringValue.of(optional: value))
        }
    }

    open class var fax: Property {
        get {
            objc_sync_enter(Customer.self)
            defer { objc_sync_exit(Customer.self) }
            do {
                return Customer.fax_
            }
        }
        set(value) {
            objc_sync_enter(Customer.self)
            defer { objc_sync_exit(Customer.self) }
            do {
                Customer.fax_ = value
            }
        }
    }

    open var fax: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Customer.fax))
        }
        set(value) {
            self.setOptionalValue(for: Customer.fax, to: StringValue.of(optional: value))
        }
    }

    open override var isProxy: Bool {
        return true
    }

    open class func key(customerID: String?) -> EntityKey {
        return EntityKey().with(name: "CustomerID", value: StringValue.of(optional: customerID))
    }

    open var old: Customer {
        return CastRequired<Customer>.from(self.oldEntity)
    }

    open class var orders: Property {
        get {
            objc_sync_enter(Customer.self)
            defer { objc_sync_exit(Customer.self) }
            do {
                return Customer.orders_
            }
        }
        set(value) {
            objc_sync_enter(Customer.self)
            defer { objc_sync_exit(Customer.self) }
            do {
                Customer.orders_ = value
            }
        }
    }

    open var orders: Array<Order> {
        get {
            return ArrayConverter.convert(EntityValueList.castRequired(self.requiredValue(for: Customer.orders)).toArray(), Array<Order>())
        }
        set(value) {
            Customer.orders.setEntityList(in: self, to: EntityValueList.fromArray(ArrayConverter.convert(value, Array<EntityValue>())))
        }
    }

    open class var phone: Property {
        get {
            objc_sync_enter(Customer.self)
            defer { objc_sync_exit(Customer.self) }
            do {
                return Customer.phone_
            }
        }
        set(value) {
            objc_sync_enter(Customer.self)
            defer { objc_sync_exit(Customer.self) }
            do {
                Customer.phone_ = value
            }
        }
    }

    open var phone: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Customer.phone))
        }
        set(value) {
            self.setOptionalValue(for: Customer.phone, to: StringValue.of(optional: value))
        }
    }

    open class var postalCode: Property {
        get {
            objc_sync_enter(Customer.self)
            defer { objc_sync_exit(Customer.self) }
            do {
                return Customer.postalCode_
            }
        }
        set(value) {
            objc_sync_enter(Customer.self)
            defer { objc_sync_exit(Customer.self) }
            do {
                Customer.postalCode_ = value
            }
        }
    }

    open var postalCode: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Customer.postalCode))
        }
        set(value) {
            self.setOptionalValue(for: Customer.postalCode, to: StringValue.of(optional: value))
        }
    }

    open class var region: Property {
        get {
            objc_sync_enter(Customer.self)
            defer { objc_sync_exit(Customer.self) }
            do {
                return Customer.region_
            }
        }
        set(value) {
            objc_sync_enter(Customer.self)
            defer { objc_sync_exit(Customer.self) }
            do {
                Customer.region_ = value
            }
        }
    }

    open var region: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Customer.region))
        }
        set(value) {
            self.setOptionalValue(for: Customer.region, to: StringValue.of(optional: value))
        }
    }
}
