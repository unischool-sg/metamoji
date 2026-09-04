.class final Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$internalShowDialog$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "UtImmortalTaskBase.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;->internalShowDialog(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D::",
        "Lcom/metamoji/lib/dialog/IUtDialog;",
        ">",
        "Lkotlin/coroutines/jvm/internal/ContinuationImpl;"
    }
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

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.metamoji.lib.dialog.task.UtImmortalTaskBase"
    f = "UtImmortalTaskBase.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0
    }
    l = {
        0x83
    }
    m = "internalShowDialog"
    n = {
        "tag",
        "takeOwner",
        "dialogSource",
        "running"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;


# direct methods
.method constructor <init>(Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$internalShowDialog$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$internalShowDialog$1;->this$0:Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$internalShowDialog$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$internalShowDialog$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$internalShowDialog$1;->label:I

    iget-object p1, p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$internalShowDialog$1;->this$0:Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;

    const/4 v0, 0x0

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-static {p1, v0, v0, v0, v1}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;->access$internalShowDialog(Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
