const HDWalletProvider = require('truffle-hdwallet-provider');

module.exports = {
  networks: {
    // development: {
    //   host: "127.0.0.1",
    //   port: 8545,
    //   network_id: "*" // Match any network id
    // },

    rinkeby: {
      provider: () => new HDWalletProvider("grain urge settle floor large actual banana cave trap hole antenna tail", "rinkeby.infura.io/v3/bccef2632c00453b9f32337cc72b779a"),
      network_id: 3,       // Ropsten's id
    },
  },


};