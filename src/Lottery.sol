// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;
/**
 * @title A lottery Smart Contract
 * @author Talha Ansari
 * @notice This conttract is for creating a sample of raffle contract
 * @dev This implements the Chainlink VRF Version 2.5
 */

contract Lottery {
    //Lottery Errors
    error Lottery__FeesNotEnough();
    error Lottery__NotOpen();

    //Type Declaration 
    enum LotteryState{
        OPEN,
        CALCULATING
    }

    //Lotery State Variables
    uint256 private immutable i_entryFees;
    LotteryState private s_LotteryState;
    

    function enterLottery() public payable{
        if(msg.value<i_entryFees){
            revert Lottery__FeesNotEnough();
        }

        if(s_LotteryState==LotteryState.CALCULATING){
            revert Lottery__NotOpen();
        }

        //s_player.push(payable(msg.sender));


    }
       
}
