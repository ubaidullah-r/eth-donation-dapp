require("@nomiclabs/hardhat-waffle")
require('dotenv').config({path:__dirname+'/.env'});
const { API_URL} = process.env;

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  networks: {
    development: {
      url: 'http://localhost:8545', // Change to your local development network URL
    },
    aws: {
      url: API_URL, // Set your AWS EC2 node URL in the .env file
    },
  },
  solidity: {
    version: "0.8.0"
  },
  paths:{
    artifacts:"./client/src/artifacts",
  }
};
