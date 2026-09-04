.class public final Lcom/metamoji/lib/dialog/UtSingleSelectionBox$Companion;
.super Ljava/lang/Object;
.source "UtSelectionBox.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lib/dialog/UtSingleSelectionBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J#\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\t\u00a2\u0006\u0002\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/metamoji/lib/dialog/UtSingleSelectionBox$Companion;",
        "",
        "<init>",
        "()V",
        "create",
        "Lcom/metamoji/lib/dialog/UtSingleSelectionBox;",
        "title",
        "",
        "items",
        "",
        "(Ljava/lang/String;[Ljava/lang/String;)Lcom/metamoji/lib/dialog/UtSingleSelectionBox;",
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

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/lib/dialog/UtSingleSelectionBox$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/String;[Ljava/lang/String;)Lcom/metamoji/lib/dialog/UtSingleSelectionBox;
    .locals 1

    const-string v0, "items"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    new-instance v0, Lcom/metamoji/lib/dialog/UtSingleSelectionBox;

    invoke-direct {v0}, Lcom/metamoji/lib/dialog/UtSingleSelectionBox;-><init>()V

    .line 54
    invoke-virtual {v0, p2}, Lcom/metamoji/lib/dialog/UtSingleSelectionBox;->setItems([Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0, p1}, Lcom/metamoji/lib/dialog/UtSingleSelectionBox;->setTitle(Ljava/lang/String;)V

    return-object v0
.end method
