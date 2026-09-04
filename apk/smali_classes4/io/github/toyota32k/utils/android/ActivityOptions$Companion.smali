.class public final Lio/github/toyota32k/utils/android/ActivityOptions$Companion;
.super Ljava/lang/Object;
.source "ActivityExt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/toyota32k/utils/android/ActivityOptions;
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
        "Lio/github/toyota32k/utils/android/ActivityOptions$Companion;",
        "",
        "<init>",
        "()V",
        "actionBar",
        "Lio/github/toyota32k/utils/android/ActivityOptions;",
        "showActionBar",
        "",
        "orientation",
        "Lio/github/toyota32k/utils/android/ActivityOrientation;",
        "statusBar",
        "showStatusBar",
        "actionAndStatusBar",
        "libUtils_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lio/github/toyota32k/utils/android/ActivityOptions$Companion;-><init>()V

    return-void
.end method

.method public static synthetic actionAndStatusBar$default(Lio/github/toyota32k/utils/android/ActivityOptions$Companion;ZZLio/github/toyota32k/utils/android/ActivityOrientation;ILjava/lang/Object;)Lio/github/toyota32k/utils/android/ActivityOptions;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 99
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lio/github/toyota32k/utils/android/ActivityOptions$Companion;->actionAndStatusBar(ZZLio/github/toyota32k/utils/android/ActivityOrientation;)Lio/github/toyota32k/utils/android/ActivityOptions;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic actionBar$default(Lio/github/toyota32k/utils/android/ActivityOptions$Companion;ZLio/github/toyota32k/utils/android/ActivityOrientation;ILjava/lang/Object;)Lio/github/toyota32k/utils/android/ActivityOptions;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 95
    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/github/toyota32k/utils/android/ActivityOptions$Companion;->actionBar(ZLio/github/toyota32k/utils/android/ActivityOrientation;)Lio/github/toyota32k/utils/android/ActivityOptions;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic statusBar$default(Lio/github/toyota32k/utils/android/ActivityOptions$Companion;ZLio/github/toyota32k/utils/android/ActivityOrientation;ILjava/lang/Object;)Lio/github/toyota32k/utils/android/ActivityOptions;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 97
    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/github/toyota32k/utils/android/ActivityOptions$Companion;->statusBar(ZLio/github/toyota32k/utils/android/ActivityOrientation;)Lio/github/toyota32k/utils/android/ActivityOptions;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final actionAndStatusBar(ZZLio/github/toyota32k/utils/android/ActivityOrientation;)Lio/github/toyota32k/utils/android/ActivityOptions;
    .locals 1

    .line 100
    new-instance v0, Lio/github/toyota32k/utils/android/ActivityOptions;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {v0, p1, p2, p3}, Lio/github/toyota32k/utils/android/ActivityOptions;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Lio/github/toyota32k/utils/android/ActivityOrientation;)V

    return-object v0
.end method

.method public final actionBar(ZLio/github/toyota32k/utils/android/ActivityOrientation;)Lio/github/toyota32k/utils/android/ActivityOptions;
    .locals 2

    .line 96
    new-instance v0, Lio/github/toyota32k/utils/android/ActivityOptions;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Lio/github/toyota32k/utils/android/ActivityOptions;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Lio/github/toyota32k/utils/android/ActivityOrientation;)V

    return-object v0
.end method

.method public final statusBar(ZLio/github/toyota32k/utils/android/ActivityOrientation;)Lio/github/toyota32k/utils/android/ActivityOptions;
    .locals 2

    .line 98
    new-instance v0, Lio/github/toyota32k/utils/android/ActivityOptions;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, v1, p1, p2}, Lio/github/toyota32k/utils/android/ActivityOptions;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Lio/github/toyota32k/utils/android/ActivityOrientation;)V

    return-object v0
.end method
