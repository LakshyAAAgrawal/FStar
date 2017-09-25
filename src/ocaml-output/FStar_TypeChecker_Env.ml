open Prims
type binding =
  | Binding_var of FStar_Syntax_Syntax.bv
  | Binding_lid of (FStar_Ident.lident,FStar_Syntax_Syntax.tscheme)
  FStar_Pervasives_Native.tuple2
  | Binding_sig of (FStar_Ident.lident Prims.list,FStar_Syntax_Syntax.sigelt)
  FStar_Pervasives_Native.tuple2
  | Binding_univ of FStar_Syntax_Syntax.univ_name
  | Binding_sig_inst of
  (FStar_Ident.lident Prims.list,FStar_Syntax_Syntax.sigelt,FStar_Syntax_Syntax.universes)
  FStar_Pervasives_Native.tuple3[@@deriving show]
let uu___is_Binding_var: binding -> Prims.bool =
  fun projectee  ->
    match projectee with | Binding_var _0 -> true | uu____44 -> false
let __proj__Binding_var__item___0: binding -> FStar_Syntax_Syntax.bv =
  fun projectee  -> match projectee with | Binding_var _0 -> _0
let uu___is_Binding_lid: binding -> Prims.bool =
  fun projectee  ->
    match projectee with | Binding_lid _0 -> true | uu____62 -> false
let __proj__Binding_lid__item___0:
  binding ->
    (FStar_Ident.lident,FStar_Syntax_Syntax.tscheme)
      FStar_Pervasives_Native.tuple2
  = fun projectee  -> match projectee with | Binding_lid _0 -> _0
let uu___is_Binding_sig: binding -> Prims.bool =
  fun projectee  ->
    match projectee with | Binding_sig _0 -> true | uu____94 -> false
let __proj__Binding_sig__item___0:
  binding ->
    (FStar_Ident.lident Prims.list,FStar_Syntax_Syntax.sigelt)
      FStar_Pervasives_Native.tuple2
  = fun projectee  -> match projectee with | Binding_sig _0 -> _0
let uu___is_Binding_univ: binding -> Prims.bool =
  fun projectee  ->
    match projectee with | Binding_univ _0 -> true | uu____126 -> false
let __proj__Binding_univ__item___0: binding -> FStar_Syntax_Syntax.univ_name
  = fun projectee  -> match projectee with | Binding_univ _0 -> _0
let uu___is_Binding_sig_inst: binding -> Prims.bool =
  fun projectee  ->
    match projectee with | Binding_sig_inst _0 -> true | uu____148 -> false
let __proj__Binding_sig_inst__item___0:
  binding ->
    (FStar_Ident.lident Prims.list,FStar_Syntax_Syntax.sigelt,FStar_Syntax_Syntax.universes)
      FStar_Pervasives_Native.tuple3
  = fun projectee  -> match projectee with | Binding_sig_inst _0 -> _0
type delta_level =
  | NoDelta
  | Inlining
  | Eager_unfolding_only
  | Unfold of FStar_Syntax_Syntax.delta_depth
  | UnfoldTac[@@deriving show]
let uu___is_NoDelta: delta_level -> Prims.bool =
  fun projectee  ->
    match projectee with | NoDelta  -> true | uu____189 -> false
let uu___is_Inlining: delta_level -> Prims.bool =
  fun projectee  ->
    match projectee with | Inlining  -> true | uu____194 -> false
let uu___is_Eager_unfolding_only: delta_level -> Prims.bool =
  fun projectee  ->
    match projectee with | Eager_unfolding_only  -> true | uu____199 -> false
let uu___is_Unfold: delta_level -> Prims.bool =
  fun projectee  ->
    match projectee with | Unfold _0 -> true | uu____205 -> false
let __proj__Unfold__item___0: delta_level -> FStar_Syntax_Syntax.delta_depth
  = fun projectee  -> match projectee with | Unfold _0 -> _0
let uu___is_UnfoldTac: delta_level -> Prims.bool =
  fun projectee  ->
    match projectee with | UnfoldTac  -> true | uu____218 -> false
type mlift =
  {
  mlift_wp:
    FStar_Syntax_Syntax.typ ->
      FStar_Syntax_Syntax.typ -> FStar_Syntax_Syntax.typ;
  mlift_term:
    (FStar_Syntax_Syntax.typ ->
       FStar_Syntax_Syntax.typ ->
         FStar_Syntax_Syntax.term -> FStar_Syntax_Syntax.term)
      FStar_Pervasives_Native.option;}[@@deriving show]
let __proj__Mkmlift__item__mlift_wp:
  mlift ->
    FStar_Syntax_Syntax.typ ->
      FStar_Syntax_Syntax.typ -> FStar_Syntax_Syntax.typ
  =
  fun projectee  ->
    match projectee with
    | { mlift_wp = __fname__mlift_wp; mlift_term = __fname__mlift_term;_} ->
        __fname__mlift_wp
let __proj__Mkmlift__item__mlift_term:
  mlift ->
    (FStar_Syntax_Syntax.typ ->
       FStar_Syntax_Syntax.typ ->
         FStar_Syntax_Syntax.term -> FStar_Syntax_Syntax.term)
      FStar_Pervasives_Native.option
  =
  fun projectee  ->
    match projectee with
    | { mlift_wp = __fname__mlift_wp; mlift_term = __fname__mlift_term;_} ->
        __fname__mlift_term
type edge =
  {
  msource: FStar_Ident.lident;
  mtarget: FStar_Ident.lident;
  mlift: mlift;}[@@deriving show]
let __proj__Mkedge__item__msource: edge -> FStar_Ident.lident =
  fun projectee  ->
    match projectee with
    | { msource = __fname__msource; mtarget = __fname__mtarget;
        mlift = __fname__mlift;_} -> __fname__msource
let __proj__Mkedge__item__mtarget: edge -> FStar_Ident.lident =
  fun projectee  ->
    match projectee with
    | { msource = __fname__msource; mtarget = __fname__mtarget;
        mlift = __fname__mlift;_} -> __fname__mtarget
let __proj__Mkedge__item__mlift: edge -> mlift =
  fun projectee  ->
    match projectee with
    | { msource = __fname__msource; mtarget = __fname__mtarget;
        mlift = __fname__mlift;_} -> __fname__mlift
type effects =
  {
  decls:
    (FStar_Syntax_Syntax.eff_decl,FStar_Syntax_Syntax.qualifier Prims.list)
      FStar_Pervasives_Native.tuple2 Prims.list;
  order: edge Prims.list;
  joins:
    (FStar_Ident.lident,FStar_Ident.lident,FStar_Ident.lident,mlift,mlift)
      FStar_Pervasives_Native.tuple5 Prims.list;}[@@deriving show]
let __proj__Mkeffects__item__decls:
  effects ->
    (FStar_Syntax_Syntax.eff_decl,FStar_Syntax_Syntax.qualifier Prims.list)
      FStar_Pervasives_Native.tuple2 Prims.list
  =
  fun projectee  ->
    match projectee with
    | { decls = __fname__decls; order = __fname__order;
        joins = __fname__joins;_} -> __fname__decls
let __proj__Mkeffects__item__order: effects -> edge Prims.list =
  fun projectee  ->
    match projectee with
    | { decls = __fname__decls; order = __fname__order;
        joins = __fname__joins;_} -> __fname__order
let __proj__Mkeffects__item__joins:
  effects ->
    (FStar_Ident.lident,FStar_Ident.lident,FStar_Ident.lident,mlift,mlift)
      FStar_Pervasives_Native.tuple5 Prims.list
  =
  fun projectee  ->
    match projectee with
    | { decls = __fname__decls; order = __fname__order;
        joins = __fname__joins;_} -> __fname__joins
type name_prefix = Prims.string Prims.list[@@deriving show]
type flat_proof_namespace =
  (name_prefix,Prims.bool) FStar_Pervasives_Native.tuple2 Prims.list[@@deriving
                                                                    show]
type proof_namespace = flat_proof_namespace Prims.list[@@deriving show]
type cached_elt =
  (((FStar_Syntax_Syntax.universes,FStar_Syntax_Syntax.typ)
      FStar_Pervasives_Native.tuple2,(FStar_Syntax_Syntax.sigelt,FStar_Syntax_Syntax.universes
                                                                   FStar_Pervasives_Native.option)
                                       FStar_Pervasives_Native.tuple2)
     FStar_Util.either,FStar_Range.range)
    FStar_Pervasives_Native.tuple2[@@deriving show]
type goal = FStar_Syntax_Syntax.term[@@deriving show]
type env =
  {
  solver: solver_t;
  range: FStar_Range.range;
  curmodule: FStar_Ident.lident;
  gamma: binding Prims.list;
  gamma_cache: cached_elt FStar_Util.smap;
  modules: FStar_Syntax_Syntax.modul Prims.list;
  expected_typ: FStar_Syntax_Syntax.typ FStar_Pervasives_Native.option;
  sigtab: FStar_Syntax_Syntax.sigelt FStar_Util.smap;
  is_pattern: Prims.bool;
  instantiate_imp: Prims.bool;
  effects: effects;
  generalize: Prims.bool;
  letrecs:
    (FStar_Syntax_Syntax.lbname,FStar_Syntax_Syntax.typ)
      FStar_Pervasives_Native.tuple2 Prims.list;
  top_level: Prims.bool;
  check_uvars: Prims.bool;
  use_eq: Prims.bool;
  is_iface: Prims.bool;
  admit: Prims.bool;
  lax: Prims.bool;
  lax_universes: Prims.bool;
  failhard: Prims.bool;
  nosynth: Prims.bool;
  type_of:
    env ->
      FStar_Syntax_Syntax.term ->
        (FStar_Syntax_Syntax.term,FStar_Syntax_Syntax.typ,guard_t)
          FStar_Pervasives_Native.tuple3;
  universe_of:
    env -> FStar_Syntax_Syntax.term -> FStar_Syntax_Syntax.universe;
  use_bv_sorts: Prims.bool;
  qname_and_index:
    (FStar_Ident.lident,Prims.int) FStar_Pervasives_Native.tuple2
      FStar_Pervasives_Native.option;
  proof_ns: proof_namespace;
  synth:
    env ->
      FStar_Syntax_Syntax.typ ->
        FStar_Syntax_Syntax.term -> FStar_Syntax_Syntax.term;
  is_native_tactic: FStar_Ident.lid -> Prims.bool;
  identifier_info: FStar_TypeChecker_Common.id_info_table FStar_ST.ref;}
[@@deriving show]
and solver_t =
  {
  init: env -> Prims.unit;
  push: Prims.string -> Prims.unit;
  pop: Prims.string -> Prims.unit;
  encode_modul: env -> FStar_Syntax_Syntax.modul -> Prims.unit;
  encode_sig: env -> FStar_Syntax_Syntax.sigelt -> Prims.unit;
  preprocess:
    env ->
      goal ->
        (env,goal,FStar_Options.optionstate) FStar_Pervasives_Native.tuple3
          Prims.list;
  solve:
    (Prims.unit -> Prims.string) FStar_Pervasives_Native.option ->
      env -> FStar_Syntax_Syntax.typ -> Prims.unit;
  is_trivial: env -> FStar_Syntax_Syntax.typ -> Prims.bool;
  finish: Prims.unit -> Prims.unit;
  refresh: Prims.unit -> Prims.unit;}[@@deriving show]
and guard_t =
  {
  guard_f: FStar_TypeChecker_Common.guard_formula;
  deferred: FStar_TypeChecker_Common.deferred;
  univ_ineqs:
    (FStar_Syntax_Syntax.universe Prims.list,FStar_TypeChecker_Common.univ_ineq
                                               Prims.list)
      FStar_Pervasives_Native.tuple2;
  implicits:
    (Prims.string,env,FStar_Syntax_Syntax.uvar,FStar_Syntax_Syntax.term,
      FStar_Syntax_Syntax.typ,FStar_Range.range)
      FStar_Pervasives_Native.tuple6 Prims.list;}[@@deriving show]
let __proj__Mkenv__item__solver: env -> solver_t =
  fun projectee  ->
    match projectee with
    | { solver = __fname__solver; range = __fname__range;
        curmodule = __fname__curmodule; gamma = __fname__gamma;
        gamma_cache = __fname__gamma_cache; modules = __fname__modules;
        expected_typ = __fname__expected_typ; sigtab = __fname__sigtab;
        is_pattern = __fname__is_pattern;
        instantiate_imp = __fname__instantiate_imp;
        effects = __fname__effects; generalize = __fname__generalize;
        letrecs = __fname__letrecs; top_level = __fname__top_level;
        check_uvars = __fname__check_uvars; use_eq = __fname__use_eq;
        is_iface = __fname__is_iface; admit = __fname__admit;
        lax = __fname__lax; lax_universes = __fname__lax_universes;
        failhard = __fname__failhard; nosynth = __fname__nosynth;
        type_of = __fname__type_of; universe_of = __fname__universe_of;
        use_bv_sorts = __fname__use_bv_sorts;
        qname_and_index = __fname__qname_and_index;
        proof_ns = __fname__proof_ns; synth = __fname__synth;
        is_native_tactic = __fname__is_native_tactic;
        identifier_info = __fname__identifier_info;_} -> __fname__solver
let __proj__Mkenv__item__range: env -> FStar_Range.range =
  fun projectee  ->
    match projectee with
    | { solver = __fname__solver; range = __fname__range;
        curmodule = __fname__curmodule; gamma = __fname__gamma;
        gamma_cache = __fname__gamma_cache; modules = __fname__modules;
        expected_typ = __fname__expected_typ; sigtab = __fname__sigtab;
        is_pattern = __fname__is_pattern;
        instantiate_imp = __fname__instantiate_imp;
        effects = __fname__effects; generalize = __fname__generalize;
        letrecs = __fname__letrecs; top_level = __fname__top_level;
        check_uvars = __fname__check_uvars; use_eq = __fname__use_eq;
        is_iface = __fname__is_iface; admit = __fname__admit;
        lax = __fname__lax; lax_universes = __fname__lax_universes;
        failhard = __fname__failhard; nosynth = __fname__nosynth;
        type_of = __fname__type_of; universe_of = __fname__universe_of;
        use_bv_sorts = __fname__use_bv_sorts;
        qname_and_index = __fname__qname_and_index;
        proof_ns = __fname__proof_ns; synth = __fname__synth;
        is_native_tactic = __fname__is_native_tactic;
        identifier_info = __fname__identifier_info;_} -> __fname__range
let __proj__Mkenv__item__curmodule: env -> FStar_Ident.lident =
  fun projectee  ->
    match projectee with
    | { solver = __fname__solver; range = __fname__range;
        curmodule = __fname__curmodule; gamma = __fname__gamma;
        gamma_cache = __fname__gamma_cache; modules = __fname__modules;
        expected_typ = __fname__expected_typ; sigtab = __fname__sigtab;
        is_pattern = __fname__is_pattern;
        instantiate_imp = __fname__instantiate_imp;
        effects = __fname__effects; generalize = __fname__generalize;
        letrecs = __fname__letrecs; top_level = __fname__top_level;
        check_uvars = __fname__check_uvars; use_eq = __fname__use_eq;
        is_iface = __fname__is_iface; admit = __fname__admit;
        lax = __fname__lax; lax_universes = __fname__lax_universes;
        failhard = __fname__failhard; nosynth = __fname__nosynth;
        type_of = __fname__type_of; universe_of = __fname__universe_of;
        use_bv_sorts = __fname__use_bv_sorts;
        qname_and_index = __fname__qname_and_index;
        proof_ns = __fname__proof_ns; synth = __fname__synth;
        is_native_tactic = __fname__is_native_tactic;
        identifier_info = __fname__identifier_info;_} -> __fname__curmodule
let __proj__Mkenv__item__gamma: env -> binding Prims.list =
  fun projectee  ->
    match projectee with
    | { solver = __fname__solver; range = __fname__range;
        curmodule = __fname__curmodule; gamma = __fname__gamma;
        gamma_cache = __fname__gamma_cache; modules = __fname__modules;
        expected_typ = __fname__expected_typ; sigtab = __fname__sigtab;
        is_pattern = __fname__is_pattern;
        instantiate_imp = __fname__instantiate_imp;
        effects = __fname__effects; generalize = __fname__generalize;
        letrecs = __fname__letrecs; top_level = __fname__top_level;
        check_uvars = __fname__check_uvars; use_eq = __fname__use_eq;
        is_iface = __fname__is_iface; admit = __fname__admit;
        lax = __fname__lax; lax_universes = __fname__lax_universes;
        failhard = __fname__failhard; nosynth = __fname__nosynth;
        type_of = __fname__type_of; universe_of = __fname__universe_of;
        use_bv_sorts = __fname__use_bv_sorts;
        qname_and_index = __fname__qname_and_index;
        proof_ns = __fname__proof_ns; synth = __fname__synth;
        is_native_tactic = __fname__is_native_tactic;
        identifier_info = __fname__identifier_info;_} -> __fname__gamma
let __proj__Mkenv__item__gamma_cache: env -> cached_elt FStar_Util.smap =
  fun projectee  ->
    match projectee with
    | { solver = __fname__solver; range = __fname__range;
        curmodule = __fname__curmodule; gamma = __fname__gamma;
        gamma_cache = __fname__gamma_cache; modules = __fname__modules;
        expected_typ = __fname__expected_typ; sigtab = __fname__sigtab;
        is_pattern = __fname__is_pattern;
        instantiate_imp = __fname__instantiate_imp;
        effects = __fname__effects; generalize = __fname__generalize;
        letrecs = __fname__letrecs; top_level = __fname__top_level;
        check_uvars = __fname__check_uvars; use_eq = __fname__use_eq;
        is_iface = __fname__is_iface; admit = __fname__admit;
        lax = __fname__lax; lax_universes = __fname__lax_universes;
        failhard = __fname__failhard; nosynth = __fname__nosynth;
        type_of = __fname__type_of; universe_of = __fname__universe_of;
        use_bv_sorts = __fname__use_bv_sorts;
        qname_and_index = __fname__qname_and_index;
        proof_ns = __fname__proof_ns; synth = __fname__synth;
        is_native_tactic = __fname__is_native_tactic;
        identifier_info = __fname__identifier_info;_} -> __fname__gamma_cache
let __proj__Mkenv__item__modules: env -> FStar_Syntax_Syntax.modul Prims.list
  =
  fun projectee  ->
    match projectee with
    | { solver = __fname__solver; range = __fname__range;
        curmodule = __fname__curmodule; gamma = __fname__gamma;
        gamma_cache = __fname__gamma_cache; modules = __fname__modules;
        expected_typ = __fname__expected_typ; sigtab = __fname__sigtab;
        is_pattern = __fname__is_pattern;
        instantiate_imp = __fname__instantiate_imp;
        effects = __fname__effects; generalize = __fname__generalize;
        letrecs = __fname__letrecs; top_level = __fname__top_level;
        check_uvars = __fname__check_uvars; use_eq = __fname__use_eq;
        is_iface = __fname__is_iface; admit = __fname__admit;
        lax = __fname__lax; lax_universes = __fname__lax_universes;
        failhard = __fname__failhard; nosynth = __fname__nosynth;
        type_of = __fname__type_of; universe_of = __fname__universe_of;
        use_bv_sorts = __fname__use_bv_sorts;
        qname_and_index = __fname__qname_and_index;
        proof_ns = __fname__proof_ns; synth = __fname__synth;
        is_native_tactic = __fname__is_native_tactic;
        identifier_info = __fname__identifier_info;_} -> __fname__modules
let __proj__Mkenv__item__expected_typ:
  env -> FStar_Syntax_Syntax.typ FStar_Pervasives_Native.option =
  fun projectee  ->
    match projectee with
    | { solver = __fname__solver; range = __fname__range;
        curmodule = __fname__curmodule; gamma = __fname__gamma;
        gamma_cache = __fname__gamma_cache; modules = __fname__modules;
        expected_typ = __fname__expected_typ; sigtab = __fname__sigtab;
        is_pattern = __fname__is_pattern;
        instantiate_imp = __fname__instantiate_imp;
        effects = __fname__effects; generalize = __fname__generalize;
        letrecs = __fname__letrecs; top_level = __fname__top_level;
        check_uvars = __fname__check_uvars; use_eq = __fname__use_eq;
        is_iface = __fname__is_iface; admit = __fname__admit;
        lax = __fname__lax; lax_universes = __fname__lax_universes;
        failhard = __fname__failhard; nosynth = __fname__nosynth;
        type_of = __fname__type_of; universe_of = __fname__universe_of;
        use_bv_sorts = __fname__use_bv_sorts;
        qname_and_index = __fname__qname_and_index;
        proof_ns = __fname__proof_ns; synth = __fname__synth;
        is_native_tactic = __fname__is_native_tactic;
        identifier_info = __fname__identifier_info;_} ->
        __fname__expected_typ
let __proj__Mkenv__item__sigtab:
  env -> FStar_Syntax_Syntax.sigelt FStar_Util.smap =
  fun projectee  ->
    match projectee with
    | { solver = __fname__solver; range = __fname__range;
        curmodule = __fname__curmodule; gamma = __fname__gamma;
        gamma_cache = __fname__gamma_cache; modules = __fname__modules;
        expected_typ = __fname__expected_typ; sigtab = __fname__sigtab;
        is_pattern = __fname__is_pattern;
        instantiate_imp = __fname__instantiate_imp;
        effects = __fname__effects; generalize = __fname__generalize;
        letrecs = __fname__letrecs; top_level = __fname__top_level;
        check_uvars = __fname__check_uvars; use_eq = __fname__use_eq;
        is_iface = __fname__is_iface; admit = __fname__admit;
        lax = __fname__lax; lax_universes = __fname__lax_universes;
        failhard = __fname__failhard; nosynth = __fname__nosynth;
        type_of = __fname__type_of; universe_of = __fname__universe_of;
        use_bv_sorts = __fname__use_bv_sorts;
        qname_and_index = __fname__qname_and_index;
        proof_ns = __fname__proof_ns; synth = __fname__synth;
        is_native_tactic = __fname__is_native_tactic;
        identifier_info = __fname__identifier_info;_} -> __fname__sigtab
let __proj__Mkenv__item__is_pattern: env -> Prims.bool =
  fun projectee  ->
    match projectee with
    | { solver = __fname__solver; range = __fname__range;
        curmodule = __fname__curmodule; gamma = __fname__gamma;
        gamma_cache = __fname__gamma_cache; modules = __fname__modules;
        expected_typ = __fname__expected_typ; sigtab = __fname__sigtab;
        is_pattern = __fname__is_pattern;
        instantiate_imp = __fname__instantiate_imp;
        effects = __fname__effects; generalize = __fname__generalize;
        letrecs = __fname__letrecs; top_level = __fname__top_level;
        check_uvars = __fname__check_uvars; use_eq = __fname__use_eq;
        is_iface = __fname__is_iface; admit = __fname__admit;
        lax = __fname__lax; lax_universes = __fname__lax_universes;
        failhard = __fname__failhard; nosynth = __fname__nosynth;
        type_of = __fname__type_of; universe_of = __fname__universe_of;
        use_bv_sorts = __fname__use_bv_sorts;
        qname_and_index = __fname__qname_and_index;
        proof_ns = __fname__proof_ns; synth = __fname__synth;
        is_native_tactic = __fname__is_native_tactic;
        identifier_info = __fname__identifier_info;_} -> __fname__is_pattern
let __proj__Mkenv__item__instantiate_imp: env -> Prims.bool =
  fun projectee  ->
    match projectee with
    | { solver = __fname__solver; range = __fname__range;
        curmodule = __fname__curmodule; gamma = __fname__gamma;
        gamma_cache = __fname__gamma_cache; modules = __fname__modules;
        expected_typ = __fname__expected_typ; sigtab = __fname__sigtab;
        is_pattern = __fname__is_pattern;
        instantiate_imp = __fname__instantiate_imp;
        effects = __fname__effects; generalize = __fname__generalize;
        letrecs = __fname__letrecs; top_level = __fname__top_level;
        check_uvars = __fname__check_uvars; use_eq = __fname__use_eq;
        is_iface = __fname__is_iface; admit = __fname__admit;
        lax = __fname__lax; lax_universes = __fname__lax_universes;
        failhard = __fname__failhard; nosynth = __fname__nosynth;
        type_of = __fname__type_of; universe_of = __fname__universe_of;
        use_bv_sorts = __fname__use_bv_sorts;
        qname_and_index = __fname__qname_and_index;
        proof_ns = __fname__proof_ns; synth = __fname__synth;
        is_native_tactic = __fname__is_native_tactic;
        identifier_info = __fname__identifier_info;_} ->
        __fname__instantiate_imp
