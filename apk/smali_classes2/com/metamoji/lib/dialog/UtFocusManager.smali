.class public final Lcom/metamoji/lib/dialog/UtFocusManager;
.super Ljava/lang/Object;
.source "UtFocusManager.kt"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/lib/dialog/UtFocusManager$Companion;,
        Lcom/metamoji/lib/dialog/UtFocusManager$Focusable;,
        Lcom/metamoji/lib/dialog/UtFocusManager$UseKey;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUtFocusManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UtFocusManager.kt\ncom/metamoji/lib/dialog/UtFocusManager\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,397:1\n11735#2:398\n12085#2,3:399\n363#3,7:402\n363#3,7:409\n1642#3,10:416\n1915#3:426\n1916#3:428\n1652#3:429\n1#4:427\n1#4:430\n255#5:431\n255#5:432\n*S KotlinDebug\n*F\n+ 1 UtFocusManager.kt\ncom/metamoji/lib/dialog/UtFocusManager\n*L\n179#1:398\n179#1:399,3\n196#1:402,7\n204#1:409,7\n241#1:416,10\n241#1:426\n241#1:428\n241#1:429\n241#1:427\n256#1:431\n270#1:432\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0015\n\u0002\u0008\u0015\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 E2\u00020\u0001:\u0003CDEB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000c\u0010\u001d\u001a\u00020\u0006*\u00020\u0006H\u0002J$\u0010\u001e\u001a\u00020\u00102\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u001a\u001a\u00020\u000e2\u0008\u0010 \u001a\u0004\u0018\u00010!H\u0016J\u000e\u0010\"\u001a\u00020#2\u0006\u0010\u0007\u001a\u00020\u0006J\u000e\u0010$\u001a\u00020\u00002\u0006\u0010%\u001a\u00020\u000eJ\u0006\u0010\u000f\u001a\u00020\u0000J]\u0010&\u001a\u00020\u00002U\u0008\u0002\u0010\'\u001aO\u0012\u0013\u0012\u00110\u0016\u00a2\u0006\u000c\u0008\u0017\u0012\u0008\u0008\u0018\u0012\u0004\u0008\u0008(\u0019\u0012\u0013\u0012\u00110\u000e\u00a2\u0006\u000c\u0008\u0017\u0012\u0008\u0008\u0018\u0012\u0004\u0008\u0008(\u001a\u0012\u0013\u0012\u00110\u0010\u00a2\u0006\u000c\u0008\u0017\u0012\u0008\u0008\u0018\u0012\u0004\u0008\u0008(\u001b\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u0015j\u0004\u0018\u0001`\u001cJ\u000e\u0010(\u001a\u00020\u00002\u0006\u0010)\u001a\u00020\u0013J\u0014\u0010*\u001a\u00020\u00002\u000c\u0008\u0001\u0010+\u001a\u00020,\"\u00020\u000eJ\u000e\u0010-\u001a\u00020\u00002\u0006\u0010.\u001a\u00020\u0000J\u0018\u0010/\u001a\u00020#2\u0008\u00100\u001a\u0004\u0018\u00010\u00002\u0006\u0010.\u001a\u00020\u0000J\u0018\u0010/\u001a\u00020#2\u0008\u0008\u0001\u00100\u001a\u00020\u000e2\u0006\u0010.\u001a\u00020\u0000J\u000e\u00101\u001a\u00020\u00002\u0006\u0010.\u001a\u00020\u0000J\u0006\u00102\u001a\u00020\u0000J\u0006\u00103\u001a\u00020\u0010J\u000c\u00104\u001a\u00020\u0010*\u00020\u0006H\u0002J\u000c\u00105\u001a\u00020#*\u00020\u0006H\u0002J\u0012\u00106\u001a\u00020\u00102\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0006H\u0002J\u000e\u00107\u001a\u00020\u00102\u0006\u0010%\u001a\u00020\u000eJ\u000e\u00100\u001a\u00020\u00102\u0006\u0010%\u001a\u00020\u000eJ\u0010\u00108\u001a\u00020\u00102\u0006\u00109\u001a\u00020\u000eH\u0002J\u0010\u0010:\u001a\u00020\u00102\u0006\u00109\u001a\u00020\u000eH\u0002J\u0006\u0010;\u001a\u00020\u0010J\u0006\u0010<\u001a\u00020\u0010J\u000e\u0010=\u001a\u00020\u00102\u0006\u0010%\u001a\u00020\u000eJ\u0010\u0010>\u001a\u00020#2\u0008\u0008\u0001\u0010%\u001a\u00020\u000eJ\u0010\u0010?\u001a\u00020#2\u0008\u0008\u0001\u0010%\u001a\u00020\u000eJ\u001e\u0010@\u001a\u00020\u00102\u0006\u0010 \u001a\u00020!2\u000e\u0010A\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060BR\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082.\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u00020\u00068BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R[\u0010\u0014\u001aO\u0012\u0013\u0012\u00110\u0016\u00a2\u0006\u000c\u0008\u0017\u0012\u0008\u0008\u0018\u0012\u0004\u0008\u0008(\u0019\u0012\u0013\u0012\u00110\u000e\u00a2\u0006\u000c\u0008\u0017\u0012\u0008\u0008\u0018\u0012\u0004\u0008\u0008(\u001a\u0012\u0013\u0012\u00110\u0010\u00a2\u0006\u000c\u0008\u0017\u0012\u0008\u0008\u0018\u0012\u0004\u0008\u0008(\u001b\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u0015j\u0004\u0018\u0001`\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006F"
    }
    d2 = {
        "Lcom/metamoji/lib/dialog/UtFocusManager;",
        "Landroid/widget/TextView$OnEditorActionListener;",
        "<init>",
        "()V",
        "rootViewRef",
        "Ljava/lang/ref/WeakReference;",
        "Landroid/view/View;",
        "rootView",
        "getRootView",
        "()Landroid/view/View;",
        "focusables",
        "",
        "Lcom/metamoji/lib/dialog/UtFocusManager$Focusable;",
        "initialFocus",
        "",
        "autoRegister",
        "",
        "customForwardAction",
        "useKeys",
        "Lcom/metamoji/lib/dialog/UtFocusManager$UseKey;",
        "externalEditorAction",
        "Lkotlin/Function3;",
        "Landroid/widget/TextView;",
        "Lkotlin/ParameterName;",
        "name",
        "view",
        "actionId",
        "moveFocus",
        "Lcom/metamoji/lib/dialog/UtEditorAction;",
        "patchNextFocus",
        "onEditorAction",
        "v",
        "event",
        "Landroid/view/KeyEvent;",
        "attach",
        "",
        "setInitialFocus",
        "id",
        "setCustomEditorAction",
        "fn",
        "setUseKeys",
        "useKey",
        "register",
        "ids",
        "",
        "appendChild",
        "fm",
        "insertChildAfter",
        "prev",
        "removeChild",
        "clear",
        "applyInitialFocus",
        "isAncestorsVisible",
        "forceRequestFocus",
        "setFocusTo",
        "next",
        "lastBefore",
        "index",
        "firstAfter",
        "head",
        "tail",
        "hasView",
        "nextOrLoop",
        "prevOrLoop",
        "handleTabEvent",
        "currentFocus",
        "Lkotlin/Function0;",
        "UseKey",
        "Focusable",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/metamoji/lib/dialog/UtFocusManager$Companion;

.field private static defaultUseKey:Lcom/metamoji/lib/dialog/UtFocusManager$UseKey;


# instance fields
.field private autoRegister:Z

.field private customForwardAction:Z

.field private externalEditorAction:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroid/widget/TextView;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final focusables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/lib/dialog/UtFocusManager$Focusable;",
            ">;"
        }
    .end annotation
