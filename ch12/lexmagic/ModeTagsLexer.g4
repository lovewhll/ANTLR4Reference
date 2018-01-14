lexer grammar ModeTagsLexer;

// Default mode rules (the SEA)
OPEN   : '<'    -> mode(ISLAND) ;        // switch to ISLAND mode
TEXT   : ~'<'+ ;

mode ISLAND;
CLOSE  : '>'    -> mode(DEFAULT_MODE) ;  // back to the SEA mode
SLASH  : '/' ;
ID     : [a-zA-Z]+ ;                     // match/send ID in tag to parser


