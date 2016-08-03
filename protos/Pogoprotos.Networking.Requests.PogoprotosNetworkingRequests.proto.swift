// Generated by the Protocol Buffers 3.0 compiler.  DO NOT EDIT!
// Source file "POGOProtos.Networking.Requests.proto"
// Syntax "Proto3"

import Foundation
import ProtocolBuffers


public func == (lhs: Pogoprotos.Networking.Requests.Request, rhs: Pogoprotos.Networking.Requests.Request) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasRequestType == rhs.hasRequestType) && (!lhs.hasRequestType || lhs.requestType == rhs.requestType)
  fieldCheck = fieldCheck && (lhs.hasRequestMessage == rhs.hasRequestMessage) && (!lhs.hasRequestMessage || lhs.requestMessage == rhs.requestMessage)
  fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
  return fieldCheck
}

public extension Pogoprotos.Networking.Requests {
  public struct PogoprotosNetworkingRequestsRoot {
    public static var sharedInstance : PogoprotosNetworkingRequestsRoot {
     struct Static {
         static let instance : PogoprotosNetworkingRequestsRoot = PogoprotosNetworkingRequestsRoot()
     }
     return Static.instance
    }
    public var extensionRegistry:ExtensionRegistry

    init() {
      extensionRegistry = ExtensionRegistry()
      registerAllExtensions(extensionRegistry)
    }
    public func registerAllExtensions(registry:ExtensionRegistry) {
    }
  }



  //Enum type declaration start 

  public enum RequestType:Int32, CustomDebugStringConvertible, CustomStringConvertible {
    // No implementation required
    case MethodUnset = 0

    // Implemented [R & M]
    case PlayerUpdate = 1

    // Implemented [R & M]
    case GetPlayer = 2

    // Implemented [R & M]
    case GetInventory = 4

    // Implemented [R & M]
    case DownloadSettings = 5

    // Implemented [R & M]
    case DownloadItemTemplates = 6

    // Implemented [R & M]
    case DownloadRemoteConfigVersion = 7

    // Implemented [R & M]
    case FortSearch = 101

    // Implemented [R & M]
    case Encounter = 102

    // Implemented [R & M]
    case CatchPokemon = 103

    // Implemented [R & M]
    case FortDetails = 104

    // Can't find this one
    case ItemUse = 105

    // Implemented [R & M]
    case GetMapObjects = 106

    // Implemented [R & M]
    case FortDeployPokemon = 110

    // Implemented [R & M]
    case FortRecallPokemon = 111

    // Implemented [R & M]
    case ReleasePokemon = 112

    // Implemented [R & M]
    case UseItemPotion = 113

    // Implemented [R & M]
    case UseItemCapture = 114

    // Can't find this one
    case UseItemFlee = 115

    // Implemented [R & M]
    case UseItemRevive = 116

    // Not yet implemented in the game
    case TradeSearch = 117

    // Not yet implemented in the game
    case TradeOffer = 118

    // Not yet implemented in the game
    case TradeResponse = 119

    // Not yet implemented in the game
    case TradeResult = 120

    // Implemented [R & M]
    case GetPlayerProfile = 121

    // Can't find this one
    case GetItemPack = 122

    // Can't find this one
    case BuyItemPack = 123

    // Can't find this one
    case BuyGemPack = 124

    // Implemented [R & M]
    case EvolvePokemon = 125

    // Implemented [R & M]
    case GetHatchedEggs = 126

    // Implemented [R & M]
    case EncounterTutorialComplete = 127

    // Implemented [R & M]
    case LevelUpRewards = 128

    // Implemented [R & M]
    case CheckAwardedBadges = 129

    // Implemented [R & M]
    case UseItemGym = 133

    // Implemented [R & M]
    case GetGymDetails = 134

    // Implemented [R & M]
    case StartGymBattle = 135

    // Implemented [R & M]
    case AttackGym = 136

    // Implemented [R & M]
    case RecycleInventoryItem = 137

    // Implemented [R & M]
    case CollectDailyBonus = 138

