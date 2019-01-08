// # Proxy Compiler 18.9.4-973a4d-20181128

import Foundation
import SAPOData

open class CurrentProductList: EntityValue {
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    private static var productID_: Property = NorthwindEntitiesMetadata.EntityTypes.currentProductList.property(withName: "ProductID")

    private static var productName_: Property = NorthwindEntitiesMetadata.EntityTypes.currentProductList.property(withName: "ProductName")

    public init(withDefaults: Bool = true) {
        super.init(withDefaults: withDefaults, type: NorthwindEntitiesMetadata.EntityTypes.currentProductList)
    }

    open class func array(from: EntityValueList) -> Array<CurrentProductList> {
        return ArrayConverter.convert(from.toArray(), Array<CurrentProductList>())
    }

    open func copy() -> CurrentProductList {
        return CastRequired<CurrentProductList>.from(self.copyEntity())
    }

    open override var isProxy: Bool {
        return true
    }

    open class func key(productID: Int?, productName: String?) -> EntityKey {
        return EntityKey().with(name: "ProductID", value: IntValue.of(optional: productID)).with(name: "ProductName", value: StringValue.of(optional: productName))
    }

    open var old: CurrentProductList {
        return CastRequired<CurrentProductList>.from(self.oldEntity)
    }

    open class var productID: Property {
        get {
            objc_sync_enter(CurrentProductList.self)
            defer { objc_sync_exit(CurrentProductList.self) }
            do {
                return CurrentProductList.productID_
            }
        }
        set(value) {
            objc_sync_enter(CurrentProductList.self)
            defer { objc_sync_exit(CurrentProductList.self) }
            do {
                CurrentProductList.productID_ = value
            }
        }
    }

    open var productID: Int? {
        get {
            return IntValue.optional(self.optionalValue(for: CurrentProductList.productID))
        }
        set(value) {
            self.setOptionalValue(for: CurrentProductList.productID, to: IntValue.of(optional: value))
        }
    }

    open class var productName: Property {
        get {
            objc_sync_enter(CurrentProductList.self)
            defer { objc_sync_exit(CurrentProductList.self) }
            do {
                return CurrentProductList.productName_
            }
        }
        set(value) {
            objc_sync_enter(CurrentProductList.self)
            defer { objc_sync_exit(CurrentProductList.self) }
            do {
                CurrentProductList.productName_ = value
            }
        }
    }

    open var productName: String? {
        get {
            return StringValue.optional(self.optionalValue(for: CurrentProductList.productName))
        }
        set(value) {
            self.setOptionalValue(for: CurrentProductList.productName, to: StringValue.of(optional: value))
        }
    }
}
