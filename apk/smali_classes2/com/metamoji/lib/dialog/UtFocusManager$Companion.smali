.class public final Lcom/metamoji/lib/dialog/UtFocusManager$Companion;
.super Ljava/lang/Object;
.source "UtFocusManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lib/dialog/UtFocusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0011\u0010\u0004\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007R\u001a\u0010\u0008\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/metamoji/lib/dialog/UtFocusManager$Companion;",
        "",
        "<init>",
        "()V",
        "logger",
        "Lcom/metamoji/lib/utils/UtLog;",
        "getLogger",
        "()Lcom/metamoji/lib/utils/UtLog;",
        "defaultUseKey",
        "Lcom/metamoji/lib/dialog/UtFocusManager$UseKey;",
        "getDefaultUseKey",
        "()Lcom/metamoji/lib/dialog/UtFocusManager$UseKey;",
        "setDefaultUseKey",
        "(Lcom/metamoji/lib/dialog/UtFocusManager$UseKey;)V",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/lib/dialog/UtFocusManager$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDefaultUseKey()Lcom/metamoji/lib/dialog/UtFocusManager$UseKey;
    .locals 1

    .line 395
    invoke-static {}, Lcom/metamoji/lib/dialog/UtFocusManager;->access$getDefaultUseKey$cp()Lcom/metamoji/lib/dialog/UtFocusManager$UseKey;

    move-result-object v0

    return-object v0
.end method

.method public final getLogger()Lcom/metamoji/lib/utils/UtLog;
    .locals 1

    .line 394
    sget-object v0, Lcom/metamoji/lib/dialog/UtDialogBase;->Companion:Lcom/metamoji/lib/dialog/UtDialogBase$Companion;

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtDialogBase$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    return-object v0
.end method

.method public final setDefaultUseKey(Lcom/metamoji/lib/dialog/UtFocusManager$UseKey;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 395
    invoke-static {p1}, Lcom/metamoji/lib/dialog/UtFocusManager;->access$setDefaultUseKey$cp(Lcom/metamoji/lib/dialog/UtFocusManager$UseKey;)V

    return-void
.end method
