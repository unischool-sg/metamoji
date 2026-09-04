.class public final Lcom/metamoji/un/survey/UnSurveyUnitManager;
.super Ljava/lang/Object;
.source "UnSurveyUnitManager.kt"

# interfaces
.implements Lcom/metamoji/df/sprite/TapListener;
.implements Lcom/metamoji/nt/ICommandProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/survey/UnSurveyUnitManager$Companion;,
        Lcom/metamoji/un/survey/UnSurveyUnitManager$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0096\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u000f\n\u0002\u0010$\n\u0002\u0008\u0005\u0018\u0000 Z2\u00020\u00012\u00020\u0002:\u0001ZB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000e\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020\rJ\u000e\u0010)\u001a\u00020\'2\u0006\u0010(\u001a\u00020\rJ\u000e\u0010*\u001a\u00020\'2\u0006\u0010+\u001a\u00020\u0018J\u0008\u0010,\u001a\u00020\'H\u0002J\u0008\u0010-\u001a\u00020\'H\u0002J\u0010\u0010.\u001a\u00020\'2\u0008\u0010/\u001a\u0004\u0018\u000100J\u0006\u00101\u001a\u00020\'J\u0010\u00102\u001a\u00020\'2\u0008\u00103\u001a\u0004\u0018\u000104J\u0012\u00105\u001a\u00020\'2\u0008\u00103\u001a\u0004\u0018\u000104H\u0016J\u0010\u00106\u001a\u00020\'2\u0006\u00107\u001a\u00020\rH\u0002J\u0016\u00108\u001a\u00020\'2\u0006\u00109\u001a\u00020:2\u0006\u0010;\u001a\u00020:J\u0006\u0010<\u001a\u00020\'J\u001c\u0010=\u001a\u00020\u00102\u0008\u0010>\u001a\u0004\u0018\u00010?2\u0008\u0010@\u001a\u0004\u0018\u00010AH\u0016J\u001a\u0010B\u001a\u00020\u00102\u0008\u0010>\u001a\u0004\u0018\u00010?2\u0006\u0010C\u001a\u00020\u0010H\u0016J\u001a\u0010D\u001a\u00020\u00102\u0008\u0010>\u001a\u0004\u0018\u00010?2\u0006\u0010E\u001a\u00020FH\u0016J\u0010\u0010G\u001a\u00020\u00102\u0006\u0010>\u001a\u00020?H\u0016J\u0010\u0010H\u001a\u00020\u00102\u0008\u0010@\u001a\u0004\u0018\u00010AJ\u0012\u0010I\u001a\u00020\u00102\u0008\u0010@\u001a\u0004\u0018\u00010AH\u0002J\u0012\u0010J\u001a\u00020\u00102\u0008\u0010@\u001a\u0004\u0018\u00010AH\u0002J\u0012\u0010K\u001a\u00020\u00102\u0008\u0010@\u001a\u0004\u0018\u00010AH\u0002J\u0010\u0010L\u001a\u00020\u00102\u0008\u0010@\u001a\u0004\u0018\u00010AJ\u0012\u0010M\u001a\u00020\u00102\u0008\u0010@\u001a\u0004\u0018\u00010AH\u0002J\u0012\u0010N\u001a\u00020\u00102\u0008\u0010@\u001a\u0004\u0018\u00010AH\u0002J\u000e\u0010O\u001a\u00020\r2\u0006\u0010P\u001a\u00020\u000cJ\u000e\u0010Q\u001a\u00020\'2\u0006\u0010R\u001a\u00020\u001eJ\u000e\u0010S\u001a\u00020\'2\u0006\u0010R\u001a\u00020\u001eJ\"\u0010T\u001a\u00020\'2\u0012\u0010U\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020:0V2\u0006\u0010P\u001a\u00020\u000cJ\"\u0010W\u001a\u00020\'2\u0012\u0010X\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020:0V2\u0006\u0010P\u001a\u00020\u000cJ\u0006\u0010Y\u001a\u00020\'R\u001c\u0010\u0007\u001a\u0010\u0012\u000c\u0012\n \t*\u0004\u0018\u00010\u00040\u00040\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R*\u0010\n\u001a\u001e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r0\u000bj\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r`\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0011\u001a\u0004\u0018\u00010\u00048BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u001a\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u001bR\u001e\u0010\u001c\u001a\u0012\u0012\u0004\u0012\u00020\u001e0\u001dj\u0008\u0012\u0004\u0012\u00020\u001e`\u001fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R(\u0010!\u001a\u0004\u0018\u00010\u00102\u0008\u0010 \u001a\u0004\u0018\u00010\u00108F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%\u00a8\u0006["
    }
    d2 = {
        "Lcom/metamoji/un/survey/UnSurveyUnitManager;",
        "Lcom/metamoji/df/sprite/TapListener;",
        "Lcom/metamoji/nt/ICommandProcessor;",
        "appFrame",
        "Lcom/metamoji/nt/NtNoteController;",
        "<init>",
        "(Lcom/metamoji/nt/NtNoteController;)V",
        "mNoteController",
        "Ljava/lang/ref/WeakReference;",
        "kotlin.jvm.PlatformType",
        "mUnitMap",
        "Ljava/util/HashMap;",
        "",
        "Lcom/metamoji/un/survey/UnSurveyUnit;",
        "Lkotlin/collections/HashMap;",
        "mEventListenerRegistered",
        "",
        "noteController",
        "getNoteController",
        "()Lcom/metamoji/nt/NtNoteController;",
        "mLocker",
        "Ljava/lang/Object;",
        "mCurrentPageId",
        "mLatestEvent",
        "Lcom/metamoji/nt/NtToolModeChangedContext;",
        "mIsViewMode",
        "mRecognizerEnabled",
        "Ljava/lang/Boolean;",
        "mEventListeners",
        "Ljava/util/ArrayList;",
        "Lcom/metamoji/un/survey/UnSurveyUnitEventListener;",
        "Lkotlin/collections/ArrayList;",
        "v",
        "recognizerEnabled",
        "getRecognizerEnabled",
        "()Ljava/lang/Boolean;",
        "setRecognizerEnabled",
        "(Ljava/lang/Boolean;)V",
        "enlistUnit",
        "",
        "unSurveyUnit",
        "delistUnit",
        "handleToolModeChangeEvent",
        "event",
        "registerListener",
        "unregisterListener",
        "setCurrentPage",
        "page",
        "Lcom/metamoji/nt/NtPageController;",
        "dispose",
        "onTapped",
        "ev",
        "Lcom/metamoji/df/sprite/TouchEvent;",
        "tap",
        "tappedUnit",
        "unit",
        "handleMenuTap",
        "index",
        "",
        "options",
        "updateAllUnit",
        "performCommand",
        "command",
        "Lcom/metamoji/nt/NtCommand;",
        "context",
        "Lcom/metamoji/cm/CmContext;",
        "processEnableCommand",
        "enabled",
        "processSelectCommand",
        "selected",
        "",
        "processInhibitCommand",
        "handleSurveyUnitEditSettings",
        "handleSurveyUnitViewResult",
        "handleSurveyUnitAnswer",
        "handleSurveyUnitResetAnswer",
        "handleSurveyUnitClearResult",
        "handleSurveyUnitAllowAnswer",
        "handleSurveyUnitPublishResult",
        "getSurveyUnit",
        "unitId",
        "addEventListener",
        "listener",
        "removeEventListener",
        "resultChanged",
        "result",
        "",
        "settingsChanged",
        "settings",
        "pageDeactivating",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/metamoji/un/survey/UnSurveyUnitManager$Companion;


# instance fields
.field private mCurrentPageId:Ljava/lang/String;

.field private mEventListenerRegistered:Z

.field private final mEventListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/un/survey/UnSurveyUnitEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mIsViewMode:Z

.field private mLatestEvent:Lcom/metamoji/nt/NtToolModeChangedContext;

.field private final mLocker:Ljava/lang/Object;

.field private final mNoteController:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/metamoji/nt/NtNoteController;",
            ">;"
        }
    .end annotation
