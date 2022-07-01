structure Symbol_Table :
sig
    exception Typeerror of string;
    val insertl : string list * W_datatypes.root -> unit;
    val inserts : string * W_datatypes.root -> unit;
    val lookin : string -> (W_datatypes.root * (int * int * int * int));
    val clr : unit -> unit;
    val findid : string -> bool;
    val data : unit -> (string * (W_datatypes.root * (int * int * int * int))) list;
end =
struct    
    exception Typeerror of string;
    val loc = ref 0;
    val st : (string, (W_datatypes.root * (int * int * int * int))) HashTable.hash_table = HashTable.mkTable (HashString.hashString, op =) (1000, Fail "not  found");
    fun insertl( [], _ ) = ()
      | insertl( x::y, t ) = (HashTable.insert st (x,(t,(!loc,!loc,!loc,!loc)));loc := !loc + 1; insertl(y,t))
    fun inserts( x, t ) = (HashTable.insert st (x,(t,(!loc,!loc,!loc,!loc)));loc := !loc + 1)
    fun lookin( s ) = HashTable.lookup st (s);
    fun clr () = (HashTable.clear st;loc := 0)
    fun findid (s) = HashTable.inDomain st (s);
    fun data () = HashTable.listItemsi st;
end