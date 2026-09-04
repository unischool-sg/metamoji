.class public final Lcom/metamoji/ui/task/SaveFileTask;
.super Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;
.source "SaveFileTask.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/task/SaveFileTask$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0018\u0000 \r2\u00020\u0001:\u0001\rB-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000e\u0010\u000b\u001a\u00020\u0008H\u0094@\u00a2\u0006\u0002\u0010\u000cR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/metamoji/ui/task/SaveFileTask;",
        "Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;",
        "sourceFile",
        "Ljava/io/File;",
        "initialName",
        "",
        "mimeType",
        "deleteSource",
        "",
        "<init>",
        "(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)V",
        "execute",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field public static final Companion:Lcom/metamoji/ui/task/SaveFileTask$Companion;

.field public static final TASK_NAME:Ljava/lang/String;


# instance fields
.field private final deleteSource:Z

.field private final initialName:Ljava/lang/String;

.field private final mimeType:Ljava/lang/String;

.field private final sourceFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/ui/task/SaveFileTask$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/ui/task/SaveFileTask$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/ui/task/SaveFileTask;->Companion:Lcom/metamoji/ui/task/SaveFileTask$Companion;

    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/metamoji/ui/task/SaveFileTask;->TASK_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    const-string/jumbo v0, "sourceFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initialName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    sget-object v2, Lcom/metamoji/ui/task/SaveFileTask;->TASK_NAME:Ljava/lang/String;

    const-string v0, "TASK_NAME"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;-><init>(Ljava/lang/String;Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 20
    iput-object p1, v1, Lcom/metamoji/ui/task/SaveFileTask;->sourceFile:Ljava/io/File;

    .line 21
    iput-object p2, v1, Lcom/metamoji/ui/task/SaveFileTask;->initialName:Ljava/lang/String;

    .line 22
    iput-object p3, v1, Lcom/metamoji/ui/task/SaveFileTask;->mimeType:Ljava/lang/String;

    .line 23
    iput-boolean p4, v1, Lcom/metamoji/ui/task/SaveFileTask;->deleteSource:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x1

    .line 19
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/metamoji/ui/task/SaveFileTask;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static final synthetic access$getSourceFile$p(Lcom/metamoji/ui/task/SaveFileTask;)Ljava/io/File;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/metamoji/ui/task/SaveFileTask;->sourceFile:Ljava/io/File;

    return-object p0
.end method

.method static final execute$lambda$0(ILcom/metamoji/lib/dialog/UtDialogOwner;)Lcom/metamoji/lib/dialog/UtMessageBox;
    .locals 8

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    sget-object v1, Lcom/metamoji/lib/dialog/UtMessageBox;->Companion:Lcom/metamoji/lib/dialog/UtMessageBox$Companion;

    invoke-virtual {p1}, Lcom/metamoji/lib/dialog/UtDialogOwner;->asContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lcom/metamoji/lib/dialog/UtMessageBox$Companion;->createForConfirm$default(Lcom/metamoji/lib/dialog/UtMessageBox$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lcom/metamoji/lib/dialog/UtMessageBox;

    move-result-object p0

    return-object p0
.end method

.method public static final saveFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/task/SaveFileTask;->Companion:Lcom/metamoji/ui/task/SaveFileTask$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/metamoji/ui/task/SaveFileTask$Companion;->saveFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final saveFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/task/SaveFileTask;->Companion:Lcom/metamoji/ui/task/SaveFileTask$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/metamoji/ui/task/SaveFileTask$Companion;->saveFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static final saveFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ZLkotlinx/coroutines/CoroutineScope;)V
    .locals 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/task/SaveFileTask;->Companion:Lcom/metamoji/ui/task/SaveFileTask$Companion;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/ui/task/SaveFileTask$Companion;->saveFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ZLkotlinx/coroutines/CoroutineScope;)V

    return-void
.end method


