.class public final Lcom/metamoji/lib/utils/ActivityOptions$Companion;
.super Ljava/lang/Object;
.source "ActivityExt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lib/utils/ActivityOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001a\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\tJ\u001a\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\tJ\"\u0010\u000c\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/ActivityOptions$Companion;",
        "",
        "<init>",
        "()V",
        "actionBar",
        "Lcom/metamoji/lib/utils/ActivityOptions;",
        "showActionBar",
        "",
        "orientation",
        "Lcom/metamoji/lib/utils/ActivityOrientation;",
        "statusBar",
        "showStatusBar",
        "actionAndStatusBar",
        "utils"
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

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/lib/utils/ActivityOptions$Companion;-><init>()V

    return-void
.end method

.method public static synthetic actionAndStatusBar$default(Lcom/metamoji/lib/utils/ActivityOptions$Companion;ZZLcom/metamoji/lib/utils/ActivityOrientation;ILjava/lang/Object;)Lcom/metamoji/lib/utils/ActivityOptions;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 101
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/lib/utils/ActivityOptions$Companion;->actionAndStatusBar(ZZLcom/metamoji/lib/utils/ActivityOrientation;)Lcom/metamoji/lib/utils/ActivityOptions;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic actionBar$default(Lcom/metamoji/lib/utils/ActivityOptions$Companion;ZLcom/metamoji/lib/utils/ActivityOrientation;ILjava/lang/Object;)Lcom/metamoji/lib/utils/ActivityOptions;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 97
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/lib/utils/ActivityOptions$Companion;->actionBar(ZLcom/metamoji/lib/utils/ActivityOrientation;)Lcom/metamoji/lib/utils/ActivityOptions;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic statusBar$default(Lcom/metamoji/lib/utils/ActivityOptions$Companion;ZLcom/metamoji/lib/utils/ActivityOrientation;ILjava/lang/Object;)Lcom/metamoji/lib/utils/ActivityOptions;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 99
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/lib/utils/ActivityOptions$Companion;->statusBar(ZLcom/metamoji/lib/utils/ActivityOrientation;)Lcom/metamoji/lib/utils/ActivityOptions;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final actionAndStatusBar(ZZLcom/metamoji/lib/utils/ActivityOrientation;)Lcom/metamoji/lib/utils/ActivityOptions;
    .locals 1

    .line 102
    new-instance v0, Lcom/metamoji/lib/utils/ActivityOptions;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {v0, p1, p2, p3}, Lcom/metamoji/lib/utils/ActivityOptions;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/metamoji/lib/utils/ActivityOrientation;)V

    return-object v0
.end method

.method public final actionBar(ZLcom/metamoji/lib/utils/ActivityOrientation;)Lcom/metamoji/lib/utils/ActivityOptions;
    .locals 2

    .line 98
    new-instance v0, Lcom/metamoji/lib/utils/ActivityOptions;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Lcom/metamoji/lib/utils/ActivityOptions;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/metamoji/lib/utils/ActivityOrientation;)V

    return-object v0
.end method

.method public final statusBar(ZLcom/metamoji/lib/utils/ActivityOrientation;)Lcom/metamoji/lib/utils/ActivityOptions;
    .locals 2

    .line 100
    new-instance v0, Lcom/metamoji/lib/utils/ActivityOptions;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, v1, p1, p2}, Lcom/metamoji/lib/utils/ActivityOptions;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/metamoji/lib/utils/ActivityOrientation;)V

    return-object v0
.end method
