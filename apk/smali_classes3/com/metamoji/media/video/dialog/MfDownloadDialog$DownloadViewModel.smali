.class public final Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "MfDownloadDialog.kt"

# interfaces
.implements Lcom/metamoji/lib/dialog/task/IUtImmortalTaskMutableContextSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/media/video/dialog/MfDownloadDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DownloadViewModel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u0000 J2\u00020\u00012\u00020\u0002:\u0001JB\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0016\u0010<\u001a\u00020=2\u0006\u00107\u001a\u00020\u00112\u0006\u00101\u001a\u000202J\u0016\u0010>\u001a\u00020=2\u0006\u0010?\u001a\u00020\r2\u0006\u0010@\u001a\u00020\rJ\u000e\u0010G\u001a\u00020=H\u0086@\u00a2\u0006\u0002\u0010HJ\u0006\u0010I\u001a\u00020=R\u001a\u0010\u0005\u001a\u00020\u0006X\u0096.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001c\u0010\u000b\u001a\u0010\u0012\u000c\u0012\n \u000e*\u0004\u0018\u00010\r0\r0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u000f\u001a\u0010\u0012\u000c\u0012\n \u000e*\u0004\u0018\u00010\r0\r0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u001f\u0010\u0014\u001a\u0010\u0012\u000c\u0012\n \u000e*\u0004\u0018\u00010\u00150\u00150\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0013R\u0017\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u0018\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u0017\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0018\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001bR\u0017\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0018\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u001bR\u0017\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0018\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\u001bR\u0011\u0010\"\u001a\u00020#\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010%R\u001a\u0010&\u001a\u00020\u0015X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*R\u001c\u0010+\u001a\u0004\u0018\u00010,X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008-\u0010.\"\u0004\u0008/\u00100R\u001a\u00101\u001a\u000202X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00083\u00104\"\u0004\u00085\u00106R\u001a\u00107\u001a\u00020\u0011X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00088\u00109\"\u0004\u0008:\u0010;R\u001c\u0010A\u001a\u0004\u0018\u00010BX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008C\u0010D\"\u0004\u0008E\u0010F\u00a8\u0006K"
    }
    d2 = {
        "Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "Lcom/metamoji/lib/dialog/task/IUtImmortalTaskMutableContextSource;",
        "<init>",
        "()V",
        "immortalTaskContext",
        "Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;",
        "getImmortalTaskContext",
        "()Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;",
        "setImmortalTaskContext",
        "(Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;)V",
        "totalBytes",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "kotlin.jvm.PlatformType",
        "currentBytes",
        "errorMessage",
        "",
        "getErrorMessage",
        "()Landroidx/lifecycle/MutableLiveData;",
        "completed",
        "",
        "getCompleted",
        "progress",
        "Landroidx/lifecycle/LiveData;",
        "",
        "getProgress",
        "()Landroidx/lifecycle/LiveData;",
        "progressString",
        "getProgressString",
        "hasError",
        "getHasError",
        "closeButtonCaption",
        "getCloseButtonCaption",
        "cancelCommand",
        "Lcom/metamoji/lib/utils/binding/impl/Command;",
        "getCancelCommand",
        "()Lcom/metamoji/lib/utils/binding/impl/Command;",
        "processing",
        "getProcessing",
        "()Z",
        "setProcessing",
        "(Z)V",
        "cache",
        "Lcom/metamoji/video/IAmvCache;",
        "getCache",
        "()Lcom/metamoji/video/IAmvCache;",
        "setCache",
        "(Lcom/metamoji/video/IAmvCache;)V",
        "rootModel",
        "Lcom/metamoji/df/model/IModel;",
        "getRootModel",
        "()Lcom/metamoji/df/model/IModel;",
        "setRootModel",
        "(Lcom/metamoji/df/model/IModel;)V",
        "ticket",
        "getTicket",
        "()Ljava/lang/String;",
        "setTicket",
        "(Ljava/lang/String;)V",
        "initialize",
        "",
        "onProgress",
        "current",
        "total",
        "cacheFile",
        "Ljava/io/File;",
        "getCacheFile",
        "()Ljava/io/File;",
        "setCacheFile",
        "(Ljava/io/File;)V",
        "download",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "cancel",
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
.field public static final Companion:Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel$Companion;


# instance fields
.field private cache:Lcom/metamoji/video/IAmvCache;

.field private cacheFile:Ljava/io/File;

.field private final cancelCommand:Lcom/metamoji/lib/utils/binding/impl/Command;

.field private final closeButtonCaption:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final completed:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final currentBytes:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final errorMessage:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final hasError:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public immortalTaskContext:Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;

.field private processing:Z

.field private final progress:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final progressString:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public rootModel:Lcom/metamoji/df/model/IModel;

.field public ticket:Ljava/lang/String;

.field private final totalBytes:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;->Companion:Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 46
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 62
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;->totalBytes:Landroidx/lifecycle/MutableLiveData;

    .line 63
    new-instance v2, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v2, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;->currentBytes:Landroidx/lifecycle/MutableLiveData;

    .line 64
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v1, p0, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;->errorMessage:Landroidx/lifecycle/MutableLiveData;

    .line 65
    new-instance v3, Landroidx/lifecycle/MutableLiveData;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;->completed:Landroidx/lifecycle/MutableLiveData;

    .line 67
    move-object v3, v2

    check-cast v3, Landroidx/lifecycle/LiveData;

    move-object v4, v0

    check-cast v4, Landroidx/lifecycle/LiveData;

    new-instance v5, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v3, v4, v5}, Lcom/metamoji/lib/utils/LiveDataExtKt;->combineLatest(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function2;)Landroidx/lifecycle/LiveData;

    move-result-object v3

    iput-object v3, p0, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;->progress:Landroidx/lifecycle/LiveData;

    .line 68
    check-cast v2, Landroidx/lifecycle/LiveData;

    check-cast v0, Landroidx/lifecycle/LiveData;

    new-instance v3, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v2, v0, v3}, Lcom/metamoji/lib/utils/LiveDataExtKt;->combineLatest(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function2;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;->progressString:Landroidx/lifecycle/LiveData;

    .line 69
    check-cast v1, Landroidx/lifecycle/LiveData;

    new-instance v0, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v1, v0}, Landroidx/lifecycle/Transformations;->map(Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;->hasError:Landroidx/lifecycle/LiveData;

    .line 70
    new-instance v1, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v0, v1}, Landroidx/lifecycle/Transformations;->map(Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;->closeButtonCaption:Landroidx/lifecycle/LiveData;

    .line 72
    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/Command;

    invoke-direct {v0}, Lcom/metamoji/lib/utils/binding/impl/Command;-><init>()V

    iput-object v0, p0, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;->cancelCommand:Lcom/metamoji/lib/utils/binding/impl/Command;

    return-void
.end method

.method public static final synthetic access$getCurrentBytes$p(Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;->currentBytes:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public static final synthetic access$getTotalBytes$p(Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;->totalBytes:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static final closeButtonCaption$lambda$3(Z)Ljava/lang/String;
    .locals 1

    .line 70
    sget-object v0, Lcom/metamoji/un/video/UnVideoUtils;->Companion:Lcom/metamoji/un/video/UnVideoUtils$Companion;

    if-eqz p0, :cond_0

    sget p0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_VIDEO_BTN_CONFIRM:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/metamoji/noteanytime/R$string;->Button_Cancel_J:I

    :goto_0
    invoke-virtual {v0, p0}, Lcom/metamoji/un/video/UnVideoUtils$Companion;->getResourceString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static final hasError$lambda$2(Ljava/lang/String;)Z
    .locals 1

    .line 69
    check-cast p0, Ljava/lang/CharSequence;

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v0

    :goto_1
    xor-int/2addr p0, v0

    return p0
.end method

.method static final progress$lambda$0(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Integer;
    .locals 4

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 67
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    div-long/2addr v0, p0

    long-to-int p0, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static final progressString$lambda$1(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/String;
    .locals 5

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 68
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/metamoji/un/video/UnVideoUtils;->Companion:Lcom/metamoji/un/video/UnVideoUtils$Companion;

    sget v1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_VIDEO_FORMAT_PROGRESS_IN_BYTES:I

    sget-object v2, Lcom/metamoji/un/video/UnVideoUtils;->Companion:Lcom/metamoji/un/video/UnVideoUtils$Companion;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/metamoji/un/video/UnVideoUtils$Companion;->stringInKb(J)Ljava/lang/String;

    move-result-object p0

    sget-object v2, Lcom/metamoji/un/video/UnVideoUtils;->Companion:Lcom/metamoji/un/video/UnVideoUtils$Companion;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/metamoji/un/video/UnVideoUtils$Companion;->stringInKb(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/metamoji/un/video/UnVideoUtils$Companion;->formatResourceString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;->cache:Lcom/metamoji/video/IAmvCache;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/metamoji/video/IAmvCache;->cancel()V

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;->completed:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final download(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "no cache file for the ticket: "

    instance-of v1, p1, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel$download$1;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel$download$1;

    iget v2, v1, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel$download$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget p1, v1, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel$download$1;->label:I

    sub-int/2addr p1, v3

    iput p1, v1, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel$download$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel$download$1;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel$download$1;-><init>(Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v1, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel$download$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 93
    iget v3, v1, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel$download$1;->label:I

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v3, :cond_5

    if-eq v3, v8, :cond_4

    if-eq v3, v6, :cond_3

    if-eq v3, v5, :cond_2

    if-ne v3, v4, :cond_1

    iget-object v0, v1, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel$download$1;->L$1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    iget-object v0, v1, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel$download$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_7

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v3, v1, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel$download$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;

    iget-object v5, v1, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel$download$1;->L$0:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception p1

    goto/16 :goto_9

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 94
    iget-boolean p1, p0, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;->processing:Z

    if-eqz p1, :cond_6

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 95
    :cond_6
    iput-boolean v8, p0, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;->processing:Z

    .line 96
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    new-instance v3, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel$download$2;

    invoke-direct {v3, p0, v9}, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel$download$2;-><init>(Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    iput v8, v1, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel$download$1;->label:I

    invoke-static {p1, v3, v1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_7

    goto/16 :goto_6

    .line 101
    :cond_7
    :goto_1
    sget-object p1, Lcom/metamoji/media/video/VfVideoFileManager;->Companion:Lcom/metamoji/media/video/VfVideoFileManager$Companion;

    invoke-virtual {p1}, Lcom/metamoji/media/video/VfVideoFileManager$Companion;->getInstance()Lcom/metamoji/media/video/VfVideoFileManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;->getTicket()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object v10

    iput v6, v1, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel$download$1;->label:I

    invoke-virtual {p1, v3, v7, v10, v1}, Lcom/metamoji/media/video/VfVideoFileManager;->getPathForPlayback(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_8

    goto/16 :goto_6

    :cond_8
    :goto_2
    instance-of v3, p1, Ljava/lang/String;

    if-eqz v3, :cond_9

    check-cast p1, Ljava/lang/String;

    goto :goto_3

    :cond_9
    move-object p1, v9

    :goto_3
    if-nez p1, :cond_a

    .line 103
    sget-object p1, Lcom/metamoji/media/video/dialog/MfDownloadDialog;->Companion:Lcom/metamoji/media/video/dialog/MfDownloadDialog$Companion;

    invoke-virtual {p1}, Lcom/metamoji/media/video/dialog/MfDownloadDialog$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object p1

    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;->getTicket()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "no uri for the ticket: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/lib/utils/UtLog;->error(Ljava/lang/String;)V

    .line 104
    iget-object p1, p0, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;->errorMessage:Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Lcom/metamoji/un/video/UnVideoUtils;->Companion:Lcom/metamoji/un/video/UnVideoUtils$Companion;

    sget v1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_VIDEO_DL_ERR_DOWNLOAD:I

    invoke-virtual {v0, v1}, Lcom/metamoji/un/video/UnVideoUtils$Companion;->getResourceString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 105
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 107
    :cond_a
    sget-object v3, Lcom/metamoji/video/AmvCacheManager;->INSTANCE:Lcom/metamoji/video/AmvCacheManager;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const-string v10, "parse(...)"

    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;->getTicket()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lcom/metamoji/video/AmvCacheManager;->getCache(Landroid/net/Uri;Ljava/lang/String;)Lcom/metamoji/video/IAmvCache;

    move-result-object v3

    iput-object v3, p0, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;->cache:Lcom/metamoji/video/IAmvCache;

    .line 109
    :try_start_2
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v6, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel$download$3;

    invoke-direct {v6, p0}, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel$download$3;-><init>(Ljava/lang/Object;)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    invoke-interface {v3, v6}, Lcom/metamoji/video/IAmvCache;->setProgressCallback(Lkotlin/jvm/functions/Function2;)V

    .line 110
    iget-object v3, p0, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;->cache:Lcom/metamoji/video/IAmvCache;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v1, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel$download$1;->L$0:Ljava/lang/Object;

    iput-object p0, v1, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel$download$1;->L$1:Ljava/lang/Object;

    iput v5, v1, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel$download$1;->label:I

    invoke-interface {v3, v1}, Lcom/metamoji/video/IAmvCache;->getFileAsync(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_b

    goto/16 :goto_6

    :cond_b
    move-object v5, p1

    move-object p1, v3

    move-object v3, p0

    .line 93
    :goto_4
    check-cast p1, Ljava/io/File;

    iput-object p1, v3, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;->cacheFile:Ljava/io/File;

    .line 111
    iget-object p1, p0, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;->cacheFile:Ljava/io/File;

    if-nez p1, :cond_c

    .line 112
    sget-object p1, Lcom/metamoji/media/video/dialog/MfDownloadDialog;->Companion:Lcom/metamoji/media/video/dialog/MfDownloadDialog$Companion;

    invoke-virtual {p1}, Lcom/metamoji/media/video/dialog/MfDownloadDialog$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object p1

    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;->getTicket()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/lib/utils/UtLog;->error(Ljava/lang/String;)V

    .line 113
    iget-object p1, p0, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;->errorMessage:Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Lcom/metamoji/un/video/UnVideoUtils;->Companion:Lcom/metamoji/un/video/UnVideoUtils$Companion;

    sget v1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_VIDEO_DL_ERR_DOWNLOAD:I

    invoke-virtual {v0, v1}, Lcom/metamoji/un/video/UnVideoUtils$Companion;->getResourceString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_8

    .line 115
    :cond_c
    sget-object p1, Lcom/metamoji/media/video/dialog/MfDownloadDialog;->Companion:Lcom/metamoji/media/video/dialog/MfDownloadDialog$Companion;

    invoke-virtual {p1}, Lcom/metamoji/media/video/dialog/MfDownloadDialog$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object p1

    const-string/jumbo v0, "succeeded."

    invoke-virtual {p1, v0}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 116
    iget-object p1, p0, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;->cacheFile:Ljava/io/File;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-static {v10, v11}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_5

    :cond_d
    move-object p1, v9

    :goto_5
    if-eqz p1, :cond_e

    .line 118
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {p0, v10, v11, v12, v13}, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;->onProgress(JJ)V

    .line 119
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel$download$1;->L$0:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v1, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel$download$1;->L$1:Ljava/lang/Object;

    iput v4, v1, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel$download$1;->label:I

    const-wide/16 v3, 0x3e8

    invoke-static {v3, v4, v1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_e

    :goto_6
    return-object v2

    .line 121
    :cond_e
    :goto_7
    iget-object p1, p0, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;->completed:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 124
    :goto_8
    iput-boolean v7, p0, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;->processing:Z

    .line 125
    iget-object p1, p0, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;->cache:Lcom/metamoji/video/IAmvCache;

    if-eqz p1, :cond_f

    invoke-interface {p1}, Lcom/metamoji/video/IAmvCache;->release()I

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    .line 126
    :cond_f
    iput-object v9, p0, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;->cache:Lcom/metamoji/video/IAmvCache;

    .line 128
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 124
    :goto_9
    iput-boolean v7, p0, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;->processing:Z

    .line 125
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;->cache:Lcom/metamoji/video/IAmvCache;

    if-eqz v0, :cond_10

    invoke-interface {v0}, Lcom/metamoji/video/IAmvCache;->release()I

    move-result v0

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    .line 126
    :cond_10
    iput-object v9, p0, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;->cache:Lcom/metamoji/video/IAmvCache;

    throw p1
.end method

.method public final getCache()Lcom/metamoji/video/IAmvCache;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;->cache:Lcom/metamoji/video/IAmvCache;

    return-object v0
.end method

.method public final getCacheFile()Ljava/io/File;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;->cacheFile:Ljava/io/File;

    return-object v0
.end method

.method public final getCancelCommand()Lcom/metamoji/lib/utils/binding/impl/Command;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;->cancelCommand:Lcom/metamoji/lib/utils/binding/impl/Command;

    return-object v0
.end method

.method public final getCloseButtonCaption()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;->closeButtonCaption:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getCompleted()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;->completed:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getErrorMessage()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;->errorMessage:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getHasError()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;->hasError:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public getImmortalCoroutineScope()Lkotlinx/coroutines/CoroutineScope;
    .locals 1

    .line 46
    invoke-super {p0}, Lcom/metamoji/lib/dialog/task/IUtImmortalTaskMutableContextSource;->getImmortalCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    return-object v0
.end method

.method public getImmortalTaskContext()Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;->immortalTaskContext:Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "immortalTaskContext"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getProcessing()Z
    .locals 1

    .line 73
    iget-boolean v0, p0, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;->processing:Z

    return v0
.end method

.method public final getProgress()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;->progress:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getProgressString()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;->progressString:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getRootModel()Lcom/metamoji/df/model/IModel;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;->rootModel:Lcom/metamoji/df/model/IModel;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "rootModel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getTicket()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;->ticket:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "ticket"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final initialize(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V
    .locals 2

    const-string/jumbo v0, "ticket"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "rootModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;->processing:Z

    .line 81
    iget-object v1, p0, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;->completed:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 82
    invoke-virtual {p0, p2}, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;->setRootModel(Lcom/metamoji/df/model/IModel;)V

    .line 83
    invoke-virtual {p0, p1}, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;->setTicket(Ljava/lang/String;)V

    return-void
.end method

.method public final onProgress(JJ)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;->totalBytes:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 88
    iget-object p3, p0, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;->currentBytes:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setCache(Lcom/metamoji/video/IAmvCache;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;->cache:Lcom/metamoji/video/IAmvCache;

    return-void
.end method

.method public final setCacheFile(Ljava/io/File;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;->cacheFile:Ljava/io/File;

    return-void
.end method

.method public setImmortalTaskContext(Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iput-object p1, p0, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;->immortalTaskContext:Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;

    return-void
.end method

.method public final setProcessing(Z)V
    .locals 0

    .line 73
    iput-boolean p1, p0, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;->processing:Z

    return-void
.end method

.method public final setRootModel(Lcom/metamoji/df/model/IModel;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iput-object p1, p0, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;->rootModel:Lcom/metamoji/df/model/IModel;

    return-void
.end method

.method public final setTicket(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    iput-object p1, p0, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;->ticket:Ljava/lang/String;

    return-void
.end method
