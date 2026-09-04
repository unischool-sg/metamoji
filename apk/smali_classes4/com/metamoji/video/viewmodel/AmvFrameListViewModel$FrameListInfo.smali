.class final Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;
.super Ljava/lang/Object;
.source "AmvFrameListViewModel.kt"

# interfaces
.implements Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FrameListInfo"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAmvFrameListViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AmvFrameListViewModel.kt\ncom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,266:1\n1#2:267\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0003\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J.\u0010L\u001a\u00020J2\u0006\u0010M\u001a\u00020\'2\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010N\u001a\u00020\u00052\u0006\u0010O\u001a\u00020\u000b2\u0006\u0010P\u001a\u00020\u000bJ\u0006\u0010Q\u001a\u00020RJ\u0006\u0010S\u001a\u00020RJ\u0006\u0010T\u001a\u00020RJ\u0006\u0010U\u001a\u00020RJ\u0006\u0010V\u001a\u00020RR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\r\"\u0004\u0008\u0012\u0010\u000fR$\u0010\u0013\u001a\u0012\u0012\u0004\u0012\u00020\u00150\u0014j\u0008\u0012\u0004\u0012\u00020\u0015`\u0016X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u0019\u001a\u00020\u001a8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u001cR\u0014\u0010\u001d\u001a\u00020\u001a8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u001cR\u0014\u0010\u001f\u001a\u00020\u00158VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010!R\u001a\u0010\"\u001a\u00020\u001aX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010\u001c\"\u0004\u0008$\u0010%R\u001c\u0010&\u001a\u0004\u0018\u00010\'X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010)\"\u0004\u0008*\u0010+R\u001c\u0010,\u001a\u0004\u0018\u00010-X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008.\u0010/\"\u0004\u00080\u00101R\u0014\u00102\u001a\u0002038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00084\u00105R\u001a\u00106\u001a\u000207X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00088\u00109\"\u0004\u0008:\u0010;R\u001a\u0010<\u001a\u00020=X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008>\u0010?\"\u0004\u0008@\u0010AR$\u0010D\u001a\u00020C2\u0006\u0010B\u001a\u00020C@VX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008E\u0010F\"\u0004\u0008G\u0010HR\u0010\u0010I\u001a\u0004\u0018\u00010JX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010K\u001a\u0002038F\u00a2\u0006\u0006\u001a\u0004\u0008K\u00105\u00a8\u0006W"
    }
    d2 = {
        "Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;",
        "Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo;",
        "<init>",
        "(Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;)V",
        "fitMode",
        "Lcom/metamoji/video/FitMode;",
        "getFitMode",
        "()Lcom/metamoji/video/FitMode;",
        "setFitMode",
        "(Lcom/metamoji/video/FitMode;)V",
        "hintWidth",
        "",
        "getHintWidth",
        "()F",
        "setHintWidth",
        "(F)V",
        "hintHeight",
        "getHintHeight",
        "setHintHeight",
        "frameList",
        "Ljava/util/ArrayList;",
        "Landroid/graphics/Bitmap;",
        "Lkotlin/collections/ArrayList;",
        "getFrameList",
        "()Ljava/util/ArrayList;",
        "count",
        "",
        "getCount",
        "()I",
        "currentIndex",
        "getCurrentIndex",
        "current",
        "getCurrent",
        "()Landroid/graphics/Bitmap;",
        "maxCount",
        "getMaxCount",
        "setMaxCount",
        "(I)V",
        "source",
        "Ljava/io/File;",
        "getSource",
        "()Ljava/io/File;",
        "setSource",
        "(Ljava/io/File;)V",
        "error",
        "",
        "getError",
        "()Ljava/lang/Throwable;",
        "setError",
        "(Ljava/lang/Throwable;)V",
        "completed",
        "",
        "getCompleted",
        "()Z",
        "size",
        "Landroid/util/Size;",
        "getSize",
        "()Landroid/util/Size;",
        "setSize",
        "(Landroid/util/Size;)V",
        "duration",
        "",
        "getDuration",
        "()J",
        "setDuration",
        "(J)V",
        "v",
        "Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo$Status;",
        "status",
        "getStatus",
        "()Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo$Status;",
        "setStatus",
        "(Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo$Status;)V",
        "mFrameExtractor",
        "Lcom/metamoji/video/AmvFrameExtractor;",
        "isBusy",
        "reset",
        "file",
        "mode",
        "width",
        "height",
        "clear",
        "",
        "cancel",
        "finish",
        "pause",
        "resume",
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


# instance fields
.field private duration:J

.field private error:Ljava/lang/Throwable;

.field private fitMode:Lcom/metamoji/video/FitMode;

.field private final frameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private hintHeight:F

.field private hintWidth:F

.field private mFrameExtractor:Lcom/metamoji/video/AmvFrameExtractor;

.field private maxCount:I

.field private size:Landroid/util/Size;

.field private source:Ljava/io/File;

.field private status:Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo$Status;

.field final synthetic this$0:Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;


# direct methods
.method public constructor <init>(Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;->this$0:Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    sget-object p1, Lcom/metamoji/video/FitMode;->Height:Lcom/metamoji/video/FitMode;

    iput-object p1, p0, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;->fitMode:Lcom/metamoji/video/FitMode;

    const/high16 p1, 0x43480000    # 200.0f

    .line 45
    iput p1, p0, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;->hintWidth:F

    .line 46
    iput p1, p0, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;->hintHeight:F

    .line 48
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0x20

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;->frameList:Ljava/util/ArrayList;

    const/16 p1, 0xa

    .line 56
    iput p1, p0, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;->maxCount:I

    .line 65
    new-instance p1, Landroid/util/Size;

    const/16 v0, 0x64

    invoke-direct {p1, v0, v0}, Landroid/util/Size;-><init>(II)V

    iput-object p1, p0, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;->size:Landroid/util/Size;

    .line 69
    sget-object p1, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo$Status;->INIT:Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo$Status;

    iput-object p1, p0, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;->status:Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo$Status;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;->mFrameExtractor:Lcom/metamoji/video/AmvFrameExtractor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/video/AmvFrameExtractor;->cancel()V

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;->mFrameExtractor:Lcom/metamoji/video/AmvFrameExtractor;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/metamoji/video/AmvFrameExtractor;->dispose()V

    :cond_1
    const/4 v0, 0x0

    .line 116
    iput-object v0, p0, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;->mFrameExtractor:Lcom/metamoji/video/AmvFrameExtractor;

    return-void
.end method

.method public final clear()V
    .locals 3

    const/4 v0, 0x0

    .line 103
    invoke-virtual {p0, v0}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;->setSource(Ljava/io/File;)V

    .line 104
    invoke-virtual {p0, v0}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;->setError(Ljava/lang/Throwable;)V

    .line 105
    invoke-virtual {p0}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;->getFrameList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "iterator(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "next(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/graphics/Bitmap;

    .line 106
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;->getFrameList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 109
    sget-object v0, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo$Status;->INIT:Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo$Status;

    invoke-virtual {p0, v0}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;->setStatus(Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo$Status;)V

    const-wide/16 v0, 0x0

    .line 110
    invoke-virtual {p0, v0, v1}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;->setDuration(J)V

    return-void
.end method

.method public final finish()V
    .locals 1

    const/4 v0, 0x0

    .line 120
    iput-object v0, p0, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;->mFrameExtractor:Lcom/metamoji/video/AmvFrameExtractor;

    return-void
.end method

.method public getCompleted()Z
    .locals 2

    .line 63
    invoke-virtual {p0}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;->getMaxCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .line 50
    invoke-virtual {p0}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;->getFrameList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getCurrent()Landroid/graphics/Bitmap;
    .locals 2

    .line 54
    invoke-virtual {p0}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;->getFrameList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;->getCurrentIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "get(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getCurrentIndex()I
    .locals 1

    .line 52
    invoke-virtual {p0}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getDuration()J
    .locals 2

    .line 67
    iget-wide v0, p0, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;->duration:J

    return-wide v0
.end method

.method public getError()Ljava/lang/Throwable;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;->error:Ljava/lang/Throwable;

    return-object v0
.end method

.method public final getFitMode()Lcom/metamoji/video/FitMode;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;->fitMode:Lcom/metamoji/video/FitMode;

    return-object v0
.end method

.method public getFrameList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;->frameList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getHintHeight()F
    .locals 1

    .line 46
    iget v0, p0, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;->hintHeight:F

    return v0
.end method

.method public final getHintWidth()F
    .locals 1

    .line 45
    iget v0, p0, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;->hintWidth:F

    return v0
.end method

.method public getMaxCount()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;->maxCount:I

    return v0
.end method

.method public getSize()Landroid/util/Size;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;->size:Landroid/util/Size;

    return-object v0
.end method

.method public getSource()Ljava/io/File;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;->source:Ljava/io/File;

    return-object v0
.end method

.method public getStatus()Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo$Status;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;->status:Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo$Status;

    return-object v0
.end method

.method public final isBusy()Z
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;->mFrameExtractor:Lcom/metamoji/video/AmvFrameExtractor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final pause()V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;->mFrameExtractor:Lcom/metamoji/video/AmvFrameExtractor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/video/AmvFrameExtractor;->pause()V

    :cond_0
    return-void
.end method

.method public final reset(Ljava/io/File;ILcom/metamoji/video/FitMode;FF)Lcom/metamoji/video/AmvFrameExtractor;
    .locals 1

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;->clear()V

    .line 90
    invoke-virtual {p0, p1}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;->setSource(Ljava/io/File;)V

    .line 91
    invoke-virtual {p0, p2}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;->setMaxCount(I)V

    .line 92
    iput-object p3, p0, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;->fitMode:Lcom/metamoji/video/FitMode;

    .line 93
    iput p4, p0, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;->hintWidth:F

    .line 94
    iput p5, p0, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;->hintHeight:F

    .line 95
    new-instance p1, Lcom/metamoji/video/AmvFrameExtractor;

    invoke-direct {p1}, Lcom/metamoji/video/AmvFrameExtractor;-><init>()V

    iput-object p1, p0, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;->mFrameExtractor:Lcom/metamoji/video/AmvFrameExtractor;

    return-object p1
.end method

.method public final resume()V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;->mFrameExtractor:Lcom/metamoji/video/AmvFrameExtractor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/video/AmvFrameExtractor;->resume()V

    :cond_0
    return-void
.end method

.method public setDuration(J)V
    .locals 0

    .line 67
    iput-wide p1, p0, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;->duration:J

    return-void
.end method

.method public setError(Ljava/lang/Throwable;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;->error:Ljava/lang/Throwable;

    return-void
.end method

.method public final setFitMode(Lcom/metamoji/video/FitMode;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iput-object p1, p0, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;->fitMode:Lcom/metamoji/video/FitMode;

    return-void
.end method

.method public final setHintHeight(F)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;->hintHeight:F

    return-void
.end method

.method public final setHintWidth(F)V
    .locals 0

    .line 45
    iput p1, p0, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;->hintWidth:F

    return-void
.end method

.method public setMaxCount(I)V
    .locals 0

    .line 56
    iput p1, p0, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;->maxCount:I

    return-void
.end method

.method public setSize(Landroid/util/Size;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iput-object p1, p0, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;->size:Landroid/util/Size;

    return-void
.end method

.method public setSource(Ljava/io/File;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;->source:Ljava/io/File;

    return-void
.end method

.method public setStatus(Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo$Status;)V
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;->status:Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo$Status;

    if-eq p1, v0, :cond_0

    .line 72
    iput-object p1, p0, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;->status:Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo$Status;

    .line 73
    iget-object p1, p0, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$FrameListInfo;->this$0:Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;

    invoke-virtual {p1}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;->getFrameListInfo()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
