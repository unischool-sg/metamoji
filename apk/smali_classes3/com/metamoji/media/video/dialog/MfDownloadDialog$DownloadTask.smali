.class public final Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadTask;
.super Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase;
.source "MfDownloadDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/media/video/dialog/MfDownloadDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DownloadTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadTask$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000e\u0010\u0012\u001a\u00020\u0013H\u0094@\u00a2\u0006\u0002\u0010\u0014R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u001a\u0010\u000c\u001a\u00020\rX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadTask;",
        "Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase;",
        "ticket",
        "",
        "rootModel",
        "Lcom/metamoji/df/model/IModel;",
        "<init>",
        "(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V",
        "getTicket",
        "()Ljava/lang/String;",
        "getRootModel",
        "()Lcom/metamoji/df/model/IModel;",
        "viewModel",
        "Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;",
        "getViewModel",
        "()Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;",
        "setViewModel",
        "(Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;)V",
        "execute",
        "",
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
.field public static final CONNECTOR_NAME:Ljava/lang/String;

.field public static final Companion:Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadTask$Companion;

.field public static final TASK_NAME:Ljava/lang/String;


# instance fields
.field private final rootModel:Lcom/metamoji/df/model/IModel;

.field private final ticket:Ljava/lang/String;

.field public viewModel:Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadTask$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadTask$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadTask;->Companion:Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadTask$Companion;

    .line 142
    const-class v0, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadTask;->TASK_NAME:Ljava/lang/String;

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".connector"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadTask;->CONNECTOR_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V
    .locals 1

    const-string/jumbo v0, "ticket"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "rootModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    sget-object v0, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadTask;->TASK_NAME:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadTask;->ticket:Ljava/lang/String;

    iput-object p2, p0, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadTask;->rootModel:Lcom/metamoji/df/model/IModel;

    return-void
.end method

