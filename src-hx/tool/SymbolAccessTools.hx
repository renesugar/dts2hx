package tool;

import typescript.ts.InternalSymbolName;
import haxe.macro.Expr.Position;
import haxe.macro.Expr.MetadataEntry;
using tool.StringTools;
using tool.HaxeTools;

class SymbolAccessTools {
	
	static public function getSymbolChain(access: SymbolAccess) {
		return switch access {
			case AmbientModule(_, symbolChain), ExportModule(_, _, symbolChain), Global(symbolChain): symbolChain;
			case Inaccessible: [];
		}
	}

	static public function getIdentifierChain(access: SymbolAccess): Array<String> {
		return getSymbolChain(access).filter(s -> switch s.name {
			case InternalSymbolName.ExportEquals: false;
			default: true;
		}).map(s -> s.name);
	}

	static public function toAccessMetadata(access: SymbolAccess): MetadataEntry {
		var pos = getPosition(access);
		var identifierChain = getIdentifierChain(access);
		return switch access {
			case AmbientModule(path, _) | ExportModule(path, _): {
				name: ':jsRequire',
				params: [path.unwrapQuotes().toStringExpr(pos)].concat(
					identifierChain.length > 0 ? [identifierChain.join('.').toStringExpr(pos)] : []
				),
				pos: pos,
			}
			case Global(_): {
				name: ':native',
				params: [identifierChain.join('.').toStringExpr(pos)],
				pos: pos,
			}
			case Inaccessible: {
				// this type cannot be reached directly in javascript
				// there's no core metadata for this
				name: 'tsInaccessible',
				pos: pos,
			}
		}
	}

	static function getPosition(access: SymbolAccess): Position {
		return null;
	}

	/**
		String representation, useful for debugging (not valid syntax)
	**/
	static public function toString(access: SymbolAccess) {
		var identifierChain = getIdentifierChain(access);
		return switch access {
			case AmbientModule(path, _): ['require($path)'].concat(identifierChain).join('.');
			case ExportModule(moduleName, _): ['require("$moduleName")'].concat(identifierChain).join('.');
			case Global(_): '::${identifierChain.join('.')}';
			case Inaccessible: '*Inaccessible*';
		}
	}

}