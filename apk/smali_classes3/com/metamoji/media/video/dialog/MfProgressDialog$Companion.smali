.class public final Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion;
.super Ljava/lang/Object;
.source "MfProgressDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/media/video/dialog/MfProgressDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$ContinuationStatus;,
        Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMfProgressDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MfProgressDialog.kt\ncom/metamoji/media/video/dialog/MfProgressDialog$Companion\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,609:1\n37#2,2:610\n*S KotlinDebug\n*F\n+ 1 MfProgressDialog.kt\ncom/metamoji/media/video/dialog/MfProgressDialog$Companion\n*L\n138#1:610,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001:\u0001&B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u00102\u0006\u0010\u0012\u001a\u00020\u0013H\u0002J\u000e\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010H\u0002J\u0016\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0012\u001a\u00020\u0013H\u0086@\u00a2\u0006\u0002\u0010\u0017J\u000e\u0010\u0018\u001a\u00020\u0016H\u0086@\u00a2\u0006\u0002\u0010\u0019J*\u0010\u001a\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\r2\u0012\u0010\u001c\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00110\u00100\u001dH\u0082@\u00a2\u0006\u0002\u0010\u001eJ*\u0010\u001f\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\r2\u0012\u0010\u001c\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00110\u00100\u001dH\u0082@\u00a2\u0006\u0002\u0010\u001eJ\u0014\u0010 \u001a\u00020!2\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020!0\u001dR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u000eR\u0016\u0010#\u001a\n\u0012\u0004\u0012\u00020%\u0018\u00010$X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion;",
        "",
        "<init>",
        "()V",
        "logger",
        "Lcom/metamoji/lib/utils/UtLog;",
        "getLogger",
        "()Lcom/metamoji/lib/utils/UtLog;",
        "dialogInstance",
        "Lcom/metamoji/media/video/dialog/MfProgressDialog;",
        "dialogCanceller",
        "Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;",
        "isBusy",
        "",
        "()Z",
        "getRecordForTicket",
        "",
        "Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;",
        "ticket",
        "",
        "getAllRecordToBeUploaded",
        "uploadByTicket",
        "Lcom/metamoji/media/video/VfVideoFileManager$ForegroundUploadResult;",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "uploadOnLogout",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "show",
        "isMulti",
        "getList",
        "Lkotlin/Function0;",
        "(ZLkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "doUpload",
        "mainThread",
        "",
        "proc",
        "continuationTask",
        "Lkotlin/coroutines/Continuation;",
        "Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$ContinuationStatus;",
        "ContinuationStatus",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$doUpload(Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion;ZLkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion;->doUpload(ZLkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$show(Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion;ZLkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion;->show(ZLkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final doUpload(ZLkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/util/Collection<",
            "Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;",
            ">;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/media/video/VfVideoFileManager$ForegroundUploadResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    instance-of v2, v0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$doUpload$1;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$doUpload$1;

    iget v3, v2, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$doUpload$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v0, v2, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$doUpload$1;->label:I

    sub-int/2addr v0, v4

    iput v0, v2, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$doUpload$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$doUpload$1;

    invoke-direct {v2, v1, v0}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$doUpload$1;-><init>(Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v2, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$doUpload$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 131
    iget v4, v2, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$doUpload$1;->label:I

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const-string v8, "finally block"

    const/4 v9, 0x0

    if-eqz v4, :cond_5

    if-eq v4, v7, :cond_4

    if-eq v4, v6, :cond_3

    if-ne v4, v5, :cond_2

    iget-boolean v4, v2, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$doUpload$1;->Z$0:Z

    iget-object v10, v2, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$doUpload$1;->L$4:Ljava/lang/Object;

    check-cast v10, Lcom/metamoji/media/video/VfVideoFileManager$IMultiUploadResult;

    iget-object v10, v2, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$doUpload$1;->L$3:Ljava/lang/Object;

    check-cast v10, Lcom/metamoji/media/video/uploader/VfUploader;

    iget-object v11, v2, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$doUpload$1;->L$2:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    iget-object v12, v2, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$doUpload$1;->L$1:Ljava/lang/Object;

    check-cast v12, Ljava/util/Collection;

    iget-object v13, v2, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$doUpload$1;->L$0:Ljava/lang/Object;

    check-cast v13, Lkotlin/jvm/functions/Function0;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 p3, v9

    :cond_1
    move-object v9, v10

    move-object v10, v13

    goto/16 :goto_6

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-boolean v4, v2, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$doUpload$1;->Z$0:Z

    iget-object v10, v2, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$doUpload$1;->L$3:Ljava/lang/Object;

    check-cast v10, Lcom/metamoji/media/video/uploader/VfUploader;

    iget-object v11, v2, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$doUpload$1;->L$2:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    iget-object v12, v2, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$doUpload$1;->L$1:Ljava/lang/Object;

    check-cast v12, Ljava/util/Collection;

    iget-object v12, v2, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$doUpload$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lkotlin/jvm/functions/Function0;

    :try_start_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v13, v12

    goto/16 :goto_4

    :cond_4
    iget-boolean v4, v2, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$doUpload$1;->Z$0:Z

    iget-object v10, v2, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$doUpload$1;->L$0:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/functions/Function0;

    :try_start_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :cond_5
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 133
    :try_start_3
    invoke-virtual {v1}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    invoke-static {v0, v9, v7, v9}, Lcom/metamoji/lib/utils/UtLog;->debug$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ILjava/lang/Object;)V

    .line 134
    invoke-static {}, Lcom/metamoji/media/video/dialog/MfProgressDialog;->access$getDialogInstance$cp()Lcom/metamoji/media/video/dialog/MfProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {v0}, Lcom/metamoji/media/video/dialog/MfProgressDialog;->access$getOpeningEvent$p(Lcom/metamoji/media/video/dialog/MfProgressDialog;)Lcom/metamoji/media/video/dialog/SuspendingEvent;

    move-result-object v0

    if-eqz v0, :cond_6

    move-object/from16 v4, p2

    iput-object v4, v2, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$doUpload$1;->L$0:Ljava/lang/Object;

    move/from16 v10, p1

    iput-boolean v10, v2, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$doUpload$1;->Z$0:Z

    iput v7, v2, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$doUpload$1;->label:I

    invoke-virtual {v0, v2}, Lcom/metamoji/media/video/dialog/SuspendingEvent;->waitOne(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_7

    goto/16 :goto_5

    :cond_6
    move/from16 v10, p1

    move-object/from16 v4, p2

    :cond_7
    move/from16 v17, v10

    move-object v10, v4

    move/from16 v4, v17

    .line 136
    :goto_1
    invoke-virtual {v1}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    const-string v11, "... go ahead."

    invoke-virtual {v0, v11}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 137
    invoke-interface {v10}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-nez v4, :cond_8

    const/4 v11, 0x0

    .line 611
    new-array v12, v11, [Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;

    invoke-interface {v0, v12}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;

    .line 138
    aget-object v11, v12, v11

    invoke-virtual {v11}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->getTicket()Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    :cond_8
    move-object v11, v9

    .line 140
    :goto_2
    sget-object v12, Lcom/metamoji/media/video/VfVideoFileManager;->Companion:Lcom/metamoji/media/video/VfVideoFileManager$Companion;

    invoke-virtual {v12}, Lcom/metamoji/media/video/VfVideoFileManager$Companion;->getInstance()Lcom/metamoji/media/video/VfVideoFileManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/metamoji/media/video/VfVideoFileManager;->getUploader()Lcom/metamoji/media/video/uploader/VfUploader;

    move-result-object v12

    if-nez v12, :cond_a

    .line 142
    invoke-virtual {v1}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    const-string v2, "fatal error: no uploader"

    invoke-virtual {v0, v2}, Lcom/metamoji/lib/utils/UtLog;->error(Ljava/lang/String;)V

    .line 143
    sget-object v0, Lcom/metamoji/media/video/VfVideoFileManager$ForegroundUploadResult;->FATAL_ERROR:Lcom/metamoji/media/video/VfVideoFileManager$ForegroundUploadResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 231
    invoke-virtual {v1}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 232
    invoke-static {}, Lcom/metamoji/media/video/dialog/MfProgressDialog;->access$getDialogCanceller$cp()Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;->reset()V

    .line 233
    invoke-static {}, Lcom/metamoji/media/video/dialog/MfProgressDialog;->access$getDialogInstance$cp()Lcom/metamoji/media/video/dialog/MfProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/metamoji/media/video/dialog/MfProgressDialog;->closeDialog()V

    .line 234
    :cond_9
    invoke-static {v9}, Lcom/metamoji/media/video/dialog/MfProgressDialog;->access$setDialogInstance$cp(Lcom/metamoji/media/video/dialog/MfProgressDialog;)V

    return-object v0

    .line 147
    :cond_a
    :goto_3
    :try_start_4
    invoke-virtual {v1}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v13

    const-string v14, "loop top"

    invoke-virtual {v13, v14}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 148
    invoke-static {}, Lcom/metamoji/media/video/dialog/MfProgressDialog;->access$getDialogCanceller$cp()Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;

    move-result-object v13

    invoke-virtual {v13}, Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;->reset()V

    .line 155
    invoke-static {}, Lcom/metamoji/media/video/dialog/MfProgressDialog;->access$getDialogCanceller$cp()Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;

    move-result-object v13

    new-instance v14, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$$ExternalSyntheticLambda3;

    invoke-direct {v14}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$$ExternalSyntheticLambda3;-><init>()V

    iput-object v10, v2, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$doUpload$1;->L$0:Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    iput-object v15, v2, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$doUpload$1;->L$1:Ljava/lang/Object;

    iput-object v11, v2, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$doUpload$1;->L$2:Ljava/lang/Object;

    iput-object v12, v2, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$doUpload$1;->L$3:Ljava/lang/Object;

    iput-object v9, v2, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$doUpload$1;->L$4:Ljava/lang/Object;

    iput-boolean v4, v2, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$doUpload$1;->Z$0:Z

    iput v6, v2, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$doUpload$1;->label:I

    invoke-virtual {v12, v0, v13, v14, v2}, Lcom/metamoji/media/video/uploader/VfUploader;->emergencyUpload(Ljava/util/Collection;Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_b

    goto/16 :goto_5

    :cond_b
    move-object v13, v10

    move-object v10, v12

    .line 131
    :goto_4
    check-cast v0, Lcom/metamoji/media/video/VfVideoFileManager$IMultiUploadResult;

    .line 159
    invoke-interface {v0}, Lcom/metamoji/media/video/VfVideoFileManager$IMultiUploadResult;->isSucceeded()Z

    move-result v12

    if-eqz v12, :cond_d

    .line 160
    invoke-virtual {v1}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    const-string v2, "completed."

    invoke-virtual {v0, v2}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 161
    sget-object v0, Lcom/metamoji/media/video/VfVideoFileManager$ForegroundUploadResult;->OK:Lcom/metamoji/media/video/VfVideoFileManager$ForegroundUploadResult;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 231
    invoke-virtual {v1}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 232
    invoke-static {}, Lcom/metamoji/media/video/dialog/MfProgressDialog;->access$getDialogCanceller$cp()Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;->reset()V

    .line 233
    invoke-static {}, Lcom/metamoji/media/video/dialog/MfProgressDialog;->access$getDialogInstance$cp()Lcom/metamoji/media/video/dialog/MfProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Lcom/metamoji/media/video/dialog/MfProgressDialog;->closeDialog()V

    .line 234
    :cond_c
    invoke-static {v9}, Lcom/metamoji/media/video/dialog/MfProgressDialog;->access$setDialogInstance$cp(Lcom/metamoji/media/video/dialog/MfProgressDialog;)V

    return-object v0

    .line 163
    :cond_d
    :try_start_5
    invoke-interface {v13}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Collection;

    .line 164
    invoke-interface {v12}, Ljava/util/Collection;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_f

    .line 166
    invoke-virtual {v1}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    const-string v2, "error but decriminalized. --> return ok."

    invoke-virtual {v0, v2}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 167
    sget-object v0, Lcom/metamoji/media/video/VfVideoFileManager$ForegroundUploadResult;->OK:Lcom/metamoji/media/video/VfVideoFileManager$ForegroundUploadResult;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 231
    invoke-virtual {v1}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 232
    invoke-static {}, Lcom/metamoji/media/video/dialog/MfProgressDialog;->access$getDialogCanceller$cp()Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;->reset()V

    .line 233
    invoke-static {}, Lcom/metamoji/media/video/dialog/MfProgressDialog;->access$getDialogInstance$cp()Lcom/metamoji/media/video/dialog/MfProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Lcom/metamoji/media/video/dialog/MfProgressDialog;->closeDialog()V

    .line 234
    :cond_e
    invoke-static {v9}, Lcom/metamoji/media/video/dialog/MfProgressDialog;->access$setDialogInstance$cp(Lcom/metamoji/media/video/dialog/MfProgressDialog;)V

    return-object v0

    .line 169
    :cond_f
    :try_start_6
    iput-object v13, v2, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$doUpload$1;->L$0:Ljava/lang/Object;

    iput-object v12, v2, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$doUpload$1;->L$1:Ljava/lang/Object;

    iput-object v11, v2, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$doUpload$1;->L$2:Ljava/lang/Object;

    iput-object v10, v2, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$doUpload$1;->L$3:Ljava/lang/Object;

    iput-object v0, v2, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$doUpload$1;->L$4:Ljava/lang/Object;

    iput-boolean v4, v2, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$doUpload$1;->Z$0:Z

    iput v5, v2, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$doUpload$1;->label:I

    move-object v14, v2

    check-cast v14, Lkotlin/coroutines/Continuation;

    new-instance v15, Lkotlin/coroutines/SafeContinuation;

    invoke-static {v14}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v14

    invoke-direct {v15, v14}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v14, v15

    check-cast v14, Lkotlin/coroutines/Continuation;

    .line 170
    sget-object v16, Lcom/metamoji/media/video/dialog/MfProgressDialog;->Companion:Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion;

    invoke-static {v14}, Lcom/metamoji/media/video/dialog/MfProgressDialog;->access$setContinuationTask$cp(Lkotlin/coroutines/Continuation;)V

    .line 171
    sget-object v14, Lcom/metamoji/media/video/dialog/MfProgressDialog;->Companion:Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object/from16 p3, v9

    :try_start_7
    new-instance v9, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$doUpload$s$1$1;

    invoke-direct {v9, v4, v0, v11, v10}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$doUpload$s$1$1;-><init>(ZLcom/metamoji/media/video/VfVideoFileManager$IMultiUploadResult;Ljava/lang/String;Lcom/metamoji/media/video/uploader/VfUploader;)V

    check-cast v9, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v14, v9}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion;->mainThread(Lkotlin/jvm/functions/Function0;)V

    .line 169
    invoke-virtual {v15}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v9

    if-ne v0, v9, :cond_10

    move-object v9, v2

    check-cast v9, Lkotlin/coroutines/Continuation;

    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_10
    if-ne v0, v3, :cond_1

    :goto_5
    return-object v3

    :goto_6
    check-cast v0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$ContinuationStatus;

    .line 208
    sget-object v13, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$ContinuationStatus;->ordinal()I

    move-result v0

    aget v0, v13, v0

    if-eq v0, v7, :cond_16

    if-eq v0, v6, :cond_14

    if-eq v0, v5, :cond_12

    const/4 v13, 0x4

    if-ne v0, v13, :cond_11

    .line 225
    new-instance v0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v1, v0}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion;->mainThread(Lkotlin/jvm/functions/Function0;)V

    move-object v0, v12

    move-object v12, v9

    move-object/from16 v9, p3

    goto/16 :goto_3

    .line 208
    :cond_11
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 218
    :cond_12
    invoke-virtual {v1}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    const-string v2, "error --> ignored"

    invoke-virtual {v0, v2}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 219
    sget-object v0, Lcom/metamoji/media/video/VfVideoFileManager$ForegroundUploadResult;->ERROR_BUT_IGNORED:Lcom/metamoji/media/video/VfVideoFileManager$ForegroundUploadResult;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 231
    invoke-virtual {v1}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 232
    invoke-static {}, Lcom/metamoji/media/video/dialog/MfProgressDialog;->access$getDialogCanceller$cp()Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;->reset()V

    .line 233
    invoke-static {}, Lcom/metamoji/media/video/dialog/MfProgressDialog;->access$getDialogInstance$cp()Lcom/metamoji/media/video/dialog/MfProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Lcom/metamoji/media/video/dialog/MfProgressDialog;->closeDialog()V

    .line 234
    :cond_13
    invoke-static/range {p3 .. p3}, Lcom/metamoji/media/video/dialog/MfProgressDialog;->access$setDialogInstance$cp(Lcom/metamoji/media/video/dialog/MfProgressDialog;)V

    return-object v0

    .line 214
    :cond_14
    :try_start_8
    invoke-virtual {v1}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    const-string v2, "error --> cancelled"

    invoke-virtual {v0, v2}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 215
    sget-object v0, Lcom/metamoji/media/video/VfVideoFileManager$ForegroundUploadResult;->CANCELED:Lcom/metamoji/media/video/VfVideoFileManager$ForegroundUploadResult;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 231
    invoke-virtual {v1}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 232
    invoke-static {}, Lcom/metamoji/media/video/dialog/MfProgressDialog;->access$getDialogCanceller$cp()Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;->reset()V

    .line 233
    invoke-static {}, Lcom/metamoji/media/video/dialog/MfProgressDialog;->access$getDialogInstance$cp()Lcom/metamoji/media/video/dialog/MfProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Lcom/metamoji/media/video/dialog/MfProgressDialog;->closeDialog()V

    .line 234
    :cond_15
    invoke-static/range {p3 .. p3}, Lcom/metamoji/media/video/dialog/MfProgressDialog;->access$setDialogInstance$cp(Lcom/metamoji/media/video/dialog/MfProgressDialog;)V

    return-object v0

    .line 210
    :cond_16
    :try_start_9
    invoke-virtual {v1}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    const-string v2, "error --> confirmed (single-upload mode"

    invoke-virtual {v0, v2}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 211
    sget-object v0, Lcom/metamoji/media/video/VfVideoFileManager$ForegroundUploadResult;->OK:Lcom/metamoji/media/video/VfVideoFileManager$ForegroundUploadResult;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 231
    invoke-virtual {v1}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 232
    invoke-static {}, Lcom/metamoji/media/video/dialog/MfProgressDialog;->access$getDialogCanceller$cp()Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;->reset()V

    .line 233
    invoke-static {}, Lcom/metamoji/media/video/dialog/MfProgressDialog;->access$getDialogInstance$cp()Lcom/metamoji/media/video/dialog/MfProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_17

    invoke-virtual {v2}, Lcom/metamoji/media/video/dialog/MfProgressDialog;->closeDialog()V

    .line 234
    :cond_17
    invoke-static/range {p3 .. p3}, Lcom/metamoji/media/video/dialog/MfProgressDialog;->access$setDialogInstance$cp(Lcom/metamoji/media/video/dialog/MfProgressDialog;)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object/from16 p3, v9

    .line 231
    :goto_7
    invoke-virtual {v1}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 232
    invoke-static {}, Lcom/metamoji/media/video/dialog/MfProgressDialog;->access$getDialogCanceller$cp()Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;->reset()V

    .line 233
    invoke-static {}, Lcom/metamoji/media/video/dialog/MfProgressDialog;->access$getDialogInstance$cp()Lcom/metamoji/media/video/dialog/MfProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_18

    invoke-virtual {v2}, Lcom/metamoji/media/video/dialog/MfProgressDialog;->closeDialog()V

    .line 234
    :cond_18
    invoke-static/range {p3 .. p3}, Lcom/metamoji/media/video/dialog/MfProgressDialog;->access$setDialogInstance$cp(Lcom/metamoji/media/video/dialog/MfProgressDialog;)V

    throw v0
.end method

.method static final doUpload$lambda$3(Lcom/metamoji/media/video/VfVideoFileManager$IMultiUploadingProgress;)Lkotlin/Unit;
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    sget-object v0, Lcom/metamoji/media/video/dialog/MfProgressDialog;->Companion:Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion;

    new-instance v1, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$$ExternalSyntheticLambda2;-><init>(Lcom/metamoji/media/video/VfVideoFileManager$IMultiUploadingProgress;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion;->mainThread(Lkotlin/jvm/functions/Function0;)V

    .line 157
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final doUpload$lambda$3$lambda$2(Lcom/metamoji/media/video/VfVideoFileManager$IMultiUploadingProgress;)Lkotlin/Unit;
    .locals 1

    .line 156
    invoke-static {}, Lcom/metamoji/media/video/dialog/MfProgressDialog;->access$getDialogInstance$cp()Lcom/metamoji/media/video/dialog/MfProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/metamoji/media/video/dialog/MfProgressDialog;->access$getModel$p(Lcom/metamoji/media/video/dialog/MfProgressDialog;)Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;->updateProgress(Lcom/metamoji/media/video/VfVideoFileManager$IMultiUploadingProgress;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final doUpload$lambda$5()Lkotlin/Unit;
    .locals 1

    .line 225
    invoke-static {}, Lcom/metamoji/media/video/dialog/MfProgressDialog;->access$getDialogInstance$cp()Lcom/metamoji/media/video/dialog/MfProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/metamoji/media/video/dialog/MfProgressDialog;->access$getModel$p(Lcom/metamoji/media/video/dialog/MfProgressDialog;)Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;->resetMessage()V

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private final getAllRecordToBeUploaded()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;",
            ">;"
        }
    .end annotation

    .line 60
    sget-object v0, Lcom/metamoji/media/video/VfVideoFileManager;->Companion:Lcom/metamoji/media/video/VfVideoFileManager$Companion;

    invoke-virtual {v0}, Lcom/metamoji/media/video/VfVideoFileManager$Companion;->getInstance()Lcom/metamoji/media/video/VfVideoFileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/media/video/VfVideoFileManager;->getUploader()Lcom/metamoji/media/video/uploader/VfUploader;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/metamoji/media/video/uploader/VfUploader;->getStatusDb()Lcom/metamoji/media/video/uploader/VfUploadStatusDB;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/metamoji/media/video/uploader/VfUploadStatusDB;->Companion:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Companion;

    invoke-virtual {v1}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Companion;->getSS_NOT_DONE()[Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB;->getByStatus([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    check-cast v0, Ljava/util/Collection;

    return-object v0

    :cond_1
    :goto_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method private final getRecordForTicket(Ljava/lang/String;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;",
            ">;"
        }
    .end annotation

    .line 51
    sget-object v0, Lcom/metamoji/media/video/VfVideoFileManager;->Companion:Lcom/metamoji/media/video/VfVideoFileManager$Companion;

    invoke-virtual {v0}, Lcom/metamoji/media/video/VfVideoFileManager$Companion;->getInstance()Lcom/metamoji/media/video/VfVideoFileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/media/video/VfVideoFileManager;->getUploader()Lcom/metamoji/media/video/uploader/VfUploader;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/metamoji/media/video/uploader/VfUploader;->getStatusDb()Lcom/metamoji/media/video/uploader/VfUploadStatusDB;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB;->getByTicket(Ljava/lang/String;)Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 53
    new-array v0, v0, [Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    return-object p1

    .line 52
    :cond_1
    :goto_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    return-object p1
.end method

.method private final show(ZLkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/util/Collection<",
            "Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;",
            ">;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/media/video/VfVideoFileManager$ForegroundUploadResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$show$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$show$1;

    iget v1, v0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$show$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$show$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$show$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$show$1;

    invoke-direct {v0, p0, p3}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$show$1;-><init>(Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$show$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 96
    iget v2, v0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$show$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-boolean p1, v0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$show$1;->Z$0:Z

    iget-object p1, v0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$show$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-boolean p1, v0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$show$1;->Z$0:Z

    iget-object p2, v0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$show$1;->L$0:Ljava/lang/Object;

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 110
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object p3

    const/4 v2, 0x0

    invoke-static {p3, v2, v4, v2}, Lcom/metamoji/lib/utils/UtLog;->debug$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ILjava/lang/Object;)V

    .line 111
    invoke-static {}, Lcom/metamoji/media/video/dialog/MfProgressDialog;->access$getDialogInstance$cp()Lcom/metamoji/media/video/dialog/MfProgressDialog;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 112
    sget-object p1, Lcom/metamoji/media/video/VfVideoFileManager$ForegroundUploadResult;->FATAL_ERROR:Lcom/metamoji/media/video/VfVideoFileManager$ForegroundUploadResult;

    return-object p1

    .line 115
    :cond_4
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p3

    check-cast p3, Lkotlin/coroutines/CoroutineContext;

    new-instance v5, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$show$2;

    invoke-direct {v5, p1, v2}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$show$2;-><init>(ZLkotlin/coroutines/Continuation;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    iput-object p2, v0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$show$1;->L$0:Ljava/lang/Object;

    iput-boolean p1, v0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$show$1;->Z$0:Z

    iput v4, v0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$show$1;->label:I

    invoke-static {p3, v5, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_5

    goto :goto_2

    .line 125
    :cond_5
    :goto_1
    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    iput-object p3, v0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$show$1;->L$0:Ljava/lang/Object;

    iput-boolean p1, v0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$show$1;->Z$0:Z

    iput v3, v0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$show$1;->label:I

    invoke-direct {p0, p1, p2, v0}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion;->doUpload(ZLkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    :goto_2
    return-object v1

    :cond_6
    return-object p1
.end method

.method static final uploadByTicket$lambda$0(Ljava/lang/String;)Ljava/util/Collection;
    .locals 1

    .line 70
    sget-object v0, Lcom/metamoji/media/video/dialog/MfProgressDialog;->Companion:Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion;

    invoke-direct {v0, p0}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion;->getRecordForTicket(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method static final uploadOnLogout$lambda$1()Ljava/util/Collection;
    .locals 1

    .line 88
    sget-object v0, Lcom/metamoji/media/video/dialog/MfProgressDialog;->Companion:Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion;

    invoke-direct {v0}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion;->getAllRecordToBeUploaded()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final getLogger()Lcom/metamoji/lib/utils/UtLog;
    .locals 1

    .line 36
    invoke-static {}, Lcom/metamoji/media/video/dialog/MfProgressDialog;->access$getLogger$cp()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    return-object v0
.end method

.method public final isBusy()Z
    .locals 1

    .line 43
    invoke-static {}, Lcom/metamoji/media/video/dialog/MfProgressDialog;->access$isBusy$cp()Z

    move-result v0

    return v0
.end method

.method public final mainThread(Lkotlin/jvm/functions/Function0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "proc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$mainThread$1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$mainThread$1;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    return-void
.end method

.method public final uploadByTicket(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/media/video/VfVideoFileManager$ForegroundUploadResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 68
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/metamoji/lib/utils/UtLog;->debug$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ILjava/lang/Object;)V

    .line 69
    new-instance v0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion;->show(ZLkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final uploadOnLogout(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/media/video/VfVideoFileManager$ForegroundUploadResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 78
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/metamoji/lib/utils/UtLog;->debug$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ILjava/lang/Object;)V

    .line 83
    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion;->getAllRecordToBeUploaded()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    sget-object p1, Lcom/metamoji/media/video/VfVideoFileManager$ForegroundUploadResult;->OK:Lcom/metamoji/media/video/VfVideoFileManager$ForegroundUploadResult;

    return-object p1

    .line 87
    :cond_0
    new-instance v0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {p0, v2, v0, p1}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion;->show(ZLkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
