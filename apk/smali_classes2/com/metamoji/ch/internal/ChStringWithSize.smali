.class public final Lcom/metamoji/ch/internal/ChStringWithSize;
.super Ljava/lang/Object;
.source "ChStringWithSize.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/metamoji/ch/internal/ChStringWithSize;",
        "",
        "string",
        "",
        "size",
        "Lcom/metamoji/ch/ChSize;",
        "<init>",
        "(Ljava/lang/String;Lcom/metamoji/ch/ChSize;)V",
        "getString",
        "()Ljava/lang/String;",
        "setString",
        "(Ljava/lang/String;)V",
        "getSize",
        "()Lcom/metamoji/ch/ChSize;",
        "setSize",
        "(Lcom/metamoji/ch/ChSize;)V",
        "chart"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private size:Lcom/metamoji/ch/ChSize;

.field private string:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/metamoji/ch/ChSize;)V
    .locals 1

    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "size"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ch/internal/ChStringWithSize;->string:Ljava/lang/String;

    iput-object p2, p0, Lcom/metamoji/ch/internal/ChStringWithSize;->size:Lcom/metamoji/ch/ChSize;

    return-void
.end method


# virtual methods
.method public final getSize()Lcom/metamoji/ch/ChSize;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/metamoji/ch/internal/ChStringWithSize;->size:Lcom/metamoji/ch/ChSize;

    return-object v0
.end method

.method public final getString()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/metamoji/ch/internal/ChStringWithSize;->string:Ljava/lang/String;

    return-object v0
.end method

.method public final setSize(Lcom/metamoji/ch/ChSize;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iput-object p1, p0, Lcom/metamoji/ch/internal/ChStringWithSize;->size:Lcom/metamoji/ch/ChSize;

    return-void
.end method

.method public final setString(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iput-object p1, p0, Lcom/metamoji/ch/internal/ChStringWithSize;->string:Ljava/lang/String;

    return-void
.end method
