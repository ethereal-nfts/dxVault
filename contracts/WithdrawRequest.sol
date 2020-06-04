pragma solidity 0.5.17;

import "@gnosis.pm/safe-contracts/contracts/base/Module.sol";
import "@gnosis.pm/safe-contracts/contracts/base/ModuleManager.sol";
import "@openzeppelin/contracts-ethereum-package/contracts/math/SafeMath.sol";
import "@openzeppelin/upgrades/contracts/Initializable.sol";

import "./libraries/Reputation.sol";


contract WithdrawRequest is Module, Initializable {
    Reputation private dxDaoRep;
    uint public snapshotBlock;

    function initialize (Reputation _dxDaoRep, uint _snapshotBlock) public initializer {
        dxDaoRep = _dxDaoRep;
        snapshotBlock = _snapshotBlock;
    }
}
