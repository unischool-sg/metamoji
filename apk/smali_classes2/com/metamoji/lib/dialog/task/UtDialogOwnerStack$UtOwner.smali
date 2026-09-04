.class public final Lcom/metamoji/lib/dialog/task/UtDialogOwnerStack$UtOwner;
.super Lcom/metamoji/lib/dialog/UtDialogWeakOwner;
.source "UtDialogOwnerStack.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lib/dialog/task/UtDialogOwnerStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "UtOwner"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/metamoji/lib/dialog/task/UtDialogOwnerStack$UtOwner;",
        "Lcom/metamoji/lib/dialog/UtDialogWeakOwner;",
        "lifecycleOwner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "<init>",
        "(Lcom/metamoji/lib/dialog/task/UtDialogOwnerStack;Landroidx/lifecycle/LifecycleOwner;)V",
        "dispose",
        "",
        "dialog"
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
.field final synthetic this$0:Lcom/metamoji/lib/dialog/task/UtDialogOwnerStack;


# direct methods
.method public constructor <init>(Lcom/metamoji/lib/dialog/task/UtDialogOwnerStack;Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            ")V"
        }
    .end annotation

    const-string v0, "lifecycleOwner"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iput-object p1, p0, Lcom/metamoji/lib/dialog/task/UtDialogOwnerStack$UtOwner;->this$0:Lcom/metamoji/lib/dialog/task/UtDialogOwnerStack;

    invoke-direct {p0, p2}, Lcom/metamoji/lib/dialog/UtDialogWeakOwner;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 16
    invoke-super {p0}, Lcom/metamoji/lib/dialog/UtDialogWeakOwner;->dispose()V

    .line 17
    iget-object v0, p0, Lcom/metamoji/lib/dialog/task/UtDialogOwnerStack$UtOwner;->this$0:Lcom/metamoji/lib/dialog/task/UtDialogOwnerStack;

    invoke-static {v0}, Lcom/metamoji/lib/dialog/task/UtDialogOwnerStack;->access$getList$p(Lcom/metamoji/lib/dialog/task/UtDialogOwnerStack;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 18
    iget-object v0, p0, Lcom/metamoji/lib/dialog/task/UtDialogOwnerStack$UtOwner;->this$0:Lcom/metamoji/lib/dialog/task/UtDialogOwnerStack;

    invoke-static {v0}, Lcom/metamoji/lib/dialog/task/UtDialogOwnerStack;->access$getOwnerFlow$p(Lcom/metamoji/lib/dialog/task/UtDialogOwnerStack;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 19
    iget-object v0, p0, Lcom/metamoji/lib/dialog/task/UtDialogOwnerStack$UtOwner;->this$0:Lcom/metamoji/lib/dialog/task/UtDialogOwnerStack;

    invoke-static {v0}, Lcom/metamoji/lib/dialog/task/UtDialogOwnerStack;->access$getOwnerFlow$p(Lcom/metamoji/lib/dialog/task/UtDialogOwnerStack;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/lib/dialog/task/UtDialogOwnerStack$UtOwner;->this$0:Lcom/metamoji/lib/dialog/task/UtDialogOwnerStack;

    invoke-static {v1}, Lcom/metamoji/lib/dialog/task/UtDialogOwnerStack;->access$latest(Lcom/metamoji/lib/dialog/task/UtDialogOwnerStack;)Lcom/metamoji/lib/dialog/task/UtDialogOwnerStack$UtOwner;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
