package ts.html;
/**
	The nodes of a document subtree and a position within them.
**/
typedef ITreeWalker = {
	var currentNode : INode;
	final filter : Null<NodeFilter>;
	final root : INode;
	final whatToShow : Float;
	function firstChild():Null<INode>;
	function lastChild():Null<INode>;
	function nextNode():Null<INode>;
	function nextSibling():Null<INode>;
	function parentNode():Null<INode>;
	function previousNode():Null<INode>;
	function previousSibling():Null<INode>;
};