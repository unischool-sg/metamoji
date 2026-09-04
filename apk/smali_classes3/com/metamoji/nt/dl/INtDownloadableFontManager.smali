.class public interface abstract Lcom/metamoji/nt/dl/INtDownloadableFontManager;
.super Ljava/lang/Object;
.source "LicenseManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0013\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H&\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0004H&J\u0018\u0010\t\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000bH&J\u0012\u0010\u000c\u001a\u00020\r2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0004H&\u00a8\u0006\u000e\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/metamoji/nt/dl/INtDownloadableFontManager;",
        "",
        "getSysInfoKeys",
        "",
        "",
        "()[Ljava/lang/String;",
        "isFontInstalled",
        "",
        "key",
        "installFont",
        "file",
        "Ljava/io/File;",
        "uninstallFont",
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


# virtual methods
.method public abstract getSysInfoKeys()[Ljava/lang/String;
.end method

.method public abstract installFont(Ljava/lang/String;Ljava/io/File;)Z
.end method

.method public abstract isFontInstalled(Ljava/lang/String;)Z
.end method

.method public abstract uninstallFont(Ljava/lang/String;)V
.end method
