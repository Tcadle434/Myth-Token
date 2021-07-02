const MythToken = artifacts.require("MythToken");

module.exports = function (deployer) {
  deployer.deploy(MythToken, 1000000);
};
