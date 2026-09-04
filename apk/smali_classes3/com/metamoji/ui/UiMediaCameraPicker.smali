.class public abstract Lcom/metamoji/ui/UiMediaCameraPicker;
.super Ljava/lang/Object;
.source "UiMediaFilePicker.kt"

# interfaces
.implements Lcom/metamoji/ui/IUiMediaFilePicker;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\u0008&\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0096@\u00a2\u0006\u0002\u0010\u000eJ\u0014\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0010H\u0096@\u00a2\u0006\u0002\u0010\u000eJ\u0008\u0010\u0015\u001a\u00020\u0016H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0011\u001a\u00020\u00128F\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/metamoji/ui/UiMediaCameraPicker;",
        "Lcom/metamoji/ui/IUiMediaFilePicker;",
        "cameraBroker",
        "Lcom/metamoji/ui/UiCameraBroker;",
        "<init>",
        "(Lcom/metamoji/ui/UiCameraBroker;)V",
        "mediaFile",
        "Lcom/metamoji/ui/UiCameraBroker$MediaFile;",
        "getMediaFile",
        "()Lcom/metamoji/ui/UiCameraBroker$MediaFile;",
        "setMediaFile",
        "(Lcom/metamoji/ui/UiCameraBroker$MediaFile;)V",
        "getSource",
        "Landroid/net/Uri;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getSources",
        "",
        "retain",
        "",
        "getRetain",
        "()Z",
        "close",
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
.field private final cameraBroker:Lcom/metamoji/ui/UiCameraBroker;

.field private mediaFile:Lcom/metamoji/ui/UiCameraBroker$MediaFile;


# direct methods
.method public constructor <init>(Lcom/metamoji/ui/UiCameraBroker;)V
    .locals 1

    const-string v0, "cameraBroker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/UiMediaCameraPicker;->cameraBroker:Lcom/metamoji/ui/UiCameraBroker;

    return-void
.end method

