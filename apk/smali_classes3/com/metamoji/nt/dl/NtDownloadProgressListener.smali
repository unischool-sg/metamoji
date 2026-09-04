.class public final Lcom/metamoji/nt/dl/NtDownloadProgressListener;
.super Ljava/lang/Object;
.source "NtDownloadProgressListener.kt"

# interfaces
.implements Lcom/metamoji/nt/dl/INtDownloadProgressListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/nt/dl/NtDownloadProgressListener$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 #2\u00020\u00012\u00020\u0002:\u0001#B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u000cH\u0016J \u0010\u0017\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u0019H\u0016J\u0010\u0010\u001c\u001a\u00020\u00112\u0006\u0010\u001d\u001a\u00020\u0019H\u0016J\u0008\u0010\u001e\u001a\u00020\u0011H\u0016J\u0008\u0010\u001f\u001a\u00020\u0011H\u0016J\u0012\u0010 \u001a\u00020\u00112\u0008\u0010!\u001a\u0004\u0018\u00010\"H\u0016R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0003\u001a\u0004\u0018\u00010\u00048BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u0016\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\r\u001a\u0004\u0018\u00010\u000c8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u0016\u0010\u0013\u001a\u0004\u0018\u00010\u00148BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006$"
    }
    d2 = {
        "Lcom/metamoji/nt/dl/NtDownloadProgressListener;",
        "Lcom/metamoji/nt/dl/INtDownloadProgressListener;",
        "Landroid/view/View$OnClickListener;",
        "output",
        "Lcom/metamoji/nt/dl/INtResourceDownloadStatusOutput;",
        "<init>",
        "(Lcom/metamoji/nt/dl/INtResourceDownloadStatusOutput;)V",
        "mRefOutput",
        "Ljava/lang/ref/WeakReference;",
        "getOutput",
        "()Lcom/metamoji/nt/dl/INtResourceDownloadStatusOutput;",
        "mRefDownloadManager",
        "Lcom/metamoji/nt/dl/NtResourceDownloadManager;",
        "downloadManager",
        "getDownloadManager",
        "()Lcom/metamoji/nt/dl/NtResourceDownloadManager;",
        "connectManager",
        "",
        "manager",
        "resources",
        "Landroid/content/res/Resources;",
        "getResources",
        "()Landroid/content/res/Resources;",
        "onDownloadBegin",
        "messageId",
        "",
        "count",
        "total",
        "onDownloadProgress",
        "percent",
        "onDownloadCancelEnabled",
        "onDownloadEnd",
        "onClick",
        "v",
        "Landroid/view/View;",
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
.field public static final Companion:Lcom/metamoji/nt/dl/NtDownloadProgressListener$Companion;


# instance fields
.field private mRefDownloadManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/metamoji/nt/dl/NtResourceDownloadManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mRefOutput:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/metamoji/nt/dl/INtResourceDownloadStatusOutput;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/nt/dl/NtDownloadProgressListener$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/nt/dl/NtDownloadProgressListener$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/nt/dl/NtDownloadProgressListener;->Companion:Lcom/metamoji/nt/dl/NtDownloadProgressListener$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/nt/dl/INtResourceDownloadStatusOutput;)V
    .locals 1

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/metamoji/nt/dl/NtDownloadProgressListener;->mRefOutput:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static final createInstance(Ljava/lang/Object;)Lcom/metamoji/nt/dl/NtDownloadProgressListener;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/nt/dl/NtDownloadProgressListener;->Companion:Lcom/metamoji/nt/dl/NtDownloadProgressListener$Companion;

    invoke-virtual {v0, p0}, Lcom/metamoji/nt/dl/NtDownloadProgressListener$Companion;->createInstance(Ljava/lang/Object;)Lcom/metamoji/nt/dl/NtDownloadProgressListener;

    move-result-object p0

    return-object p0
.end method

