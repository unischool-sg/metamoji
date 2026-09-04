.class final Lcom/metamoji/cm/CmTaskManagerKotlinKt$ensureRunOnBackgroundSuspend$2$1;
.super Ljava/lang/Object;
.source "CmTaskManagerKotlin.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/cm/CmTaskManagerKotlinKt;->ensureRunOnBackgroundSuspend(Lcom/metamoji/cm/CmTaskManager;Ljava/lang/Runnable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/cm/CmTaskManagerKotlinKt$ensureRunOnBackgroundSuspend$2$1;->$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/metamoji/cm/CmTaskManagerKotlinKt$ensureRunOnBackgroundSuspend$2$1;->$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
