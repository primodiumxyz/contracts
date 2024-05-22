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

struct BattleResultData {
  bytes32 aggressorEntity;
  uint256 aggressorDamage;
  bytes32 targetEntity;
  uint256 targetDamage;
  bytes32 winnerEntity;
  bytes32 asteroidEntity;
  bytes32 playerEntity;
  bytes32 targetPlayerEntity;
  uint256 timestamp;
  bytes32[] aggressorAllies;
  bytes32[] targetAllies;
}

library BattleResult {
  // Hex below is the result of `WorldResourceIdLib.encode({ namespace: "Pri_11", name: "BattleResult", typeId: RESOURCE_OFFCHAIN_TABLE });`
  ResourceId constant _tableId = ResourceId.wrap(0x6f745072695f31310000000000000000426174746c65526573756c7400000000);

  FieldLayout constant _fieldLayout =
    FieldLayout.wrap(0x0120090220202020202020202000000000000000000000000000000000000000);

  // Hex-encoded key schema of (bytes32)
  Schema constant _keySchema = Schema.wrap(0x002001005f000000000000000000000000000000000000000000000000000000);
  // Hex-encoded value schema of (bytes32, uint256, bytes32, uint256, bytes32, bytes32, bytes32, bytes32, uint256, bytes32[], bytes32[])
  Schema constant _valueSchema = Schema.wrap(0x012009025f1f5f1f5f5f5f5f1fc1c10000000000000000000000000000000000);

  /**
   * @notice Get the table's key field names.
   * @return keyNames An array of strings with the names of key fields.
   */
  function getKeyNames() internal pure returns (string[] memory keyNames) {
    keyNames = new string[](1);
    keyNames[0] = "battleEntity";
  }

  /**
   * @notice Get the table's value field names.
   * @return fieldNames An array of strings with the names of value fields.
   */
  function getFieldNames() internal pure returns (string[] memory fieldNames) {
    fieldNames = new string[](11);
    fieldNames[0] = "aggressorEntity";
    fieldNames[1] = "aggressorDamage";
    fieldNames[2] = "targetEntity";
    fieldNames[3] = "targetDamage";
    fieldNames[4] = "winnerEntity";
    fieldNames[5] = "asteroidEntity";
    fieldNames[6] = "playerEntity";
    fieldNames[7] = "targetPlayerEntity";
    fieldNames[8] = "timestamp";
    fieldNames[9] = "aggressorAllies";
    fieldNames[10] = "targetAllies";
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
   * @notice Set aggressorEntity.
   */
  function setAggressorEntity(bytes32 battleEntity, bytes32 aggressorEntity) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = battleEntity;

    StoreSwitch.setStaticField(_tableId, _keyTuple, 0, abi.encodePacked((aggressorEntity)), _fieldLayout);
  }

  /**
   * @notice Set aggressorEntity.
   */
  function _setAggressorEntity(bytes32 battleEntity, bytes32 aggressorEntity) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = battleEntity;

    StoreCore.setStaticField(_tableId, _keyTuple, 0, abi.encodePacked((aggressorEntity)), _fieldLayout);
  }

  /**
   * @notice Set aggressorDamage.
   */
  function setAggressorDamage(bytes32 battleEntity, uint256 aggressorDamage) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = battleEntity;

    StoreSwitch.setStaticField(_tableId, _keyTuple, 1, abi.encodePacked((aggressorDamage)), _fieldLayout);
  }

  /**
   * @notice Set aggressorDamage.
   */
  function _setAggressorDamage(bytes32 battleEntity, uint256 aggressorDamage) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = battleEntity;

    StoreCore.setStaticField(_tableId, _keyTuple, 1, abi.encodePacked((aggressorDamage)), _fieldLayout);
  }

  /**
   * @notice Set targetEntity.
   */
  function setTargetEntity(bytes32 battleEntity, bytes32 targetEntity) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = battleEntity;

    StoreSwitch.setStaticField(_tableId, _keyTuple, 2, abi.encodePacked((targetEntity)), _fieldLayout);
  }

  /**
   * @notice Set targetEntity.
   */
  function _setTargetEntity(bytes32 battleEntity, bytes32 targetEntity) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = battleEntity;

    StoreCore.setStaticField(_tableId, _keyTuple, 2, abi.encodePacked((targetEntity)), _fieldLayout);
  }

  /**
   * @notice Set targetDamage.
   */
  function setTargetDamage(bytes32 battleEntity, uint256 targetDamage) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = battleEntity;

    StoreSwitch.setStaticField(_tableId, _keyTuple, 3, abi.encodePacked((targetDamage)), _fieldLayout);
  }

  /**
   * @notice Set targetDamage.
   */
  function _setTargetDamage(bytes32 battleEntity, uint256 targetDamage) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = battleEntity;

    StoreCore.setStaticField(_tableId, _keyTuple, 3, abi.encodePacked((targetDamage)), _fieldLayout);
  }

  /**
   * @notice Set winnerEntity.
   */
  function setWinnerEntity(bytes32 battleEntity, bytes32 winnerEntity) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = battleEntity;

    StoreSwitch.setStaticField(_tableId, _keyTuple, 4, abi.encodePacked((winnerEntity)), _fieldLayout);
  }

  /**
   * @notice Set winnerEntity.
   */
  function _setWinnerEntity(bytes32 battleEntity, bytes32 winnerEntity) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = battleEntity;

    StoreCore.setStaticField(_tableId, _keyTuple, 4, abi.encodePacked((winnerEntity)), _fieldLayout);
  }

  /**
   * @notice Set asteroidEntity.
   */
  function setAsteroidEntity(bytes32 battleEntity, bytes32 asteroidEntity) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = battleEntity;

    StoreSwitch.setStaticField(_tableId, _keyTuple, 5, abi.encodePacked((asteroidEntity)), _fieldLayout);
  }

  /**
   * @notice Set asteroidEntity.
   */
  function _setAsteroidEntity(bytes32 battleEntity, bytes32 asteroidEntity) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = battleEntity;

    StoreCore.setStaticField(_tableId, _keyTuple, 5, abi.encodePacked((asteroidEntity)), _fieldLayout);
  }

  /**
   * @notice Set playerEntity.
   */
  function setPlayerEntity(bytes32 battleEntity, bytes32 playerEntity) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = battleEntity;

    StoreSwitch.setStaticField(_tableId, _keyTuple, 6, abi.encodePacked((playerEntity)), _fieldLayout);
  }

  /**
   * @notice Set playerEntity.
   */
  function _setPlayerEntity(bytes32 battleEntity, bytes32 playerEntity) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = battleEntity;

    StoreCore.setStaticField(_tableId, _keyTuple, 6, abi.encodePacked((playerEntity)), _fieldLayout);
  }

  /**
   * @notice Set targetPlayerEntity.
   */
  function setTargetPlayerEntity(bytes32 battleEntity, bytes32 targetPlayerEntity) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = battleEntity;

    StoreSwitch.setStaticField(_tableId, _keyTuple, 7, abi.encodePacked((targetPlayerEntity)), _fieldLayout);
  }

  /**
   * @notice Set targetPlayerEntity.
   */
  function _setTargetPlayerEntity(bytes32 battleEntity, bytes32 targetPlayerEntity) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = battleEntity;

    StoreCore.setStaticField(_tableId, _keyTuple, 7, abi.encodePacked((targetPlayerEntity)), _fieldLayout);
  }

  /**
   * @notice Set timestamp.
   */
  function setTimestamp(bytes32 battleEntity, uint256 timestamp) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = battleEntity;

    StoreSwitch.setStaticField(_tableId, _keyTuple, 8, abi.encodePacked((timestamp)), _fieldLayout);
  }

  /**
   * @notice Set timestamp.
   */
  function _setTimestamp(bytes32 battleEntity, uint256 timestamp) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = battleEntity;

    StoreCore.setStaticField(_tableId, _keyTuple, 8, abi.encodePacked((timestamp)), _fieldLayout);
  }

  /**
   * @notice Set the full data using individual values.
   */
  function set(
    bytes32 battleEntity,
    bytes32 aggressorEntity,
    uint256 aggressorDamage,
    bytes32 targetEntity,
    uint256 targetDamage,
    bytes32 winnerEntity,
    bytes32 asteroidEntity,
    bytes32 playerEntity,
    bytes32 targetPlayerEntity,
    uint256 timestamp,
    bytes32[] memory aggressorAllies,
    bytes32[] memory targetAllies
  ) internal {
    bytes memory _staticData = encodeStatic(
      aggressorEntity,
      aggressorDamage,
      targetEntity,
      targetDamage,
      winnerEntity,
      asteroidEntity,
      playerEntity,
      targetPlayerEntity,
      timestamp
    );

    EncodedLengths _encodedLengths = encodeLengths(aggressorAllies, targetAllies);
    bytes memory _dynamicData = encodeDynamic(aggressorAllies, targetAllies);

    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = battleEntity;

    StoreSwitch.setRecord(_tableId, _keyTuple, _staticData, _encodedLengths, _dynamicData);
  }

  /**
   * @notice Set the full data using individual values.
   */
  function _set(
    bytes32 battleEntity,
    bytes32 aggressorEntity,
    uint256 aggressorDamage,
    bytes32 targetEntity,
    uint256 targetDamage,
    bytes32 winnerEntity,
    bytes32 asteroidEntity,
    bytes32 playerEntity,
    bytes32 targetPlayerEntity,
    uint256 timestamp,
    bytes32[] memory aggressorAllies,
    bytes32[] memory targetAllies
  ) internal {
    bytes memory _staticData = encodeStatic(
      aggressorEntity,
      aggressorDamage,
      targetEntity,
      targetDamage,
      winnerEntity,
      asteroidEntity,
      playerEntity,
      targetPlayerEntity,
      timestamp
    );

    EncodedLengths _encodedLengths = encodeLengths(aggressorAllies, targetAllies);
    bytes memory _dynamicData = encodeDynamic(aggressorAllies, targetAllies);

    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = battleEntity;

    StoreCore.setRecord(_tableId, _keyTuple, _staticData, _encodedLengths, _dynamicData, _fieldLayout);
  }

  /**
   * @notice Set the full data using the data struct.
   */
  function set(bytes32 battleEntity, BattleResultData memory _table) internal {
    bytes memory _staticData = encodeStatic(
      _table.aggressorEntity,
      _table.aggressorDamage,
      _table.targetEntity,
      _table.targetDamage,
      _table.winnerEntity,
      _table.asteroidEntity,
      _table.playerEntity,
      _table.targetPlayerEntity,
      _table.timestamp
    );

    EncodedLengths _encodedLengths = encodeLengths(_table.aggressorAllies, _table.targetAllies);
    bytes memory _dynamicData = encodeDynamic(_table.aggressorAllies, _table.targetAllies);

    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = battleEntity;

    StoreSwitch.setRecord(_tableId, _keyTuple, _staticData, _encodedLengths, _dynamicData);
  }

  /**
   * @notice Set the full data using the data struct.
   */
  function _set(bytes32 battleEntity, BattleResultData memory _table) internal {
    bytes memory _staticData = encodeStatic(
      _table.aggressorEntity,
      _table.aggressorDamage,
      _table.targetEntity,
      _table.targetDamage,
      _table.winnerEntity,
      _table.asteroidEntity,
      _table.playerEntity,
      _table.targetPlayerEntity,
      _table.timestamp
    );

    EncodedLengths _encodedLengths = encodeLengths(_table.aggressorAllies, _table.targetAllies);
    bytes memory _dynamicData = encodeDynamic(_table.aggressorAllies, _table.targetAllies);

    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = battleEntity;

    StoreCore.setRecord(_tableId, _keyTuple, _staticData, _encodedLengths, _dynamicData, _fieldLayout);
  }

  /**
   * @notice Decode the tightly packed blob of static data using this table's field layout.
   */
  function decodeStatic(
    bytes memory _blob
  )
    internal
    pure
    returns (
      bytes32 aggressorEntity,
      uint256 aggressorDamage,
      bytes32 targetEntity,
      uint256 targetDamage,
      bytes32 winnerEntity,
      bytes32 asteroidEntity,
      bytes32 playerEntity,
      bytes32 targetPlayerEntity,
      uint256 timestamp
    )
  {
    aggressorEntity = (Bytes.getBytes32(_blob, 0));

    aggressorDamage = (uint256(Bytes.getBytes32(_blob, 32)));

    targetEntity = (Bytes.getBytes32(_blob, 64));

    targetDamage = (uint256(Bytes.getBytes32(_blob, 96)));

    winnerEntity = (Bytes.getBytes32(_blob, 128));

    asteroidEntity = (Bytes.getBytes32(_blob, 160));

    playerEntity = (Bytes.getBytes32(_blob, 192));

    targetPlayerEntity = (Bytes.getBytes32(_blob, 224));

    timestamp = (uint256(Bytes.getBytes32(_blob, 256)));
  }

  /**
   * @notice Decode the tightly packed blob of dynamic data using the encoded lengths.
   */
  function decodeDynamic(
    EncodedLengths _encodedLengths,
    bytes memory _blob
  ) internal pure returns (bytes32[] memory aggressorAllies, bytes32[] memory targetAllies) {
    uint256 _start;
    uint256 _end;
    unchecked {
      _end = _encodedLengths.atIndex(0);
    }
    aggressorAllies = (SliceLib.getSubslice(_blob, _start, _end).decodeArray_bytes32());

    _start = _end;
    unchecked {
      _end += _encodedLengths.atIndex(1);
    }
    targetAllies = (SliceLib.getSubslice(_blob, _start, _end).decodeArray_bytes32());
  }

  /**
   * @notice Decode the tightly packed blobs using this table's field layout.
   * @param _staticData Tightly packed static fields.
   * @param _encodedLengths Encoded lengths of dynamic fields.
   * @param _dynamicData Tightly packed dynamic fields.
   */
  function decode(
    bytes memory _staticData,
    EncodedLengths _encodedLengths,
    bytes memory _dynamicData
  ) internal pure returns (BattleResultData memory _table) {
    (
      _table.aggressorEntity,
      _table.aggressorDamage,
      _table.targetEntity,
      _table.targetDamage,
      _table.winnerEntity,
      _table.asteroidEntity,
      _table.playerEntity,
      _table.targetPlayerEntity,
      _table.timestamp
    ) = decodeStatic(_staticData);

    (_table.aggressorAllies, _table.targetAllies) = decodeDynamic(_encodedLengths, _dynamicData);
  }

  /**
   * @notice Delete all data for given keys.
   */
  function deleteRecord(bytes32 battleEntity) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = battleEntity;

    StoreSwitch.deleteRecord(_tableId, _keyTuple);
  }

  /**
   * @notice Delete all data for given keys.
   */
  function _deleteRecord(bytes32 battleEntity) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = battleEntity;

    StoreCore.deleteRecord(_tableId, _keyTuple, _fieldLayout);
  }

  /**
   * @notice Tightly pack static (fixed length) data using this table's schema.
   * @return The static data, encoded into a sequence of bytes.
   */
  function encodeStatic(
    bytes32 aggressorEntity,
    uint256 aggressorDamage,
    bytes32 targetEntity,
    uint256 targetDamage,
    bytes32 winnerEntity,
    bytes32 asteroidEntity,
    bytes32 playerEntity,
    bytes32 targetPlayerEntity,
    uint256 timestamp
  ) internal pure returns (bytes memory) {
    return
      abi.encodePacked(
        aggressorEntity,
        aggressorDamage,
        targetEntity,
        targetDamage,
        winnerEntity,
        asteroidEntity,
        playerEntity,
        targetPlayerEntity,
        timestamp
      );
  }

  /**
   * @notice Tightly pack dynamic data lengths using this table's schema.
   * @return _encodedLengths The lengths of the dynamic fields (packed into a single bytes32 value).
   */
  function encodeLengths(
    bytes32[] memory aggressorAllies,
    bytes32[] memory targetAllies
  ) internal pure returns (EncodedLengths _encodedLengths) {
    // Lengths are effectively checked during copy by 2**40 bytes exceeding gas limits
    unchecked {
      _encodedLengths = EncodedLengthsLib.pack(aggressorAllies.length * 32, targetAllies.length * 32);
    }
  }

  /**
   * @notice Tightly pack dynamic (variable length) data using this table's schema.
   * @return The dynamic data, encoded into a sequence of bytes.
   */
  function encodeDynamic(
    bytes32[] memory aggressorAllies,
    bytes32[] memory targetAllies
  ) internal pure returns (bytes memory) {
    return abi.encodePacked(EncodeArray.encode((aggressorAllies)), EncodeArray.encode((targetAllies)));
  }

  /**
   * @notice Encode all of a record's fields.
   * @return The static (fixed length) data, encoded into a sequence of bytes.
   * @return The lengths of the dynamic fields (packed into a single bytes32 value).
   * @return The dynamic (variable length) data, encoded into a sequence of bytes.
   */
  function encode(
    bytes32 aggressorEntity,
    uint256 aggressorDamage,
    bytes32 targetEntity,
    uint256 targetDamage,
    bytes32 winnerEntity,
    bytes32 asteroidEntity,
    bytes32 playerEntity,
    bytes32 targetPlayerEntity,
    uint256 timestamp,
    bytes32[] memory aggressorAllies,
    bytes32[] memory targetAllies
  ) internal pure returns (bytes memory, EncodedLengths, bytes memory) {
    bytes memory _staticData = encodeStatic(
      aggressorEntity,
      aggressorDamage,
      targetEntity,
      targetDamage,
      winnerEntity,
      asteroidEntity,
      playerEntity,
      targetPlayerEntity,
      timestamp
    );

    EncodedLengths _encodedLengths = encodeLengths(aggressorAllies, targetAllies);
    bytes memory _dynamicData = encodeDynamic(aggressorAllies, targetAllies);

    return (_staticData, _encodedLengths, _dynamicData);
  }

  /**
   * @notice Encode keys as a bytes32 array using this table's field layout.
   */
  function encodeKeyTuple(bytes32 battleEntity) internal pure returns (bytes32[] memory) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = battleEntity;

    return _keyTuple;
  }
}
