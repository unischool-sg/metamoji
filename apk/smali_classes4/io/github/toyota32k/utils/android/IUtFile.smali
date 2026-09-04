.class public interface abstract Lio/github/toyota32k/utils/android/IUtFile;
.super Ljava/lang/Object;
.source "UtFile.kt"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lio/github/toyota32k/utils/android/IUtFile;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008f\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001J\u0008\u0010\u0006\u001a\u00020\u0007H&J\n\u0010\u0008\u001a\u0004\u0018\u00010\tH&J\n\u0010\n\u001a\u0004\u0018\u00010\tH&J\u000f\u0010\u000b\u001a\u0004\u0018\u00010\u0007H&\u00a2\u0006\u0002\u0010\u000cJ\u0008\u0010\r\u001a\u00020\u000eH&J\'\u0010\u000f\u001a\u0002H\u0010\"\u0004\u0008\u0000\u0010\u00102\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u0002H\u00100\u0012H&\u00a2\u0006\u0002\u0010\u0014J\'\u0010\u0015\u001a\u0002H\u0010\"\u0004\u0008\u0000\u0010\u00102\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u0002H\u00100\u0012H&\u00a2\u0006\u0002\u0010\u0014J\u0008\u0010\u0017\u001a\u00020\u0018H&J\u0008\u0010\u0019\u001a\u00020\u0018H&J\u0008\u0010\u001a\u001a\u00020\u000eH&J\u0010\u0010\u001b\u001a\u00020\u00182\u0006\u0010\u001c\u001a\u00020\u0000H&R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u001d\u00c0\u0006\u0003"
    }
    d2 = {
        "Lio/github/toyota32k/utils/android/IUtFile;",
        "",
        "safeUri",
        "Landroid/net/Uri;",
        "getSafeUri",
        "()Landroid/net/Uri;",
        "getLength",
        "",
        "getFileName",
        "",
        "getContentType",
        "getLastModifiedTime",
        "()Ljava/lang/Long;",
        "exists",
        "",
        "fileInputStream",
        "T",
        "fn",
        "Lkotlin/Function1;",
        "Ljava/io/FileInputStream;",
        "(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
        "fileOutputStream",
        "Ljava/io/FileOutputStream;",
        "delete",
        "",
        "safeDelete",
        "canWrite",
        "copyFrom",
        "src",
        "libUtils_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract canWrite()Z
.end method

.method public abstract copyFrom(Lio/github/toyota32k/utils/android/IUtFile;)V
.end method

.method public abstract delete()V
.end method

.method public abstract exists()Z
.end method

.method public abstract fileInputStream(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/io/FileInputStream;",
            "+TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract fileOutputStream(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/io/FileOutputStream;",
            "+TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract getContentType()Ljava/lang/String;
.end method

.method public abstract getFileName()Ljava/lang/String;
.end method

.method public abstract getLastModifiedTime()Ljava/lang/Long;
.end method

.method public abstract getLength()J
.end method

.method public abstract getSafeUri()Landroid/net/Uri;
.end method

.method public abstract safeDelete()V
.end method
