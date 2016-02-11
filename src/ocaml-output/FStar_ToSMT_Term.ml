
open Prims
# 26 "term.fs"
type sort =
| Bool_sort
| Int_sort
| Kind_sort
| Type_sort
| Term_sort
| String_sort
| Ref_sort
| Fuel_sort
| Array of (sort * sort)
| Arrow of (sort * sort)
| Sort of Prims.string

# 27 "term.fs"
let is_Bool_sort = (fun _discr_ -> (match (_discr_) with
| Bool_sort (_) -> begin
true
end
| _ -> begin
false
end))

# 28 "term.fs"
let is_Int_sort = (fun _discr_ -> (match (_discr_) with
| Int_sort (_) -> begin
true
end
| _ -> begin
false
end))

# 29 "term.fs"
let is_Kind_sort = (fun _discr_ -> (match (_discr_) with
| Kind_sort (_) -> begin
true
end
| _ -> begin
false
end))

# 30 "term.fs"
let is_Type_sort = (fun _discr_ -> (match (_discr_) with
| Type_sort (_) -> begin
true
end
| _ -> begin
false
end))

# 31 "term.fs"
let is_Term_sort = (fun _discr_ -> (match (_discr_) with
| Term_sort (_) -> begin
true
end
| _ -> begin
false
end))

# 32 "term.fs"
let is_String_sort = (fun _discr_ -> (match (_discr_) with
| String_sort (_) -> begin
true
end
| _ -> begin
false
end))

# 33 "term.fs"
let is_Ref_sort = (fun _discr_ -> (match (_discr_) with
| Ref_sort (_) -> begin
true
end
| _ -> begin
false
end))

# 34 "term.fs"
let is_Fuel_sort = (fun _discr_ -> (match (_discr_) with
| Fuel_sort (_) -> begin
true
end
| _ -> begin
false
end))

# 35 "term.fs"
let is_Array = (fun _discr_ -> (match (_discr_) with
| Array (_) -> begin
true
end
| _ -> begin
false
end))

# 36 "term.fs"
let is_Arrow = (fun _discr_ -> (match (_discr_) with
| Arrow (_) -> begin
true
end
| _ -> begin
false
end))

# 37 "term.fs"
let is_Sort = (fun _discr_ -> (match (_discr_) with
| Sort (_) -> begin
true
end
| _ -> begin
false
end))

# 35 "term.fs"
let ___Array____0 : sort  ->  (sort * sort) = (fun projectee -> (match (projectee) with
| Array (_55_10) -> begin
_55_10
end))

# 36 "term.fs"
let ___Arrow____0 : sort  ->  (sort * sort) = (fun projectee -> (match (projectee) with
| Arrow (_55_13) -> begin
_55_13
end))

# 37 "term.fs"
let ___Sort____0 : sort  ->  Prims.string = (fun projectee -> (match (projectee) with
| Sort (_55_16) -> begin
_55_16
end))

# 39 "term.fs"
let rec strSort : sort  ->  Prims.string = (fun x -> (match (x) with
| Bool_sort -> begin
"Bool"
end
| Int_sort -> begin
"Int"
end
| Kind_sort -> begin
"Kind"
end
| Type_sort -> begin
"Type"
end
| Term_sort -> begin
"Term"
end
| String_sort -> begin
"String"
end
| Ref_sort -> begin
"Ref"
end
| Fuel_sort -> begin
"Fuel"
end
| Array (s1, s2) -> begin
(let _157_54 = (strSort s1)
in (let _157_53 = (strSort s2)
in (FStar_Util.format2 "(Array %s %s)" _157_54 _157_53)))
end
| Arrow (s1, s2) -> begin
(let _157_56 = (strSort s1)
in (let _157_55 = (strSort s2)
in (FStar_Util.format2 "(%s -> %s)" _157_56 _157_55)))
end
| Sort (s) -> begin
s
end))

# 52 "term.fs"
type op =
| True
| False
| Not
| And
| Or
| Imp
| Iff
| Eq
| LT
| LTE
| GT
| GTE
| Add
| Sub
| Div
| Mul
| Minus
| Mod
| ITE
| Var of Prims.string

# 53 "term.fs"
let is_True = (fun _discr_ -> (match (_discr_) with
| True (_) -> begin
true
end
| _ -> begin
false
end))

# 54 "term.fs"
let is_False = (fun _discr_ -> (match (_discr_) with
| False (_) -> begin
true
end
| _ -> begin
false
end))

# 55 "term.fs"
let is_Not = (fun _discr_ -> (match (_discr_) with
| Not (_) -> begin
true
end
| _ -> begin
false
end))

# 56 "term.fs"
let is_And = (fun _discr_ -> (match (_discr_) with
| And (_) -> begin
true
end
| _ -> begin
false
end))

# 57 "term.fs"
let is_Or = (fun _discr_ -> (match (_discr_) with
| Or (_) -> begin
true
end
| _ -> begin
false
end))

# 58 "term.fs"
let is_Imp = (fun _discr_ -> (match (_discr_) with
| Imp (_) -> begin
true
end
| _ -> begin
false
end))

# 59 "term.fs"
let is_Iff = (fun _discr_ -> (match (_discr_) with
| Iff (_) -> begin
true
end
| _ -> begin
false
end))

# 60 "term.fs"
let is_Eq = (fun _discr_ -> (match (_discr_) with
| Eq (_) -> begin
true
end
| _ -> begin
false
end))

# 61 "term.fs"
let is_LT = (fun _discr_ -> (match (_discr_) with
| LT (_) -> begin
true
end
| _ -> begin
false
end))

# 62 "term.fs"
let is_LTE = (fun _discr_ -> (match (_discr_) with
| LTE (_) -> begin
true
end
| _ -> begin
false
end))

# 63 "term.fs"
let is_GT = (fun _discr_ -> (match (_discr_) with
| GT (_) -> begin
true
end
| _ -> begin
false
end))

# 64 "term.fs"
let is_GTE = (fun _discr_ -> (match (_discr_) with
| GTE (_) -> begin
true
end
| _ -> begin
false
end))

# 65 "term.fs"
let is_Add = (fun _discr_ -> (match (_discr_) with
| Add (_) -> begin
true
end
| _ -> begin
false
end))

# 66 "term.fs"
let is_Sub = (fun _discr_ -> (match (_discr_) with
| Sub (_) -> begin
true
end
| _ -> begin
false
end))

# 67 "term.fs"
let is_Div = (fun _discr_ -> (match (_discr_) with
| Div (_) -> begin
true
end
| _ -> begin
false
end))

# 68 "term.fs"
let is_Mul = (fun _discr_ -> (match (_discr_) with
| Mul (_) -> begin
true
end
| _ -> begin
false
end))

# 69 "term.fs"
let is_Minus = (fun _discr_ -> (match (_discr_) with
| Minus (_) -> begin
true
end
| _ -> begin
false
end))

# 70 "term.fs"
let is_Mod = (fun _discr_ -> (match (_discr_) with
| Mod (_) -> begin
true
end
| _ -> begin
false
end))

# 71 "term.fs"
let is_ITE = (fun _discr_ -> (match (_discr_) with
| ITE (_) -> begin
true
end
| _ -> begin
false
end))

# 72 "term.fs"
let is_Var = (fun _discr_ -> (match (_discr_) with
| Var (_) -> begin
true
end
| _ -> begin
false
end))

# 72 "term.fs"
let ___Var____0 : op  ->  Prims.string = (fun projectee -> (match (projectee) with
| Var (_55_38) -> begin
_55_38
end))

# 74 "term.fs"
type qop =
| Forall
| Exists

# 75 "term.fs"
let is_Forall = (fun _discr_ -> (match (_discr_) with
| Forall (_) -> begin
true
end
| _ -> begin
false
end))

# 76 "term.fs"
let is_Exists = (fun _discr_ -> (match (_discr_) with
| Exists (_) -> begin
true
end
| _ -> begin
false
end))