.method private final getDownloadManager()Lcom/metamoji/nt/dl/NtResourceDownloadManager;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/metamoji/nt/dl/NtDownloadProgressListener;->mRefDownloadManager:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/dl/NtResourceDownloadManager;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private final getOutput()Lcom/metamoji/nt/dl/INtResourceDownloadStatusOutput;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/metamoji/nt/dl/NtDownloadProgressListener;->mRefOutput:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/dl/INtResourceDownloadStatusOutput;

    return-object v0
.end method

.method private final getResources()Landroid/content/res/Resources;
    .locals 1

    .line 52
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method static final onClick$lambda$0(Lcom/metamoji/nt/dl/NtDownloadProgressListener;Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 86
    invoke-direct {p0}, Lcom/metamoji/nt/dl/NtDownloadProgressListener;->getDownloadManager()Lcom/metamoji/nt/dl/NtResourceDownloadManager;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/metamoji/nt/dl/NtResourceDownloadManager;->cancel()V

    :cond_0
    return-void
.end method


# virtual methods
.method public connectManager(Lcom/metamoji/nt/dl/NtResourceDownloadManager;)V
    .locals 1

    const-string v0, "manager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/metamoji/nt/dl/NtDownloadProgressListener;->mRefDownloadManager:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 84
    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_DOWNLOAD_RESOURCE_CANCEL:I

    sget v2, Lcom/metamoji/noteanytime/R$string;->Msg_YES:I

    sget v3, Lcom/metamoji/noteanytime/R$string;->Msg_NO:I

    new-instance v4, Lcom/metamoji/nt/dl/NtDownloadProgressListener$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/metamoji/nt/dl/NtDownloadProgressListener$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/nt/dl/NtDownloadProgressListener;)V

    const/4 v5, 0x1

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lcom/metamoji/cm/CmUtils;->selectDialog(IIIILandroid/content/DialogInterface$OnClickListener;Z)V

    return-void
.end method

.method public onDownloadBegin(III)V
    .locals 1

    .line 57
    invoke-direct {p0}, Lcom/metamoji/nt/dl/NtDownloadProgressListener;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-le p3, v0, :cond_1

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 63
    :cond_1
    invoke-direct {p0}, Lcom/metamoji/nt/dl/NtDownloadProgressListener;->getOutput()Lcom/metamoji/nt/dl/INtResourceDownloadStatusOutput;

    move-result-object p2

    if-eqz p2, :cond_2

    move-object p3, p0

    check-cast p3, Landroid/view/View$OnClickListener;

    invoke-interface {p2, p1, p3}, Lcom/metamoji/nt/dl/INtResourceDownloadStatusOutput;->beginResourceDownload(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onDownloadCancelEnabled()V
    .locals 1

    .line 71
    invoke-direct {p0}, Lcom/metamoji/nt/dl/NtDownloadProgressListener;->getOutput()Lcom/metamoji/nt/dl/INtResourceDownloadStatusOutput;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/metamoji/nt/dl/INtResourceDownloadStatusOutput;->setResourceDownloadCancellable()V

    :cond_0
    return-void
.end method

.method public onDownloadEnd()V
    .locals 1

    .line 75
    invoke-direct {p0}, Lcom/metamoji/nt/dl/NtDownloadProgressListener;->getOutput()Lcom/metamoji/nt/dl/INtResourceDownloadStatusOutput;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/metamoji/nt/dl/INtResourceDownloadStatusOutput;->endResourceDownload()V

    :cond_0
    return-void
.end method

.method public onDownloadProgress(I)V
    .locals 1

    .line 67
    invoke-direct {p0}, Lcom/metamoji/nt/dl/NtDownloadProgressListener;->getOutput()Lcom/metamoji/nt/dl/INtResourceDownloadStatusOutput;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/metamoji/nt/dl/INtResourceDownloadStatusOutput;->progressResourceDownload(I)V

    :cond_0
    return-void
.end method