let __proj__Mkenv__item__effects: env -> effects =
  fun projectee  ->
    match projectee with
    | { solver = __fname__solver; range = __fname__range;
        curmodule = __fname__curmodule; gamma = __fname__gamma;
        gamma_cache = __fname__gamma_cache; modules = __fname__modules;
        expected_typ = __fname__expected_typ; sigtab = __fname__sigtab;
        is_pattern = __fname__is_pattern;
        instantiate_imp = __fname__instantiate_imp;
        effects = __fname__effects; generalize = __fname__generalize;
        letrecs = __fname__letrecs; top_level = __fname__top_level;
        check_uvars = __fname__check_uvars; use_eq = __fname__use_eq;
        is_iface = __fname__is_iface; admit = __fname__admit;
        lax = __fname__lax; lax_universes = __fname__lax_universes;
        failhard = __fname__failhard; nosynth = __fname__nosynth;
        type_of = __fname__type_of; universe_of = __fname__universe_of;
        use_bv_sorts = __fname__use_bv_sorts;
        qname_and_index = __fname__qname_and_index;
        proof_ns = __fname__proof_ns; synth = __fname__synth;
        is_native_tactic = __fname__is_native_tactic;
        identifier_info = __fname__identifier_info;_} -> __fname__effects
let __proj__Mkenv__item__generalize: env -> Prims.bool =
  fun projectee  ->
    match projectee with
    | { solver = __fname__solver; range = __fname__range;
        curmodule = __fname__curmodule; gamma = __fname__gamma;
        gamma_cache = __fname__gamma_cache; modules = __fname__modules;
        expected_typ = __fname__expected_typ; sigtab = __fname__sigtab;
        is_pattern = __fname__is_pattern;
        instantiate_imp = __fname__instantiate_imp;
        effects = __fname__effects; generalize = __fname__generalize;
        letrecs = __fname__letrecs; top_level = __fname__top_level;
        check_uvars = __fname__check_uvars; use_eq = __fname__use_eq;
        is_iface = __fname__is_iface; admit = __fname__admit;
        lax = __fname__lax; lax_universes = __fname__lax_universes;
        failhard = __fname__failhard; nosynth = __fname__nosynth;
        type_of = __fname__type_of; universe_of = __fname__universe_of;
        use_bv_sorts = __fname__use_bv_sorts;
        qname_and_index = __fname__qname_and_index;
        proof_ns = __fname__proof_ns; synth = __fname__synth;
        is_native_tactic = __fname__is_native_tactic;
        identifier_info = __fname__identifier_info;_} -> __fname__generalize
let __proj__Mkenv__item__letrecs:
  env ->
    (FStar_Syntax_Syntax.lbname,FStar_Syntax_Syntax.typ)
      FStar_Pervasives_Native.tuple2 Prims.list
  =
  fun projectee  ->
    match projectee with
    | { solver = __fname__solver; range = __fname__range;
        curmodule = __fname__curmodule; gamma = __fname__gamma;
        gamma_cache = __fname__gamma_cache; modules = __fname__modules;
        expected_typ = __fname__expected_typ; sigtab = __fname__sigtab;
        is_pattern = __fname__is_pattern;
        instantiate_imp = __fname__instantiate_imp;
        effects = __fname__effects; generalize = __fname__generalize;
        letrecs = __fname__letrecs; top_level = __fname__top_level;
        check_uvars = __fname__check_uvars; use_eq = __fname__use_eq;
        is_iface = __fname__is_iface; admit = __fname__admit;
        lax = __fname__lax; lax_universes = __fname__lax_universes;
        failhard = __fname__failhard; nosynth = __fname__nosynth;
        type_of = __fname__type_of; universe_of = __fname__universe_of;
        use_bv_sorts = __fname__use_bv_sorts;
        qname_and_index = __fname__qname_and_index;
        proof_ns = __fname__proof_ns; synth = __fname__synth;
        is_native_tactic = __fname__is_native_tactic;
        identifier_info = __fname__identifier_info;_} -> __fname__letrecs
let __proj__Mkenv__item__top_level: env -> Prims.bool =
  fun projectee  ->
    match projectee with
    | { solver = __fname__solver; range = __fname__range;
        curmodule = __fname__curmodule; gamma = __fname__gamma;
        gamma_cache = __fname__gamma_cache; modules = __fname__modules;
        expected_typ = __fname__expected_typ; sigtab = __fname__sigtab;
        is_pattern = __fname__is_pattern;
        instantiate_imp = __fname__instantiate_imp;
        effects = __fname__effects; generalize = __fname__generalize;
        letrecs = __fname__letrecs; top_level = __fname__top_level;
        check_uvars = __fname__check_uvars; use_eq = __fname__use_eq;
        is_iface = __fname__is_iface; admit = __fname__admit;
        lax = __fname__lax; lax_universes = __fname__lax_universes;
        failhard = __fname__failhard; nosynth = __fname__nosynth;
        type_of = __fname__type_of; universe_of = __fname__universe_of;
        use_bv_sorts = __fname__use_bv_sorts;
        qname_and_index = __fname__qname_and_index;
        proof_ns = __fname__proof_ns; synth = __fname__synth;
        is_native_tactic = __fname__is_native_tactic;
        identifier_info = __fname__identifier_info;_} -> __fname__top_level
let __proj__Mkenv__item__check_uvars: env -> Prims.bool =
  fun projectee  ->
    match projectee with
    | { solver = __fname__solver; range = __fname__range;
        curmodule = __fname__curmodule; gamma = __fname__gamma;
        gamma_cache = __fname__gamma_cache; modules = __fname__modules;
        expected_typ = __fname__expected_typ; sigtab = __fname__sigtab;
        is_pattern = __fname__is_pattern;
        instantiate_imp = __fname__instantiate_imp;
        effects = __fname__effects; generalize = __fname__generalize;
        letrecs = __fname__letrecs; top_level = __fname__top_level;
        check_uvars = __fname__check_uvars; use_eq = __fname__use_eq;
        is_iface = __fname__is_iface; admit = __fname__admit;
        lax = __fname__lax; lax_universes = __fname__lax_universes;
        failhard = __fname__failhard; nosynth = __fname__nosynth;
        type_of = __fname__type_of; universe_of = __fname__universe_of;
        use_bv_sorts = __fname__use_bv_sorts;
        qname_and_index = __fname__qname_and_index;
        proof_ns = __fname__proof_ns; synth = __fname__synth;
        is_native_tactic = __fname__is_native_tactic;
        identifier_info = __fname__identifier_info;_} -> __fname__check_uvars
let __proj__Mkenv__item__use_eq: env -> Prims.bool =
  fun projectee  ->
    match projectee with
    | { solver = __fname__solver; range = __fname__range;
        curmodule = __fname__curmodule; gamma = __fname__gamma;
        gamma_cache = __fname__gamma_cache; modules = __fname__modules;
        expected_typ = __fname__expected_typ; sigtab = __fname__sigtab;
        is_pattern = __fname__is_pattern;
        instantiate_imp = __fname__instantiate_imp;
        effects = __fname__effects; generalize = __fname__generalize;
        letrecs = __fname__letrecs; top_level = __fname__top_level;
        check_uvars = __fname__check_uvars; use_eq = __fname__use_eq;
        is_iface = __fname__is_iface; admit = __fname__admit;
        lax = __fname__lax; lax_universes = __fname__lax_universes;
        failhard = __fname__failhard; nosynth = __fname__nosynth;
        type_of = __fname__type_of; universe_of = __fname__universe_of;
        use_bv_sorts = __fname__use_bv_sorts;
        qname_and_index = __fname__qname_and_index;
        proof_ns = __fname__proof_ns; synth = __fname__synth;
        is_native_tactic = __fname__is_native_tactic;
        identifier_info = __fname__identifier_info;_} -> __fname__use_eq
let __proj__Mkenv__item__is_iface: env -> Prims.bool =
  fun projectee  ->
    match projectee with
    | { solver = __fname__solver; range = __fname__range;
        curmodule = __fname__curmodule; gamma = __fname__gamma;
        gamma_cache = __fname__gamma_cache; modules = __fname__modules;
        expected_typ = __fname__expected_typ; sigtab = __fname__sigtab;
        is_pattern = __fname__is_pattern;
        instantiate_imp = __fname__instantiate_imp;
        effects = __fname__effects; generalize = __fname__generalize;
        letrecs = __fname__letrecs; top_level = __fname__top_level;
        check_uvars = __fname__check_uvars; use_eq = __fname__use_eq;
        is_iface = __fname__is_iface; admit = __fname__admit;
        lax = __fname__lax; lax_universes = __fname__lax_universes;
        failhard = __fname__failhard; nosynth = __fname__nosynth;
        type_of = __fname__type_of; universe_of = __fname__universe_of;
        use_bv_sorts = __fname__use_bv_sorts;
        qname_and_index = __fname__qname_and_index;
        proof_ns = __fname__proof_ns; synth = __fname__synth;
        is_native_tactic = __fname__is_native_tactic;
        identifier_info = __fname__identifier_info;_} -> __fname__is_iface
let __proj__Mkenv__item__admit: env -> Prims.bool =
  fun projectee  ->
    match projectee with
    | { solver = __fname__solver; range = __fname__range;
        curmodule = __fname__curmodule; gamma = __fname__gamma;
        gamma_cache = __fname__gamma_cache; modules = __fname__modules;
        expected_typ = __fname__expected_typ; sigtab = __fname__sigtab;
        is_pattern = __fname__is_pattern;
        instantiate_imp = __fname__instantiate_imp;
        effects = __fname__effects; generalize = __fname__generalize;
        letrecs = __fname__letrecs; top_level = __fname__top_level;
        check_uvars = __fname__check_uvars; use_eq = __fname__use_eq;
        is_iface = __fname__is_iface; admit = __fname__admit;
        lax = __fname__lax; lax_universes = __fname__lax_universes;
        failhard = __fname__failhard; nosynth = __fname__nosynth;
        type_of = __fname__type_of; universe_of = __fname__universe_of;
        use_bv_sorts = __fname__use_bv_sorts;
        qname_and_index = __fname__qname_and_index;
        proof_ns = __fname__proof_ns; synth = __fname__synth;
        is_native_tactic = __fname__is_native_tactic;
        identifier_info = __fname__identifier_info;_} -> __fname__admit
let __proj__Mkenv__item__lax: env -> Prims.bool =
  fun projectee  ->
    match projectee with
    | { solver = __fname__solver; range = __fname__range;
        curmodule = __fname__curmodule; gamma = __fname__gamma;
        gamma_cache = __fname__gamma_cache; modules = __fname__modules;
        expected_typ = __fname__expected_typ; sigtab = __fname__sigtab;
        is_pattern = __fname__is_pattern;
        instantiate_imp = __fname__instantiate_imp;
        effects = __fname__effects; generalize = __fname__generalize;
        letrecs = __fname__letrecs; top_level = __fname__top_level;
        check_uvars = __fname__check_uvars; use_eq = __fname__use_eq;
        is_iface = __fname__is_iface; admit = __fname__admit;
        lax = __fname__lax; lax_universes = __fname__lax_universes;
        failhard = __fname__failhard; nosynth = __fname__nosynth;
        type_of = __fname__type_of; universe_of = __fname__universe_of;
        use_bv_sorts = __fname__use_bv_sorts;
        qname_and_index = __fname__qname_and_index;
        proof_ns = __fname__proof_ns; synth = __fname__synth;
        is_native_tactic = __fname__is_native_tactic;
        identifier_info = __fname__identifier_info;_} -> __fname__lax
let __proj__Mkenv__item__lax_universes: env -> Prims.bool =
  fun projectee  ->
    match projectee with
    | { solver = __fname__solver; range = __fname__range;
        curmodule = __fname__curmodule; gamma = __fname__gamma;
        gamma_cache = __fname__gamma_cache; modules = __fname__modules;
        expected_typ = __fname__expected_typ; sigtab = __fname__sigtab;
        is_pattern = __fname__is_pattern;
        instantiate_imp = __fname__instantiate_imp;
        effects = __fname__effects; generalize = __fname__generalize;
        letrecs = __fname__letrecs; top_level = __fname__top_level;
        check_uvars = __fname__check_uvars; use_eq = __fname__use_eq;
        is_iface = __fname__is_iface; admit = __fname__admit;
        lax = __fname__lax; lax_universes = __fname__lax_universes;
        failhard = __fname__failhard; nosynth = __fname__nosynth;
        type_of = __fname__type_of; universe_of = __fname__universe_of;
        use_bv_sorts = __fname__use_bv_sorts;
        qname_and_index = __fname__qname_and_index;
        proof_ns = __fname__proof_ns; synth = __fname__synth;
        is_native_tactic = __fname__is_native_tactic;
        identifier_info = __fname__identifier_info;_} ->
        __fname__lax_universes
let __proj__Mkenv__item__failhard: env -> Prims.bool =
  fun projectee  ->
    match projectee with
    | { solver = __fname__solver; range = __fname__range;
        curmodule = __fname__curmodule; gamma = __fname__gamma;
        gamma_cache = __fname__gamma_cache; modules = __fname__modules;
        expected_typ = __fname__expected_typ; sigtab = __fname__sigtab;
        is_pattern = __fname__is_pattern;
        instantiate_imp = __fname__instantiate_imp;
        effects = __fname__effects; generalize = __fname__generalize;
        letrecs = __fname__letrecs; top_level = __fname__top_level;
        check_uvars = __fname__check_uvars; use_eq = __fname__use_eq;
        is_iface = __fname__is_iface; admit = __fname__admit;
        lax = __fname__lax; lax_universes = __fname__lax_universes;
        failhard = __fname__failhard; nosynth = __fname__nosynth;
        type_of = __fname__type_of; universe_of = __fname__universe_of;
        use_bv_sorts = __fname__use_bv_sorts;
        qname_and_index = __fname__qname_and_index;
        proof_ns = __fname__proof_ns; synth = __fname__synth;
        is_native_tactic = __fname__is_native_tactic;
        identifier_info = __fname__identifier_info;_} -> __fname__failhard
let __proj__Mkenv__item__nosynth: env -> Prims.bool =
  fun projectee  ->
    match projectee with
    | { solver = __fname__solver; range = __fname__range;
        curmodule = __fname__curmodule; gamma = __fname__gamma;
        gamma_cache = __fname__gamma_cache; modules = __fname__modules;
        expected_typ = __fname__expected_typ; sigtab = __fname__sigtab;
        is_pattern = __fname__is_pattern;
        instantiate_imp = __fname__instantiate_imp;
        effects = __fname__effects; generalize = __fname__generalize;
        letrecs = __fname__letrecs; top_level = __fname__top_level;
        check_uvars = __fname__check_uvars; use_eq = __fname__use_eq;
        is_iface = __fname__is_iface; admit = __fname__admit;
        lax = __fname__lax; lax_universes = __fname__lax_universes;
        failhard = __fname__failhard; nosynth = __fname__nosynth;
        type_of = __fname__type_of; universe_of = __fname__universe_of;
        use_bv_sorts = __fname__use_bv_sorts;
        qname_and_index = __fname__qname_and_index;
        proof_ns = __fname__proof_ns; synth = __fname__synth;
        is_native_tactic = __fname__is_native_tactic;
        identifier_info = __fname__identifier_info;_} -> __fname__nosynth
let __proj__Mkenv__item__type_of:
  env ->
    env ->
      FStar_Syntax_Syntax.term ->
        (FStar_Syntax_Syntax.term,FStar_Syntax_Syntax.typ,guard_t)
          FStar_Pervasives_Native.tuple3
  =
  fun projectee  ->
    match projectee with
    | { solver = __fname__solver; range = __fname__range;
        curmodule = __fname__curmodule; gamma = __fname__gamma;
        gamma_cache = __fname__gamma_cache; modules = __fname__modules;
        expected_typ = __fname__expected_typ; sigtab = __fname__sigtab;
        is_pattern = __fname__is_pattern;
        instantiate_imp = __fname__instantiate_imp;
        effects = __fname__effects; generalize = __fname__generalize;
        letrecs = __fname__letrecs; top_level = __fname__top_level;
        check_uvars = __fname__check_uvars; use_eq = __fname__use_eq;
        is_iface = __fname__is_iface; admit = __fname__admit;
        lax = __fname__lax; lax_universes = __fname__lax_universes;
        failhard = __fname__failhard; nosynth = __fname__nosynth;
        type_of = __fname__type_of; universe_of = __fname__universe_of;
        use_bv_sorts = __fname__use_bv_sorts;
        qname_and_index = __fname__qname_and_index;
        proof_ns = __fname__proof_ns; synth = __fname__synth;
        is_native_tactic = __fname__is_native_tactic;
        identifier_info = __fname__identifier_info;_} -> __fname__type_of
let __proj__Mkenv__item__universe_of:
  env -> env -> FStar_Syntax_Syntax.term -> FStar_Syntax_Syntax.universe =
  fun projectee  ->
    match projectee with
    | { solver = __fname__solver; range = __fname__range;
        curmodule = __fname__curmodule; gamma = __fname__gamma;
        gamma_cache = __fname__gamma_cache; modules = __fname__modules;
        expected_typ = __fname__expected_typ; sigtab = __fname__sigtab;
        is_pattern = __fname__is_pattern;
        instantiate_imp = __fname__instantiate_imp;
        effects = __fname__effects; generalize = __fname__generalize;
        letrecs = __fname__letrecs; top_level = __fname__top_level;
        check_uvars = __fname__check_uvars; use_eq = __fname__use_eq;
        is_iface = __fname__is_iface; admit = __fname__admit;
        lax = __fname__lax; lax_universes = __fname__lax_universes;
        failhard = __fname__failhard; nosynth = __fname__nosynth;
        type_of = __fname__type_of; universe_of = __fname__universe_of;
        use_bv_sorts = __fname__use_bv_sorts;
        qname_and_index = __fname__qname_and_index;
        proof_ns = __fname__proof_ns; synth = __fname__synth;
        is_native_tactic = __fname__is_native_tactic;
        identifier_info = __fname__identifier_info;_} -> __fname__universe_of
let __proj__Mkenv__item__use_bv_sorts: env -> Prims.bool =
  fun projectee  ->
    match projectee with
    | { solver = __fname__solver; range = __fname__range;
        curmodule = __fname__curmodule; gamma = __fname__gamma;
        gamma_cache = __fname__gamma_cache; modules = __fname__modules;
        expected_typ = __fname__expected_typ; sigtab = __fname__sigtab;
        is_pattern = __fname__is_pattern;
        instantiate_imp = __fname__instantiate_imp;
        effects = __fname__effects; generalize = __fname__generalize;
        letrecs = __fname__letrecs; top_level = __fname__top_level;
        check_uvars = __fname__check_uvars; use_eq = __fname__use_eq;
        is_iface = __fname__is_iface; admit = __fname__admit;
        lax = __fname__lax; lax_universes = __fname__lax_universes;
        failhard = __fname__failhard; nosynth = __fname__nosynth;
        type_of = __fname__type_of; universe_of = __fname__universe_of;
        use_bv_sorts = __fname__use_bv_sorts;
        qname_and_index = __fname__qname_and_index;
        proof_ns = __fname__proof_ns; synth = __fname__synth;
        is_native_tactic = __fname__is_native_tactic;
        identifier_info = __fname__identifier_info;_} ->
        __fname__use_bv_sorts
let __proj__Mkenv__item__qname_and_index:
  env ->
    (FStar_Ident.lident,Prims.int) FStar_Pervasives_Native.tuple2
      FStar_Pervasives_Native.option
  =
  fun projectee  ->
    match projectee with
    | { solver = __fname__solver; range = __fname__range;
        curmodule = __fname__curmodule; gamma = __fname__gamma;
        gamma_cache = __fname__gamma_cache; modules = __fname__modules;
        expected_typ = __fname__expected_typ; sigtab = __fname__sigtab;
        is_pattern = __fname__is_pattern;
        instantiate_imp = __fname__instantiate_imp;
        effects = __fname__effects; generalize = __fname__generalize;
        letrecs = __fname__letrecs; top_level = __fname__top_level;
        check_uvars = __fname__check_uvars; use_eq = __fname__use_eq;
        is_iface = __fname__is_iface; admit = __fname__admit;
        lax = __fname__lax; lax_universes = __fname__lax_universes;
        failhard = __fname__failhard; nosynth = __fname__nosynth;
        type_of = __fname__type_of; universe_of = __fname__universe_of;
        use_bv_sorts = __fname__use_bv_sorts;
        qname_and_index = __fname__qname_and_index;
        proof_ns = __fname__proof_ns; synth = __fname__synth;
        is_native_tactic = __fname__is_native_tactic;
        identifier_info = __fname__identifier_info;_} ->
        __fname__qname_and_index
let __proj__Mkenv__item__proof_ns: env -> proof_namespace =
  fun projectee  ->
    match projectee with
    | { solver = __fname__solver; range = __fname__range;
        curmodule = __fname__curmodule; gamma = __fname__gamma;
        gamma_cache = __fname__gamma_cache; modules = __fname__modules;
        expected_typ = __fname__expected_typ; sigtab = __fname__sigtab;
        is_pattern = __fname__is_pattern;
        instantiate_imp = __fname__instantiate_imp;
        effects = __fname__effects; generalize = __fname__generalize;
        letrecs = __fname__letrecs; top_level = __fname__top_level;
        check_uvars = __fname__check_uvars; use_eq = __fname__use_eq;
        is_iface = __fname__is_iface; admit = __fname__admit;
        lax = __fname__lax; lax_universes = __fname__lax_universes;
        failhard = __fname__failhard; nosynth = __fname__nosynth;
        type_of = __fname__type_of; universe_of = __fname__universe_of;
        use_bv_sorts = __fname__use_bv_sorts;
        qname_and_index = __fname__qname_and_index;
        proof_ns = __fname__proof_ns; synth = __fname__synth;
        is_native_tactic = __fname__is_native_tactic;
        identifier_info = __fname__identifier_info;_} -> __fname__proof_ns
let __proj__Mkenv__item__synth:
  env ->
    env ->
      FStar_Syntax_Syntax.typ ->
        FStar_Syntax_Syntax.term -> FStar_Syntax_Syntax.term
  =
  fun projectee  ->
    match projectee with
    | { solver = __fname__solver; range = __fname__range;
        curmodule = __fname__curmodule; gamma = __fname__gamma;
        gamma_cache = __fname__gamma_cache; modules = __fname__modules;
        expected_typ = __fname__expected_typ; sigtab = __fname__sigtab;
        is_pattern = __fname__is_pattern;
        instantiate_imp = __fname__instantiate_imp;
        effects = __fname__effects; generalize = __fname__generalize;
        letrecs = __fname__letrecs; top_level = __fname__top_level;
        check_uvars = __fname__check_uvars; use_eq = __fname__use_eq;
        is_iface = __fname__is_iface; admit = __fname__admit;
        lax = __fname__lax; lax_universes = __fname__lax_universes;
        failhard = __fname__failhard; nosynth = __fname__nosynth;
        type_of = __fname__type_of; universe_of = __fname__universe_of;
        use_bv_sorts = __fname__use_bv_sorts;
        qname_and_index = __fname__qname_and_index;
        proof_ns = __fname__proof_ns; synth = __fname__synth;
        is_native_tactic = __fname__is_native_tactic;
        identifier_info = __fname__identifier_info;_} -> __fname__synth