# 79 "term.fs"
type term' =
| Integer of Prims.string
| BoundV of Prims.int
| FreeV of fv
| App of (op * term Prims.list)
| Quant of (qop * pat Prims.list Prims.list * Prims.int Prims.option * sort Prims.list * term) 
 and term =
{tm : term'; hash : Prims.string; freevars : fvs FStar_Absyn_Syntax.memo} 
 and pat =
term 
 and fv =
(Prims.string * sort) 
 and fvs =
fv Prims.list

# 80 "term.fs"
let is_Integer = (fun _discr_ -> (match (_discr_) with
| Integer (_) -> begin
true
end
| _ -> begin
false
end))

# 81 "term.fs"
let is_BoundV = (fun _discr_ -> (match (_discr_) with
| BoundV (_) -> begin
true
end
| _ -> begin
false
end))

# 82 "term.fs"
let is_FreeV = (fun _discr_ -> (match (_discr_) with
| FreeV (_) -> begin
true
end
| _ -> begin
false
end))

# 83 "term.fs"
let is_App = (fun _discr_ -> (match (_discr_) with
| App (_) -> begin
true
end
| _ -> begin
false
end))

# 84 "term.fs"
let is_Quant = (fun _discr_ -> (match (_discr_) with
| Quant (_) -> begin
true
end
| _ -> begin
false
end))

# 90 "term.fs"
let is_Mkterm : term  ->  Prims.bool = (Obj.magic ((fun _ -> (FStar_All.failwith "Not yet implemented:is_Mkterm"))))

# 80 "term.fs"
let ___Integer____0 : term'  ->  Prims.string = (fun projectee -> (match (projectee) with
| Integer (_55_44) -> begin
_55_44
end))

# 81 "term.fs"
let ___BoundV____0 : term'  ->  Prims.int = (fun projectee -> (match (projectee) with
| BoundV (_55_47) -> begin
_55_47
end))

# 82 "term.fs"
let ___FreeV____0 : term'  ->  fv = (fun projectee -> (match (projectee) with
| FreeV (_55_50) -> begin
_55_50
end))

# 83 "term.fs"
let ___App____0 : term'  ->  (op * term Prims.list) = (fun projectee -> (match (projectee) with
| App (_55_53) -> begin
_55_53
end))

# 84 "term.fs"
let ___Quant____0 : term'  ->  (qop * pat Prims.list Prims.list * Prims.int Prims.option * sort Prims.list * term) = (fun projectee -> (match (projectee) with
| Quant (_55_56) -> begin
_55_56
end))

# 94 "term.fs"
let fv_eq : fv  ->  fv  ->  Prims.bool = (fun x y -> ((Prims.fst x) = (Prims.fst y)))

# 95 "term.fs"
let fv_sort = (fun x -> (Prims.snd x))

# 96 "term.fs"
let freevar_eq : term  ->  term  ->  Prims.bool = (fun x y -> (match ((x.tm, y.tm)) with
| (FreeV (x), FreeV (y)) -> begin
(fv_eq x y)
end
| _55_69 -> begin
false
end))

# 99 "term.fs"
let freevar_sort : term  ->  sort = (fun _55_1 -> (match (_55_1) with
| {tm = FreeV (x); hash = _55_74; freevars = _55_72} -> begin
(fv_sort x)
end
| _55_79 -> begin
(FStar_All.failwith "impossible")
end))

# 102 "term.fs"
let fv_of_term : term  ->  fv = (fun _55_2 -> (match (_55_2) with
| {tm = FreeV (fv); hash = _55_84; freevars = _55_82} -> begin
fv
end
| _55_89 -> begin
(FStar_All.failwith "impossible")
end))

# 105 "term.fs"
let rec freevars : term  ->  fv Prims.list = (fun t -> (match (t.tm) with
| (Integer (_)) | (BoundV (_)) -> begin
[]
end
| FreeV (fv) -> begin
(fv)::[]
end
| App (_55_100, tms) -> begin
(FStar_List.collect freevars tms)
end
| Quant (_55_105, _55_107, _55_109, _55_111, t) -> begin
(freevars t)
end))

# 113 "term.fs"
let free_variables : term  ->  (Prims.string * sort) Prims.list = (fun t -> (match ((FStar_ST.read t.freevars)) with
| Some (b) -> begin
b
end
| None -> begin
(
# 116 "term.fs"
let fvs = (let _157_189 = (freevars t)
in (FStar_Util.remove_dups fv_eq _157_189))
in (
# 117 "term.fs"
let _55_120 = (FStar_ST.op_Colon_Equals t.freevars (Some (fvs)))
in fvs))
end))

# 123 "term.fs"
let qop_to_string : qop  ->  Prims.string = (fun _55_3 -> (match (_55_3) with
| Forall -> begin
"forall"
end
| Exists -> begin
"exists"
end))

# 127 "term.fs"
let op_to_string : op  ->  Prims.string = (fun _55_4 -> (match (_55_4) with
| True -> begin
"true"
end
| False -> begin
"false"
end
| Not -> begin
"not"
end
| And -> begin
"and"
end
| Or -> begin
"or"
end
| Imp -> begin
"implies"
end
| Iff -> begin
"iff"
end
| Eq -> begin
"="
end
| LT -> begin
"<"
end
| LTE -> begin
"<="
end
| GT -> begin
">"
end
| GTE -> begin
">="
end
| Add -> begin
"+"
end
| Sub -> begin
"-"
end
| Div -> begin
"div"
end
| Mul -> begin
"*"
end
| Minus -> begin
"-"
end
| Mod -> begin
"mod"
end
| ITE -> begin
"ite"
end
| Var (s) -> begin
s
end))

# 149 "term.fs"
let weightToSmt : Prims.int Prims.option  ->  Prims.string = (fun _55_5 -> (match (_55_5) with
| None -> begin
""
end
| Some (i) -> begin
(let _157_196 = (FStar_Util.string_of_int i)
in (FStar_Util.format1 ":weight %s\n" _157_196))
end))

# 153 "term.fs"
let rec hash_of_term' : term'  ->  Prims.string = (fun t -> (match (t) with
| Integer (i) -> begin
i
end
| BoundV (i) -> begin
(let _157_199 = (FStar_Util.string_of_int i)
in (Prims.strcat "@" _157_199))
end
| FreeV (x) -> begin
(let _157_200 = (strSort (Prims.snd x))
in (Prims.strcat (Prims.strcat (Prims.fst x) ":") _157_200))
end
| App (op, tms) -> begin
(let _157_204 = (let _157_203 = (let _157_202 = (FStar_List.map (fun t -> t.hash) tms)
in (FStar_All.pipe_right _157_202 (FStar_String.concat " ")))
in (Prims.strcat (Prims.strcat "(" (op_to_string op)) _157_203))
in (Prims.strcat _157_204 ")"))
end
| Quant (qop, pats, wopt, sorts, body) -> begin
(let _157_212 = (let _157_205 = (FStar_List.map strSort sorts)
in (FStar_All.pipe_right _157_205 (FStar_String.concat " ")))
in (let _157_211 = (weightToSmt wopt)
in (let _157_210 = (let _157_209 = (FStar_All.pipe_right pats (FStar_List.map (fun pats -> (let _157_208 = (FStar_List.map (fun p -> p.hash) pats)
in (FStar_All.pipe_right _157_208 (FStar_String.concat " "))))))
in (FStar_All.pipe_right _157_209 (FStar_String.concat "; ")))
in (FStar_Util.format5 "(%s (%s)(! %s %s %s))" (qop_to_string qop) _157_212 body.hash _157_211 _157_210))))
end))

# 167 "term.fs"
let __all_terms : term FStar_Util.smap FStar_ST.ref = (let _157_213 = (FStar_Util.smap_create 10000)
in (FStar_ST.alloc _157_213))

