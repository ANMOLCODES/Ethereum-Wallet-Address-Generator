// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Airdrop is ERC1155, Ownable {
    constructor() ERC1155("https://ipfs.moralis.io:2053/ipfs/QmXf9gQxAJThSkhXLh6MTF6wPhERTA43Kc9AUUTVSmgJkp") {}

    function mint(address account, uint256 id, uint256 amount, bytes memory data)
        public
        onlyOwner
    {
        _mint(account, id, amount, data);
    }

    function mintFORall(address[] memory _accounts)
        public
        onlyOwner
    {
        for(uint i =0; i<_accounts.length;i++)
        {
            mint(_accounts[i],1,1,"0x00");
        }
    }

    function mintBatch(address to, uint256[] memory ids, uint256[] memory amounts, bytes memory data)
        public
        onlyOwner
    {
        _mintBatch(to, ids, amounts, data);
    }
}