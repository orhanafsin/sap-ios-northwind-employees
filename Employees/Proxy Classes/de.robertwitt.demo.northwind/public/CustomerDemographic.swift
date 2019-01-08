// # Proxy Compiler 18.9.4-973a4d-20181128

import Foundation
import SAPOData

open class CustomerDemographic: EntityValue {
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    private static var customerTypeID_: Property = NorthwindEntitiesMetadata.EntityTypes.customerDemographic.property(withName: "CustomerTypeID")

    private static var customerDesc_: Property = NorthwindEntitiesMetadata.EntityTypes.customerDemographic.property(withName: "CustomerDesc")

    private static var customers_: Property = NorthwindEntitiesMetadata.EntityTypes.customerDemographic.property(withName: "Customers")

    public init(withDefaults: Bool = true) {
        super.init(withDefaults: withDefaults, type: NorthwindEntitiesMetadata.EntityTypes.customerDemographic)
    }

    open class func array(from: EntityValueList) -> Array<CustomerDemographic> {
        return ArrayConverter.convert(from.toArray(), Array<CustomerDemographic>())
    }

    open func copy() -> CustomerDemographic {
        return CastRequired<CustomerDemographic>.from(self.copyEntity())
    }

    open class var customerDesc: Property {
        get {
            objc_sync_enter(CustomerDemographic.self)
            defer { objc_sync_exit(CustomerDemographic.self) }
            do {
                return CustomerDemographic.customerDesc_
            }
        }
        set(value) {
            objc_sync_enter(CustomerDemographic.self)
            defer { objc_sync_exit(CustomerDemographic.self) }
            do {
                CustomerDemographic.customerDesc_ = value
            }
        }
    }

    open var customerDesc: String? {
        get {
            return StringValue.optional(self.optionalValue(for: CustomerDemographic.customerDesc))
        }
        set(value) {
            self.setOptionalValue(for: CustomerDemographic.customerDesc, to: StringValue.of(optional: value))
        }
    }

    open class var customerTypeID: Property {
        get {
            objc_sync_enter(CustomerDemographic.self)
            defer { objc_sync_exit(CustomerDemographic.self) }
            do {
                return CustomerDemographic.customerTypeID_
            }
        }
        set(value) {
            objc_sync_enter(CustomerDemographic.self)
            defer { objc_sync_exit(CustomerDemographic.self) }
            do {
                CustomerDemographic.customerTypeID_ = value
            }
        }
    }

    open var customerTypeID: String? {
        get {
            return StringValue.optional(self.optionalValue(for: CustomerDemographic.customerTypeID))
        }
        set(value) {
            self.setOptionalValue(for: CustomerDemographic.customerTypeID, to: StringValue.of(optional: value))
        }
    }

    open class var customers: Property {
        get {
            objc_sync_enter(CustomerDemographic.self)
            defer { objc_sync_exit(CustomerDemographic.self) }
            do {
                return CustomerDemographic.customers_
            }
        }
        set(value) {
            objc_sync_enter(CustomerDemographic.self)
            defer { objc_sync_exit(CustomerDemographic.self) }
            do {
                CustomerDemographic.customers_ = value
            }
        }
    }

    open var customers: Array<Customer> {
        get {
            return ArrayConverter.convert(EntityValueList.castRequired(self.requiredValue(for: CustomerDemographic.customers)).toArray(), Array<Customer>())
        }
        set(value) {
            CustomerDemographic.customers.setEntityList(in: self, to: EntityValueList.fromArray(ArrayConverter.convert(value, Array<EntityValue>())))
        }
    }

    open override var isProxy: Bool {
        return true
    }

    open class func key(customerTypeID: String?) -> EntityKey {
        return EntityKey().with(name: "CustomerTypeID", value: StringValue.of(optional: customerTypeID))
    }

    open var old: CustomerDemographic {
        return CastRequired<CustomerDemographic>.from(self.oldEntity)
    }
}
