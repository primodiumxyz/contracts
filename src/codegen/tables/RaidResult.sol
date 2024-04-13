// SPDX-License-Identifier: MIT
pragma solidity >=0.8.21;

/* Autogenerated file. Do not edit manually. */

// Import schema type
import { SchemaType } from "@latticexyz/schema-type/src/solidity/SchemaType.sol";

// Import store internals
import { IStore } from "@latticexyz/store/src/IStore.sol";
import { StoreSwitch } from "@latticexyz/store/src/StoreSwitch.sol";
import { StoreCore } from "@latticexyz/store/src/StoreCore.sol";
import { Bytes } from "@latticexyz/store/src/Bytes.sol";
import { Memory } from "@latticexyz/store/src/Memory.sol";
import { SliceLib } from "@latticexyz/store/src/Slice.sol";
import { EncodeArray } from "@latticexyz/store/src/tightcoder/EncodeArray.sol";
import { FieldLayout, FieldLayoutLib } from "@latticexyz/store/src/FieldLayout.sol";
import { Schema, SchemaLib } from "@latticexyz/store/src/Schema.sol";
import { PackedCounter, PackedCounterLib } from "@latticexyz/store/src/PackedCounter.sol";
import { ResourceId } from "@latticexyz/store/src/ResourceId.sol";
import { RESOURCE_TABLE, RESOURCE_OFFCHAIN_TABLE } from "@latticexyz/store/src/storeResourceTypes.sol";

ResourceId constant _tableId = ResourceId.wrap(
  bytes32(abi.encodePacked(RESOURCE_OFFCHAIN_TABLE, bytes14(""), bytes16("RaidResult")))
);
ResourceId constant RaidResultTableId = _tableId;

FieldLayout constant _fieldLayout = FieldLayout.wrap(
  0x0000000200000000000000000000000000000000000000000000000000000000
);

struct RaidResultData {
  uint256[] defenderValuesBeforeRaid;
  uint256[] raidedAmount;
}

