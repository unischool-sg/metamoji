.class public final Lcom/metamoji/nt/dl/NtDLEnv$CustomEnv$Companion;
.super Ljava/lang/Object;
.source "NtDLEnv.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/dl/NtDLEnv$CustomEnv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J \u0010\u0004\u001a\u00020\u00052\u0016\u0010\u0006\u001a\u0012\u0012\u0004\u0012\u00020\u0008\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u0007H\u0002J\u000e\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/metamoji/nt/dl/NtDLEnv$CustomEnv$Companion;",
        "",
        "<init>",
        "()V",
        "fromMap",
        "Lcom/metamoji/nt/dl/INtDLEnv;",
        "map",
        "",
        "",
        "fromDebugCtrl",
        "c",
        "Lcom/metamoji/cm/DebugControl;",
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

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/nt/dl/NtDLEnv$CustomEnv$Companion;-><init>()V

    return-void
.end method

.method private final fromMap(Ljava/util/Map;)Lcom/metamoji/nt/dl/INtDLEnv;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/metamoji/nt/dl/INtDLEnv;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 118
    new-instance v0, Lcom/metamoji/nt/dl/NtDLEnv$CustomEnv;

    invoke-direct {v0, p1}, Lcom/metamoji/nt/dl/NtDLEnv$CustomEnv;-><init>(Ljava/util/Map;)V

    check-cast v0, Lcom/metamoji/nt/dl/INtDLEnv;

    return-object v0

    :cond_0
    sget-object p1, Lcom/metamoji/nt/dl/NtDLEnv$DBG;->INSTANCE:Lcom/metamoji/nt/dl/NtDLEnv$DBG;

    check-cast p1, Lcom/metamoji/nt/dl/INtDLEnv;

    return-object p1
.end method


# virtual methods
.method public final fromDebugCtrl(Lcom/metamoji/cm/DebugControl;)Lcom/metamoji/nt/dl/INtDLEnv;
    .locals 1

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    const-string v0, "DLResSp"

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/DebugControl;->get(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/metamoji/nt/dl/NtDLEnv$CustomEnv$Companion;->fromMap(Ljava/util/Map;)Lcom/metamoji/nt/dl/INtDLEnv;

    move-result-object p1

    return-object p1
.end method