let __proj__Mkenv__item__is_native_tactic:
  env -> FStar_Ident.lid -> Prims.bool =
  fun projectee  ->
    match projectee with
    | { solver = __fname__solver; range = __fname__range;
        curmodule = __fname__curmodule; gamma = __fname__gamma;
        gamma_cache = __fname__gamma_cache; modules = __fname__modules;
        expected_typ = __fname__expected_typ; sigtab = __fname__sigtab;
        is_pattern = __fname__is_pattern;
        instantiate_imp = __fname__instantiate_imp;
        effects = __fname__effects; generalize = __fname__generalize;
        letrecs = __fname__letrecs; top_level = __fname__top_level;
        check_uvars = __fname__check_uvars; use_eq = __fname__use_eq;
        is_iface = __fname__is_iface; admit = __fname__admit;
        lax = __fname__lax; lax_universes = __fname__lax_universes;
        failhard = __fname__failhard; nosynth = __fname__nosynth;
        type_of = __fname__type_of; universe_of = __fname__universe_of;
        use_bv_sorts = __fname__use_bv_sorts;
        qname_and_index = __fname__qname_and_index;
        proof_ns = __fname__proof_ns; synth = __fname__synth;
        is_native_tactic = __fname__is_native_tactic;
        identifier_info = __fname__identifier_info;_} ->
        __fname__is_native_tactic
let __proj__Mkenv__item__identifier_info:
  env -> FStar_TypeChecker_Common.id_info_table FStar_ST.ref =
  fun projectee  ->
    match projectee with
    | { solver = __fname__solver; range = __fname__range;
        curmodule = __fname__curmodule; gamma = __fname__gamma;
        gamma_cache = __fname__gamma_cache; modules = __fname__modules;
        expected_typ = __fname__expected_typ; sigtab = __fname__sigtab;
        is_pattern = __fname__is_pattern;
        instantiate_imp = __fname__instantiate_imp;
        effects = __fname__effects; generalize = __fname__generalize;
        letrecs = __fname__letrecs; top_level = __fname__top_level;
        check_uvars = __fname__check_uvars; use_eq = __fname__use_eq;
        is_iface = __fname__is_iface; admit = __fname__admit;
        lax = __fname__lax; lax_universes = __fname__lax_universes;
        failhard = __fname__failhard; nosynth = __fname__nosynth;
        type_of = __fname__type_of; universe_of = __fname__universe_of;
        use_bv_sorts = __fname__use_bv_sorts;
        qname_and_index = __fname__qname_and_index;
        proof_ns = __fname__proof_ns; synth = __fname__synth;
        is_native_tactic = __fname__is_native_tactic;
        identifier_info = __fname__identifier_info;_} ->
        __fname__identifier_info
let __proj__Mksolver_t__item__init: solver_t -> env -> Prims.unit =
  fun projectee  ->
    match projectee with
    | { init = __fname__init; push = __fname__push; pop = __fname__pop;
        encode_modul = __fname__encode_modul;
        encode_sig = __fname__encode_sig; preprocess = __fname__preprocess;
        solve = __fname__solve; is_trivial = __fname__is_trivial;
        finish = __fname__finish; refresh = __fname__refresh;_} ->
        __fname__init
let __proj__Mksolver_t__item__push: solver_t -> Prims.string -> Prims.unit =
  fun projectee  ->
    match projectee with
    | { init = __fname__init; push = __fname__push; pop = __fname__pop;
        encode_modul = __fname__encode_modul;
        encode_sig = __fname__encode_sig; preprocess = __fname__preprocess;
        solve = __fname__solve; is_trivial = __fname__is_trivial;
        finish = __fname__finish; refresh = __fname__refresh;_} ->
        __fname__push
let __proj__Mksolver_t__item__pop: solver_t -> Prims.string -> Prims.unit =
  fun projectee  ->
    match projectee with
    | { init = __fname__init; push = __fname__push; pop = __fname__pop;
        encode_modul = __fname__encode_modul;
        encode_sig = __fname__encode_sig; preprocess = __fname__preprocess;
        solve = __fname__solve; is_trivial = __fname__is_trivial;
        finish = __fname__finish; refresh = __fname__refresh;_} ->
        __fname__pop
let __proj__Mksolver_t__item__encode_modul:
  solver_t -> env -> FStar_Syntax_Syntax.modul -> Prims.unit =
  fun projectee  ->
    match projectee with
    | { init = __fname__init; push = __fname__push; pop = __fname__pop;
        encode_modul = __fname__encode_modul;
        encode_sig = __fname__encode_sig; preprocess = __fname__preprocess;
        solve = __fname__solve; is_trivial = __fname__is_trivial;
        finish = __fname__finish; refresh = __fname__refresh;_} ->
        __fname__encode_modul
let __proj__Mksolver_t__item__encode_sig:
  solver_t -> env -> FStar_Syntax_Syntax.sigelt -> Prims.unit =
  fun projectee  ->
    match projectee with
    | { init = __fname__init; push = __fname__push; pop = __fname__pop;
        encode_modul = __fname__encode_modul;
        encode_sig = __fname__encode_sig; preprocess = __fname__preprocess;
        solve = __fname__solve; is_trivial = __fname__is_trivial;
        finish = __fname__finish; refresh = __fname__refresh;_} ->
        __fname__encode_sig
let __proj__Mksolver_t__item__preprocess:
  solver_t ->
    env ->
      goal ->
        (env,goal,FStar_Options.optionstate) FStar_Pervasives_Native.tuple3
          Prims.list
  =
  fun projectee  ->
    match projectee with
    | { init = __fname__init; push = __fname__push; pop = __fname__pop;
        encode_modul = __fname__encode_modul;
        encode_sig = __fname__encode_sig; preprocess = __fname__preprocess;
        solve = __fname__solve; is_trivial = __fname__is_trivial;
        finish = __fname__finish; refresh = __fname__refresh;_} ->
        __fname__preprocess
let __proj__Mksolver_t__item__solve:
  solver_t ->
    (Prims.unit -> Prims.string) FStar_Pervasives_Native.option ->
      env -> FStar_Syntax_Syntax.typ -> Prims.unit
  =
  fun projectee  ->
    match projectee with
    | { init = __fname__init; push = __fname__push; pop = __fname__pop;
        encode_modul = __fname__encode_modul;
        encode_sig = __fname__encode_sig; preprocess = __fname__preprocess;
        solve = __fname__solve; is_trivial = __fname__is_trivial;
        finish = __fname__finish; refresh = __fname__refresh;_} ->
        __fname__solve
let __proj__Mksolver_t__item__is_trivial:
  solver_t -> env -> FStar_Syntax_Syntax.typ -> Prims.bool =
  fun projectee  ->
    match projectee with
    | { init = __fname__init; push = __fname__push; pop = __fname__pop;
        encode_modul = __fname__encode_modul;
        encode_sig = __fname__encode_sig; preprocess = __fname__preprocess;
        solve = __fname__solve; is_trivial = __fname__is_trivial;
        finish = __fname__finish; refresh = __fname__refresh;_} ->
        __fname__is_trivial
let __proj__Mksolver_t__item__finish: solver_t -> Prims.unit -> Prims.unit =
  fun projectee  ->
    match projectee with
    | { init = __fname__init; push = __fname__push; pop = __fname__pop;
        encode_modul = __fname__encode_modul;
        encode_sig = __fname__encode_sig; preprocess = __fname__preprocess;
        solve = __fname__solve; is_trivial = __fname__is_trivial;
        finish = __fname__finish; refresh = __fname__refresh;_} ->
        __fname__finish
let __proj__Mksolver_t__item__refresh: solver_t -> Prims.unit -> Prims.unit =
  fun projectee  ->
    match projectee with
    | { init = __fname__init; push = __fname__push; pop = __fname__pop;
        encode_modul = __fname__encode_modul;
        encode_sig = __fname__encode_sig; preprocess = __fname__preprocess;
        solve = __fname__solve; is_trivial = __fname__is_trivial;
        finish = __fname__finish; refresh = __fname__refresh;_} ->
        __fname__refresh
let __proj__Mkguard_t__item__guard_f:
  guard_t -> FStar_TypeChecker_Common.guard_formula =
  fun projectee  ->
    match projectee with
    | { guard_f = __fname__guard_f; deferred = __fname__deferred;
        univ_ineqs = __fname__univ_ineqs; implicits = __fname__implicits;_}
        -> __fname__guard_f
let __proj__Mkguard_t__item__deferred:
  guard_t -> FStar_TypeChecker_Common.deferred =
  fun projectee  ->
    match projectee with
    | { guard_f = __fname__guard_f; deferred = __fname__deferred;
        univ_ineqs = __fname__univ_ineqs; implicits = __fname__implicits;_}
        -> __fname__deferred
let __proj__Mkguard_t__item__univ_ineqs:
  guard_t ->
    (FStar_Syntax_Syntax.universe Prims.list,FStar_TypeChecker_Common.univ_ineq
                                               Prims.list)
      FStar_Pervasives_Native.tuple2
  =
  fun projectee  ->
    match projectee with
    | { guard_f = __fname__guard_f; deferred = __fname__deferred;
        univ_ineqs = __fname__univ_ineqs; implicits = __fname__implicits;_}
        -> __fname__univ_ineqs
let __proj__Mkguard_t__item__implicits:
  guard_t ->
    (Prims.string,env,FStar_Syntax_Syntax.uvar,FStar_Syntax_Syntax.term,
      FStar_Syntax_Syntax.typ,FStar_Range.range)
      FStar_Pervasives_Native.tuple6 Prims.list
  =
  fun projectee  ->
    match projectee with
    | { guard_f = __fname__guard_f; deferred = __fname__deferred;
        univ_ineqs = __fname__univ_ineqs; implicits = __fname__implicits;_}
        -> __fname__implicits
type implicits =
  (Prims.string,env,FStar_Syntax_Syntax.uvar,FStar_Syntax_Syntax.term,
    FStar_Syntax_Syntax.typ,FStar_Range.range) FStar_Pervasives_Native.tuple6
    Prims.list[@@deriving show]
type env_t = env[@@deriving show]
type sigtable = FStar_Syntax_Syntax.sigelt FStar_Util.smap[@@deriving show]
let should_verify: env -> Prims.bool =
  fun env  ->
    ((Prims.op_Negation env.lax) && (Prims.op_Negation env.admit)) &&
      (FStar_Options.should_verify (env.curmodule).FStar_Ident.str)
let visible_at: delta_level -> FStar_Syntax_Syntax.qualifier -> Prims.bool =
  fun d  ->
    fun q  ->
      match (d, q) with
      | (NoDelta ,uu____4298) -> true
      | (Eager_unfolding_only
         ,FStar_Syntax_Syntax.Unfold_for_unification_and_vcgen ) -> true
      | (Unfold
         uu____4299,FStar_Syntax_Syntax.Unfold_for_unification_and_vcgen ) ->
          true
      | (Unfold uu____4300,FStar_Syntax_Syntax.Visible_default ) -> true
      | (Inlining ,FStar_Syntax_Syntax.Inline_for_extraction ) -> true
      | uu____4301 -> false
let default_table_size: Prims.int = Prims.parse_int "200"
let new_sigtab: 'Auu____4310 . Prims.unit -> 'Auu____4310 FStar_Util.smap =
  fun uu____4316  -> FStar_Util.smap_create default_table_size
let new_gamma_cache:
  'Auu____4321 . Prims.unit -> 'Auu____4321 FStar_Util.smap =
  fun uu____4327  -> FStar_Util.smap_create (Prims.parse_int "100")
let initial_env:
  (env ->
     FStar_Syntax_Syntax.term ->
       (FStar_Syntax_Syntax.term,FStar_Syntax_Syntax.typ,guard_t)
         FStar_Pervasives_Native.tuple3)
    ->
    (env -> FStar_Syntax_Syntax.term -> FStar_Syntax_Syntax.universe) ->
      solver_t -> FStar_Ident.lident -> env
  =
  fun type_of  ->
    fun universe_of  ->
      fun solver  ->
        fun module_lid  ->
          let uu____4376 = new_gamma_cache () in
          let uu____4379 = new_sigtab () in
          let uu____4382 =
            let uu____4383 = FStar_Options.using_facts_from () in
            match uu____4383 with
            | FStar_Pervasives_Native.Some ns ->
                let uu____4393 =
                  let uu____4402 =
                    FStar_List.map
                      (fun s  -> ((FStar_Ident.path_of_text s), true)) ns in
                  FStar_List.append uu____4402 [([], false)] in
                [uu____4393]
            | FStar_Pervasives_Native.None  -> [[]] in
          let uu____4475 =
            FStar_Util.mk_ref FStar_TypeChecker_Common.id_info_table_empty in
          {
            solver;
            range = FStar_Range.dummyRange;
            curmodule = module_lid;
            gamma = [];
            gamma_cache = uu____4376;
            modules = [];
            expected_typ = FStar_Pervasives_Native.None;
            sigtab = uu____4379;
            is_pattern = false;
            instantiate_imp = true;
            effects = { decls = []; order = []; joins = [] };
            generalize = true;
            letrecs = [];
            top_level = false;
            check_uvars = false;
            use_eq = false;
            is_iface = false;
            admit = false;
            lax = false;
            lax_universes = false;
            failhard = false;
            nosynth = false;
            type_of;
            universe_of;
            use_bv_sorts = false;
            qname_and_index = FStar_Pervasives_Native.None;
            proof_ns = uu____4382;
            synth =
              (fun e  ->
                 fun g  -> fun tau  -> failwith "no synthesizer available");
            is_native_tactic = (fun uu____4509  -> false);
            identifier_info = uu____4475
          }
let sigtab: env -> FStar_Syntax_Syntax.sigelt FStar_Util.smap =
  fun env  -> env.sigtab
let gamma_cache: env -> cached_elt FStar_Util.smap =
  fun env  -> env.gamma_cache
let query_indices:
  (FStar_Ident.lident,Prims.int) FStar_Pervasives_Native.tuple2 Prims.list
    Prims.list FStar_ST.ref
  = FStar_Util.mk_ref [[]]
let push_query_indices: Prims.unit -> Prims.unit =
  fun uu____4580  ->
    let uu____4581 = FStar_ST.op_Bang query_indices in
    match uu____4581 with
    | [] -> failwith "Empty query indices!"
    | uu____4638 ->
        let uu____4647 =
          let uu____4656 =
            let uu____4663 = FStar_ST.op_Bang query_indices in
            FStar_List.hd uu____4663 in
          let uu____4720 = FStar_ST.op_Bang query_indices in uu____4656 ::
            uu____4720 in
        FStar_ST.op_Colon_Equals query_indices uu____4647
let pop_query_indices: Prims.unit -> Prims.unit =
  fun uu____4822  ->
    let uu____4823 = FStar_ST.op_Bang query_indices in
    match uu____4823 with
    | [] -> failwith "Empty query indices!"
    | hd1::tl1 -> FStar_ST.op_Colon_Equals query_indices tl1
let add_query_index:
  (FStar_Ident.lident,Prims.int) FStar_Pervasives_Native.tuple2 -> Prims.unit
  =
  fun uu____4951  ->
    match uu____4951 with
    | (l,n1) ->
        let uu____4958 = FStar_ST.op_Bang query_indices in
        (match uu____4958 with
         | hd1::tl1 ->
             FStar_ST.op_Colon_Equals query_indices (((l, n1) :: hd1) :: tl1)
         | uu____5083 -> failwith "Empty query indices")
let peek_query_indices:
  Prims.unit ->
    (FStar_Ident.lident,Prims.int) FStar_Pervasives_Native.tuple2 Prims.list
  =
  fun uu____5101  ->
    let uu____5102 = FStar_ST.op_Bang query_indices in
    FStar_List.hd uu____5102
let stack: env Prims.list FStar_ST.ref = FStar_Util.mk_ref []
let push_stack: env -> env =
  fun env  ->
    (let uu____5177 =
       let uu____5180 = FStar_ST.op_Bang stack in env :: uu____5180 in
     FStar_ST.op_Colon_Equals stack uu____5177);
    (let uu___126_5219 = env in
     let uu____5220 = FStar_Util.smap_copy (gamma_cache env) in
     let uu____5223 = FStar_Util.smap_copy (sigtab env) in
     let uu____5226 =
       let uu____5229 = FStar_ST.op_Bang env.identifier_info in
       FStar_Util.mk_ref uu____5229 in
     {
       solver = (uu___126_5219.solver);
       range = (uu___126_5219.range);
       curmodule = (uu___126_5219.curmodule);
       gamma = (uu___126_5219.gamma);
       gamma_cache = uu____5220;
       modules = (uu___126_5219.modules);
       expected_typ = (uu___126_5219.expected_typ);
       sigtab = uu____5223;
       is_pattern = (uu___126_5219.is_pattern);
       instantiate_imp = (uu___126_5219.instantiate_imp);
       effects = (uu___126_5219.effects);
       generalize = (uu___126_5219.generalize);
       letrecs = (uu___126_5219.letrecs);
       top_level = (uu___126_5219.top_level);
       check_uvars = (uu___126_5219.check_uvars);
       use_eq = (uu___126_5219.use_eq);
       is_iface = (uu___126_5219.is_iface);
       admit = (uu___126_5219.admit);
       lax = (uu___126_5219.lax);
       lax_universes = (uu___126_5219.lax_universes);
       failhard = (uu___126_5219.failhard);
       nosynth = (uu___126_5219.nosynth);
       type_of = (uu___126_5219.type_of);
       universe_of = (uu___126_5219.universe_of);
       use_bv_sorts = (uu___126_5219.use_bv_sorts);
       qname_and_index = (uu___126_5219.qname_and_index);
       proof_ns = (uu___126_5219.proof_ns);
       synth = (uu___126_5219.synth);
       is_native_tactic = (uu___126_5219.is_native_tactic);
       identifier_info = uu____5226
     })
let pop_stack: Prims.unit -> env =
  fun uu____5257  ->
    let uu____5258 = FStar_ST.op_Bang stack in
    match uu____5258 with
    | env::tl1 -> (FStar_ST.op_Colon_Equals stack tl1; env)
    | uu____5302 -> failwith "Impossible: Too many pops"
let cleanup_interactive: env -> Prims.unit = fun env  -> (env.solver).pop ""
let push: env -> Prims.string -> env =
  fun env  ->
    fun msg  -> push_query_indices (); (env.solver).push msg; push_stack env
let pop: env -> Prims.string -> env =
  fun env  ->
    fun msg  -> (env.solver).pop msg; pop_query_indices (); pop_stack ()
let incr_query_index: env -> env =
  fun env  ->
    let qix = peek_query_indices () in
    match env.qname_and_index with
    | FStar_Pervasives_Native.None  -> env
    | FStar_Pervasives_Native.Some (l,n1) ->
        let uu____5350 =
          FStar_All.pipe_right qix
            (FStar_List.tryFind
               (fun uu____5376  ->
                  match uu____5376 with
                  | (m,uu____5382) -> FStar_Ident.lid_equals l m)) in
        (match uu____5350 with
         | FStar_Pervasives_Native.None  ->
             let next = n1 + (Prims.parse_int "1") in
             (add_query_index (l, next);
              (let uu___127_5389 = env in
               {
                 solver = (uu___127_5389.solver);
                 range = (uu___127_5389.range);
                 curmodule = (uu___127_5389.curmodule);
                 gamma = (uu___127_5389.gamma);
                 gamma_cache = (uu___127_5389.gamma_cache);
                 modules = (uu___127_5389.modules);
                 expected_typ = (uu___127_5389.expected_typ);
                 sigtab = (uu___127_5389.sigtab);
                 is_pattern = (uu___127_5389.is_pattern);
                 instantiate_imp = (uu___127_5389.instantiate_imp);
                 effects = (uu___127_5389.effects);
                 generalize = (uu___127_5389.generalize);
                 letrecs = (uu___127_5389.letrecs);
                 top_level = (uu___127_5389.top_level);
                 check_uvars = (uu___127_5389.check_uvars);
                 use_eq = (uu___127_5389.use_eq);
                 is_iface = (uu___127_5389.is_iface);
                 admit = (uu___127_5389.admit);
                 lax = (uu___127_5389.lax);
                 lax_universes = (uu___127_5389.lax_universes);
                 failhard = (uu___127_5389.failhard);
                 nosynth = (uu___127_5389.nosynth);
                 type_of = (uu___127_5389.type_of);
                 universe_of = (uu___127_5389.universe_of);
                 use_bv_sorts = (uu___127_5389.use_bv_sorts);
                 qname_and_index = (FStar_Pervasives_Native.Some (l, next));
                 proof_ns = (uu___127_5389.proof_ns);
                 synth = (uu___127_5389.synth);
                 is_native_tactic = (uu___127_5389.is_native_tactic);
                 identifier_info = (uu___127_5389.identifier_info)
               }))
         | FStar_Pervasives_Native.Some (uu____5394,m) ->
             let next = m + (Prims.parse_int "1") in
             (add_query_index (l, next);
              (let uu___128_5402 = env in
               {
                 solver = (uu___128_5402.solver);
                 range = (uu___128_5402.range);
                 curmodule = (uu___128_5402.curmodule);
                 gamma = (uu___128_5402.gamma);
                 gamma_cache = (uu___128_5402.gamma_cache);
                 modules = (uu___128_5402.modules);
                 expected_typ = (uu___128_5402.expected_typ);
                 sigtab = (uu___128_5402.sigtab);
                 is_pattern = (uu___128_5402.is_pattern);
                 instantiate_imp = (uu___128_5402.instantiate_imp);
                 effects = (uu___128_5402.effects);
                 generalize = (uu___128_5402.generalize);
                 letrecs = (uu___128_5402.letrecs);
                 top_level = (uu___128_5402.top_level);
                 check_uvars = (uu___128_5402.check_uvars);
                 use_eq = (uu___128_5402.use_eq);
                 is_iface = (uu___128_5402.is_iface);
                 admit = (uu___128_5402.admit);
                 lax = (uu___128_5402.lax);
                 lax_universes = (uu___128_5402.lax_universes);
                 failhard = (uu___128_5402.failhard);
                 nosynth = (uu___128_5402.nosynth);
                 type_of = (uu___128_5402.type_of);
                 universe_of = (uu___128_5402.universe_of);
                 use_bv_sorts = (uu___128_5402.use_bv_sorts);
                 qname_and_index = (FStar_Pervasives_Native.Some (l, next));
                 proof_ns = (uu___128_5402.proof_ns);
                 synth = (uu___128_5402.synth);
                 is_native_tactic = (uu___128_5402.is_native_tactic);
                 identifier_info = (uu___128_5402.identifier_info)
               })))
let debug: env -> FStar_Options.debug_level_t -> Prims.bool =
  fun env  ->
    fun l  -> FStar_Options.debug_at_level (env.curmodule).FStar_Ident.str l
let set_range: env -> FStar_Range.range -> env =
  fun e  ->
    fun r  ->
      if r = FStar_Range.dummyRange
      then e
      else
        (let uu___129_5424 = e in
         {
           solver = (uu___129_5424.solver);
           range = r;
           curmodule = (uu___129_5424.curmodule);
           gamma = (uu___129_5424.gamma);
           gamma_cache = (uu___129_5424.gamma_cache);
           modules = (uu___129_5424.modules);
           expected_typ = (uu___129_5424.expected_typ);
           sigtab = (uu___129_5424.sigtab);
           is_pattern = (uu___129_5424.is_pattern);
           instantiate_imp = (uu___129_5424.instantiate_imp);
           effects = (uu___129_5424.effects);
           generalize = (uu___129_5424.generalize);
           letrecs = (uu___129_5424.letrecs);
           top_level = (uu___129_5424.top_level);
           check_uvars = (uu___129_5424.check_uvars);
           use_eq = (uu___129_5424.use_eq);
           is_iface = (uu___129_5424.is_iface);
           admit = (uu___129_5424.admit);
           lax = (uu___129_5424.lax);
           lax_universes = (uu___129_5424.lax_universes);
           failhard = (uu___129_5424.failhard);
           nosynth = (uu___129_5424.nosynth);
           type_of = (uu___129_5424.type_of);
           universe_of = (uu___129_5424.universe_of);
           use_bv_sorts = (uu___129_5424.use_bv_sorts);
           qname_and_index = (uu___129_5424.qname_and_index);
           proof_ns = (uu___129_5424.proof_ns);
           synth = (uu___129_5424.synth);
           is_native_tactic = (uu___129_5424.is_native_tactic);
           identifier_info = (uu___129_5424.identifier_info)
         })