    // Implemented [R & M]
    case UseItemXpBoost = 139

    // Implemented [R & M]
    case UseItemEggIncubator = 140

    // Implemented [R & M]
    case UseIncense = 141

    // Implemented [R & M]
    case GetIncensePokemon = 142

    // Implemented [R & M]
    case IncenseEncounter = 143

    // Implemented [R & M]
    case AddFortModifier = 144

    // Implemented [R & M]
    case DiskEncounter = 145

    // Implemented [R & M]
    case CollectDailyDefenderBonus = 146

    // Implemented [R & M]
    case UpgradePokemon = 147

    // Implemented [R & M]
    case SetFavoritePokemon = 148

    // Implemented [R & M]
    case NicknamePokemon = 149

    // Implemented [R & M]
    case EquipBadge = 150

    // Implemented [R & M]
    case SetContactSettings = 151

    // Implemented [R & M]
    case GetAssetDigest = 300

    // Implemented [R & M]
    case GetDownloadUrls = 301

    // Implemented [R & M]
    case GetSuggestedCodenames = 401

    // Implemented [R & M] TEST RESPONSE
    case CheckCodenameAvailable = 402

    // Implemented [R & M] TEST RESPONSE
    case ClaimCodename = 403

    // Implemented [R & M]
    case SetAvatar = 404

    // Implemented [R & M]
    case SetPlayerTeam = 405

    // Implemented [R & M]
    case MarkTutorialComplete = 406

    // Can't find this one
    case LoadSpawnPoints = 500

    // Implemented [R & M]
    case Echo = 666
    case DebugUpdateInventory = 700
    case DebugDeletePlayer = 701

    // Not yet released.
    case SfidaRegistration = 800

    // Implemented [R & M]
    case SfidaActionLog = 801

    // Not yet released.
    case SfidaCertification = 802

    // Not yet released.
    case SfidaUpdate = 803

    // Not yet released.
    case SfidaAction = 804

    // Not yet released.
    case SfidaDowser = 805

