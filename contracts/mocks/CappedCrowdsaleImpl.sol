pragma solidity ^0.4.24;

import "../token/ERC20/IERC20.sol";
import "../crowdsale/validation/CappedCrowdsale.sol";


contract CappedCrowdsaleImpl is CappedCrowdsale {

  constructor (
    uint256 _rate,
    address _wallet,
    IERC20 _token,
    uint256 _cap
  )
    public
    Crowdsale(_rate, _wallet, _token)
    CappedCrowdsale(_cap)
  {
  }

}