let get_range: env -> FStar_Range.range = fun e  -> e.range
let toggle_id_info: env -> Prims.bool -> Prims.unit =
  fun env  ->
    fun enabled  ->
      let uu____5437 =
        let uu____5438 = FStar_ST.op_Bang env.identifier_info in
        FStar_TypeChecker_Common.id_info_toggle uu____5438 enabled in
      FStar_ST.op_Colon_Equals env.identifier_info uu____5437
let insert_bv_info:
  env -> FStar_Syntax_Syntax.bv -> FStar_Syntax_Syntax.typ -> Prims.unit =
  fun env  ->
    fun bv  ->
      fun ty  ->
        let uu____5471 =
          let uu____5472 = FStar_ST.op_Bang env.identifier_info in
          FStar_TypeChecker_Common.id_info_insert_bv uu____5472 bv ty in
        FStar_ST.op_Colon_Equals env.identifier_info uu____5471
let insert_fv_info:
  env -> FStar_Syntax_Syntax.fv -> FStar_Syntax_Syntax.typ -> Prims.unit =
  fun env  ->
    fun fv  ->
      fun ty  ->
        let uu____5505 =
          let uu____5506 = FStar_ST.op_Bang env.identifier_info in
          FStar_TypeChecker_Common.id_info_insert_fv uu____5506 fv ty in
        FStar_ST.op_Colon_Equals env.identifier_info uu____5505
let promote_id_info:
  env -> (FStar_Syntax_Syntax.typ -> FStar_Syntax_Syntax.typ) -> Prims.unit =
  fun env  ->
    fun ty_map  ->
      let uu____5540 =
        let uu____5541 = FStar_ST.op_Bang env.identifier_info in
        FStar_TypeChecker_Common.id_info_promote uu____5541 ty_map in
      FStar_ST.op_Colon_Equals env.identifier_info uu____5540
let modules: env -> FStar_Syntax_Syntax.modul Prims.list =
  fun env  -> env.modules
let current_module: env -> FStar_Ident.lident = fun env  -> env.curmodule
let set_current_module: env -> FStar_Ident.lident -> env =
  fun env  ->
    fun lid  ->
      let uu___130_5580 = env in
      {
        solver = (uu___130_5580.solver);
        range = (uu___130_5580.range);
        curmodule = lid;
        gamma = (uu___130_5580.gamma);
        gamma_cache = (uu___130_5580.gamma_cache);
        modules = (uu___130_5580.modules);
        expected_typ = (uu___130_5580.expected_typ);
        sigtab = (uu___130_5580.sigtab);
        is_pattern = (uu___130_5580.is_pattern);
        instantiate_imp = (uu___130_5580.instantiate_imp);
        effects = (uu___130_5580.effects);
        generalize = (uu___130_5580.generalize);
        letrecs = (uu___130_5580.letrecs);
        top_level = (uu___130_5580.top_level);
        check_uvars = (uu___130_5580.check_uvars);
        use_eq = (uu___130_5580.use_eq);
        is_iface = (uu___130_5580.is_iface);
        admit = (uu___130_5580.admit);
        lax = (uu___130_5580.lax);
        lax_universes = (uu___130_5580.lax_universes);
        failhard = (uu___130_5580.failhard);
        nosynth = (uu___130_5580.nosynth);
        type_of = (uu___130_5580.type_of);
        universe_of = (uu___130_5580.universe_of);
        use_bv_sorts = (uu___130_5580.use_bv_sorts);
        qname_and_index = (uu___130_5580.qname_and_index);
        proof_ns = (uu___130_5580.proof_ns);
        synth = (uu___130_5580.synth);
        is_native_tactic = (uu___130_5580.is_native_tactic);
        identifier_info = (uu___130_5580.identifier_info)
      }
let has_interface: env -> FStar_Ident.lident -> Prims.bool =
  fun env  ->
    fun l  ->
      FStar_All.pipe_right env.modules
        (FStar_Util.for_some
           (fun m  ->
              m.FStar_Syntax_Syntax.is_interface &&
                (FStar_Ident.lid_equals m.FStar_Syntax_Syntax.name l)))
let find_in_sigtab:
  env ->
    FStar_Ident.lident ->
      FStar_Syntax_Syntax.sigelt FStar_Pervasives_Native.option
  =
  fun env  ->
    fun lid  ->
      FStar_Util.smap_try_find (sigtab env) (FStar_Ident.text_of_lid lid)
let name_not_found: FStar_Ident.lid -> Prims.string =
  fun l  -> FStar_Util.format1 "Name \"%s\" not found" l.FStar_Ident.str
let variable_not_found: FStar_Syntax_Syntax.bv -> Prims.string =
  fun v1  ->
    let uu____5611 = FStar_Syntax_Print.bv_to_string v1 in
    FStar_Util.format1 "Variable \"%s\" not found" uu____5611
let new_u_univ: Prims.unit -> FStar_Syntax_Syntax.universe =
  fun uu____5615  ->
    let uu____5616 = FStar_Syntax_Unionfind.univ_fresh () in
    FStar_Syntax_Syntax.U_unif uu____5616
let inst_tscheme_with:
  FStar_Syntax_Syntax.tscheme ->
    FStar_Syntax_Syntax.universes ->
      (FStar_Syntax_Syntax.universes,FStar_Syntax_Syntax.term)
        FStar_Pervasives_Native.tuple2
  =
  fun ts  ->
    fun us  ->
      match (ts, us) with
      | (([],t),[]) -> ([], t)
      | ((formals,t),uu____5656) ->
          let n1 = (FStar_List.length formals) - (Prims.parse_int "1") in
          let vs =
            FStar_All.pipe_right us
              (FStar_List.mapi
                 (fun i  -> fun u  -> FStar_Syntax_Syntax.UN ((n1 - i), u))) in
          let uu____5680 = FStar_Syntax_Subst.subst vs t in (us, uu____5680)
let inst_tscheme:
  FStar_Syntax_Syntax.tscheme ->
    (FStar_Syntax_Syntax.universes,FStar_Syntax_Syntax.term)
      FStar_Pervasives_Native.tuple2
  =
  fun uu___113_5694  ->
    match uu___113_5694 with
    | ([],t) -> ([], t)
    | (us,t) ->
        let us' =
          FStar_All.pipe_right us
            (FStar_List.map (fun uu____5718  -> new_u_univ ())) in
        inst_tscheme_with (us, t) us'
let inst_tscheme_with_range:
  FStar_Range.range ->
    FStar_Syntax_Syntax.tscheme ->
      (FStar_Syntax_Syntax.universes,FStar_Syntax_Syntax.term)
        FStar_Pervasives_Native.tuple2
  =
  fun r  ->
    fun t  ->
      let uu____5733 = inst_tscheme t in
      match uu____5733 with
      | (us,t1) ->
          let uu____5744 = FStar_Syntax_Subst.set_use_range r t1 in
          (us, uu____5744)
let inst_effect_fun_with:
  FStar_Syntax_Syntax.universes ->
    env ->
      FStar_Syntax_Syntax.eff_decl ->
        FStar_Syntax_Syntax.tscheme -> FStar_Syntax_Syntax.term
  =
  fun insts  ->
    fun env  ->
      fun ed  ->
        fun uu____5760  ->
          match uu____5760 with
          | (us,t) ->
              (match ed.FStar_Syntax_Syntax.binders with
               | [] ->
                   let univs1 =
                     FStar_List.append ed.FStar_Syntax_Syntax.univs us in
                   (if
                      (FStar_List.length insts) <> (FStar_List.length univs1)
                    then
                      (let uu____5775 =
                         let uu____5776 =
                           FStar_All.pipe_left FStar_Util.string_of_int
                             (FStar_List.length univs1) in
                         let uu____5777 =
                           FStar_All.pipe_left FStar_Util.string_of_int
                             (FStar_List.length insts) in
                         let uu____5778 =
                           FStar_Syntax_Print.lid_to_string
                             ed.FStar_Syntax_Syntax.mname in
                         let uu____5779 = FStar_Syntax_Print.term_to_string t in
                         FStar_Util.format4
                           "Expected %s instantiations; got %s; failed universe instantiation in effect %s\n\t%s\n"
                           uu____5776 uu____5777 uu____5778 uu____5779 in
                       failwith uu____5775)
                    else ();
                    (let uu____5781 =
                       inst_tscheme_with
                         ((FStar_List.append ed.FStar_Syntax_Syntax.univs us),
                           t) insts in
                     FStar_Pervasives_Native.snd uu____5781))
               | uu____5788 ->
                   let uu____5789 =
                     let uu____5790 =
                       FStar_Syntax_Print.lid_to_string
                         ed.FStar_Syntax_Syntax.mname in
                     FStar_Util.format1
                       "Unexpected use of an uninstantiated effect: %s\n"
                       uu____5790 in
                   failwith uu____5789)
type tri =
  | Yes
  | No
  | Maybe[@@deriving show]
let uu___is_Yes: tri -> Prims.bool =
  fun projectee  -> match projectee with | Yes  -> true | uu____5795 -> false
let uu___is_No: tri -> Prims.bool =
  fun projectee  -> match projectee with | No  -> true | uu____5800 -> false
let uu___is_Maybe: tri -> Prims.bool =
  fun projectee  ->
    match projectee with | Maybe  -> true | uu____5805 -> false
let in_cur_mod: env -> FStar_Ident.lident -> tri =
  fun env  ->
    fun l  ->
      let cur = current_module env in
      if l.FStar_Ident.nsstr = cur.FStar_Ident.str
      then Yes
      else
        if FStar_Util.starts_with l.FStar_Ident.nsstr cur.FStar_Ident.str
        then
          (let lns = FStar_List.append l.FStar_Ident.ns [l.FStar_Ident.ident] in
           let cur1 =
             FStar_List.append cur.FStar_Ident.ns [cur.FStar_Ident.ident] in
           let rec aux c l1 =
             match (c, l1) with
             | ([],uu____5841) -> Maybe
             | (uu____5848,[]) -> No
             | (hd1::tl1,hd'::tl') when
                 hd1.FStar_Ident.idText = hd'.FStar_Ident.idText ->
                 aux tl1 tl'
             | uu____5867 -> No in
           aux cur1 lns)
        else No
let lookup_qname:
  env ->
    FStar_Ident.lident ->
      (((FStar_Syntax_Syntax.universes,FStar_Syntax_Syntax.typ)
          FStar_Pervasives_Native.tuple2,(FStar_Syntax_Syntax.sigelt,
                                           FStar_Syntax_Syntax.universes
                                             FStar_Pervasives_Native.option)
                                           FStar_Pervasives_Native.tuple2)
         FStar_Util.either,FStar_Range.range)
        FStar_Pervasives_Native.tuple2 FStar_Pervasives_Native.option
  =
  fun env  ->
    fun lid  ->
      let cur_mod = in_cur_mod env lid in
      let cache t =
        FStar_Util.smap_add (gamma_cache env) lid.FStar_Ident.str t;
        FStar_Pervasives_Native.Some t in
      let found =
        if cur_mod <> No
        then
          let uu____5974 =
            FStar_Util.smap_try_find (gamma_cache env) lid.FStar_Ident.str in
          match uu____5974 with
          | FStar_Pervasives_Native.None  ->
              FStar_Util.find_map env.gamma
                (fun uu___114_6019  ->
                   match uu___114_6019 with
                   | Binding_lid (l,t) ->
                       if FStar_Ident.lid_equals lid l
                       then
                         let uu____6062 =
                           let uu____6081 =
                             let uu____6096 = inst_tscheme t in
                             FStar_Util.Inl uu____6096 in
                           (uu____6081, (FStar_Ident.range_of_lid l)) in
                         FStar_Pervasives_Native.Some uu____6062
                       else FStar_Pervasives_Native.None
                   | Binding_sig
                       (uu____6162,{
                                     FStar_Syntax_Syntax.sigel =
                                       FStar_Syntax_Syntax.Sig_bundle
                                       (ses,uu____6164);
                                     FStar_Syntax_Syntax.sigrng = uu____6165;
                                     FStar_Syntax_Syntax.sigquals =
                                       uu____6166;
                                     FStar_Syntax_Syntax.sigmeta = uu____6167;
                                     FStar_Syntax_Syntax.sigattrs =
                                       uu____6168;_})
                       ->
                       FStar_Util.find_map ses
                         (fun se  ->
                            let uu____6188 =
                              FStar_All.pipe_right
                                (FStar_Syntax_Util.lids_of_sigelt se)
                                (FStar_Util.for_some
                                   (FStar_Ident.lid_equals lid)) in
                            if uu____6188
                            then
                              cache
                                ((FStar_Util.Inr
                                    (se, FStar_Pervasives_Native.None)),
                                  (FStar_Syntax_Util.range_of_sigelt se))
                            else FStar_Pervasives_Native.None)
                   | Binding_sig (lids,s) ->
                       let maybe_cache t =
                         match s.FStar_Syntax_Syntax.sigel with
                         | FStar_Syntax_Syntax.Sig_declare_typ uu____6234 ->
                             FStar_Pervasives_Native.Some t
                         | uu____6241 -> cache t in
                       let uu____6242 =
                         FStar_List.tryFind (FStar_Ident.lid_equals lid) lids in
                       (match uu____6242 with
                        | FStar_Pervasives_Native.None  ->
                            FStar_Pervasives_Native.None
                        | FStar_Pervasives_Native.Some l ->
                            maybe_cache
                              ((FStar_Util.Inr
                                  (s, FStar_Pervasives_Native.None)),
                                (FStar_Ident.range_of_lid l)))
                   | Binding_sig_inst (lids,s,us) ->
                       let uu____6317 =
                         FStar_List.tryFind (FStar_Ident.lid_equals lid) lids in
                       (match uu____6317 with
                        | FStar_Pervasives_Native.None  ->
                            FStar_Pervasives_Native.None
                        | FStar_Pervasives_Native.Some l ->
                            FStar_Pervasives_Native.Some
                              ((FStar_Util.Inr
                                  (s, (FStar_Pervasives_Native.Some us))),
                                (FStar_Ident.range_of_lid l)))
                   | uu____6403 -> FStar_Pervasives_Native.None)
          | se -> se
        else FStar_Pervasives_Native.None in
      if FStar_Util.is_some found
      then found
      else
        (let uu____6483 = find_in_sigtab env lid in
         match uu____6483 with
         | FStar_Pervasives_Native.Some se ->
             FStar_Pervasives_Native.Some
               ((FStar_Util.Inr (se, FStar_Pervasives_Native.None)),
                 (FStar_Syntax_Util.range_of_sigelt se))
         | FStar_Pervasives_Native.None  -> FStar_Pervasives_Native.None)
let rec add_sigelt: env -> FStar_Syntax_Syntax.sigelt -> Prims.unit =
  fun env  ->
    fun se  ->
      match se.FStar_Syntax_Syntax.sigel with
      | FStar_Syntax_Syntax.Sig_bundle (ses,uu____6582) ->
          add_sigelts env ses
      | uu____6591 ->
          let lids = FStar_Syntax_Util.lids_of_sigelt se in
          (FStar_List.iter
             (fun l  -> FStar_Util.smap_add (sigtab env) l.FStar_Ident.str se)
             lids;
           (match se.FStar_Syntax_Syntax.sigel with
            | FStar_Syntax_Syntax.Sig_new_effect ne ->
                FStar_All.pipe_right ne.FStar_Syntax_Syntax.actions
                  (FStar_List.iter
                     (fun a  ->
                        let se_let =
                          FStar_Syntax_Util.action_as_lb
                            ne.FStar_Syntax_Syntax.mname a in
                        FStar_Util.smap_add (sigtab env)
                          (a.FStar_Syntax_Syntax.action_name).FStar_Ident.str
                          se_let))
            | uu____6605 -> ()))
and add_sigelts: env -> FStar_Syntax_Syntax.sigelt Prims.list -> Prims.unit =
  fun env  ->
    fun ses  -> FStar_All.pipe_right ses (FStar_List.iter (add_sigelt env))
let try_lookup_bv:
  env ->
    FStar_Syntax_Syntax.bv ->
      (FStar_Syntax_Syntax.typ,FStar_Range.range)
        FStar_Pervasives_Native.tuple2 FStar_Pervasives_Native.option
  =
  fun env  ->
    fun bv  ->
      FStar_Util.find_map env.gamma
        (fun uu___115_6634  ->
           match uu___115_6634 with
           | Binding_var id when FStar_Syntax_Syntax.bv_eq id bv ->
               FStar_Pervasives_Native.Some
                 ((id.FStar_Syntax_Syntax.sort),
                   ((id.FStar_Syntax_Syntax.ppname).FStar_Ident.idRange))
           | uu____6652 -> FStar_Pervasives_Native.None)
let lookup_type_of_let:
  FStar_Syntax_Syntax.sigelt ->
    FStar_Ident.lident ->
      ((FStar_Syntax_Syntax.universes,FStar_Syntax_Syntax.term)
         FStar_Pervasives_Native.tuple2,FStar_Range.range)
        FStar_Pervasives_Native.tuple2 FStar_Pervasives_Native.option
  =
  fun se  ->
    fun lid  ->
      match se.FStar_Syntax_Syntax.sigel with
      | FStar_Syntax_Syntax.Sig_let ((uu____6687,lb::[]),uu____6689) ->
          let uu____6702 =
            let uu____6711 =
              inst_tscheme
                ((lb.FStar_Syntax_Syntax.lbunivs),
                  (lb.FStar_Syntax_Syntax.lbtyp)) in
            let uu____6720 =
              FStar_Syntax_Syntax.range_of_lbname
                lb.FStar_Syntax_Syntax.lbname in
            (uu____6711, uu____6720) in
          FStar_Pervasives_Native.Some uu____6702
      | FStar_Syntax_Syntax.Sig_let ((uu____6733,lbs),uu____6735) ->
          FStar_Util.find_map lbs
            (fun lb  ->
               match lb.FStar_Syntax_Syntax.lbname with
               | FStar_Util.Inl uu____6771 -> failwith "impossible"
               | FStar_Util.Inr fv ->
                   let uu____6783 = FStar_Syntax_Syntax.fv_eq_lid fv lid in
                   if uu____6783
                   then
                     let uu____6794 =
                       let uu____6803 =
                         inst_tscheme
                           ((lb.FStar_Syntax_Syntax.lbunivs),
                             (lb.FStar_Syntax_Syntax.lbtyp)) in
                       let uu____6812 = FStar_Syntax_Syntax.range_of_fv fv in
                       (uu____6803, uu____6812) in
                     FStar_Pervasives_Native.Some uu____6794
                   else FStar_Pervasives_Native.None)
      | uu____6834 -> FStar_Pervasives_Native.None
let effect_signature:
  FStar_Syntax_Syntax.sigelt ->
    ((FStar_Syntax_Syntax.universes,FStar_Syntax_Syntax.term)
       FStar_Pervasives_Native.tuple2,FStar_Range.range)
      FStar_Pervasives_Native.tuple2 FStar_Pervasives_Native.option
  =
  fun se  ->
    match se.FStar_Syntax_Syntax.sigel with
    | FStar_Syntax_Syntax.Sig_new_effect ne ->
        let uu____6868 =
          let uu____6877 =
            let uu____6882 =
              let uu____6883 =
                let uu____6886 =
                  FStar_Syntax_Syntax.mk_Total
                    ne.FStar_Syntax_Syntax.signature in
                FStar_Syntax_Util.arrow ne.FStar_Syntax_Syntax.binders
                  uu____6886 in
              ((ne.FStar_Syntax_Syntax.univs), uu____6883) in
            inst_tscheme uu____6882 in
          (uu____6877, (se.FStar_Syntax_Syntax.sigrng)) in
        FStar_Pervasives_Native.Some uu____6868
    | FStar_Syntax_Syntax.Sig_effect_abbrev
        (lid,us,binders,uu____6906,uu____6907) ->
        let uu____6912 =
          let uu____6921 =
            let uu____6926 =
              let uu____6927 =
                let uu____6930 =
                  FStar_Syntax_Syntax.mk_Total FStar_Syntax_Syntax.teff in
                FStar_Syntax_Util.arrow binders uu____6930 in
              (us, uu____6927) in
            inst_tscheme uu____6926 in
          (uu____6921, (se.FStar_Syntax_Syntax.sigrng)) in
        FStar_Pervasives_Native.Some uu____6912
    | uu____6947 -> FStar_Pervasives_Native.None
let try_lookup_lid_aux:
  env ->
    FStar_Ident.lident ->
      ((FStar_Syntax_Syntax.universes,FStar_Syntax_Syntax.term'
                                        FStar_Syntax_Syntax.syntax)
         FStar_Pervasives_Native.tuple2,FStar_Range.range)
        FStar_Pervasives_Native.tuple2 FStar_Pervasives_Native.option
  =
  fun env  ->
    fun lid  ->
      let mapper uu____7007 =
        match uu____7007 with
        | (lr,rng) ->
            (match lr with
             | FStar_Util.Inl t -> FStar_Pervasives_Native.Some (t, rng)
             | FStar_Util.Inr
                 ({
                    FStar_Syntax_Syntax.sigel =
                      FStar_Syntax_Syntax.Sig_datacon
                      (uu____7103,uvs,t,uu____7106,uu____7107,uu____7108);
                    FStar_Syntax_Syntax.sigrng = uu____7109;
                    FStar_Syntax_Syntax.sigquals = uu____7110;
                    FStar_Syntax_Syntax.sigmeta = uu____7111;
                    FStar_Syntax_Syntax.sigattrs = uu____7112;_},FStar_Pervasives_Native.None
                  )
                 ->
                 let uu____7133 =
                   let uu____7142 = inst_tscheme (uvs, t) in
                   (uu____7142, rng) in
                 FStar_Pervasives_Native.Some uu____7133
             | FStar_Util.Inr
                 ({
                    FStar_Syntax_Syntax.sigel =
                      FStar_Syntax_Syntax.Sig_declare_typ (l,uvs,t);
                    FStar_Syntax_Syntax.sigrng = uu____7162;
                    FStar_Syntax_Syntax.sigquals = qs;
                    FStar_Syntax_Syntax.sigmeta = uu____7164;
                    FStar_Syntax_Syntax.sigattrs = uu____7165;_},FStar_Pervasives_Native.None
                  )
                 ->
                 let uu____7182 =
                   let uu____7183 = in_cur_mod env l in uu____7183 = Yes in
                 if uu____7182
                 then
                   let uu____7194 =
                     (FStar_All.pipe_right qs
                        (FStar_List.contains FStar_Syntax_Syntax.Assumption))
                       || env.is_iface in
                   (if uu____7194
                    then
                      let uu____7207 =
                        let uu____7216 = inst_tscheme (uvs, t) in
                        (uu____7216, rng) in
                      FStar_Pervasives_Native.Some uu____7207
                    else FStar_Pervasives_Native.None)
                 else
                   (let uu____7243 =
                      let uu____7252 = inst_tscheme (uvs, t) in
                      (uu____7252, rng) in
                    FStar_Pervasives_Native.Some uu____7243)
             | FStar_Util.Inr
                 ({
                    FStar_Syntax_Syntax.sigel =
                      FStar_Syntax_Syntax.Sig_inductive_typ
                      (lid1,uvs,tps,k,uu____7273,uu____7274);
                    FStar_Syntax_Syntax.sigrng = uu____7275;
                    FStar_Syntax_Syntax.sigquals = uu____7276;
                    FStar_Syntax_Syntax.sigmeta = uu____7277;
                    FStar_Syntax_Syntax.sigattrs = uu____7278;_},FStar_Pervasives_Native.None
                  )
                 ->
                 (match tps with
                  | [] ->
                      let uu____7317 =
                        let uu____7326 = inst_tscheme (uvs, k) in
                        (uu____7326, rng) in
                      FStar_Pervasives_Native.Some uu____7317
                  | uu____7343 ->
                      let uu____7344 =
                        let uu____7353 =
                          let uu____7358 =
                            let uu____7359 =
                              let uu____7362 = FStar_Syntax_Syntax.mk_Total k in
                              FStar_Syntax_Util.flat_arrow tps uu____7362 in
                            (uvs, uu____7359) in
                          inst_tscheme uu____7358 in
                        (uu____7353, rng) in
                      FStar_Pervasives_Native.Some uu____7344)
             | FStar_Util.Inr
                 ({
                    FStar_Syntax_Syntax.sigel =
                      FStar_Syntax_Syntax.Sig_inductive_typ
                      (lid1,uvs,tps,k,uu____7383,uu____7384);
                    FStar_Syntax_Syntax.sigrng = uu____7385;
                    FStar_Syntax_Syntax.sigquals = uu____7386;
                    FStar_Syntax_Syntax.sigmeta = uu____7387;
                    FStar_Syntax_Syntax.sigattrs = uu____7388;_},FStar_Pervasives_Native.Some
                  us)
                 ->
                 (match tps with
                  | [] ->
                      let uu____7428 =
                        let uu____7437 = inst_tscheme_with (uvs, k) us in
                        (uu____7437, rng) in
                      FStar_Pervasives_Native.Some uu____7428
                  | uu____7454 ->
                      let uu____7455 =
                        let uu____7464 =
                          let uu____7469 =
                            let uu____7470 =
                              let uu____7473 = FStar_Syntax_Syntax.mk_Total k in
                              FStar_Syntax_Util.flat_arrow tps uu____7473 in
                            (uvs, uu____7470) in
                          inst_tscheme_with uu____7469 us in
                        (uu____7464, rng) in
                      FStar_Pervasives_Native.Some uu____7455)
             | FStar_Util.Inr se ->
                 let uu____7507 =
                   match se with
                   | ({
                        FStar_Syntax_Syntax.sigel =
                          FStar_Syntax_Syntax.Sig_let uu____7528;
                        FStar_Syntax_Syntax.sigrng = uu____7529;
                        FStar_Syntax_Syntax.sigquals = uu____7530;
                        FStar_Syntax_Syntax.sigmeta = uu____7531;
                        FStar_Syntax_Syntax.sigattrs = uu____7532;_},FStar_Pervasives_Native.None
                      ) ->
                       lookup_type_of_let (FStar_Pervasives_Native.fst se)
                         lid
                   | uu____7547 ->
                       effect_signature (FStar_Pervasives_Native.fst se) in
                 FStar_All.pipe_right uu____7507
                   (FStar_Util.map_option
                      (fun uu____7595  ->
                         match uu____7595 with | (us_t,rng1) -> (us_t, rng1)))) in
      let uu____7626 =
        let uu____7637 = lookup_qname env lid in
        FStar_Util.bind_opt uu____7637 mapper in
      match uu____7626 with
      | FStar_Pervasives_Native.Some ((us,t),r) ->
          FStar_Pervasives_Native.Some
            ((us,
               (let uu___131_7730 = t in
                {
                  FStar_Syntax_Syntax.n =
                    (uu___131_7730.FStar_Syntax_Syntax.n);
                  FStar_Syntax_Syntax.pos = (FStar_Ident.range_of_lid lid);
                  FStar_Syntax_Syntax.vars =
                    (uu___131_7730.FStar_Syntax_Syntax.vars)
                })), r)
      | FStar_Pervasives_Native.None  -> FStar_Pervasives_Native.None