.end field

.field private mRecognizerEnabled:Ljava/lang/Boolean;

.field private final mUnitMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/metamoji/un/survey/UnSurveyUnit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/un/survey/UnSurveyUnitManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/un/survey/UnSurveyUnitManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/un/survey/UnSurveyUnitManager;->Companion:Lcom/metamoji/un/survey/UnSurveyUnitManager$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/nt/NtNoteController;)V
    .locals 1

    const-string v0, "appFrame"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/metamoji/un/survey/UnSurveyUnitManager;->mNoteController:Ljava/lang/ref/WeakReference;

    .line 21
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/survey/UnSurveyUnitManager;->mUnitMap:Ljava/util/HashMap;

    .line 25
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/survey/UnSurveyUnitManager;->mLocker:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 29
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/un/survey/UnSurveyUnitManager;->mRecognizerEnabled:Ljava/lang/Boolean;

    .line 31
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/survey/UnSurveyUnitManager;->mEventListeners:Ljava/util/ArrayList;

    return-void
.end method

.method public static final canAnswerUnit(Lcom/metamoji/un/survey/UnSurveyUnit;Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/nt/NtPageController;)Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/un/survey/UnSurveyUnitManager;->Companion:Lcom/metamoji/un/survey/UnSurveyUnitManager$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/metamoji/un/survey/UnSurveyUnitManager$Companion;->canAnswerUnit(Lcom/metamoji/un/survey/UnSurveyUnit;Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/nt/NtPageController;)Z

    move-result p0

    return p0
.end method

.method public static final executeCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/un/survey/UnSurveyUnitManager;->Companion:Lcom/metamoji/un/survey/UnSurveyUnitManager$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/metamoji/un/survey/UnSurveyUnitManager$Companion;->executeCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    return-void
.end method

.method private final getNoteController()Lcom/metamoji/nt/NtNoteController;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/metamoji/un/survey/UnSurveyUnitManager;->mNoteController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtNoteController;

    return-object v0
.end method

