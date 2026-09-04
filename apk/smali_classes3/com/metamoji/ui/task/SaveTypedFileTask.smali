.class public Lcom/metamoji/ui/task/SaveTypedFileTask;
.super Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;
.source "SaveTypedFileTask.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/task/SaveTypedFileTask$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0016\u0018\u0000  2\u00020\u0001:\u0001 B=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0016\u0010\r\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000fH\u0082@\u00a2\u0006\u0002\u0010\u0010J\u001e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000fH\u0094@\u00a2\u0006\u0002\u0010\u0014J\u000e\u0010\u0015\u001a\u00020\tH\u0094@\u00a2\u0006\u0002\u0010\u0016J*\u0010\u0017\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u0005H\u0002J\u0016\u0010\u001c\u001a\u0004\u0018\u00010\u0005*\u00020\u000f2\u0006\u0010\u001d\u001a\u00020\u001eH\u0002J\u0018\u0010\u001f\u001a\u00020\u000f2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lcom/metamoji/ui/task/SaveTypedFileTask;",
        "Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;",
        "source",
        "Lcom/metamoji/ui/task/ISaveFileSource;",
        "mimeType",
        "",
        "extension",
        "initialFileName",
        "ensureExtension",
        "",
        "taskName",
        "<init>",
        "(Lcom/metamoji/ui/task/ISaveFileSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V",
        "saveTo",
        "uri",
        "Landroid/net/Uri;",
        "(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "showMessage",
        "",
        "status",
        "(ZLandroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "execute",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "queryNameInDesperateWay",
        "name0",
        "ext",
        "candidate",
        "finalName",
        "getFileName",
        "context",
        "Landroid/content/Context;",
        "tryRenameIfNeed",
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
.field public static final Companion:Lcom/metamoji/ui/task/SaveTypedFileTask$Companion;

.field private static final MAX_RETRY:I = 0x3e8

.field public static final TASK_NAME:Ljava/lang/String;


# instance fields
.field private final ensureExtension:Z

.field private final extension:Ljava/lang/String;

.field private finalName:Ljava/lang/String;

.field private final initialFileName:Ljava/lang/String;

.field private final mimeType:Ljava/lang/String;

