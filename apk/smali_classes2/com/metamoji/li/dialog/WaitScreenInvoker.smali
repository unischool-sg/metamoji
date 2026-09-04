.class public final Lcom/metamoji/li/dialog/WaitScreenInvoker;
.super Ljava/lang/Object;
.source "WaitScreenInvoker.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/li/dialog/WaitScreenInvoker$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u0000 \u000c2\u00020\u0001:\u0001\u000cB\u0011\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\n\u001a\u00020\u000bH\u0016R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/metamoji/li/dialog/WaitScreenInvoker;",
        "Ljava/io/Closeable;",
        "invokeAtOnce",
        "",
        "<init>",
        "(Z)V",
        "event",
        "Lcom/metamoji/cm/ResetableEvent;",
        "getEvent",
        "()Lcom/metamoji/cm/ResetableEvent;",
        "close",
        "",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/metamoji/li/dialog/WaitScreenInvoker$Companion;


# instance fields
.field private final event:Lcom/metamoji/cm/ResetableEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/li/dialog/WaitScreenInvoker$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/li/dialog/WaitScreenInvoker$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/li/dialog/WaitScreenInvoker;->Companion:Lcom/metamoji/li/dialog/WaitScreenInvoker$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/metamoji/li/dialog/WaitScreenInvoker;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/metamoji/cm/ResetableEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/metamoji/cm/ResetableEvent;-><init>(ZZ)V

    iput-object v0, p0, Lcom/metamoji/li/dialog/WaitScreenInvoker;->event:Lcom/metamoji/cm/ResetableEvent;

    .line 19
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/li/dialog/WaitScreenInvoker$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p0}, Lcom/metamoji/li/dialog/WaitScreenInvoker$$ExternalSyntheticLambda0;-><init>(ZLcom/metamoji/li/dialog/WaitScreenInvoker;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnBackground(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic constructor <init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    .line 15
    :cond_0
    invoke-direct {p0, p1}, Lcom/metamoji/li/dialog/WaitScreenInvoker;-><init>(Z)V

    return-void
.end method

.method static final _init_$lambda$0(ZLcom/metamoji/li/dialog/WaitScreenInvoker;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 21
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/metamoji/cm/CmTaskManager;->invokeWaitScreenNow()V

    .line 23
    :cond_0
    iget-object p0, p1, Lcom/metamoji/li/dialog/WaitScreenInvoker;->event:Lcom/metamoji/cm/ResetableEvent;

    invoke-virtual {p0}, Lcom/metamoji/cm/ResetableEvent;->waitOne()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/metamoji/li/dialog/WaitScreenInvoker;->event:Lcom/metamoji/cm/ResetableEvent;

    invoke-virtual {v0}, Lcom/metamoji/cm/ResetableEvent;->set()V

    return-void
.end method

.method public final getEvent()Lcom/metamoji/cm/ResetableEvent;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/metamoji/li/dialog/WaitScreenInvoker;->event:Lcom/metamoji/cm/ResetableEvent;

    return-object v0
.end method
