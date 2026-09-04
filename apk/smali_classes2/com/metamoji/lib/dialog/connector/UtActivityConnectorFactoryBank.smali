.class public final Lcom/metamoji/lib/dialog/connector/UtActivityConnectorFactoryBank;
.super Ljava/lang/Object;
.source "UtActivityConnectorFactoryBank.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/lib/dialog/connector/UtActivityConnectorFactoryBank$ActivityConnectorFactory;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u0001\u0010B\u001d\u0012\u0014\u0010\u0002\u001a\u0010\u0012\u000c\u0012\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u00040\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J$\u0010\u0008\u001a\u0016\u0012\u0004\u0012\u00020\n\u0012\u000c\u0012\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u000b0\t2\u0006\u0010\u000c\u001a\u00020\rH\u0002J\u000e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u000c\u001a\u00020\rR\u001e\u0010\u0002\u001a\u0010\u0012\u000c\u0012\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u00040\u0003X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0007\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/metamoji/lib/dialog/connector/UtActivityConnectorFactoryBank;",
        "",
        "factoryList",
        "",
        "Lcom/metamoji/lib/dialog/connector/UtActivityConnectorFactoryBank$ActivityConnectorFactory;",
        "<init>",
        "([Lcom/metamoji/lib/dialog/connector/UtActivityConnectorFactoryBank$ActivityConnectorFactory;)V",
        "[Lcom/metamoji/lib/dialog/connector/UtActivityConnectorFactoryBank$ActivityConnectorFactory;",
        "createConnectors",
        "",
        "Lcom/metamoji/lib/dialog/connector/UtActivityConnectorKey;",
        "Lcom/metamoji/lib/dialog/connector/UtActivityConnector;",
        "owner",
        "Lcom/metamoji/lib/dialog/UtDialogOwner;",
        "createConnectorStore",
        "Lcom/metamoji/lib/dialog/connector/UtActivityConnectorStore;",
        "ActivityConnectorFactory",
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
.field private final factoryList:[Lcom/metamoji/lib/dialog/connector/UtActivityConnectorFactoryBank$ActivityConnectorFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/metamoji/lib/dialog/connector/UtActivityConnectorFactoryBank$ActivityConnectorFactory<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Lcom/metamoji/lib/dialog/connector/UtActivityConnectorFactoryBank$ActivityConnectorFactory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/metamoji/lib/dialog/connector/UtActivityConnectorFactoryBank$ActivityConnectorFactory<",
            "**>;)V"
        }
    .end annotation

    const-string v0, "factoryList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorFactoryBank;->factoryList:[Lcom/metamoji/lib/dialog/connector/UtActivityConnectorFactoryBank$ActivityConnectorFactory;

    return-void
.end method

.method private final createConnectors(Lcom/metamoji/lib/dialog/UtDialogOwner;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/dialog/UtDialogOwner;",
            ")",
            "Ljava/util/Map<",
            "Lcom/metamoji/lib/dialog/connector/UtActivityConnectorKey;",
            "Lcom/metamoji/lib/dialog/connector/UtActivityConnector<",
            "**>;>;"
        }
    .end annotation

    .line 32
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 33
    iget-object v1, p0, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorFactoryBank;->factoryList:[Lcom/metamoji/lib/dialog/connector/UtActivityConnectorFactoryBank$ActivityConnectorFactory;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 34
    invoke-virtual {v4}, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorFactoryBank$ActivityConnectorFactory;->getKey()Lcom/metamoji/lib/dialog/connector/UtActivityConnectorKey;

    move-result-object v5

    invoke-virtual {v4, p1}, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorFactoryBank$ActivityConnectorFactory;->createActivityConnector(Lcom/metamoji/lib/dialog/UtDialogOwner;)Lcom/metamoji/lib/dialog/connector/UtActivityConnector;

    move-result-object v4

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final createConnectorStore(Lcom/metamoji/lib/dialog/UtDialogOwner;)Lcom/metamoji/lib/dialog/connector/UtActivityConnectorStore;
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance v0, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorStore;

    invoke-direct {p0, p1}, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorFactoryBank;->createConnectors(Lcom/metamoji/lib/dialog/UtDialogOwner;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorStore;-><init>(Ljava/util/Map;)V

    return-object v0
.end method
