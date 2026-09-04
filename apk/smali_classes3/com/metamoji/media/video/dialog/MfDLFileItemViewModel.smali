.class public final Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "MfFileItemDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel$ErrorInfo;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001:\u0001\u001fB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0010\u001a\u00020\u0011H\u0014J\u0016\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0013J\u0006\u0010\u001a\u001a\u00020\u0011J\u0008\u0010\u001b\u001a\u00020\u0011H\u0002J\u001a\u0010\u001c\u001a\u00020\u00112\u0006\u0010\u001d\u001a\u00020\u00182\u0008\u0010\u001e\u001a\u0004\u0018\u00010\nH\u0002R\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0019\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u0008R\u0015\u0010\u000c\u001a\u00060\rR\u00020\u0000\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "<init>",
        "()V",
        "onError",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "getOnError",
        "()Landroidx/lifecycle/MutableLiveData;",
        "onFilePrepared",
        "Ljava/io/File;",
        "getOnFilePrepared",
        "errorInfo",
        "Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel$ErrorInfo;",
        "getErrorInfo",
        "()Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel$ErrorInfo;",
        "onCleared",
        "",
        "serverId",
        "",
        "ticket",
        "asyncTask",
        "Lkotlinx/coroutines/Deferred;",
        "tempFile",
        "Lcom/metamoji/video/AmvDLTempFile;",
        "initialize",
        "terminate",
        "beginDownload",
        "onDownloaded",
        "dl",
        "file",
        "ErrorInfo",
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
.field private asyncTask:Lkotlinx/coroutines/Deferred;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/Deferred<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final errorInfo:Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel$ErrorInfo;

.field private final onError:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final onFilePrepared:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private serverId:Ljava/lang/String;

.field private tempFile:Lcom/metamoji/video/AmvDLTempFile;

.field private ticket:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 34
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;->onError:Landroidx/lifecycle/MutableLiveData;

    .line 35
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;->onFilePrepared:Landroidx/lifecycle/MutableLiveData;

    .line 37
    new-instance v0, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel$ErrorInfo;

    invoke-direct {v0, p0}, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel$ErrorInfo;-><init>(Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;)V

    iput-object v0, p0, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;->errorInfo:Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel$ErrorInfo;

    return-void
.end method

.method public static final synthetic access$onDownloaded(Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;Lcom/metamoji/video/AmvDLTempFile;Ljava/io/File;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;->onDownloaded(Lcom/metamoji/video/AmvDLTempFile;Ljava/io/File;)V

    return-void
.end method

.method public static final synthetic access$setAsyncTask$p(Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;Lkotlinx/coroutines/Deferred;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;->asyncTask:Lkotlinx/coroutines/Deferred;

    return-void
.end method

.method public static final synthetic access$setTempFile$p(Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;Lcom/metamoji/video/AmvDLTempFile;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;->tempFile:Lcom/metamoji/video/AmvDLTempFile;

    return-void
.end method

.method private final beginDownload()V
    .locals 8

    .line 109
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;->serverId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 111
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    new-instance v1, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel$beginDownload$1;

    const/4 v3, 0x0

    invoke-direct {v1, v0, p0, v3}, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel$beginDownload$1;-><init>(Ljava/lang/String;Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;->asyncTask:Lkotlinx/coroutines/Deferred;

    :cond_0
    return-void
.end method

.method private final onDownloaded(Lcom/metamoji/video/AmvDLTempFile;Ljava/io/File;)V
    .locals 7

    .line 131
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel$onDownloaded$1;

    const/4 v2, 0x0

    invoke-direct {v0, p2, p1, p0, v2}, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel$onDownloaded$1;-><init>(Ljava/io/File;Lcom/metamoji/video/AmvDLTempFile;Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public final getErrorInfo()Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel$ErrorInfo;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;->errorInfo:Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel$ErrorInfo;

    return-object v0
.end method

.method public final getOnError()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;->onError:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getOnFilePrepared()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;->onFilePrepared:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final initialize(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "serverId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "ticket"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 81
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    if-lez v0, :cond_2

    .line 76
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;->ticket:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;->terminate()V

    .line 80
    iput-object p2, p0, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;->ticket:Ljava/lang/String;

    .line 81
    iget-object p1, p0, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;->onError:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 82
    iget-object p1, p0, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;->onFilePrepared:Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Lcom/metamoji/media/video/VfVideoFileManager;->Companion:Lcom/metamoji/media/video/VfVideoFileManager$Companion;

    invoke-virtual {v0}, Lcom/metamoji/media/video/VfVideoFileManager$Companion;->getInstance()Lcom/metamoji/media/video/VfVideoFileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/media/video/VfVideoFileManager;->getUploader()Lcom/metamoji/media/video/uploader/VfUploader;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/metamoji/media/video/uploader/VfUploader;->getStatusDb()Lcom/metamoji/media/video/uploader/VfUploadStatusDB;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB;->getByTicket(Ljava/lang/String;)Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->getFile()Ljava/io/File;

    move-result-object v1

    :cond_1
    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void

    .line 84
    :cond_2
    move-object p2, p1

    check-cast p2, Ljava/lang/CharSequence;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-lez p2, :cond_4

    .line 85
    iget-object p2, p0, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;->serverId:Ljava/lang/String;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    :goto_0
    return-void

    .line 88
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;->terminate()V

    .line 89
    iput-object p1, p0, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;->serverId:Ljava/lang/String;

    .line 90
    iget-object p1, p0, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;->onError:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 91
    iget-object p1, p0, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;->onFilePrepared:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 92
    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;->beginDownload()V

    :cond_4
    return-void
.end method

.method protected onCleared()V
    .locals 0

    .line 40
    invoke-super {p0}, Landroidx/lifecycle/ViewModel;->onCleared()V

    .line 41
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;->terminate()V

    return-void
.end method

.method public final terminate()V
    .locals 3

    const/4 v0, 0x0

    .line 99
    iput-object v0, p0, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;->ticket:Ljava/lang/String;

    .line 100
    iput-object v0, p0, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;->serverId:Ljava/lang/String;

    .line 101
    iget-object v1, p0, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;->asyncTask:Lkotlinx/coroutines/Deferred;

    if-eqz v1, :cond_0

    check-cast v1, Lkotlinx/coroutines/Job;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v0}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 102
    :cond_0
    iput-object v0, p0, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;->asyncTask:Lkotlinx/coroutines/Deferred;

    .line 104
    iget-object v1, p0, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;->tempFile:Lcom/metamoji/video/AmvDLTempFile;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/metamoji/video/AmvDLTempFile;->dispose()V

    .line 105
    :cond_1
    iput-object v0, p0, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;->tempFile:Lcom/metamoji/video/AmvDLTempFile;

    return-void
.end method
