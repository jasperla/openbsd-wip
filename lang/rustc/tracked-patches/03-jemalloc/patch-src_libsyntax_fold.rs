diff --git a/src/libsyntax/fold.rs b/src/libsyntax/fold.rs
index 2a70434..f138ddf 100644
--- src/libsyntax/fold.rs
+++ src/libsyntax/fold.rs
@@ -1159,6 +1159,7 @@ pub fn noop_fold_item<T: Folder>(i: P<Item>, folder: &mut T) -> SmallVector<P<It
 // fold one item into exactly one item
 pub fn noop_fold_item_simple<T: Folder>(Item {id, ident, attrs, node, vis, span}: Item,
                                         folder: &mut T) -> Item {
+    debug!("noop_fold_item_simple");
     let id = folder.new_id(id);
     let node = folder.fold_item_underscore(node);
     let ident = match node {
