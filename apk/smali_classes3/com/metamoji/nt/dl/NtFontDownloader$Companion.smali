.class public final Lcom/metamoji/nt/dl/NtFontDownloader$Companion;
.super Ljava/lang/Object;
.source "NtFontDownloader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/dl/NtFontDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0006\u001a\u00020\u0007H\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/metamoji/nt/dl/NtFontDownloader$Companion;",
        "",
        "<init>",
        "()V",
        "DOWNLOAD_TEMP_FILE",
        "",
        "uninstall",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/nt/dl/NtFontDownloader$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final uninstall()V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 202
    sget-object v0, Lcom/metamoji/nt/dl/NtFontLicenseManager;->INSTANCE:Lcom/metamoji/nt/dl/NtFontLicenseManager;

    invoke-virtual {v0}, Lcom/metamoji/nt/dl/NtFontLicenseManager;->getFontManager()Lcom/metamoji/nt/dl/INtDownloadableFontManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/metamoji/nt/dl/INtDownloadableFontManager;->uninstallFont(Ljava/lang/String;)V

    return-void
.end method
