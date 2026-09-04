.class public final Lcom/metamoji/nt/NtUrlScheme;
.super Ljava/lang/Object;
.source "NtUrlScheme.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H\u0007\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/metamoji/nt/NtUrlScheme;",
        "",
        "<init>",
        "()V",
        "getUrlScheme",
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


# static fields
.field public static final INSTANCE:Lcom/metamoji/nt/NtUrlScheme;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/metamoji/nt/NtUrlScheme;

    invoke-direct {v0}, Lcom/metamoji/nt/NtUrlScheme;-><init>()V

    sput-object v0, Lcom/metamoji/nt/NtUrlScheme;->INSTANCE:Lcom/metamoji/nt/NtUrlScheme;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getUrlScheme()Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 8
    const-string v0, "metamojiclassroom"

    return-object v0
.end method