.end field

.field private initialFocus:I

.field private rootViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private useKeys:Lcom/metamoji/lib/dialog/UtFocusManager$UseKey;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/lib/dialog/UtFocusManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/lib/dialog/UtFocusManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/lib/dialog/UtFocusManager;->Companion:Lcom/metamoji/lib/dialog/UtFocusManager$Companion;

    .line 395
    sget-object v0, Lcom/metamoji/lib/dialog/UtFocusManager$UseKey;->None:Lcom/metamoji/lib/dialog/UtFocusManager$UseKey;

    sput-object v0, Lcom/metamoji/lib/dialog/UtFocusManager;->defaultUseKey:Lcom/metamoji/lib/dialog/UtFocusManager$UseKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/metamoji/lib/dialog/UtFocusManager;->focusables:Ljava/util/List;

    .line 57
    sget-object v0, Lcom/metamoji/lib/dialog/UtFocusManager;->defaultUseKey:Lcom/metamoji/lib/dialog/UtFocusManager$UseKey;

    iput-object v0, p0, Lcom/metamoji/lib/dialog/UtFocusManager;->useKeys:Lcom/metamoji/lib/dialog/UtFocusManager$UseKey;

    return-void
.end method

.method public static final synthetic access$getDefaultUseKey$cp()Lcom/metamoji/lib/dialog/UtFocusManager$UseKey;
    .locals 1

    .line 30
    sget-object v0, Lcom/metamoji/lib/dialog/UtFocusManager;->defaultUseKey:Lcom/metamoji/lib/dialog/UtFocusManager$UseKey;

    return-object v0
