.class public Lcom/metamoji/lib/utils/Listeners$IndependentInvoker;
.super Ljava/lang/Object;
.source "Listeners.kt"

# interfaces
.implements Lcom/metamoji/lib/utils/ListenerKey;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lib/utils/Listeners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IndependentInvoker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/metamoji/lib/utils/ListenerKey<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u000c\u0008\u0096\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001B\u001b\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0015\u0010\u000c\u001a\u00020\u00042\u0006\u0010\r\u001a\u00028\u0000H\u0017\u00a2\u0006\u0002\u0010\u000eJ\u0008\u0010\u000f\u001a\u00020\u0004H\u0017R(\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/Listeners$IndependentInvoker;",
        "Lcom/metamoji/lib/utils/ListenerKey;",
        "callback",
        "Lkotlin/Function1;",
        "",
        "<init>",
        "(Lcom/metamoji/lib/utils/Listeners;Lkotlin/jvm/functions/Function1;)V",
        "fn",
        "getFn",
        "()Lkotlin/jvm/functions/Function1;",
        "setFn",
        "(Lkotlin/jvm/functions/Function1;)V",
        "invoke",
        "arg",
        "(Ljava/lang/Object;)V",
        "dispose",
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
.field private fn:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/metamoji/lib/utils/Listeners;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/lib/utils/Listeners<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/metamoji/lib/utils/Listeners;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iput-object p1, p0, Lcom/metamoji/lib/utils/Listeners$IndependentInvoker;->this$0:Lcom/metamoji/lib/utils/Listeners;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p2, p0, Lcom/metamoji/lib/utils/Listeners$IndependentInvoker;->fn:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/metamoji/lib/utils/Listeners$IndependentInvoker;->this$0:Lcom/metamoji/lib/utils/Listeners;

    invoke-static {v0}, Lcom/metamoji/lib/utils/Listeners;->access$getBusy$p(Lcom/metamoji/lib/utils/Listeners;)Z

    move-result v0

    .line 40
    iget-object v1, p0, Lcom/metamoji/lib/utils/Listeners$IndependentInvoker;->this$0:Lcom/metamoji/lib/utils/Listeners;

    if-nez v0, :cond_0

    .line 38
    invoke-static {v1}, Lcom/metamoji/lib/utils/Listeners;->access$getFunctions$p(Lcom/metamoji/lib/utils/Listeners;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 40
    :cond_0
    invoke-static {v1}, Lcom/metamoji/lib/utils/Listeners;->access$getTobeDeleted$p(Lcom/metamoji/lib/utils/Listeners;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/metamoji/lib/utils/Listeners$IndependentInvoker;->fn:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final getFn()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "TT;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/metamoji/lib/utils/Listeners$IndependentInvoker;->fn:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/metamoji/lib/utils/Listeners$IndependentInvoker;->fn:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final setFn(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 28
    iput-object p1, p0, Lcom/metamoji/lib/utils/Listeners$IndependentInvoker;->fn:Lkotlin/jvm/functions/Function1;

    return-void
.end method
