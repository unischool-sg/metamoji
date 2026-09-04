.class public final Lcom/metamoji/un/flip/UnFlipUnitManager$DoubleTapTimeoutJob;
.super Ljava/lang/Object;
.source "UnFlipUnitManager.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/flip/UnFlipUnitManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DoubleTapTimeoutJob"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0008\u0010\n\u001a\u00020\u000bH\u0016J\u0006\u0010\u000c\u001a\u00020\u000bR\u0010\u0010\u0008\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/metamoji/un/flip/UnFlipUnitManager$DoubleTapTimeoutJob;",
        "Ljava/lang/Runnable;",
        "manager",
        "Lcom/metamoji/un/flip/UnFlipUnitManager;",
        "ev",
        "Lcom/metamoji/df/sprite/TouchEvent;",
        "<init>",
        "(Lcom/metamoji/un/flip/UnFlipUnitManager;Lcom/metamoji/df/sprite/TouchEvent;)V",
        "mManager",
        "mEvent",
        "run",
        "",
        "cancel",
        "app"
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
.field private mEvent:Lcom/metamoji/df/sprite/TouchEvent;

.field private mManager:Lcom/metamoji/un/flip/UnFlipUnitManager;


# direct methods
.method public constructor <init>(Lcom/metamoji/un/flip/UnFlipUnitManager;Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 1

    const-string v0, "manager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/metamoji/un/flip/UnFlipUnitManager$DoubleTapTimeoutJob;->mManager:Lcom/metamoji/un/flip/UnFlipUnitManager;

    .line 38
    iput-object p2, p0, Lcom/metamoji/un/flip/UnFlipUnitManager$DoubleTapTimeoutJob;->mEvent:Lcom/metamoji/df/sprite/TouchEvent;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/metamoji/un/flip/UnFlipUnitManager$DoubleTapTimeoutJob;->mManager:Lcom/metamoji/un/flip/UnFlipUnitManager;

    return-void
.end method

.method public run()V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/metamoji/un/flip/UnFlipUnitManager$DoubleTapTimeoutJob;->mManager:Lcom/metamoji/un/flip/UnFlipUnitManager;

    if-eqz v0, :cond_2

    if-eqz v0, :cond_0

    .line 41
    iget-object v1, p0, Lcom/metamoji/un/flip/UnFlipUnitManager$DoubleTapTimeoutJob;->mEvent:Lcom/metamoji/df/sprite/TouchEvent;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/flip/UnFlipUnitManager;->onTapped(Lcom/metamoji/df/sprite/TouchEvent;)V

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/flip/UnFlipUnitManager$DoubleTapTimeoutJob;->mManager:Lcom/metamoji/un/flip/UnFlipUnitManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/metamoji/un/flip/UnFlipUnitManager;->cancelDoubleTapTimeout()V

    :cond_1
    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/metamoji/un/flip/UnFlipUnitManager$DoubleTapTimeoutJob;->mManager:Lcom/metamoji/un/flip/UnFlipUnitManager;

    :cond_2
    return-void
.end method
