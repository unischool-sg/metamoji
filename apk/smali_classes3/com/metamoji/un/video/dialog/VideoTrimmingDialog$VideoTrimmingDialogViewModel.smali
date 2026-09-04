.class public final Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "VideoTrimmingDialog.kt"

# interfaces
.implements Lcom/metamoji/lib/dialog/task/IUtImmortalTaskMutableContextSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/video/dialog/VideoTrimmingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VideoTrimmingDialogViewModel"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J4\u00109\u001a\u00020:2\u0006\u0010\r\u001a\u00020\u000e2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u000e2\u0006\u00104\u001a\u00020\u00172\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u00172\u0008\u0008\u0002\u0010\u001f\u001a\u00020 J\u0006\u0010;\u001a\u00020:J\u0012\u0010<\u001a\u00020\u000e2\u0008\u0008\u0001\u0010=\u001a\u000207H\u0002J\u000e\u0010>\u001a\u00020 H\u0086@\u00a2\u0006\u0002\u0010?J\u0006\u0010@\u001a\u00020 J\u0008\u0010A\u001a\u00020:H\u0014R\u001a\u0010\u0007\u001a\u00020\u0008X\u0096.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\r\u001a\u00020\u000eX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0010\"\u0004\u0008\u0015\u0010\u0012R\u001a\u0010\u0016\u001a\u00020\u0017X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u0017X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u0019\"\u0004\u0008\u001e\u0010\u001bR\u001a\u0010\u001f\u001a\u00020 X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R\u001c\u0010%\u001a\u0004\u0018\u00010&X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*R\u001c\u0010+\u001a\u0004\u0018\u00010,X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008-\u0010.\"\u0004\u0008/\u00100R\u0017\u00101\u001a\u0008\u0012\u0004\u0012\u00020 02\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00081\u00103R\u0019\u00104\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001702\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00085\u00103R\u0017\u00106\u001a\u0008\u0012\u0004\u0012\u00020702\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00088\u00103\u00a8\u0006B"
    }
    d2 = {
        "Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "Lcom/metamoji/lib/dialog/task/IUtImmortalTaskMutableContextSource;",
        "application",
        "Landroid/app/Application;",
        "<init>",
        "(Landroid/app/Application;)V",
        "immortalTaskContext",
        "Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;",
        "getImmortalTaskContext",
        "()Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;",
        "setImmortalTaskContext",
        "(Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;)V",
        "docId",
        "",
        "getDocId",
        "()Ljava/lang/String;",
        "setDocId",
        "(Ljava/lang/String;)V",
        "unitId",
        "getUnitId",
        "setUnitId",
        "rawSource",
        "Ljava/io/File;",
        "getRawSource",
        "()Ljava/io/File;",
        "setRawSource",
        "(Ljava/io/File;)V",
        "destination",
        "getDestination",
        "setDestination",
        "repairOnLoad",
        "",
        "getRepairOnLoad",
        "()Z",
        "setRepairOnLoad",
        "(Z)V",
        "repairedFile",
        "Lcom/metamoji/cm/TempFileRef;",
        "getRepairedFile",
        "()Lcom/metamoji/cm/TempFileRef;",
        "setRepairedFile",
        "(Lcom/metamoji/cm/TempFileRef;)V",
        "repairer",
        "Lcom/metamoji/video/transcoder/IAmvTranscoder;",
        "getRepairer",
        "()Lcom/metamoji/video/transcoder/IAmvTranscoder;",
        "setRepairer",
        "(Lcom/metamoji/video/transcoder/IAmvTranscoder;)V",
        "isRepairing",
        "Landroidx/lifecycle/MutableLiveData;",
        "()Landroidx/lifecycle/MutableLiveData;",
        "source",
        "getSource",
        "repairProgress",
        "",
        "getRepairProgress",
        "prepare",
        "",
        "dispose",
        "getString",
        "resId",
        "repair",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "cancelRepairing",
        "onCleared",
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


# instance fields
.field private destination:Ljava/io/File;

.field public docId:Ljava/lang/String;

.field public immortalTaskContext:Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;

.field private final isRepairing:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public rawSource:Ljava/io/File;

.field private repairOnLoad:Z

.field private final repairProgress:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private repairedFile:Lcom/metamoji/cm/TempFileRef;

.field private repairer:Lcom/metamoji/video/transcoder/IAmvTranscoder;

.field private final source:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private unitId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    const/4 p1, 0x1

    .line 41
    iput-boolean p1, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;->repairOnLoad:Z

    .line 44
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;->isRepairing:Landroidx/lifecycle/MutableLiveData;

    .line 45
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;->source:Landroidx/lifecycle/MutableLiveData;

    .line 46
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;->repairProgress:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public static final synthetic access$getString(Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;I)Ljava/lang/String;
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final getString(I)Ljava/lang/String;
    .locals 1

    .line 65
    invoke-virtual {p0}, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public static synthetic prepare$default(Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;ZILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x1

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 48
    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;->prepare(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Z)V

    return-void
.end method


# virtual methods
.method public final cancelRepairing()Z
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;->repairer:Lcom/metamoji/video/transcoder/IAmvTranscoder;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    .line 105
    invoke-interface {v0}, Lcom/metamoji/video/transcoder/IAmvTranscoder;->cancel()V

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final dispose()V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;->repairedFile:Lcom/metamoji/cm/TempFileRef;

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0}, Lcom/metamoji/cm/TempFileRef;->close()V

    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;->repairedFile:Lcom/metamoji/cm/TempFileRef;

    :cond_0
    return-void
.end method

.method public final getDestination()Ljava/io/File;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;->destination:Ljava/io/File;

    return-object v0
.end method

.method public final getDocId()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;->docId:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "docId"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getImmortalCoroutineScope()Lkotlinx/coroutines/CoroutineScope;
    .locals 1

    .line 34
    invoke-super {p0}, Lcom/metamoji/lib/dialog/task/IUtImmortalTaskMutableContextSource;->getImmortalCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    return-object v0
.end method

.method public getImmortalTaskContext()Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;->immortalTaskContext:Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "immortalTaskContext"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getRawSource()Ljava/io/File;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;->rawSource:Ljava/io/File;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "rawSource"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getRepairOnLoad()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;->repairOnLoad:Z

    return v0
.end method

.method public final getRepairProgress()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;->repairProgress:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getRepairedFile()Lcom/metamoji/cm/TempFileRef;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;->repairedFile:Lcom/metamoji/cm/TempFileRef;

    return-object v0
.end method

.method public final getRepairer()Lcom/metamoji/video/transcoder/IAmvTranscoder;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;->repairer:Lcom/metamoji/video/transcoder/IAmvTranscoder;

    return-object v0
.end method

.method public final getSource()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;->source:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getUnitId()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;->unitId:Ljava/lang/String;

    return-object v0
.end method

.method public final isRepairing()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;->isRepairing:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method protected onCleared()V
    .locals 0

    .line 111
    invoke-super {p0}, Landroidx/lifecycle/AndroidViewModel;->onCleared()V

    .line 112
    invoke-virtual {p0}, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;->dispose()V

    return-void
.end method

.method public final prepare(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Z)V
    .locals 1

    const-string v0, "docId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "source"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0, p1}, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;->setDocId(Ljava/lang/String;)V

    .line 50
    iput-object p2, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;->unitId:Ljava/lang/String;

    .line 51
    invoke-virtual {p0, p3}, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;->setRawSource(Ljava/io/File;)V

    .line 52
    iput-object p4, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;->destination:Ljava/io/File;

    .line 53
    iput-boolean p5, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;->repairOnLoad:Z

    .line 54
    iget-object p1, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;->isRepairing:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final repair(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

    instance-of v0, p1, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel$repair$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel$repair$1;

    iget v1, v0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel$repair$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel$repair$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel$repair$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel$repair$1;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel$repair$1;-><init>(Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v4, v0

    iget-object p1, v4, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel$repair$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 67
    iget v1, v4, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel$repair$1;->label:I

    const/4 v7, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    iget-boolean v0, v4, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel$repair$1;->Z$0:Z

    iget-object v1, v4, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel$repair$1;->L$0:Ljava/lang/Object;

    check-cast v1, Ljava/io/File;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v1, v4, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel$repair$1;->L$0:Ljava/lang/Object;

    check-cast v1, Ljava/io/File;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 68
    iget-boolean p1, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;->repairOnLoad:Z

    if-nez p1, :cond_4

    .line 69
    iget-object p1, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;->source:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;->getRawSource()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 70
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 72
    :cond_4
    iget-object p1, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;->repairedFile:Lcom/metamoji/cm/TempFileRef;

    if-eqz p1, :cond_5

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 73
    :cond_5
    iget-object p1, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;->isRepairing:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 74
    new-instance p1, Lcom/metamoji/cm/TempFileRef;

    const-string/jumbo v1, "trp"

    const-string v5, ".mp4"

    invoke-direct {p1, v1, v5}, Lcom/metamoji/cm/TempFileRef;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;->repairedFile:Lcom/metamoji/cm/TempFileRef;

    .line 75
    invoke-virtual {p1}, Lcom/metamoji/cm/TempFileRef;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 76
    iput-object v1, v4, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel$repair$1;->L$0:Ljava/lang/Object;

    iput v3, v4, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel$repair$1;->label:I

    move-object p1, v4

    check-cast p1, Lkotlin/coroutines/Continuation;

    new-instance v5, Lkotlin/coroutines/SafeContinuation;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v6

    invoke-direct {v5, v6}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v6, v5

    check-cast v6, Lkotlin/coroutines/Continuation;

    .line 77
    new-instance v8, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;

    invoke-virtual {p0}, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;->getRawSource()Ljava/io/File;

    move-result-object v9

    invoke-virtual {p0}, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;->getApplication()Landroid/app/Application;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "getApplicationContext(...)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v11, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder$Mode;->REPAIR:Lcom/metamoji/video/transcoder/AmvCascadeTranscoder$Mode;

    invoke-direct {v8, v9, v10, v11}, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;-><init>(Ljava/io/File;Landroid/content/Context;Lcom/metamoji/video/transcoder/AmvCascadeTranscoder$Mode;)V

    .line 78
    invoke-virtual {v8}, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;->getCompletionListener()Lcom/metamoji/lib/utils/FuncyListener2;

    move-result-object v9

    new-instance v10, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel$repair$result$1$1$1;

    invoke-direct {v10, v8, p0, v1, v6}, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel$repair$result$1$1$1;-><init>(Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;Ljava/io/File;Lkotlin/coroutines/Continuation;)V

    check-cast v10, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v9, v10}, Lcom/metamoji/lib/utils/FuncyListener2;->set(Lkotlin/jvm/functions/Function2;)V

    .line 85
    invoke-virtual {v8}, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;->getProgressListener()Lcom/metamoji/lib/utils/FuncyListener2;

    move-result-object v6

    new-instance v9, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel$repair$result$1$1$2;

    invoke-direct {v9, p0}, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel$repair$result$1$1$2;-><init>(Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;)V

    check-cast v9, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v6, v9}, Lcom/metamoji/lib/utils/FuncyListener2;->set(Lkotlin/jvm/functions/Function2;)V

    .line 88
    invoke-virtual {v8, v1}, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;->transcode(Ljava/io/File;)V

    .line 77
    check-cast v8, Lcom/metamoji/video/transcoder/IAmvTranscoder;

    iput-object v8, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;->repairer:Lcom/metamoji/video/transcoder/IAmvTranscoder;

    .line 76
    invoke-virtual {v5}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object v5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v6

    if-ne v5, v6, :cond_6

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_6
    if-ne v5, v0, :cond_7

    goto :goto_2

    :cond_7
    move-object p1, v5

    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_9

    .line 91
    iget-object v5, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;->repairer:Lcom/metamoji/video/transcoder/IAmvTranscoder;

    if-eqz v5, :cond_9

    invoke-interface {v5}, Lcom/metamoji/video/transcoder/IAmvTranscoder;->getError()Lcom/metamoji/video/AmvError;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Lcom/metamoji/video/AmvError;->getHasError()Z

    move-result v5

    if-ne v5, v3, :cond_9

    move-object v3, v1

    .line 92
    sget-object v1, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;->Companion:Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion;

    new-instance v5, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel$repair$2;

    invoke-direct {v5, p0, v7}, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel$repair$2;-><init>(Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;Lkotlin/coroutines/Continuation;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v4, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel$repair$1;->L$0:Ljava/lang/Object;

    iput-boolean p1, v4, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel$repair$1;->Z$0:Z

    iput v2, v4, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel$repair$1;->label:I

    const/4 v2, 0x0

    move-object v3, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion;->runAsync$default(Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_8

    :goto_2
    return-object v0

    :cond_8
    move v0, p1

    :goto_3
    move p1, v0

    .line 98
    :cond_9
    iput-object v7, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;->repairer:Lcom/metamoji/video/transcoder/IAmvTranscoder;

    .line 99
    iget-object v0, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;->isRepairing:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 100
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final setDestination(Ljava/io/File;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;->destination:Ljava/io/File;

    return-void
.end method

.method public final setDocId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;->docId:Ljava/lang/String;

    return-void
.end method

.method public setImmortalTaskContext(Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iput-object p1, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;->immortalTaskContext:Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;

    return-void
.end method

.method public final setRawSource(Ljava/io/File;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iput-object p1, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;->rawSource:Ljava/io/File;

    return-void
.end method

.method public final setRepairOnLoad(Z)V
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;->repairOnLoad:Z

    return-void
.end method

.method public final setRepairedFile(Lcom/metamoji/cm/TempFileRef;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;->repairedFile:Lcom/metamoji/cm/TempFileRef;

    return-void
.end method

.method public final setRepairer(Lcom/metamoji/video/transcoder/IAmvTranscoder;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;->repairer:Lcom/metamoji/video/transcoder/IAmvTranscoder;

    return-void
.end method

.method public final setUnitId(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;->unitId:Ljava/lang/String;

    return-void
.end method