.field private final source:Lcom/metamoji/ui/task/ISaveFileSource;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/ui/task/SaveTypedFileTask$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/ui/task/SaveTypedFileTask$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/ui/task/SaveTypedFileTask;->Companion:Lcom/metamoji/ui/task/SaveTypedFileTask$Companion;

    .line 179
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/metamoji/ui/task/SaveTypedFileTask;->TASK_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/ui/task/ISaveFileSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 6

    const-string/jumbo v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mimeType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extension"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initialFileName"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p6, :cond_0

    .line 176
    sget-object p6, Lcom/metamoji/ui/task/SaveTypedFileTask;->TASK_NAME:Ljava/lang/String;

    :cond_0
    move-object v1, p6

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;-><init>(Ljava/lang/String;Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 170
    iput-object p1, v0, Lcom/metamoji/ui/task/SaveTypedFileTask;->source:Lcom/metamoji/ui/task/ISaveFileSource;

    .line 171
    iput-object p2, v0, Lcom/metamoji/ui/task/SaveTypedFileTask;->mimeType:Ljava/lang/String;

    .line 172
    iput-object p3, v0, Lcom/metamoji/ui/task/SaveTypedFileTask;->extension:Ljava/lang/String;

    .line 173
    iput-object p4, v0, Lcom/metamoji/ui/task/SaveTypedFileTask;->initialFileName:Ljava/lang/String;

    .line 174
    iput-boolean p5, v0, Lcom/metamoji/ui/task/SaveTypedFileTask;->ensureExtension:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/metamoji/ui/task/ISaveFileSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_0

    const/4 p5, 0x1

    :cond_0
    move v5, p5

    and-int/lit8 p5, p7, 0x20

    if-eqz p5, :cond_1

    const/4 p6, 0x0

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p6

    .line 169
    invoke-direct/range {v0 .. v6}, Lcom/metamoji/ui/task/SaveTypedFileTask;-><init>(Lcom/metamoji/ui/task/ISaveFileSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$saveTo(Lcom/metamoji/ui/task/SaveTypedFileTask;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 169
    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/task/SaveTypedFileTask;->saveTo(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$tryRenameIfNeed(Lcom/metamoji/ui/task/SaveTypedFileTask;Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    .line 169
    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/task/SaveTypedFileTask;->tryRenameIfNeed(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method static synthetic execute$suspendImpl(Lcom/metamoji/ui/task/SaveTypedFileTask;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ui/task/SaveTypedFileTask;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/metamoji/ui/task/SaveTypedFileTask$execute$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/metamoji/ui/task/SaveTypedFileTask$execute$1;

    iget v1, v0, Lcom/metamoji/ui/task/SaveTypedFileTask$execute$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/metamoji/ui/task/SaveTypedFileTask$execute$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/metamoji/ui/task/SaveTypedFileTask$execute$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/ui/task/SaveTypedFileTask$execute$1;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/ui/task/SaveTypedFileTask$execute$1;-><init>(Lcom/metamoji/ui/task/SaveTypedFileTask;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/metamoji/ui/task/SaveTypedFileTask$execute$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 231
    iget v2, v0, Lcom/metamoji/ui/task/SaveTypedFileTask$execute$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v2, :cond_5

    if-eq v2, v7, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget p0, v0, Lcom/metamoji/ui/task/SaveTypedFileTask$execute$1;->I$0:I

    iget-boolean p0, v0, Lcom/metamoji/ui/task/SaveTypedFileTask$execute$1;->Z$0:Z

    iget-object p0, v0, Lcom/metamoji/ui/task/SaveTypedFileTask$execute$1;->L$2:Ljava/lang/Object;

    iget-object v1, v0, Lcom/metamoji/ui/task/SaveTypedFileTask$execute$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lcom/metamoji/ui/task/SaveTypedFileTask$execute$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/ui/task/SaveTypedFileTask;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_5

    :catchall_0
    move-exception p0

    move-object v6, v0

    goto/16 :goto_7

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lcom/metamoji/ui/task/SaveTypedFileTask$execute$1;->L$1:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, v0, Lcom/metamoji/ui/task/SaveTypedFileTask$execute$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/metamoji/ui/task/SaveTypedFileTask;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v10, v2

    move-object v2, p0

    move-object p0, v10

    goto/16 :goto_3

    :catchall_1
    move-exception p0

    move-object v6, v2

    goto/16 :goto_7

    :cond_3
    iget-object p0, v0, Lcom/metamoji/ui/task/SaveTypedFileTask$execute$1;->L$2:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, v0, Lcom/metamoji/ui/task/SaveTypedFileTask$execute$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v6, v0, Lcom/metamoji/ui/task/SaveTypedFileTask$execute$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lcom/metamoji/ui/task/SaveTypedFileTask;

    :try_start_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p0

    goto/16 :goto_7

    :cond_4
    iget-object p0, v0, Lcom/metamoji/ui/task/SaveTypedFileTask$execute$1;->L$2:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, v0, Lcom/metamoji/ui/task/SaveTypedFileTask$execute$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v7, v0, Lcom/metamoji/ui/task/SaveTypedFileTask$execute$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lcom/metamoji/ui/task/SaveTypedFileTask;

    :try_start_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p0

    move-object v6, v7

    goto/16 :goto_7

    :cond_5
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 234
    :try_start_4
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object p0, v0, Lcom/metamoji/ui/task/SaveTypedFileTask$execute$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lcom/metamoji/ui/task/SaveTypedFileTask$execute$1;->L$1:Ljava/lang/Object;

    iput-object v2, v0, Lcom/metamoji/ui/task/SaveTypedFileTask$execute$1;->L$2:Ljava/lang/Object;

    iput v7, v0, Lcom/metamoji/ui/task/SaveTypedFileTask$execute$1;->label:I

    invoke-static {v0}, Lcom/metamoji/ui/task/TaskExtensionKt;->mmjGetFilePickerStore(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-ne p1, v1, :cond_6

    goto/16 :goto_4

    :cond_6
    move-object v7, p0

    move-object p0, v2

    :goto_1
    :try_start_5
    check-cast p1, Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;->getCreateFilePicker()Lcom/metamoji/lib/dialog/broker/pickers/UtCreateFilePicker;

    move-result-object p1

    if-eqz p1, :cond_c

    iget-object v8, v7, Lcom/metamoji/ui/task/SaveTypedFileTask;->initialFileName:Ljava/lang/String;

    iget-object v9, v7, Lcom/metamoji/ui/task/SaveTypedFileTask;->mimeType:Ljava/lang/String;

    iput-object v7, v0, Lcom/metamoji/ui/task/SaveTypedFileTask$execute$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lcom/metamoji/ui/task/SaveTypedFileTask$execute$1;->L$1:Ljava/lang/Object;

    iput-object p0, v0, Lcom/metamoji/ui/task/SaveTypedFileTask$execute$1;->L$2:Ljava/lang/Object;

    iput v6, v0, Lcom/metamoji/ui/task/SaveTypedFileTask$execute$1;->label:I

    invoke-virtual {p1, v8, v9, v0}, Lcom/metamoji/lib/dialog/broker/pickers/UtCreateFilePicker;->selectFile(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-ne p1, v1, :cond_7

    goto :goto_4

    :cond_7
    move-object v6, v7

    :goto_2
    :try_start_6
    check-cast p1, Landroid/net/Uri;

    if-eqz p1, :cond_b

    iput-object p1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 235
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p0

    check-cast p0, Lkotlin/coroutines/CoroutineContext;

    new-instance p1, Lcom/metamoji/ui/task/SaveTypedFileTask$execute$2;

    const/4 v7, 0x0

    invoke-direct {p1, v6, v2, v7}, Lcom/metamoji/ui/task/SaveTypedFileTask$execute$2;-><init>(Lcom/metamoji/ui/task/SaveTypedFileTask;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/jvm/functions/Function2;

    iput-object v6, v0, Lcom/metamoji/ui/task/SaveTypedFileTask$execute$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lcom/metamoji/ui/task/SaveTypedFileTask$execute$1;->L$1:Ljava/lang/Object;

    iput-object v7, v0, Lcom/metamoji/ui/task/SaveTypedFileTask$execute$1;->L$2:Ljava/lang/Object;

    iput v5, v0, Lcom/metamoji/ui/task/SaveTypedFileTask$execute$1;->label:I

    invoke-static {p0, p1, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-ne p1, v1, :cond_8

    goto :goto_4

    :cond_8
    move-object p0, v6

    .line 239
    :goto_3
    :try_start_7
    move-object v5, p1

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 241
    iget-object v6, p0, Lcom/metamoji/ui/task/SaveTypedFileTask;->source:Lcom/metamoji/ui/task/ISaveFileSource;

    iget-object v7, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v7, Landroid/net/Uri;

    invoke-interface {v6, v7}, Lcom/metamoji/ui/task/ISaveFileSource;->onSaved(Landroid/net/Uri;)V

    .line 243
    :cond_9
    iget-object v6, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v6, Landroid/net/Uri;

    iput-object p0, v0, Lcom/metamoji/ui/task/SaveTypedFileTask$execute$1;->L$0:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lcom/metamoji/ui/task/SaveTypedFileTask$execute$1;->L$1:Ljava/lang/Object;

    iput-object p1, v0, Lcom/metamoji/ui/task/SaveTypedFileTask$execute$1;->L$2:Ljava/lang/Object;

    iput-boolean v5, v0, Lcom/metamoji/ui/task/SaveTypedFileTask$execute$1;->Z$0:Z

    iput v3, v0, Lcom/metamoji/ui/task/SaveTypedFileTask$execute$1;->I$0:I

    iput v4, v0, Lcom/metamoji/ui/task/SaveTypedFileTask$execute$1;->label:I

    invoke-virtual {p0, v5, v6, v0}, Lcom/metamoji/ui/task/SaveTypedFileTask;->showMessage(ZLandroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-ne v0, v1, :cond_a

    :goto_4
    return-object v1

    :cond_a
    move-object v0, p0

    move-object p0, p1

    .line 239
    :goto_5
    :try_start_8
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 247
    iget-object p1, v0, Lcom/metamoji/ui/task/SaveTypedFileTask;->source:Lcom/metamoji/ui/task/ISaveFileSource;

    invoke-interface {p1}, Lcom/metamoji/ui/task/ISaveFileSource;->dispose()V

    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_b
    move-object p0, v6

    goto :goto_6

    :cond_c
    move-object p0, v7

    .line 234
    :goto_6
    :try_start_9
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 247
    iget-object p0, p0, Lcom/metamoji/ui/task/SaveTypedFileTask;->source:Lcom/metamoji/ui/task/ISaveFileSource;

    invoke-interface {p0}, Lcom/metamoji/ui/task/ISaveFileSource;->dispose()V

    return-object p1

    :catchall_4
    move-exception p1

    move-object v6, p0

    move-object p0, p1

    :goto_7
    iget-object p1, v6, Lcom/metamoji/ui/task/SaveTypedFileTask;->source:Lcom/metamoji/ui/task/ISaveFileSource;

    invoke-interface {p1}, Lcom/metamoji/ui/task/ISaveFileSource;->dispose()V

    throw p0
.end method

.method private final getFileName(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 295
    :try_start_0
    invoke-static {p2, p1}, Landroidx/documentfile/provider/DocumentFile;->fromSingleUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :cond_0
    return-object v0

    :catchall_0
    move-exception p1

    .line 297
    sget-object p2, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;->Companion:Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$Companion;

    invoke-virtual {p2}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object p2

    const/4 v1, 0x2

    invoke-static {p2, p1, v0, v1, v0}, Lcom/metamoji/lib/utils/UtLog;->stackTrace$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    return-object v0
.end method

.method private final queryNameInDesperateWay(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p4

    .line 257
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    const-string p4, "getPathSegments(...)"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 p4, 0x0

    if-nez p1, :cond_1

    return-object p4

    .line 261
    :cond_1
    new-instance v0, Lkotlin/text/Regex;

    sget-object v1, Lkotlin/text/Regex;->Companion:Lkotlin/text/Regex$Companion;

    invoke-virtual {v1, p2}, Lkotlin/text/Regex$Companion;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lkotlin/text/Regex;->Companion:Lkotlin/text/Regex$Companion;

    invoke-virtual {v2, p3}, Lkotlin/text/Regex$Companion;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[:/]("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".+"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 262
    check-cast p1, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lkotlin/text/Regex;->find(Ljava/lang/CharSequence;I)Lkotlin/text/MatchResult;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 263
    invoke-interface {v0}, Lkotlin/text/MatchResult;->getGroups()Lkotlin/text/MatchGroupCollection;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lkotlin/text/MatchGroupCollection;->get(I)Lkotlin/text/MatchGroup;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 264
    invoke-interface {v0}, Lkotlin/text/MatchResult;->getGroups()Lkotlin/text/MatchGroupCollection;

    move-result-object p1

    invoke-interface {p1, v3}, Lkotlin/text/MatchGroupCollection;->get(I)Lkotlin/text/MatchGroup;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lkotlin/text/MatchGroup;->getValue()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    return-object p4

    .line 269
    :cond_3
    new-instance v0, Lkotlin/text/Regex;

    sget-object v2, Lkotlin/text/Regex;->Companion:Lkotlin/text/Regex$Companion;

    invoke-virtual {v2, p2}, Lkotlin/text/Regex$Companion;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    sget-object v2, Lkotlin/text/Regex;->Companion:Lkotlin/text/Regex$Companion;

    invoke-virtual {v2, p3}, Lkotlin/text/Regex$Companion;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, " [(]\\d+[)]"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "$"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v0, p1, v1}, Lkotlin/text/Regex;->find(Ljava/lang/CharSequence;I)Lkotlin/text/MatchResult;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 271
    invoke-interface {p1}, Lkotlin/text/MatchResult;->getValue()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    return-object p4
.end method

.method public static final saveFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/task/SaveTypedFileTask;->Companion:Lcom/metamoji/ui/task/SaveTypedFileTask$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/metamoji/ui/task/SaveTypedFileTask$Companion;->saveFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final saveFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/task/SaveTypedFileTask;->Companion:Lcom/metamoji/ui/task/SaveTypedFileTask$Companion;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/ui/task/SaveTypedFileTask$Companion;->saveFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static final saveFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/task/SaveTypedFileTask;->Companion:Lcom/metamoji/ui/task/SaveTypedFileTask$Companion;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/metamoji/ui/task/SaveTypedFileTask$Companion;->saveFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private final saveTo(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/metamoji/ui/task/SaveTypedFileTask$saveTo$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/metamoji/ui/task/SaveTypedFileTask$saveTo$1;

    iget v1, v0, Lcom/metamoji/ui/task/SaveTypedFileTask$saveTo$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/metamoji/ui/task/SaveTypedFileTask$saveTo$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/metamoji/ui/task/SaveTypedFileTask$saveTo$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/ui/task/SaveTypedFileTask$saveTo$1;

    invoke-direct {v0, p0, p2}, Lcom/metamoji/ui/task/SaveTypedFileTask$saveTo$1;-><init>(Lcom/metamoji/ui/task/SaveTypedFileTask;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/metamoji/ui/task/SaveTypedFileTask$saveTo$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 204
    iget v2, v0, Lcom/metamoji/ui/task/SaveTypedFileTask$saveTo$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/metamoji/ui/task/SaveTypedFileTask$saveTo$1;->L$1:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    iget-object v0, v0, Lcom/metamoji/ui/task/SaveTypedFileTask$saveTo$1;->L$0:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 205
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    .line 207
    :try_start_1
    iget-object v2, p0, Lcom/metamoji/ui/task/SaveTypedFileTask;->source:Lcom/metamoji/ui/task/ISaveFileSource;

    iput-object p1, v0, Lcom/metamoji/ui/task/SaveTypedFileTask$saveTo$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/metamoji/ui/task/SaveTypedFileTask$saveTo$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/metamoji/ui/task/SaveTypedFileTask$saveTo$1;->label:I

    invoke-interface {v2, p1, v0}, Lcom/metamoji/ui/task/ISaveFileSource;->saveTo(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p1, v1, :cond_3

    return-object v1

    :catchall_1
    move-exception v0

    move-object v4, v0

    move-object v0, p1

    move-object p1, p2

    move-object p2, v4

    .line 210
    :goto_1
    sget-object v1, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;->Companion:Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$Companion;

    invoke-virtual {v1}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v1, p2, v3, v2, v3}, Lcom/metamoji/lib/utils/UtLog;->stackTrace$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    .line 211
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, v0, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    const/4 v3, 0x0

    .line 212
    :cond_3
    :goto_2
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method static final showMessage$lambda$0(Lcom/metamoji/ui/task/SaveTypedFileTask;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/metamoji/lib/dialog/UtDialogOwner;)Lcom/metamoji/lib/dialog/UtMessageBox;
    .locals 8

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    sget-object v1, Lcom/metamoji/lib/dialog/UtMessageBox;->Companion:Lcom/metamoji/lib/dialog/UtMessageBox$Companion;

    iget-object p0, p0, Lcom/metamoji/ui/task/SaveTypedFileTask;->source:Lcom/metamoji/ui/task/ISaveFileSource;

    invoke-interface {p0}, Lcom/metamoji/ui/task/ISaveFileSource;->getMessageTitle()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v3, p0

    check-cast v3, Ljava/lang/String;

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lcom/metamoji/lib/dialog/UtMessageBox$Companion;->createForConfirm$default(Lcom/metamoji/lib/dialog/UtMessageBox$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lcom/metamoji/lib/dialog/UtMessageBox;

    move-result-object p0

    return-object p0
.end method

.method static synthetic showMessage$suspendImpl(Lcom/metamoji/ui/task/SaveTypedFileTask;ZLandroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ui/task/SaveTypedFileTask;",
            "Z",
            "Landroid/net/Uri;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 222
    new-instance p2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v0, p0, Lcom/metamoji/ui/task/SaveTypedFileTask;->source:Lcom/metamoji/ui/task/ISaveFileSource;

    if-eqz p1, :cond_0

    invoke-interface {v0}, Lcom/metamoji/ui/task/ISaveFileSource;->getPositiveMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/metamoji/ui/task/ISaveFileSource;->getNegativeMessage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_1
    iput-object v0, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz p1, :cond_3

    .line 223
    iget-object p1, p0, Lcom/metamoji/ui/task/SaveTypedFileTask;->finalName:Ljava/lang/String;

    check-cast p1, Ljava/lang/CharSequence;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    .line 224
    :cond_2
    iget-object p1, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object v0, p0, Lcom/metamoji/ui/task/SaveTypedFileTask;->finalName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 226
    :cond_3
    :goto_1
    sget-object p1, Lcom/metamoji/ui/task/SaveTypedFileTask;->TASK_NAME:Ljava/lang/String;

    new-instance v0, Lcom/metamoji/ui/task/SaveTypedFileTask$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/metamoji/ui/task/SaveTypedFileTask$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/ui/task/SaveTypedFileTask;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {p0, p1, v0, p3}, Lcom/metamoji/ui/task/SaveTypedFileTask;->showDialog(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_4

    return-object p0

    :cond_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final tryRenameIfNeed(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 9

    .line 325
    sget-object v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;->Companion:Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$Companion;

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "original: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 326
    invoke-direct {p0, p2, p1}, Lcom/metamoji/ui/task/SaveTypedFileTask;->getFileName(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 327
    :cond_0
    iput-object v0, p0, Lcom/metamoji/ui/task/SaveTypedFileTask;->finalName:Ljava/lang/String;

    .line 328
    iget-boolean v1, p0, Lcom/metamoji/ui/task/SaveTypedFileTask;->ensureExtension:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/metamoji/ui/task/SaveTypedFileTask;->mimeType:Ljava/lang/String;

    invoke-static {v1}, Lcom/metamoji/noteanytime/cm/CmMimeType;->isNonstandardMimeType(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_1

    .line 332
    :cond_1
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 333
    invoke-static {v1}, Lcom/metamoji/noteanytime/cm/CmMimeType;->getMimeTypeByExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 335
    iget-object v3, p0, Lcom/metamoji/ui/task/SaveTypedFileTask;->mimeType:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_1

    .line 340
    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lkotlin/text/StringsKt;->substringBeforeLast$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 341
    iget-object v1, p0, Lcom/metamoji/ui/task/SaveTypedFileTask;->extension:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    .line 346
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, p2, v1}, Landroid/provider/DocumentsContract;->renameDocument(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    if-nez v5, :cond_3

    .line 348
    sget-object v1, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;->Companion:Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$Companion;

    invoke-virtual {v1}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v1

    const-string v5, "oops...DocumentsContract.renameDocument returns null."

    invoke-virtual {v1, v5}, Lcom/metamoji/lib/utils/UtLog;->error(Ljava/lang/String;)V

    .line 349
    iput-object v2, p0, Lcom/metamoji/ui/task/SaveTypedFileTask;->finalName:Ljava/lang/String;

    goto :goto_1

    .line 352
    :cond_3
    invoke-direct {p0, v5, p1}, Lcom/metamoji/ui/task/SaveTypedFileTask;->getFileName(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/metamoji/ui/task/SaveTypedFileTask;->extension:Ljava/lang/String;

    invoke-direct {p0, v5, v0, v6, v1}, Lcom/metamoji/ui/task/SaveTypedFileTask;->queryNameInDesperateWay(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_4
    iput-object v6, p0, Lcom/metamoji/ui/task/SaveTypedFileTask;->finalName:Ljava/lang/String;

    .line 353
    sget-object v1, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;->Companion:Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$Companion;

    invoke-virtual {v1}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v1

    iget-object v6, p0, Lcom/metamoji/ui/task/SaveTypedFileTask;->finalName:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "renamed ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v5

    :catchall_0
    move-exception p1

    .line 363
    sget-object v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;->Companion:Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$Companion;

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    invoke-static {v0, p1, v2, v3, v2}, Lcom/metamoji/lib/utils/UtLog;->error$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    .line 364
    iput-object v2, p0, Lcom/metamoji/ui/task/SaveTypedFileTask;->finalName:Ljava/lang/String;

    return-object p2

    :catch_0
    const/16 v1, 0x3e8

    if-lt v4, v1, :cond_5

    :goto_1
    return-object p2

    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 361
    iget-object v1, p0, Lcom/metamoji/ui/task/SaveTypedFileTask;->extension:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method


# virtual methods
.method protected execute(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/metamoji/ui/task/SaveTypedFileTask;->execute$suspendImpl(Lcom/metamoji/ui/task/SaveTypedFileTask;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected showMessage(ZLandroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/net/Uri;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/metamoji/ui/task/SaveTypedFileTask;->showMessage$suspendImpl(Lcom/metamoji/ui/task/SaveTypedFileTask;ZLandroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
