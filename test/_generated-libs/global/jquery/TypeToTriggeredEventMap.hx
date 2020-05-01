package global.jquery;
typedef TypeToTriggeredEventMap<TDelegateTarget, TData, TCurrentTarget, TTarget> = {
	var change : ChangeEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>;
	var resize : ResizeEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>;
	var scroll : ScrollEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>;
	var select : SelectEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>;
	var submit : SubmitEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>;
	var click : ClickEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>;
	var contextmenu : ContextMenuEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>;
	var dblclick : DoubleClickEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>;
	var mousedown : MouseDownEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>;
	var mouseenter : MouseEnterEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>;
	var mouseleave : MouseLeaveEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>;
	var mousemove : MouseMoveEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>;
	var mouseout : MouseOutEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>;
	var mouseover : MouseOverEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>;
	var mouseup : MouseUpEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>;
	var keydown : KeyDownEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>;
	var keypress : KeyPressEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>;
	var keyup : KeyUpEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>;
	var touchcancel : TouchCancelEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>;
	var touchend : TouchEndEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>;
	var touchmove : TouchMoveEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>;
	var touchstart : TouchStartEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>;
	var blur : BlurEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>;
	var focus : FocusEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>;
	var focusin : FocusInEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>;
	var focusout : FocusOutEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>;
};