.class public final Lcom/metamoji/lib/dialog/UtMultiSelectionBox$Companion;
.super Ljava/lang/Object;
.source "UtSelectionBox.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lib/dialog/UtMultiSelectionBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0018\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003JA\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00072\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/metamoji/lib/dialog/UtMultiSelectionBox$Companion;",
        "",
        "<init>",
        "()V",
        "create",
        "Lcom/metamoji/lib/dialog/UtMultiSelectionBox;",
        "title",
        "",
        "items",
        "",
        "initialSelections",
        "",
        "okLabel",
        "cancelLabel",
        "(Ljava/lang/String;[Ljava/lang/String;[ZLjava/lang/String;Ljava/lang/String;)Lcom/metamoji/lib/dialog/UtMultiSelectionBox;",
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

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/lib/dialog/UtMultiSelectionBox$Companion;-><init>()V

    return-void
.end method

.method public static synthetic create$default(Lcom/metamoji/lib/dialog/UtMultiSelectionBox$Companion;Ljava/lang/String;[Ljava/lang/String;[ZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/metamoji/lib/dialog/UtMultiSelectionBox;
    .locals 6

    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_0

    .line 126
    sget-object p4, Lcom/metamoji/lib/dialog/UtStandardString;->OK:Lcom/metamoji/lib/dialog/UtStandardString;

    invoke-virtual {p4}, Lcom/metamoji/lib/dialog/UtStandardString;->getText()Ljava/lang/String;

    move-result-object p4

    :cond_0
    move-object v4, p4

    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    const/4 p5, 0x0

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/lib/dialog/UtMultiSelectionBox$Companion;->create(Ljava/lang/String;[Ljava/lang/String;[ZLjava/lang/String;Ljava/lang/String;)Lcom/metamoji/lib/dialog/UtMultiSelectionBox;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/String;[Ljava/lang/String;[ZLjava/lang/String;Ljava/lang/String;)Lcom/metamoji/lib/dialog/UtMultiSelectionBox;
    .locals 2

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "items"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "okLabel"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    new-instance v0, Lcom/metamoji/lib/dialog/UtMultiSelectionBox;

    invoke-direct {v0}, Lcom/metamoji/lib/dialog/UtMultiSelectionBox;-><init>()V

    .line 128
    invoke-virtual {v0, p1}, Lcom/metamoji/lib/dialog/UtMultiSelectionBox;->setTitle(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v0, p2}, Lcom/metamoji/lib/dialog/UtMultiSelectionBox;->setItems([Ljava/lang/String;)V

    if-nez p3, :cond_0

    .line 130
    array-length p1, p2

    new-array p3, p1, [Z

    const/4 p2, 0x0

    move v1, p2

    :goto_0
    if-ge v1, p1, :cond_0

    aput-boolean p2, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p3}, Lcom/metamoji/lib/dialog/UtMultiSelectionBox;->setSelectionFlags([Z)V

    .line 131
    invoke-virtual {v0, p4}, Lcom/metamoji/lib/dialog/UtMultiSelectionBox;->setOkLabel(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v0, p5}, Lcom/metamoji/lib/dialog/UtMultiSelectionBox;->setCancelLabel(Ljava/lang/String;)V

    return-object v0
.end method
