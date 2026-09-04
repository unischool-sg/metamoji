.class public interface abstract Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo;
.super Ljava/lang/Object;
.source "AmvFrameListViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IFrameListInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo$Status;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0010\u0003\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008f\u0018\u00002\u00020\u0001:\u0001+R\"\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u00040\u0003j\u0008\u0012\u0004\u0012\u00020\u0004`\u0005X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007R\u0012\u0010\u0008\u001a\u00020\tX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u0012\u0010\u000c\u001a\u00020\tX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000bR\u0012\u0010\u000e\u001a\u00020\u0004X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R\u0012\u0010\u0011\u001a\u00020\tX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u000bR\u0014\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016R\u0012\u0010\u0017\u001a\u00020\u0018X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u001aR\u0014\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u001eR\u0012\u0010\u001f\u001a\u00020 X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\"R\u0012\u0010#\u001a\u00020$X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010&R\u0012\u0010\'\u001a\u00020(X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008)\u0010*\u00a8\u0006,\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo;",
        "",
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
        "error",
        "",
        "getError",
        "()Ljava/lang/Throwable;",
        "completed",
        "",
        "getCompleted",
        "()Z",
        "source",
        "Ljava/io/File;",
        "getSource",
        "()Ljava/io/File;",
        "size",
        "Landroid/util/Size;",
        "getSize",
        "()Landroid/util/Size;",
        "duration",
        "",
        "getDuration",
        "()J",
        "status",
        "Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo$Status;",
        "getStatus",
        "()Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo$Status;",
        "Status",
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


# virtual methods
.method public abstract getCompleted()Z
.end method

.method public abstract getCount()I
.end method

.method public abstract getCurrent()Landroid/graphics/Bitmap;
.end method

.method public abstract getCurrentIndex()I
.end method

.method public abstract getDuration()J
.end method

.method public abstract getError()Ljava/lang/Throwable;
.end method

.method public abstract getFrameList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMaxCount()I
.end method

.method public abstract getSize()Landroid/util/Size;
.end method

.method public abstract getSource()Ljava/io/File;
.end method

.method public abstract getStatus()Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo$Status;
.end method
