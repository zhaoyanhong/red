Red/System [
	Title:   "Red runtime macro definitions"
	Author:  "Nenad Rakocevic"
	File: 	 %macros.reds
	Rights:  "Copyright (C) 2011 Nenad Rakocevic. All rights reserved."
	License: {
		Distributed under the Boost Software License, Version 1.0.
		See https://github.com/dockimbel/Red/blob/master/red-system/runtime/BSL-License.txt
	}
]

#enum datatypes! [
	TYPE_DATATYPE
	TYPE_UNSET
	TYPE_NONE
	TYPE_LOGIC
	TYPE_BLOCK
	TYPE_STRING
	TYPE_INTEGER
	TYPE_SYMBOL
	TYPE_CONTEXT
	TYPE_WORD
	TYPE_SET_WORD
	TYPE_REFINEMENT	
	TYPE_CHAR
	TYPE_NATIVE
	TYPE_ACTION
	TYPE_OP
	
	TYPE_TYPESET

	TYPE_ERROR
	TYPE_GET_WORD
	TYPE_LIT_WORD

	TYPE_BINARY
	TYPE_PAREN

	TYPE_ISSUE
	TYPE_PATH
	TYPE_SET_PATH
	TYPE_LIT_PATH

	TYPE_FUNCTION
	TYPE_CLOSURE
	TYPE_ROUTINE
	TYPE_OBJECT
	TYPE_PORT
	TYPE_BITSET
	TYPE_FLOAT
	
	TYPE_STACKFRAME
]

#enum actions! [

	;-- General actions --
	ACT_MAKE: 	1										;-- used as index in action-table (one-based)
	ACT_RANDOM
	ACT_REFLECT
	ACT_TO
	ACT_FORM
	ACT_MOLD
	
	;-- Scalar actions --
	ACT_ABSOLUTE
	ACT_ADD
	ACT_DIVIDE
	ACT_MULTIPLY
	ACT_NEGATE
	ACT_POWER
	ACT_REMAINDER
	ACT_ROUND
	ACT_SUBTRACT
	ACT_EVEN?
	ACT_ODD?
	
	;-- Bitwise actions --
	ACT_AND~
	ACT_COMPLEMENT
	ACT_OR~
	ACT_XOR~
	
	;-- Series actions --
	ACT_APPEND
	ACT_AT
	ACT_BACK
	ACT_CHANGE
	ACT_CLEAR
	ACT_COPY
	ACT_FIND
	ACT_HEAD
	ACT_HEAD?
	ACT_INDEX?
	ACT_INSERT
	ACT_LENGTH?
	ACT_NEXT
	ACT_PICK
	ACT_POKE
	ACT_REMOVE
	ACT_REVERSE
	ACT_SELECT
	ACT_SORT
	ACT_SKIP
	ACT_SWAP
	ACT_TAIL
	ACT_TAIL?
	ACT_TAKE
	ACT_TRIM
	
	;-- I/O actions --
	ACT_CREATE
	ACT_CLOSE
	ACT_DELETE
	ACT_MODIFY
	ACT_OPEN
	ACT_OPEN?
	ACT_QUERY
	ACT_READ
	ACT_RENAME
	ACT_UPDATE
	ACT_WRITE

	;ACT_APPLY										;; add it? @@
]

#enum math-op! [
	OP_ADD
	OP_SUB
	OP_MUL
	OP_DIV
]

#define ACTIONS_NB		57							;-- number of actions


#either debug? = yes [
	#define ------------| 	print-line
][
	#define ------------| 	comment
]