    // Not yet released.
    case SfidaCapture = 806
    public func toString() -> String {
      switch self {
      case .MethodUnset: return "METHOD_UNSET"
      case .PlayerUpdate: return "PLAYER_UPDATE"
      case .GetPlayer: return "GET_PLAYER"
      case .GetInventory: return "GET_INVENTORY"
      case .DownloadSettings: return "DOWNLOAD_SETTINGS"
      case .DownloadItemTemplates: return "DOWNLOAD_ITEM_TEMPLATES"
      case .DownloadRemoteConfigVersion: return "DOWNLOAD_REMOTE_CONFIG_VERSION"
      case .FortSearch: return "FORT_SEARCH"
      case .Encounter: return "ENCOUNTER"
      case .CatchPokemon: return "CATCH_POKEMON"
      case .FortDetails: return "FORT_DETAILS"
      case .ItemUse: return "ITEM_USE"
      case .GetMapObjects: return "GET_MAP_OBJECTS"
      case .FortDeployPokemon: return "FORT_DEPLOY_POKEMON"
      case .FortRecallPokemon: return "FORT_RECALL_POKEMON"
      case .ReleasePokemon: return "RELEASE_POKEMON"
      case .UseItemPotion: return "USE_ITEM_POTION"
      case .UseItemCapture: return "USE_ITEM_CAPTURE"
      case .UseItemFlee: return "USE_ITEM_FLEE"
      case .UseItemRevive: return "USE_ITEM_REVIVE"
      case .TradeSearch: return "TRADE_SEARCH"
      case .TradeOffer: return "TRADE_OFFER"
      case .TradeResponse: return "TRADE_RESPONSE"
      case .TradeResult: return "TRADE_RESULT"
      case .GetPlayerProfile: return "GET_PLAYER_PROFILE"
      case .GetItemPack: return "GET_ITEM_PACK"
      case .BuyItemPack: return "BUY_ITEM_PACK"
      case .BuyGemPack: return "BUY_GEM_PACK"
      case .EvolvePokemon: return "EVOLVE_POKEMON"
      case .GetHatchedEggs: return "GET_HATCHED_EGGS"
      case .EncounterTutorialComplete: return "ENCOUNTER_TUTORIAL_COMPLETE"
      case .LevelUpRewards: return "LEVEL_UP_REWARDS"
      case .CheckAwardedBadges: return "CHECK_AWARDED_BADGES"
      case .UseItemGym: return "USE_ITEM_GYM"
      case .GetGymDetails: return "GET_GYM_DETAILS"
      case .StartGymBattle: return "START_GYM_BATTLE"
      case .AttackGym: return "ATTACK_GYM"
      case .RecycleInventoryItem: return "RECYCLE_INVENTORY_ITEM"
      case .CollectDailyBonus: return "COLLECT_DAILY_BONUS"
      case .UseItemXpBoost: return "USE_ITEM_XP_BOOST"
      case .UseItemEggIncubator: return "USE_ITEM_EGG_INCUBATOR"
      case .UseIncense: return "USE_INCENSE"
      case .GetIncensePokemon: return "GET_INCENSE_POKEMON"
      case .IncenseEncounter: return "INCENSE_ENCOUNTER"
      case .AddFortModifier: return "ADD_FORT_MODIFIER"
      case .DiskEncounter: return "DISK_ENCOUNTER"
      case .CollectDailyDefenderBonus: return "COLLECT_DAILY_DEFENDER_BONUS"
      case .UpgradePokemon: return "UPGRADE_POKEMON"
      case .SetFavoritePokemon: return "SET_FAVORITE_POKEMON"
      case .NicknamePokemon: return "NICKNAME_POKEMON"
      case .EquipBadge: return "EQUIP_BADGE"
      case .SetContactSettings: return "SET_CONTACT_SETTINGS"
      case .GetAssetDigest: return "GET_ASSET_DIGEST"
      case .GetDownloadUrls: return "GET_DOWNLOAD_URLS"
      case .GetSuggestedCodenames: return "GET_SUGGESTED_CODENAMES"
      case .CheckCodenameAvailable: return "CHECK_CODENAME_AVAILABLE"
      case .ClaimCodename: return "CLAIM_CODENAME"
      case .SetAvatar: return "SET_AVATAR"
      case .SetPlayerTeam: return "SET_PLAYER_TEAM"
      case .MarkTutorialComplete: return "MARK_TUTORIAL_COMPLETE"
      case .LoadSpawnPoints: return "LOAD_SPAWN_POINTS"
      case .Echo: return "ECHO"
      case .DebugUpdateInventory: return "DEBUG_UPDATE_INVENTORY"
      case .DebugDeletePlayer: return "DEBUG_DELETE_PLAYER"
      case .SfidaRegistration: return "SFIDA_REGISTRATION"
      case .SfidaActionLog: return "SFIDA_ACTION_LOG"
      case .SfidaCertification: return "SFIDA_CERTIFICATION"
      case .SfidaUpdate: return "SFIDA_UPDATE"
      case .SfidaAction: return "SFIDA_ACTION"
      case .SfidaDowser: return "SFIDA_DOWSER"
      case .SfidaCapture: return "SFIDA_CAPTURE"
      }
    }
    public static func fromString(str:String) throws -> Pogoprotos.Networking.Requests.RequestType {
      switch str {
      case "METHOD_UNSET":  return .MethodUnset
      case "PLAYER_UPDATE":  return .PlayerUpdate
      case "GET_PLAYER":  return .GetPlayer
      case "GET_INVENTORY":  return .GetInventory
      case "DOWNLOAD_SETTINGS":  return .DownloadSettings
      case "DOWNLOAD_ITEM_TEMPLATES":  return .DownloadItemTemplates
      case "DOWNLOAD_REMOTE_CONFIG_VERSION":  return .DownloadRemoteConfigVersion
      case "FORT_SEARCH":  return .FortSearch
      case "ENCOUNTER":  return .Encounter
      case "CATCH_POKEMON":  return .CatchPokemon
      case "FORT_DETAILS":  return .FortDetails
      case "ITEM_USE":  return .ItemUse
      case "GET_MAP_OBJECTS":  return .GetMapObjects
      case "FORT_DEPLOY_POKEMON":  return .FortDeployPokemon
      case "FORT_RECALL_POKEMON":  return .FortRecallPokemon
      case "RELEASE_POKEMON":  return .ReleasePokemon
      case "USE_ITEM_POTION":  return .UseItemPotion
      case "USE_ITEM_CAPTURE":  return .UseItemCapture
      case "USE_ITEM_FLEE":  return .UseItemFlee
      case "USE_ITEM_REVIVE":  return .UseItemRevive
      case "TRADE_SEARCH":  return .TradeSearch
      case "TRADE_OFFER":  return .TradeOffer
      case "TRADE_RESPONSE":  return .TradeResponse
      case "TRADE_RESULT":  return .TradeResult
      case "GET_PLAYER_PROFILE":  return .GetPlayerProfile
      case "GET_ITEM_PACK":  return .GetItemPack
      case "BUY_ITEM_PACK":  return .BuyItemPack
      case "BUY_GEM_PACK":  return .BuyGemPack
      case "EVOLVE_POKEMON":  return .EvolvePokemon
      case "GET_HATCHED_EGGS":  return .GetHatchedEggs
      case "ENCOUNTER_TUTORIAL_COMPLETE":  return .EncounterTutorialComplete
      case "LEVEL_UP_REWARDS":  return .LevelUpRewards
      case "CHECK_AWARDED_BADGES":  return .CheckAwardedBadges
      case "USE_ITEM_GYM":  return .UseItemGym
      case "GET_GYM_DETAILS":  return .GetGymDetails
      case "START_GYM_BATTLE":  return .StartGymBattle
      case "ATTACK_GYM":  return .AttackGym
      case "RECYCLE_INVENTORY_ITEM":  return .RecycleInventoryItem
      case "COLLECT_DAILY_BONUS":  return .CollectDailyBonus
      case "USE_ITEM_XP_BOOST":  return .UseItemXpBoost
      case "USE_ITEM_EGG_INCUBATOR":  return .UseItemEggIncubator
      case "USE_INCENSE":  return .UseIncense
      case "GET_INCENSE_POKEMON":  return .GetIncensePokemon
      case "INCENSE_ENCOUNTER":  return .IncenseEncounter
      case "ADD_FORT_MODIFIER":  return .AddFortModifier
      case "DISK_ENCOUNTER":  return .DiskEncounter
      case "COLLECT_DAILY_DEFENDER_BONUS":  return .CollectDailyDefenderBonus
      case "UPGRADE_POKEMON":  return .UpgradePokemon
      case "SET_FAVORITE_POKEMON":  return .SetFavoritePokemon
      case "NICKNAME_POKEMON":  return .NicknamePokemon
      case "EQUIP_BADGE":  return .EquipBadge
      case "SET_CONTACT_SETTINGS":  return .SetContactSettings
      case "GET_ASSET_DIGEST":  return .GetAssetDigest
      case "GET_DOWNLOAD_URLS":  return .GetDownloadUrls
      case "GET_SUGGESTED_CODENAMES":  return .GetSuggestedCodenames
      case "CHECK_CODENAME_AVAILABLE":  return .CheckCodenameAvailable
      case "CLAIM_CODENAME":  return .ClaimCodename
      case "SET_AVATAR":  return .SetAvatar
      case "SET_PLAYER_TEAM":  return .SetPlayerTeam
      case "MARK_TUTORIAL_COMPLETE":  return .MarkTutorialComplete
      case "LOAD_SPAWN_POINTS":  return .LoadSpawnPoints
      case "ECHO":  return .Echo
      case "DEBUG_UPDATE_INVENTORY":  return .DebugUpdateInventory
      case "DEBUG_DELETE_PLAYER":  return .DebugDeletePlayer
      case "SFIDA_REGISTRATION":  return .SfidaRegistration
      case "SFIDA_ACTION_LOG":  return .SfidaActionLog
      case "SFIDA_CERTIFICATION":  return .SfidaCertification
      case "SFIDA_UPDATE":  return .SfidaUpdate
      case "SFIDA_ACTION":  return .SfidaAction
      case "SFIDA_DOWSER":  return .SfidaDowser
      case "SFIDA_CAPTURE":  return .SfidaCapture
      default: throw ProtocolBuffersError.InvalidProtocolBuffer("Conversion String to Enum has failed.")
      }
    }
    public var debugDescription:String { return getDescription() }
    public var description:String { return getDescription() }
    private func getDescription() -> String { 
        switch self {
            case .MethodUnset: return ".MethodUnset"
            case .PlayerUpdate: return ".PlayerUpdate"
            case .GetPlayer: return ".GetPlayer"
            case .GetInventory: return ".GetInventory"
            case .DownloadSettings: return ".DownloadSettings"
            case .DownloadItemTemplates: return ".DownloadItemTemplates"
            case .DownloadRemoteConfigVersion: return ".DownloadRemoteConfigVersion"
            case .FortSearch: return ".FortSearch"
            case .Encounter: return ".Encounter"
            case .CatchPokemon: return ".CatchPokemon"
            case .FortDetails: return ".FortDetails"
            case .ItemUse: return ".ItemUse"
            case .GetMapObjects: return ".GetMapObjects"
            case .FortDeployPokemon: return ".FortDeployPokemon"
            case .FortRecallPokemon: return ".FortRecallPokemon"
            case .ReleasePokemon: return ".ReleasePokemon"
            case .UseItemPotion: return ".UseItemPotion"
            case .UseItemCapture: return ".UseItemCapture"
            case .UseItemFlee: return ".UseItemFlee"
            case .UseItemRevive: return ".UseItemRevive"
            case .TradeSearch: return ".TradeSearch"
            case .TradeOffer: return ".TradeOffer"
            case .TradeResponse: return ".TradeResponse"
            case .TradeResult: return ".TradeResult"
            case .GetPlayerProfile: return ".GetPlayerProfile"
            case .GetItemPack: return ".GetItemPack"
            case .BuyItemPack: return ".BuyItemPack"
            case .BuyGemPack: return ".BuyGemPack"
            case .EvolvePokemon: return ".EvolvePokemon"
            case .GetHatchedEggs: return ".GetHatchedEggs"
            case .EncounterTutorialComplete: return ".EncounterTutorialComplete"
            case .LevelUpRewards: return ".LevelUpRewards"
            case .CheckAwardedBadges: return ".CheckAwardedBadges"
            case .UseItemGym: return ".UseItemGym"
            case .GetGymDetails: return ".GetGymDetails"
            case .StartGymBattle: return ".StartGymBattle"
            case .AttackGym: return ".AttackGym"
            case .RecycleInventoryItem: return ".RecycleInventoryItem"
            case .CollectDailyBonus: return ".CollectDailyBonus"
            case .UseItemXpBoost: return ".UseItemXpBoost"
            case .UseItemEggIncubator: return ".UseItemEggIncubator"
            case .UseIncense: return ".UseIncense"
            case .GetIncensePokemon: return ".GetIncensePokemon"
            case .IncenseEncounter: return ".IncenseEncounter"
            case .AddFortModifier: return ".AddFortModifier"
            case .DiskEncounter: return ".DiskEncounter"
            case .CollectDailyDefenderBonus: return ".CollectDailyDefenderBonus"
            case .UpgradePokemon: return ".UpgradePokemon"
            case .SetFavoritePokemon: return ".SetFavoritePokemon"
            case .NicknamePokemon: return ".NicknamePokemon"
            case .EquipBadge: return ".EquipBadge"
            case .SetContactSettings: return ".SetContactSettings"
            case .GetAssetDigest: return ".GetAssetDigest"
            case .GetDownloadUrls: return ".GetDownloadUrls"
            case .GetSuggestedCodenames: return ".GetSuggestedCodenames"
            case .CheckCodenameAvailable: return ".CheckCodenameAvailable"
            case .ClaimCodename: return ".ClaimCodename"
            case .SetAvatar: return ".SetAvatar"
            case .SetPlayerTeam: return ".SetPlayerTeam"
            case .MarkTutorialComplete: return ".MarkTutorialComplete"
            case .LoadSpawnPoints: return ".LoadSpawnPoints"
            case .Echo: return ".Echo"
            case .DebugUpdateInventory: return ".DebugUpdateInventory"
            case .DebugDeletePlayer: return ".DebugDeletePlayer"
            case .SfidaRegistration: return ".SfidaRegistration"
            case .SfidaActionLog: return ".SfidaActionLog"
            case .SfidaCertification: return ".SfidaCertification"
            case .SfidaUpdate: return ".SfidaUpdate"
            case .SfidaAction: return ".SfidaAction"
            case .SfidaDowser: return ".SfidaDowser"
            case .SfidaCapture: return ".SfidaCapture"
        }
    }
  }