# 168 "term.fs"
let all_terms : Prims.unit  ->  term FStar_Util.smap = (fun _55_172 -> (match (()) with
| () -> begin
(FStar_ST.read __all_terms)
end))

# 169 "term.fs"
let mk : term'  ->  term = (fun t -> (
# 170 "term.fs"
let key = (hash_of_term' t)
in (match ((let _157_218 = (all_terms ())
in (FStar_Util.smap_try_find _157_218 key))) with
| Some (tm) -> begin
tm
end
| None -> begin
(
# 174 "term.fs"
let tm = (let _157_219 = (FStar_Util.mk_ref None)
in {tm = t; hash = key; freevars = _157_219})
in (
# 175 "term.fs"
let _55_179 = (let _157_220 = (all_terms ())
in (FStar_Util.smap_add _157_220 key tm))
in tm))
end)))

# 178 "term.fs"
let mkTrue : term = (mk (App ((True, []))))

# 179 "term.fs"
let mkFalse : term = (mk (App ((False, []))))

# 180 "term.fs"
let mkInteger : Prims.string  ->  term = (fun i -> (mk (Integer (i))))

# 181 "term.fs"
let mkInteger32 : Prims.int32  ->  term = (fun i -> (mkInteger (FStar_Util.string_of_int32 i)))

# 182 "term.fs"
let mkInteger' : Prims.int  ->  term = (fun i -> (let _157_227 = (FStar_Util.string_of_int i)
in (mkInteger _157_227)))

# 183 "term.fs"
let mkBoundV : Prims.int  ->  term = (fun i -> (mk (BoundV (i))))

# 184 "term.fs"
let mkFreeV : fv  ->  term = (fun x -> (mk (FreeV (x))))

# 185 "term.fs"
let mkApp' : (op * term Prims.list)  ->  term = (fun f -> (mk (App (f))))

# 186 "term.fs"
let mkApp : (Prims.string * term Prims.list)  ->  term = (fun _55_189 -> (match (_55_189) with
| (s, args) -> begin
(mk (App ((Var (s), args))))
end))