let lid_exists: env -> FStar_Ident.lident -> Prims.bool =
  fun env  ->
    fun l  ->
      let uu____7757 = lookup_qname env l in
      match uu____7757 with
      | FStar_Pervasives_Native.None  -> false
      | FStar_Pervasives_Native.Some uu____7796 -> true
let lookup_bv:
  env ->
    FStar_Syntax_Syntax.bv ->
      (FStar_Syntax_Syntax.typ,FStar_Range.range)
        FStar_Pervasives_Native.tuple2
  =
  fun env  ->
    fun bv  ->
      let bvr = FStar_Syntax_Syntax.range_of_bv bv in
      let uu____7846 = try_lookup_bv env bv in
      match uu____7846 with
      | FStar_Pervasives_Native.None  ->
          let uu____7861 =
            let uu____7862 =
              let uu____7867 = variable_not_found bv in (uu____7867, bvr) in
            FStar_Errors.Error uu____7862 in
          FStar_Exn.raise uu____7861
      | FStar_Pervasives_Native.Some (t,r) ->
          let uu____7878 = FStar_Syntax_Subst.set_use_range bvr t in
          let uu____7879 = FStar_Range.set_use_range r bvr in
          (uu____7878, uu____7879)
let try_lookup_lid:
  env ->
    FStar_Ident.lident ->
      ((FStar_Syntax_Syntax.universes,FStar_Syntax_Syntax.typ)
         FStar_Pervasives_Native.tuple2,FStar_Range.range)
        FStar_Pervasives_Native.tuple2 FStar_Pervasives_Native.option
  =
  fun env  ->
    fun l  ->
      let uu____7898 = try_lookup_lid_aux env l in
      match uu____7898 with
      | FStar_Pervasives_Native.None  -> FStar_Pervasives_Native.None
      | FStar_Pervasives_Native.Some ((us,t),r) ->
          let use_range = FStar_Ident.range_of_lid l in
          let r1 = FStar_Range.set_use_range r use_range in
          let uu____7964 =
            let uu____7973 =
              let uu____7978 = FStar_Syntax_Subst.set_use_range use_range t in
              (us, uu____7978) in
            (uu____7973, r1) in
          FStar_Pervasives_Native.Some uu____7964
let lookup_lid:
  env ->
    FStar_Ident.lident ->
      ((FStar_Syntax_Syntax.universes,FStar_Syntax_Syntax.typ)
         FStar_Pervasives_Native.tuple2,FStar_Range.range)
        FStar_Pervasives_Native.tuple2
  =
  fun env  ->
    fun l  ->
      let uu____8007 = try_lookup_lid env l in
      match uu____8007 with
      | FStar_Pervasives_Native.None  ->
          let uu____8034 =
            let uu____8035 =
              let uu____8040 = name_not_found l in
              (uu____8040, (FStar_Ident.range_of_lid l)) in
            FStar_Errors.Error uu____8035 in
          FStar_Exn.raise uu____8034
      | FStar_Pervasives_Native.Some v1 -> v1
let lookup_univ: env -> FStar_Syntax_Syntax.univ_name -> Prims.bool =
  fun env  ->
    fun x  ->
      FStar_All.pipe_right
        (FStar_List.find
           (fun uu___116_8078  ->
              match uu___116_8078 with
              | Binding_univ y -> x.FStar_Ident.idText = y.FStar_Ident.idText
              | uu____8080 -> false) env.gamma) FStar_Option.isSome
let try_lookup_val_decl:
  env ->
    FStar_Ident.lident ->
      (FStar_Syntax_Syntax.tscheme,FStar_Syntax_Syntax.qualifier Prims.list)
        FStar_Pervasives_Native.tuple2 FStar_Pervasives_Native.option
  =
  fun env  ->
    fun lid  ->
      let uu____8097 = lookup_qname env lid in
      match uu____8097 with
      | FStar_Pervasives_Native.Some
          (FStar_Util.Inr
           ({
              FStar_Syntax_Syntax.sigel = FStar_Syntax_Syntax.Sig_declare_typ
                (uu____8126,uvs,t);
              FStar_Syntax_Syntax.sigrng = uu____8129;
              FStar_Syntax_Syntax.sigquals = q;
              FStar_Syntax_Syntax.sigmeta = uu____8131;
              FStar_Syntax_Syntax.sigattrs = uu____8132;_},FStar_Pervasives_Native.None
            ),uu____8133)
          ->
          let uu____8182 =
            let uu____8193 =
              let uu____8198 =
                FStar_Syntax_Subst.set_use_range
                  (FStar_Ident.range_of_lid lid) t in
              (uvs, uu____8198) in
            (uu____8193, q) in
          FStar_Pervasives_Native.Some uu____8182
      | uu____8215 -> FStar_Pervasives_Native.None
let lookup_val_decl:
  env ->
    FStar_Ident.lident ->
      (FStar_Syntax_Syntax.universes,FStar_Syntax_Syntax.typ)
        FStar_Pervasives_Native.tuple2
  =
  fun env  ->
    fun lid  ->
      let uu____8254 = lookup_qname env lid in
      match uu____8254 with
      | FStar_Pervasives_Native.Some
          (FStar_Util.Inr
           ({
              FStar_Syntax_Syntax.sigel = FStar_Syntax_Syntax.Sig_declare_typ
                (uu____8279,uvs,t);
              FStar_Syntax_Syntax.sigrng = uu____8282;
              FStar_Syntax_Syntax.sigquals = uu____8283;
              FStar_Syntax_Syntax.sigmeta = uu____8284;
              FStar_Syntax_Syntax.sigattrs = uu____8285;_},FStar_Pervasives_Native.None
            ),uu____8286)
          -> inst_tscheme_with_range (FStar_Ident.range_of_lid lid) (uvs, t)
      | uu____8335 ->
          let uu____8356 =
            let uu____8357 =
              let uu____8362 = name_not_found lid in
              (uu____8362, (FStar_Ident.range_of_lid lid)) in
            FStar_Errors.Error uu____8357 in
          FStar_Exn.raise uu____8356
let lookup_datacon:
  env ->
    FStar_Ident.lident ->
      (FStar_Syntax_Syntax.universes,FStar_Syntax_Syntax.typ)
        FStar_Pervasives_Native.tuple2
  =
  fun env  ->
    fun lid  ->
      let uu____8379 = lookup_qname env lid in
      match uu____8379 with
      | FStar_Pervasives_Native.Some
          (FStar_Util.Inr
           ({
              FStar_Syntax_Syntax.sigel = FStar_Syntax_Syntax.Sig_datacon
                (uu____8404,uvs,t,uu____8407,uu____8408,uu____8409);
              FStar_Syntax_Syntax.sigrng = uu____8410;
              FStar_Syntax_Syntax.sigquals = uu____8411;
              FStar_Syntax_Syntax.sigmeta = uu____8412;
              FStar_Syntax_Syntax.sigattrs = uu____8413;_},FStar_Pervasives_Native.None
            ),uu____8414)
          -> inst_tscheme_with_range (FStar_Ident.range_of_lid lid) (uvs, t)
      | uu____8467 ->
          let uu____8488 =
            let uu____8489 =
              let uu____8494 = name_not_found lid in
              (uu____8494, (FStar_Ident.range_of_lid lid)) in
            FStar_Errors.Error uu____8489 in
          FStar_Exn.raise uu____8488
let datacons_of_typ:
  env ->
    FStar_Ident.lident ->
      (Prims.bool,FStar_Ident.lident Prims.list)
        FStar_Pervasives_Native.tuple2
  =
  fun env  ->
    fun lid  ->
      let uu____8513 = lookup_qname env lid in
      match uu____8513 with
      | FStar_Pervasives_Native.Some
          (FStar_Util.Inr
           ({
              FStar_Syntax_Syntax.sigel =
                FStar_Syntax_Syntax.Sig_inductive_typ
                (uu____8540,uu____8541,uu____8542,uu____8543,uu____8544,dcs);
              FStar_Syntax_Syntax.sigrng = uu____8546;
              FStar_Syntax_Syntax.sigquals = uu____8547;
              FStar_Syntax_Syntax.sigmeta = uu____8548;
              FStar_Syntax_Syntax.sigattrs = uu____8549;_},uu____8550),uu____8551)
          -> (true, dcs)
      | uu____8612 -> (false, [])
let typ_of_datacon: env -> FStar_Ident.lident -> FStar_Ident.lident =
  fun env  ->
    fun lid  ->
      let uu____8643 = lookup_qname env lid in
      match uu____8643 with
      | FStar_Pervasives_Native.Some
          (FStar_Util.Inr
           ({
              FStar_Syntax_Syntax.sigel = FStar_Syntax_Syntax.Sig_datacon
                (uu____8664,uu____8665,uu____8666,l,uu____8668,uu____8669);
              FStar_Syntax_Syntax.sigrng = uu____8670;
              FStar_Syntax_Syntax.sigquals = uu____8671;
              FStar_Syntax_Syntax.sigmeta = uu____8672;
              FStar_Syntax_Syntax.sigattrs = uu____8673;_},uu____8674),uu____8675)
          -> l
      | uu____8730 ->
          let uu____8751 =
            let uu____8752 = FStar_Syntax_Print.lid_to_string lid in
            FStar_Util.format1 "Not a datacon: %s" uu____8752 in
          failwith uu____8751
let lookup_definition:
  delta_level Prims.list ->
    env ->
      FStar_Ident.lident ->
        (FStar_Syntax_Syntax.univ_names,FStar_Syntax_Syntax.term)
          FStar_Pervasives_Native.tuple2 FStar_Pervasives_Native.option
  =
  fun delta_levels  ->
    fun env  ->
      fun lid  ->
        let visible quals =
          FStar_All.pipe_right delta_levels
            (FStar_Util.for_some
               (fun dl  ->
                  FStar_All.pipe_right quals
                    (FStar_Util.for_some (visible_at dl)))) in
        let uu____8789 = lookup_qname env lid in
        match uu____8789 with
        | FStar_Pervasives_Native.Some
            (FStar_Util.Inr (se,FStar_Pervasives_Native.None ),uu____8817) ->
            (match se.FStar_Syntax_Syntax.sigel with
             | FStar_Syntax_Syntax.Sig_let ((uu____8868,lbs),uu____8870) when
                 visible se.FStar_Syntax_Syntax.sigquals ->
                 FStar_Util.find_map lbs
                   (fun lb  ->
                      let fv = FStar_Util.right lb.FStar_Syntax_Syntax.lbname in
                      let uu____8898 = FStar_Syntax_Syntax.fv_eq_lid fv lid in
                      if uu____8898
                      then
                        FStar_Pervasives_Native.Some
                          ((lb.FStar_Syntax_Syntax.lbunivs),
                            (lb.FStar_Syntax_Syntax.lbdef))
                      else FStar_Pervasives_Native.None)
             | uu____8930 -> FStar_Pervasives_Native.None)
        | uu____8935 -> FStar_Pervasives_Native.None
let try_lookup_effect_lid:
  env ->
    FStar_Ident.lident ->
      FStar_Syntax_Syntax.term FStar_Pervasives_Native.option
  =
  fun env  ->
    fun ftv  ->
      let uu____8972 = lookup_qname env ftv in
      match uu____8972 with
      | FStar_Pervasives_Native.Some
          (FStar_Util.Inr (se,FStar_Pervasives_Native.None ),uu____8996) ->
          let uu____9041 = effect_signature se in
          (match uu____9041 with
           | FStar_Pervasives_Native.None  -> FStar_Pervasives_Native.None
           | FStar_Pervasives_Native.Some ((uu____9062,t),r) ->
               let uu____9077 =
                 FStar_Syntax_Subst.set_use_range
                   (FStar_Ident.range_of_lid ftv) t in
               FStar_Pervasives_Native.Some uu____9077)
      | uu____9078 -> FStar_Pervasives_Native.None
let lookup_effect_lid: env -> FStar_Ident.lident -> FStar_Syntax_Syntax.term
  =
  fun env  ->
    fun ftv  ->
      let uu____9107 = try_lookup_effect_lid env ftv in
      match uu____9107 with
      | FStar_Pervasives_Native.None  ->
          let uu____9110 =
            let uu____9111 =
              let uu____9116 = name_not_found ftv in
              (uu____9116, (FStar_Ident.range_of_lid ftv)) in
            FStar_Errors.Error uu____9111 in
          FStar_Exn.raise uu____9110
      | FStar_Pervasives_Native.Some k -> k
let lookup_effect_abbrev:
  env ->
    FStar_Syntax_Syntax.universes ->
      FStar_Ident.lident ->
        (FStar_Syntax_Syntax.binders,FStar_Syntax_Syntax.comp)
          FStar_Pervasives_Native.tuple2 FStar_Pervasives_Native.option
  =
  fun env  ->
    fun univ_insts  ->
      fun lid0  ->
        let uu____9136 = lookup_qname env lid0 in
        match uu____9136 with
        | FStar_Pervasives_Native.Some
            (FStar_Util.Inr
             ({
                FStar_Syntax_Syntax.sigel =
                  FStar_Syntax_Syntax.Sig_effect_abbrev
                  (lid,univs1,binders,c,uu____9167);
                FStar_Syntax_Syntax.sigrng = uu____9168;
                FStar_Syntax_Syntax.sigquals = quals;
                FStar_Syntax_Syntax.sigmeta = uu____9170;
                FStar_Syntax_Syntax.sigattrs = uu____9171;_},FStar_Pervasives_Native.None
              ),uu____9172)
            ->
            let lid1 =
              let uu____9226 =
                FStar_Range.set_use_range (FStar_Ident.range_of_lid lid)
                  (FStar_Ident.range_of_lid lid0) in
              FStar_Ident.set_lid_range lid uu____9226 in
            let uu____9227 =
              FStar_All.pipe_right quals
                (FStar_Util.for_some
                   (fun uu___117_9231  ->
                      match uu___117_9231 with
                      | FStar_Syntax_Syntax.Irreducible  -> true
                      | uu____9232 -> false)) in
            if uu____9227
            then FStar_Pervasives_Native.None
            else
              (let insts =
                 if
                   (FStar_List.length univ_insts) =
                     (FStar_List.length univs1)
                 then univ_insts
                 else
                   (let uu____9246 =
                      let uu____9247 =
                        let uu____9248 = get_range env in
                        FStar_Range.string_of_range uu____9248 in
                      let uu____9249 = FStar_Syntax_Print.lid_to_string lid1 in
                      let uu____9250 =
                        FStar_All.pipe_right (FStar_List.length univ_insts)
                          FStar_Util.string_of_int in
                      FStar_Util.format3
                        "(%s) Unexpected instantiation of effect %s with %s universes"
                        uu____9247 uu____9249 uu____9250 in
                    failwith uu____9246) in
               match (binders, univs1) with
               | ([],uu____9257) ->
                   failwith
                     "Unexpected effect abbreviation with no arguments"
               | (uu____9274,uu____9275::uu____9276::uu____9277) ->
                   let uu____9282 =
                     let uu____9283 = FStar_Syntax_Print.lid_to_string lid1 in
                     let uu____9284 =
                       FStar_All.pipe_left FStar_Util.string_of_int
                         (FStar_List.length univs1) in
                     FStar_Util.format2
                       "Unexpected effect abbreviation %s; polymorphic in %s universes"
                       uu____9283 uu____9284 in
                   failwith uu____9282
               | uu____9291 ->
                   let uu____9296 =
                     let uu____9301 =
                       let uu____9302 = FStar_Syntax_Util.arrow binders c in
                       (univs1, uu____9302) in
                     inst_tscheme_with uu____9301 insts in
                   (match uu____9296 with
                    | (uu____9313,t) ->
                        let t1 =
                          FStar_Syntax_Subst.set_use_range
                            (FStar_Ident.range_of_lid lid1) t in
                        let uu____9316 =
                          let uu____9317 = FStar_Syntax_Subst.compress t1 in
                          uu____9317.FStar_Syntax_Syntax.n in
                        (match uu____9316 with
                         | FStar_Syntax_Syntax.Tm_arrow (binders1,c1) ->
                             FStar_Pervasives_Native.Some (binders1, c1)
                         | uu____9364 -> failwith "Impossible")))
        | uu____9371 -> FStar_Pervasives_Native.None
