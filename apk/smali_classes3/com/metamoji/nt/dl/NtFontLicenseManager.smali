.class public final Lcom/metamoji/nt/dl/NtFontLicenseManager;
.super Lcom/metamoji/nt/dl/LicenseManager;
.source "LicenseManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u001c\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0011\u0010\u0004\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007R\u001a\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/metamoji/nt/dl/NtFontLicenseManager;",
        "Lcom/metamoji/nt/dl/LicenseManager;",
        "<init>",
        "()V",
        "fontManager",
        "Lcom/metamoji/nt/dl/INtDownloadableFontManager;",
        "getFontManager",
        "()Lcom/metamoji/nt/dl/INtDownloadableFontManager;",
        "licenses",
        "",
        "",
        "getLicenses",
        "()Ljava/lang/Iterable;",
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


# static fields
.field public static final INSTANCE:Lcom/metamoji/nt/dl/NtFontLicenseManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/metamoji/nt/dl/NtFontLicenseManager;

    invoke-direct {v0}, Lcom/metamoji/nt/dl/NtFontLicenseManager;-><init>()V

    sput-object v0, Lcom/metamoji/nt/dl/NtFontLicenseManager;->INSTANCE:Lcom/metamoji/nt/dl/NtFontLicenseManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/metamoji/nt/dl/LicenseManager;-><init>()V

    return-void
.end method


# virtual methods
.method public final getFontManager()Lcom/metamoji/nt/dl/INtDownloadableFontManager;
    .locals 2

    .line 107
    invoke-static {}, Lcom/metamoji/un/text/DownloadableFontManager;->getInstance()Lcom/metamoji/un/text/DownloadableFontManager;

    move-result-object v0

    const-string v1, "getInstance(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/metamoji/nt/dl/INtDownloadableFontManager;

    return-object v0
.end method

.method public getLicenses()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 111
    sget-object v0, Lcom/metamoji/ui/cabinet/user/LoginPageActivity;->Companion:Lcom/metamoji/ui/cabinet/user/LoginPageActivity$Companion;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/LoginPageActivity$Companion;->isAlreadyLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/metamoji/nt/dl/NtFontLicenseManager;->getFontManager()Lcom/metamoji/nt/dl/INtDownloadableFontManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/nt/dl/INtDownloadableFontManager;->getSysInfoKeys()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    return-object v0

    .line 114
    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    return-object v0
.end method
