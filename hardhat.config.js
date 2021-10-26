require("@nomiclabs/hardhat-waffle");
require("dotenv").config({ path: __dirname + "/.env" });

const { PRIVATE_KEY } = process.env;

module.exports = {
  solidity: "0.8.0",
  networks: {
    mumbai: {
      url: "https://rpc-mumbai.maticvigil.com",
      accounts: [PRIVATE_KEY],
    },
    matic: {
      url: "https://polygon-rpc.com/",
      accounts: [PRIVATE_KEY],
    },
    rinkeby: {
      url: "https://eth-rinkeby.alchemyapi.io/v2/nwh09n1I_2VH_etpqW3oM74-4-wfy0bi",
      accounts: [PRIVATE_KEY],
    },
  },
};
