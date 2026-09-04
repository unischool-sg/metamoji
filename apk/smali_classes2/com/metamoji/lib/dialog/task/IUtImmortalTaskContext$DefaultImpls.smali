.class public final Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext$DefaultImpls;
.super Ljava/lang/Object;
.source "UtImmortalTaskContext.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
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


# direct methods
.method public static getTask(Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;)Lcom/metamoji/lib/dialog/task/IUtImmortalTask;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 20
    invoke-static {p0}, Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;->access$getTask$jd(Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;)Lcom/metamoji/lib/dialog/task/IUtImmortalTask;

    move-result-object p0

    return-object p0
.end method
