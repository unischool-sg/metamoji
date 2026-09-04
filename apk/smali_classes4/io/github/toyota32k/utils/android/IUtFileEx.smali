.class public interface abstract Lio/github/toyota32k/utils/android/IUtFileEx;
.super Ljava/lang/Object;
.source "UtFile.kt"

# interfaces
.implements Lio/github/toyota32k/utils/android/IUtFile;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0008\u0010\u0004\u001a\u00020\u0003H&\u00a8\u0006\u0005\u00c0\u0006\u0003"
    }
    d2 = {
        "Lio/github/toyota32k/utils/android/IUtFileEx;",
        "Lio/github/toyota32k/utils/android/IUtFile;",
        "openParcelFileDescriptorToRead",
        "Landroid/os/ParcelFileDescriptor;",
        "openParcelFileDescriptorToWrite",
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
.method public abstract openParcelFileDescriptorToRead()Landroid/os/ParcelFileDescriptor;
.end method

.method public abstract openParcelFileDescriptorToWrite()Landroid/os/ParcelFileDescriptor;
.end method