.method static final execute$lambda$0(Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadTask;Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadTask;->ticket:Ljava/lang/String;

    iget-object p0, p0, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadTask;->rootModel:Lcom/metamoji/df/model/IModel;

    invoke-virtual {p1, v0, p0}, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;->initialize(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final execute$lambda$1(Lcom/metamoji/lib/dialog/UtDialogOwner;)Lcom/metamoji/media/video/dialog/MfDownloadDialog;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    new-instance p0, Lcom/metamoji/media/video/dialog/MfDownloadDialog;

    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfDownloadDialog;-><init>()V

    return-object p0
.end method

.method static final execute$lambda$2(Lcom/metamoji/lib/dialog/UtDialogOwner;)Lcom/metamoji/lib/dialog/UtMessageBox;
    .locals 8

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    sget-object v1, Lcom/metamoji/lib/dialog/UtMessageBox;->Companion:Lcom/metamoji/lib/dialog/UtMessageBox$Companion;

    sget-object p0, Lcom/metamoji/un/video/UnVideoUtils;->Companion:Lcom/metamoji/un/video/UnVideoUtils$Companion;

    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_VIDEO_DL_ERR_SAVE:I

    invoke-virtual {p0, v0}, Lcom/metamoji/un/video/UnVideoUtils$Companion;->getResourceString(I)Ljava/lang/String;

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


# virtual methods
.method protected execute(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 20
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

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v1, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadTask$execute$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadTask$execute$1;

    iget v3, v2, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadTask$execute$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v1, v2, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadTask$execute$1;->label:I

    sub-int/2addr v1, v4

    iput v1, v2, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadTask$execute$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadTask$execute$1;

    invoke-direct {v2, v0, v1}, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadTask$execute$1;-><init>(Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadTask;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadTask$execute$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 148
    iget v4, v2, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadTask$execute$1;->label:I

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v4, :cond_5

    if-eq v4, v9, :cond_4

    if-eq v4, v8, :cond_3

    if-eq v4, v7, :cond_2

    if-ne v4, v6, :cond_1

    iget v3, v2, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadTask$execute$1;->I$0:I

    iget-object v4, v2, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadTask$execute$1;->L$2:Ljava/lang/Object;

    check-cast v4, Landroid/net/Uri;

    iget-object v4, v2, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadTask$execute$1;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/io/File;

    iget-object v2, v2, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadTask$execute$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/metamoji/media/video/dialog/MfDownloadDialog;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v4, v2, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadTask$execute$1;->L$2:Ljava/lang/Object;

    check-cast v4, Landroid/net/Uri;

    iget-object v5, v2, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadTask$execute$1;->L$1:Ljava/lang/Object;

    check-cast v5, Ljava/io/File;

    iget-object v7, v2, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadTask$execute$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lcom/metamoji/media/video/dialog/MfDownloadDialog;

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/16 :goto_3

    :cond_3
    iget-object v4, v2, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadTask$execute$1;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/io/File;

    iget-object v8, v2, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadTask$execute$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lcom/metamoji/media/video/dialog/MfDownloadDialog;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_4
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 149
    sget-object v1, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;->Companion:Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel$Companion;

    move-object v4, v0

    check-cast v4, Lcom/metamoji/lib/dialog/task/IUtImmortalTask;

    new-instance v11, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadTask$$ExternalSyntheticLambda0;

    invoke-direct {v11, v0}, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadTask$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadTask;)V

    invoke-virtual {v1, v4, v11}, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel$Companion;->createBy(Lcom/metamoji/lib/dialog/task/IUtImmortalTask;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadTask;->setViewModel(Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;)V

    .line 150
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v11

    new-instance v1, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadTask$execute$3;

    invoke-direct {v1, v0, v5}, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadTask$execute$3;-><init>(Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadTask;Lkotlin/coroutines/Continuation;)V

    move-object v14, v1

    check-cast v14, Lkotlin/jvm/functions/Function2;

    const/4 v15, 0x3

    const/16 v16, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v11 .. v16}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 153
    new-instance v1, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadTask$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadTask$$ExternalSyntheticLambda1;-><init>()V

    iput v9, v2, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadTask$execute$1;->label:I

    const-string v4, "downloadCache"

    invoke-virtual {v0, v4, v1, v2}, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadTask;->showDialog(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_6

    goto/16 :goto_5

    .line 148
    :cond_6
    :goto_1
    check-cast v1, Lcom/metamoji/media/video/dialog/MfDownloadDialog;

    .line 156
    invoke-virtual {v1}, Lcom/metamoji/media/video/dialog/MfDownloadDialog;->getStatus()Lcom/metamoji/lib/dialog/IUtDialog$Status;

    move-result-object v4

    sget-object v11, Lcom/metamoji/lib/dialog/IUtDialog$Status;->POSITIVE:Lcom/metamoji/lib/dialog/IUtDialog$Status;

    if-eq v4, v11, :cond_7

    .line 157
    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 159
    :cond_7
    invoke-virtual {v0}, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadTask;->getViewModel()Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;->getCacheFile()Ljava/io/File;

    move-result-object v4

    if-nez v4, :cond_8

    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 160
    :cond_8
    move-object v11, v0

    check-cast v11, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase;

    sget-object v12, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadTask;->CONNECTOR_NAME:Ljava/lang/String;

    sget-object v13, Lcom/metamoji/un/video/UnVideoUtils;->Companion:Lcom/metamoji/un/video/UnVideoUtils$Companion;

    const/16 v17, 0x4

    const/16 v18, 0x0

    const-string v14, ""

    const-string v15, ".mp4"

    const/16 v16, 0x0

    invoke-static/range {v13 .. v18}, Lcom/metamoji/un/video/UnVideoUtils$Companion;->autoFileName$default(Lcom/metamoji/un/video/UnVideoUtils$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    iput-object v14, v2, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadTask$execute$1;->L$0:Ljava/lang/Object;

    iput-object v4, v2, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadTask$execute$1;->L$1:Ljava/lang/Object;

    iput v8, v2, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadTask$execute$1;->label:I

    invoke-static {v11, v12, v13, v2}, Lcom/metamoji/lib/dialog/connector/UtFilePickerKt;->launchFileCreatePicker(Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v3, :cond_9

    goto/16 :goto_5

    :cond_9
    move-object/from16 v19, v8

    move-object v8, v1

    move-object/from16 v1, v19

    .line 148
    :goto_2
    check-cast v1, Landroid/net/Uri;

    if-nez v1, :cond_a

    .line 162
    sget-object v1, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;->Companion:Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$Companion;

    invoke-virtual {v1}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v1

    const-string v2, "cancelled"

    invoke-virtual {v1, v2}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 163
    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 168
    :cond_a
    :try_start_1
    new-instance v11, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadTask$execute$result$1;

    invoke-direct {v11, v4, v1, v5}, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadTask$execute$result$1;-><init>(Ljava/io/File;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V

    check-cast v11, Lkotlin/jvm/functions/Function2;

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v2, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadTask$execute$1;->L$0:Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v2, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadTask$execute$1;->L$1:Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v2, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadTask$execute$1;->L$2:Ljava/lang/Object;

    iput v7, v2, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadTask$execute$1;->label:I

    invoke-virtual {v0, v11, v2}, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadTask;->withOwner(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v5, v3, :cond_b

    goto :goto_5

    :cond_b
    move-object v7, v4

    move-object v4, v1

    move-object v1, v5

    move-object v5, v7

    move-object v7, v8

    :goto_3
    :try_start_2
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :catchall_0
    move-object v5, v4

    move-object v7, v8

    move-object v4, v1

    :catchall_1
    move v1, v10

    :goto_4
    if-nez v1, :cond_d

    .line 194
    new-instance v8, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadTask$$ExternalSyntheticLambda2;

    invoke-direct {v8}, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadTask$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v2, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadTask$execute$1;->L$0:Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v2, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadTask$execute$1;->L$1:Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v2, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadTask$execute$1;->L$2:Ljava/lang/Object;

    iput v1, v2, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadTask$execute$1;->I$0:I

    iput v6, v2, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadTask$execute$1;->label:I

    const-string/jumbo v4, "saveErrorMessage"

    invoke-virtual {v0, v4, v8, v2}, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadTask;->showDialog(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_c

    :goto_5
    return-object v3

    :cond_c
    move v3, v1

    :goto_6
    move v1, v3

    :cond_d
    if-eqz v1, :cond_e

    goto :goto_7

    :cond_e
    move v9, v10

    .line 198
    :goto_7
    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public final getRootModel()Lcom/metamoji/df/model/IModel;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadTask;->rootModel:Lcom/metamoji/df/model/IModel;

    return-object v0
.end method

.method public final getTicket()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadTask;->ticket:Ljava/lang/String;

    return-object v0
.end method

.method public final getViewModel()Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadTask;->viewModel:Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "viewModel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final setViewModel(Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    iput-object p1, p0, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadTask;->viewModel:Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;

    return-void
.end method
