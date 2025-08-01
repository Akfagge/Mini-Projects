// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract SimpleVoting {
    address public admin;

    constructor() {
        admin = msg.sender;
    }

    struct Candidate {
        uint256 id;
        string name;
        uint256 voteCount;
    }

    Candidate[] public candidates;

    mapping(address => bool) public hasVoted;

    function addCandidate(string memory _name) external {
        require(msg.sender == admin, "Only admin can add candidates");

        uint256 newId = candidates.length;
        candidates.push(Candidate(newId, _name, 0));
    }

    function vote(uint256 _candidateId) external {
        require(!hasVoted[msg.sender], "You already voted");
        require(_candidateId < candidates.length, "Invalid candidate");

        candidates[_candidateId].voteCount += 1;
        hasVoted[msg.sender] = true;
    }

    function getCandidates() external view returns (Candidate[] memory) {
        return candidates;
    }
}
