.class public final Lcom/metamoji/un/image/UnImageSaveTask;
.super Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;
.source "UnImageSaveTask.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/image/UnImageSaveTask$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000c\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000e\u0010\u000e\u001a\u00020\u0005H\u0094@\u00a2\u0006\u0002\u0010\u000fR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000c\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/metamoji/un/image/UnImageSaveTask;",
        "Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;",
        "imageUnit",
        "Lcom/metamoji/un/image/UnImageUnit;",
        "showErrorMessage",
        "",
        "showSuccessMessage",
        "<init>",
        "(Lcom/metamoji/un/image/UnImageUnit;ZZ)V",
        "getImageUnit",
        "()Lcom/metamoji/un/image/UnImageUnit;",
        "getShowErrorMessage",
        "()Z",
        "getShowSuccessMessage",
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
.field public static final Companion:Lcom/metamoji/un/image/UnImageSaveTask$Companion;

.field public static final TASK_NAME:Ljava/lang/String;


# instance fields
.field private final imageUnit:Lcom/metamoji/un/image/UnImageUnit;

.field private final showErrorMessage:Z

.field private final showSuccessMessage:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/un/image/UnImageSaveTask$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/un/image/UnImageSaveTask$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/un/image/UnImageSaveTask;->Companion:Lcom/metamoji/un/image/UnImageSaveTask$Companion;

    .line 36
    const-class v0, Lcom/metamoji/un/image/UnImageSaveTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/metamoji/un/image/UnImageSaveTask;->TASK_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/un/image/UnImageUnit;ZZ)V
    .locals 7

    const-string v0, "imageUnit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    sget-object v2, Lcom/metamoji/un/image/UnImageSaveTask;->TASK_NAME:Ljava/lang/String;

    const-string v0, "TASK_NAME"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;-><init>(Ljava/lang/String;Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, v1, Lcom/metamoji/un/image/UnImageSaveTask;->imageUnit:Lcom/metamoji/un/image/UnImageUnit;

    iput-boolean p2, v1, Lcom/metamoji/un/image/UnImageSaveTask;->showErrorMessage:Z

    iput-boolean p3, v1, Lcom/metamoji/un/image/UnImageSaveTask;->showSuccessMessage:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/metamoji/un/image/UnImageUnit;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x1

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 33
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/un/image/UnImageSaveTask;-><init>(Lcom/metamoji/un/image/UnImageUnit;ZZ)V

    return-void
.end method

.method static final execute$lambda$0(ILcom/metamoji/lib/dialog/UtDialogOwner;)Lcom/metamoji/lib/dialog/UtMessageBox;
    .locals 8

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
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

.method public static final saveImage(Lcom/metamoji/un/image/UnImageUnit;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/un/image/UnImageSaveTask;->Companion:Lcom/metamoji/un/image/UnImageSaveTask$Companion;

    invoke-virtual {v0, p0}, Lcom/metamoji/un/image/UnImageSaveTask$Companion;->saveImage(Lcom/metamoji/un/image/UnImageUnit;)V

    return-void
.end method


# virtual methods
.method protected execute(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 21
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

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/metamoji/un/image/UnImageSaveTask$execute$1;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/metamoji/un/image/UnImageSaveTask$execute$1;

    iget v3, v2, Lcom/metamoji/un/image/UnImageSaveTask$execute$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v0, v2, Lcom/metamoji/un/image/UnImageSaveTask$execute$1;->label:I

    sub-int/2addr v0, v4

    iput v0, v2, Lcom/metamoji/un/image/UnImageSaveTask$execute$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/metamoji/un/image/UnImageSaveTask$execute$1;

    invoke-direct {v2, v1, v0}, Lcom/metamoji/un/image/UnImageSaveTask$execute$1;-><init>(Lcom/metamoji/un/image/UnImageSaveTask;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v2, Lcom/metamoji/un/image/UnImageSaveTask$execute$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 103
    iget v4, v2, Lcom/metamoji/un/image/UnImageSaveTask$execute$1;->label:I

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v4, :cond_5

    if-eq v4, v9, :cond_4

    if-eq v4, v8, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    iget v3, v2, Lcom/metamoji/un/image/UnImageSaveTask$execute$1;->I$1:I

    iget v2, v2, Lcom/metamoji/un/image/UnImageSaveTask$execute$1;->I$0:I

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v4, v2, Lcom/metamoji/un/image/UnImageSaveTask$execute$1;->L$5:Ljava/lang/Object;

    check-cast v4, Landroid/net/Uri;

    iget-object v4, v2, Lcom/metamoji/un/image/UnImageSaveTask$execute$1;->L$4:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/Bitmap$CompressFormat;

    iget-object v4, v2, Lcom/metamoji/un/image/UnImageSaveTask$execute$1;->L$3:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v4, v2, Lcom/metamoji/un/image/UnImageSaveTask$execute$1;->L$2:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v4, v2, Lcom/metamoji/un/image/UnImageSaveTask$execute$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lcom/metamoji/lib/dialog/broker/pickers/UtCreateFilePicker;

    iget-object v4, v2, Lcom/metamoji/un/image/UnImageSaveTask$execute$1;->L$0:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_4

    :cond_3
    iget-object v4, v2, Lcom/metamoji/un/image/UnImageSaveTask$execute$1;->L$4:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/Bitmap$CompressFormat;

    iget-object v11, v2, Lcom/metamoji/un/image/UnImageSaveTask$execute$1;->L$3:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    iget-object v12, v2, Lcom/metamoji/un/image/UnImageSaveTask$execute$1;->L$2:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    iget-object v13, v2, Lcom/metamoji/un/image/UnImageSaveTask$execute$1;->L$1:Ljava/lang/Object;

    check-cast v13, Lcom/metamoji/lib/dialog/broker/pickers/UtCreateFilePicker;

    iget-object v14, v2, Lcom/metamoji/un/image/UnImageSaveTask$execute$1;->L$0:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Boolean;

    :try_start_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    :cond_4
    iget-object v4, v2, Lcom/metamoji/un/image/UnImageSaveTask$execute$1;->L$0:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    :try_start_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v14, v4

    goto :goto_1

    :cond_5
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 105
    :try_start_3
    iget-object v0, v1, Lcom/metamoji/un/image/UnImageSaveTask;->imageUnit:Lcom/metamoji/un/image/UnImageUnit;

    invoke-virtual {v0}, Lcom/metamoji/un/image/UnImageUnit;->isPngSuggested()Ljava/lang/Boolean;

    move-result-object v0

    .line 106
    move-object v4, v1

    check-cast v4, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;

    iput-object v0, v2, Lcom/metamoji/un/image/UnImageSaveTask$execute$1;->L$0:Ljava/lang/Object;

    iput v9, v2, Lcom/metamoji/un/image/UnImageSaveTask$execute$1;->label:I

    invoke-static {v4, v2}, Lcom/metamoji/ui/task/SaveFileTaskKt;->getFilePickers(Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_6

    goto/16 :goto_7

    :cond_6
    move-object v14, v0

    move-object v0, v4

    :goto_1
    check-cast v0, Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;->getCreateFilePicker()Lcom/metamoji/lib/dialog/broker/pickers/UtCreateFilePicker;

    move-result-object v13

    .line 110
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 111
    sget-object v15, Lcom/metamoji/un/video/UnVideoUtils;->Companion:Lcom/metamoji/un/video/UnVideoUtils$Companion;

    const-string v16, ""

    const-string v17, ".png"

    const/16 v19, 0x4

    const/16 v20, 0x0

    const/16 v18, 0x0

    invoke-static/range {v15 .. v20}, Lcom/metamoji/un/video/UnVideoUtils$Companion;->autoFileName$default(Lcom/metamoji/un/video/UnVideoUtils$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 112
    const-string v4, "image/png"

    .line 113
    sget-object v11, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_2

    .line 115
    :cond_7
    sget-object v15, Lcom/metamoji/un/video/UnVideoUtils;->Companion:Lcom/metamoji/un/video/UnVideoUtils$Companion;

    const-string v16, ""

    const-string v17, ".jpg"

    const/16 v19, 0x4

    const/16 v20, 0x0

    const/16 v18, 0x0

    invoke-static/range {v15 .. v20}, Lcom/metamoji/un/video/UnVideoUtils$Companion;->autoFileName$default(Lcom/metamoji/un/video/UnVideoUtils$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 116
    const-string v4, "image/jpeg"

    .line 117
    sget-object v11, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_2
    move-object v12, v11

    move-object v11, v4

    move-object v4, v12

    move-object v12, v0

    .line 119
    invoke-static {v14}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v2, Lcom/metamoji/un/image/UnImageSaveTask$execute$1;->L$0:Ljava/lang/Object;

    invoke-static {v13}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v2, Lcom/metamoji/un/image/UnImageSaveTask$execute$1;->L$1:Ljava/lang/Object;

    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v2, Lcom/metamoji/un/image/UnImageSaveTask$execute$1;->L$2:Ljava/lang/Object;

    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v2, Lcom/metamoji/un/image/UnImageSaveTask$execute$1;->L$3:Ljava/lang/Object;

    iput-object v4, v2, Lcom/metamoji/un/image/UnImageSaveTask$execute$1;->L$4:Ljava/lang/Object;

    iput v8, v2, Lcom/metamoji/un/image/UnImageSaveTask$execute$1;->label:I

    invoke-virtual {v13, v12, v11, v2}, Lcom/metamoji/lib/dialog/broker/pickers/UtCreateFilePicker;->selectFile(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_8

    goto/16 :goto_7

    .line 103
    :cond_8
    :goto_3
    check-cast v0, Landroid/net/Uri;

    if-nez v0, :cond_9

    .line 122
    sget-object v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;->Companion:Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$Companion;

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    const-string v4, "cancelled"

    invoke-virtual {v0, v4}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 123
    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 125
    :cond_9
    new-instance v15, Lcom/metamoji/un/image/UnImageSaveTask$execute$result$1;

    invoke-direct {v15, v1, v0, v4, v10}, Lcom/metamoji/un/image/UnImageSaveTask$execute$result$1;-><init>(Lcom/metamoji/un/image/UnImageSaveTask;Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;Lkotlin/coroutines/Continuation;)V

    check-cast v15, Lkotlin/jvm/functions/Function2;

    invoke-static {v14}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    iput-object v14, v2, Lcom/metamoji/un/image/UnImageSaveTask$execute$1;->L$0:Ljava/lang/Object;

    invoke-static {v13}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    iput-object v13, v2, Lcom/metamoji/un/image/UnImageSaveTask$execute$1;->L$1:Ljava/lang/Object;

    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    iput-object v12, v2, Lcom/metamoji/un/image/UnImageSaveTask$execute$1;->L$2:Ljava/lang/Object;

    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    iput-object v11, v2, Lcom/metamoji/un/image/UnImageSaveTask$execute$1;->L$3:Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v2, Lcom/metamoji/un/image/UnImageSaveTask$execute$1;->L$4:Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v2, Lcom/metamoji/un/image/UnImageSaveTask$execute$1;->L$5:Ljava/lang/Object;

    iput v6, v2, Lcom/metamoji/un/image/UnImageSaveTask$execute$1;->label:I

    invoke-virtual {v1, v15, v2}, Lcom/metamoji/un/image/UnImageSaveTask;->withOwner(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_a

    goto :goto_7

    :cond_a
    :goto_4
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    .line 147
    sget-object v4, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;->Companion:Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$Companion;

    invoke-virtual {v4}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v4

    invoke-static {v4, v0, v10, v8, v10}, Lcom/metamoji/lib/utils/UtLog;->stackTrace$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    move v0, v7

    .line 150
    :goto_5
    sget-object v4, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;->Companion:Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$Companion;

    invoke-virtual {v4}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v4

    const-string v6, "done"

    invoke-virtual {v4, v6}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 152
    iget-boolean v4, v1, Lcom/metamoji/un/image/UnImageSaveTask;->showErrorMessage:Z

    if-eqz v4, :cond_b

    if-eqz v0, :cond_c

    :cond_b
    iget-boolean v4, v1, Lcom/metamoji/un/image/UnImageSaveTask;->showSuccessMessage:Z

    if-eqz v4, :cond_f

    if-eqz v0, :cond_f

    :cond_c
    if-eqz v0, :cond_d

    .line 153
    sget v4, Lcom/metamoji/noteanytime/R$string;->Msg_FileSave_Succeeded:I

    goto :goto_6

    :cond_d
    sget v4, Lcom/metamoji/noteanytime/R$string;->Msg_FileSave_Failed:I

    .line 154
    :goto_6
    sget-object v6, Lcom/metamoji/ui/task/SaveFileTask;->TASK_NAME:Ljava/lang/String;

    const-string v8, "TASK_NAME"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Lcom/metamoji/un/image/UnImageSaveTask$$ExternalSyntheticLambda0;

    invoke-direct {v8, v4}, Lcom/metamoji/un/image/UnImageSaveTask$$ExternalSyntheticLambda0;-><init>(I)V

    iput-object v10, v2, Lcom/metamoji/un/image/UnImageSaveTask$execute$1;->L$0:Ljava/lang/Object;

    iput-object v10, v2, Lcom/metamoji/un/image/UnImageSaveTask$execute$1;->L$1:Ljava/lang/Object;

    iput-object v10, v2, Lcom/metamoji/un/image/UnImageSaveTask$execute$1;->L$2:Ljava/lang/Object;

    iput-object v10, v2, Lcom/metamoji/un/image/UnImageSaveTask$execute$1;->L$3:Ljava/lang/Object;

    iput-object v10, v2, Lcom/metamoji/un/image/UnImageSaveTask$execute$1;->L$4:Ljava/lang/Object;

    iput-object v10, v2, Lcom/metamoji/un/image/UnImageSaveTask$execute$1;->L$5:Ljava/lang/Object;

    iput v0, v2, Lcom/metamoji/un/image/UnImageSaveTask$execute$1;->I$0:I

    iput v4, v2, Lcom/metamoji/un/image/UnImageSaveTask$execute$1;->I$1:I

    iput v5, v2, Lcom/metamoji/un/image/UnImageSaveTask$execute$1;->label:I

    invoke-virtual {v1, v6, v8, v2}, Lcom/metamoji/un/image/UnImageSaveTask;->showDialog(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_e

    :goto_7
    return-object v3

    :cond_e
    move v2, v0

    :goto_8
    move v0, v2

    :cond_f
    if-eqz v0, :cond_10

    move v7, v9

    .line 159
    :cond_10
    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final getImageUnit()Lcom/metamoji/un/image/UnImageUnit;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/metamoji/un/image/UnImageSaveTask;->imageUnit:Lcom/metamoji/un/image/UnImageUnit;

    return-object v0
.end method

.method public final getShowErrorMessage()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lcom/metamoji/un/image/UnImageSaveTask;->showErrorMessage:Z

    return v0
.end method

.method public final getShowSuccessMessage()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lcom/metamoji/un/image/UnImageSaveTask;->showSuccessMessage:Z

    return v0
.end method
