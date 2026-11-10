
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Voting {
    string[] public candidates;
    mapping(uint256 => uint256) public votes;
    mapping(address => bool) public hasVoted;

    constructor() {
        candidates.push("Alice");
        candidates.push("Bob");
    }

    // Vote for a candidate
    function vote(uint256 _candidateIndex) public {
        require(!hasVoted[msg.sender], "Already voted");
        require(_candidateIndex < candidates.length, "Invalid candidate");

        hasVoted[msg.sender] = true;
        votes[_candidateIndex]++;
    }

    // Get candidate count
    function getCandidateCount() public view returns (uint256) {
        return candidates.length;
    }

    // Get total votes of a candidate
    function getVotes(uint256 _candidateIndex)
        public
        view
        returns (uint256)
    {
        require(_candidateIndex < candidates.length, "Invalid candidate");
        return votes[_candidateIndex];
    }
}
