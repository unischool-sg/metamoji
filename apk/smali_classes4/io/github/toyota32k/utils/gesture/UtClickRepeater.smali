.class public final Lio/github/toyota32k/utils/gesture/UtClickRepeater;
.super Ljava/lang/Object;
.source "UtClickRepeater.kt"

# interfaces
.implements Lio/github/toyota32k/utils/IDisposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/toyota32k/utils/gesture/UtClickRepeater$RepeatStatus;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000A\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u001d\u0018\u00002\u00020\u0001:\u0001\"B\'\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0010\u0010\u001f\u001a\u00020 2\u0006\u0010\u0002\u001a\u00020\u0003H\u0007J\u0008\u0010!\u001a\u00020 H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R/\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0010\t\u001a\u0004\u0018\u00010\u00038B@BX\u0082\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0014\u001a\u00020\u0015X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001c\u001a\u00020\u001dX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u001e\u00a8\u0006#"
    }
    d2 = {
        "Lio/github/toyota32k/utils/gesture/UtClickRepeater;",
        "Lio/github/toyota32k/utils/IDisposable;",
        "view",
        "Landroid/view/View;",
        "repeatInterval",
        "",
        "activationTime",
        "<init>",
        "(Landroid/view/View;JJ)V",
        "<set-?>",
        "getView",
        "()Landroid/view/View;",
        "setView",
        "(Landroid/view/View;)V",
        "view$delegate",
        "Lio/github/toyota32k/utils/WeakReferenceDelegate;",
        "logger",
        "Lio/github/toyota32k/logger/UtLog;",
        "chronos",
        "Lio/github/toyota32k/logger/Chronos;",
        "status",
        "Lio/github/toyota32k/utils/gesture/UtClickRepeater$RepeatStatus;",
        "getStatus",
        "()Lio/github/toyota32k/utils/gesture/UtClickRepeater$RepeatStatus;",
        "setStatus",
        "(Lio/github/toyota32k/utils/gesture/UtClickRepeater$RepeatStatus;)V",
        "standby",
        "Ljava/lang/Runnable;",
        "repeat",
        "io/github/toyota32k/utils/gesture/UtClickRepeater$repeat$1",
        "Lio/github/toyota32k/utils/gesture/UtClickRepeater$repeat$1;",
        "attachView",
        "",
        "dispose",
        "RepeatStatus",
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


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final activationTime:J

.field private chronos:Lio/github/toyota32k/logger/Chronos;

.field private final logger:Lio/github/toyota32k/logger/UtLog;

.field private final repeat:Lio/github/toyota32k/utils/gesture/UtClickRepeater$repeat$1;

.field private final repeatInterval:J

.field private final standby:Ljava/lang/Runnable;

.field private status:Lio/github/toyota32k/utils/gesture/UtClickRepeater$RepeatStatus;

.field private final view$delegate:Lio/github/toyota32k/utils/WeakReferenceDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "view"

    const-string v3, "getView()Landroid/view/View;"

    const-class v4, Lio/github/toyota32k/utils/gesture/UtClickRepeater;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Lio/github/toyota32k/utils/gesture/UtClickRepeater;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lio/github/toyota32k/utils/gesture/UtClickRepeater;-><init>(Landroid/view/View;JJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;JJ)V
    .locals 8

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-wide p2, p0, Lio/github/toyota32k/utils/gesture/UtClickRepeater;->repeatInterval:J

    .line 23
    iput-wide p4, p0, Lio/github/toyota32k/utils/gesture/UtClickRepeater;->activationTime:J

    .line 25
    new-instance p2, Lio/github/toyota32k/utils/WeakReferenceDelegate;

    const/4 p3, 0x0

    const/4 p4, 0x1

    invoke-direct {p2, p3, p4, p3}, Lio/github/toyota32k/utils/WeakReferenceDelegate;-><init>(Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lio/github/toyota32k/utils/gesture/UtClickRepeater;->view$delegate:Lio/github/toyota32k/utils/WeakReferenceDelegate;

    .line 27
    new-instance v0, Lio/github/toyota32k/logger/UtLog;

    sget-object p2, Lio/github/toyota32k/utils/UtLib;->INSTANCE:Lio/github/toyota32k/utils/UtLib;

    invoke-virtual {p2}, Lio/github/toyota32k/utils/UtLib;->getLogger()Lio/github/toyota32k/logger/UtLog;

    move-result-object v2

    const/16 v6, 0x18

    const/4 v7, 0x0

    const-string v1, "ClickRepeater"

    const-class v3, Lio/github/toyota32k/utils/gesture/UtClickRepeater;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v7}, Lio/github/toyota32k/logger/UtLog;-><init>(Ljava/lang/String;Lio/github/toyota32k/logger/UtLog;Ljava/lang/Class;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lio/github/toyota32k/utils/gesture/UtClickRepeater;->logger:Lio/github/toyota32k/logger/UtLog;

    move-object v1, v0

    .line 28
    new-instance v0, Lio/github/toyota32k/logger/Chronos;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lio/github/toyota32k/logger/Chronos;-><init>(Lio/github/toyota32k/logger/UtLog;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lio/github/toyota32k/utils/gesture/UtClickRepeater;->chronos:Lio/github/toyota32k/logger/Chronos;

    .line 35
    sget-object p2, Lio/github/toyota32k/utils/gesture/UtClickRepeater$RepeatStatus;->NONE:Lio/github/toyota32k/utils/gesture/UtClickRepeater$RepeatStatus;

    iput-object p2, p0, Lio/github/toyota32k/utils/gesture/UtClickRepeater;->status:Lio/github/toyota32k/utils/gesture/UtClickRepeater$RepeatStatus;

    if-eqz p1, :cond_0

    .line 38
    invoke-virtual {p0, p1}, Lio/github/toyota32k/utils/gesture/UtClickRepeater;->attachView(Landroid/view/View;)V

    .line 42
    :cond_0
    new-instance p2, Lio/github/toyota32k/utils/gesture/UtClickRepeater$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lio/github/toyota32k/utils/gesture/UtClickRepeater$$ExternalSyntheticLambda0;-><init>(Lio/github/toyota32k/utils/gesture/UtClickRepeater;)V

    iput-object p2, p0, Lio/github/toyota32k/utils/gesture/UtClickRepeater;->standby:Ljava/lang/Runnable;

    .line 50
    new-instance p2, Lio/github/toyota32k/utils/gesture/UtClickRepeater$repeat$1;

    invoke-direct {p2, p0, p1}, Lio/github/toyota32k/utils/gesture/UtClickRepeater$repeat$1;-><init>(Lio/github/toyota32k/utils/gesture/UtClickRepeater;Landroid/view/View;)V

    iput-object p2, p0, Lio/github/toyota32k/utils/gesture/UtClickRepeater;->repeat:Lio/github/toyota32k/utils/gesture/UtClickRepeater$repeat$1;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/View;JJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    const-wide/16 p2, 0x64

    :cond_1
    and-int/lit8 p6, p6, 0x4

    if-eqz p6, :cond_2

    const-wide/16 p4, 0x12c

    :cond_2
    move-wide p6, p4

    move-wide p4, p2

    move-object p2, p0

    move-object p3, p1

    .line 20
    invoke-direct/range {p2 .. p7}, Lio/github/toyota32k/utils/gesture/UtClickRepeater;-><init>(Landroid/view/View;JJ)V

    return-void
.end method

.method public static final synthetic access$getChronos$p(Lio/github/toyota32k/utils/gesture/UtClickRepeater;)Lio/github/toyota32k/logger/Chronos;
    .locals 0

    .line 20
    iget-object p0, p0, Lio/github/toyota32k/utils/gesture/UtClickRepeater;->chronos:Lio/github/toyota32k/logger/Chronos;

    return-object p0
.end method

.method public static final synthetic access$getRepeatInterval$p(Lio/github/toyota32k/utils/gesture/UtClickRepeater;)J
    .locals 2

    .line 20
    iget-wide v0, p0, Lio/github/toyota32k/utils/gesture/UtClickRepeater;->repeatInterval:J

    return-wide v0
.end method

.method static final attachView$lambda$0(Lio/github/toyota32k/utils/gesture/UtClickRepeater;Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 64
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-eqz p2, :cond_1

    const/4 p3, 0x1

    if-eq p2, p3, :cond_0

    const/4 p3, 0x5

    if-eq p2, p3, :cond_1

    const/4 p1, 0x6

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    iget-object p1, p0, Lio/github/toyota32k/utils/gesture/UtClickRepeater;->chronos:Lio/github/toyota32k/logger/Chronos;

    const-string p2, "Touch - UP"

    invoke-virtual {p1, p2}, Lio/github/toyota32k/logger/Chronos;->lap(Ljava/lang/String;)V

    .line 67
    sget-object p1, Lio/github/toyota32k/utils/gesture/UtClickRepeater$RepeatStatus;->NONE:Lio/github/toyota32k/utils/gesture/UtClickRepeater$RepeatStatus;

    iput-object p1, p0, Lio/github/toyota32k/utils/gesture/UtClickRepeater;->status:Lio/github/toyota32k/utils/gesture/UtClickRepeater$RepeatStatus;

    goto :goto_0

    .line 70
    :cond_1
    iget-object p2, p0, Lio/github/toyota32k/utils/gesture/UtClickRepeater;->chronos:Lio/github/toyota32k/logger/Chronos;

    const-string p3, "Touch - DOWN"

    invoke-virtual {p2, p3}, Lio/github/toyota32k/logger/Chronos;->lap(Ljava/lang/String;)V

    .line 71
    sget-object p2, Lio/github/toyota32k/utils/gesture/UtClickRepeater$RepeatStatus;->STANDBY:Lio/github/toyota32k/utils/gesture/UtClickRepeater$RepeatStatus;

    iput-object p2, p0, Lio/github/toyota32k/utils/gesture/UtClickRepeater;->status:Lio/github/toyota32k/utils/gesture/UtClickRepeater$RepeatStatus;

    .line 72
    iget-object p2, p0, Lio/github/toyota32k/utils/gesture/UtClickRepeater;->standby:Ljava/lang/Runnable;

    iget-wide v0, p0, Lio/github/toyota32k/utils/gesture/UtClickRepeater;->activationTime:J

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private final getView()Landroid/view/View;
    .locals 3

    .line 25
    iget-object v0, p0, Lio/github/toyota32k/utils/gesture/UtClickRepeater;->view$delegate:Lio/github/toyota32k/utils/WeakReferenceDelegate;

    sget-object v1, Lio/github/toyota32k/utils/gesture/UtClickRepeater;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/github/toyota32k/utils/WeakReferenceDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final setView(Landroid/view/View;)V
    .locals 3

    .line 25
    iget-object v0, p0, Lio/github/toyota32k/utils/gesture/UtClickRepeater;->view$delegate:Lio/github/toyota32k/utils/WeakReferenceDelegate;

    sget-object v1, Lio/github/toyota32k/utils/gesture/UtClickRepeater;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lio/github/toyota32k/utils/WeakReferenceDelegate;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method static final standby$lambda$0(Lio/github/toyota32k/utils/gesture/UtClickRepeater;)V
    .locals 2

    .line 43
    iget-object v0, p0, Lio/github/toyota32k/utils/gesture/UtClickRepeater;->status:Lio/github/toyota32k/utils/gesture/UtClickRepeater$RepeatStatus;

    sget-object v1, Lio/github/toyota32k/utils/gesture/UtClickRepeater$RepeatStatus;->STANDBY:Lio/github/toyota32k/utils/gesture/UtClickRepeater$RepeatStatus;

    if-ne v0, v1, :cond_0

    .line 44
    iget-object v0, p0, Lio/github/toyota32k/utils/gesture/UtClickRepeater;->chronos:Lio/github/toyota32k/logger/Chronos;

    const-string v1, "Touch - Repeat Started"

    invoke-virtual {v0, v1}, Lio/github/toyota32k/logger/Chronos;->lap(Ljava/lang/String;)V

    .line 45
    sget-object v0, Lio/github/toyota32k/utils/gesture/UtClickRepeater$RepeatStatus;->REPEATING:Lio/github/toyota32k/utils/gesture/UtClickRepeater$RepeatStatus;

    iput-object v0, p0, Lio/github/toyota32k/utils/gesture/UtClickRepeater;->status:Lio/github/toyota32k/utils/gesture/UtClickRepeater$RepeatStatus;

    .line 46
    iget-object p0, p0, Lio/github/toyota32k/utils/gesture/UtClickRepeater;->repeat:Lio/github/toyota32k/utils/gesture/UtClickRepeater$repeat$1;

    invoke-virtual {p0}, Lio/github/toyota32k/utils/gesture/UtClickRepeater$repeat$1;->run()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final attachView(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    sget-object v0, Lio/github/toyota32k/utils/gesture/UtClickRepeater$RepeatStatus;->NONE:Lio/github/toyota32k/utils/gesture/UtClickRepeater$RepeatStatus;

    iput-object v0, p0, Lio/github/toyota32k/utils/gesture/UtClickRepeater;->status:Lio/github/toyota32k/utils/gesture/UtClickRepeater$RepeatStatus;

    .line 62
    invoke-direct {p0, p1}, Lio/github/toyota32k/utils/gesture/UtClickRepeater;->setView(Landroid/view/View;)V

    .line 63
    new-instance v0, Lio/github/toyota32k/utils/gesture/UtClickRepeater$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lio/github/toyota32k/utils/gesture/UtClickRepeater$$ExternalSyntheticLambda1;-><init>(Lio/github/toyota32k/utils/gesture/UtClickRepeater;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public dispose()V
    .locals 2

    .line 82
    invoke-direct {p0}, Lio/github/toyota32k/utils/gesture/UtClickRepeater;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 83
    :cond_0
    invoke-direct {p0, v1}, Lio/github/toyota32k/utils/gesture/UtClickRepeater;->setView(Landroid/view/View;)V

    return-void
.end method

.method public final getStatus()Lio/github/toyota32k/utils/gesture/UtClickRepeater$RepeatStatus;
    .locals 1

    .line 35
    iget-object v0, p0, Lio/github/toyota32k/utils/gesture/UtClickRepeater;->status:Lio/github/toyota32k/utils/gesture/UtClickRepeater$RepeatStatus;

    return-object v0
.end method

.method public final setStatus(Lio/github/toyota32k/utils/gesture/UtClickRepeater$RepeatStatus;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iput-object p1, p0, Lio/github/toyota32k/utils/gesture/UtClickRepeater;->status:Lio/github/toyota32k/utils/gesture/UtClickRepeater$RepeatStatus;

    return-void
.end method
