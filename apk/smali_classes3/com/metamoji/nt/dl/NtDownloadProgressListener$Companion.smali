.class public final Lcom/metamoji/nt/dl/NtDownloadProgressListener$Companion;
.super Ljava/lang/Object;
.source "NtDownloadProgressListener.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/dl/NtDownloadProgressListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0001H\u0007\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/metamoji/nt/dl/NtDownloadProgressListener$Companion;",
        "",
        "<init>",
        "()V",
        "createInstance",
        "Lcom/metamoji/nt/dl/NtDownloadProgressListener;",
        "obj",
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

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/nt/dl/NtDownloadProgressListener$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createInstance(Ljava/lang/Object;)Lcom/metamoji/nt/dl/NtDownloadProgressListener;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p1, :cond_0

    .line 96
    instance-of v0, p1, Lcom/metamoji/nt/dl/INtResourceDownloadStatusOutput;

    if-eqz v0, :cond_0

    .line 97
    new-instance v0, Lcom/metamoji/nt/dl/NtDownloadProgressListener;

    check-cast p1, Lcom/metamoji/nt/dl/INtResourceDownloadStatusOutput;

    invoke-direct {v0, p1}, Lcom/metamoji/nt/dl/NtDownloadProgressListener;-><init>(Lcom/metamoji/nt/dl/INtResourceDownloadStatusOutput;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
