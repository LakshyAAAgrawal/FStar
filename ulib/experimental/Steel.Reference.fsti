(*
   Copyright 2020 Microsoft Research

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.
*)

module Steel.Reference
open Steel.Effect
open Steel.Effect.Atomic
open Steel.Memory
open Steel.FractionalPermission
open FStar.Ghost
module H = Steel.HigherReference
module U = FStar.Universe

#set-options "--print_universes --print_implicits"

val ref (a:Type u#0) : Type u#0

val pts_to (#a:Type u#0) (r:ref a) (p:perm) (v:erased a) : slprop u#1

val alloc (#a:Type) (x:a)
  : SteelT (ref a) emp (fun r -> pts_to r full_perm x)

val read (#a:Type) (#p:perm) (#v:erased a) (r:ref a)
  : SteelT (x:a{x==Ghost.reveal v}) (pts_to r p v) (fun x -> pts_to r p x)

val read_refine (#a:Type0) (#p:perm) (q:a -> slprop) (r:ref a)
  : SteelT a (h_exists (fun (v:a) -> pts_to r p v `star` q v))
             (fun v -> pts_to r p v `star` q v)

val write (#a:Type0) (#v:erased a) (r:ref a) (x:a)
  : SteelT unit (pts_to r full_perm v) (fun _ -> pts_to r full_perm x)

val free (#a:Type0) (#v:erased a) (r:ref a)
  : SteelT unit (pts_to r full_perm v) (fun _ -> emp)

val share_atomic (#a:Type0) (#uses:_) (#p:perm) (#v:erased a) (r:ref a)
  : SteelAtomic unit uses unobservable
    (pts_to r p v)
    (fun _ -> pts_to r (half_perm p) v `star` pts_to r (half_perm p) v)

val gather_atomic (#a:Type0) (#uses:_) (#p0:perm) (#p1:perm) (#v0 #v1:erased a) (r:ref a)
  : SteelAtomic (_:unit{v0 == v1}) uses unobservable
    (pts_to r p0 v0 `star` pts_to r p1 v1)
    (fun _ -> pts_to r (sum_perm p0 p1) v0)

val cas (#t:eqtype)
        (#uses:inames)
        (r:ref t)
        (v:Ghost.erased t)
        (v_old:t)
        (v_new:t)
  : SteelAtomic
        (b:bool{b <==> (Ghost.reveal v == v_old)})
        uses
        observable
        (pts_to r full_perm v)
        (fun b -> if b then pts_to r full_perm v_new else pts_to r full_perm v)

val raise_ref (#a:Type u#0) (r:ref a) (p:perm) (v:erased a)
  : SteelT (H.ref (U.raise_t a))
           (pts_to r p v)
           (fun r' -> H.pts_to r' p (U.raise_val (Ghost.reveal v)))

val lower_ref (#a:Type u#0) (r:H.ref (U.raise_t a)) (p:perm) (v:erased (U.raise_t a))
  : SteelT (ref a)
           (H.pts_to r p v)
           (fun r' -> pts_to r' p (U.downgrade_val (Ghost.reveal v)))

val pts_to_witinv (#a:Type u#0) (r:ref a) (p:perm) : Lemma (is_witness_invariant (pts_to r p))

val pts_to_framon (#a:Type u#0) (r:ref a) (p:perm) : Lemma (is_frame_monotonic (pts_to r p))
