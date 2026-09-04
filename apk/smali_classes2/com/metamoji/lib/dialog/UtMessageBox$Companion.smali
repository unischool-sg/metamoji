.class public final Lcom/metamoji/lib/dialog/UtMessageBox$Companion;
.super Ljava/lang/Object;
.source "UtMessageBox.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lib/dialog/UtMessageBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUtMessageBox.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UtMessageBox.kt\ncom/metamoji/lib/dialog/UtMessageBox$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,148:1\n1#2:149\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u000c\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J.\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\u00072\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bJ8\u0010\u000c\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\u00072\u0008\u0008\u0002\u0010\r\u001a\u00020\u00072\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bJ8\u0010\u000e\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00072\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bJ<\u0010\u0011\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u00072\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bJO\u0010\u0015\u001a\u00020\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\u00072\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0002\u0010\u0016\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/metamoji/lib/dialog/UtMessageBox$Companion;",
        "",
        "<init>",
        "()V",
        "createForConfirm",
        "Lcom/metamoji/lib/dialog/UtMessageBox;",
        "title",
        "",
        "message",
        "okLabel",
        "cancellable",
        "",
        "createForOkCancel",
        "cancelLabel",
        "createForYesNo",
        "yesLabel",
        "noLabel",
        "createFor",
        "positiveLabel",
        "neutralLabel",
        "negativeLabel",
        "create",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/metamoji/lib/dialog/UtMessageBox;",
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

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/lib/dialog/UtMessageBox$Companion;-><init>()V

    return-void
.end method

