# Sample crypto gumroad-like project

This project demonstrates a basic Hardhat use case. It comes with a sample contract, a test for that contract, a sample script that deploys that contract, and an example of a task implementation, which simply making purchases

Try running some of the following tasks:

Compile code
```
npx hardhat compile 
```

Run hardhat locally
```shell
npx hardhat node
```



Deploy locally
```
npx hardhat run scripts/deploy.js --network localhost
```

this will return you an smart contract:

```
Greeter deployed to: 0x9fE46736679d2D9a65F0992F2272dE9f3c7fa6e0
```

Deploy to rinkeby
```
npx hardhat run scripts/deploy.js --network rinkeby
```

