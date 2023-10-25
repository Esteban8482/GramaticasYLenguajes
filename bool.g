start: logicalexpression;

logicalexpression:
     '\(' logicalexpression '\)'
    | '!' logicalexpression 
    | logicalexpression ORL logicalexpression
    | logicalexpression ORA logicalexpression
    | logicalexpression IMPL logicalexpression
    |TRUE
    |FALSE
    ;

IMPL : '=>';
ORL : 'or';
ORA : '\+';
TRUE : 'true';
FALSE : 'false';

OPC : '/\*';
CPC : '\*/';
COMMENT : OPC '.*?' CPC (%ignore); 

// Ignore white space, tab and new lines.
WS: '[ \t\r\n]+' (%ignore);		