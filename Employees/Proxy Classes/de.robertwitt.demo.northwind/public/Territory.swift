// # Proxy Compiler 18.9.4-973a4d-20181128

import Foundation
import SAPOData

open class Territory: EntityValue {
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    private static var territoryID_: Property = NorthwindEntitiesMetadata.EntityTypes.territory.property(withName: "TerritoryID")

    private static var territoryDescription_: Property = NorthwindEntitiesMetadata.EntityTypes.territory.property(withName: "TerritoryDescription")

    private static var regionID_: Property = NorthwindEntitiesMetadata.EntityTypes.territory.property(withName: "RegionID")

    private static var region_: Property = NorthwindEntitiesMetadata.EntityTypes.territory.property(withName: "Region")

    private static var employees_: Property = NorthwindEntitiesMetadata.EntityTypes.territory.property(withName: "Employees")

    public init(withDefaults: Bool = true) {
        super.init(withDefaults: withDefaults, type: NorthwindEntitiesMetadata.EntityTypes.territory)
    }

    open class func array(from: EntityValueList) -> Array<Territory> {
        return ArrayConverter.convert(from.toArray(), Array<Territory>())
    }

    open func copy() -> Territory {
        return CastRequired<Territory>.from(self.copyEntity())
    }

    open class var employees: Property {
        get {
            objc_sync_enter(Territory.self)
            defer { objc_sync_exit(Territory.self) }
            do {
                return Territory.employees_
            }
        }
        set(value) {
            objc_sync_enter(Territory.self)
            defer { objc_sync_exit(Territory.self) }
            do {
                Territory.employees_ = value
            }
        }
    }

    open var employees: Array<Employee> {
        get {
            return ArrayConverter.convert(EntityValueList.castRequired(self.requiredValue(for: Territory.employees)).toArray(), Array<Employee>())
        }
        set(value) {
            Territory.employees.setEntityList(in: self, to: EntityValueList.fromArray(ArrayConverter.convert(value, Array<EntityValue>())))
        }
    }

    open override var isProxy: Bool {
        return true
    }

    open class func key(territoryID: String?) -> EntityKey {
        return EntityKey().with(name: "TerritoryID", value: StringValue.of(optional: territoryID))
    }

    open var old: Territory {
        return CastRequired<Territory>.from(self.oldEntity)
    }

    open class var region: Property {
        get {
            objc_sync_enter(Territory.self)
            defer { objc_sync_exit(Territory.self) }
            do {
                return Territory.region_
            }
        }
        set(value) {
            objc_sync_enter(Territory.self)
            defer { objc_sync_exit(Territory.self) }
            do {
                Territory.region_ = value
            }
        }
    }

    open var region: Region? {
        get {
            return CastOptional<Region>.from(self.optionalValue(for: Territory.region))
        }
        set(value) {
            self.setOptionalValue(for: Territory.region, to: value)
        }
    }

    open class var regionID: Property {
        get {
            objc_sync_enter(Territory.self)
            defer { objc_sync_exit(Territory.self) }
            do {
                return Territory.regionID_
            }
        }
        set(value) {
            objc_sync_enter(Territory.self)
            defer { objc_sync_exit(Territory.self) }
            do {
                Territory.regionID_ = value
            }
        }
    }

    open var regionID: Int? {
        get {
            return IntValue.optional(self.optionalValue(for: Territory.regionID))
        }
        set(value) {
            self.setOptionalValue(for: Territory.regionID, to: IntValue.of(optional: value))
        }
    }

    open class var territoryDescription: Property {
        get {
            objc_sync_enter(Territory.self)
            defer { objc_sync_exit(Territory.self) }
            do {
                return Territory.territoryDescription_
            }
        }
        set(value) {
            objc_sync_enter(Territory.self)
            defer { objc_sync_exit(Territory.self) }
            do {
                Territory.territoryDescription_ = value
            }
        }
    }

    open var territoryDescription: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Territory.territoryDescription))
        }
        set(value) {
            self.setOptionalValue(for: Territory.territoryDescription, to: StringValue.of(optional: value))
        }
    }

    open class var territoryID: Property {
        get {
            objc_sync_enter(Territory.self)
            defer { objc_sync_exit(Territory.self) }
            do {
                return Territory.territoryID_
            }
        }
        set(value) {
            objc_sync_enter(Territory.self)
            defer { objc_sync_exit(Territory.self) }
            do {
                Territory.territoryID_ = value
            }
        }
    }

    open var territoryID: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Territory.territoryID))
        }
        set(value) {
            self.setOptionalValue(for: Territory.territoryID, to: StringValue.of(optional: value))
        }
    }
}
