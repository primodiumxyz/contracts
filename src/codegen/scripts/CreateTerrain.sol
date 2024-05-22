// SPDX-License-Identifier: MIT
pragma solidity >=0.8.24;

import { P_Terrain } from "codegen/index.sol";
import { EResource } from "codegen/common.sol";

function createTerrain() {
  P_Terrain.set(1, 17, 4, uint8(EResource.Iron));
  P_Terrain.set(1, 16, 5, uint8(EResource.Iron));
  P_Terrain.set(1, 15, 6, uint8(EResource.Iron));
  P_Terrain.set(1, 15, 7, uint8(EResource.Iron));
  P_Terrain.set(1, 15, 8, uint8(EResource.Iron));
  P_Terrain.set(1, 24, 8, uint8(EResource.Iron));
  P_Terrain.set(1, 25, 8, uint8(EResource.Iron));
  P_Terrain.set(1, 26, 8, uint8(EResource.Iron));
  P_Terrain.set(1, 27, 8, uint8(EResource.Iron));
  P_Terrain.set(1, 14, 9, uint8(EResource.Iron));
  P_Terrain.set(1, 14, 10, uint8(EResource.Iron));
  P_Terrain.set(1, 21, 15, uint8(EResource.Iron));
  P_Terrain.set(1, 22, 16, uint8(EResource.Iron));
  P_Terrain.set(1, 22, 17, uint8(EResource.Iron));
  P_Terrain.set(1, 22, 18, uint8(EResource.Iron));
  P_Terrain.set(1, 22, 19, uint8(EResource.Iron));
  P_Terrain.set(1, 23, 19, uint8(EResource.Iron));
  P_Terrain.set(1, 20, 20, uint8(EResource.Iron));
  P_Terrain.set(1, 21, 20, uint8(EResource.Iron));
  P_Terrain.set(1, 24, 20, uint8(EResource.Iron));
  P_Terrain.set(2, 34, 1, uint8(EResource.Kimberlite));
  P_Terrain.set(2, 14, 10, uint8(EResource.Kimberlite));
  P_Terrain.set(2, 24, 12, uint8(EResource.Kimberlite));
  P_Terrain.set(2, 19, 20, uint8(EResource.Kimberlite));
  P_Terrain.set(3, 23, 4, uint8(EResource.Iridium));
  P_Terrain.set(3, 21, 6, uint8(EResource.Iridium));
  P_Terrain.set(3, 21, 9, uint8(EResource.Iridium));
  P_Terrain.set(3, 12, 11, uint8(EResource.Iridium));
  P_Terrain.set(3, 13, 16, uint8(EResource.Iridium));
  P_Terrain.set(3, 12, 19, uint8(EResource.Iridium));
  P_Terrain.set(4, 19, 6, uint8(EResource.Platinum));
  P_Terrain.set(4, 27, 8, uint8(EResource.Platinum));
  P_Terrain.set(4, 12, 10, uint8(EResource.Platinum));
  P_Terrain.set(4, 23, 13, uint8(EResource.Platinum));
  P_Terrain.set(4, 15, 14, uint8(EResource.Platinum));
  P_Terrain.set(4, 20, 20, uint8(EResource.Platinum));
  P_Terrain.set(5, 27, 4, uint8(EResource.Titanium));
  P_Terrain.set(5, 13, 5, uint8(EResource.Titanium));
  P_Terrain.set(5, 18, 8, uint8(EResource.Titanium));
  P_Terrain.set(5, 24, 11, uint8(EResource.Titanium));
  P_Terrain.set(5, 14, 14, uint8(EResource.Titanium));
  P_Terrain.set(5, 21, 18, uint8(EResource.Titanium));
  P_Terrain.set(6, 14, 6, uint8(EResource.Iron));
  P_Terrain.set(6, 13, 7, uint8(EResource.Iron));
  P_Terrain.set(6, 21, 9, uint8(EResource.Iron));
  P_Terrain.set(6, 22, 10, uint8(EResource.Iron));
  P_Terrain.set(6, 29, 10, uint8(EResource.Iron));
  P_Terrain.set(6, 28, 11, uint8(EResource.Iron));
  P_Terrain.set(6, 13, 13, uint8(EResource.Iron));
  P_Terrain.set(6, 5, 14, uint8(EResource.Iron));
  P_Terrain.set(6, 6, 14, uint8(EResource.Iron));
  P_Terrain.set(6, 13, 14, uint8(EResource.Iron));
  P_Terrain.set(6, 22, 14, uint8(EResource.Iron));
  P_Terrain.set(6, 23, 14, uint8(EResource.Iron));
  P_Terrain.set(6, 13, 18, uint8(EResource.Iron));
  P_Terrain.set(6, 14, 19, uint8(EResource.Iron));
  P_Terrain.set(7, 12, 8, uint8(EResource.Iron));
  P_Terrain.set(7, 13, 9, uint8(EResource.Iron));
  P_Terrain.set(7, 12, 12, uint8(EResource.Iron));
  P_Terrain.set(7, 22, 13, uint8(EResource.Iron));
  P_Terrain.set(7, 22, 14, uint8(EResource.Iron));
  P_Terrain.set(7, 22, 15, uint8(EResource.Iron));
}
