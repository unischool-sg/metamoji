.class public final Lcom/metamoji/pdf/core/HashAlgorithm$Companion;
.super Ljava/lang/Object;
.source "Crypto.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/pdf/core/HashAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u0004\u001a\u00020\u0005J\u0006\u0010\u0006\u001a\u00020\u0005J\u0006\u0010\u0007\u001a\u00020\u0005J\u0006\u0010\u0008\u001a\u00020\u0005\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/metamoji/pdf/core/HashAlgorithm$Companion;",
        "",
        "<init>",
        "()V",
        "createMD5",
        "Lcom/metamoji/pdf/core/HashAlgorithm;",
        "createSHA256",
        "createSHA384",
        "createSHA512",
        "pdf"
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

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/pdf/core/HashAlgorithm$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createMD5()Lcom/metamoji/pdf/core/HashAlgorithm;
    .locals 3

    .line 25
    new-instance v0, Lcom/metamoji/pdf/core/HashAlgorithm;

    const-string v1, "MD5"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/pdf/core/HashAlgorithm;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final createSHA256()Lcom/metamoji/pdf/core/HashAlgorithm;
    .locals 3

    .line 26
    new-instance v0, Lcom/metamoji/pdf/core/HashAlgorithm;

    const-string v1, "SHA-256"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/pdf/core/HashAlgorithm;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final createSHA384()Lcom/metamoji/pdf/core/HashAlgorithm;
    .locals 3

    .line 27
    new-instance v0, Lcom/metamoji/pdf/core/HashAlgorithm;

    const-string v1, "SHA-384"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/pdf/core/HashAlgorithm;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final createSHA512()Lcom/metamoji/pdf/core/HashAlgorithm;
    .locals 3

    .line 28
    new-instance v0, Lcom/metamoji/pdf/core/HashAlgorithm;

    const-string v1, "SHA-512"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/pdf/core/HashAlgorithm;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
