//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/*
    A CRUD (Create, Read, Update, Delete) dApp where users can create posts, read posts, update existing posts and remove posts.
    This Project will encompess CRUD of posts by implementing a simple bulletin board. 
    Other users can express interest in a specific bulletin, and the owner of the post can follow up with the user, via email
*/
contract Bulletin is Ownable {
    
    uint public totalPosts;
    Post[] public posts;
    mapping(address => Post) public postsByOwner;

    struct Post {
        bytes32 postId; // unique id of post
        uint postedTimestamp; // The timestamp when proposal was made
        string message; // The message the user sent.
    }

    constructor() {

    }
}
