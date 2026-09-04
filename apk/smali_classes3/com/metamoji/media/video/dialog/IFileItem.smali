.class public interface abstract Lcom/metamoji/media/video/dialog/IFileItem;
.super Ljava/lang/Object;
.source "MfFileListView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/media/video/dialog/IFileItem$IconSupplier;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001:\u0001 J*\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\t2\u0006\u0010\u001d\u001a\u00020\u001eH&J\u0008\u0010\u001f\u001a\u00020\u0017H&R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0005R\u0012\u0010\u0008\u001a\u00020\tX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u0014\u0010\u000c\u001a\u0004\u0018\u00010\rX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u0018\u0010\u0010\u001a\u00020\tX\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0011\u0010\u000b\"\u0004\u0008\u0012\u0010\u0013R\u0012\u0010\u0014\u001a\u00020\tX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u000b\u00a8\u0006!\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/metamoji/media/video/dialog/IFileItem;",
        "",
        "label",
        "",
        "getLabel",
        "()Ljava/lang/String;",
        "durationText",
        "getDurationText",
        "ready",
        "",
        "getReady",
        "()Z",
        "thumbnail",
        "Landroid/graphics/Bitmap;",
        "getThumbnail",
        "()Landroid/graphics/Bitmap;",
        "selected",
        "getSelected",
        "setSelected",
        "(Z)V",
        "handling",
        "getHandling",
        "bind",
        "",
        "holder",
        "Lcom/metamoji/media/video/dialog/FileViewHolder;",
        "position",
        "",
        "selectable",
        "iconSupplier",
        "Lcom/metamoji/media/video/dialog/IFileItem$IconSupplier;",
        "dispose",
        "IconSupplier",
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


# virtual methods
.method public abstract bind(Lcom/metamoji/media/video/dialog/FileViewHolder;IZLcom/metamoji/media/video/dialog/IFileItem$IconSupplier;)V
.end method

.method public abstract dispose()V
.end method

.method public abstract getDurationText()Ljava/lang/String;
.end method

.method public abstract getHandling()Z
.end method

.method public abstract getLabel()Ljava/lang/String;
.end method

.method public abstract getReady()Z
.end method

.method public abstract getSelected()Z
.end method

.method public abstract getThumbnail()Landroid/graphics/Bitmap;
.end method

.method public abstract setSelected(Z)V
.end method