let norm_eff_name: env -> FStar_Ident.lident -> FStar_Ident.lident =
  let cache = FStar_Util.smap_create (Prims.parse_int "20") in
  fun env  ->
    fun l  ->
      let rec find1 l1 =
        let uu____9413 =
          lookup_effect_abbrev env [FStar_Syntax_Syntax.U_unknown] l1 in
        match uu____9413 with
        | FStar_Pervasives_Native.None  -> FStar_Pervasives_Native.None
        | FStar_Pervasives_Native.Some (uu____9426,c) ->
            let l2 = FStar_Syntax_Util.comp_effect_name c in
            let uu____9433 = find1 l2 in
            (match uu____9433 with
             | FStar_Pervasives_Native.None  ->
                 FStar_Pervasives_Native.Some l2
             | FStar_Pervasives_Native.Some l' ->
                 FStar_Pervasives_Native.Some l') in
      let res =
        let uu____9440 = FStar_Util.smap_try_find cache l.FStar_Ident.str in
        match uu____9440 with
        | FStar_Pervasives_Native.Some l1 -> l1
        | FStar_Pervasives_Native.None  ->
            let uu____9444 = find1 l in
            (match uu____9444 with
             | FStar_Pervasives_Native.None  -> l
             | FStar_Pervasives_Native.Some m ->
                 (FStar_Util.smap_add cache l.FStar_Ident.str m; m)) in
      FStar_Ident.set_lid_range res (FStar_Ident.range_of_lid l)
let lookup_effect_quals:
  env -> FStar_Ident.lident -> FStar_Syntax_Syntax.qualifier Prims.list =
  fun env  ->
    fun l  ->
      let l1 = norm_eff_name env l in
      let uu____9460 = lookup_qname env l1 in
      match uu____9460 with
      | FStar_Pervasives_Native.Some
          (FStar_Util.Inr
           ({
              FStar_Syntax_Syntax.sigel = FStar_Syntax_Syntax.Sig_new_effect
                uu____9483;
              FStar_Syntax_Syntax.sigrng = uu____9484;
              FStar_Syntax_Syntax.sigquals = q;
              FStar_Syntax_Syntax.sigmeta = uu____9486;
              FStar_Syntax_Syntax.sigattrs = uu____9487;_},uu____9488),uu____9489)
          -> q
      | uu____9540 -> []
let lookup_projector:
  env -> FStar_Ident.lident -> Prims.int -> FStar_Ident.lident =
  fun env  ->
    fun lid  ->
      fun i  ->
        let fail uu____9576 =
          let uu____9577 =
            let uu____9578 = FStar_Util.string_of_int i in
            let uu____9579 = FStar_Syntax_Print.lid_to_string lid in
            FStar_Util.format2
              "Impossible: projecting field #%s from constructor %s is undefined"
              uu____9578 uu____9579 in
          failwith uu____9577 in
        let uu____9580 = lookup_datacon env lid in
        match uu____9580 with
        | (uu____9585,t) ->
            let uu____9587 =
              let uu____9588 = FStar_Syntax_Subst.compress t in
              uu____9588.FStar_Syntax_Syntax.n in
            (match uu____9587 with
             | FStar_Syntax_Syntax.Tm_arrow (binders,uu____9592) ->
                 if
                   (i < (Prims.parse_int "0")) ||
                     (i >= (FStar_List.length binders))
                 then fail ()
                 else
                   (let b = FStar_List.nth binders i in
                    let uu____9623 =
                      FStar_Syntax_Util.mk_field_projector_name lid
                        (FStar_Pervasives_Native.fst b) i in
                    FStar_All.pipe_right uu____9623
                      FStar_Pervasives_Native.fst)
             | uu____9632 -> fail ())
let is_projector: env -> FStar_Ident.lident -> Prims.bool =
  fun env  ->
    fun l  ->
      let uu____9641 = lookup_qname env l in
      match uu____9641 with
      | FStar_Pervasives_Native.Some
          (FStar_Util.Inr
           ({
              FStar_Syntax_Syntax.sigel = FStar_Syntax_Syntax.Sig_declare_typ
                (uu____9662,uu____9663,uu____9664);
              FStar_Syntax_Syntax.sigrng = uu____9665;
              FStar_Syntax_Syntax.sigquals = quals;
              FStar_Syntax_Syntax.sigmeta = uu____9667;
              FStar_Syntax_Syntax.sigattrs = uu____9668;_},uu____9669),uu____9670)
          ->
          FStar_Util.for_some
            (fun uu___118_9723  ->
               match uu___118_9723 with
               | FStar_Syntax_Syntax.Projector uu____9724 -> true
               | uu____9729 -> false) quals
      | uu____9730 -> false
let is_datacon: env -> FStar_Ident.lident -> Prims.bool =
  fun env  ->
    fun lid  ->
      let uu____9759 = lookup_qname env lid in
      match uu____9759 with
      | FStar_Pervasives_Native.Some
          (FStar_Util.Inr
           ({
              FStar_Syntax_Syntax.sigel = FStar_Syntax_Syntax.Sig_datacon
                (uu____9780,uu____9781,uu____9782,uu____9783,uu____9784,uu____9785);
              FStar_Syntax_Syntax.sigrng = uu____9786;
              FStar_Syntax_Syntax.sigquals = uu____9787;
              FStar_Syntax_Syntax.sigmeta = uu____9788;
              FStar_Syntax_Syntax.sigattrs = uu____9789;_},uu____9790),uu____9791)
          -> true
      | uu____9846 -> false
let is_record: env -> FStar_Ident.lident -> Prims.bool =
  fun env  ->
    fun lid  ->
      let uu____9875 = lookup_qname env lid in
      match uu____9875 with
      | FStar_Pervasives_Native.Some
          (FStar_Util.Inr
           ({
              FStar_Syntax_Syntax.sigel =
                FStar_Syntax_Syntax.Sig_inductive_typ
                (uu____9896,uu____9897,uu____9898,uu____9899,uu____9900,uu____9901);
              FStar_Syntax_Syntax.sigrng = uu____9902;
              FStar_Syntax_Syntax.sigquals = quals;
              FStar_Syntax_Syntax.sigmeta = uu____9904;
              FStar_Syntax_Syntax.sigattrs = uu____9905;_},uu____9906),uu____9907)
          ->
          FStar_Util.for_some
            (fun uu___119_9968  ->
               match uu___119_9968 with
               | FStar_Syntax_Syntax.RecordType uu____9969 -> true
               | FStar_Syntax_Syntax.RecordConstructor uu____9978 -> true
               | uu____9987 -> false) quals
      | uu____9988 -> false
let is_action: env -> FStar_Ident.lident -> Prims.bool =
  fun env  ->
    fun lid  ->
      let uu____10017 = lookup_qname env lid in
      match uu____10017 with
      | FStar_Pervasives_Native.Some
          (FStar_Util.Inr
           ({
              FStar_Syntax_Syntax.sigel = FStar_Syntax_Syntax.Sig_let
                (uu____10038,uu____10039);
              FStar_Syntax_Syntax.sigrng = uu____10040;
              FStar_Syntax_Syntax.sigquals = quals;
              FStar_Syntax_Syntax.sigmeta = uu____10042;
              FStar_Syntax_Syntax.sigattrs = uu____10043;_},uu____10044),uu____10045)
          ->
          FStar_Util.for_some
            (fun uu___120_10102  ->
               match uu___120_10102 with
               | FStar_Syntax_Syntax.Action uu____10103 -> true
               | uu____10104 -> false) quals
      | uu____10105 -> false
let is_interpreted: env -> FStar_Syntax_Syntax.term -> Prims.bool =
  let interpreted_symbols =
    [FStar_Parser_Const.op_Eq;
    FStar_Parser_Const.op_notEq;
    FStar_Parser_Const.op_LT;
    FStar_Parser_Const.op_LTE;
    FStar_Parser_Const.op_GT;
    FStar_Parser_Const.op_GTE;
    FStar_Parser_Const.op_Subtraction;
    FStar_Parser_Const.op_Minus;
    FStar_Parser_Const.op_Addition;
    FStar_Parser_Const.op_Multiply;
    FStar_Parser_Const.op_Division;
    FStar_Parser_Const.op_Modulus;
    FStar_Parser_Const.op_And;
    FStar_Parser_Const.op_Or;
    FStar_Parser_Const.op_Negation] in
  fun env  ->
    fun head1  ->
      let uu____10137 =
        let uu____10138 = FStar_Syntax_Util.un_uinst head1 in
        uu____10138.FStar_Syntax_Syntax.n in
      match uu____10137 with
      | FStar_Syntax_Syntax.Tm_fvar fv ->
          fv.FStar_Syntax_Syntax.fv_delta =
            FStar_Syntax_Syntax.Delta_equational
      | uu____10142 -> false
let is_type_constructor: env -> FStar_Ident.lident -> Prims.bool =
  fun env  ->
    fun lid  ->
      let mapper x =
        match FStar_Pervasives_Native.fst x with
        | FStar_Util.Inl uu____10209 -> FStar_Pervasives_Native.Some false
        | FStar_Util.Inr (se,uu____10225) ->
            (match se.FStar_Syntax_Syntax.sigel with
             | FStar_Syntax_Syntax.Sig_declare_typ uu____10242 ->
                 FStar_Pervasives_Native.Some
                   (FStar_List.contains FStar_Syntax_Syntax.New
                      se.FStar_Syntax_Syntax.sigquals)
             | FStar_Syntax_Syntax.Sig_inductive_typ uu____10249 ->
                 FStar_Pervasives_Native.Some true
             | uu____10266 -> FStar_Pervasives_Native.Some false) in
      let uu____10267 =
        let uu____10270 = lookup_qname env lid in
        FStar_Util.bind_opt uu____10270 mapper in
      match uu____10267 with
      | FStar_Pervasives_Native.Some b -> b
      | FStar_Pervasives_Native.None  -> false
let num_inductive_ty_params: env -> FStar_Ident.lident -> Prims.int =
  fun env  ->
    fun lid  ->
      let uu____10318 = lookup_qname env lid in
      match uu____10318 with
      | FStar_Pervasives_Native.Some
          (FStar_Util.Inr
           ({
              FStar_Syntax_Syntax.sigel =
                FStar_Syntax_Syntax.Sig_inductive_typ
                (uu____10339,uu____10340,tps,uu____10342,uu____10343,uu____10344);
              FStar_Syntax_Syntax.sigrng = uu____10345;
              FStar_Syntax_Syntax.sigquals = uu____10346;
              FStar_Syntax_Syntax.sigmeta = uu____10347;
              FStar_Syntax_Syntax.sigattrs = uu____10348;_},uu____10349),uu____10350)
          -> FStar_List.length tps
      | uu____10413 ->
          let uu____10434 =
            let uu____10435 =
              let uu____10440 = name_not_found lid in
              (uu____10440, (FStar_Ident.range_of_lid lid)) in
            FStar_Errors.Error uu____10435 in
          FStar_Exn.raise uu____10434
let effect_decl_opt:
  env ->
    FStar_Ident.lident ->
      (FStar_Syntax_Syntax.eff_decl,FStar_Syntax_Syntax.qualifier Prims.list)
        FStar_Pervasives_Native.tuple2 FStar_Pervasives_Native.option
  =
  fun env  ->
    fun l  ->
      FStar_All.pipe_right (env.effects).decls
        (FStar_Util.find_opt
           (fun uu____10482  ->
              match uu____10482 with
              | (d,uu____10490) ->
                  FStar_Ident.lid_equals d.FStar_Syntax_Syntax.mname l))
let get_effect_decl:
  env -> FStar_Ident.lident -> FStar_Syntax_Syntax.eff_decl =
  fun env  ->
    fun l  ->
      let uu____10503 = effect_decl_opt env l in
      match uu____10503 with
      | FStar_Pervasives_Native.None  ->
          let uu____10518 =
            let uu____10519 =
              let uu____10524 = name_not_found l in
              (uu____10524, (FStar_Ident.range_of_lid l)) in
            FStar_Errors.Error uu____10519 in
          FStar_Exn.raise uu____10518
      | FStar_Pervasives_Native.Some md -> FStar_Pervasives_Native.fst md
let identity_mlift: mlift =
  {
    mlift_wp = (fun t  -> fun wp  -> wp);
    mlift_term =
      (FStar_Pervasives_Native.Some
         (fun t  -> fun wp  -> fun e  -> FStar_Util.return_all e))
  }
let join:
  env ->
    FStar_Ident.lident ->
      FStar_Ident.lident ->
        (FStar_Ident.lident,mlift,mlift) FStar_Pervasives_Native.tuple3
  =
  fun env  ->
    fun l1  ->
      fun l2  ->
        if FStar_Ident.lid_equals l1 l2
        then (l1, identity_mlift, identity_mlift)
        else
          if
            ((FStar_Ident.lid_equals l1 FStar_Parser_Const.effect_GTot_lid)
               &&
               (FStar_Ident.lid_equals l2 FStar_Parser_Const.effect_Tot_lid))
              ||
              ((FStar_Ident.lid_equals l2 FStar_Parser_Const.effect_GTot_lid)
                 &&
                 (FStar_Ident.lid_equals l1 FStar_Parser_Const.effect_Tot_lid))
          then
            (FStar_Parser_Const.effect_GTot_lid, identity_mlift,
              identity_mlift)
          else
            (let uu____10590 =
               FStar_All.pipe_right (env.effects).joins
                 (FStar_Util.find_opt
                    (fun uu____10643  ->
                       match uu____10643 with
                       | (m1,m2,uu____10656,uu____10657,uu____10658) ->
                           (FStar_Ident.lid_equals l1 m1) &&
                             (FStar_Ident.lid_equals l2 m2))) in
             match uu____10590 with
             | FStar_Pervasives_Native.None  ->
                 let uu____10675 =
                   let uu____10676 =
                     let uu____10681 =
                       let uu____10682 = FStar_Syntax_Print.lid_to_string l1 in
                       let uu____10683 = FStar_Syntax_Print.lid_to_string l2 in
                       FStar_Util.format2
                         "Effects %s and %s cannot be composed" uu____10682
                         uu____10683 in
                     (uu____10681, (env.range)) in
                   FStar_Errors.Error uu____10676 in
                 FStar_Exn.raise uu____10675
             | FStar_Pervasives_Native.Some
                 (uu____10690,uu____10691,m3,j1,j2) -> (m3, j1, j2))
let monad_leq:
  env ->
    FStar_Ident.lident ->
      FStar_Ident.lident -> edge FStar_Pervasives_Native.option
  =
  fun env  ->
    fun l1  ->
      fun l2  ->
        if
          (FStar_Ident.lid_equals l1 l2) ||
            ((FStar_Ident.lid_equals l1 FStar_Parser_Const.effect_Tot_lid) &&
               (FStar_Ident.lid_equals l2 FStar_Parser_Const.effect_GTot_lid))
        then
          FStar_Pervasives_Native.Some
            { msource = l1; mtarget = l2; mlift = identity_mlift }
        else
          FStar_All.pipe_right (env.effects).order
            (FStar_Util.find_opt
               (fun e  ->
                  (FStar_Ident.lid_equals l1 e.msource) &&
                    (FStar_Ident.lid_equals l2 e.mtarget)))
let wp_sig_aux:
  'Auu____10734 .
    (FStar_Syntax_Syntax.eff_decl,'Auu____10734)
      FStar_Pervasives_Native.tuple2 Prims.list ->
      FStar_Ident.lident ->
        (FStar_Syntax_Syntax.bv,FStar_Syntax_Syntax.term'
                                  FStar_Syntax_Syntax.syntax)
          FStar_Pervasives_Native.tuple2
  =
  fun decls  ->
    fun m  ->
      let uu____10761 =
        FStar_All.pipe_right decls
          (FStar_Util.find_opt
             (fun uu____10787  ->
                match uu____10787 with
                | (d,uu____10793) ->
                    FStar_Ident.lid_equals d.FStar_Syntax_Syntax.mname m)) in
      match uu____10761 with
      | FStar_Pervasives_Native.None  ->
          let uu____10804 =
            FStar_Util.format1
              "Impossible: declaration for monad %s not found"
              m.FStar_Ident.str in
          failwith uu____10804
      | FStar_Pervasives_Native.Some (md,_q) ->
          let uu____10817 =
            inst_tscheme
              ((md.FStar_Syntax_Syntax.univs),
                (md.FStar_Syntax_Syntax.signature)) in
          (match uu____10817 with
           | (uu____10828,s) ->
               let s1 = FStar_Syntax_Subst.compress s in
               (match ((md.FStar_Syntax_Syntax.binders),
                        (s1.FStar_Syntax_Syntax.n))
                with
                | ([],FStar_Syntax_Syntax.Tm_arrow
                   ((a,uu____10838)::(wp,uu____10840)::[],c)) when
                    FStar_Syntax_Syntax.is_teff
                      (FStar_Syntax_Util.comp_result c)
                    -> (a, (wp.FStar_Syntax_Syntax.sort))
                | uu____10876 -> failwith "Impossible"))
let wp_signature:
  env ->
    FStar_Ident.lident ->
      (FStar_Syntax_Syntax.bv,FStar_Syntax_Syntax.term)
        FStar_Pervasives_Native.tuple2
  = fun env  -> fun m  -> wp_sig_aux (env.effects).decls m
let null_wp_for_eff:
  env ->
    FStar_Ident.lident ->
      FStar_Syntax_Syntax.universe ->
        FStar_Syntax_Syntax.term -> FStar_Syntax_Syntax.comp
  =
  fun env  ->
    fun eff_name  ->
      fun res_u  ->
        fun res_t  ->
          if
            FStar_Ident.lid_equals eff_name FStar_Parser_Const.effect_Tot_lid
          then
            FStar_Syntax_Syntax.mk_Total' res_t
              (FStar_Pervasives_Native.Some res_u)
          else
            if
              FStar_Ident.lid_equals eff_name
                FStar_Parser_Const.effect_GTot_lid
            then
              FStar_Syntax_Syntax.mk_GTotal' res_t
                (FStar_Pervasives_Native.Some res_u)
            else
              (let eff_name1 = norm_eff_name env eff_name in
               let ed = get_effect_decl env eff_name1 in
               let null_wp =
                 inst_effect_fun_with [res_u] env ed
                   ed.FStar_Syntax_Syntax.null_wp in
               let null_wp_res =
                 let uu____10925 = get_range env in
                 let uu____10926 =
                   let uu____10929 =
                     let uu____10930 =
                       let uu____10945 =
                         let uu____10948 = FStar_Syntax_Syntax.as_arg res_t in
                         [uu____10948] in
                       (null_wp, uu____10945) in
                     FStar_Syntax_Syntax.Tm_app uu____10930 in
                   FStar_Syntax_Syntax.mk uu____10929 in
                 uu____10926 FStar_Pervasives_Native.None uu____10925 in
               let uu____10954 =
                 let uu____10955 =
                   let uu____10964 = FStar_Syntax_Syntax.as_arg null_wp_res in
                   [uu____10964] in
                 {
                   FStar_Syntax_Syntax.comp_univs = [res_u];
                   FStar_Syntax_Syntax.effect_name = eff_name1;
                   FStar_Syntax_Syntax.result_typ = res_t;
                   FStar_Syntax_Syntax.effect_args = uu____10955;
                   FStar_Syntax_Syntax.flags = []
                 } in
               FStar_Syntax_Syntax.mk_Comp uu____10954)
let build_lattice: env -> FStar_Syntax_Syntax.sigelt -> env =
  fun env  ->
    fun se  ->
      match se.FStar_Syntax_Syntax.sigel with
      | FStar_Syntax_Syntax.Sig_new_effect ne ->
          let effects =
            let uu___132_10975 = env.effects in
            {
              decls = ((ne, (se.FStar_Syntax_Syntax.sigquals)) ::
                ((env.effects).decls));
              order = (uu___132_10975.order);
              joins = (uu___132_10975.joins)
            } in
          let uu___133_10984 = env in
          {
            solver = (uu___133_10984.solver);
            range = (uu___133_10984.range);
            curmodule = (uu___133_10984.curmodule);
            gamma = (uu___133_10984.gamma);
            gamma_cache = (uu___133_10984.gamma_cache);
            modules = (uu___133_10984.modules);
            expected_typ = (uu___133_10984.expected_typ);
            sigtab = (uu___133_10984.sigtab);
            is_pattern = (uu___133_10984.is_pattern);
            instantiate_imp = (uu___133_10984.instantiate_imp);
            effects;
            generalize = (uu___133_10984.generalize);
            letrecs = (uu___133_10984.letrecs);
            top_level = (uu___133_10984.top_level);
            check_uvars = (uu___133_10984.check_uvars);
            use_eq = (uu___133_10984.use_eq);
            is_iface = (uu___133_10984.is_iface);
            admit = (uu___133_10984.admit);
            lax = (uu___133_10984.lax);
            lax_universes = (uu___133_10984.lax_universes);
            failhard = (uu___133_10984.failhard);
            nosynth = (uu___133_10984.nosynth);
            type_of = (uu___133_10984.type_of);
            universe_of = (uu___133_10984.universe_of);
            use_bv_sorts = (uu___133_10984.use_bv_sorts);
            qname_and_index = (uu___133_10984.qname_and_index);
            proof_ns = (uu___133_10984.proof_ns);
            synth = (uu___133_10984.synth);
            is_native_tactic = (uu___133_10984.is_native_tactic);
            identifier_info = (uu___133_10984.identifier_info)
          }
      | FStar_Syntax_Syntax.Sig_sub_effect sub1 ->
          let compose_edges e1 e2 =
            let composed_lift =
              let mlift_wp r wp1 =
                let uu____11001 = (e1.mlift).mlift_wp r wp1 in
                (e2.mlift).mlift_wp r uu____11001 in
              let mlift_term =
                match (((e1.mlift).mlift_term), ((e2.mlift).mlift_term)) with
                | (FStar_Pervasives_Native.Some
                   l1,FStar_Pervasives_Native.Some l2) ->
                    FStar_Pervasives_Native.Some
                      ((fun t  ->
                          fun wp  ->
                            fun e  ->
                              let uu____11091 = (e1.mlift).mlift_wp t wp in
                              let uu____11092 = l1 t wp e in
                              l2 t uu____11091 uu____11092))
                | uu____11093 -> FStar_Pervasives_Native.None in
              { mlift_wp; mlift_term } in
            {
              msource = (e1.msource);
              mtarget = (e2.mtarget);
              mlift = composed_lift
            } in
          let mk_mlift_wp lift_t r wp1 =
            let uu____11132 = inst_tscheme lift_t in
            match uu____11132 with
            | (uu____11139,lift_t1) ->
                let uu____11141 =
                  let uu____11144 =
                    let uu____11145 =
                      let uu____11160 =
                        let uu____11163 = FStar_Syntax_Syntax.as_arg r in
                        let uu____11164 =
                          let uu____11167 = FStar_Syntax_Syntax.as_arg wp1 in
                          [uu____11167] in
                        uu____11163 :: uu____11164 in
                      (lift_t1, uu____11160) in
                    FStar_Syntax_Syntax.Tm_app uu____11145 in
                  FStar_Syntax_Syntax.mk uu____11144 in
                uu____11141 FStar_Pervasives_Native.None
                  wp1.FStar_Syntax_Syntax.pos in
          let sub_mlift_wp =
            match sub1.FStar_Syntax_Syntax.lift_wp with
            | FStar_Pervasives_Native.Some sub_lift_wp ->
                mk_mlift_wp sub_lift_wp
            | FStar_Pervasives_Native.None  ->
                failwith "sub effect should've been elaborated at this stage" in
          let mk_mlift_term lift_t r wp1 e =
            let uu____11208 = inst_tscheme lift_t in
            match uu____11208 with
            | (uu____11215,lift_t1) ->
                let uu____11217 =
                  let uu____11220 =
                    let uu____11221 =
                      let uu____11236 =
                        let uu____11239 = FStar_Syntax_Syntax.as_arg r in
                        let uu____11240 =
                          let uu____11243 = FStar_Syntax_Syntax.as_arg wp1 in
                          let uu____11244 =
                            let uu____11247 = FStar_Syntax_Syntax.as_arg e in
                            [uu____11247] in
                          uu____11243 :: uu____11244 in
                        uu____11239 :: uu____11240 in
                      (lift_t1, uu____11236) in
                    FStar_Syntax_Syntax.Tm_app uu____11221 in
                  FStar_Syntax_Syntax.mk uu____11220 in
                uu____11217 FStar_Pervasives_Native.None
                  e.FStar_Syntax_Syntax.pos in
          let sub_mlift_term =
            FStar_Util.map_opt sub1.FStar_Syntax_Syntax.lift mk_mlift_term in
          let edge =
            {
              msource = (sub1.FStar_Syntax_Syntax.source);
              mtarget = (sub1.FStar_Syntax_Syntax.target);
              mlift =
                { mlift_wp = sub_mlift_wp; mlift_term = sub_mlift_term }
            } in
          let id_edge l =
            {
              msource = (sub1.FStar_Syntax_Syntax.source);
              mtarget = (sub1.FStar_Syntax_Syntax.target);
              mlift = identity_mlift
            } in
          let print_mlift l =
            let bogus_term s =
              let uu____11285 =
                let uu____11286 =
                  FStar_Ident.lid_of_path [s] FStar_Range.dummyRange in
                FStar_Syntax_Syntax.lid_as_fv uu____11286
                  FStar_Syntax_Syntax.Delta_constant
                  FStar_Pervasives_Native.None in
              FStar_Syntax_Syntax.fv_to_tm uu____11285 in
            let arg = bogus_term "ARG" in
            let wp = bogus_term "WP" in
            let e = bogus_term "COMP" in
            let uu____11290 =
              let uu____11291 = l.mlift_wp arg wp in
              FStar_Syntax_Print.term_to_string uu____11291 in
            let uu____11292 =
              let uu____11293 =
                FStar_Util.map_opt l.mlift_term
                  (fun l1  ->
                     let uu____11311 = l1 arg wp e in
                     FStar_Syntax_Print.term_to_string uu____11311) in
              FStar_Util.dflt "none" uu____11293 in
            FStar_Util.format2 "{ wp : %s ; term : %s }" uu____11290
              uu____11292 in
          let order = edge :: ((env.effects).order) in
          let ms =
            FStar_All.pipe_right (env.effects).decls
              (FStar_List.map
                 (fun uu____11337  ->
                    match uu____11337 with
                    | (e,uu____11345) -> e.FStar_Syntax_Syntax.mname)) in
          let find_edge order1 uu____11364 =
            match uu____11364 with
            | (i,j) ->
                if FStar_Ident.lid_equals i j
                then
                  FStar_All.pipe_right (id_edge i)
                    (fun _0_41  -> FStar_Pervasives_Native.Some _0_41)
                else
                  FStar_All.pipe_right order1
                    (FStar_Util.find_opt
                       (fun e  ->
                          (FStar_Ident.lid_equals e.msource i) &&
                            (FStar_Ident.lid_equals e.mtarget j))) in
          let order1 =
            let fold_fun order1 k =
              let uu____11402 =
                FStar_All.pipe_right ms
                  (FStar_List.collect
                     (fun i  ->
                        if FStar_Ident.lid_equals i k
                        then []
                        else
                          FStar_All.pipe_right ms
                            (FStar_List.collect
                               (fun j  ->
                                  if FStar_Ident.lid_equals j k
                                  then []
                                  else
                                    (let uu____11423 =
                                       let uu____11432 =
                                         find_edge order1 (i, k) in
                                       let uu____11435 =
                                         find_edge order1 (k, j) in
                                       (uu____11432, uu____11435) in
                                     match uu____11423 with
                                     | (FStar_Pervasives_Native.Some
                                        e1,FStar_Pervasives_Native.Some e2)
                                         ->
                                         let uu____11450 =
                                           compose_edges e1 e2 in
                                         [uu____11450]
                                     | uu____11451 -> []))))) in
              FStar_List.append order1 uu____11402 in
            FStar_All.pipe_right ms (FStar_List.fold_left fold_fun order) in
          let order2 =
            FStar_Util.remove_dups
              (fun e1  ->
                 fun e2  ->
                   (FStar_Ident.lid_equals e1.msource e2.msource) &&
                     (FStar_Ident.lid_equals e1.mtarget e2.mtarget)) order1 in
          (FStar_All.pipe_right order2
             (FStar_List.iter
                (fun edge1  ->
                   let uu____11480 =
                     (FStar_Ident.lid_equals edge1.msource
                        FStar_Parser_Const.effect_DIV_lid)
                       &&
                       (let uu____11482 =
                          lookup_effect_quals env edge1.mtarget in
                        FStar_All.pipe_right uu____11482
                          (FStar_List.contains
                             FStar_Syntax_Syntax.TotalEffect)) in
                   if uu____11480
                   then
                     let uu____11487 =
                       let uu____11488 =
                         let uu____11493 =
                           FStar_Util.format1
                             "Divergent computations cannot be included in an effect %s marked 'total'"
                             (edge1.mtarget).FStar_Ident.str in
                         let uu____11494 = get_range env in
                         (uu____11493, uu____11494) in
                       FStar_Errors.Error uu____11488 in
                     FStar_Exn.raise uu____11487
                   else ()));
           (let joins =
              FStar_All.pipe_right ms
                (FStar_List.collect
                   (fun i  ->
                      FStar_All.pipe_right ms
                        (FStar_List.collect
                           (fun j  ->
                              let join_opt =
                                if FStar_Ident.lid_equals i j
                                then
                                  FStar_Pervasives_Native.Some
                                    (i, (id_edge i), (id_edge i))
                                else
                                  FStar_All.pipe_right ms
                                    (FStar_List.fold_left
                                       (fun bopt  ->
                                          fun k  ->
                                            let uu____11619 =
                                              let uu____11628 =
                                                find_edge order2 (i, k) in
                                              let uu____11631 =
                                                find_edge order2 (j, k) in
                                              (uu____11628, uu____11631) in
                                            match uu____11619 with
                                            | (FStar_Pervasives_Native.Some
                                               ik,FStar_Pervasives_Native.Some
                                               jk) ->
                                                (match bopt with
                                                 | FStar_Pervasives_Native.None
                                                      ->
                                                     FStar_Pervasives_Native.Some
                                                       (k, ik, jk)
                                                 | FStar_Pervasives_Native.Some
                                                     (ub,uu____11673,uu____11674)
                                                     ->
                                                     let uu____11681 =
                                                       let uu____11686 =
                                                         let uu____11687 =
                                                           find_edge order2
                                                             (k, ub) in
                                                         FStar_Util.is_some
                                                           uu____11687 in
                                                       let uu____11690 =
                                                         let uu____11691 =
                                                           find_edge order2
                                                             (ub, k) in
                                                         FStar_Util.is_some
                                                           uu____11691 in
                                                       (uu____11686,
                                                         uu____11690) in
                                                     (match uu____11681 with
                                                      | (true ,true ) ->
                                                          if
                                                            FStar_Ident.lid_equals
                                                              k ub
                                                          then
                                                            (FStar_Util.print_warning
                                                               "Looking multiple times at the same upper bound candidate";
                                                             bopt)
                                                          else
                                                            failwith
                                                              "Found a cycle in the lattice"
                                                      | (false ,false ) ->
                                                          bopt
                                                      | (true ,false ) ->
                                                          FStar_Pervasives_Native.Some
                                                            (k, ik, jk)
                                                      | (false ,true ) ->
                                                          bopt))
                                            | uu____11726 -> bopt)
                                       FStar_Pervasives_Native.None) in
                              match join_opt with
                              | FStar_Pervasives_Native.None  -> []
                              | FStar_Pervasives_Native.Some (k,e1,e2) ->
                                  [(i, j, k, (e1.mlift), (e2.mlift))])))) in
            let effects =
              let uu___134_11799 = env.effects in
              { decls = (uu___134_11799.decls); order = order2; joins } in
            let uu___135_11800 = env in
            {
              solver = (uu___135_11800.solver);
              range = (uu___135_11800.range);
              curmodule = (uu___135_11800.curmodule);
              gamma = (uu___135_11800.gamma);
              gamma_cache = (uu___135_11800.gamma_cache);
              modules = (uu___135_11800.modules);
              expected_typ = (uu___135_11800.expected_typ);
              sigtab = (uu___135_11800.sigtab);
              is_pattern = (uu___135_11800.is_pattern);
              instantiate_imp = (uu___135_11800.instantiate_imp);
              effects;
              generalize = (uu___135_11800.generalize);
              letrecs = (uu___135_11800.letrecs);
              top_level = (uu___135_11800.top_level);
              check_uvars = (uu___135_11800.check_uvars);
              use_eq = (uu___135_11800.use_eq);
              is_iface = (uu___135_11800.is_iface);
              admit = (uu___135_11800.admit);
              lax = (uu___135_11800.lax);
              lax_universes = (uu___135_11800.lax_universes);
              failhard = (uu___135_11800.failhard);
              nosynth = (uu___135_11800.nosynth);
              type_of = (uu___135_11800.type_of);
              universe_of = (uu___135_11800.universe_of);
              use_bv_sorts = (uu___135_11800.use_bv_sorts);
              qname_and_index = (uu___135_11800.qname_and_index);
              proof_ns = (uu___135_11800.proof_ns);
              synth = (uu___135_11800.synth);
              is_native_tactic = (uu___135_11800.is_native_tactic);
              identifier_info = (uu___135_11800.identifier_info)
            }))
      | uu____11801 -> env
let comp_to_comp_typ:
  env -> FStar_Syntax_Syntax.comp -> FStar_Syntax_Syntax.comp_typ =
  fun env  ->
    fun c  ->
      let c1 =
        match c.FStar_Syntax_Syntax.n with
        | FStar_Syntax_Syntax.Total (t,FStar_Pervasives_Native.None ) ->
            let u = env.universe_of env t in
            FStar_Syntax_Syntax.mk_Total' t (FStar_Pervasives_Native.Some u)
        | FStar_Syntax_Syntax.GTotal (t,FStar_Pervasives_Native.None ) ->
            let u = env.universe_of env t in
            FStar_Syntax_Syntax.mk_GTotal' t (FStar_Pervasives_Native.Some u)
        | uu____11827 -> c in
      FStar_Syntax_Util.comp_to_comp_typ c1
let rec unfold_effect_abbrev:
  env -> FStar_Syntax_Syntax.comp -> FStar_Syntax_Syntax.comp_typ =
  fun env  ->
    fun comp  ->
      let c = comp_to_comp_typ env comp in
      let uu____11837 =
        lookup_effect_abbrev env c.FStar_Syntax_Syntax.comp_univs
          c.FStar_Syntax_Syntax.effect_name in
      match uu____11837 with
      | FStar_Pervasives_Native.None  -> c
      | FStar_Pervasives_Native.Some (binders,cdef) ->
          let uu____11854 = FStar_Syntax_Subst.open_comp binders cdef in
          (match uu____11854 with
           | (binders1,cdef1) ->
               (if
                  (FStar_List.length binders1) <>
                    ((FStar_List.length c.FStar_Syntax_Syntax.effect_args) +
                       (Prims.parse_int "1"))
                then
                  (let uu____11872 =
                     let uu____11873 =
                       let uu____11878 =
                         let uu____11879 =
                           FStar_Util.string_of_int
                             (FStar_List.length binders1) in
                         let uu____11884 =
                           FStar_Util.string_of_int
                             ((FStar_List.length
                                 c.FStar_Syntax_Syntax.effect_args)
                                + (Prims.parse_int "1")) in
                         let uu____11891 =
                           let uu____11892 = FStar_Syntax_Syntax.mk_Comp c in
                           FStar_Syntax_Print.comp_to_string uu____11892 in
                         FStar_Util.format3
                           "Effect constructor is not fully applied; expected %s args, got %s args, i.e., %s"
                           uu____11879 uu____11884 uu____11891 in
                       (uu____11878, (comp.FStar_Syntax_Syntax.pos)) in
                     FStar_Errors.Error uu____11873 in
                   FStar_Exn.raise uu____11872)
                else ();
                (let inst1 =
                   let uu____11897 =
                     let uu____11906 =
                       FStar_Syntax_Syntax.as_arg
                         c.FStar_Syntax_Syntax.result_typ in
                     uu____11906 :: (c.FStar_Syntax_Syntax.effect_args) in
                   FStar_List.map2
                     (fun uu____11923  ->
                        fun uu____11924  ->
                          match (uu____11923, uu____11924) with
                          | ((x,uu____11946),(t,uu____11948)) ->
                              FStar_Syntax_Syntax.NT (x, t)) binders1
                     uu____11897 in
                 let c1 = FStar_Syntax_Subst.subst_comp inst1 cdef1 in
                 let c2 =
                   let uu____11967 =
                     let uu___136_11968 = comp_to_comp_typ env c1 in
                     {
                       FStar_Syntax_Syntax.comp_univs =
                         (uu___136_11968.FStar_Syntax_Syntax.comp_univs);
                       FStar_Syntax_Syntax.effect_name =
                         (uu___136_11968.FStar_Syntax_Syntax.effect_name);
                       FStar_Syntax_Syntax.result_typ =
                         (uu___136_11968.FStar_Syntax_Syntax.result_typ);
                       FStar_Syntax_Syntax.effect_args =
                         (uu___136_11968.FStar_Syntax_Syntax.effect_args);
                       FStar_Syntax_Syntax.flags =
                         (c.FStar_Syntax_Syntax.flags)
                     } in
                   FStar_All.pipe_right uu____11967
                     FStar_Syntax_Syntax.mk_Comp in
                 unfold_effect_abbrev env c2)))
let effect_repr_aux:
  Prims.bool ->
    env ->
      FStar_Syntax_Syntax.comp' FStar_Syntax_Syntax.syntax ->
        FStar_Syntax_Syntax.universe ->
          FStar_Syntax_Syntax.term' FStar_Syntax_Syntax.syntax
            FStar_Pervasives_Native.option
  =
  fun only_reifiable  ->
    fun env  ->
      fun c  ->
        fun u_c  ->
          let effect_name =
            norm_eff_name env (FStar_Syntax_Util.comp_effect_name c) in
          let uu____11994 = effect_decl_opt env effect_name in
          match uu____11994 with
          | FStar_Pervasives_Native.None  -> FStar_Pervasives_Native.None
          | FStar_Pervasives_Native.Some (ed,qualifiers) ->
              let uu____12027 =
                only_reifiable &&
                  (let uu____12029 =
                     FStar_All.pipe_right qualifiers
                       (FStar_List.contains FStar_Syntax_Syntax.Reifiable) in
                   Prims.op_Negation uu____12029) in
              if uu____12027
              then FStar_Pervasives_Native.None
              else
                (match (ed.FStar_Syntax_Syntax.repr).FStar_Syntax_Syntax.n
                 with
                 | FStar_Syntax_Syntax.Tm_unknown  ->
                     FStar_Pervasives_Native.None
                 | uu____12045 ->
                     let c1 = unfold_effect_abbrev env c in
                     let res_typ = c1.FStar_Syntax_Syntax.result_typ in
                     let wp =
                       match c1.FStar_Syntax_Syntax.effect_args with
                       | hd1::uu____12064 -> hd1
                       | [] ->
                           let name = FStar_Ident.string_of_lid effect_name in
                           let message =
                             let uu____12093 =
                               FStar_Util.format1
                                 "Not enough arguments for effect %s. " name in
                             Prims.strcat uu____12093
                               (Prims.strcat
                                  "This usually happens when you use a partially applied DM4F effect, "
                                  "like [TAC int] instead of [Tac int].") in
                           let uu____12094 =
                             let uu____12095 =
                               let uu____12100 = get_range env in
                               (message, uu____12100) in
                             FStar_Errors.Error uu____12095 in
                           FStar_Exn.raise uu____12094 in
                     let repr =
                       inst_effect_fun_with [u_c] env ed
                         ([], (ed.FStar_Syntax_Syntax.repr)) in
                     let uu____12110 =
                       let uu____12113 = get_range env in
                       let uu____12114 =
                         let uu____12117 =
                           let uu____12118 =
                             let uu____12133 =
                               let uu____12136 =
                                 FStar_Syntax_Syntax.as_arg res_typ in
                               [uu____12136; wp] in
                             (repr, uu____12133) in
                           FStar_Syntax_Syntax.Tm_app uu____12118 in
                         FStar_Syntax_Syntax.mk uu____12117 in
                       uu____12114 FStar_Pervasives_Native.None uu____12113 in
                     FStar_Pervasives_Native.Some uu____12110)
let effect_repr:
  env ->
    FStar_Syntax_Syntax.comp ->
      FStar_Syntax_Syntax.universe ->
        FStar_Syntax_Syntax.term FStar_Pervasives_Native.option
  = fun env  -> fun c  -> fun u_c  -> effect_repr_aux false env c u_c
let reify_comp:
  env ->
    FStar_Syntax_Syntax.comp ->
      FStar_Syntax_Syntax.universe -> FStar_Syntax_Syntax.term
  =
  fun env  ->
    fun c  ->
      fun u_c  ->
        let no_reify l =
          let uu____12188 =
            let uu____12189 =
              let uu____12194 =
                let uu____12195 = FStar_Ident.string_of_lid l in
                FStar_Util.format1 "Effect %s cannot be reified" uu____12195 in
              let uu____12196 = get_range env in (uu____12194, uu____12196) in
            FStar_Errors.Error uu____12189 in
          FStar_Exn.raise uu____12188 in
        let uu____12197 = effect_repr_aux true env c u_c in
        match uu____12197 with
        | FStar_Pervasives_Native.None  ->
            no_reify (FStar_Syntax_Util.comp_effect_name c)
        | FStar_Pervasives_Native.Some tm -> tm
let is_reifiable_effect: env -> FStar_Ident.lident -> Prims.bool =
  fun env  ->
    fun effect_lid  ->
      let quals = lookup_effect_quals env effect_lid in
      FStar_List.contains FStar_Syntax_Syntax.Reifiable quals
let is_reifiable: env -> FStar_Syntax_Syntax.residual_comp -> Prims.bool =
  fun env  ->
    fun c  -> is_reifiable_effect env c.FStar_Syntax_Syntax.residual_effect
let is_reifiable_comp: env -> FStar_Syntax_Syntax.comp -> Prims.bool =
  fun env  ->
    fun c  ->
      match c.FStar_Syntax_Syntax.n with
      | FStar_Syntax_Syntax.Comp ct ->
          is_reifiable_effect env ct.FStar_Syntax_Syntax.effect_name
      | uu____12237 -> false
let is_reifiable_function: env -> FStar_Syntax_Syntax.term -> Prims.bool =
  fun env  ->
    fun t  ->
      let uu____12246 =
        let uu____12247 = FStar_Syntax_Subst.compress t in
        uu____12247.FStar_Syntax_Syntax.n in
      match uu____12246 with
      | FStar_Syntax_Syntax.Tm_arrow (uu____12250,c) ->
          is_reifiable_comp env c
      | uu____12268 -> false
let push_in_gamma: env -> binding -> env =
  fun env  ->
    fun s  ->
      let rec push1 x rest =
        match rest with
        | (Binding_sig uu____12292)::uu____12293 -> x :: rest
        | (Binding_sig_inst uu____12302)::uu____12303 -> x :: rest
        | [] -> [x]
        | local::rest1 ->
            let uu____12318 = push1 x rest1 in local :: uu____12318 in
      let uu___137_12321 = env in
      let uu____12322 = push1 s env.gamma in
      {
        solver = (uu___137_12321.solver);
        range = (uu___137_12321.range);
        curmodule = (uu___137_12321.curmodule);
        gamma = uu____12322;
        gamma_cache = (uu___137_12321.gamma_cache);
        modules = (uu___137_12321.modules);
        expected_typ = (uu___137_12321.expected_typ);
        sigtab = (uu___137_12321.sigtab);
        is_pattern = (uu___137_12321.is_pattern);
        instantiate_imp = (uu___137_12321.instantiate_imp);
        effects = (uu___137_12321.effects);
        generalize = (uu___137_12321.generalize);
        letrecs = (uu___137_12321.letrecs);
        top_level = (uu___137_12321.top_level);
        check_uvars = (uu___137_12321.check_uvars);
        use_eq = (uu___137_12321.use_eq);
        is_iface = (uu___137_12321.is_iface);
        admit = (uu___137_12321.admit);
        lax = (uu___137_12321.lax);
        lax_universes = (uu___137_12321.lax_universes);
        failhard = (uu___137_12321.failhard);
        nosynth = (uu___137_12321.nosynth);
        type_of = (uu___137_12321.type_of);
        universe_of = (uu___137_12321.universe_of);
        use_bv_sorts = (uu___137_12321.use_bv_sorts);
        qname_and_index = (uu___137_12321.qname_and_index);
        proof_ns = (uu___137_12321.proof_ns);
        synth = (uu___137_12321.synth);
        is_native_tactic = (uu___137_12321.is_native_tactic);
        identifier_info = (uu___137_12321.identifier_info)
      }
let push_sigelt: env -> FStar_Syntax_Syntax.sigelt -> env =
  fun env  ->
    fun s  ->
      let env1 =
        push_in_gamma env
          (Binding_sig ((FStar_Syntax_Util.lids_of_sigelt s), s)) in
      build_lattice env1 s
let push_sigelt_inst:
  env -> FStar_Syntax_Syntax.sigelt -> FStar_Syntax_Syntax.universes -> env =
  fun env  ->
    fun s  ->
      fun us  ->
        let env1 =
          push_in_gamma env
            (Binding_sig_inst ((FStar_Syntax_Util.lids_of_sigelt s), s, us)) in
        build_lattice env1 s
let push_local_binding: env -> binding -> env =
  fun env  ->
    fun b  ->
      let uu___138_12359 = env in
      {
        solver = (uu___138_12359.solver);
        range = (uu___138_12359.range);
        curmodule = (uu___138_12359.curmodule);
        gamma = (b :: (env.gamma));
        gamma_cache = (uu___138_12359.gamma_cache);
        modules = (uu___138_12359.modules);
        expected_typ = (uu___138_12359.expected_typ);
        sigtab = (uu___138_12359.sigtab);
        is_pattern = (uu___138_12359.is_pattern);
        instantiate_imp = (uu___138_12359.instantiate_imp);
        effects = (uu___138_12359.effects);
        generalize = (uu___138_12359.generalize);
        letrecs = (uu___138_12359.letrecs);
        top_level = (uu___138_12359.top_level);
        check_uvars = (uu___138_12359.check_uvars);
        use_eq = (uu___138_12359.use_eq);
        is_iface = (uu___138_12359.is_iface);
        admit = (uu___138_12359.admit);
        lax = (uu___138_12359.lax);
        lax_universes = (uu___138_12359.lax_universes);
        failhard = (uu___138_12359.failhard);
        nosynth = (uu___138_12359.nosynth);
        type_of = (uu___138_12359.type_of);
        universe_of = (uu___138_12359.universe_of);
        use_bv_sorts = (uu___138_12359.use_bv_sorts);
        qname_and_index = (uu___138_12359.qname_and_index);
        proof_ns = (uu___138_12359.proof_ns);
        synth = (uu___138_12359.synth);
        is_native_tactic = (uu___138_12359.is_native_tactic);
        identifier_info = (uu___138_12359.identifier_info)
      }
let push_bv: env -> FStar_Syntax_Syntax.bv -> env =
  fun env  -> fun x  -> push_local_binding env (Binding_var x)
let pop_bv:
  env ->
    (FStar_Syntax_Syntax.bv,env) FStar_Pervasives_Native.tuple2
      FStar_Pervasives_Native.option
  =
  fun env  ->
    match env.gamma with
    | (Binding_var x)::rest ->
        FStar_Pervasives_Native.Some
          (x,
            (let uu___139_12393 = env in
             {
               solver = (uu___139_12393.solver);
               range = (uu___139_12393.range);
               curmodule = (uu___139_12393.curmodule);
               gamma = rest;
               gamma_cache = (uu___139_12393.gamma_cache);
               modules = (uu___139_12393.modules);
               expected_typ = (uu___139_12393.expected_typ);
               sigtab = (uu___139_12393.sigtab);
               is_pattern = (uu___139_12393.is_pattern);
               instantiate_imp = (uu___139_12393.instantiate_imp);
               effects = (uu___139_12393.effects);
               generalize = (uu___139_12393.generalize);
               letrecs = (uu___139_12393.letrecs);
               top_level = (uu___139_12393.top_level);
               check_uvars = (uu___139_12393.check_uvars);
               use_eq = (uu___139_12393.use_eq);
               is_iface = (uu___139_12393.is_iface);
               admit = (uu___139_12393.admit);
               lax = (uu___139_12393.lax);
               lax_universes = (uu___139_12393.lax_universes);
               failhard = (uu___139_12393.failhard);
               nosynth = (uu___139_12393.nosynth);
               type_of = (uu___139_12393.type_of);
               universe_of = (uu___139_12393.universe_of);
               use_bv_sorts = (uu___139_12393.use_bv_sorts);
               qname_and_index = (uu___139_12393.qname_and_index);
               proof_ns = (uu___139_12393.proof_ns);
               synth = (uu___139_12393.synth);
               is_native_tactic = (uu___139_12393.is_native_tactic);
               identifier_info = (uu___139_12393.identifier_info)
             }))
    | uu____12394 -> FStar_Pervasives_Native.None
let push_binders: env -> FStar_Syntax_Syntax.binders -> env =
  fun env  ->
    fun bs  ->
      FStar_List.fold_left
        (fun env1  ->
           fun uu____12418  ->
             match uu____12418 with | (x,uu____12424) -> push_bv env1 x) env
        bs
let binding_of_lb:
  FStar_Syntax_Syntax.lbname ->
    (FStar_Syntax_Syntax.univ_name Prims.list,FStar_Syntax_Syntax.term'
                                                FStar_Syntax_Syntax.syntax)
      FStar_Pervasives_Native.tuple2 -> binding
  =
  fun x  ->
    fun t  ->
      match x with
      | FStar_Util.Inl x1 ->
          let x2 =
            let uu___140_12454 = x1 in
            {
              FStar_Syntax_Syntax.ppname =
                (uu___140_12454.FStar_Syntax_Syntax.ppname);
              FStar_Syntax_Syntax.index =
                (uu___140_12454.FStar_Syntax_Syntax.index);
              FStar_Syntax_Syntax.sort = (FStar_Pervasives_Native.snd t)
            } in
          Binding_var x2
      | FStar_Util.Inr fv ->
          Binding_lid
            (((fv.FStar_Syntax_Syntax.fv_name).FStar_Syntax_Syntax.v), t)
let push_let_binding:
  env -> FStar_Syntax_Syntax.lbname -> FStar_Syntax_Syntax.tscheme -> env =
  fun env  ->
    fun lb  -> fun ts  -> push_local_binding env (binding_of_lb lb ts)
let push_module: env -> FStar_Syntax_Syntax.modul -> env =
  fun env  ->
    fun m  ->
      add_sigelts env m.FStar_Syntax_Syntax.exports;
      (let uu___141_12489 = env in
       {
         solver = (uu___141_12489.solver);
         range = (uu___141_12489.range);
         curmodule = (uu___141_12489.curmodule);
         gamma = [];
         gamma_cache = (uu___141_12489.gamma_cache);
         modules = (m :: (env.modules));
         expected_typ = FStar_Pervasives_Native.None;
         sigtab = (uu___141_12489.sigtab);
         is_pattern = (uu___141_12489.is_pattern);
         instantiate_imp = (uu___141_12489.instantiate_imp);
         effects = (uu___141_12489.effects);
         generalize = (uu___141_12489.generalize);
         letrecs = (uu___141_12489.letrecs);
         top_level = (uu___141_12489.top_level);
         check_uvars = (uu___141_12489.check_uvars);
         use_eq = (uu___141_12489.use_eq);
         is_iface = (uu___141_12489.is_iface);
         admit = (uu___141_12489.admit);
         lax = (uu___141_12489.lax);
         lax_universes = (uu___141_12489.lax_universes);
         failhard = (uu___141_12489.failhard);
         nosynth = (uu___141_12489.nosynth);
         type_of = (uu___141_12489.type_of);
         universe_of = (uu___141_12489.universe_of);
         use_bv_sorts = (uu___141_12489.use_bv_sorts);
         qname_and_index = (uu___141_12489.qname_and_index);
         proof_ns = (uu___141_12489.proof_ns);
         synth = (uu___141_12489.synth);
         is_native_tactic = (uu___141_12489.is_native_tactic);
         identifier_info = (uu___141_12489.identifier_info)
       })
let push_univ_vars: env -> FStar_Syntax_Syntax.univ_names -> env =
  fun env  ->
    fun xs  ->
      FStar_List.fold_left
        (fun env1  -> fun x  -> push_local_binding env1 (Binding_univ x)) env
        xs
let open_universes_in:
  env ->
    FStar_Syntax_Syntax.univ_names ->
      FStar_Syntax_Syntax.term Prims.list ->
        (env,FStar_Syntax_Syntax.univ_names,FStar_Syntax_Syntax.term
                                              Prims.list)
          FStar_Pervasives_Native.tuple3
  =
  fun env  ->
    fun uvs  ->
      fun terms  ->
        let uu____12526 = FStar_Syntax_Subst.univ_var_opening uvs in
        match uu____12526 with
        | (univ_subst,univ_vars) ->
            let env' = push_univ_vars env univ_vars in
            let uu____12554 =
              FStar_List.map (FStar_Syntax_Subst.subst univ_subst) terms in
            (env', univ_vars, uu____12554)
let set_expected_typ: env -> FStar_Syntax_Syntax.typ -> env =
  fun env  ->
    fun t  ->
      let uu___142_12569 = env in
      {
        solver = (uu___142_12569.solver);
        range = (uu___142_12569.range);
        curmodule = (uu___142_12569.curmodule);
        gamma = (uu___142_12569.gamma);
        gamma_cache = (uu___142_12569.gamma_cache);
        modules = (uu___142_12569.modules);
        expected_typ = (FStar_Pervasives_Native.Some t);
        sigtab = (uu___142_12569.sigtab);
        is_pattern = (uu___142_12569.is_pattern);
        instantiate_imp = (uu___142_12569.instantiate_imp);
        effects = (uu___142_12569.effects);
        generalize = (uu___142_12569.generalize);
        letrecs = (uu___142_12569.letrecs);
        top_level = (uu___142_12569.top_level);
        check_uvars = (uu___142_12569.check_uvars);
        use_eq = false;
        is_iface = (uu___142_12569.is_iface);
        admit = (uu___142_12569.admit);
        lax = (uu___142_12569.lax);
        lax_universes = (uu___142_12569.lax_universes);
        failhard = (uu___142_12569.failhard);
        nosynth = (uu___142_12569.nosynth);
        type_of = (uu___142_12569.type_of);
        universe_of = (uu___142_12569.universe_of);
        use_bv_sorts = (uu___142_12569.use_bv_sorts);
        qname_and_index = (uu___142_12569.qname_and_index);
        proof_ns = (uu___142_12569.proof_ns);
        synth = (uu___142_12569.synth);
        is_native_tactic = (uu___142_12569.is_native_tactic);
        identifier_info = (uu___142_12569.identifier_info)
      }
let expected_typ:
  env -> FStar_Syntax_Syntax.typ FStar_Pervasives_Native.option =
  fun env  ->
    match env.expected_typ with
    | FStar_Pervasives_Native.None  -> FStar_Pervasives_Native.None
    | FStar_Pervasives_Native.Some t -> FStar_Pervasives_Native.Some t
let clear_expected_typ:
  env ->
    (env,FStar_Syntax_Syntax.typ FStar_Pervasives_Native.option)
      FStar_Pervasives_Native.tuple2
  =
  fun env_  ->
    let uu____12595 = expected_typ env_ in
    ((let uu___143_12601 = env_ in
      {
        solver = (uu___143_12601.solver);
        range = (uu___143_12601.range);
        curmodule = (uu___143_12601.curmodule);
        gamma = (uu___143_12601.gamma);
        gamma_cache = (uu___143_12601.gamma_cache);
        modules = (uu___143_12601.modules);
        expected_typ = FStar_Pervasives_Native.None;
        sigtab = (uu___143_12601.sigtab);
        is_pattern = (uu___143_12601.is_pattern);
        instantiate_imp = (uu___143_12601.instantiate_imp);
        effects = (uu___143_12601.effects);
        generalize = (uu___143_12601.generalize);
        letrecs = (uu___143_12601.letrecs);
        top_level = (uu___143_12601.top_level);
        check_uvars = (uu___143_12601.check_uvars);
        use_eq = false;
        is_iface = (uu___143_12601.is_iface);
        admit = (uu___143_12601.admit);
        lax = (uu___143_12601.lax);
        lax_universes = (uu___143_12601.lax_universes);
        failhard = (uu___143_12601.failhard);
        nosynth = (uu___143_12601.nosynth);
        type_of = (uu___143_12601.type_of);
        universe_of = (uu___143_12601.universe_of);
        use_bv_sorts = (uu___143_12601.use_bv_sorts);
        qname_and_index = (uu___143_12601.qname_and_index);
        proof_ns = (uu___143_12601.proof_ns);
        synth = (uu___143_12601.synth);
        is_native_tactic = (uu___143_12601.is_native_tactic);
        identifier_info = (uu___143_12601.identifier_info)
      }), uu____12595)
let finish_module: env -> FStar_Syntax_Syntax.modul -> env =
  let empty_lid = FStar_Ident.lid_of_ids [FStar_Ident.id_of_text ""] in
  fun env  ->
    fun m  ->
      let sigs =
        if
          FStar_Ident.lid_equals m.FStar_Syntax_Syntax.name
            FStar_Parser_Const.prims_lid
        then
          let uu____12616 =
            FStar_All.pipe_right env.gamma
              (FStar_List.collect
                 (fun uu___121_12626  ->
                    match uu___121_12626 with
                    | Binding_sig (uu____12629,se) -> [se]
                    | uu____12635 -> [])) in
          FStar_All.pipe_right uu____12616 FStar_List.rev
        else m.FStar_Syntax_Syntax.exports in
      add_sigelts env sigs;
      (let uu___144_12642 = env in
       {
         solver = (uu___144_12642.solver);
         range = (uu___144_12642.range);
         curmodule = empty_lid;
         gamma = [];
         gamma_cache = (uu___144_12642.gamma_cache);
         modules = (m :: (env.modules));
         expected_typ = (uu___144_12642.expected_typ);
         sigtab = (uu___144_12642.sigtab);
         is_pattern = (uu___144_12642.is_pattern);
         instantiate_imp = (uu___144_12642.instantiate_imp);
         effects = (uu___144_12642.effects);
         generalize = (uu___144_12642.generalize);
         letrecs = (uu___144_12642.letrecs);
         top_level = (uu___144_12642.top_level);
         check_uvars = (uu___144_12642.check_uvars);
         use_eq = (uu___144_12642.use_eq);
         is_iface = (uu___144_12642.is_iface);
         admit = (uu___144_12642.admit);
         lax = (uu___144_12642.lax);
         lax_universes = (uu___144_12642.lax_universes);
         failhard = (uu___144_12642.failhard);
         nosynth = (uu___144_12642.nosynth);
         type_of = (uu___144_12642.type_of);
         universe_of = (uu___144_12642.universe_of);
         use_bv_sorts = (uu___144_12642.use_bv_sorts);
         qname_and_index = (uu___144_12642.qname_and_index);
         proof_ns = (uu___144_12642.proof_ns);
         synth = (uu___144_12642.synth);
         is_native_tactic = (uu___144_12642.is_native_tactic);
         identifier_info = (uu___144_12642.identifier_info)
       })
let uvars_in_env: env -> FStar_Syntax_Syntax.uvars =
  fun env  ->
    let no_uvs = FStar_Syntax_Free.new_uv_set () in
    let ext out uvs = FStar_Util.set_union out uvs in
    let rec aux out g =
      match g with
      | [] -> out
      | (Binding_univ uu____12724)::tl1 -> aux out tl1
      | (Binding_lid (uu____12728,(uu____12729,t)))::tl1 ->
          let uu____12744 =
            let uu____12751 = FStar_Syntax_Free.uvars t in
            ext out uu____12751 in
          aux uu____12744 tl1
      | (Binding_var
          { FStar_Syntax_Syntax.ppname = uu____12758;
            FStar_Syntax_Syntax.index = uu____12759;
            FStar_Syntax_Syntax.sort = t;_})::tl1
          ->
          let uu____12766 =
            let uu____12773 = FStar_Syntax_Free.uvars t in
            ext out uu____12773 in
          aux uu____12766 tl1
      | (Binding_sig uu____12780)::uu____12781 -> out
      | (Binding_sig_inst uu____12790)::uu____12791 -> out in
    aux no_uvs env.gamma
let univ_vars: env -> FStar_Syntax_Syntax.universe_uvar FStar_Util.set =
  fun env  ->
    let no_univs = FStar_Syntax_Free.new_universe_uvar_set () in
    let ext out uvs = FStar_Util.set_union out uvs in
    let rec aux out g =
      match g with
      | [] -> out
      | (Binding_sig_inst uu____12847)::tl1 -> aux out tl1
      | (Binding_univ uu____12859)::tl1 -> aux out tl1
      | (Binding_lid (uu____12863,(uu____12864,t)))::tl1 ->
          let uu____12879 =
            let uu____12882 = FStar_Syntax_Free.univs t in
            ext out uu____12882 in
          aux uu____12879 tl1
      | (Binding_var
          { FStar_Syntax_Syntax.ppname = uu____12885;
            FStar_Syntax_Syntax.index = uu____12886;
            FStar_Syntax_Syntax.sort = t;_})::tl1
          ->
          let uu____12893 =
            let uu____12896 = FStar_Syntax_Free.univs t in
            ext out uu____12896 in
          aux uu____12893 tl1
      | (Binding_sig uu____12899)::uu____12900 -> out in
    aux no_univs env.gamma
let univnames: env -> FStar_Syntax_Syntax.univ_name FStar_Util.fifo_set =
  fun env  ->
    let no_univ_names = FStar_Syntax_Syntax.no_universe_names in
    let ext out uvs = FStar_Util.fifo_set_union out uvs in
    let rec aux out g =
      match g with
      | [] -> out
      | (Binding_sig_inst uu____12954)::tl1 -> aux out tl1
      | (Binding_univ uname)::tl1 ->
          let uu____12970 = FStar_Util.fifo_set_add uname out in
          aux uu____12970 tl1
      | (Binding_lid (uu____12973,(uu____12974,t)))::tl1 ->
          let uu____12989 =
            let uu____12992 = FStar_Syntax_Free.univnames t in
            ext out uu____12992 in
          aux uu____12989 tl1
      | (Binding_var
          { FStar_Syntax_Syntax.ppname = uu____12995;
            FStar_Syntax_Syntax.index = uu____12996;
            FStar_Syntax_Syntax.sort = t;_})::tl1
          ->
          let uu____13003 =
            let uu____13006 = FStar_Syntax_Free.univnames t in
            ext out uu____13006 in
          aux uu____13003 tl1
      | (Binding_sig uu____13009)::uu____13010 -> out in
    aux no_univ_names env.gamma
let bound_vars_of_bindings:
  binding Prims.list -> FStar_Syntax_Syntax.bv Prims.list =
  fun bs  ->
    FStar_All.pipe_right bs
      (FStar_List.collect
         (fun uu___122_13035  ->
            match uu___122_13035 with
            | Binding_var x -> [x]
            | Binding_lid uu____13039 -> []
            | Binding_sig uu____13044 -> []
            | Binding_univ uu____13051 -> []
            | Binding_sig_inst uu____13052 -> []))
let binders_of_bindings: binding Prims.list -> FStar_Syntax_Syntax.binders =
  fun bs  ->
    let uu____13069 =
      let uu____13072 = bound_vars_of_bindings bs in
      FStar_All.pipe_right uu____13072
        (FStar_List.map FStar_Syntax_Syntax.mk_binder) in
    FStar_All.pipe_right uu____13069 FStar_List.rev
let bound_vars: env -> FStar_Syntax_Syntax.bv Prims.list =
  fun env  -> bound_vars_of_bindings env.gamma
let all_binders: env -> FStar_Syntax_Syntax.binders =
  fun env  -> binders_of_bindings env.gamma
let print_gamma: env -> Prims.unit =
  fun env  ->
    let uu____13097 =
      let uu____13098 =
        FStar_All.pipe_right env.gamma
          (FStar_List.map
             (fun uu___123_13108  ->
                match uu___123_13108 with
                | Binding_var x ->
                    let uu____13110 = FStar_Syntax_Print.bv_to_string x in
                    Prims.strcat "Binding_var " uu____13110
                | Binding_univ u ->
                    Prims.strcat "Binding_univ " u.FStar_Ident.idText
                | Binding_lid (l,uu____13113) ->
                    let uu____13114 = FStar_Ident.string_of_lid l in
                    Prims.strcat "Binding_lid " uu____13114
                | Binding_sig (ls,uu____13116) ->
                    let uu____13121 =
                      let uu____13122 =
                        FStar_All.pipe_right ls
                          (FStar_List.map FStar_Ident.string_of_lid) in
                      FStar_All.pipe_right uu____13122
                        (FStar_String.concat ", ") in
                    Prims.strcat "Binding_sig " uu____13121
                | Binding_sig_inst (ls,uu____13132,uu____13133) ->
                    let uu____13138 =
                      let uu____13139 =
                        FStar_All.pipe_right ls
                          (FStar_List.map FStar_Ident.string_of_lid) in
                      FStar_All.pipe_right uu____13139
                        (FStar_String.concat ", ") in
                    Prims.strcat "Binding_sig_inst " uu____13138)) in
      FStar_All.pipe_right uu____13098 (FStar_String.concat "::\n") in
    FStar_All.pipe_right uu____13097 (FStar_Util.print1 "%s\n")
let eq_gamma: env -> env -> Prims.bool =
  fun env  ->
    fun env'  ->
      let uu____13158 = FStar_Util.physical_equality env.gamma env'.gamma in
      if uu____13158
      then true
      else
        (let g = all_binders env in
         let g' = all_binders env' in
         ((FStar_List.length g) = (FStar_List.length g')) &&
           (FStar_List.forall2
              (fun uu____13186  ->
                 fun uu____13187  ->
                   match (uu____13186, uu____13187) with
                   | ((b1,uu____13205),(b2,uu____13207)) ->
                       FStar_Syntax_Syntax.bv_eq b1 b2) g g'))
let fold_env: 'a . env -> ('a -> binding -> 'a) -> 'a -> 'a =
  fun env  ->
    fun f  ->
      fun a  ->
        FStar_List.fold_right (fun e  -> fun a1  -> f a1 e) env.gamma a
let string_of_delta_level: delta_level -> Prims.string =
  fun uu___124_13254  ->
    match uu___124_13254 with
    | NoDelta  -> "NoDelta"
    | Inlining  -> "Inlining"
    | Eager_unfolding_only  -> "Eager_unfolding_only"
    | Unfold uu____13255 -> "Unfold _"
    | UnfoldTac  -> "UnfoldTac"
let lidents: env -> FStar_Ident.lident Prims.list =
  fun env  ->
    let keys =
      FStar_List.fold_left
        (fun keys  ->
           fun uu___125_13274  ->
             match uu___125_13274 with
             | Binding_sig (lids,uu____13280) -> FStar_List.append lids keys
             | uu____13285 -> keys) [] env.gamma in
    FStar_Util.smap_fold (sigtab env)
      (fun uu____13291  ->
         fun v1  ->
           fun keys1  ->
             FStar_List.append (FStar_Syntax_Util.lids_of_sigelt v1) keys1)
      keys
let should_enc_path: env -> Prims.string Prims.list -> Prims.bool =
  fun env  ->
    fun path  ->
      let rec list_prefix xs ys =
        match (xs, ys) with
        | ([],uu____13327) -> true
        | (x::xs1,y::ys1) -> (x = y) && (list_prefix xs1 ys1)
        | (uu____13346,uu____13347) -> false in
      let rec should_enc_path' pns path1 =
        match pns with
        | [] -> true
        | (p,b)::pns1 ->
            let uu____13384 = list_prefix p path1 in
            if uu____13384 then b else should_enc_path' pns1 path1 in
      should_enc_path' (FStar_List.flatten env.proof_ns) path
let should_enc_lid: env -> FStar_Ident.lident -> Prims.bool =
  fun env  ->
    fun lid  ->
      let uu____13398 = FStar_Ident.path_of_lid lid in
      should_enc_path env uu____13398
let cons_proof_ns: Prims.bool -> env -> name_prefix -> env =
  fun b  ->
    fun e  ->
      fun path  ->
        match e.proof_ns with
        | [] -> failwith "empty proof_ns stack!"
        | pns::rest ->
            let pns' = (path, b) :: pns in
            let uu___145_13428 = e in
            {
              solver = (uu___145_13428.solver);
              range = (uu___145_13428.range);
              curmodule = (uu___145_13428.curmodule);
              gamma = (uu___145_13428.gamma);
              gamma_cache = (uu___145_13428.gamma_cache);
              modules = (uu___145_13428.modules);
              expected_typ = (uu___145_13428.expected_typ);
              sigtab = (uu___145_13428.sigtab);
              is_pattern = (uu___145_13428.is_pattern);
              instantiate_imp = (uu___145_13428.instantiate_imp);
              effects = (uu___145_13428.effects);
              generalize = (uu___145_13428.generalize);
              letrecs = (uu___145_13428.letrecs);
              top_level = (uu___145_13428.top_level);
              check_uvars = (uu___145_13428.check_uvars);
              use_eq = (uu___145_13428.use_eq);
              is_iface = (uu___145_13428.is_iface);
              admit = (uu___145_13428.admit);
              lax = (uu___145_13428.lax);
              lax_universes = (uu___145_13428.lax_universes);
              failhard = (uu___145_13428.failhard);
              nosynth = (uu___145_13428.nosynth);
              type_of = (uu___145_13428.type_of);
              universe_of = (uu___145_13428.universe_of);
              use_bv_sorts = (uu___145_13428.use_bv_sorts);
              qname_and_index = (uu___145_13428.qname_and_index);
              proof_ns = (pns' :: rest);
              synth = (uu___145_13428.synth);
              is_native_tactic = (uu___145_13428.is_native_tactic);
              identifier_info = (uu___145_13428.identifier_info)
            }
let add_proof_ns: env -> name_prefix -> env =
  fun e  -> fun path  -> cons_proof_ns true e path
let rem_proof_ns: env -> name_prefix -> env =
  fun e  -> fun path  -> cons_proof_ns false e path
let push_proof_ns: env -> env =
  fun e  ->
    let uu___146_13455 = e in
    {
      solver = (uu___146_13455.solver);
      range = (uu___146_13455.range);
      curmodule = (uu___146_13455.curmodule);
      gamma = (uu___146_13455.gamma);
      gamma_cache = (uu___146_13455.gamma_cache);
      modules = (uu___146_13455.modules);
      expected_typ = (uu___146_13455.expected_typ);
      sigtab = (uu___146_13455.sigtab);
      is_pattern = (uu___146_13455.is_pattern);
      instantiate_imp = (uu___146_13455.instantiate_imp);
      effects = (uu___146_13455.effects);
      generalize = (uu___146_13455.generalize);
      letrecs = (uu___146_13455.letrecs);
      top_level = (uu___146_13455.top_level);
      check_uvars = (uu___146_13455.check_uvars);
      use_eq = (uu___146_13455.use_eq);
      is_iface = (uu___146_13455.is_iface);
      admit = (uu___146_13455.admit);
      lax = (uu___146_13455.lax);
      lax_universes = (uu___146_13455.lax_universes);
      failhard = (uu___146_13455.failhard);
      nosynth = (uu___146_13455.nosynth);
      type_of = (uu___146_13455.type_of);
      universe_of = (uu___146_13455.universe_of);
      use_bv_sorts = (uu___146_13455.use_bv_sorts);
      qname_and_index = (uu___146_13455.qname_and_index);
      proof_ns = ([] :: (e.proof_ns));
      synth = (uu___146_13455.synth);
      is_native_tactic = (uu___146_13455.is_native_tactic);
      identifier_info = (uu___146_13455.identifier_info)
    }
let pop_proof_ns: env -> env =
  fun e  ->
    match e.proof_ns with
    | [] -> failwith "empty proof_ns stack!"
    | uu____13470::rest ->
        let uu___147_13474 = e in
        {
          solver = (uu___147_13474.solver);
          range = (uu___147_13474.range);
          curmodule = (uu___147_13474.curmodule);
          gamma = (uu___147_13474.gamma);
          gamma_cache = (uu___147_13474.gamma_cache);
          modules = (uu___147_13474.modules);
          expected_typ = (uu___147_13474.expected_typ);
          sigtab = (uu___147_13474.sigtab);
          is_pattern = (uu___147_13474.is_pattern);
          instantiate_imp = (uu___147_13474.instantiate_imp);
          effects = (uu___147_13474.effects);
          generalize = (uu___147_13474.generalize);
          letrecs = (uu___147_13474.letrecs);
          top_level = (uu___147_13474.top_level);
          check_uvars = (uu___147_13474.check_uvars);
          use_eq = (uu___147_13474.use_eq);
          is_iface = (uu___147_13474.is_iface);
          admit = (uu___147_13474.admit);
          lax = (uu___147_13474.lax);
          lax_universes = (uu___147_13474.lax_universes);
          failhard = (uu___147_13474.failhard);
          nosynth = (uu___147_13474.nosynth);
          type_of = (uu___147_13474.type_of);
          universe_of = (uu___147_13474.universe_of);
          use_bv_sorts = (uu___147_13474.use_bv_sorts);
          qname_and_index = (uu___147_13474.qname_and_index);
          proof_ns = rest;
          synth = (uu___147_13474.synth);
          is_native_tactic = (uu___147_13474.is_native_tactic);
          identifier_info = (uu___147_13474.identifier_info)
        }
let get_proof_ns: env -> proof_namespace = fun e  -> e.proof_ns
let set_proof_ns: proof_namespace -> env -> env =
  fun ns  ->
    fun e  ->
      let uu___148_13487 = e in
      {
        solver = (uu___148_13487.solver);
        range = (uu___148_13487.range);
        curmodule = (uu___148_13487.curmodule);
        gamma = (uu___148_13487.gamma);
        gamma_cache = (uu___148_13487.gamma_cache);
        modules = (uu___148_13487.modules);
        expected_typ = (uu___148_13487.expected_typ);
        sigtab = (uu___148_13487.sigtab);
        is_pattern = (uu___148_13487.is_pattern);
        instantiate_imp = (uu___148_13487.instantiate_imp);
        effects = (uu___148_13487.effects);
        generalize = (uu___148_13487.generalize);
        letrecs = (uu___148_13487.letrecs);
        top_level = (uu___148_13487.top_level);
        check_uvars = (uu___148_13487.check_uvars);
        use_eq = (uu___148_13487.use_eq);
        is_iface = (uu___148_13487.is_iface);
        admit = (uu___148_13487.admit);
        lax = (uu___148_13487.lax);
        lax_universes = (uu___148_13487.lax_universes);
        failhard = (uu___148_13487.failhard);
        nosynth = (uu___148_13487.nosynth);
        type_of = (uu___148_13487.type_of);
        universe_of = (uu___148_13487.universe_of);
        use_bv_sorts = (uu___148_13487.use_bv_sorts);
        qname_and_index = (uu___148_13487.qname_and_index);
        proof_ns = ns;
        synth = (uu___148_13487.synth);
        is_native_tactic = (uu___148_13487.is_native_tactic);
        identifier_info = (uu___148_13487.identifier_info)
      }
let string_of_proof_ns: env -> Prims.string =
  fun env  ->
    let string_of_proof_ns' pns =
      let uu____13516 =
        FStar_List.map
          (fun fpns  ->
             let uu____13538 =
               let uu____13539 =
                 let uu____13540 =
                   FStar_List.map
                     (fun uu____13552  ->
                        match uu____13552 with
                        | (p,b) ->
                            Prims.strcat (if b then "+" else "-")
                              (FStar_String.concat "." p)) fpns in
                 FStar_String.concat "," uu____13540 in
               Prims.strcat uu____13539 "]" in
             Prims.strcat "[" uu____13538) pns in
      FStar_String.concat ";" uu____13516 in
    string_of_proof_ns' env.proof_ns
let dummy_solver: solver_t =
  {
    init = (fun uu____13568  -> ());
    push = (fun uu____13570  -> ());
    pop = (fun uu____13572  -> ());
    encode_modul = (fun uu____13575  -> fun uu____13576  -> ());
    encode_sig = (fun uu____13579  -> fun uu____13580  -> ());
    preprocess =
      (fun e  ->
         fun g  ->
           let uu____13586 =
             let uu____13593 = FStar_Options.peek () in (e, g, uu____13593) in
           [uu____13586]);
    solve = (fun uu____13609  -> fun uu____13610  -> fun uu____13611  -> ());
    is_trivial = (fun uu____13618  -> fun uu____13619  -> false);
    finish = (fun uu____13621  -> ());
    refresh = (fun uu____13623  -> ())
  }