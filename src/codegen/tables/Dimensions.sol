// SPDX-License-Identifier: MIT
pragma solidity >=0.8.24;

/* Autogenerated file. Do not edit manually. */

// Import store internals
import { IStore } from "@latticexyz/store/src/IStore.sol";
import { StoreSwitch } from "@latticexyz/store/src/StoreSwitch.sol";
import { StoreCore } from "@latticexyz/store/src/StoreCore.sol";
import { Bytes } from "@latticexyz/store/src/Bytes.sol";
import { Memory } from "@latticexyz/store/src/Memory.sol";
import { SliceLib } from "@latticexyz/store/src/Slice.sol";
import { EncodeArray } from "@latticexyz/store/src/tightcoder/EncodeArray.sol";
import { FieldLayout } from "@latticexyz/store/src/FieldLayout.sol";
import { Schema } from "@latticexyz/store/src/Schema.sol";
import { EncodedLengths, EncodedLengthsLib } from "@latticexyz/store/src/EncodedLengths.sol";
import { ResourceId } from "@latticexyz/store/src/ResourceId.sol";

struct DimensionsData {
  int32 width;
  int32 height;
}

library Dimensions {
  // Hex below is the result of `WorldResourceIdLib.encode({ namespace: "Pri_11", name: "Dimensions", typeId: RESOURCE_TABLE });`
  ResourceId constant _tableId = ResourceId.wrap(0x74625072695f3131000000000000000044696d656e73696f6e73000000000000);

  FieldLayout constant _fieldLayout =
    FieldLayout.wrap(0x0008020004040000000000000000000000000000000000000000000000000000);

  // Hex-encoded key schema of (bytes32, uint256)
  Schema constant _keySchema = Schema.wrap(0x004002005f1f0000000000000000000000000000000000000000000000000000);
  // Hex-encoded value schema of (int32, int32)
  Schema constant _valueSchema = Schema.wrap(0x0008020023230000000000000000000000000000000000000000000000000000);

  /**
   * @notice Get the table's key field names.
   * @return keyNames An array of strings with the names of key fields.
   */
  function getKeyNames() internal pure returns (string[] memory keyNames) {
    keyNames = new string[](2);
    keyNames[0] = "key";
    keyNames[1] = "level";
  }

  /**
   * @notice Get the table's value field names.
   * @return fieldNames An array of strings with the names of value fields.
   */
  function getFieldNames() internal pure returns (string[] memory fieldNames) {
    fieldNames = new string[](2);
    fieldNames[0] = "width";
    fieldNames[1] = "height";
  }

  /**
   * @notice Register the table with its config.
   */
  function register() internal {
    StoreSwitch.registerTable(_tableId, _fieldLayout, _keySchema, _valueSchema, getKeyNames(), getFieldNames());
  }

  /**
   * @notice Register the table with its config.
   */
  function _register() internal {
    StoreCore.registerTable(_tableId, _fieldLayout, _keySchema, _valueSchema, getKeyNames(), getFieldNames());
  }

  /**
   * @notice Get width.
   */
  function getWidth(bytes32 key, uint256 level) internal view returns (int32 width) {
    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = key;
    _keyTuple[1] = bytes32(uint256(level));

    bytes32 _blob = StoreSwitch.getStaticField(_tableId, _keyTuple, 0, _fieldLayout);
    return (int32(uint32(bytes4(_blob))));
  }

  /**
   * @notice Get width.
   */
  function _getWidth(bytes32 key, uint256 level) internal view returns (int32 width) {
    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = key;
    _keyTuple[1] = bytes32(uint256(level));

    bytes32 _blob = StoreCore.getStaticField(_tableId, _keyTuple, 0, _fieldLayout);
    return (int32(uint32(bytes4(_blob))));
  }

  /**
   * @notice Set width.
   */
  function setWidth(bytes32 key, uint256 level, int32 width) internal {
    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = key;
    _keyTuple[1] = bytes32(uint256(level));

    StoreSwitch.setStaticField(_tableId, _keyTuple, 0, abi.encodePacked((width)), _fieldLayout);
  }

  /**
   * @notice Set width.
   */
  function _setWidth(bytes32 key, uint256 level, int32 width) internal {
    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = key;
    _keyTuple[1] = bytes32(uint256(level));

    StoreCore.setStaticField(_tableId, _keyTuple, 0, abi.encodePacked((width)), _fieldLayout);
  }

  /**
   * @notice Get height.
   */
  function getHeight(bytes32 key, uint256 level) internal view returns (int32 height) {
    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = key;
    _keyTuple[1] = bytes32(uint256(level));

    bytes32 _blob = StoreSwitch.getStaticField(_tableId, _keyTuple, 1, _fieldLayout);
    return (int32(uint32(bytes4(_blob))));
  }

  /**
   * @notice Get height.
   */
  function _getHeight(bytes32 key, uint256 level) internal view returns (int32 height) {
    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = key;
    _keyTuple[1] = bytes32(uint256(level));

    bytes32 _blob = StoreCore.getStaticField(_tableId, _keyTuple, 1, _fieldLayout);
    return (int32(uint32(bytes4(_blob))));
  }

  /**
   * @notice Set height.
   */
  function setHeight(bytes32 key, uint256 level, int32 height) internal {
    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = key;
    _keyTuple[1] = bytes32(uint256(level));

    StoreSwitch.setStaticField(_tableId, _keyTuple, 1, abi.encodePacked((height)), _fieldLayout);
  }

  /**
   * @notice Set height.
   */
  function _setHeight(bytes32 key, uint256 level, int32 height) internal {
    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = key;
    _keyTuple[1] = bytes32(uint256(level));

    StoreCore.setStaticField(_tableId, _keyTuple, 1, abi.encodePacked((height)), _fieldLayout);
  }

  /**
   * @notice Get the full data.
   */
  function get(bytes32 key, uint256 level) internal view returns (DimensionsData memory _table) {
    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = key;
    _keyTuple[1] = bytes32(uint256(level));

    (bytes memory _staticData, EncodedLengths _encodedLengths, bytes memory _dynamicData) = StoreSwitch.getRecord(
      _tableId,
      _keyTuple,
      _fieldLayout
    );
    return decode(_staticData, _encodedLengths, _dynamicData);
  }

  /**
   * @notice Get the full data.
   */
  function _get(bytes32 key, uint256 level) internal view returns (DimensionsData memory _table) {
    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = key;
    _keyTuple[1] = bytes32(uint256(level));

    (bytes memory _staticData, EncodedLengths _encodedLengths, bytes memory _dynamicData) = StoreCore.getRecord(
      _tableId,
      _keyTuple,
      _fieldLayout
    );
    return decode(_staticData, _encodedLengths, _dynamicData);
  }

  /**
   * @notice Set the full data using individual values.
   */
  function set(bytes32 key, uint256 level, int32 width, int32 height) internal {
    bytes memory _staticData = encodeStatic(width, height);

    EncodedLengths _encodedLengths;
    bytes memory _dynamicData;

    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = key;
    _keyTuple[1] = bytes32(uint256(level));

    StoreSwitch.setRecord(_tableId, _keyTuple, _staticData, _encodedLengths, _dynamicData);
  }

  /**
   * @notice Set the full data using individual values.
   */
  function _set(bytes32 key, uint256 level, int32 width, int32 height) internal {
    bytes memory _staticData = encodeStatic(width, height);

    EncodedLengths _encodedLengths;
    bytes memory _dynamicData;

    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = key;
    _keyTuple[1] = bytes32(uint256(level));

    StoreCore.setRecord(_tableId, _keyTuple, _staticData, _encodedLengths, _dynamicData, _fieldLayout);
  }

  /**
   * @notice Set the full data using the data struct.
   */
  function set(bytes32 key, uint256 level, DimensionsData memory _table) internal {
    bytes memory _staticData = encodeStatic(_table.width, _table.height);

    EncodedLengths _encodedLengths;
    bytes memory _dynamicData;

    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = key;
    _keyTuple[1] = bytes32(uint256(level));

    StoreSwitch.setRecord(_tableId, _keyTuple, _staticData, _encodedLengths, _dynamicData);
  }

  /**
   * @notice Set the full data using the data struct.
   */
  function _set(bytes32 key, uint256 level, DimensionsData memory _table) internal {
    bytes memory _staticData = encodeStatic(_table.width, _table.height);

    EncodedLengths _encodedLengths;
    bytes memory _dynamicData;

    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = key;
    _keyTuple[1] = bytes32(uint256(level));

    StoreCore.setRecord(_tableId, _keyTuple, _staticData, _encodedLengths, _dynamicData, _fieldLayout);
  }

  /**
   * @notice Decode the tightly packed blob of static data using this table's field layout.
   */
  function decodeStatic(bytes memory _blob) internal pure returns (int32 width, int32 height) {
    width = (int32(uint32(Bytes.getBytes4(_blob, 0))));

    height = (int32(uint32(Bytes.getBytes4(_blob, 4))));
  }

  /**
   * @notice Decode the tightly packed blobs using this table's field layout.
   * @param _staticData Tightly packed static fields.
   *
   *
   */
  function decode(
    bytes memory _staticData,
    EncodedLengths,
    bytes memory
  ) internal pure returns (DimensionsData memory _table) {
    (_table.width, _table.height) = decodeStatic(_staticData);
  }

  /**
   * @notice Delete all data for given keys.
   */
  function deleteRecord(bytes32 key, uint256 level) internal {
    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = key;
    _keyTuple[1] = bytes32(uint256(level));

    StoreSwitch.deleteRecord(_tableId, _keyTuple);
  }

  /**
   * @notice Delete all data for given keys.
   */
  function _deleteRecord(bytes32 key, uint256 level) internal {
    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = key;
    _keyTuple[1] = bytes32(uint256(level));

    StoreCore.deleteRecord(_tableId, _keyTuple, _fieldLayout);
  }

  /**
   * @notice Tightly pack static (fixed length) data using this table's schema.
   * @return The static data, encoded into a sequence of bytes.
   */
  function encodeStatic(int32 width, int32 height) internal pure returns (bytes memory) {
    return abi.encodePacked(width, height);
  }

  /**
   * @notice Encode all of a record's fields.
   * @return The static (fixed length) data, encoded into a sequence of bytes.
   * @return The lengths of the dynamic fields (packed into a single bytes32 value).
   * @return The dynamic (variable length) data, encoded into a sequence of bytes.
   */
  function encode(int32 width, int32 height) internal pure returns (bytes memory, EncodedLengths, bytes memory) {
    bytes memory _staticData = encodeStatic(width, height);

    EncodedLengths _encodedLengths;
    bytes memory _dynamicData;

    return (_staticData, _encodedLengths, _dynamicData);
  }

  /**
   * @notice Encode keys as a bytes32 array using this table's field layout.
   */
  function encodeKeyTuple(bytes32 key, uint256 level) internal pure returns (bytes32[] memory) {
    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = key;
    _keyTuple[1] = bytes32(uint256(level));

    return _keyTuple;
  }
}
