.class public interface abstract Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$IPendingDeletion;
.super Ljava/lang/Object;
.source "RecyclerViewBinding.kt"

# interfaces
.implements Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$IDeletion;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IPendingDeletion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0008\u001a\u00020\tH&R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0005\u00a8\u0006\n\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$IPendingDeletion;",
        "Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$IDeletion;",
        "itemLabel",
        "",
        "getItemLabel",
        "()Ljava/lang/String;",
        "undoButtonLabel",
        "getUndoButtonLabel",
        "rollback",
        "",
        "utils"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract getItemLabel()Ljava/lang/String;
.end method

.method public abstract getUndoButtonLabel()Ljava/lang/String;
.end method

.method public abstract rollback()V
.end method
