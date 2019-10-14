const MySuperLibrary1 = artifacts.require("mysuperLibrary1");

const MySuperContractBase =
 artifacts.require("MySuperContractBase");

 const MySuperContractQuadraticEquation =
 artifacts.require("MySuperContractQuadraticEquation");

module.exports = function(_deployer) {
  // Use deployer to state migration tasks.
  _deployer.link(MySuperLibrary1, MySuperContractBase);
  _deployer.link(MySuperContractBase, MySuperContractQuadraticEquation);
  _deployer.link(MySuperLibrary1, MySuperContractQuadraticEquation);
  _deployer.deploy(MySuperContractQuadraticEquation);
};
