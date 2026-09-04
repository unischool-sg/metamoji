.class final Lcom/metamoji/video/AmvFullscreenActivity$Companion$ActivityState;
.super Ljava/lang/Object;
.source "AmvFullscreenActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/video/AmvFullscreenActivity$Companion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ActivityState"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0002\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u000bJ\u0006\u0010\u0012\u001a\u00020\u0011J\u000e\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u0006\u001a\u00020\u0005J\u0006\u0010\u0014\u001a\u00020\u0011R\u001e\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0005@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0016\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000c\u001a\u0004\u0018\u00010\r8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/metamoji/video/AmvFullscreenActivity$Companion$ActivityState;",
        "",
        "<init>",
        "()V",
        "value",
        "Lcom/metamoji/video/AmvFullscreenActivity$State;",
        "state",
        "getState",
        "()Lcom/metamoji/video/AmvFullscreenActivity$State;",
        "activity",
        "Ljava/lang/ref/WeakReference;",
        "Lcom/metamoji/video/AmvFullscreenActivity;",
        "source",
        "Lcom/metamoji/video/IAmvSource;",
        "getSource",
        "()Lcom/metamoji/video/IAmvSource;",
        "onCreated",
        "",
        "onDestroy",
        "changeState",
        "close",
        "video"
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
.field private activity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/metamoji/video/AmvFullscreenActivity;",
            ">;"
        }
    .end annotation
.end field

.field private state:Lcom/metamoji/video/AmvFullscreenActivity$State;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    sget-object v0, Lcom/metamoji/video/AmvFullscreenActivity$State;->NONE:Lcom/metamoji/video/AmvFullscreenActivity$State;

    iput-object v0, p0, Lcom/metamoji/video/AmvFullscreenActivity$Companion$ActivityState;->state:Lcom/metamoji/video/AmvFullscreenActivity$State;

    return-void
.end method

.method private final getSource()Lcom/metamoji/video/IAmvSource;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/metamoji/video/AmvFullscreenActivity$Companion$ActivityState;->activity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/video/AmvFullscreenActivity;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/metamoji/video/AmvFullscreenActivity;->access$getMSource$p(Lcom/metamoji/video/AmvFullscreenActivity;)Lcom/metamoji/video/IAmvSource;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final changeState(Lcom/metamoji/video/AmvFullscreenActivity$State;)V
    .locals 2

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    iput-object p1, p0, Lcom/metamoji/video/AmvFullscreenActivity$Companion$ActivityState;->state:Lcom/metamoji/video/AmvFullscreenActivity$State;

    .line 116
    sget-object v0, Lcom/metamoji/video/AmvFullscreenActivity;->Companion:Lcom/metamoji/video/AmvFullscreenActivity$Companion;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvFullscreenActivity$Companion;->getStateListener()Lcom/metamoji/lib/utils/Funcies2;

    move-result-object v0

    invoke-direct {p0}, Lcom/metamoji/video/AmvFullscreenActivity$Companion$ActivityState;->getSource()Lcom/metamoji/video/IAmvSource;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/lib/utils/Funcies2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final close()V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/metamoji/video/AmvFullscreenActivity$Companion$ActivityState;->state:Lcom/metamoji/video/AmvFullscreenActivity$State;

    sget-object v1, Lcom/metamoji/video/AmvFullscreenActivity$State;->PINP:Lcom/metamoji/video/AmvFullscreenActivity$State;

    if-ne v0, v1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/metamoji/video/AmvFullscreenActivity$Companion$ActivityState;->activity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/video/AmvFullscreenActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/video/AmvFullscreenActivity;->finishAndRemoveTask()V

    :cond_0
    return-void
.end method

.method public final getState()Lcom/metamoji/video/AmvFullscreenActivity$State;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/metamoji/video/AmvFullscreenActivity$Companion$ActivityState;->state:Lcom/metamoji/video/AmvFullscreenActivity$State;

    return-object v0
.end method

.method public final onCreated(Lcom/metamoji/video/AmvFullscreenActivity;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/metamoji/video/AmvFullscreenActivity$Companion$ActivityState;->activity:Ljava/lang/ref/WeakReference;

    .line 104
    sget-object p1, Lcom/metamoji/video/AmvFullscreenActivity$State;->FULL:Lcom/metamoji/video/AmvFullscreenActivity$State;

    iput-object p1, p0, Lcom/metamoji/video/AmvFullscreenActivity$Companion$ActivityState;->state:Lcom/metamoji/video/AmvFullscreenActivity$State;

    .line 105
    sget-object p1, Lcom/metamoji/video/AmvFullscreenActivity;->Companion:Lcom/metamoji/video/AmvFullscreenActivity$Companion;

    invoke-virtual {p1}, Lcom/metamoji/video/AmvFullscreenActivity$Companion;->getStateListener()Lcom/metamoji/lib/utils/Funcies2;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/video/AmvFullscreenActivity$Companion$ActivityState;->state:Lcom/metamoji/video/AmvFullscreenActivity$State;

    invoke-direct {p0}, Lcom/metamoji/video/AmvFullscreenActivity$Companion$ActivityState;->getSource()Lcom/metamoji/video/IAmvSource;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/lib/utils/Funcies2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 3

    .line 108
    iget-object v0, p0, Lcom/metamoji/video/AmvFullscreenActivity$Companion$ActivityState;->activity:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/video/AmvFullscreenActivity$Companion$ActivityState;->state:Lcom/metamoji/video/AmvFullscreenActivity$State;

    sget-object v1, Lcom/metamoji/video/AmvFullscreenActivity$State;->NONE:Lcom/metamoji/video/AmvFullscreenActivity$State;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 109
    iput-object v0, p0, Lcom/metamoji/video/AmvFullscreenActivity$Companion$ActivityState;->activity:Ljava/lang/ref/WeakReference;

    .line 110
    sget-object v1, Lcom/metamoji/video/AmvFullscreenActivity$State;->NONE:Lcom/metamoji/video/AmvFullscreenActivity$State;

    iput-object v1, p0, Lcom/metamoji/video/AmvFullscreenActivity$Companion$ActivityState;->state:Lcom/metamoji/video/AmvFullscreenActivity$State;

    .line 111
    sget-object v1, Lcom/metamoji/video/AmvFullscreenActivity;->Companion:Lcom/metamoji/video/AmvFullscreenActivity$Companion;

    invoke-virtual {v1}, Lcom/metamoji/video/AmvFullscreenActivity$Companion;->getStateListener()Lcom/metamoji/lib/utils/Funcies2;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/video/AmvFullscreenActivity$Companion$ActivityState;->state:Lcom/metamoji/video/AmvFullscreenActivity$State;

    invoke-virtual {v1, v2, v0}, Lcom/metamoji/lib/utils/Funcies2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
