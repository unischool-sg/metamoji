.class public final Lcom/metamoji/nt/dl/NtDownloaderOptions;
.super Ljava/lang/Object;
.source "NtResourceDownloaderBase.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0014\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J;\u0010\u0014\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0015\u001a\u00020\u00032\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001J\t\u0010\u0019\u001a\u00020\u001aH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\nR\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\n\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/metamoji/nt/dl/NtDownloaderOptions;",
        "",
        "isStartupStyle",
        "",
        "confirmBeforeDownload",
        "showNoUpdateMsg",
        "showCompletedMsg",
        "needDownloadOnly",
        "<init>",
        "(ZZZZZ)V",
        "()Z",
        "getConfirmBeforeDownload",
        "getShowNoUpdateMsg",
        "getShowCompletedMsg",
        "getNeedDownloadOnly",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
        "",
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
.field private final confirmBeforeDownload:Z

.field private final isStartupStyle:Z

.field private final needDownloadOnly:Z

.field private final showCompletedMsg:Z

.field private final showNoUpdateMsg:Z


# direct methods
.method public constructor <init>(ZZZZZ)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-boolean p1, p0, Lcom/metamoji/nt/dl/NtDownloaderOptions;->isStartupStyle:Z

    .line 25
    iput-boolean p2, p0, Lcom/metamoji/nt/dl/NtDownloaderOptions;->confirmBeforeDownload:Z

    .line 26
    iput-boolean p3, p0, Lcom/metamoji/nt/dl/NtDownloaderOptions;->showNoUpdateMsg:Z

    .line 27
    iput-boolean p4, p0, Lcom/metamoji/nt/dl/NtDownloaderOptions;->showCompletedMsg:Z

    .line 28
    iput-boolean p5, p0, Lcom/metamoji/nt/dl/NtDownloaderOptions;->needDownloadOnly:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/metamoji/nt/dl/NtDownloaderOptions;ZZZZZILjava/lang/Object;)Lcom/metamoji/nt/dl/NtDownloaderOptions;
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-boolean p1, p0, Lcom/metamoji/nt/dl/NtDownloaderOptions;->isStartupStyle:Z

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-boolean p2, p0, Lcom/metamoji/nt/dl/NtDownloaderOptions;->confirmBeforeDownload:Z

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    iget-boolean p3, p0, Lcom/metamoji/nt/dl/NtDownloaderOptions;->showNoUpdateMsg:Z

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    iget-boolean p4, p0, Lcom/metamoji/nt/dl/NtDownloaderOptions;->showCompletedMsg:Z

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    iget-boolean p5, p0, Lcom/metamoji/nt/dl/NtDownloaderOptions;->needDownloadOnly:Z

    :cond_4
    move p6, p4

    move p7, p5

    move p4, p2

    move p5, p3

    move-object p2, p0

    move p3, p1

    invoke-virtual/range {p2 .. p7}, Lcom/metamoji/nt/dl/NtDownloaderOptions;->copy(ZZZZZ)Lcom/metamoji/nt/dl/NtDownloaderOptions;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/metamoji/nt/dl/NtDownloaderOptions;->isStartupStyle:Z

    return v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/metamoji/nt/dl/NtDownloaderOptions;->confirmBeforeDownload:Z

    return v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/metamoji/nt/dl/NtDownloaderOptions;->showNoUpdateMsg:Z

    return v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/metamoji/nt/dl/NtDownloaderOptions;->showCompletedMsg:Z

    return v0
.end method

.method public final component5()Z
    .locals 1

    iget-boolean v0, p0, Lcom/metamoji/nt/dl/NtDownloaderOptions;->needDownloadOnly:Z

    return v0
.end method

.method public final copy(ZZZZZ)Lcom/metamoji/nt/dl/NtDownloaderOptions;
    .locals 6

    new-instance v0, Lcom/metamoji/nt/dl/NtDownloaderOptions;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/nt/dl/NtDownloaderOptions;-><init>(ZZZZZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/metamoji/nt/dl/NtDownloaderOptions;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/metamoji/nt/dl/NtDownloaderOptions;

    iget-boolean v1, p0, Lcom/metamoji/nt/dl/NtDownloaderOptions;->isStartupStyle:Z

    iget-boolean v3, p1, Lcom/metamoji/nt/dl/NtDownloaderOptions;->isStartupStyle:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/metamoji/nt/dl/NtDownloaderOptions;->confirmBeforeDownload:Z

    iget-boolean v3, p1, Lcom/metamoji/nt/dl/NtDownloaderOptions;->confirmBeforeDownload:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/metamoji/nt/dl/NtDownloaderOptions;->showNoUpdateMsg:Z

    iget-boolean v3, p1, Lcom/metamoji/nt/dl/NtDownloaderOptions;->showNoUpdateMsg:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/metamoji/nt/dl/NtDownloaderOptions;->showCompletedMsg:Z

    iget-boolean v3, p1, Lcom/metamoji/nt/dl/NtDownloaderOptions;->showCompletedMsg:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/metamoji/nt/dl/NtDownloaderOptions;->needDownloadOnly:Z

    iget-boolean p1, p1, Lcom/metamoji/nt/dl/NtDownloaderOptions;->needDownloadOnly:Z

    if-eq v1, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getConfirmBeforeDownload()Z
    .locals 1

    .line 25
    iget-boolean v0, p0, Lcom/metamoji/nt/dl/NtDownloaderOptions;->confirmBeforeDownload:Z

    return v0
.end method

.method public final getNeedDownloadOnly()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lcom/metamoji/nt/dl/NtDownloaderOptions;->needDownloadOnly:Z

    return v0
.end method

.method public final getShowCompletedMsg()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lcom/metamoji/nt/dl/NtDownloaderOptions;->showCompletedMsg:Z

    return v0
.end method

.method public final getShowNoUpdateMsg()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lcom/metamoji/nt/dl/NtDownloaderOptions;->showNoUpdateMsg:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Lcom/metamoji/nt/dl/NtDownloaderOptions;->isStartupStyle:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/metamoji/nt/dl/NtDownloaderOptions;->confirmBeforeDownload:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/metamoji/nt/dl/NtDownloaderOptions;->showNoUpdateMsg:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/metamoji/nt/dl/NtDownloaderOptions;->showCompletedMsg:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/metamoji/nt/dl/NtDownloaderOptions;->needDownloadOnly:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isStartupStyle()Z
    .locals 1

    .line 24
    iget-boolean v0, p0, Lcom/metamoji/nt/dl/NtDownloaderOptions;->isStartupStyle:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget-boolean v0, p0, Lcom/metamoji/nt/dl/NtDownloaderOptions;->isStartupStyle:Z

    iget-boolean v1, p0, Lcom/metamoji/nt/dl/NtDownloaderOptions;->confirmBeforeDownload:Z

    iget-boolean v2, p0, Lcom/metamoji/nt/dl/NtDownloaderOptions;->showNoUpdateMsg:Z

    iget-boolean v3, p0, Lcom/metamoji/nt/dl/NtDownloaderOptions;->showCompletedMsg:Z

    iget-boolean v4, p0, Lcom/metamoji/nt/dl/NtDownloaderOptions;->needDownloadOnly:Z

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "NtDownloaderOptions(isStartupStyle="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", confirmBeforeDownload="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", showNoUpdateMsg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", showCompletedMsg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", needDownloadOnly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