.end method

.method public static final synthetic access$setDefaultUseKey$cp(Lcom/metamoji/lib/dialog/UtFocusManager$UseKey;)V
    .locals 0

    .line 30
    sput-object p0, Lcom/metamoji/lib/dialog/UtFocusManager;->defaultUseKey:Lcom/metamoji/lib/dialog/UtFocusManager$UseKey;

    return-void
.end method

.method static final attach$lambda$0(Landroid/view/View;)Lcom/metamoji/lib/dialog/UtFocusManager$Focusable;
    .locals 4

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    instance-of v0, p0, Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 118
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 119
    new-instance v0, Lcom/metamoji/lib/dialog/UtFocusManager$Focusable;

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p0

    invoke-direct {v0, p0}, Lcom/metamoji/lib/dialog/UtFocusManager$Focusable;-><init>(I)V

    return-object v0

    .line 121
    :cond_0
    sget-object v0, Lcom/metamoji/lib/dialog/UtFocusManager;->Companion:Lcom/metamoji/lib/dialog/UtFocusManager$Companion;

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtFocusManager$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "View "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, " is focusable but has no id, cannot be managed."

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/metamoji/lib/utils/UtLog;->warn(Ljava/lang/String;)V

    :cond_1
    return-object v1
.end method

.method private final firstAfter(I)Z
    .locals 4

    .line 311
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtFocusManager;->focusables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge p1, v0, :cond_2

    .line 312
    iget-object v1, p0, Lcom/metamoji/lib/dialog/UtFocusManager;->focusables:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/lib/dialog/UtFocusManager$Focusable;

    .line 313
    invoke-virtual {v1}, Lcom/metamoji/lib/dialog/UtFocusManager$Focusable;->isView()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 314
    invoke-direct {p0}, Lcom/metamoji/lib/dialog/UtFocusManager;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1}, Lcom/metamoji/lib/dialog/UtFocusManager$Focusable;->getId()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 315
    invoke-direct {p0, v1}, Lcom/metamoji/lib/dialog/UtFocusManager;->setFocusTo(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v3

    .line 319
    :cond_0
    invoke-virtual {v1}, Lcom/metamoji/lib/dialog/UtFocusManager$Focusable;->getFm()Lcom/metamoji/lib/dialog/UtFocusManager;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/metamoji/lib/dialog/UtFocusManager;->head()Z

    move-result v1

    if-ne v1, v3, :cond_1

    return v3

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private final forceRequestFocus(Landroid/view/View;)V
    .locals 3

    .line 260
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 261
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 262
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    sget-object v0, Lcom/metamoji/lib/dialog/UtFocusManager;->Companion:Lcom/metamoji/lib/dialog/UtFocusManager$Companion;

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtFocusManager$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cannot focus to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/UtLog;->warn(Ljava/lang/String;)V

    .line 265
    :cond_0
    new-instance v0, Lcom/metamoji/lib/dialog/UtFocusManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/metamoji/lib/dialog/UtFocusManager$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method static final forceRequestFocus$lambda$8(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 265
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method private final getRootView()Landroid/view/View;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtFocusManager;->rootViewRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const-string v0, "rootViewRef"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final isAncestorsVisible(Landroid/view/View;)Z
    .locals 4

    .line 256
    invoke-static {p1}, Landroidx/core/view/ViewKt;->getAncestors(Landroid/view/View;)Lkotlin/sequences/Sequence;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/view/ViewParent;

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    move-object v1, v2

    check-cast v1, Landroid/view/ViewGroup;

    :cond_1
    if-eqz v1, :cond_0

    check-cast v1, Landroid/view/View;

    .line 431
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, v0

    :cond_3
    if-nez v1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method private final lastBefore(I)Z
    .locals 3

    :goto_0
    const/4 v0, -0x1

    if-ge v0, p1, :cond_2

    .line 295
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtFocusManager;->focusables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/lib/dialog/UtFocusManager$Focusable;

    .line 296
    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtFocusManager$Focusable;->isView()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 297
    invoke-direct {p0}, Lcom/metamoji/lib/dialog/UtFocusManager;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtFocusManager$Focusable;->getId()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 298
    invoke-direct {p0, v0}, Lcom/metamoji/lib/dialog/UtFocusManager;->setFocusTo(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 302
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtFocusManager$Focusable;->getFm()Lcom/metamoji/lib/dialog/UtFocusManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtFocusManager;->tail()Z

    move-result v0

    if-ne v0, v2, :cond_1

    return v2

    :cond_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private final patchNextFocus(Landroid/view/View;)Landroid/view/View;
    .locals 2

    .line 61
    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 66
    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    .line 62
    invoke-virtual {v0}, Landroid/widget/EditText;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setNextFocusDownId(I)V

    .line 63
    iget-boolean v1, p0, Lcom/metamoji/lib/dialog/UtFocusManager;->customForwardAction:Z

    if-eqz v1, :cond_0

    .line 65
    invoke-virtual {v0}, Landroid/widget/EditText;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setNextFocusForwardId(I)V

    .line 66
    move-object v1, p0

    check-cast v1, Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    :cond_0
    return-object p1
.end method

.method static final removeChild$lambda$4(Lcom/metamoji/lib/dialog/UtFocusManager;Lcom/metamoji/lib/dialog/UtFocusManager$Focusable;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    invoke-virtual {p1}, Lcom/metamoji/lib/dialog/UtFocusManager$Focusable;->getFm()Lcom/metamoji/lib/dialog/UtFocusManager;

    move-result-object p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic setCustomEditorAction$default(Lcom/metamoji/lib/dialog/UtFocusManager;Lkotlin/jvm/functions/Function3;ILjava/lang/Object;)Lcom/metamoji/lib/dialog/UtFocusManager;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 164
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/lib/dialog/UtFocusManager;->setCustomEditorAction(Lkotlin/jvm/functions/Function3;)Lcom/metamoji/lib/dialog/UtFocusManager;

    move-result-object p0

    return-object p0
.end method

.method private final setFocusTo(Landroid/view/View;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 270
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 270
    invoke-direct {p0, p1}, Lcom/metamoji/lib/dialog/UtFocusManager;->isAncestorsVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    sget-object v0, Lcom/metamoji/lib/dialog/UtFocusManager;->Companion:Lcom/metamoji/lib/dialog/UtFocusManager$Companion;

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtFocusManager$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 272
    invoke-direct {p0, p1}, Lcom/metamoji/lib/dialog/UtFocusManager;->forceRequestFocus(Landroid/view/View;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final appendChild(Lcom/metamoji/lib/dialog/UtFocusManager;)Lcom/metamoji/lib/dialog/UtFocusManager;
    .locals 2

    const-string v0, "fm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtFocusManager;->focusables:Ljava/util/List;

    new-instance v1, Lcom/metamoji/lib/dialog/UtFocusManager$Focusable;

    invoke-direct {v1, p1}, Lcom/metamoji/lib/dialog/UtFocusManager$Focusable;-><init>(Lcom/metamoji/lib/dialog/UtFocusManager;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final applyInitialFocus()Z
    .locals 5

    .line 234
    iget v0, p0, Lcom/metamoji/lib/dialog/UtFocusManager;->initialFocus:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 235
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtFocusManager;->rootViewRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const-string v0, "rootViewRef"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    iget v3, p0, Lcom/metamoji/lib/dialog/UtFocusManager;->initialFocus:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_2

    .line 237
    invoke-direct {p0, v0}, Lcom/metamoji/lib/dialog/UtFocusManager;->forceRequestFocus(Landroid/view/View;)V

    return v1

    .line 241
    :cond_2
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtFocusManager;->focusables:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 416
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .line 426
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 425
    check-cast v4, Lcom/metamoji/lib/dialog/UtFocusManager$Focusable;

    .line 241
    invoke-virtual {v4}, Lcom/metamoji/lib/dialog/UtFocusManager$Focusable;->getFm()Lcom/metamoji/lib/dialog/UtFocusManager;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 425
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 429
    :cond_4
    check-cast v3, Ljava/util/List;

    .line 416
    check-cast v3, Ljava/lang/Iterable;

    .line 241
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/metamoji/lib/dialog/UtFocusManager;

    .line 242
    invoke-virtual {v4}, Lcom/metamoji/lib/dialog/UtFocusManager;->applyInitialFocus()Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v2, v3

    :cond_6
    if-eqz v2, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public final attach(Landroid/view/View;)V
    .locals 3

    const-string v0, "rootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/metamoji/lib/dialog/UtFocusManager;->rootViewRef:Ljava/lang/ref/WeakReference;

    .line 111
    iget-boolean v0, p0, Lcom/metamoji/lib/dialog/UtFocusManager;->autoRegister:Z

    if-eqz v0, :cond_2

    .line 113
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtFocusManager;->focusables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 114
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 116
    iget-object v1, p0, Lcom/metamoji/lib/dialog/UtFocusManager;->focusables:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-static {v0}, Landroidx/core/view/ViewGroupKt;->getDescendants(Landroid/view/ViewGroup;)Lkotlin/sequences/Sequence;

    move-result-object v0

    new-instance v2, Lcom/metamoji/lib/dialog/UtFocusManager$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/metamoji/lib/dialog/UtFocusManager$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0, v2}, Lkotlin/sequences/SequencesKt;->mapNotNull(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Lkotlin/sequences/Sequence;)Z

    goto :goto_1

    .line 127
    :cond_1
    sget-object v0, Lcom/metamoji/lib/dialog/UtFocusManager;->Companion:Lcom/metamoji/lib/dialog/UtFocusManager$Companion;

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtFocusManager$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    const-string v1, "cannot resolve views automatically."

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/UtLog;->error(Ljava/lang/String;)V

    .line 131
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtFocusManager;->focusables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/lib/dialog/UtFocusManager$Focusable;

    .line 132
    invoke-virtual {v1}, Lcom/metamoji/lib/dialog/UtFocusManager$Focusable;->isView()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 133
    invoke-virtual {v1}, Lcom/metamoji/lib/dialog/UtFocusManager$Focusable;->getId()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v1}, Lcom/metamoji/lib/dialog/UtFocusManager;->patchNextFocus(Landroid/view/View;)Landroid/view/View;

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final autoRegister()Lcom/metamoji/lib/dialog/UtFocusManager;
    .locals 1

    const/4 v0, 0x1

    .line 156
    iput-boolean v0, p0, Lcom/metamoji/lib/dialog/UtFocusManager;->autoRegister:Z

    return-object p0
.end method

.method public final clear()Lcom/metamoji/lib/dialog/UtFocusManager;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtFocusManager;->focusables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-object p0
.end method

.method public final handleTabEvent(Landroid/view/KeyEvent;Lkotlin/jvm/functions/Function0;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/KeyEvent;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Landroid/view/View;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentFocus"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 352
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 353
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v2, 0x3d

    const/4 v3, 0x1

    if-eq v0, v2, :cond_9

    packed-switch v0, :pswitch_data_0

    return v1

    .line 382
    :pswitch_0
    iget-object p1, p0, Lcom/metamoji/lib/dialog/UtFocusManager;->useKeys:Lcom/metamoji/lib/dialog/UtFocusManager$UseKey;

    invoke-virtual {p1}, Lcom/metamoji/lib/dialog/UtFocusManager$UseKey;->getLr()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 383
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    :cond_1
    invoke-virtual {p0, v1}, Lcom/metamoji/lib/dialog/UtFocusManager;->nextOrLoop(I)V

    return v3

    :cond_2
    return v1

    .line 370
    :pswitch_1
    iget-object p1, p0, Lcom/metamoji/lib/dialog/UtFocusManager;->useKeys:Lcom/metamoji/lib/dialog/UtFocusManager$UseKey;

    invoke-virtual {p1}, Lcom/metamoji/lib/dialog/UtFocusManager$UseKey;->getLr()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 371
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    :cond_3
    invoke-virtual {p0, v1}, Lcom/metamoji/lib/dialog/UtFocusManager;->prevOrLoop(I)V

    return v3

    :cond_4
    return v1

    .line 376
    :pswitch_2
    iget-object p1, p0, Lcom/metamoji/lib/dialog/UtFocusManager;->useKeys:Lcom/metamoji/lib/dialog/UtFocusManager$UseKey;

    invoke-virtual {p1}, Lcom/metamoji/lib/dialog/UtFocusManager$UseKey;->getUd()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 377
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    :cond_5
    invoke-virtual {p0, v1}, Lcom/metamoji/lib/dialog/UtFocusManager;->nextOrLoop(I)V

    return v3

    :cond_6
    return v1

    .line 364
    :pswitch_3
    iget-object p1, p0, Lcom/metamoji/lib/dialog/UtFocusManager;->useKeys:Lcom/metamoji/lib/dialog/UtFocusManager$UseKey;

    invoke-virtual {p1}, Lcom/metamoji/lib/dialog/UtFocusManager$UseKey;->getUd()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 365
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    :cond_7
    invoke-virtual {p0, v1}, Lcom/metamoji/lib/dialog/UtFocusManager;->prevOrLoop(I)V

    return v3

    :cond_8
    return v1

    .line 356
    :cond_9
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 357
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    :cond_a
    invoke-virtual {p0, v1}, Lcom/metamoji/lib/dialog/UtFocusManager;->prevOrLoop(I)V

    goto :goto_0

    .line 359
    :cond_b
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    :cond_c
    invoke-virtual {p0, v1}, Lcom/metamoji/lib/dialog/UtFocusManager;->nextOrLoop(I)V

    :goto_0
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final hasView(I)Z
    .locals 3

    .line 336
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtFocusManager;->focusables:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/metamoji/lib/dialog/UtFocusManager$Focusable;

    invoke-virtual {v2, p1}, Lcom/metamoji/lib/dialog/UtFocusManager$Focusable;->hasView(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final head()Z
    .locals 1

    const/4 v0, 0x0

    .line 328
    invoke-direct {p0, v0}, Lcom/metamoji/lib/dialog/UtFocusManager;->firstAfter(I)Z

    move-result v0

    return v0
.end method

.method public final insertChildAfter(ILcom/metamoji/lib/dialog/UtFocusManager;)V
    .locals 3

    const-string v0, "fm"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 204
    iget-object v1, p0, Lcom/metamoji/lib/dialog/UtFocusManager;->focusables:Ljava/util/List;

    .line 410
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 411
    check-cast v2, Lcom/metamoji/lib/dialog/UtFocusManager$Focusable;

    .line 204
    invoke-virtual {v2}, Lcom/metamoji/lib/dialog/UtFocusManager$Focusable;->getId()I

    move-result v2

    if-ne v2, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 205
    :cond_2
    iget-object p1, p0, Lcom/metamoji/lib/dialog/UtFocusManager;->focusables:Ljava/util/List;

    new-instance v1, Lcom/metamoji/lib/dialog/UtFocusManager$Focusable;

    invoke-direct {v1, p2}, Lcom/metamoji/lib/dialog/UtFocusManager$Focusable;-><init>(Lcom/metamoji/lib/dialog/UtFocusManager;)V

    invoke-interface {p1, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public final insertChildAfter(Lcom/metamoji/lib/dialog/UtFocusManager;Lcom/metamoji/lib/dialog/UtFocusManager;)V
    .locals 3

    const-string v0, "fm"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 196
    iget-object v1, p0, Lcom/metamoji/lib/dialog/UtFocusManager;->focusables:Ljava/util/List;

    .line 403
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 404
    check-cast v2, Lcom/metamoji/lib/dialog/UtFocusManager$Focusable;

    .line 196
    invoke-virtual {v2}, Lcom/metamoji/lib/dialog/UtFocusManager$Focusable;->getFm()Lcom/metamoji/lib/dialog/UtFocusManager;

    move-result-object v2

    if-ne v2, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 197
    :cond_2
    iget-object p1, p0, Lcom/metamoji/lib/dialog/UtFocusManager;->focusables:Ljava/util/List;

    new-instance v1, Lcom/metamoji/lib/dialog/UtFocusManager$Focusable;

    invoke-direct {v1, p2}, Lcom/metamoji/lib/dialog/UtFocusManager$Focusable;-><init>(Lcom/metamoji/lib/dialog/UtFocusManager;)V

    invoke-interface {p1, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public final next(I)Z
    .locals 3

    .line 278
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtFocusManager;->focusables:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/metamoji/lib/dialog/UtFocusManager$Focusable;

    invoke-virtual {v2, p1}, Lcom/metamoji/lib/dialog/UtFocusManager$Focusable;->hasView(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/metamoji/lib/dialog/UtFocusManager$Focusable;

    if-nez v1, :cond_2

    const/4 p1, 0x0

    return p1

    .line 279
    :cond_2
    invoke-virtual {v1}, Lcom/metamoji/lib/dialog/UtFocusManager$Focusable;->isView()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    invoke-virtual {v1}, Lcom/metamoji/lib/dialog/UtFocusManager$Focusable;->getFm()Lcom/metamoji/lib/dialog/UtFocusManager;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/metamoji/lib/dialog/UtFocusManager;->next(I)Z

    move-result p1

    if-ne p1, v2, :cond_3

    return v2

    .line 282
    :cond_3
    iget-object p1, p0, Lcom/metamoji/lib/dialog/UtFocusManager;->focusables:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    add-int/2addr p1, v2

    invoke-direct {p0, p1}, Lcom/metamoji/lib/dialog/UtFocusManager;->firstAfter(I)Z

    move-result p1

    return p1
.end method

.method public final nextOrLoop(I)V
    .locals 0

    if-eqz p1, :cond_1

    .line 340
    invoke-virtual {p0, p1}, Lcom/metamoji/lib/dialog/UtFocusManager;->next(I)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 341
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtFocusManager;->head()Z

    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 77
    invoke-virtual {p1}, Landroid/widget/TextView;->getImeOptions()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 78
    sget-object v2, Lcom/metamoji/lib/dialog/UtFocusManager;->Companion:Lcom/metamoji/lib/dialog/UtFocusManager$Companion;

    invoke-virtual {v2}, Lcom/metamoji/lib/dialog/UtFocusManager$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v2

    and-int/lit16 v3, p2, 0xff

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "viewAction:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " calledAction:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    const/4 v2, 0x1

    if-eqz p3, :cond_0

    .line 79
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p3

    if-ne p3, v2, :cond_0

    return v0

    :cond_0
    if-eq v1, v2, :cond_5

    const/4 p3, 0x5

    if-eq v1, p3, :cond_3

    .line 89
    iget-object p3, p0, Lcom/metamoji/lib/dialog/UtFocusManager;->externalEditorAction:Lkotlin/jvm/functions/Function3;

    const/4 v3, 0x7

    if-eq v1, v3, :cond_1

    if-eqz p3, :cond_5

    .line 94
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p3, p1, p2, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 89
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p3, p1, p2, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-ne p2, v2, :cond_2

    goto :goto_0

    .line 90
    :cond_2
    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/metamoji/lib/dialog/UtFocusManager;->prevOrLoop(I)V

    goto :goto_0

    .line 84
    :cond_3
    iget-object p3, p0, Lcom/metamoji/lib/dialog/UtFocusManager;->externalEditorAction:Lkotlin/jvm/functions/Function3;

    if-eqz p3, :cond_4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p3, p1, p2, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-ne p2, v2, :cond_4

    goto :goto_0

    .line 85
    :cond_4
    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/metamoji/lib/dialog/UtFocusManager;->nextOrLoop(I)V

    :cond_5
    :goto_0
    return v2

    :cond_6
    return v0
.end method

.method public final prev(I)Z
    .locals 3

    .line 286
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtFocusManager;->focusables:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/metamoji/lib/dialog/UtFocusManager$Focusable;

    invoke-virtual {v2, p1}, Lcom/metamoji/lib/dialog/UtFocusManager$Focusable;->hasView(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/metamoji/lib/dialog/UtFocusManager$Focusable;

    if-nez v1, :cond_2

    const/4 p1, 0x0

    return p1

    .line 287
    :cond_2
    invoke-virtual {v1}, Lcom/metamoji/lib/dialog/UtFocusManager$Focusable;->isView()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    invoke-virtual {v1}, Lcom/metamoji/lib/dialog/UtFocusManager$Focusable;->getFm()Lcom/metamoji/lib/dialog/UtFocusManager;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/metamoji/lib/dialog/UtFocusManager;->prev(I)Z

    move-result p1

    if-ne p1, v2, :cond_3

    return v2

    .line 290
    :cond_3
    iget-object p1, p0, Lcom/metamoji/lib/dialog/UtFocusManager;->focusables:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    sub-int/2addr p1, v2

    invoke-direct {p0, p1}, Lcom/metamoji/lib/dialog/UtFocusManager;->lastBefore(I)Z

    move-result p1

    return p1
.end method

.method public final prevOrLoop(I)V
    .locals 0

    if-eqz p1, :cond_1

    .line 346
    invoke-virtual {p0, p1}, Lcom/metamoji/lib/dialog/UtFocusManager;->prev(I)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 347
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtFocusManager;->tail()Z

    return-void
.end method

.method public final varargs register([I)Lcom/metamoji/lib/dialog/UtFocusManager;
    .locals 6

    const-string v0, "ids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtFocusManager;->focusables:Ljava/util/List;

    .line 398
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 399
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, p1, v3

    .line 179
    new-instance v5, Lcom/metamoji/lib/dialog/UtFocusManager$Focusable;

    invoke-direct {v5, v4}, Lcom/metamoji/lib/dialog/UtFocusManager$Focusable;-><init>(I)V

    .line 400
    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 401
    :cond_0
    check-cast v1, Ljava/util/List;

    .line 398
    check-cast v1, Ljava/util/Collection;

    .line 179
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final removeChild(Lcom/metamoji/lib/dialog/UtFocusManager;)Lcom/metamoji/lib/dialog/UtFocusManager;
    .locals 2

    const-string v0, "fm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtFocusManager;->focusables:Ljava/util/List;

    new-instance v1, Lcom/metamoji/lib/dialog/UtFocusManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcom/metamoji/lib/dialog/UtFocusManager$$ExternalSyntheticLambda2;-><init>(Lcom/metamoji/lib/dialog/UtFocusManager;)V

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->removeAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    return-object p0
.end method

.method public final setCustomEditorAction(Lkotlin/jvm/functions/Function3;)Lcom/metamoji/lib/dialog/UtFocusManager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroid/widget/TextView;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/metamoji/lib/dialog/UtFocusManager;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 165
    iput-boolean v0, p0, Lcom/metamoji/lib/dialog/UtFocusManager;->customForwardAction:Z

    .line 166
    iput-object p1, p0, Lcom/metamoji/lib/dialog/UtFocusManager;->externalEditorAction:Lkotlin/jvm/functions/Function3;

    return-object p0
.end method

.method public final setInitialFocus(I)Lcom/metamoji/lib/dialog/UtFocusManager;
    .locals 0

    .line 146
    iput p1, p0, Lcom/metamoji/lib/dialog/UtFocusManager;->initialFocus:I

    return-object p0
.end method

.method public final setUseKeys(Lcom/metamoji/lib/dialog/UtFocusManager$UseKey;)Lcom/metamoji/lib/dialog/UtFocusManager;
    .locals 1

    const-string v0, "useKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    iput-object p1, p0, Lcom/metamoji/lib/dialog/UtFocusManager;->useKeys:Lcom/metamoji/lib/dialog/UtFocusManager$UseKey;

    return-object p0
.end method

.method public final tail()Z
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtFocusManager;->focusables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/metamoji/lib/dialog/UtFocusManager;->lastBefore(I)Z

    move-result v0

    return v0
.end method
