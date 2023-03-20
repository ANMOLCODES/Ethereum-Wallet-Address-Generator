import { ethers } from "ethers";
import { writeFileSync } from "fs";

// write a for loop to create 30 wallets
for (let i = 0; i < 30; i++) {
  const wallet = ethers.Wallet.createRandom();
  console.log(wallet);
  const data = {
    address: wallet.address,
    mnemonic: wallet.mnemonic.phrase,
  };
  // write the data to a file and append
  writeFileSync("wallets.json", JSON.stringify(data, null, 2), {
    flag: "a",
  });
  writeFileSync("addresses.txt", '"' + data.address + '"' + " ,", {
    flag: "a",
  });
}