.method public static synthetic create$default(Lcom/metamoji/lib/dialog/UtMessageBox$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ILjava/lang/Object;)Lcom/metamoji/lib/dialog/UtMessageBox;
    .locals 1

    and-int/lit8 p8, p7, 0x1

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_1

    move-object p3, v0

    :cond_1
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_2

    move-object p4, v0

    :cond_2
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_3

    move-object p5, v0

    :cond_3
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_4

    move-object p6, v0

    .line 93
    :cond_4
    invoke-virtual/range {p0 .. p6}, Lcom/metamoji/lib/dialog/UtMessageBox$Companion;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/metamoji/lib/dialog/UtMessageBox;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic createFor$default(Lcom/metamoji/lib/dialog/UtMessageBox$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lcom/metamoji/lib/dialog/UtMessageBox;
    .locals 7

    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_0

    const/4 p6, 0x0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    .line 82
    invoke-virtual/range {v0 .. v6}, Lcom/metamoji/lib/dialog/UtMessageBox$Companion;->createFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/metamoji/lib/dialog/UtMessageBox;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic createForConfirm$default(Lcom/metamoji/lib/dialog/UtMessageBox$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lcom/metamoji/lib/dialog/UtMessageBox;
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    .line 59
    sget-object p3, Lcom/metamoji/lib/dialog/UtStandardString;->OK:Lcom/metamoji/lib/dialog/UtStandardString;

    invoke-virtual {p3}, Lcom/metamoji/lib/dialog/UtStandardString;->getText()Ljava/lang/String;

    move-result-object p3

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x1

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/metamoji/lib/dialog/UtMessageBox$Companion;->createForConfirm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/metamoji/lib/dialog/UtMessageBox;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic createForOkCancel$default(Lcom/metamoji/lib/dialog/UtMessageBox$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lcom/metamoji/lib/dialog/UtMessageBox;
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    .line 68
    sget-object p3, Lcom/metamoji/lib/dialog/UtStandardString;->OK:Lcom/metamoji/lib/dialog/UtStandardString;

    invoke-virtual {p3}, Lcom/metamoji/lib/dialog/UtStandardString;->getText()Ljava/lang/String;

    move-result-object p3

    :cond_0
    move-object v3, p3

    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    sget-object p3, Lcom/metamoji/lib/dialog/UtStandardString;->CANCEL:Lcom/metamoji/lib/dialog/UtStandardString;

    invoke-virtual {p3}, Lcom/metamoji/lib/dialog/UtStandardString;->getText()Ljava/lang/String;

    move-result-object p4

    :cond_1
    move-object v4, p4

    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_2

    const/4 p5, 0x1

    :cond_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/lib/dialog/UtMessageBox$Companion;->createForOkCancel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/metamoji/lib/dialog/UtMessageBox;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic createForYesNo$default(Lcom/metamoji/lib/dialog/UtMessageBox$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lcom/metamoji/lib/dialog/UtMessageBox;
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    .line 78
    sget-object p3, Lcom/metamoji/lib/dialog/UtStandardString;->YES:Lcom/metamoji/lib/dialog/UtStandardString;

    invoke-virtual {p3}, Lcom/metamoji/lib/dialog/UtStandardString;->getText()Ljava/lang/String;

    move-result-object p3

    :cond_0
    move-object v3, p3

    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    sget-object p3, Lcom/metamoji/lib/dialog/UtStandardString;->NO:Lcom/metamoji/lib/dialog/UtStandardString;

    invoke-virtual {p3}, Lcom/metamoji/lib/dialog/UtStandardString;->getText()Ljava/lang/String;

    move-result-object p4

    :cond_1
    move-object v4, p4

    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_2

    const/4 p5, 0x0

    :cond_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/lib/dialog/UtMessageBox$Companion;->createForYesNo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/metamoji/lib/dialog/UtMessageBox;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/metamoji/lib/dialog/UtMessageBox;
    .locals 1

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 101
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p3, :cond_1

    if-nez p4, :cond_1

    if-eqz p5, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "At least one button must be specified."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 105
    :cond_1
    :goto_0
    new-instance v0, Lcom/metamoji/lib/dialog/UtMessageBox;

    invoke-direct {v0}, Lcom/metamoji/lib/dialog/UtMessageBox;-><init>()V

    .line 106
    invoke-virtual {v0, p1}, Lcom/metamoji/lib/dialog/UtMessageBox;->setTitle(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v0, p2}, Lcom/metamoji/lib/dialog/UtMessageBox;->setMessage(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v0, p3}, Lcom/metamoji/lib/dialog/UtMessageBox;->setOkLabel(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v0, p5}, Lcom/metamoji/lib/dialog/UtMessageBox;->setCancelLabel(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0, p4}, Lcom/metamoji/lib/dialog/UtMessageBox;->setOtherLabel(Ljava/lang/String;)V

    if-eqz p6, :cond_2

    .line 111
    invoke-virtual {p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/metamoji/lib/dialog/UtMessageBox;->setCancellable(Z)V

    :cond_2
    return-object v0
.end method

.method public final createFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/metamoji/lib/dialog/UtMessageBox;
    .locals 1

    const-string v0, "positiveLabel"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "neutralLabel"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "negativeLabel"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    new-instance v0, Lcom/metamoji/lib/dialog/UtMessageBox;

    invoke-direct {v0}, Lcom/metamoji/lib/dialog/UtMessageBox;-><init>()V

    .line 84
    invoke-virtual {v0, p1}, Lcom/metamoji/lib/dialog/UtMessageBox;->setTitle(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0, p2}, Lcom/metamoji/lib/dialog/UtMessageBox;->setMessage(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0, p3}, Lcom/metamoji/lib/dialog/UtMessageBox;->setOkLabel(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v0, p5}, Lcom/metamoji/lib/dialog/UtMessageBox;->setCancelLabel(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0, p4}, Lcom/metamoji/lib/dialog/UtMessageBox;->setOtherLabel(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0, p6}, Lcom/metamoji/lib/dialog/UtMessageBox;->setCancellable(Z)V

    return-object v0
.end method

.method public final createForConfirm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/metamoji/lib/dialog/UtMessageBox;
    .locals 1

    const-string v0, "okLabel"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    new-instance v0, Lcom/metamoji/lib/dialog/UtMessageBox;

    invoke-direct {v0}, Lcom/metamoji/lib/dialog/UtMessageBox;-><init>()V

    .line 61
    invoke-virtual {v0, p1}, Lcom/metamoji/lib/dialog/UtMessageBox;->setTitle(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v0, p2}, Lcom/metamoji/lib/dialog/UtMessageBox;->setMessage(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0, p3}, Lcom/metamoji/lib/dialog/UtMessageBox;->setOkLabel(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0, p4}, Lcom/metamoji/lib/dialog/UtMessageBox;->setCancellable(Z)V

    return-object v0
.end method

.method public final createForOkCancel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/metamoji/lib/dialog/UtMessageBox;
    .locals 1

    const-string v0, "okLabel"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cancelLabel"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    new-instance v0, Lcom/metamoji/lib/dialog/UtMessageBox;

    invoke-direct {v0}, Lcom/metamoji/lib/dialog/UtMessageBox;-><init>()V

    .line 70
    invoke-virtual {v0, p1}, Lcom/metamoji/lib/dialog/UtMessageBox;->setTitle(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0, p2}, Lcom/metamoji/lib/dialog/UtMessageBox;->setMessage(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0, p3}, Lcom/metamoji/lib/dialog/UtMessageBox;->setOkLabel(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0, p4}, Lcom/metamoji/lib/dialog/UtMessageBox;->setCancelLabel(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v0, p5}, Lcom/metamoji/lib/dialog/UtMessageBox;->setCancellable(Z)V

    return-object v0
.end method

.method public final createForYesNo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/metamoji/lib/dialog/UtMessageBox;
    .locals 1

    const-string v0, "yesLabel"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "noLabel"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-virtual/range {p0 .. p5}, Lcom/metamoji/lib/dialog/UtMessageBox$Companion;->createForOkCancel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/metamoji/lib/dialog/UtMessageBox;

    move-result-object p1

    return-object p1
.end method
