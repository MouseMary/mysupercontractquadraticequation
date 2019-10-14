const MySuperLibrary1 = artifacts.require("mysuperLibrary1");
const mySuperContractBase = artifacts.require("mySuperContractBase");

module.exports = function(deployer) {
  deployer.deploy(MySuperLibrary1);
  deployer.link(MySuperLibrary1, mySuperContractBase);
  deployer.deploy(mySuperContractBase);

};
