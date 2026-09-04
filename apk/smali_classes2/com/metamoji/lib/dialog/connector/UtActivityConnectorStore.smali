.class public final Lcom/metamoji/lib/dialog/connector/UtActivityConnectorStore;
.super Ljava/lang/Object;
.source "UtActivityConnectorStore.kt"

# interfaces
.implements Lcom/metamoji/lib/dialog/connector/IUtActivityConnectorStore;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B#\u0012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004\u0012\u000c\u0012\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u00050\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\"\u0010\u0008\u001a\u000c\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u0003\u0018\u00010\u00052\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0016R\"\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004\u0012\u000c\u0012\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u00050\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/metamoji/lib/dialog/connector/UtActivityConnectorStore;",
        "Lcom/metamoji/lib/dialog/connector/IUtActivityConnectorStore;",
        "map",
        "",
        "Lcom/metamoji/lib/dialog/connector/UtActivityConnectorKey;",
        "Lcom/metamoji/lib/dialog/connector/UtActivityConnector;",
        "<init>",
        "(Ljava/util/Map;)V",
        "getActivityConnector",
        "immortalTaskName",
        "",
        "connectorName",
        "dialog"
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
.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/metamoji/lib/dialog/connector/UtActivityConnectorKey;",
            "Lcom/metamoji/lib/dialog/connector/UtActivityConnector<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/metamoji/lib/dialog/connector/UtActivityConnectorKey;",
            "+",
            "Lcom/metamoji/lib/dialog/connector/UtActivityConnector<",
            "**>;>;)V"
        }
    .end annotation

    const-string v0, "map"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorStore;->map:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getActivityConnector(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/lib/dialog/connector/UtActivityConnector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/metamoji/lib/dialog/connector/UtActivityConnector<",
            "**>;"
        }
    .end annotation

    const-string v0, "immortalTaskName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectorName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorStore;->map:Ljava/util/Map;

    new-instance v1, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorKey;

    invoke-direct {v1, p1, p2}, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/lib/dialog/connector/UtActivityConnector;

    return-object p1
.end method
