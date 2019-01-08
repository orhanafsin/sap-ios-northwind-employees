// # Proxy Compiler 18.9.4-973a4d-20181128

import Foundation
import SAPOData

open class Region: EntityValue {
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    private static var regionID_: Property = NorthwindEntitiesMetadata.EntityTypes.region.property(withName: "RegionID")

    private static var regionDescription_: Property = NorthwindEntitiesMetadata.EntityTypes.region.property(withName: "RegionDescription")

    private static var territories_: Property = NorthwindEntitiesMetadata.EntityTypes.region.property(withName: "Territories")

    public init(withDefaults: Bool = true) {
        super.init(withDefaults: withDefaults, type: NorthwindEntitiesMetadata.EntityTypes.region)
    }

    open class func array(from: EntityValueList) -> Array<Region> {
        return ArrayConverter.convert(from.toArray(), Array<Region>())
    }

    open func copy() -> Region {
        return CastRequired<Region>.from(self.copyEntity())
    }

    open override var isProxy: Bool {
        return true
    }

    open class func key(regionID: Int?) -> EntityKey {
        return EntityKey().with(name: "RegionID", value: IntValue.of(optional: regionID))
    }

    open var old: Region {
        return CastRequired<Region>.from(self.oldEntity)
    }

    open class var regionDescription: Property {
        get {
            objc_sync_enter(Region.self)
            defer { objc_sync_exit(Region.self) }
            do {
                return Region.regionDescription_
            }
        }
        set(value) {
            objc_sync_enter(Region.self)
            defer { objc_sync_exit(Region.self) }
            do {
                Region.regionDescription_ = value
            }
        }
    }

    open var regionDescription: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Region.regionDescription))
        }
        set(value) {
            self.setOptionalValue(for: Region.regionDescription, to: StringValue.of(optional: value))
        }
    }

    open class var regionID: Property {
        get {
            objc_sync_enter(Region.self)
            defer { objc_sync_exit(Region.self) }
            do {
                return Region.regionID_
            }
        }
        set(value) {
            objc_sync_enter(Region.self)
            defer { objc_sync_exit(Region.self) }
            do {
                Region.regionID_ = value
            }
        }
    }

    open var regionID: Int? {
        get {
            return IntValue.optional(self.optionalValue(for: Region.regionID))
        }
        set(value) {
            self.setOptionalValue(for: Region.regionID, to: IntValue.of(optional: value))
        }
    }

    open class var territories: Property {
        get {
            objc_sync_enter(Region.self)
            defer { objc_sync_exit(Region.self) }
            do {
                return Region.territories_
            }
        }
        set(value) {
            objc_sync_enter(Region.self)
            defer { objc_sync_exit(Region.self) }
            do {
                Region.territories_ = value
            }
        }
    }

    open var territories: Array<Territory> {
        get {
            return ArrayConverter.convert(EntityValueList.castRequired(self.requiredValue(for: Region.territories)).toArray(), Array<Territory>())
        }
        set(value) {
            Region.territories.setEntityList(in: self, to: EntityValueList.fromArray(ArrayConverter.convert(value, Array<EntityValue>())))
        }
    }
}