  //Enum type declaration end 

  final public class Request : GeneratedMessage, GeneratedMessageProtocol {
    public private(set) var requestType:Pogoprotos.Networking.Requests.RequestType = Pogoprotos.Networking.Requests.RequestType.MethodUnset
    public private(set) var hasRequestType:Bool = false
    public private(set) var hasRequestMessage:Bool = false
    public private(set) var requestMessage:NSData = NSData()

    required public init() {
         super.init()
    }
    override public func isInitialized() -> Bool {
     return true
    }
    override public func writeToCodedOutputStream(output:CodedOutputStream) throws {
      if hasRequestType {
        try output.writeEnum(1, value:requestType.rawValue)
      }
      if hasRequestMessage {
        try output.writeData(2, value:requestMessage)
      }
      try unknownFields.writeToCodedOutputStream(output)
    }
    override public func serializedSize() -> Int32 {
      var serialize_size:Int32 = memoizedSerializedSize
      if serialize_size != -1 {
       return serialize_size
      }

      serialize_size = 0
      if (hasRequestType) {
        serialize_size += requestType.rawValue.computeEnumSize(1)
      }
      if hasRequestMessage {
        serialize_size += requestMessage.computeDataSize(2)
      }
      serialize_size += unknownFields.serializedSize()
      memoizedSerializedSize = serialize_size
      return serialize_size
    }
    public class func parseArrayDelimitedFromInputStream(input:NSInputStream) throws -> Array<Pogoprotos.Networking.Requests.Request> {
      var mergedArray = Array<Pogoprotos.Networking.Requests.Request>()
      while let value = try parseFromDelimitedFromInputStream(input) {
        mergedArray += [value]
      }
      return mergedArray
    }
    public class func parseFromDelimitedFromInputStream(input:NSInputStream) throws -> Pogoprotos.Networking.Requests.Request? {
      return try Pogoprotos.Networking.Requests.Request.Builder().mergeDelimitedFromInputStream(input)?.build()
    }
    public class func parseFromData(data:NSData) throws -> Pogoprotos.Networking.Requests.Request {
      return try Pogoprotos.Networking.Requests.Request.Builder().mergeFromData(data, extensionRegistry:Pogoprotos.Networking.Requests.PogoprotosNetworkingRequestsRoot.sharedInstance.extensionRegistry).build()
    }
    public class func parseFromData(data:NSData, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Requests.Request {
      return try Pogoprotos.Networking.Requests.Request.Builder().mergeFromData(data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromInputStream(input:NSInputStream) throws -> Pogoprotos.Networking.Requests.Request {
      return try Pogoprotos.Networking.Requests.Request.Builder().mergeFromInputStream(input).build()
    }
    public class func parseFromInputStream(input:NSInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Requests.Request {
      return try Pogoprotos.Networking.Requests.Request.Builder().mergeFromInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Networking.Requests.Request {
      return try Pogoprotos.Networking.Requests.Request.Builder().mergeFromCodedInputStream(input).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Requests.Request {
      return try Pogoprotos.Networking.Requests.Request.Builder().mergeFromCodedInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func getBuilder() -> Pogoprotos.Networking.Requests.Request.Builder {
      return Pogoprotos.Networking.Requests.Request.classBuilder() as! Pogoprotos.Networking.Requests.Request.Builder
    }
    public func getBuilder() -> Pogoprotos.Networking.Requests.Request.Builder {
      return classBuilder() as! Pogoprotos.Networking.Requests.Request.Builder
    }
    override public class func classBuilder() -> MessageBuilder {
      return Pogoprotos.Networking.Requests.Request.Builder()
    }
    override public func classBuilder() -> MessageBuilder {
      return Pogoprotos.Networking.Requests.Request.Builder()
    }
    public func toBuilder() throws -> Pogoprotos.Networking.Requests.Request.Builder {
      return try Pogoprotos.Networking.Requests.Request.builderWithPrototype(self)
    }
    public class func builderWithPrototype(prototype:Pogoprotos.Networking.Requests.Request) throws -> Pogoprotos.Networking.Requests.Request.Builder {
      return try Pogoprotos.Networking.Requests.Request.Builder().mergeFrom(prototype)
    }
    override public func encode() throws -> Dictionary<String,AnyObject> {
      guard isInitialized() else {
        throw ProtocolBuffersError.InvalidProtocolBuffer("Uninitialized Message")
      }

      var jsonMap:Dictionary<String,AnyObject> = Dictionary<String,AnyObject>()
      if hasRequestType {
        jsonMap["requestType"] = requestType.toString()
      }
      if hasRequestMessage {
        jsonMap["requestMessage"] = requestMessage.base64EncodedStringWithOptions(NSDataBase64EncodingOptions(rawValue: 0))
      }
      return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Networking.Requests.Request {
      return try Pogoprotos.Networking.Requests.Request.Builder.decodeToBuilder(jsonMap).build()
    }
    override class public func fromJSON(data:NSData) throws -> Pogoprotos.Networking.Requests.Request {
      return try Pogoprotos.Networking.Requests.Request.Builder.fromJSONToBuilder(data).build()
    }
    override public func getDescription(indent:String) throws -> String {
      var output = ""
      if (hasRequestType) {
        output += "\(indent) requestType: \(requestType.description)\n"
      }
      if hasRequestMessage {
        output += "\(indent) requestMessage: \(requestMessage) \n"
      }
      output += unknownFields.getDescription(indent)
      return output
    }
    override public var hashValue:Int {
        get {
            var hashCode:Int = 7
            if hasRequestType {
               hashCode = (hashCode &* 31) &+ Int(requestType.rawValue)
            }
            if hasRequestMessage {
               hashCode = (hashCode &* 31) &+ requestMessage.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "Pogoprotos.Networking.Requests.Request"
    }
    override public func className() -> String {
        return "Pogoprotos.Networking.Requests.Request"
    }
    override public func classMetaType() -> GeneratedMessage.Type {
        return Pogoprotos.Networking.Requests.Request.self
    }
    //Meta information declaration end

    final public class Builder : GeneratedMessageBuilder {
      private var builderResult:Pogoprotos.Networking.Requests.Request = Pogoprotos.Networking.Requests.Request()
      public func getMessage() -> Pogoprotos.Networking.Requests.Request {
          return builderResult
      }

      required override public init () {
         super.init()
      }
        public var hasRequestType:Bool{
            get {
                return builderResult.hasRequestType
            }
        }
        public var requestType:Pogoprotos.Networking.Requests.RequestType {
            get {
                return builderResult.requestType
            }
            set (value) {
                builderResult.hasRequestType = true
                builderResult.requestType = value
            }
        }
        public func setRequestType(value:Pogoprotos.Networking.Requests.RequestType) -> Pogoprotos.Networking.Requests.Request.Builder {
          self.requestType = value
          return self
        }
        public func clearRequestType() -> Pogoprotos.Networking.Requests.Request.Builder {
           builderResult.hasRequestType = false
           builderResult.requestType = .MethodUnset
           return self
        }
      public var hasRequestMessage:Bool {
           get {
                return builderResult.hasRequestMessage
           }
      }
      public var requestMessage:NSData {
           get {
                return builderResult.requestMessage
           }
           set (value) {
               builderResult.hasRequestMessage = true
               builderResult.requestMessage = value
           }
      }
      public func setRequestMessage(value:NSData) -> Pogoprotos.Networking.Requests.Request.Builder {
        self.requestMessage = value
        return self
      }
      public func clearRequestMessage() -> Pogoprotos.Networking.Requests.Request.Builder{
           builderResult.hasRequestMessage = false
           builderResult.requestMessage = NSData()
           return self
      }
      override public var internalGetResult:GeneratedMessage {
           get {
              return builderResult
           }
      }
      override public func clear() -> Pogoprotos.Networking.Requests.Request.Builder {
        builderResult = Pogoprotos.Networking.Requests.Request()
        return self
      }
      override public func clone() throws -> Pogoprotos.Networking.Requests.Request.Builder {
        return try Pogoprotos.Networking.Requests.Request.builderWithPrototype(builderResult)
      }
      override public func build() throws -> Pogoprotos.Networking.Requests.Request {
           try checkInitialized()
           return buildPartial()
      }
      public func buildPartial() -> Pogoprotos.Networking.Requests.Request {
        let returnMe:Pogoprotos.Networking.Requests.Request = builderResult
        return returnMe
      }
      public func mergeFrom(other:Pogoprotos.Networking.Requests.Request) throws -> Pogoprotos.Networking.Requests.Request.Builder {
        if other == Pogoprotos.Networking.Requests.Request() {
         return self
        }
        if other.hasRequestType {
             requestType = other.requestType
        }
        if other.hasRequestMessage {
             requestMessage = other.requestMessage
        }
        try mergeUnknownFields(other.unknownFields)
        return self
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Networking.Requests.Request.Builder {
           return try mergeFromCodedInputStream(input, extensionRegistry:ExtensionRegistry())
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Requests.Request.Builder {
        let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(self.unknownFields)
        while (true) {
          let protobufTag = try input.readTag()
          switch protobufTag {
          case 0: 
            self.unknownFields = try unknownFieldsBuilder.build()
            return self

          case 8:
            let valueIntrequestType = try input.readEnum()
            if let enumsrequestType = Pogoprotos.Networking.Requests.RequestType(rawValue:valueIntrequestType){
                 requestType = enumsrequestType
            } else {
                 try unknownFieldsBuilder.mergeVarintField(1, value:Int64(valueIntrequestType))
            }

          case 18:
            requestMessage = try input.readData()

          default:
            if (!(try parseUnknownField(input,unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
               unknownFields = try unknownFieldsBuilder.build()
               return self
            }
          }
        }
      }
      override class public func decodeToBuilder(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Networking.Requests.Request.Builder {
        let resultDecodedBuilder = Pogoprotos.Networking.Requests.Request.Builder()
        if let jsonValueRequestType = jsonMap["requestType"] as? String {
          resultDecodedBuilder.requestType = try Pogoprotos.Networking.Requests.RequestType.fromString(jsonValueRequestType)
        }
        if let jsonValueRequestMessage = jsonMap["requestMessage"] as? String {
          resultDecodedBuilder.requestMessage = NSData(base64EncodedString:jsonValueRequestMessage, options: NSDataBase64DecodingOptions(rawValue:0))!
        }
        return resultDecodedBuilder
      }
      override class public func fromJSONToBuilder(data:NSData) throws -> Pogoprotos.Networking.Requests.Request.Builder {
        let jsonData = try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions(rawValue: 0))
        guard let jsDataCast = jsonData as? Dictionary<String,AnyObject> else {
          throw ProtocolBuffersError.InvalidProtocolBuffer("Invalid JSON data")
        }
        return try Pogoprotos.Networking.Requests.Request.Builder.decodeToBuilder(jsDataCast)
      }
    }

  }

}

// @@protoc_insertion_point(global_scope)