# 187 "term.fs"
let mkNot : term  ->  term = (fun t -> (match (t.tm) with
| App (True, _55_193) -> begin
mkFalse
end
| App (False, _55_198) -> begin
mkTrue
end
| _55_202 -> begin
(mkApp' (Not, (t)::[]))
end))

# 191 "term.fs"
let mkAnd : (term * term)  ->  term = (fun _55_205 -> (match (_55_205) with
| (t1, t2) -> begin
(match ((t1.tm, t2.tm)) with
| (App (True, _55_208), _55_212) -> begin
t2
end
| (_55_215, App (True, _55_218)) -> begin
t1
end
| ((App (False, _), _)) | ((_, App (False, _))) -> begin
mkFalse
end
| (App (And, ts1), App (And, ts2)) -> begin
(mkApp' (And, (FStar_List.append ts1 ts2)))
end
| (_55_248, App (And, ts2)) -> begin
(mkApp' (And, (t1)::ts2))
end
| (App (And, ts1), _55_259) -> begin
(mkApp' (And, (FStar_List.append ts1 ((t2)::[]))))
end
| _55_262 -> begin
(mkApp' (And, (t1)::(t2)::[]))
end)
end))

# 200 "term.fs"
let mkOr : (term * term)  ->  term = (fun _55_265 -> (match (_55_265) with
| (t1, t2) -> begin
(match ((t1.tm, t2.tm)) with
| ((App (True, _), _)) | ((_, App (True, _))) -> begin
mkTrue
end
| (App (False, _55_284), _55_288) -> begin
t2
end
| (_55_291, App (False, _55_294)) -> begin
t1
end
| (App (Or, ts1), App (Or, ts2)) -> begin
(mkApp' (Or, (FStar_List.append ts1 ts2)))
end
| (_55_308, App (Or, ts2)) -> begin
(mkApp' (Or, (t1)::ts2))
end
| (App (Or, ts1), _55_319) -> begin
(mkApp' (Or, (FStar_List.append ts1 ((t2)::[]))))
end
| _55_322 -> begin
(mkApp' (Or, (t1)::(t2)::[]))
end)
end))

# 209 "term.fs"
let mkImp : (term * term)  ->  term = (fun _55_325 -> (match (_55_325) with
| (t1, t2) -> begin
(match ((t1.tm, t2.tm)) with
| (_55_327, App (True, _55_330)) -> begin
mkTrue
end
| (App (True, _55_336), _55_340) -> begin
t2
end
| (_55_343, App (Imp, t1'::t2'::[])) -> begin
(let _157_246 = (let _157_245 = (let _157_244 = (mkAnd (t1, t1'))
in (_157_244)::(t2')::[])
in (Imp, _157_245))
in (mkApp' _157_246))
end
| _55_352 -> begin
(mkApp' (Imp, (t1)::(t2)::[]))
end)
end))

# 215 "term.fs"
let mk_bin_op : op  ->  (term * term)  ->  term = (fun op _55_356 -> (match (_55_356) with
| (t1, t2) -> begin
(mkApp' (op, (t1)::(t2)::[]))
end))

# 216 "term.fs"
let mkMinus : term  ->  term = (fun t -> (mkApp' (Minus, (t)::[])))

# 217 "term.fs"
let mkIff : (term * term)  ->  term = (mk_bin_op Iff)

# 218 "term.fs"
let mkEq : (term * term)  ->  term = (mk_bin_op Eq)

# 219 "term.fs"
let mkLT : (term * term)  ->  term = (mk_bin_op LT)

# 220 "term.fs"
let mkLTE : (term * term)  ->  term = (mk_bin_op LTE)

# 221 "term.fs"
let mkGT : (term * term)  ->  term = (mk_bin_op GT)

# 222 "term.fs"
let mkGTE : (term * term)  ->  term = (mk_bin_op GTE)

# 223 "term.fs"
let mkAdd : (term * term)  ->  term = (mk_bin_op Add)

# 224 "term.fs"
let mkSub : (term * term)  ->  term = (mk_bin_op Sub)

# 225 "term.fs"
let mkDiv : (term * term)  ->  term = (mk_bin_op Div)

# 226 "term.fs"
let mkMul : (term * term)  ->  term = (mk_bin_op Mul)

# 227 "term.fs"
let mkMod : (term * term)  ->  term = (mk_bin_op Mod)

# 228 "term.fs"
let mkITE : (term * term * term)  ->  term = (fun _55_361 -> (match (_55_361) with
| (t1, t2, t3) -> begin
(match ((t2.tm, t3.tm)) with
| (App (True, _55_364), App (True, _55_369)) -> begin
mkTrue
end
| (App (True, _55_375), _55_379) -> begin
(let _157_267 = (let _157_266 = (mkNot t1)
in (_157_266, t3))
in (mkImp _157_267))
end
| (_55_382, App (True, _55_385)) -> begin
(mkImp (t1, t2))
end
| (_55_390, _55_392) -> begin
(mkApp' (ITE, (t1)::(t2)::(t3)::[]))
end)
end))

# 234 "term.fs"
let mkCases : term Prims.list  ->  term = (fun t -> (match (t) with
| [] -> begin
(FStar_All.failwith "Impos")
end
| hd::tl -> begin
(FStar_List.fold_left (fun out t -> (mkAnd (out, t))) hd tl)
end))

# 238 "term.fs"
let mkQuant : (qop * pat Prims.list Prims.list * Prims.int Prims.option * sort Prims.list * term)  ->  term = (fun _55_406 -> (match (_55_406) with
| (qop, pats, wopt, vars, body) -> begin
if ((FStar_List.length vars) = 0) then begin
body
end else begin
(match (body.tm) with
| App (True, _55_409) -> begin
body
end
| _55_413 -> begin
(mk (Quant ((qop, pats, wopt, vars, body))))
end)
end
end))

# 247 "term.fs"
let abstr : fv Prims.list  ->  term  ->  term = (fun fvs t -> (
# 248 "term.fs"
let nvars = (FStar_List.length fvs)
in (
# 249 "term.fs"
let index_of = (fun fv -> (match ((FStar_Util.try_find_index (fv_eq fv) fvs)) with
| None -> begin
None
end
| Some (i) -> begin
Some ((nvars - (i + 1)))
end))
in (
# 252 "term.fs"
let rec aux = (fun ix t -> (match ((FStar_ST.read t.freevars)) with
| Some ([]) -> begin
t
end
| _55_428 -> begin
(match (t.tm) with
| (Integer (_)) | (BoundV (_)) -> begin
t
end
| FreeV (x) -> begin
(match ((index_of x)) with
| None -> begin
t
end
| Some (i) -> begin
(mkBoundV (i + ix))
end)
end
| App (op, tms) -> begin
(let _157_285 = (let _157_284 = (FStar_List.map (aux ix) tms)
in (op, _157_284))
in (mkApp' _157_285))
end
| Quant (qop, pats, wopt, vars, body) -> begin
(
# 266 "term.fs"
let n = (FStar_List.length vars)
in (let _157_288 = (let _157_287 = (FStar_All.pipe_right pats (FStar_List.map (FStar_List.map (aux (ix + n)))))
in (let _157_286 = (aux (ix + n) body)
in (qop, _157_287, wopt, vars, _157_286)))
in (mkQuant _157_288)))
end)
end))
in (aux 0 t)))))

# 271 "term.fs"
let inst : term Prims.list  ->  term  ->  term = (fun tms t -> (
# 272 "term.fs"
let n = (FStar_List.length tms)
in (
# 273 "term.fs"
let rec aux = (fun shift t -> (match (t.tm) with
| (Integer (_)) | (FreeV (_)) -> begin
t
end
| BoundV (i) -> begin
if ((0 <= (i - shift)) && ((i - shift) < n)) then begin
(FStar_List.nth tms (i - shift))
end else begin
t
end
end
| App (op, tms) -> begin
(let _157_298 = (let _157_297 = (FStar_List.map (aux shift) tms)
in (op, _157_297))
in (mkApp' _157_298))
end
| Quant (qop, pats, wopt, vars, body) -> begin
(
# 282 "term.fs"
let m = (FStar_List.length vars)
in (
# 283 "term.fs"
let shift = (shift + m)
in (let _157_301 = (let _157_300 = (FStar_All.pipe_right pats (FStar_List.map (FStar_List.map (aux shift))))
in (let _157_299 = (aux shift body)
in (qop, _157_300, wopt, vars, _157_299)))
in (mkQuant _157_301))))
end))
in (aux 0 t))))

# 287 "term.fs"
let mkQuant' : (qop * term Prims.list Prims.list * Prims.int Prims.option * fv Prims.list * term)  ->  term = (fun _55_484 -> (match (_55_484) with
| (qop, pats, wopt, vars, body) -> begin
(let _157_307 = (let _157_306 = (FStar_All.pipe_right pats (FStar_List.map (FStar_List.map (abstr vars))))
in (let _157_305 = (FStar_List.map fv_sort vars)
in (let _157_304 = (abstr vars body)
in (qop, _157_306, wopt, _157_305, _157_304))))
in (mkQuant _157_307))
end))

# 288 "term.fs"
let mkForall'' : (pat Prims.list Prims.list * Prims.int Prims.option * sort Prims.list * term)  ->  term = (fun _55_489 -> (match (_55_489) with
| (pats, wopt, sorts, body) -> begin
(mkQuant (Forall, pats, wopt, sorts, body))
end))

# 289 "term.fs"
let mkForall' : (term Prims.list Prims.list * Prims.int Prims.option * fv Prims.list * term)  ->  term = (fun _55_494 -> (match (_55_494) with
| (pats, wopt, vars, body) -> begin
(mkQuant' (Forall, pats, wopt, vars, body))
end))

# 292 "term.fs"
let mkForall : (term Prims.list Prims.list * fv Prims.list * term)  ->  term = (fun _55_498 -> (match (_55_498) with
| (pats, vars, body) -> begin
(mkQuant' (Forall, pats, None, vars, body))
end))

# 293 "term.fs"
let mkExists : (term Prims.list Prims.list * fv Prims.list * term)  ->  term = (fun _55_502 -> (match (_55_502) with
| (pats, vars, body) -> begin
(mkQuant' (Exists, pats, None, vars, body))
end))

# 296 "term.fs"
type caption =
Prims.string Prims.option

# 297 "term.fs"
type binders =
(Prims.string * sort) Prims.list

# 298 "term.fs"
type projector =
(Prims.string * sort)

# 299 "term.fs"
type constructor_t =
(Prims.string * projector Prims.list * sort * Prims.int)

# 300 "term.fs"
type constructors =
constructor_t Prims.list

# 301 "term.fs"
type decl =
| DefPrelude
| DeclFun of (Prims.string * sort Prims.list * sort * caption)
| DefineFun of (Prims.string * sort Prims.list * sort * term * caption)
| Assume of (term * caption)
| Caption of Prims.string
| Eval of term
| Echo of Prims.string
| Push
| Pop
| CheckSat

# 302 "term.fs"
let is_DefPrelude = (fun _discr_ -> (match (_discr_) with
| DefPrelude (_) -> begin
true
end
| _ -> begin
false
end))

# 303 "term.fs"
let is_DeclFun = (fun _discr_ -> (match (_discr_) with
| DeclFun (_) -> begin
true
end
| _ -> begin
false
end))

# 304 "term.fs"
let is_DefineFun = (fun _discr_ -> (match (_discr_) with
| DefineFun (_) -> begin
true
end
| _ -> begin
false
end))

# 305 "term.fs"
let is_Assume = (fun _discr_ -> (match (_discr_) with
| Assume (_) -> begin
true
end
| _ -> begin
false
end))

# 306 "term.fs"
let is_Caption = (fun _discr_ -> (match (_discr_) with
| Caption (_) -> begin
true
end
| _ -> begin
false
end))

# 307 "term.fs"
let is_Eval = (fun _discr_ -> (match (_discr_) with
| Eval (_) -> begin
true
end
| _ -> begin
false
end))

# 308 "term.fs"
let is_Echo = (fun _discr_ -> (match (_discr_) with
| Echo (_) -> begin
true
end
| _ -> begin
false
end))

# 309 "term.fs"
let is_Push = (fun _discr_ -> (match (_discr_) with
| Push (_) -> begin
true
end
| _ -> begin
false
end))

# 310 "term.fs"
let is_Pop = (fun _discr_ -> (match (_discr_) with
| Pop (_) -> begin
true
end
| _ -> begin
false
end))

# 311 "term.fs"
let is_CheckSat = (fun _discr_ -> (match (_discr_) with
| CheckSat (_) -> begin
true
end
| _ -> begin
false
end))

# 303 "term.fs"
let ___DeclFun____0 : decl  ->  (Prims.string * sort Prims.list * sort * caption) = (fun projectee -> (match (projectee) with
| DeclFun (_55_505) -> begin
_55_505
end))

# 304 "term.fs"
let ___DefineFun____0 : decl  ->  (Prims.string * sort Prims.list * sort * term * caption) = (fun projectee -> (match (projectee) with
| DefineFun (_55_508) -> begin
_55_508
end))

# 305 "term.fs"
let ___Assume____0 : decl  ->  (term * caption) = (fun projectee -> (match (projectee) with
| Assume (_55_511) -> begin
_55_511
end))

# 306 "term.fs"
let ___Caption____0 : decl  ->  Prims.string = (fun projectee -> (match (projectee) with
| Caption (_55_514) -> begin
_55_514
end))

# 307 "term.fs"
let ___Eval____0 : decl  ->  term = (fun projectee -> (match (projectee) with
| Eval (_55_517) -> begin
_55_517
end))

# 308 "term.fs"
let ___Echo____0 : decl  ->  Prims.string = (fun projectee -> (match (projectee) with
| Echo (_55_520) -> begin
_55_520
end))

# 312 "term.fs"
type decls_t =
decl Prims.list

# 314 "term.fs"
let mkDefineFun : (Prims.string * (Prims.string * sort) Prims.list * sort * term * caption)  ->  decl = (fun _55_526 -> (match (_55_526) with
| (nm, vars, s, tm, c) -> begin
(let _157_408 = (let _157_407 = (FStar_List.map fv_sort vars)
in (let _157_406 = (abstr vars tm)
in (nm, _157_407, s, _157_406, c)))
in DefineFun (_157_408))
end))

# 315 "term.fs"
let constr_id_of_sort : sort  ->  Prims.string = (fun sort -> (let _157_411 = (strSort sort)
in (FStar_Util.format1 "%s_constr_id" _157_411)))

# 316 "term.fs"
let fresh_token : (Prims.string * sort)  ->  Prims.int  ->  decl = (fun _55_530 id -> (match (_55_530) with
| (tok_name, sort) -> begin
(let _157_424 = (let _157_423 = (let _157_422 = (let _157_421 = (mkInteger' id)
in (let _157_420 = (let _157_419 = (let _157_418 = (constr_id_of_sort sort)
in (let _157_417 = (let _157_416 = (mkApp (tok_name, []))
in (_157_416)::[])
in (_157_418, _157_417)))
in (mkApp _157_419))
in (_157_421, _157_420)))
in (mkEq _157_422))
in (_157_423, Some ("fresh token")))
in Assume (_157_424))
end))

# 319 "term.fs"
let constructor_to_decl : (Prims.string * (Prims.string * sort) Prims.list * sort * Prims.int)  ->  decl Prims.list = (fun _55_536 -> (match (_55_536) with
| (name, projectors, sort, id) -> begin
(
# 320 "term.fs"
let id = (FStar_Util.string_of_int id)
in (
# 321 "term.fs"
let cdecl = (let _157_428 = (let _157_427 = (FStar_All.pipe_right projectors (FStar_List.map Prims.snd))
in (name, _157_427, sort, Some ("Constructor")))
in DeclFun (_157_428))
in (
# 322 "term.fs"
let n_bvars = (FStar_List.length projectors)
in (
# 323 "term.fs"
let bvar_name = (fun i -> (let _157_431 = (FStar_Util.string_of_int i)
in (Prims.strcat "x_" _157_431)))
in (
# 324 "term.fs"
let bvar_index = (fun i -> (n_bvars - (i + 1)))
in (
# 325 "term.fs"
let bvar = (fun i s -> (let _157_439 = (let _157_438 = (bvar_name i)
in (_157_438, s))
in (mkFreeV _157_439)))
in (
# 326 "term.fs"
let bvars = (FStar_All.pipe_right projectors (FStar_List.mapi (fun i _55_551 -> (match (_55_551) with
| (_55_549, s) -> begin
(bvar i s)
end))))
in (
# 327 "term.fs"
let bvar_names = (FStar_List.map fv_of_term bvars)
in (
# 328 "term.fs"
let capp = (mkApp (name, bvars))
in (
# 329 "term.fs"
let cid_app = (let _157_443 = (let _157_442 = (constr_id_of_sort sort)
in (_157_442, (capp)::[]))
in (mkApp _157_443))
in (
# 330 "term.fs"
let cid = (let _157_449 = (let _157_448 = (let _157_447 = (let _157_446 = (let _157_445 = (let _157_444 = (mkInteger id)
in (_157_444, cid_app))
in (mkEq _157_445))
in (((capp)::[])::[], bvar_names, _157_446))
in (mkForall _157_447))
in (_157_448, Some ("Constructor distinct")))
in Assume (_157_449))
in (
# 331 "term.fs"
let disc_name = (Prims.strcat "is-" name)
in (
# 332 "term.fs"
let xfv = ("x", sort)
in (
# 333 "term.fs"
let xx = (mkFreeV xfv)
in (
# 334 "term.fs"
let disc_eq = (let _157_454 = (let _157_453 = (let _157_451 = (let _157_450 = (constr_id_of_sort sort)
in (_157_450, (xx)::[]))
in (mkApp _157_451))
in (let _157_452 = (mkInteger id)
in (_157_453, _157_452)))
in (mkEq _157_454))
in (
# 335 "term.fs"
let proj_terms = (FStar_All.pipe_right projectors (FStar_List.map (fun _55_563 -> (match (_55_563) with
| (proj, s) -> begin
(mkApp (proj, (xx)::[]))
end))))
in (
# 336 "term.fs"
let disc_inv_body = (let _157_457 = (let _157_456 = (mkApp (name, proj_terms))
in (xx, _157_456))
in (mkEq _157_457))
in (
# 337 "term.fs"
let disc_ax = (mkAnd (disc_eq, disc_inv_body))
in (
# 338 "term.fs"
let disc = (mkDefineFun (disc_name, (xfv)::[], Bool_sort, disc_ax, Some ("Discriminator definition")))
in (
# 341 "term.fs"
let projs = (let _157_468 = (FStar_All.pipe_right projectors (FStar_List.mapi (fun i _55_571 -> (match (_55_571) with
| (name, s) -> begin
(
# 342 "term.fs"
let cproj_app = (mkApp (name, (capp)::[]))
in (let _157_467 = (let _157_466 = (let _157_465 = (let _157_464 = (let _157_463 = (let _157_462 = (let _157_461 = (let _157_460 = (bvar i s)
in (cproj_app, _157_460))
in (mkEq _157_461))
in (((capp)::[])::[], bvar_names, _157_462))
in (mkForall _157_463))
in (_157_464, Some ("Projection inverse")))
in Assume (_157_465))
in (_157_466)::[])
in (DeclFun ((name, (sort)::[], s, Some ("Projector"))))::_157_467))
end))))
in (FStar_All.pipe_right _157_468 FStar_List.flatten))
in (let _157_475 = (let _157_471 = (let _157_470 = (let _157_469 = (FStar_Util.format1 "<start constructor %s>" name)
in Caption (_157_469))
in (_157_470)::(cdecl)::(cid)::projs)
in (FStar_List.append _157_471 ((disc)::[])))
in (let _157_474 = (let _157_473 = (let _157_472 = (FStar_Util.format1 "</end constructor %s>" name)
in Caption (_157_472))
in (_157_473)::[])
in (FStar_List.append _157_475 _157_474)))))))))))))))))))))))
end))

# 351 "term.fs"
let name_binders_inner : (Prims.string * sort) Prims.list  ->  Prims.int  ->  sort Prims.list  ->  ((Prims.string * sort) Prims.list * Prims.string Prims.list * Prims.int) = (fun outer_names start sorts -> (
# 352 "term.fs"
let _55_593 = (FStar_All.pipe_right sorts (FStar_List.fold_left (fun _55_580 s -> (match (_55_580) with
| (names, binders, n) -> begin
(
# 353 "term.fs"
let prefix = (match (s) with
| Type_sort -> begin
"@a"
end
| Term_sort -> begin
"@x"
end
| _55_585 -> begin
"@u"
end)
in (
# 357 "term.fs"
let nm = (let _157_484 = (FStar_Util.string_of_int n)
in (Prims.strcat prefix _157_484))
in (
# 358 "term.fs"
let names = ((nm, s))::names
in (
# 359 "term.fs"
let b = (let _157_485 = (strSort s)
in (FStar_Util.format2 "(%s %s)" nm _157_485))
in (names, (b)::binders, (n + 1))))))
end)) (outer_names, [], start)))
in (match (_55_593) with
| (names, binders, n) -> begin
(names, (FStar_List.rev binders), n)
end)))

# 364 "term.fs"
let name_binders : sort Prims.list  ->  ((Prims.string * sort) Prims.list * Prims.string Prims.list) = (fun sorts -> (
# 365 "term.fs"
let _55_598 = (name_binders_inner [] 0 sorts)
in (match (_55_598) with
| (names, binders, n) -> begin
((FStar_List.rev names), binders)
end)))

# 368 "term.fs"
let termToSmt : term  ->  Prims.string = (fun t -> (
# 369 "term.fs"
let rec aux = (fun n names t -> (match (t.tm) with
| Integer (i) -> begin
i
end
| BoundV (i) -> begin
(let _157_496 = (FStar_List.nth names i)
in (FStar_All.pipe_right _157_496 Prims.fst))
end
| FreeV (x) -> begin
(Prims.fst x)
end
| App (op, []) -> begin
(op_to_string op)
end
| App (op, tms) -> begin
(let _157_498 = (let _157_497 = (FStar_List.map (aux n names) tms)
in (FStar_All.pipe_right _157_497 (FStar_String.concat "\n")))
in (FStar_Util.format2 "(%s %s)" (op_to_string op) _157_498))
end
| Quant (qop, pats, wopt, sorts, body) -> begin
(
# 377 "term.fs"
let _55_628 = (name_binders_inner names n sorts)
in (match (_55_628) with
| (names, binders, n) -> begin
(
# 378 "term.fs"
let binders = (FStar_All.pipe_right binders (FStar_String.concat " "))
in (
# 379 "term.fs"
let pats_str = (match (pats) with
| ([]::[]) | ([]) -> begin
""
end
| _55_634 -> begin
(let _157_504 = (FStar_All.pipe_right pats (FStar_List.map (fun pats -> (let _157_503 = (let _157_502 = (FStar_List.map (fun p -> (let _157_501 = (aux n names p)
in (FStar_Util.format1 "%s" _157_501))) pats)
in (FStar_String.concat " " _157_502))
in (FStar_Util.format1 "\n:pattern (%s)" _157_503)))))
in (FStar_All.pipe_right _157_504 (FStar_String.concat "\n")))
end)
in (match ((pats, wopt)) with
| (([]::[], None)) | (([], None)) -> begin
(let _157_505 = (aux n names body)
in (FStar_Util.format3 "(%s (%s)\n %s);;no pats\n" (qop_to_string qop) binders _157_505))
end
| _55_646 -> begin
(let _157_507 = (aux n names body)
in (let _157_506 = (weightToSmt wopt)
in (FStar_Util.format5 "(%s (%s)\n (! %s\n %s %s))" (qop_to_string qop) binders _157_507 _157_506 pats_str)))
end)))
end))
end))
in (aux 0 [] t)))

# 391 "term.fs"
let caption_to_string : Prims.string Prims.option  ->  Prims.string = (fun _55_6 -> (match (_55_6) with
| None -> begin
""
end
| Some (c) -> begin
(
# 394 "term.fs"
let _55_653 = (FStar_Util.splitlines c)
in (match (_55_653) with
| hd::tl -> begin
(
# 395 "term.fs"
let suffix = (match (tl) with
| [] -> begin
""
end
| _55_656 -> begin
"..."
end)
in (FStar_Util.format2 ";;;;;;;;;;;;;;;;%s%s\n" hd suffix))
end))
end))

# 400 "term.fs"
let rec declToSmt : Prims.string  ->  decl  ->  Prims.string = (fun z3options decl -> (match (decl) with
| DefPrelude -> begin
(mkPrelude z3options)
end
| Caption (c) -> begin
(let _157_516 = (FStar_All.pipe_right (FStar_Util.splitlines c) (fun _55_7 -> (match (_55_7) with
| [] -> begin
""
end
| h::t -> begin
h
end)))
in (FStar_Util.format1 "\n; %s" _157_516))
end
| DeclFun (f, argsorts, retsort, c) -> begin
(
# 405 "term.fs"
let l = (FStar_List.map strSort argsorts)
in (let _157_518 = (caption_to_string c)
in (let _157_517 = (strSort retsort)
in (FStar_Util.format4 "%s(declare-fun %s (%s) %s)" _157_518 f (FStar_String.concat " " l) _157_517))))
end
| DefineFun (f, arg_sorts, retsort, body, c) -> begin
(
# 408 "term.fs"
let _55_684 = (name_binders arg_sorts)
in (match (_55_684) with
| (names, binders) -> begin
(
# 409 "term.fs"
let body = (let _157_519 = (FStar_List.map mkFreeV names)
in (inst _157_519 body))
in (let _157_522 = (caption_to_string c)
in (let _157_521 = (strSort retsort)
in (let _157_520 = (termToSmt body)
in (FStar_Util.format5 "%s(define-fun %s (%s) %s\n %s)" _157_522 f (FStar_String.concat " " binders) _157_521 _157_520)))))
end))
end
| Assume (t, c) -> begin
(let _157_524 = (caption_to_string c)
in (let _157_523 = (termToSmt t)
in (FStar_Util.format2 "%s(assert %s)" _157_524 _157_523)))
end
| Eval (t) -> begin
(let _157_525 = (termToSmt t)
in (FStar_Util.format1 "(eval %s)" _157_525))
end
| Echo (s) -> begin
(FStar_Util.format1 "(echo \"%s\")" s)
end
| CheckSat -> begin
"(check-sat)"
end
| Push -> begin
"(push)"
end
| Pop -> begin
"(pop)"
end))
and mkPrelude : Prims.string  ->  Prims.string = (fun z3options -> (
# 422 "term.fs"
let basic = (Prims.strcat z3options "(declare-sort Ref)\n(declare-fun Ref_constr_id (Ref) Int)\n\n(declare-sort String)\n(declare-fun String_constr_id (String) Int)\n\n(declare-sort Kind)\n(declare-fun Kind_constr_id (Kind) Int)\n\n(declare-sort Type)\n(declare-fun Type_constr_id (Type) Int)\n\n(declare-sort Term)\n(declare-fun Term_constr_id (Term) Int)\n(declare-datatypes () ((Fuel \n(ZFuel) \n(SFuel (prec Fuel)))))\n(declare-fun MaxIFuel () Fuel)\n(declare-fun MaxFuel () Fuel)\n(declare-fun PreKind (Type) Kind)\n(declare-fun PreType (Term) Type)\n(declare-fun Valid (Type) Bool)\n(declare-fun HasKind (Type Kind) Bool)\n(declare-fun HasTypeFuel (Fuel Term Type) Bool)\n(define-fun HasTypeZ ((x Term) (t Type)) Bool\n(HasTypeFuel ZFuel x t))\n(define-fun HasType ((x Term) (t Type)) Bool\n(HasTypeFuel MaxIFuel x t))\n;;fuel irrelevance\n(assert (forall ((f Fuel) (x Term) (t Type))\n(! (= (HasTypeFuel (SFuel f) x t)\n(HasTypeZ x t))\n:pattern ((HasTypeFuel (SFuel f) x t)))))\n(define-fun  IsTyped ((x Term)) Bool\n(exists ((t Type)) (HasTypeZ x t)))\n(declare-fun ApplyEF (Term Fuel) Term)\n(declare-fun ApplyEE (Term Term) Term)\n(declare-fun ApplyET (Term Type) Term)\n(declare-fun ApplyTE (Type Term) Type)\n(declare-fun ApplyTT (Type Type) Type)\n(declare-fun Rank (Term) Int)\n(declare-fun Closure (Term) Term)\n(declare-fun ConsTerm (Term Term) Term)\n(declare-fun ConsType (Type Term) Term)\n(declare-fun ConsFuel (Fuel Term) Term)\n(declare-fun Precedes (Term Term) Type)\n(assert (forall ((t Type))\n(! (implies (exists ((e Term)) (HasType e t))\n(Valid t))\n:pattern ((Valid t)))))\n(assert (forall ((t1 Term) (t2 Term))\n(! (iff (Valid (Precedes t1 t2)) \n(< (Rank t1) (Rank t2)))\n:pattern ((Precedes t1 t2)))))\n(define-fun Prims.Precedes ((a Type) (b Type) (t1 Term) (t2 Term)) Type\n(Precedes t1 t2))\n")
in (
# 479 "term.fs"
let constrs = (("String_const", (("String_const_proj_0", Int_sort))::[], String_sort, 0))::(("Kind_type", [], Kind_sort, 0))::(("Kind_arrow", (("Kind_arrow_id", Int_sort))::[], Kind_sort, 1))::(("Kind_uvar", (("Kind_uvar_fst", Int_sort))::[], Kind_sort, 2))::(("Typ_fun", (("Typ_fun_id", Int_sort))::[], Type_sort, 1))::(("Typ_app", (("Typ_app_fst", Type_sort))::(("Typ_app_snd", Type_sort))::[], Type_sort, 2))::(("Typ_dep", (("Typ_dep_fst", Type_sort))::(("Typ_dep_snd", Term_sort))::[], Type_sort, 3))::(("Typ_uvar", (("Typ_uvar_fst", Int_sort))::[], Type_sort, 4))::(("Term_unit", [], Term_sort, 0))::(("BoxInt", (("BoxInt_proj_0", Int_sort))::[], Term_sort, 1))::(("BoxBool", (("BoxBool_proj_0", Bool_sort))::[], Term_sort, 2))::(("BoxString", (("BoxString_proj_0", String_sort))::[], Term_sort, 3))::(("BoxRef", (("BoxRef_proj_0", Ref_sort))::[], Term_sort, 4))::(("Exp_uvar", (("Exp_uvar_fst", Int_sort))::[], Term_sort, 5))::(("LexCons", (("LexCons_0", Term_sort))::(("LexCons_1", Term_sort))::[], Term_sort, 6))::[]
in (
# 496 "term.fs"
let bcons = (let _157_528 = (let _157_527 = (FStar_All.pipe_right constrs (FStar_List.collect constructor_to_decl))
in (FStar_All.pipe_right _157_527 (FStar_List.map (declToSmt z3options))))
in (FStar_All.pipe_right _157_528 (FStar_String.concat "\n")))
in (
# 497 "term.fs"
let lex_ordering = "\n(define-fun is-Prims.LexCons ((t Term)) Bool \n(is-LexCons t))\n(assert (forall ((x1 Term) (x2 Term) (y1 Term) (y2 Term))\n(iff (Valid (Precedes (LexCons x1 x2) (LexCons y1 y2)))\n(or (Valid (Precedes x1 y1))\n(and (= x1 y1)\n(Valid (Precedes x2 y2)))))))\n"
in (Prims.strcat (Prims.strcat basic bcons) lex_ordering))))))

# 506 "term.fs"
let mk_Kind_type : term = (mkApp ("Kind_type", []))

# 507 "term.fs"
let mk_Kind_uvar : Prims.int  ->  term = (fun i -> (let _157_533 = (let _157_532 = (let _157_531 = (mkInteger' i)
in (_157_531)::[])
in ("Kind_uvar", _157_532))
in (mkApp _157_533)))

# 508 "term.fs"
let mk_Typ_app : term  ->  term  ->  term = (fun t1 t2 -> (mkApp ("Typ_app", (t1)::(t2)::[])))

# 509 "term.fs"
let mk_Typ_dep : term  ->  term  ->  term = (fun t1 t2 -> (mkApp ("Typ_dep", (t1)::(t2)::[])))

# 510 "term.fs"
let mk_Typ_uvar : Prims.int  ->  term = (fun i -> (let _157_546 = (let _157_545 = (let _157_544 = (mkInteger' i)
in (_157_544)::[])
in ("Typ_uvar", _157_545))
in (mkApp _157_546)))

# 511 "term.fs"
let mk_Exp_uvar : Prims.int  ->  term = (fun i -> (let _157_551 = (let _157_550 = (let _157_549 = (mkInteger' i)
in (_157_549)::[])
in ("Exp_uvar", _157_550))
in (mkApp _157_551)))

# 513 "term.fs"
let mk_Term_unit : term = (mkApp ("Term_unit", []))

# 514 "term.fs"
let boxInt : term  ->  term = (fun t -> (mkApp ("BoxInt", (t)::[])))

# 515 "term.fs"
let unboxInt : term  ->  term = (fun t -> (mkApp ("BoxInt_proj_0", (t)::[])))

# 516 "term.fs"
let boxBool : term  ->  term = (fun t -> (mkApp ("BoxBool", (t)::[])))

# 517 "term.fs"
let unboxBool : term  ->  term = (fun t -> (mkApp ("BoxBool_proj_0", (t)::[])))

# 518 "term.fs"
let boxString : term  ->  term = (fun t -> (mkApp ("BoxString", (t)::[])))

# 519 "term.fs"
let unboxString : term  ->  term = (fun t -> (mkApp ("BoxString_proj_0", (t)::[])))

# 520 "term.fs"
let boxRef : term  ->  term = (fun t -> (mkApp ("BoxRef", (t)::[])))

# 521 "term.fs"
let unboxRef : term  ->  term = (fun t -> (mkApp ("BoxRef_proj_0", (t)::[])))

# 522 "term.fs"
let boxTerm : sort  ->  term  ->  term = (fun sort t -> (match (sort) with
| Int_sort -> begin
(boxInt t)
end
| Bool_sort -> begin
(boxBool t)
end
| String_sort -> begin
(boxString t)
end
| Ref_sort -> begin
(boxRef t)
end
| _55_724 -> begin
(Prims.raise FStar_Util.Impos)
end))

# 528 "term.fs"
let unboxTerm : sort  ->  term  ->  term = (fun sort t -> (match (sort) with
| Int_sort -> begin
(unboxInt t)
end
| Bool_sort -> begin
(unboxBool t)
end
| String_sort -> begin
(unboxString t)
end
| Ref_sort -> begin
(unboxRef t)
end
| _55_732 -> begin
(Prims.raise FStar_Util.Impos)
end))

# 535 "term.fs"
let mk_PreKind : term  ->  term = (fun t -> (mkApp ("PreKind", (t)::[])))

# 536 "term.fs"
let mk_PreType : term  ->  term = (fun t -> (mkApp ("PreType", (t)::[])))

# 537 "term.fs"
let mk_Valid : term  ->  term = (fun t -> (match (t.tm) with
| App (Var ("Prims.b2t"), {tm = App (Var ("Prims.op_Equality"), _55_747::t1::t2::[]); hash = _55_741; freevars = _55_739}::[]) -> begin
(mkEq (t1, t2))
end
| App (Var ("Prims.b2t"), {tm = App (Var ("Prims.op_disEquality"), _55_766::t1::t2::[]); hash = _55_760; freevars = _55_758}::[]) -> begin
(let _157_582 = (mkEq (t1, t2))
in (mkNot _157_582))
end
| App (Var ("Prims.b2t"), {tm = App (Var ("Prims.op_LessThanOrEqual"), t1::t2::[]); hash = _55_779; freevars = _55_777}::[]) -> begin
(let _157_585 = (let _157_584 = (unboxInt t1)
in (let _157_583 = (unboxInt t2)
in (_157_584, _157_583)))
in (mkLTE _157_585))
end
| App (Var ("Prims.b2t"), {tm = App (Var ("Prims.op_LessThan"), t1::t2::[]); hash = _55_796; freevars = _55_794}::[]) -> begin
(let _157_588 = (let _157_587 = (unboxInt t1)
in (let _157_586 = (unboxInt t2)
in (_157_587, _157_586)))
in (mkLT _157_588))
end
| App (Var ("Prims.b2t"), {tm = App (Var ("Prims.op_GreaterThanOrEqual"), t1::t2::[]); hash = _55_813; freevars = _55_811}::[]) -> begin
(let _157_591 = (let _157_590 = (unboxInt t1)
in (let _157_589 = (unboxInt t2)
in (_157_590, _157_589)))
in (mkGTE _157_591))
end
| App (Var ("Prims.b2t"), {tm = App (Var ("Prims.op_GreaterThan"), t1::t2::[]); hash = _55_830; freevars = _55_828}::[]) -> begin
(let _157_594 = (let _157_593 = (unboxInt t1)
in (let _157_592 = (unboxInt t2)
in (_157_593, _157_592)))
in (mkGT _157_594))
end
| App (Var ("Prims.b2t"), {tm = App (Var ("Prims.op_AmpAmp"), t1::t2::[]); hash = _55_847; freevars = _55_845}::[]) -> begin
(let _157_597 = (let _157_596 = (unboxBool t1)
in (let _157_595 = (unboxBool t2)
in (_157_596, _157_595)))
in (mkAnd _157_597))
end
| App (Var ("Prims.b2t"), {tm = App (Var ("Prims.op_BarBar"), t1::t2::[]); hash = _55_864; freevars = _55_862}::[]) -> begin
(let _157_600 = (let _157_599 = (unboxBool t1)
in (let _157_598 = (unboxBool t2)
in (_157_599, _157_598)))
in (mkOr _157_600))
end
| App (Var ("Prims.b2t"), {tm = App (Var ("Prims.op_Negation"), t::[]); hash = _55_881; freevars = _55_879}::[]) -> begin
(let _157_601 = (unboxBool t)
in (mkNot _157_601))
end
| App (Var ("Prims.b2t"), t::[]) -> begin
(unboxBool t)
end
| _55_899 -> begin
(mkApp ("Valid", (t)::[]))
end))

# 549 "term.fs"
let mk_HasType : term  ->  term  ->  term = (fun v t -> (mkApp ("HasType", (v)::(t)::[])))

# 550 "term.fs"
let mk_HasTypeZ : term  ->  term  ->  term = (fun v t -> (mkApp ("HasTypeZ", (v)::(t)::[])))

# 551 "term.fs"
let mk_IsTyped : term  ->  term = (fun v -> (mkApp ("IsTyped", (v)::[])))

# 552 "term.fs"
let mk_HasTypeFuel : term  ->  term  ->  term  ->  term = (fun f v t -> if (FStar_ST.read FStar_Options.unthrottle_inductives) then begin
(mk_HasType v t)
end else begin
(mkApp ("HasTypeFuel", (f)::(v)::(t)::[]))
end)

# 556 "term.fs"
let mk_HasTypeWithFuel : term Prims.option  ->  term  ->  term  ->  term = (fun f v t -> (match (f) with
| None -> begin
(mk_HasType v t)
end
| Some (f) -> begin
(mk_HasTypeFuel f v t)
end))

# 559 "term.fs"
let mk_Destruct : term  ->  term = (fun v -> (mkApp ("Destruct", (v)::[])))

# 560 "term.fs"
let mk_HasKind : term  ->  term  ->  term = (fun t k -> (mkApp ("HasKind", (t)::(k)::[])))

# 561 "term.fs"
let mk_Rank : term  ->  term = (fun x -> (mkApp ("Rank", (x)::[])))

# 562 "term.fs"
let mk_tester : Prims.string  ->  term  ->  term = (fun n t -> (mkApp ((Prims.strcat "is-" n), (t)::[])))

# 563 "term.fs"
let mk_ApplyTE : term  ->  term  ->  term = (fun t e -> (mkApp ("ApplyTE", (t)::(e)::[])))

# 564 "term.fs"
let mk_ApplyTT : term  ->  term  ->  term = (fun t t' -> (mkApp ("ApplyTT", (t)::(t')::[])))

# 565 "term.fs"
let mk_ApplyET : term  ->  term  ->  term = (fun e t -> (mkApp ("ApplyET", (e)::(t)::[])))

# 566 "term.fs"
let mk_ApplyEE : term  ->  term  ->  term = (fun e e' -> (mkApp ("ApplyEE", (e)::(e')::[])))

# 567 "term.fs"
let mk_ApplyEF : term  ->  term  ->  term = (fun e f -> (mkApp ("ApplyEF", (e)::(f)::[])))

# 568 "term.fs"
let mk_String_const : Prims.int  ->  term = (fun i -> (let _157_660 = (let _157_659 = (let _157_658 = (mkInteger' i)
in (_157_658)::[])
in ("String_const", _157_659))
in (mkApp _157_660)))

# 569 "term.fs"
let mk_Precedes : term  ->  term  ->  term = (fun x1 x2 -> (let _157_665 = (mkApp ("Precedes", (x1)::(x2)::[]))
in (FStar_All.pipe_right _157_665 mk_Valid)))

# 570 "term.fs"
let mk_LexCons : term  ->  term  ->  term = (fun x1 x2 -> (mkApp ("LexCons", (x1)::(x2)::[])))

# 571 "term.fs"
let rec n_fuel : Prims.int  ->  term = (fun n -> if (n = 0) then begin
(mkApp ("ZFuel", []))
end else begin
(let _157_674 = (let _157_673 = (let _157_672 = (n_fuel (n - 1))
in (_157_672)::[])
in ("SFuel", _157_673))
in (mkApp _157_674))
end)

# 574 "term.fs"
let fuel_2 : term = (n_fuel 2)

# 575 "term.fs"
let fuel_100 : term = (n_fuel 100)

# 577 "term.fs"
let mk_and_opt : term Prims.option  ->  term Prims.option  ->  term Prims.option = (fun p1 p2 -> (match ((p1, p2)) with
| (Some (p1), Some (p2)) -> begin
(let _157_679 = (mkAnd (p1, p2))
in Some (_157_679))
end
| ((Some (p), None)) | ((None, Some (p))) -> begin
Some (p)
end
| (None, None) -> begin
None
end))

# 583 "term.fs"
let mk_and_opt_l : term Prims.option Prims.list  ->  term Prims.option = (fun pl -> (FStar_List.fold_left (fun out p -> (mk_and_opt p out)) None pl))

# 586 "term.fs"
let mk_and_l : term Prims.list  ->  term = (fun l -> (match (l) with
| [] -> begin
mkTrue
end
| hd::tl -> begin
(FStar_List.fold_left (fun p1 p2 -> (mkAnd (p1, p2))) hd tl)
end))

# 590 "term.fs"
let mk_or_l : term Prims.list  ->  term = (fun l -> (match (l) with
| [] -> begin
mkFalse
end
| hd::tl -> begin
(FStar_List.fold_left (fun p1 p2 -> (mkOr (p1, p2))) hd tl)
end))

# 595 "term.fs"
let rec print_smt_term : term  ->  Prims.string = (fun t -> (match (t.tm) with
| Integer (n) -> begin
(FStar_Util.format1 "Integer %s" n)
end
| BoundV (n) -> begin
(let _157_696 = (FStar_Util.string_of_int n)
in (FStar_Util.format1 "BoundV %s" _157_696))
end
| FreeV (fv) -> begin
(FStar_Util.format1 "FreeV %s" (Prims.fst fv))
end
| App (op, l) -> begin
(let _157_697 = (print_smt_term_list l)
in (FStar_Util.format2 "App %s [ %s ]" (op_to_string op) _157_697))
end
| Quant (qop, l, _55_984, _55_986, t) -> begin
(let _157_699 = (print_smt_term_list_list l)
in (let _157_698 = (print_smt_term t)
in (FStar_Util.format3 "Quant %s %s %s" (qop_to_string qop) _157_699 _157_698)))
end))
and print_smt_term_list : term Prims.list  ->  Prims.string = (fun l -> (FStar_List.fold_left (fun s t -> (let _157_703 = (print_smt_term t)
in (Prims.strcat (Prims.strcat s "; ") _157_703))) "" l))
and print_smt_term_list_list : term Prims.list Prims.list  ->  Prims.string = (fun l -> (FStar_List.fold_left (fun s l -> (let _157_708 = (let _157_707 = (print_smt_term_list l)
in (Prims.strcat (Prims.strcat s "; [ ") _157_707))
in (Prims.strcat _157_708 " ] "))) "" l))




