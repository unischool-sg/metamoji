.class public final Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "AmvFrameListViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$Companion;,
        Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;,
        Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 (2\u00020\u0001:\u0003&\'(B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u000f\u001a\u00020\u0010J\u0006\u0010\u0011\u001a\u00020\u0010J\u0006\u0010\u0012\u001a\u00020\u0010J\u0006\u0010\u0013\u001a\u00020\u0010J.\u0010\u0014\u001a\u00020\u000c2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001cJ(\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u001f2\u0006\u0010 \u001a\u00020!2\u0012\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00100#J\u0016\u0010$\u001a\u00020\u00102\u000e\u0010%\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u001fR\u0012\u0010\u0004\u001a\u00060\u0005R\u00020\u0000X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0017\u0010\u000b\u001a\u00020\u000c8F\u00a2\u0006\u000c\u0012\u0004\u0008\r\u0010\u0003\u001a\u0004\u0008\u000b\u0010\u000e\u00a8\u0006)"
    }
    d2 = {
        "Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "<init>",
        "()V",
        "mFrameListInfo",
        "Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;",
        "frameListInfo",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo;",
        "getFrameListInfo",
        "()Landroidx/lifecycle/MutableLiveData;",
        "isBusy",
        "",
        "isBusy$annotations",
        "()Z",
        "cancel",
        "",
        "clear",
        "pause",
        "resume",
        "extractFrame",
        "file",
        "Ljava/io/File;",
        "count",
        "",
        "fitMode",
        "Lcom/metamoji/video/FitMode;",
        "width",
        "",
        "height",
        "setObserver",
        "Landroidx/lifecycle/Observer;",
        "view",
        "Landroid/view/View;",
        "fn",
        "Lkotlin/Function1;",
        "resetObserver",
        "observer",
        "IFrameListInfo",
        "FrameListInfo",
        "Companion",
        "video"
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
.field public static final Companion:Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$Companion;

.field private static final logger:Lcom/metamoji/lib/utils/UtLog;


# instance fields
.field private final frameListInfo:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mFrameListInfo:Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;->Companion:Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$Companion;

    .line 264
    sget-object v0, Lcom/metamoji/video/AmvSettings;->INSTANCE:Lcom/metamoji/video/AmvSettings;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvSettings;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    sput-object v0, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;->logger:Lcom/metamoji/lib/utils/UtLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 131
    new-instance v0, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;

    invoke-direct {v0, p0}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;-><init>(Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;)V

    iput-object v0, p0, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;->mFrameListInfo:Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;

    .line 136
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v1, p0, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;->frameListInfo:Landroidx/lifecycle/MutableLiveData;

    .line 142
    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$getLogger$cp()Lcom/metamoji/lib/utils/UtLog;
    .locals 1

    .line 11
    sget-object v0, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;->logger:Lcom/metamoji/lib/utils/UtLog;

    return-object v0
.end method

.method static final extractFrame$lambda$3$lambda$0(Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;Lcom/metamoji/video/AmvFrameExtractor;)Lkotlin/Unit;
    .locals 6

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    sget-object v0, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;->logger:Lcom/metamoji/lib/utils/UtLog;

    invoke-virtual {p1}, Lcom/metamoji/video/AmvFrameExtractor;->getDuration()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/metamoji/video/AmvFrameExtractor;->getVideoSize()Lcom/metamoji/video/MuSize;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onVideoInfoRetrieved: duration="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/UtLog;->info(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;->mFrameListInfo:Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;

    invoke-virtual {p1}, Lcom/metamoji/video/AmvFrameExtractor;->getThumbnailSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;->setSize(Landroid/util/Size;)V

    .line 216
    iget-object v0, p0, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;->mFrameListInfo:Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;

    invoke-virtual {p1}, Lcom/metamoji/video/AmvFrameExtractor;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;->setDuration(J)V

    .line 217
    iget-object p0, p0, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;->mFrameListInfo:Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;

    sget-object p1, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo$Status;->LOADED:Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo$Status;

    invoke-virtual {p0, p1}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;->setStatus(Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo$Status;)V

    .line 218
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final extractFrame$lambda$3$lambda$1(Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;Lcom/metamoji/video/AmvFrameExtractor;ILandroid/graphics/Bitmap;)Lkotlin/Unit;
    .locals 4

    const-string v0, "<unused var>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "bmp"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    sget-object p1, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;->logger:Lcom/metamoji/lib/utils/UtLog;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onThumbnailRetrieved :Bitmap("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, "): width="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ", height="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 221
    iget-object p1, p0, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;->mFrameListInfo:Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;

    invoke-virtual {p1}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;->getFrameList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    iget-object p0, p0, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;->mFrameListInfo:Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;

    sget-object p1, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo$Status;->FRAME:Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo$Status;

    invoke-virtual {p0, p1}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;->setStatus(Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo$Status;)V

    .line 223
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final extractFrame$lambda$3$lambda$2(Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;Lcom/metamoji/lib/utils/UtAsyncTask;Z)Lkotlin/Unit;
    .locals 1

    const-string v0, "sender"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 225
    invoke-virtual {p1}, Lcom/metamoji/lib/utils/UtAsyncTask;->getHasError()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 226
    iget-object p2, p0, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;->mFrameListInfo:Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;

    invoke-virtual {p1}, Lcom/metamoji/lib/utils/UtAsyncTask;->getException()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;->setError(Ljava/lang/Throwable;)V

    .line 228
    :cond_0
    iget-object p1, p0, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;->mFrameListInfo:Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;

    sget-object p2, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo$Status;->TERM:Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo$Status;

    invoke-virtual {p1, p2}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;->setStatus(Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo$Status;)V

    .line 229
    iget-object p0, p0, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;->mFrameListInfo:Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;

    invoke-virtual {p0}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;->finish()V

    .line 234
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic isBusy$annotations()V
    .locals 0

    return-void
.end method

.method static final setObserver$lambda$4(Lkotlin/jvm/functions/Function1;Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;->mFrameListInfo:Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;

    invoke-virtual {v0}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;->cancel()V

    return-void
.end method

.method public final clear()V
    .locals 1

    .line 164
    invoke-virtual {p0}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;->cancel()V

    .line 165
    iget-object v0, p0, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;->mFrameListInfo:Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;

    invoke-virtual {v0}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;->clear()V

    return-void
.end method

.method public final extractFrame(Ljava/io/File;ILcom/metamoji/video/FitMode;FF)Z
    .locals 7

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fitMode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;->mFrameListInfo:Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;

    invoke-virtual {v0}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;->getError()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;->mFrameListInfo:Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;

    invoke-virtual {v0}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;->getSource()Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;->mFrameListInfo:Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;

    invoke-virtual {v0}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;->getMaxCount()I

    move-result v0

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;->mFrameListInfo:Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;

    invoke-virtual {v0}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;->getFitMode()Lcom/metamoji/video/FitMode;

    move-result-object v0

    if-ne v0, p3, :cond_0

    iget-object v0, p0, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;->mFrameListInfo:Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;

    invoke-virtual {v0}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;->getHintWidth()F

    move-result v0

    cmpg-float v0, v0, p4

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;->mFrameListInfo:Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;

    invoke-virtual {v0}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;->getHintHeight()F

    move-result v0

    cmpg-float v0, v0, p5

    if-nez v0, :cond_0

    goto :goto_0

    .line 207
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;->isBusy()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    invoke-virtual {p0}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;->cancel()V

    .line 211
    :cond_1
    iget-object v1, p0, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;->mFrameListInfo:Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;->reset(Ljava/io/File;ILcom/metamoji/video/FitMode;FF)Lcom/metamoji/video/AmvFrameExtractor;

    move-result-object p1

    .line 212
    invoke-virtual {p1, v4, v5, v6}, Lcom/metamoji/video/AmvFrameExtractor;->setSizingHint(Lcom/metamoji/video/FitMode;FF)V

    .line 213
    invoke-virtual {p1}, Lcom/metamoji/video/AmvFrameExtractor;->getOnVideoInfoRetrievedListener()Lcom/metamoji/lib/utils/Funcies1;

    move-result-object p2

    new-instance p3, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;)V

    const/4 p4, 0x0

    invoke-virtual {p2, p4, p3}, Lcom/metamoji/lib/utils/Funcies1;->add(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/IFuncy1;

    .line 219
    invoke-virtual {p1}, Lcom/metamoji/video/AmvFrameExtractor;->getOnThumbnailRetrievedListener()Lcom/metamoji/lib/utils/Funcies3;

    move-result-object p2

    new-instance p3, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;)V

    invoke-virtual {p2, p4, p3}, Lcom/metamoji/lib/utils/Funcies3;->add(Ljava/lang/String;Lkotlin/jvm/functions/Function3;)Lcom/metamoji/lib/utils/IFuncy3;

    .line 224
    invoke-virtual {p1}, Lcom/metamoji/video/AmvFrameExtractor;->getOnFinishedListener()Lcom/metamoji/lib/utils/Funcies2;

    move-result-object p2

    new-instance p3, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$$ExternalSyntheticLambda2;-><init>(Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;)V

    invoke-virtual {p2, p4, p3}, Lcom/metamoji/lib/utils/Funcies2;->add(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Lcom/metamoji/lib/utils/IFuncy2;

    .line 235
    iget-object p2, p0, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;->mFrameListInfo:Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;

    invoke-virtual {p2}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;->getMaxCount()I

    move-result p2

    invoke-virtual {p1, v2, p2}, Lcom/metamoji/video/AmvFrameExtractor;->extract(Ljava/io/File;I)V

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final getFrameListInfo()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo;",
            ">;"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;->frameListInfo:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final isBusy()Z
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;->mFrameListInfo:Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;

    invoke-virtual {v0}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;->isBusy()Z

    move-result v0

    return v0
.end method

.method public final pause()V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;->mFrameListInfo:Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;

    invoke-virtual {v0}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;->pause()V

    return-void
.end method

.method public final resetObserver(Landroidx/lifecycle/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/Observer<",
            "Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 251
    iget-object v0, p0, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;->frameListInfo:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    :cond_0
    return-void
.end method

.method public final resume()V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;->mFrameListInfo:Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;

    invoke-virtual {v0}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;->resume()V

    return-void
.end method

.method public final setObserver(Landroid/view/View;Lkotlin/jvm/functions/Function1;)Landroidx/lifecycle/Observer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/lifecycle/Observer<",
            "Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fn"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    new-instance v0, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$$ExternalSyntheticLambda3;

    invoke-direct {v0, p2}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 244
    invoke-static {p1}, Lcom/metamoji/video/AmvUtilsKt;->getActivity(Landroid/view/View;)Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    iget-object p2, p0, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;->frameListInfo:Landroidx/lifecycle/MutableLiveData;

    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {p2, p1, v0}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-object v0
.end method
