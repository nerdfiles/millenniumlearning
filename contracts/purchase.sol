/***
@fileOverview ./purchase.sol
***/

contract Purchase {

  uint public value;
  address public seller;
  address public buyer;
  enum State { Created, Locked, Inactive }
  State public state;

  function Purchase () {
    /// @name Purchase
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
  event purchaseCommitted();
  event itemReceived();


  function abort () onlySeller inState (State.Created) {
    /// @name abort
    /// @description
    aborted();
    seller.send(this.balance);
    state = State.Inactive;
  }


  function purchaseCommit () inState (State.Created) require (msg.value == 2 * value) {
    /// @name purchaseCommit
    /// @description
    purchaseCommitted();
    buyer = msg.sender;
    state = State.Locked;
  }


  function purchasePush () onlyBuyer inState (State.Locked) {
    /// @name purchasePush
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

