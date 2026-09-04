.class public final Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$enableGesture$1$onSwiped$2;
.super Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;
.source "RecyclerViewBinding.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$enableGesture$1;->onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback<",
        "Lcom/google/android/material/snackbar/Snackbar;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u001a\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/metamoji/lib/utils/binding/impl/RecyclerViewBinding$enableGesture$1$onSwiped$2",
        "Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;",
        "Lcom/google/android/material/snackbar/Snackbar;",
        "onDismissed",
        "",
        "transientBottomBar",
        "event",
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


# instance fields
.field final synthetic $deletion:Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$IDeletion;

.field final synthetic $undo:Lkotlin/jvm/internal/Ref$BooleanRef;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$IDeletion;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$enableGesture$1$onSwiped$2;->$undo:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p2, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$enableGesture$1$onSwiped$2;->$deletion:Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$IDeletion;

    .line 116
    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissed(Lcom/google/android/material/snackbar/Snackbar;I)V
    .locals 0

    .line 118
    iget-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$enableGesture$1$onSwiped$2;->$undo:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean p1, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez p1, :cond_0

    .line 120
    iget-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$enableGesture$1$onSwiped$2;->$deletion:Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$IDeletion;

    check-cast p1, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$IPendingDeletion;

    invoke-interface {p1}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$IPendingDeletion;->commit()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onDismissed(Ljava/lang/Object;I)V
    .locals 0

    .line 116
    check-cast p1, Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$enableGesture$1$onSwiped$2;->onDismissed(Lcom/google/android/material/snackbar/Snackbar;I)V

    return-void
.end method