library RaidResult {
  /**
   * @notice Get the table values' field layout.
   * @return _fieldLayout The field layout for the table.
   */
  function getFieldLayout() internal pure returns (FieldLayout) {
    return _fieldLayout;
  }

  /**
   * @notice Get the table's key schema.
   * @return _keySchema The key schema for the table.
   */
  function getKeySchema() internal pure returns (Schema) {
    SchemaType[] memory _keySchema = new SchemaType[](1);
    _keySchema[0] = SchemaType.BYTES32;

    return SchemaLib.encode(_keySchema);
  }

  /**
   * @notice Get the table's value schema.
   * @return _valueSchema The value schema for the table.
   */
  function getValueSchema() internal pure returns (Schema) {
    SchemaType[] memory _valueSchema = new SchemaType[](2);
    _valueSchema[0] = SchemaType.UINT256_ARRAY;
    _valueSchema[1] = SchemaType.UINT256_ARRAY;

    return SchemaLib.encode(_valueSchema);
  }

  /**
   * @notice Get the table's key field names.
   * @return keyNames An array of strings with the names of key fields.
   */
  function getKeyNames() internal pure returns (string[] memory keyNames) {
    keyNames = new string[](1);
    keyNames[0] = "entity";
  }

  /**
   * @notice Get the table's value field names.
   * @return fieldNames An array of strings with the names of value fields.
   */
  function getFieldNames() internal pure returns (string[] memory fieldNames) {
    fieldNames = new string[](2);
    fieldNames[0] = "defenderValuesBeforeRaid";
    fieldNames[1] = "raidedAmount";
  }

  /**
   * @notice Register the table with its config.
   */
  function register() internal {
    StoreSwitch.registerTable(_tableId, _fieldLayout, getKeySchema(), getValueSchema(), getKeyNames(), getFieldNames());
  }

  /**
   * @notice Register the table with its config.
   */
  function _register() internal {
    StoreCore.registerTable(_tableId, _fieldLayout, getKeySchema(), getValueSchema(), getKeyNames(), getFieldNames());
  }

  /**
   * @notice Set the full data using individual values.
   */
  function set(bytes32 entity, uint256[] memory defenderValuesBeforeRaid, uint256[] memory raidedAmount) internal {
    bytes memory _staticData;
    PackedCounter _encodedLengths = encodeLengths(defenderValuesBeforeRaid, raidedAmount);
    bytes memory _dynamicData = encodeDynamic(defenderValuesBeforeRaid, raidedAmount);

    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = entity;

    StoreSwitch.setRecord(_tableId, _keyTuple, _staticData, _encodedLengths, _dynamicData);
  }

  /**
   * @notice Set the full data using individual values.
   */
  function _set(bytes32 entity, uint256[] memory defenderValuesBeforeRaid, uint256[] memory raidedAmount) internal {
    bytes memory _staticData;
    PackedCounter _encodedLengths = encodeLengths(defenderValuesBeforeRaid, raidedAmount);
    bytes memory _dynamicData = encodeDynamic(defenderValuesBeforeRaid, raidedAmount);

    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = entity;

    StoreCore.setRecord(_tableId, _keyTuple, _staticData, _encodedLengths, _dynamicData, _fieldLayout);
  }

  /**
   * @notice Set the full data using the data struct.
   */
  function set(bytes32 entity, RaidResultData memory _table) internal {
    bytes memory _staticData;
    PackedCounter _encodedLengths = encodeLengths(_table.defenderValuesBeforeRaid, _table.raidedAmount);
    bytes memory _dynamicData = encodeDynamic(_table.defenderValuesBeforeRaid, _table.raidedAmount);

    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = entity;

    StoreSwitch.setRecord(_tableId, _keyTuple, _staticData, _encodedLengths, _dynamicData);
  }

  /**
   * @notice Set the full data using the data struct.
   */
  function _set(bytes32 entity, RaidResultData memory _table) internal {
    bytes memory _staticData;
    PackedCounter _encodedLengths = encodeLengths(_table.defenderValuesBeforeRaid, _table.raidedAmount);
    bytes memory _dynamicData = encodeDynamic(_table.defenderValuesBeforeRaid, _table.raidedAmount);

    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = entity;

    StoreCore.setRecord(_tableId, _keyTuple, _staticData, _encodedLengths, _dynamicData, _fieldLayout);
  }

  /**
   * @notice Decode the tightly packed blob of dynamic data using the encoded lengths.
   */
  function decodeDynamic(
    PackedCounter _encodedLengths,
    bytes memory _blob
  ) internal pure returns (uint256[] memory defenderValuesBeforeRaid, uint256[] memory raidedAmount) {
    uint256 _start;
    uint256 _end;
    unchecked {
      _end = _encodedLengths.atIndex(0);
    }
    defenderValuesBeforeRaid = (SliceLib.getSubslice(_blob, _start, _end).decodeArray_uint256());

    _start = _end;
    unchecked {
      _end += _encodedLengths.atIndex(1);
    }
    raidedAmount = (SliceLib.getSubslice(_blob, _start, _end).decodeArray_uint256());
  }

  /**
   * @notice Decode the tightly packed blobs using this table's field layout.
   *
   * @param _encodedLengths Encoded lengths of dynamic fields.
   * @param _dynamicData Tightly packed dynamic fields.
   */
  function decode(
    bytes memory,
    PackedCounter _encodedLengths,
    bytes memory _dynamicData
  ) internal pure returns (RaidResultData memory _table) {
    (_table.defenderValuesBeforeRaid, _table.raidedAmount) = decodeDynamic(_encodedLengths, _dynamicData);
  }

  /**
   * @notice Delete all data for given keys.
   */
  function deleteRecord(bytes32 entity) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = entity;

    StoreSwitch.deleteRecord(_tableId, _keyTuple);
  }

  /**
   * @notice Delete all data for given keys.
   */
  function _deleteRecord(bytes32 entity) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = entity;

    StoreCore.deleteRecord(_tableId, _keyTuple, _fieldLayout);
  }

  /**
   * @notice Tightly pack dynamic data lengths using this table's schema.
   * @return _encodedLengths The lengths of the dynamic fields (packed into a single bytes32 value).
   */
  function encodeLengths(
    uint256[] memory defenderValuesBeforeRaid,
    uint256[] memory raidedAmount
  ) internal pure returns (PackedCounter _encodedLengths) {
    // Lengths are effectively checked during copy by 2**40 bytes exceeding gas limits
    unchecked {
      _encodedLengths = PackedCounterLib.pack(defenderValuesBeforeRaid.length * 32, raidedAmount.length * 32);
    }
  }

  /**
   * @notice Tightly pack dynamic (variable length) data using this table's schema.
   * @return The dynamic data, encoded into a sequence of bytes.
   */
  function encodeDynamic(
    uint256[] memory defenderValuesBeforeRaid,
    uint256[] memory raidedAmount
  ) internal pure returns (bytes memory) {
    return abi.encodePacked(EncodeArray.encode((defenderValuesBeforeRaid)), EncodeArray.encode((raidedAmount)));
  }

  /**
   * @notice Encode all of a record's fields.
   * @return The static (fixed length) data, encoded into a sequence of bytes.
   * @return The lengths of the dynamic fields (packed into a single bytes32 value).
   * @return The dyanmic (variable length) data, encoded into a sequence of bytes.
   */
  function encode(
    uint256[] memory defenderValuesBeforeRaid,
    uint256[] memory raidedAmount
  ) internal pure returns (bytes memory, PackedCounter, bytes memory) {
    bytes memory _staticData;
    PackedCounter _encodedLengths = encodeLengths(defenderValuesBeforeRaid, raidedAmount);
    bytes memory _dynamicData = encodeDynamic(defenderValuesBeforeRaid, raidedAmount);

    return (_staticData, _encodedLengths, _dynamicData);
  }

  /**
   * @notice Encode keys as a bytes32 array using this table's field layout.
   */
  function encodeKeyTuple(bytes32 entity) internal pure returns (bytes32[] memory) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = entity;

    return _keyTuple;
  }
}