.method private final handleSurveyUnitAllowAnswer(Lcom/metamoji/cm/CmContext;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 497
    sget-object v0, Lcom/metamoji/un/survey/UnSurveyUnit;->MMJUN_EXTINFO_UNIT_ID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 499
    :cond_0
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/metamoji/un/survey/UnSurveyUnitManager;->getSurveyUnit(Ljava/lang/String;)Lcom/metamoji/un/survey/UnSurveyUnit;

    move-result-object p1

    .line 501
    invoke-static {p1}, Lcom/metamoji/un/survey/UnSurveyUnitContainerExtender;->handleSurveyUnitAllowAnswer(Lcom/metamoji/un/survey/UnSurveyUnit;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private final handleSurveyUnitAnswer(Lcom/metamoji/cm/CmContext;)Z
    .locals 5

    if-eqz p1, :cond_1

    .line 459
    sget-object v0, Lcom/metamoji/un/survey/UnSurveyUnit;->MMJUN_EXTINFO_UNIT_ID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 461
    :cond_0
    sget-object v1, Lcom/metamoji/un/survey/UnSurveyUnit;->MMJUN_EXTINFO_USER_ID:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/String;

    .line 462
    sget-object v3, Lcom/metamoji/un/survey/UnSurveyUnit;->MMJUN_EXTINFO_ROLL:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 463
    sget-object v4, Lcom/metamoji/un/survey/UnSurveyUnit;->MMJUN_EXTINFO_USER_NAME:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/String;

    .line 465
    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/metamoji/un/survey/UnSurveyUnitManager;->getSurveyUnit(Ljava/lang/String;)Lcom/metamoji/un/survey/UnSurveyUnit;

    move-result-object v0

    .line 467
    invoke-static {}, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;->values()[Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-static {p1, v0, v1, v2, v4}, Lcom/metamoji/un/survey/UnSurveyUnitContainerExtender;->handleSurveyUnitAnswer(Lcom/metamoji/cm/CmContext;Lcom/metamoji/un/survey/UnSurveyUnit;Ljava/lang/String;Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private final handleSurveyUnitPublishResult(Lcom/metamoji/cm/CmContext;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 507
    sget-object v0, Lcom/metamoji/un/survey/UnSurveyUnit;->MMJUN_EXTINFO_UNIT_ID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 509
    :cond_0
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/metamoji/un/survey/UnSurveyUnitManager;->getSurveyUnit(Ljava/lang/String;)Lcom/metamoji/un/survey/UnSurveyUnit;

    move-result-object p1

    .line 511
    invoke-static {p1}, Lcom/metamoji/un/survey/UnSurveyUnitContainerExtender;->handleSurveyUnitPublishResult(Lcom/metamoji/un/survey/UnSurveyUnit;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private final handleSurveyUnitResetAnswer(Lcom/metamoji/cm/CmContext;)Z
    .locals 5

    if-eqz p1, :cond_1

    .line 473
    sget-object v0, Lcom/metamoji/un/survey/UnSurveyUnit;->MMJUN_EXTINFO_UNIT_ID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 475
    :cond_0
    sget-object v1, Lcom/metamoji/un/survey/UnSurveyUnit;->MMJUN_EXTINFO_USER_ID:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/String;

    .line 476
    sget-object v3, Lcom/metamoji/un/survey/UnSurveyUnit;->MMJUN_EXTINFO_ROLL:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 477
    sget-object v4, Lcom/metamoji/un/survey/UnSurveyUnit;->MMJUN_EXTINFO_USER_NAME:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;

    .line 479
    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/metamoji/un/survey/UnSurveyUnitManager;->getSurveyUnit(Ljava/lang/String;)Lcom/metamoji/un/survey/UnSurveyUnit;

    move-result-object v0

    .line 481
    invoke-static {}, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;->values()[Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-static {v0, v1, v2, p1}, Lcom/metamoji/un/survey/UnSurveyUnitContainerExtender;->handleSurveyUnitResetAnswer(Lcom/metamoji/un/survey/UnSurveyUnit;Ljava/lang/String;Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private final handleSurveyUnitViewResult(Lcom/metamoji/cm/CmContext;)Z
    .locals 5

    if-eqz p1, :cond_1

    .line 445
    sget-object v0, Lcom/metamoji/un/survey/UnSurveyUnit;->MMJUN_EXTINFO_UNIT_ID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 447
    :cond_0
    sget-object v1, Lcom/metamoji/un/survey/UnSurveyUnit;->MMJUN_EXTINFO_USER_ID:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/String;

    .line 448
    sget-object v3, Lcom/metamoji/un/survey/UnSurveyUnit;->MMJUN_EXTINFO_ROLL:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 449
    sget-object v4, Lcom/metamoji/un/survey/UnSurveyUnit;->MMJUN_EXTINFO_USER_NAME:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;

    .line 451
    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/metamoji/un/survey/UnSurveyUnitManager;->getSurveyUnit(Ljava/lang/String;)Lcom/metamoji/un/survey/UnSurveyUnit;

    move-result-object v0

    .line 453
    invoke-static {}, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;->values()[Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-static {v0, v1, v2, p1}, Lcom/metamoji/un/survey/UnSurveyUnitContainerExtender;->handleSurveyUnitViewResult(Lcom/metamoji/un/survey/UnSurveyUnit;Ljava/lang/String;Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private final registerListener()V
    .locals 2

    .line 102
    iget-boolean v0, p0, Lcom/metamoji/un/survey/UnSurveyUnitManager;->mEventListenerRegistered:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 103
    iput-boolean v0, p0, Lcom/metamoji/un/survey/UnSurveyUnitManager;->mEventListenerRegistered:Z

    .line 104
    invoke-direct {p0}, Lcom/metamoji/un/survey/UnSurveyUnitManager;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getInteractiveEventManager()Lcom/metamoji/nt/NtInteractiveEventManager;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, p0

    check-cast v1, Lcom/metamoji/df/sprite/TapListener;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtInteractiveEventManager;->addTapListener(Lcom/metamoji/df/sprite/TapListener;)V

    :cond_0
    return-void
.end method

.method private final tappedUnit(Lcom/metamoji/un/survey/UnSurveyUnit;)V
    .locals 8

    .line 248
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    .line 249
    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v1

    .line 250
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->getUserId()Ljava/lang/String;

    move-result-object v2

    .line 251
    sget-object v3, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;->Student:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;

    if-eqz v1, :cond_0

    .line 253
    sget-object v3, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;->Teacher:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;

    .line 255
    :cond_0
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->getUserName()Ljava/lang/String;

    move-result-object v4

    .line 256
    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isPersonalMode()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isFeaturedPersonalMode()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 257
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->personalIdForPersonalModeInfoView()Ljava/lang/String;

    move-result-object v2

    .line 258
    sget-object v3, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;->Student:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;

    .line 259
    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->personalNameForPersonalModeInfoView()Ljava/lang/String;

    move-result-object v4

    .line 261
    :cond_2
    new-instance v5, Lcom/metamoji/cm/CmContext;

    invoke-direct {v5}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 262
    sget-object v6, Lcom/metamoji/un/survey/UnSurveyUnit;->MMJUN_EXTINFO_UNIT_ID:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/metamoji/un/survey/UnSurveyUnit;->getUnitId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 263
    sget-object v6, Lcom/metamoji/un/survey/UnSurveyUnit;->MMJUN_EXTINFO_USER_ID:Ljava/lang/String;

    invoke-virtual {v5, v6, v2}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 264
    sget-object v6, Lcom/metamoji/un/survey/UnSurveyUnit;->MMJUN_EXTINFO_ROLL:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v6, v3}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 265
    sget-object v3, Lcom/metamoji/un/survey/UnSurveyUnit;->MMJUN_EXTINFO_USER_NAME:Ljava/lang/String;

    invoke-virtual {v5, v3, v4}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v1, :cond_8

    .line 269
    invoke-virtual {p1}, Lcom/metamoji/un/survey/UnSurveyUnit;->isAllowedTeacherAnswer()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 270
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 271
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    .line 274
    invoke-virtual {p1, v2}, Lcom/metamoji/un/survey/UnSurveyUnit;->isAnswered(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 275
    sget-object p1, Lcom/metamoji/un/survey/UnSurveyUnitManager;->Companion:Lcom/metamoji/un/survey/UnSurveyUnitManager$Companion;

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_SURVEY_UNIT_VIEW_RESULT:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, v0, v5}, Lcom/metamoji/un/survey/UnSurveyUnitManager$Companion;->executeCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    return-void

    .line 277
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 279
    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_SURVEY_UNIT_ANSWER:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/metamoji/un/survey/UnSurveyUnit;->isAllowedAnswer()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 280
    new-instance v2, Lcom/metamoji/ui/UiMenuItem;

    invoke-direct {v2}, Lcom/metamoji/ui/UiMenuItem;-><init>()V

    .line 281
    sget v3, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SURVEY_UNIT_ANSWER:I

    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/metamoji/ui/UiMenuItem;->set_caption(Ljava/lang/String;)V

    .line 282
    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_SURVEY_UNIT_ANSWER:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v2, v3}, Lcom/metamoji/ui/UiMenuItem;->set_command(Ljava/lang/Object;)V

    .line 283
    invoke-virtual {v2, v5}, Lcom/metamoji/ui/UiMenuItem;->set_options(Ljava/lang/Object;)V

    .line 284
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    :cond_4
    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_SURVEY_UNIT_VIEW_RESULT:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 288
    new-instance v0, Lcom/metamoji/ui/UiMenuItem;

    invoke-direct {v0}, Lcom/metamoji/ui/UiMenuItem;-><init>()V

    .line 289
    sget v2, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SURVEY_UNIT_VIEW_RESULT:I

    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/UiMenuItem;->set_caption(Ljava/lang/String;)V

    .line 290
    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_SURVEY_UNIT_VIEW_RESULT:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/UiMenuItem;->set_command(Ljava/lang/Object;)V

    .line 291
    invoke-virtual {v0, v5}, Lcom/metamoji/ui/UiMenuItem;->set_options(Ljava/lang/Object;)V

    .line 292
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    :cond_5
    move-object v0, v1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 297
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->editorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 298
    instance-of v2, v0, Lcom/metamoji/noteanytime/EditorActivity;

    if-eqz v2, :cond_6

    .line 299
    check-cast v0, Lcom/metamoji/noteanytime/EditorActivity;

    invoke-virtual {v0}, Lcom/metamoji/noteanytime/EditorActivity;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/metamoji/un/survey/UnSurveyUnit;->getUnitRectToView(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object v0

    const-string v2, "getUnitRectToView(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    new-instance v2, Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget v4, v0, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    iget v5, v0, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    invoke-direct {v2, v3, v4, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 302
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 303
    invoke-virtual {p1}, Lcom/metamoji/un/survey/UnSurveyUnit;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Viewport;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 304
    iget p1, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, p1, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 306
    sget-object p1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_NON:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    new-instance v0, Lcom/metamoji/un/survey/UnSurveyUnitManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/metamoji/un/survey/UnSurveyUnitManager$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/un/survey/UnSurveyUnitManager;)V

    const/4 v3, 0x0

    invoke-static {p1, v1, v0, v3, v2}, Lcom/metamoji/nt/NtEditorWindowController;->ShowContextMenu(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Ljava/util/ArrayList;Lcom/metamoji/ui/MenuEventListener;Lcom/metamoji/ui/MenuCloseEventListener;Landroid/graphics/Rect;)V

    :cond_6
    return-void

    .line 314
    :cond_7
    sget-object p1, Lcom/metamoji/un/survey/UnSurveyUnitManager;->Companion:Lcom/metamoji/un/survey/UnSurveyUnitManager$Companion;

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_SURVEY_UNIT_VIEW_RESULT:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, v0, v5}, Lcom/metamoji/un/survey/UnSurveyUnitManager$Companion;->executeCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    return-void

    .line 318
    :cond_8
    invoke-virtual {p1}, Lcom/metamoji/un/survey/UnSurveyUnit;->getPageController()Lcom/metamoji/nt/NtPageController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v1

    .line 319
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->isOfflineEditMode()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 320
    sget p1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SURVEY_UNIT_CANNOT_OPERATION_IN_OFFLINE_EDIT_MODE:I

    invoke-static {p1}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(I)V

    return-void

    .line 325
    :cond_9
    invoke-virtual {p1, v2}, Lcom/metamoji/un/survey/UnSurveyUnit;->isAnswered(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "personalId"

    if-eqz v1, :cond_c

    .line 327
    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->featuredPersonalModeInfoDic()Ljava/util/Map;

    move-result-object p1

    .line 328
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 329
    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isPersonalMode()Z

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isFeaturedPersonalMode()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_0

    .line 332
    :cond_a
    sget-object p1, Lcom/metamoji/un/survey/UnSurveyUnitManager;->Companion:Lcom/metamoji/un/survey/UnSurveyUnitManager$Companion;

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_SURVEY_UNIT_VIEW_RESULT:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, v0, v5}, Lcom/metamoji/un/survey/UnSurveyUnitManager$Companion;->executeCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    return-void

    .line 330
    :cond_b
    :goto_0
    sget p1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SURVEY_UNIT_CANNOT_SEE_ANSWER_AS_SOMEONE_ELSE:I

    invoke-static {p1}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(I)V

    return-void

    .line 336
    :cond_c
    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->featuredPersonalModeInfoDic()Ljava/util/Map;

    move-result-object v1

    .line 337
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->getUserId()Ljava/lang/String;

    move-result-object v3

    .line 338
    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isPersonalMode()Z

    move-result v4

    if-nez v4, :cond_f

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isFeaturedPersonalMode()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_1

    .line 342
    :cond_d
    invoke-virtual {p1}, Lcom/metamoji/un/survey/UnSurveyUnit;->isAllowedAnswer()Z

    move-result p1

    if-nez p1, :cond_e

    .line 343
    sget p1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SURVEY_UNIT_DENY_ANSWER:I

    invoke-static {p1}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(I)V

    return-void

    .line 345
    :cond_e
    sget-object p1, Lcom/metamoji/un/survey/UnSurveyUnitManager;->Companion:Lcom/metamoji/un/survey/UnSurveyUnitManager$Companion;

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_SURVEY_UNIT_ANSWER:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, v0, v5}, Lcom/metamoji/un/survey/UnSurveyUnitManager$Companion;->executeCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    return-void

    .line 339
    :cond_f
    :goto_1
    sget p1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SURVEY_UNIT_CANNOT_ANSWER_AS_SOMEONE_ELSE:I

    invoke-static {p1}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(I)V

    return-void
.end method

.method static final tappedUnit$lambda$3(Lcom/metamoji/un/survey/UnSurveyUnitManager;Landroid/view/View;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 307
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p2, p3}, Lcom/metamoji/un/survey/UnSurveyUnitManager;->handleMenuTap(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private final unregisterListener()V
    .locals 2

    .line 112
    iget-boolean v0, p0, Lcom/metamoji/un/survey/UnSurveyUnitManager;->mEventListenerRegistered:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 113
    iput-boolean v0, p0, Lcom/metamoji/un/survey/UnSurveyUnitManager;->mEventListenerRegistered:Z

    .line 114
    invoke-direct {p0}, Lcom/metamoji/un/survey/UnSurveyUnitManager;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getInteractiveEventManager()Lcom/metamoji/nt/NtInteractiveEventManager;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, p0

    check-cast v1, Lcom/metamoji/df/sprite/TapListener;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtInteractiveEventManager;->removeTapListener(Lcom/metamoji/df/sprite/TapListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final addEventListener(Lcom/metamoji/un/survey/UnSurveyUnitEventListener;)V
    .locals 2

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 530
    iget-object v0, p0, Lcom/metamoji/un/survey/UnSurveyUnitManager;->mEventListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 531
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/un/survey/UnSurveyUnitManager;->mEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 530
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final delistUnit(Lcom/metamoji/un/survey/UnSurveyUnit;)V
    .locals 1

    const-string/jumbo v0, "unSurveyUnit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/metamoji/un/survey/UnSurveyUnitManager;->mUnitMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/metamoji/un/survey/UnSurveyUnit;->getUnitId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object p1, p0, Lcom/metamoji/un/survey/UnSurveyUnitManager;->mUnitMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 70
    iget-boolean p1, p0, Lcom/metamoji/un/survey/UnSurveyUnitManager;->mIsViewMode:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 71
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/un/survey/UnSurveyUnitManager;->setRecognizerEnabled(Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method

.method public final dispose()V
    .locals 0

    return-void
.end method

.method public final enlistUnit(Lcom/metamoji/un/survey/UnSurveyUnit;)V
    .locals 4

    const-string/jumbo v0, "unSurveyUnit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/metamoji/un/survey/UnSurveyUnitManager;->mUnitMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 56
    invoke-direct {p0}, Lcom/metamoji/un/survey/UnSurveyUnitManager;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getEditMode()Lcom/metamoji/nt/NtDocument$EditMode;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    sget-object v2, Lcom/metamoji/nt/NtDocument$EditMode;->VIEWMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    const/4 v3, 0x1

    if-eq v0, v2, :cond_3

    invoke-direct {p0}, Lcom/metamoji/un/survey/UnSurveyUnitManager;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getEditMode()Lcom/metamoji/nt/NtDocument$EditMode;

    move-result-object v1

    :cond_1
    sget-object v0, Lcom/metamoji/nt/NtDocument$EditMode;->LASERMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    if-ne v1, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    move v0, v3

    :goto_2
    iput-boolean v0, p0, Lcom/metamoji/un/survey/UnSurveyUnitManager;->mIsViewMode:Z

    if-eqz v0, :cond_4

    .line 58
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/un/survey/UnSurveyUnitManager;->setRecognizerEnabled(Ljava/lang/Boolean;)V

    .line 62
    :cond_4
    iget-object v0, p0, Lcom/metamoji/un/survey/UnSurveyUnitManager;->mUnitMap:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p1}, Lcom/metamoji/un/survey/UnSurveyUnit;->getUnitId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final getRecognizerEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/metamoji/un/survey/UnSurveyUnitManager;->mRecognizerEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getSurveyUnit(Ljava/lang/String;)Lcom/metamoji/un/survey/UnSurveyUnit;
    .locals 2

    const-string/jumbo v0, "unitId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 518
    iget-object v0, p0, Lcom/metamoji/un/survey/UnSurveyUnitManager;->mUnitMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type java.util.HashMap<*, *>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/HashMap;

    .line 519
    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.metamoji.un.survey.UnSurveyUnit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/metamoji/un/survey/UnSurveyUnit;

    return-object p1
.end method

.method public final handleMenuTap(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    const-string v0, "index"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 354
    check-cast p1, Lcom/metamoji/nt/NtCommand;

    .line 355
    check-cast p2, Lcom/metamoji/cm/CmContext;

    .line 357
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 358
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    .line 359
    invoke-virtual {v0, p1}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 360
    invoke-virtual {v0, p1, p2}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    :cond_0
    return-void
.end method

.method public final handleSurveyUnitClearResult(Lcom/metamoji/cm/CmContext;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 487
    sget-object v0, Lcom/metamoji/un/survey/UnSurveyUnit;->MMJUN_EXTINFO_UNIT_ID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 489
    :cond_0
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/metamoji/un/survey/UnSurveyUnitManager;->getSurveyUnit(Ljava/lang/String;)Lcom/metamoji/un/survey/UnSurveyUnit;

    move-result-object p1

    .line 491
    invoke-static {p1}, Lcom/metamoji/un/survey/UnSurveyUnitContainerExtender;->handleSurveyUnitClearResult(Lcom/metamoji/un/survey/UnSurveyUnit;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final handleSurveyUnitEditSettings(Lcom/metamoji/cm/CmContext;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 435
    sget-object v0, Lcom/metamoji/un/survey/UnSurveyUnit;->MMJUN_EXTINFO_UNIT_ID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 437
    :cond_0
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/metamoji/un/survey/UnSurveyUnitManager;->getSurveyUnit(Ljava/lang/String;)Lcom/metamoji/un/survey/UnSurveyUnit;

    move-result-object p1

    .line 439
    invoke-static {p1}, Lcom/metamoji/un/survey/UnSurveyUnitContainerExtender;->handleSurveyUnitEditSettings(Lcom/metamoji/un/survey/UnSurveyUnit;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final handleToolModeChangeEvent(Lcom/metamoji/nt/NtToolModeChangedContext;)V
    .locals 4

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/metamoji/un/survey/UnSurveyUnitManager;->mLatestEvent:Lcom/metamoji/nt/NtToolModeChangedContext;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 80
    :cond_0
    iput-object p1, p0, Lcom/metamoji/un/survey/UnSurveyUnitManager;->mLatestEvent:Lcom/metamoji/nt/NtToolModeChangedContext;

    .line 81
    iget-object v0, p0, Lcom/metamoji/un/survey/UnSurveyUnitManager;->mLocker:Ljava/lang/Object;

    monitor-enter v0

    .line 82
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/un/survey/UnSurveyUnitManager;->mUnitMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 85
    monitor-exit v0

    return-void

    .line 88
    :cond_1
    :try_start_1
    iget-boolean v1, p0, Lcom/metamoji/un/survey/UnSurveyUnitManager;->mIsViewMode:Z

    .line 89
    invoke-virtual {p1}, Lcom/metamoji/nt/NtToolModeChangedContext;->getEditMode()Lcom/metamoji/nt/NtDocument$EditMode;

    move-result-object v2

    sget-object v3, Lcom/metamoji/nt/NtDocument$EditMode;->VIEWMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    if-eq v2, v3, :cond_3

    invoke-virtual {p1}, Lcom/metamoji/nt/NtToolModeChangedContext;->getEditMode()Lcom/metamoji/nt/NtDocument$EditMode;

    move-result-object p1

    sget-object v2, Lcom/metamoji/nt/NtDocument$EditMode;->LASERMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    if-ne p1, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/metamoji/un/survey/UnSurveyUnitManager;->mIsViewMode:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, v1, :cond_4

    .line 91
    monitor-exit v0

    return-void

    .line 94
    :cond_4
    :try_start_2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/un/survey/UnSurveyUnitManager;->setRecognizerEnabled(Ljava/lang/Boolean;)V

    .line 95
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final onTapped(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 17

    move-object/from16 v0, p0

    if-eqz p1, :cond_c

    .line 141
    invoke-interface/range {p1 .. p1}, Lcom/metamoji/df/sprite/TouchEvent;->getPoint()Landroid/graphics/PointF;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 143
    :cond_0
    invoke-direct {v0}, Lcom/metamoji/un/survey/UnSurveyUnitManager;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v2

    if-nez v2, :cond_1

    goto/16 :goto_3

    .line 144
    :cond_1
    invoke-virtual {v2}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v3

    if-nez v3, :cond_2

    goto/16 :goto_3

    .line 145
    :cond_2
    invoke-virtual {v3}, Lcom/metamoji/nt/NtPageController;->getCurrentRootUnitController()Lcom/metamoji/nt/NtUnitController;

    move-result-object v4

    if-nez v4, :cond_3

    goto/16 :goto_3

    .line 147
    :cond_3
    invoke-virtual {v3}, Lcom/metamoji/nt/NtPageController;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v10

    .line 148
    invoke-virtual {v4}, Lcom/metamoji/nt/NtUnitController;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/metamoji/df/sprite/Viewport;->viewportToStage(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v5

    .line 149
    invoke-virtual {v10, v5}, Lcom/metamoji/df/sprite/Stage;->stageToSprite(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v5

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 151
    invoke-virtual/range {v4 .. v9}, Lcom/metamoji/nt/NtUnitController;->unitHitTest(Landroid/graphics/PointF;ZZZZ)Lcom/metamoji/nt/NtUnitController;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    .line 153
    instance-of v1, v4, Lcom/metamoji/un/survey/UnSurveyUnit;

    if-eqz v1, :cond_4

    move-object v5, v4

    check-cast v5, Lcom/metamoji/un/survey/UnSurveyUnit;

    :cond_4
    if-eqz v5, :cond_c

    .line 156
    sget-object v1, Lcom/metamoji/un/survey/UnSurveyUnitManager;->Companion:Lcom/metamoji/un/survey/UnSurveyUnitManager$Companion;

    invoke-virtual {v1, v5, v2, v3}, Lcom/metamoji/un/survey/UnSurveyUnitManager$Companion;->canAnswerUnit(Lcom/metamoji/un/survey/UnSurveyUnit;Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/nt/NtPageController;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 157
    invoke-direct {v0, v5}, Lcom/metamoji/un/survey/UnSurveyUnitManager;->tappedUnit(Lcom/metamoji/un/survey/UnSurveyUnit;)V

    return-void

    .line 163
    :cond_5
    invoke-virtual {v3}, Lcom/metamoji/nt/NtPageController;->getNumberOfLayers()I

    move-result v4

    .line 164
    invoke-virtual {v3}, Lcom/metamoji/nt/NtPageController;->getCurrentLayerIndex()I

    move-result v6

    add-int/lit8 v4, v4, -0x1

    :goto_0
    const/4 v7, -0x1

    if-ge v7, v4, :cond_c

    if-eq v4, v6, :cond_b

    .line 167
    invoke-virtual {v3, v4}, Lcom/metamoji/nt/NtPageController;->getLayer(I)Lcom/metamoji/nt/NtLayerController;

    move-result-object v7

    if-nez v7, :cond_6

    goto :goto_2

    .line 168
    :cond_6
    invoke-virtual {v7}, Lcom/metamoji/nt/NtLayerController;->getVisible()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-virtual {v7}, Lcom/metamoji/nt/NtLayerController;->getBaseSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v8

    invoke-virtual {v8}, Lcom/metamoji/df/sprite/Sprite;->getAlpha()F

    move-result v8

    const/high16 v9, 0x3f800000    # 1.0f

    cmpg-float v8, v8, v9

    if-gez v8, :cond_7

    goto :goto_2

    :cond_7
    const/4 v8, 0x0

    .line 171
    invoke-virtual {v7, v8}, Lcom/metamoji/nt/NtLayerController;->getChild(I)Lcom/metamoji/df/controller/DfController;

    move-result-object v7

    instance-of v8, v7, Lcom/metamoji/nt/NtUnitController;

    if-eqz v8, :cond_8

    check-cast v7, Lcom/metamoji/nt/NtUnitController;

    move-object v11, v7

    goto :goto_1

    :cond_8
    move-object v11, v5

    :goto_1
    if-nez v11, :cond_9

    goto :goto_2

    .line 173
    :cond_9
    invoke-virtual {v11}, Lcom/metamoji/nt/NtUnitController;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/metamoji/df/sprite/Viewport;->viewportToStage(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v7

    .line 174
    invoke-virtual {v10, v7}, Lcom/metamoji/df/sprite/Stage;->stageToSprite(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v12

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    .line 175
    invoke-virtual/range {v11 .. v16}, Lcom/metamoji/nt/NtUnitController;->unitHitTest(Landroid/graphics/PointF;ZZZZ)Lcom/metamoji/nt/NtUnitController;

    move-result-object v7

    if-eqz v7, :cond_b

    .line 177
    instance-of v1, v7, Lcom/metamoji/un/survey/UnSurveyUnit;

    if-eqz v1, :cond_a

    move-object v5, v7

    check-cast v5, Lcom/metamoji/un/survey/UnSurveyUnit;

    :cond_a
    if-eqz v5, :cond_c

    .line 180
    sget-object v1, Lcom/metamoji/un/survey/UnSurveyUnitManager;->Companion:Lcom/metamoji/un/survey/UnSurveyUnitManager$Companion;

    invoke-virtual {v1, v5, v2, v3}, Lcom/metamoji/un/survey/UnSurveyUnitManager$Companion;->canAnswerUnit(Lcom/metamoji/un/survey/UnSurveyUnit;Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/nt/NtPageController;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 181
    invoke-direct {v0, v5}, Lcom/metamoji/un/survey/UnSurveyUnitManager;->tappedUnit(Lcom/metamoji/un/survey/UnSurveyUnit;)V

    return-void

    :cond_b
    :goto_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_c
    :goto_3
    return-void
.end method

.method public final pageDeactivating()V
    .locals 2

    .line 575
    iget-object v0, p0, Lcom/metamoji/un/survey/UnSurveyUnitManager;->mEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.collections.List<com.metamoji.un.survey.UnSurveyUnitEventListener>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/List;

    .line 577
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/survey/UnSurveyUnitEventListener;

    .line 578
    invoke-interface {v1}, Lcom/metamoji/un/survey/UnSurveyUnitEventListener;->pageDeactivationg()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public performCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 381
    :cond_0
    sget-object v0, Lcom/metamoji/un/survey/UnSurveyUnitManager$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result p1

    aget p1, v0, p1

    :goto_0
    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 388
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/metamoji/un/survey/UnSurveyUnitManager;->handleSurveyUnitPublishResult(Lcom/metamoji/cm/CmContext;)Z

    move-result p1

    return p1

    .line 387
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/metamoji/un/survey/UnSurveyUnitManager;->handleSurveyUnitAllowAnswer(Lcom/metamoji/cm/CmContext;)Z

    move-result p1

    return p1

    .line 386
    :pswitch_2
    invoke-virtual {p0, p2}, Lcom/metamoji/un/survey/UnSurveyUnitManager;->handleSurveyUnitClearResult(Lcom/metamoji/cm/CmContext;)Z

    move-result p1

    return p1

    .line 385
    :pswitch_3
    invoke-direct {p0, p2}, Lcom/metamoji/un/survey/UnSurveyUnitManager;->handleSurveyUnitResetAnswer(Lcom/metamoji/cm/CmContext;)Z

    move-result p1

    return p1

    .line 384
    :pswitch_4
    invoke-direct {p0, p2}, Lcom/metamoji/un/survey/UnSurveyUnitManager;->handleSurveyUnitAnswer(Lcom/metamoji/cm/CmContext;)Z

    move-result p1

    return p1

    .line 383
    :pswitch_5
    invoke-direct {p0, p2}, Lcom/metamoji/un/survey/UnSurveyUnitManager;->handleSurveyUnitViewResult(Lcom/metamoji/cm/CmContext;)Z

    move-result p1

    return p1

    .line 382
    :pswitch_6
    invoke-virtual {p0, p2}, Lcom/metamoji/un/survey/UnSurveyUnitManager;->handleSurveyUnitEditSettings(Lcom/metamoji/cm/CmContext;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public processEnableCommand(Lcom/metamoji/nt/NtCommand;Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public processInhibitCommand(Lcom/metamoji/nt/NtCommand;)Z
    .locals 1

    const-string v0, "command"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public processSelectCommand(Lcom/metamoji/nt/NtCommand;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final removeEventListener(Lcom/metamoji/un/survey/UnSurveyUnitEventListener;)V
    .locals 2

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 540
    iget-object v0, p0, Lcom/metamoji/un/survey/UnSurveyUnitManager;->mEventListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 541
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/un/survey/UnSurveyUnitManager;->mEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 540
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final resultChanged(Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "unitId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 546
    new-instance v0, Lcom/metamoji/un/survey/UnSurveyUnitResultChangedEventContext;

    invoke-direct {v0}, Lcom/metamoji/un/survey/UnSurveyUnitResultChangedEventContext;-><init>()V

    .line 547
    iput-object p2, v0, Lcom/metamoji/un/survey/UnSurveyUnitResultChangedEventContext;->unitId:Ljava/lang/String;

    .line 548
    iput-object p1, v0, Lcom/metamoji/un/survey/UnSurveyUnitResultChangedEventContext;->result:Ljava/util/Map;

    .line 551
    iget-object p1, p0, Lcom/metamoji/un/survey/UnSurveyUnitManager;->mEventListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type kotlin.collections.List<com.metamoji.un.survey.UnSurveyUnitEventListener>"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/List;

    .line 553
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/un/survey/UnSurveyUnitEventListener;

    .line 554
    invoke-interface {p2, v0}, Lcom/metamoji/un/survey/UnSurveyUnitEventListener;->resultChanged(Lcom/metamoji/un/survey/UnSurveyUnitResultChangedEventContext;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setCurrentPage(Lcom/metamoji/nt/NtPageController;)V
    .locals 3

    .line 122
    iget-object v0, p0, Lcom/metamoji/un/survey/UnSurveyUnitManager;->mLocker:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 123
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/un/survey/UnSurveyUnitManager;->mCurrentPageId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 125
    monitor-exit v0

    return-void

    .line 127
    :cond_0
    :try_start_1
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 122
    monitor-exit v0

    .line 129
    iget-object v0, p0, Lcom/metamoji/un/survey/UnSurveyUnitManager;->mLocker:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_1

    .line 132
    :try_start_2
    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/metamoji/un/survey/UnSurveyUnitManager;->mCurrentPageId:Ljava/lang/String;

    .line 133
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 129
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p1

    :catchall_1
    move-exception p1

    .line 122
    monitor-exit v0

    throw p1
.end method

.method public final setRecognizerEnabled(Ljava/lang/Boolean;)V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/metamoji/un/survey/UnSurveyUnitManager;->mRecognizerEnabled:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 39
    :cond_0
    iput-object p1, p0, Lcom/metamoji/un/survey/UnSurveyUnitManager;->mRecognizerEnabled:Ljava/lang/Boolean;

    const/4 v0, 0x1

    .line 41
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 42
    invoke-direct {p0}, Lcom/metamoji/un/survey/UnSurveyUnitManager;->registerListener()V

    return-void

    .line 44
    :cond_1
    invoke-direct {p0}, Lcom/metamoji/un/survey/UnSurveyUnitManager;->unregisterListener()V

    return-void
.end method

.method public final settingsChanged(Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "settings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "unitId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 560
    new-instance v0, Lcom/metamoji/un/survey/UnSurveyUnitSettingsChangedEventContext;

    invoke-direct {v0}, Lcom/metamoji/un/survey/UnSurveyUnitSettingsChangedEventContext;-><init>()V

    .line 561
    iput-object p2, v0, Lcom/metamoji/un/survey/UnSurveyUnitSettingsChangedEventContext;->unitId:Ljava/lang/String;

    .line 562
    iput-object p1, v0, Lcom/metamoji/un/survey/UnSurveyUnitSettingsChangedEventContext;->settings:Ljava/util/Map;

    .line 565
    iget-object p1, p0, Lcom/metamoji/un/survey/UnSurveyUnitManager;->mEventListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type kotlin.collections.List<com.metamoji.un.survey.UnSurveyUnitEventListener>"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/List;

    .line 567
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/un/survey/UnSurveyUnitEventListener;

    .line 568
    invoke-interface {p2, v0}, Lcom/metamoji/un/survey/UnSurveyUnitEventListener;->settingsChanged(Lcom/metamoji/un/survey/UnSurveyUnitSettingsChangedEventContext;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public tap(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 0

    .line 243
    invoke-virtual {p0, p1}, Lcom/metamoji/un/survey/UnSurveyUnitManager;->onTapped(Lcom/metamoji/df/sprite/TouchEvent;)V

    return-void
.end method

.method public final updateAllUnit()V
    .locals 3

    .line 365
    iget-object v0, p0, Lcom/metamoji/un/survey/UnSurveyUnitManager;->mUnitMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "next(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/metamoji/un/survey/UnSurveyUnit;

    .line 366
    invoke-virtual {v1}, Lcom/metamoji/un/survey/UnSurveyUnit;->layerController()Lcom/metamoji/nt/NtLayerController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/nt/NtLayerController;->getVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 367
    invoke-virtual {v1}, Lcom/metamoji/un/survey/UnSurveyUnit;->updateSprite()V

    goto :goto_0

    :cond_1
    return-void
.end method
