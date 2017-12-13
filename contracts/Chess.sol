pragma solidity ^0.4.4;

contract Chess {
	
	enum Status {
		Proposed,
		Started,
		DrawProposed,
		Draw,
		CheckWhite,
		CheckBlack,
		CheckMateWhite,
		CheckMateBlack,
		Stalemate,
		WhiteResign,
		BlackResign
	}

	address wager;
	address challenger; // White is the challenger to eliminate purported white advantage
	address opponent; // Black
	mapping (uint => mapping (uint => mapping(uint => uint[2]))) pieces;
	uint[12] promoted; // enable promoting, array of pawns
	bool[6] castlePiecesMoved; // To enable castle

	uint moveNumber;
	address drawOffered;
	address drawAccepted;
	Status status;

	// Move 
	function move (
		uint pieceType, // { Bishop, Knight, Rook, Pawn, King, Queen }
		uint pieceNumber, // { Bishop, Knight, Rook, Pawn, King, Queen }
		bool white, // { B, W }
		uint rank, // Between 1 and 8
		uint file // 'A,B,C,D,E,F,G,H'
	) 
		public pure returns (bool) 
	{
		return true;
	}

}