# virtual methods
.method protected execute(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12
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

    instance-of v0, p1, Lcom/metamoji/ui/task/SaveFileTask$execute$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/metamoji/ui/task/SaveFileTask$execute$1;

    iget v1, v0, Lcom/metamoji/ui/task/SaveFileTask$execute$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/metamoji/ui/task/SaveFileTask$execute$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/metamoji/ui/task/SaveFileTask$execute$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/ui/task/SaveFileTask$execute$1;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/ui/task/SaveFileTask$execute$1;-><init>(Lcom/metamoji/ui/task/SaveFileTask;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/metamoji/ui/task/SaveFileTask$execute$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 37
    iget v2, v0, Lcom/metamoji/ui/task/SaveFileTask$execute$1;->label:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v2, :cond_5

    if-eq v2, v7, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget v1, v0, Lcom/metamoji/ui/task/SaveFileTask$execute$1;->I$1:I

    iget v0, v0, Lcom/metamoji/ui/task/SaveFileTask$execute$1;->I$0:I

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v2, v0, Lcom/metamoji/ui/task/SaveFileTask$execute$1;->L$1:Ljava/lang/Object;

    check-cast v2, Landroid/net/Uri;

    iget-object v2, v0, Lcom/metamoji/ui/task/SaveFileTask$execute$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    :cond_3
    iget-object v2, v0, Lcom/metamoji/ui/task/SaveFileTask$execute$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_5
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 39
    :try_start_2
    move-object p1, p0

    check-cast p1, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;

    iput v7, v0, Lcom/metamoji/ui/task/SaveFileTask$execute$1;->label:I

    invoke-static {p1, v0}, Lcom/metamoji/ui/task/SaveFileTaskKt;->getFilePickers(Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    goto/16 :goto_7

    .line 37
    :cond_6
    :goto_1
    move-object v2, p1

    check-cast v2, Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;

    .line 40
    invoke-virtual {v2}, Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;->getCreateFilePicker()Lcom/metamoji/lib/dialog/broker/pickers/UtCreateFilePicker;

    move-result-object p1

    iget-object v9, p0, Lcom/metamoji/ui/task/SaveFileTask;->initialName:Ljava/lang/String;

    iget-object v10, p0, Lcom/metamoji/ui/task/SaveFileTask;->mimeType:Ljava/lang/String;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    iput-object v11, v0, Lcom/metamoji/ui/task/SaveFileTask$execute$1;->L$0:Ljava/lang/Object;

    iput v6, v0, Lcom/metamoji/ui/task/SaveFileTask$execute$1;->label:I

    invoke-virtual {p1, v9, v10, v0}, Lcom/metamoji/lib/dialog/broker/pickers/UtCreateFilePicker;->selectFile(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    goto/16 :goto_7

    .line 37
    :cond_7
    :goto_2
    check-cast p1, Landroid/net/Uri;

    if-nez p1, :cond_9

    .line 43
    sget-object p1, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;->Companion:Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$Companion;

    invoke-virtual {p1}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object p1

    const-string v2, "cancelled"

    invoke-virtual {p1, v2}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 44
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    iget-boolean v0, p0, Lcom/metamoji/ui/task/SaveFileTask;->deleteSource:Z

    if-eqz v0, :cond_8

    .line 73
    iget-object v0, p0, Lcom/metamoji/ui/task/SaveFileTask;->sourceFile:Ljava/io/File;

    invoke-static {v0}, Lcom/metamoji/media/video/network/VfCloudKt;->safeDelete(Ljava/io/File;)V

    :cond_8
    return-object p1

    .line 46
    :cond_9
    :try_start_3
    new-instance v9, Lcom/metamoji/ui/task/SaveFileTask$execute$result$1;

    invoke-direct {v9, p0, p1, v8}, Lcom/metamoji/ui/task/SaveFileTask$execute$result$1;-><init>(Lcom/metamoji/ui/task/SaveFileTask;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V

    check-cast v9, Lkotlin/jvm/functions/Function2;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lcom/metamoji/ui/task/SaveFileTask$execute$1;->L$0:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/ui/task/SaveFileTask$execute$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lcom/metamoji/ui/task/SaveFileTask$execute$1;->label:I

    invoke-virtual {p0, v9, v0}, Lcom/metamoji/ui/task/SaveFileTask;->withOwner(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_a

    goto :goto_7

    :cond_a
    :goto_3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 72
    iget-boolean v2, p0, Lcom/metamoji/ui/task/SaveFileTask;->deleteSource:Z

    if-eqz v2, :cond_c

    .line 73
    iget-object v2, p0, Lcom/metamoji/ui/task/SaveFileTask;->sourceFile:Ljava/io/File;

    invoke-static {v2}, Lcom/metamoji/media/video/network/VfCloudKt;->safeDelete(Ljava/io/File;)V

    goto :goto_5

    .line 69
    :goto_4
    :try_start_4
    sget-object v2, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;->Companion:Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$Companion;

    invoke-virtual {v2}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v2

    invoke-static {v2, p1, v8, v6, v8}, Lcom/metamoji/lib/utils/UtLog;->stackTrace$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 72
    iget-boolean p1, p0, Lcom/metamoji/ui/task/SaveFileTask;->deleteSource:Z

    if-eqz p1, :cond_b

    .line 73
    iget-object p1, p0, Lcom/metamoji/ui/task/SaveFileTask;->sourceFile:Ljava/io/File;

    invoke-static {p1}, Lcom/metamoji/media/video/network/VfCloudKt;->safeDelete(Ljava/io/File;)V

    :cond_b
    move p1, v5

    .line 76
    :cond_c
    :goto_5
    sget-object v2, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;->Companion:Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$Companion;

    invoke-virtual {v2}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v2

    const-string v4, "done"

    invoke-virtual {v2, v4}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    if-eqz p1, :cond_d

    .line 78
    sget v2, Lcom/metamoji/noteanytime/R$string;->Msg_FileSave_Succeeded:I

    goto :goto_6

    :cond_d
    sget v2, Lcom/metamoji/noteanytime/R$string;->Msg_FileSave_Failed:I

    .line 79
    :goto_6
    sget-object v4, Lcom/metamoji/ui/task/SaveFileTask;->TASK_NAME:Ljava/lang/String;

    const-string v6, "TASK_NAME"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Lcom/metamoji/ui/task/SaveFileTask$$ExternalSyntheticLambda0;

    invoke-direct {v6, v2}, Lcom/metamoji/ui/task/SaveFileTask$$ExternalSyntheticLambda0;-><init>(I)V

    iput-object v8, v0, Lcom/metamoji/ui/task/SaveFileTask$execute$1;->L$0:Ljava/lang/Object;

    iput-object v8, v0, Lcom/metamoji/ui/task/SaveFileTask$execute$1;->L$1:Ljava/lang/Object;

    iput p1, v0, Lcom/metamoji/ui/task/SaveFileTask$execute$1;->I$0:I

    iput v2, v0, Lcom/metamoji/ui/task/SaveFileTask$execute$1;->I$1:I

    iput v3, v0, Lcom/metamoji/ui/task/SaveFileTask$execute$1;->label:I

    invoke-virtual {p0, v4, v6, v0}, Lcom/metamoji/ui/task/SaveFileTask;->showDialog(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_e

    :goto_7
    return-object v1

    :cond_e
    move v0, p1

    :goto_8
    if-eqz v0, :cond_f

    move v5, v7

    .line 83
    :cond_f
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :catchall_1
    move-exception p1

    .line 72
    iget-boolean v0, p0, Lcom/metamoji/ui/task/SaveFileTask;->deleteSource:Z

    if-eqz v0, :cond_10

    .line 73
    iget-object v0, p0, Lcom/metamoji/ui/task/SaveFileTask;->sourceFile:Ljava/io/File;

    invoke-static {v0}, Lcom/metamoji/media/video/network/VfCloudKt;->safeDelete(Ljava/io/File;)V

    :cond_10
    throw p1
.end method