.method static synthetic getSource$suspendImpl(Lcom/metamoji/ui/UiMediaCameraPicker;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ui/UiMediaCameraPicker;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/net/Uri;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/metamoji/ui/UiMediaCameraPicker$getSource$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/metamoji/ui/UiMediaCameraPicker$getSource$1;

    iget v1, v0, Lcom/metamoji/ui/UiMediaCameraPicker$getSource$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/metamoji/ui/UiMediaCameraPicker$getSource$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/metamoji/ui/UiMediaCameraPicker$getSource$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/ui/UiMediaCameraPicker$getSource$1;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/ui/UiMediaCameraPicker$getSource$1;-><init>(Lcom/metamoji/ui/UiMediaCameraPicker;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/metamoji/ui/UiMediaCameraPicker$getSource$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 54
    iget v2, v0, Lcom/metamoji/ui/UiMediaCameraPicker$getSource$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, Lcom/metamoji/ui/UiMediaCameraPicker$getSource$1;->L$1:Ljava/lang/Object;

    check-cast p0, Lcom/metamoji/ui/UiMediaCameraPicker;

    iget-object v0, v0, Lcom/metamoji/ui/UiMediaCameraPicker$getSource$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/ui/UiMediaCameraPicker;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 55
    iget-object p1, p0, Lcom/metamoji/ui/UiMediaCameraPicker;->cameraBroker:Lcom/metamoji/ui/UiCameraBroker;

    iput-object p0, v0, Lcom/metamoji/ui/UiMediaCameraPicker$getSource$1;->L$0:Ljava/lang/Object;

    iput-object p0, v0, Lcom/metamoji/ui/UiMediaCameraPicker$getSource$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lcom/metamoji/ui/UiMediaCameraPicker$getSource$1;->label:I

    invoke-static {p1, v3, v0, v4, v3}, Lcom/metamoji/ui/UiCameraBroker;->take$default(Lcom/metamoji/ui/UiCameraBroker;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 54
    :goto_1
    check-cast p1, Lcom/metamoji/ui/UiCameraBroker$MediaFile;

    iput-object p1, p0, Lcom/metamoji/ui/UiMediaCameraPicker;->mediaFile:Lcom/metamoji/ui/UiCameraBroker$MediaFile;

    .line 56
    iget-object p0, v0, Lcom/metamoji/ui/UiMediaCameraPicker;->mediaFile:Lcom/metamoji/ui/UiCameraBroker$MediaFile;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/metamoji/ui/UiCameraBroker$MediaFile;->getUri()Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_4
    return-object v3
.end method

.method static synthetic getSources$suspendImpl(Lcom/metamoji/ui/UiMediaCameraPicker;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ui/UiMediaCameraPicker;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "+",
            "Landroid/net/Uri;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/metamoji/ui/UiMediaCameraPicker$getSources$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/metamoji/ui/UiMediaCameraPicker$getSources$1;

    iget v1, v0, Lcom/metamoji/ui/UiMediaCameraPicker$getSources$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/metamoji/ui/UiMediaCameraPicker$getSources$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/metamoji/ui/UiMediaCameraPicker$getSources$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/ui/UiMediaCameraPicker$getSources$1;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/ui/UiMediaCameraPicker$getSources$1;-><init>(Lcom/metamoji/ui/UiMediaCameraPicker;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/metamoji/ui/UiMediaCameraPicker$getSources$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 59
    iget v2, v0, Lcom/metamoji/ui/UiMediaCameraPicker$getSources$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/metamoji/ui/UiMediaCameraPicker$getSources$1;->L$1:Ljava/lang/Object;

    check-cast p0, Lcom/metamoji/ui/UiMediaCameraPicker;

    iget-object v0, v0, Lcom/metamoji/ui/UiMediaCameraPicker$getSources$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/ui/UiMediaCameraPicker;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 60
    iget-object p1, p0, Lcom/metamoji/ui/UiMediaCameraPicker;->cameraBroker:Lcom/metamoji/ui/UiCameraBroker;

    iput-object p0, v0, Lcom/metamoji/ui/UiMediaCameraPicker$getSources$1;->L$0:Ljava/lang/Object;

    iput-object p0, v0, Lcom/metamoji/ui/UiMediaCameraPicker$getSources$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/metamoji/ui/UiMediaCameraPicker$getSources$1;->label:I

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v3, v2}, Lcom/metamoji/ui/UiCameraBroker;->take$default(Lcom/metamoji/ui/UiCameraBroker;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 59
    :goto_1
    check-cast p1, Lcom/metamoji/ui/UiCameraBroker$MediaFile;

    iput-object p1, p0, Lcom/metamoji/ui/UiMediaCameraPicker;->mediaFile:Lcom/metamoji/ui/UiCameraBroker$MediaFile;

    .line 61
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    iget-object p1, v0, Lcom/metamoji/ui/UiMediaCameraPicker;->mediaFile:Lcom/metamoji/ui/UiCameraBroker$MediaFile;

    if-eqz p1, :cond_4

    .line 63
    invoke-virtual {p1}, Lcom/metamoji/ui/UiCameraBroker$MediaFile;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    :cond_4
    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/metamoji/ui/UiMediaCameraPicker;->mediaFile:Lcom/metamoji/ui/UiCameraBroker$MediaFile;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/metamoji/ui/UiMediaCameraPicker;->getRetain()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/UiCameraBroker$MediaFile;->dispose(Z)V

    :cond_0
    return-void
.end method

.method public final getMediaFile()Lcom/metamoji/ui/UiCameraBroker$MediaFile;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/metamoji/ui/UiMediaCameraPicker;->mediaFile:Lcom/metamoji/ui/UiCameraBroker$MediaFile;

    return-object v0
.end method

.method public final getRetain()Z
    .locals 3

    .line 69
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtFeature;->AppClearCaptureImage:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    const-string v1, "SaveCameraRoll"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getSource(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/net/Uri;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/metamoji/ui/UiMediaCameraPicker;->getSource$suspendImpl(Lcom/metamoji/ui/UiMediaCameraPicker;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getSources(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "+",
            "Landroid/net/Uri;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/metamoji/ui/UiMediaCameraPicker;->getSources$suspendImpl(Lcom/metamoji/ui/UiMediaCameraPicker;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final setMediaFile(Lcom/metamoji/ui/UiCameraBroker$MediaFile;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/metamoji/ui/UiMediaCameraPicker;->mediaFile:Lcom/metamoji/ui/UiCameraBroker$MediaFile;

    return-void
.end method
