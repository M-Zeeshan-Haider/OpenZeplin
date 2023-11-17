pragma solidity ^0.8.23;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol" ;

contract QuickNodeNFT is ERC721URIStorage, Ownable{
    constructor() ERC721("OpenApes","OPA") {}
    function mint(
        address _to,
        uint256 _tokenId,
        string calldata _uri
    ) external onlyOwner{
        _mint(_to,_tokenId);
        _setTokenURI(_tokenId,_uri);
    }
}