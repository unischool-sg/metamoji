.class public final Lcom/metamoji/nt/dl/NtMazecLicenseManager;
.super Lcom/metamoji/nt/dl/LicenseManager;
.source "LicenseManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/nt/dl/NtMazecLicenseManager$NtLocaleEx;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u001c\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\tB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001a\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00058VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/metamoji/nt/dl/NtMazecLicenseManager;",
        "Lcom/metamoji/nt/dl/LicenseManager;",
        "<init>",
        "()V",
        "licenses",
        "",
        "",
        "getLicenses",
        "()Ljava/lang/Iterable;",
        "NtLocaleEx",
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
.field public static final INSTANCE:Lcom/metamoji/nt/dl/NtMazecLicenseManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/metamoji/nt/dl/NtMazecLicenseManager;

    invoke-direct {v0}, Lcom/metamoji/nt/dl/NtMazecLicenseManager;-><init>()V

    sput-object v0, Lcom/metamoji/nt/dl/NtMazecLicenseManager;->INSTANCE:Lcom/metamoji/nt/dl/NtMazecLicenseManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/metamoji/nt/dl/LicenseManager;-><init>()V

    return-void
.end method


# virtual methods
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

    .line 56
    sget-object v0, Lcom/metamoji/ui/cabinet/user/LoginPageActivity;->Companion:Lcom/metamoji/ui/cabinet/user/LoginPageActivity$Companion;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/LoginPageActivity$Companion;->isAlreadyLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    sget-object v0, Lcom/metamoji/nt/dl/NtMazecLicenseManager$NtLocaleEx;->ja:Lcom/metamoji/nt/dl/NtMazecLicenseManager$NtLocaleEx;

    invoke-virtual {v0}, Lcom/metamoji/nt/dl/NtMazecLicenseManager$NtLocaleEx;->getMazecName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    return-object v0

    .line 59
    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    return-object v0
.end method
