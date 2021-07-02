const MythToken = artifacts.require("MythToken")

contract("MythToken", (accounts) => {

  before(async () => {
    mythToken = await MythToken.deployed()
  })

  it("gives the owner of the token 1M toekns", async () => {
    let balance = await mythToken.balanceOf(accounts[0])
    balance = web3.utils.fromWei(balance, 'ether')
    assert.equal(balance, '1000000', "Balance should be 1M for creator")
  })

  it("can transfer tokens between accounts", async () => {
    let amount = web3.utils.toWei('1000', 'ether')
    await mythToken.transfer(accounts[1], amount, {from: accounts[0] })

    let balance = await mythToken.balanceOf(accounts[1])
    balance = web3.utils.fromWei(balance, 'ether')
    assert.equal(balance, '1000', "Balance should be 1k for transferred account")
  })

})
