.class public final Lcom/metamoji/media/video/dialog/RemoteFileItem;
.super Lcom/metamoji/media/video/dialog/FileItemBase;
.source "MfFileListView.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J*\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u000e\u0010\u0018\u001a\u00020\u000fH\u0096@\u00a2\u0006\u0002\u0010\u0019J\u001a\u0010\u001a\u001a\u00020\u000f2\u0012\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00150\u001cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\n\u001a\u00020\u000b8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/metamoji/media/video/dialog/RemoteFileItem;",
        "Lcom/metamoji/media/video/dialog/FileItemBase;",
        "clip",
        "Lcom/metamoji/media/video/VfClipInfo;",
        "thumbnail",
        "Landroid/graphics/Bitmap;",
        "<init>",
        "(Lcom/metamoji/media/video/VfClipInfo;Landroid/graphics/Bitmap;)V",
        "getClip",
        "()Lcom/metamoji/media/video/VfClipInfo;",
        "serverId",
        "",
        "getServerId",
        "()Ljava/lang/String;",
        "bind",
        "",
        "holder",
        "Lcom/metamoji/media/video/dialog/FileViewHolder;",
        "position",
        "",
        "selectable",
        "",
        "iconSupplier",
        "Lcom/metamoji/media/video/dialog/IFileItem$IconSupplier;",
        "deleteItem",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "loadThumbnail",
        "action",
        "Lkotlin/Function1;",
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
.field private final clip:Lcom/metamoji/media/video/VfClipInfo;


# direct methods
.method public constructor <init>(Lcom/metamoji/media/video/VfClipInfo;Landroid/graphics/Bitmap;)V
    .locals 2

    const-string v0, "clip"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 712
    invoke-virtual {p1}, Lcom/metamoji/media/video/VfClipInfo;->getCreationDateText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/metamoji/media/video/VfClipInfo;->getDurationText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lcom/metamoji/media/video/dialog/FileItemBase;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/metamoji/media/video/dialog/RemoteFileItem;->clip:Lcom/metamoji/media/video/VfClipInfo;

    return-void
.end method


# virtual methods
.method public bind(Lcom/metamoji/media/video/dialog/FileViewHolder;IZLcom/metamoji/media/video/dialog/IFileItem$IconSupplier;)V
    .locals 2

    const-string v0, "iconSupplier"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 721
    invoke-virtual {p1}, Lcom/metamoji/media/video/dialog/FileViewHolder;->getDateTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/RemoteFileItem;->getLabel()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 725
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "@@@ RemoteFileITem.bind: pos="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 727
    invoke-virtual {p1}, Lcom/metamoji/media/video/dialog/FileViewHolder;->getDurationTextView()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/RemoteFileItem;->getDurationText()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 728
    invoke-virtual {p1}, Lcom/metamoji/media/video/dialog/FileViewHolder;->getCheckMarkView()Landroid/view/View;

    move-result-object p2

    const/4 v0, 0x4

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/RemoteFileItem;->getHandling()Z

    move-result p3

    if-nez p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    move p3, v0

    :goto_0
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 729
    invoke-virtual {p1}, Lcom/metamoji/media/video/dialog/FileViewHolder;->getCheckMarkView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/RemoteFileItem;->getSelected()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p4}, Lcom/metamoji/media/video/dialog/IFileItem$IconSupplier;->getCheckMarkIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    :goto_1
    invoke-virtual {p2, p3}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 730
    invoke-virtual {p1}, Lcom/metamoji/media/video/dialog/FileViewHolder;->getUploadProgressBar()Lcom/metamoji/media/video/dialog/CircularProgressBar;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/metamoji/media/video/dialog/CircularProgressBar;->setVisibility(I)V

    .line 731
    invoke-virtual {p0, p1}, Lcom/metamoji/media/video/dialog/RemoteFileItem;->applyThumbnail(Lcom/metamoji/media/video/dialog/FileViewHolder;)V

    return-void

    .line 733
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "@@@ RemoteFileITem.bind:pos="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " (holder==null)"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    return-void
.end method

.method public deleteItem(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
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

    .line 738
    sget-object v0, Lcom/metamoji/media/video/VfVideoFileManager;->Companion:Lcom/metamoji/media/video/VfVideoFileManager$Companion;

    invoke-virtual {v0}, Lcom/metamoji/media/video/VfVideoFileManager$Companion;->getInstance()Lcom/metamoji/media/video/VfVideoFileManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/RemoteFileItem;->getServerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/media/video/VfVideoFileManager;->deleteServerClip(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final getClip()Lcom/metamoji/media/video/VfClipInfo;
    .locals 1

    .line 712
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/RemoteFileItem;->clip:Lcom/metamoji/media/video/VfClipInfo;

    return-object v0
.end method

.method public final getServerId()Ljava/lang/String;
    .locals 1

    .line 715
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/RemoteFileItem;->clip:Lcom/metamoji/media/video/VfClipInfo;

    invoke-virtual {v0}, Lcom/metamoji/media/video/VfClipInfo;->getServerID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final loadThumbnail(Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/metamoji/media/video/dialog/RemoteFileItem;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 747
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/metamoji/media/video/dialog/RemoteFileItem;->clip:Lcom/metamoji/media/video/VfClipInfo;

    invoke-virtual {v2}, Lcom/metamoji/media/video/VfClipInfo;->getPosterframe()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Ljava/net/URL;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 748
    invoke-static {}, Lcom/metamoji/network/NwHttpClient;->getClient()Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lcom/metamoji/media/video/dialog/RemoteFileItem$loadThumbnail$1;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/media/video/dialog/RemoteFileItem$loadThumbnail$1;-><init>(Lcom/metamoji/media/video/dialog/RemoteFileItem;Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Lokhttp3/Callback;

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method
