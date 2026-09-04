.class public final Lcom/metamoji/noteanytime/EditorExternalCommand$Companion;
.super Ljava/lang/Object;
.source "EditorExternalCommand.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/noteanytime/EditorExternalCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/metamoji/noteanytime/EditorExternalCommand$Companion;",
        "",
        "<init>",
        "()V",
        "cmdKey",
        "",
        "preferMMJSize",
        "",
        "getPreferMMJSize",
        "()Z",
        "setPreferMMJSize",
        "(Z)V",
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

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/noteanytime/EditorExternalCommand$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getPreferMMJSize()Z
    .locals 1

    .line 69
    invoke-static {}, Lcom/metamoji/noteanytime/EditorExternalCommand;->access$getPreferMMJSize$cp()Z

    move-result v0

    return v0
.end method

.method public final setPreferMMJSize(Z)V
    .locals 0

    .line 69
    invoke-static {p1}, Lcom/metamoji/noteanytime/EditorExternalCommand;->access$setPreferMMJSize$cp(Z)V

    return-void
.end method
