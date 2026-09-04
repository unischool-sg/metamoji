.class public final Lcom/metamoji/lib/dialog/task/IUtImmortalTask$DefaultImpls;
.super Ljava/lang/Object;
.source "UtImmortalTaskDef.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lib/dialog/task/IUtImmortalTask;
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
.method public static getImmortalCoroutineScope(Lcom/metamoji/lib/dialog/task/IUtImmortalTask;)Lkotlinx/coroutines/CoroutineScope;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 22
    invoke-static {p0}, Lcom/metamoji/lib/dialog/task/IUtImmortalTask;->access$getImmortalCoroutineScope$jd(Lcom/metamoji/lib/dialog/task/IUtImmortalTask;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p0

    return-object p0
.end method
