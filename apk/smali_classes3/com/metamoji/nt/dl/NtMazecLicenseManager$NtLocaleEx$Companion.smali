.class public final Lcom/metamoji/nt/dl/NtMazecLicenseManager$NtLocaleEx$Companion;
.super Ljava/lang/Object;
.source "LicenseManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/dl/NtMazecLicenseManager$NtLocaleEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/metamoji/nt/dl/NtMazecLicenseManager$NtLocaleEx$Companion;",
        "",
        "<init>",
        "()V",
        "fromLocale",
        "Lcom/metamoji/nt/dl/NtMazecLicenseManager$NtLocaleEx;",
        "locale",
        "Lcom/metamoji/nt/NtLocale;",
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

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/nt/dl/NtMazecLicenseManager$NtLocaleEx$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromLocale(Lcom/metamoji/nt/NtLocale;)Lcom/metamoji/nt/dl/NtMazecLicenseManager$NtLocaleEx;
    .locals 5

    const-string v0, "locale"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-static {}, Lcom/metamoji/nt/dl/NtMazecLicenseManager$NtLocaleEx;->values()[Lcom/metamoji/nt/dl/NtMazecLicenseManager$NtLocaleEx;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 39
    invoke-virtual {v3}, Lcom/metamoji/nt/dl/NtMazecLicenseManager$NtLocaleEx;->getLocale()Lcom/metamoji/nt/NtLocale;

    move-result-object v4

    if-ne v4, p1, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
