/***
@fileOverview ./priceChargeSpecification.sol
***/

contract PriceChargeSpecification {

  uint public value;
  address public seller;
  address public buyer;
  enum State { Created, Locked, Inactive }
  State public state;

  function PriceChargeSpecification () {
    /// @name PriceChargeSpecification
    /// @entity
    seller = msg.sender;
    value = msg.value / 2;
    if (2 * value != msg.value) throw;
  }


  modifier require (bool _condition) {
    if (!_condition) throw;
    _
  }

  modifier onlyBuyer () {
    if (msg.sender != buyer) throw;
    _
  }

  modifier onlySeller () {
    if (msg.sender != seller) throw;
    _
  }

  modifier inState (State _state) {
    if (state != _state) throw;
    _
  }


  event aborted();
  event priceChargeSpecificationCommitted();
  event itemReceived();


  function abort () onlySeller inState (State.Created) {
    /// @name abort
    /// @description
    aborted();
    seller.send(this.balance);
    state = State.Inactive;
  }


  function priceChargeSpecificationCommit () inState (State.Created) require (msg.value == 2 * value) {
    /// @name priceChargeSpecificationCommit
    /// @description
    priceChargeSpecificationCommitted();
    buyer = msg.sender;
    state = State.Locked;
  }


  function priceChargeSpecificationPush () onlyBuyer inState (State.Locked) {
    /// @name priceChargeSpecificationPush
    /// @description
    itemReceived();
    buyer.send(value);
    seller.send(this.balance);
    state = State.Inactive;
  }


  function() {
    /// @name unnamed
    throw;
  }
}

