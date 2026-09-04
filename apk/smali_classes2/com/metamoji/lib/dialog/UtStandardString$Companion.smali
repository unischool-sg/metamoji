.class public final Lcom/metamoji/lib/dialog/UtStandardString$Companion;
.super Ljava/lang/Object;
.source "UtStandardString.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lib/dialog/UtStandardString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001c\u0010\t\u001a\u00020\n2\u0006\u0010\u0004\u001a\u00020\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0007J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0003J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u000eH\u0002R\u0016\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/metamoji/lib/dialog/UtStandardString$Companion;",
        "",
        "<init>",
        "()V",
        "context",
        "Ljava/lang/ref/WeakReference;",
        "Landroid/content/Context;",
        "table",
        "Lcom/metamoji/lib/dialog/IUtStringTable;",
        "setContext",
        "",
        "getId",
        "",
        "type",
        "Lcom/metamoji/lib/dialog/UtStandardString;",
        "getText",
        "",
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

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/lib/dialog/UtStandardString$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getId(Lcom/metamoji/lib/dialog/UtStandardString$Companion;Lcom/metamoji/lib/dialog/UtStandardString;)I
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/metamoji/lib/dialog/UtStandardString$Companion;->getId(Lcom/metamoji/lib/dialog/UtStandardString;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getText(Lcom/metamoji/lib/dialog/UtStandardString$Companion;Lcom/metamoji/lib/dialog/UtStandardString;)Ljava/lang/String;
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/metamoji/lib/dialog/UtStandardString$Companion;->getText(Lcom/metamoji/lib/dialog/UtStandardString;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final getId(Lcom/metamoji/lib/dialog/UtStandardString;)I
    .locals 1

    .line 44
    invoke-static {}, Lcom/metamoji/lib/dialog/UtStandardString;->access$getTable$cp()Lcom/metamoji/lib/dialog/IUtStringTable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/metamoji/lib/dialog/IUtStringTable;->get(Lcom/metamoji/lib/dialog/UtStandardString;)I

    move-result p1

    return p1

    :cond_0
    invoke-static {p1}, Lcom/metamoji/lib/dialog/UtStandardString;->access$getResId$p(Lcom/metamoji/lib/dialog/UtStandardString;)I

    move-result p1

    return p1
.end method

.method private final getText(Lcom/metamoji/lib/dialog/UtStandardString;)Ljava/lang/String;
    .locals 1

    .line 47
    invoke-static {}, Lcom/metamoji/lib/dialog/UtStandardString;->access$getContext$cp()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/metamoji/lib/dialog/UtStandardString$Companion;->getId(Lcom/metamoji/lib/dialog/UtStandardString;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    :goto_0
    const-string p1, ""

    return-object p1
.end method

.method public static synthetic setContext$default(Lcom/metamoji/lib/dialog/UtStandardString$Companion;Landroid/content/Context;Lcom/metamoji/lib/dialog/IUtStringTable;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 36
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/lib/dialog/UtStandardString$Companion;->setContext(Landroid/content/Context;Lcom/metamoji/lib/dialog/IUtStringTable;)V

    return-void
.end method


# virtual methods
.method public final setContext(Landroid/content/Context;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/metamoji/lib/dialog/UtStandardString$Companion;->setContext$default(Lcom/metamoji/lib/dialog/UtStandardString$Companion;Landroid/content/Context;Lcom/metamoji/lib/dialog/IUtStringTable;ILjava/lang/Object;)V

    return-void
.end method

.method public final setContext(Landroid/content/Context;Lcom/metamoji/lib/dialog/IUtStringTable;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/metamoji/lib/dialog/UtStandardString;->access$setContext$cp(Ljava/lang/ref/WeakReference;)V

    .line 40
    invoke-static {p2}, Lcom/metamoji/lib/dialog/UtStandardString;->access$setTable$cp(Lcom/metamoji/lib/dialog/IUtStringTable;)V

    return-void
.end method
