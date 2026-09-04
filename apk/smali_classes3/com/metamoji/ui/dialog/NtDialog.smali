.class public Lcom/metamoji/ui/dialog/NtDialog;
.super Lcom/metamoji/ui/dialog/UtDialogNt;
.source "NtDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/dialog/NtDialog$Companion;,
        Lcom/metamoji/ui/dialog/NtDialog$EditorActionListener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNtDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NtDialog.kt\ncom/metamoji/ui/dialog/NtDialog\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,461:1\n1915#2,2:462\n1915#2,2:464\n*S KotlinDebug\n*F\n+ 1 NtDialog.kt\ncom/metamoji/ui/dialog/NtDialog\n*L\n300#1:462,2\n336#1:464,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000~\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0012\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001c\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0016\u0018\u0000 W2\u00020\u0001:\u0002VWB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001a\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0014J\u0012\u0010\n\u001a\u00020\u000b2\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\u0006\u0010\"\u001a\u00020#J\u000e\u0010*\u001a\u00020#2\u0006\u0010+\u001a\u00020\u0010J\u000e\u0010,\u001a\u00020#2\u0006\u0010+\u001a\u00020\u0010J\n\u0010-\u001a\u0004\u0018\u00010\u000bH\u0016J\u0012\u00106\u001a\u00020#2\u0008\u00107\u001a\u0004\u0018\u000105H\u0017J&\u00108\u001a\u0004\u0018\u00010\u00052\u0006\u00109\u001a\u00020:2\u0008\u0010;\u001a\u0004\u0018\u00010<2\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\u0016\u0010=\u001a\u0008\u0012\u0004\u0012\u00020?0>2\u0006\u0010@\u001a\u00020<H\u0002J\u0008\u0010A\u001a\u00020#H\u0016J\u0008\u0010B\u001a\u00020#H\u0016J\u0010\u0010G\u001a\u00020#2\u0006\u0010H\u001a\u00020DH\u0016J\u0010\u0010I\u001a\u00020\u00102\u0006\u0010J\u001a\u00020\u0005H\u0004J\u0012\u0010K\u001a\u00020#2\u0008\u0010@\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010L\u001a\u00020#2\u0008\u0010@\u001a\u0004\u0018\u00010\u0005H\u0016J\u0008\u0010M\u001a\u00020#H\u0014J\u001a\u0010N\u001a\u00020#2\u0006\u0010O\u001a\u00020P2\u0008\u0010Q\u001a\u0004\u0018\u00010RH\u0016J\u001a\u0010N\u001a\u00020\r2\u0006\u0010S\u001a\u00020T2\u0008\u0010Q\u001a\u0004\u0018\u00010RH\u0016J\u000e\u0010U\u001a\u00020#2\u0006\u0010Q\u001a\u00020RR\u0012\u0010\u000c\u001a\u00020\r8\u0004@\u0004X\u0085\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00020\r8\u0004@\u0004X\u0085\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u00020\u00108\u0004@\u0004X\u0085\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u00020\u00108\u0004@\u0004X\u0085\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u00020\u00108\u0004@\u0004X\u0085\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0013\u001a\u00020\u00108\u0004@\u0004X\u0085\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0014\u001a\u00020\u00108\u0004@\u0004X\u0085\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0015\u001a\u00020\u00108\u0004@\u0004X\u0085\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0016\u001a\u00020\u00108\u0004@\u0004X\u0085\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0017\u001a\u00020\u00108\u0004@\u0004X\u0085\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0018\u001a\u00020\u00108\u0004@\u0004X\u0085\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0019\u001a\u00020\u00108\u0004@\u0004X\u0085\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u001b\u001a\u00020\u00108\u0004@\u0004X\u0085\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u001c\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R\u000e\u0010!\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001f\u0010$\u001a\u00060%R\u00020\u00008BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008(\u0010)\u001a\u0004\u0008&\u0010\'R+\u0010/\u001a\u00020\u00102\u0006\u0010.\u001a\u00020\u00108B@BX\u0082\u008e\u0002\u00a2\u0006\u0012\n\u0004\u00082\u00103\u001a\u0004\u00080\u0010\u001e\"\u0004\u00081\u0010 R\u0010\u00104\u001a\u0004\u0018\u000105X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010C\u001a\u00020D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008E\u0010F\u00a8\u0006X"
    }
    d2 = {
        "Lcom/metamoji/ui/dialog/NtDialog;",
        "Lcom/metamoji/ui/dialog/UtDialogNt;",
        "<init>",
        "()V",
        "createBodyView",
        "Landroid/view/View;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "inflater",
        "Lcom/metamoji/lib/dialog/UtDialog$IViewInflater;",
        "onCreateDialog",
        "Landroid/app/Dialog;",
        "mViewId",
        "",
        "mTitleId",
        "mDone",
        "",
        "mCancel",
        "mDealt",
        "mBack",
        "mClose",
        "mCloseLeft",
        "mModal",
        "mDoneOnTouchOutsize",
        "mCentering",
        "mV4Compatible",
        "mInitialized",
        "mClosingOnReconstruction",
        "hideParentDialog",
        "getHideParentDialog",
        "()Z",
        "setHideParentDialog",
        "(Z)V",
        "mAutoDetectTextView",
        "enableAutoDetectTextViewMode",
        "",
        "editorActionListener",
        "Lcom/metamoji/ui/dialog/NtDialog$EditorActionListener;",
        "getEditorActionListener",
        "()Lcom/metamoji/ui/dialog/NtDialog$EditorActionListener;",
        "editorActionListener$delegate",
        "Lkotlin/Lazy;",
        "setModal",
        "flag",
        "setCentering",
        "getDialog",
        "<set-?>",
        "hasOnClosedListener",
        "getHasOnClosedListener",
        "setHasOnClosedListener",
        "hasOnClosedListener$delegate",
        "Lkotlin/properties/ReadWriteProperty;",
        "mListener",
        "Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;",
        "setOnClosedListener",
        "listener",
        "onCreateView",
        "orgInflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "listEditText",
        "",
        "Landroid/widget/EditText;",
        "view",
        "onStart",
        "dismiss",
        "dummyDialogInterface",
        "Landroid/content/DialogInterface;",
        "getDummyDialogInterface",
        "()Landroid/content/DialogInterface;",
        "onDismiss",
        "dialog",
        "restoreInstanceStateIfAvailable",
        "dlg",
        "onDone",
        "onCancel",
        "onDialogClosed",
        "show",
        "manager",
        "Landroidx/fragment/app/FragmentManager;",
        "tag",
        "",
        "transaction",
        "Landroidx/fragment/app/FragmentTransaction;",
        "safeShow",
        "EditorActionListener",
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

.field public static final Companion:Lcom/metamoji/ui/dialog/NtDialog$Companion;

.field public static final Key_CancelDialogFlag:Ljava/lang/String;

.field public static final Key_ReconstructDialogFlag:Ljava/lang/String;

.field public static final Key_params:Ljava/lang/String; = "params"

.field public static final logger:Lcom/metamoji/lib/utils/UtLog;


# instance fields
.field private final dummyDialogInterface:Landroid/content/DialogInterface;

.field private final editorActionListener$delegate:Lkotlin/Lazy;

.field private final hasOnClosedListener$delegate:Lkotlin/properties/ReadWriteProperty;

.field private hideParentDialog:Z

.field private mAutoDetectTextView:Z

.field protected mBack:Z

.field protected mCancel:Z

.field protected mCentering:Z

.field protected mClose:Z

.field protected mCloseLeft:Z

.field protected mClosingOnReconstruction:Z

.field protected mDealt:Z

.field protected mDone:Z

.field protected mDoneOnTouchOutsize:Z

.field private mInitialized:Z

.field private mListener:Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;

.field protected mModal:Z

.field protected mTitleId:I

.field protected mV4Compatible:Z

.field protected mViewId:I


# direct methods
.method public static synthetic $r8$lambda$LK8bJ6mXhtdYwKsShhT2QyIWd9Q(Lcom/metamoji/ui/dialog/NtDialog;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/metamoji/lib/dialog/UtDialog;->onBackgroundTapped(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 10

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "hasOnClosedListener"

    const-string v3, "getHasOnClosedListener()Z"

    const-class v4, Lcom/metamoji/ui/dialog/NtDialog;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Lcom/metamoji/ui/dialog/NtDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/metamoji/ui/dialog/NtDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/ui/dialog/NtDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/ui/dialog/NtDialog;->Companion:Lcom/metamoji/ui/dialog/NtDialog$Companion;

    new-instance v2, Lcom/metamoji/lib/utils/UtLog;

    sget-object v0, Lcom/metamoji/lib/dialog/UtDialogBase;->Companion:Lcom/metamoji/lib/dialog/UtDialogBase$Companion;

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtDialogBase$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v4

    const/16 v8, 0x18

    const/4 v9, 0x0

    const-string v3, "Nt"

    const-string v5, "com.metamoji."

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/metamoji/lib/utils/UtLog;-><init>(Ljava/lang/String;Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v2, Lcom/metamoji/ui/dialog/NtDialog;->logger:Lcom/metamoji/lib/utils/UtLog;

    const-string v0, "reconstructdialogflag"

    sput-object v0, Lcom/metamoji/ui/dialog/NtDialog;->Key_ReconstructDialogFlag:Ljava/lang/String;

    const-string v0, "canceldialogflag"

    sput-object v0, Lcom/metamoji/ui/dialog/NtDialog;->Key_CancelDialogFlag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/UtDialogNt;-><init>()V

    const/4 v0, -0x1

    .line 70
    iput v0, p0, Lcom/metamoji/ui/dialog/NtDialog;->mViewId:I

    .line 73
    iput v0, p0, Lcom/metamoji/ui/dialog/NtDialog;->mTitleId:I

    const/4 v0, 0x1

    .line 75
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/NtDialog;->mDone:Z

    .line 77
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/NtDialog;->mCancel:Z

    .line 105
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/NtDialog;->hideParentDialog:Z

    .line 127
    new-instance v0, Lcom/metamoji/ui/dialog/NtDialog$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/dialog/NtDialog$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/ui/dialog/NtDialog;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/dialog/NtDialog;->editorActionListener$delegate:Lkotlin/Lazy;

    .line 145
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/NtDialog;->getBundle()Lcom/metamoji/lib/dialog/UtBundleDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtBundleDelegate;->getBooleanFalse()Lkotlin/properties/ReadWriteProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/dialog/NtDialog;->hasOnClosedListener$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 347
    new-instance v0, Lcom/metamoji/ui/dialog/NtDialog$dummyDialogInterface$1;

    invoke-direct {v0}, Lcom/metamoji/ui/dialog/NtDialog$dummyDialogInterface$1;-><init>()V

    check-cast v0, Landroid/content/DialogInterface;

    iput-object v0, p0, Lcom/metamoji/ui/dialog/NtDialog;->dummyDialogInterface:Landroid/content/DialogInterface;

    return-void
.end method

.method public static final synthetic access$getMAutoDetectTextView$p(Lcom/metamoji/ui/dialog/NtDialog;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/metamoji/ui/dialog/NtDialog;->mAutoDetectTextView:Z

    return p0
.end method

.method public static final synthetic access$listEditText(Lcom/metamoji/ui/dialog/NtDialog;Landroid/view/ViewGroup;)Ljava/lang/Iterable;
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->listEditText(Landroid/view/ViewGroup;)Ljava/lang/Iterable;

    move-result-object p0

    return-object p0
.end method

.method public static final closeDialog(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/dialog/NtDialog;->Companion:Lcom/metamoji/ui/dialog/NtDialog$Companion;

    invoke-virtual {v0, p0}, Lcom/metamoji/ui/dialog/NtDialog$Companion;->closeDialog(Ljava/lang/String;)V

    return-void
.end method

.method static final editorActionListener_delegate$lambda$0(Lcom/metamoji/ui/dialog/NtDialog;)Lcom/metamoji/ui/dialog/NtDialog$EditorActionListener;
    .locals 1

    .line 127
    new-instance v0, Lcom/metamoji/ui/dialog/NtDialog$EditorActionListener;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/dialog/NtDialog$EditorActionListener;-><init>(Lcom/metamoji/ui/dialog/NtDialog;)V

    return-object v0
.end method

.method private final getEditorActionListener()Lcom/metamoji/ui/dialog/NtDialog$EditorActionListener;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/metamoji/ui/dialog/NtDialog;->editorActionListener$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/dialog/NtDialog$EditorActionListener;

    return-object v0
.end method

.method private final getHasOnClosedListener()Z
    .locals 3

    .line 145
    iget-object v0, p0, Lcom/metamoji/ui/dialog/NtDialog;->hasOnClosedListener$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/ui/dialog/NtDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static final javaWithDialog(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/metamoji/lib/dialog/UtDialog;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/dialog/NtDialog;->Companion:Lcom/metamoji/ui/dialog/NtDialog$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/metamoji/ui/dialog/NtDialog$Companion;->javaWithDialog(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final listEditText(Landroid/view/ViewGroup;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "Ljava/lang/Iterable<",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation

    .line 313
    new-instance v0, Lcom/metamoji/ui/dialog/NtDialog$listEditText$$inlined$Iterable$1;

    invoke-direct {v0, p1, p0}, Lcom/metamoji/ui/dialog/NtDialog$listEditText$$inlined$Iterable$1;-><init>(Landroid/view/ViewGroup;Lcom/metamoji/ui/dialog/NtDialog;)V

    check-cast v0, Ljava/lang/Iterable;

    return-object v0
.end method

.method static final onCreateView$lambda$1(Lcom/metamoji/ui/dialog/NtDialog;Landroid/view/View;)V
    .locals 0

    .line 230
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onCancel(Landroid/view/View;)V

    return-void
.end method

.method static final onCreateView$lambda$2(Lcom/metamoji/ui/dialog/NtDialog;Landroid/view/View;)V
    .locals 0

    .line 245
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onDone(Landroid/view/View;)V

    return-void
.end method

.method static final onCreateView$lambda$3(Lcom/metamoji/ui/dialog/NtDialog;Landroid/view/View;)V
    .locals 0

    .line 249
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onCancel(Landroid/view/View;)V

    return-void
.end method

.method static final onCreateView$lambda$4(Lcom/metamoji/ui/dialog/NtDialog;)Ljava/lang/String;
    .locals 2

    .line 279
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/NtDialog;->getTag()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "recontruct has been requested while the dialog("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ") has onClosedListener"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static final safeShow$lambda$8(Lcom/metamoji/ui/dialog/NtDialog;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 405
    invoke-virtual {p0, p2, p1}, Lcom/metamoji/ui/dialog/NtDialog;->show(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    .line 406
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final setHasOnClosedListener(Z)V
    .locals 3

    .line 145
    iget-object v0, p0, Lcom/metamoji/ui/dialog/NtDialog;->hasOnClosedListener$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/ui/dialog/NtDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected createBodyView(Landroid/os/Bundle;Lcom/metamoji/lib/dialog/UtDialog$IViewInflater;)Landroid/view/View;
    .locals 0

    const-string p1, "inflater"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/IllegalStateException;

    .line 61
    const-string p2, "never used."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public dismiss()V
    .locals 3

    .line 336
    sget-object v0, Lcom/metamoji/lib/dialog/UtDialogHelper;->INSTANCE:Lcom/metamoji/lib/dialog/UtDialogHelper;

    move-object v1, p0

    check-cast v1, Lcom/metamoji/lib/dialog/UtDialog;

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/dialog/UtDialogHelper;->childrenOf(Lcom/metamoji/lib/dialog/UtDialog;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/lib/utils/CollectionExtKt;->reverse(Ljava/util/List;)Ljava/lang/Iterable;

    move-result-object v0

    .line 464
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/lib/dialog/UtDialog;

    const/4 v2, 0x0

    .line 337
    invoke-virtual {v1, v2}, Lcom/metamoji/lib/dialog/UtDialog;->setAnimationEffect(Z)V

    .line 338
    invoke-virtual {v1}, Lcom/metamoji/lib/dialog/UtDialog;->cancel()V

    goto :goto_0

    .line 340
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/NtDialog;->getStatus()Lcom/metamoji/lib/dialog/IUtDialog$Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/IUtDialog$Status;->getFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 341
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/NtDialog;->cancel()V

    return-void

    .line 343
    :cond_1
    invoke-super {p0}, Lcom/metamoji/ui/dialog/UtDialogNt;->dismiss()V

    return-void
.end method

.method public final enableAutoDetectTextViewMode()V
    .locals 1

    const/4 v0, 0x1

    .line 112
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/NtDialog;->mAutoDetectTextView:Z

    return-void
.end method

.method public getDialog()Landroid/app/Dialog;
    .locals 2

    .line 141
    sget-object v0, Lcom/metamoji/ui/dialog/NtDialog;->logger:Lcom/metamoji/lib/utils/UtLog;

    const-string v1, "getDialog() is useless. it will always return null."

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/UtLog;->error(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 142
    const-string v1, "don\'t use getDialog on NtDialog"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getDummyDialogInterface()Landroid/content/DialogInterface;
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/metamoji/ui/dialog/NtDialog;->dummyDialogInterface:Landroid/content/DialogInterface;

    return-object v0
.end method

.method public final getHideParentDialog()Z
    .locals 1

    .line 105
    iget-boolean v0, p0, Lcom/metamoji/ui/dialog/NtDialog;->hideParentDialog:Z

    return v0
.end method

.method public onCancel(Landroid/view/View;)V
    .locals 2

    .line 376
    sget-object p1, Lcom/metamoji/ui/dialog/NtDialog;->logger:Lcom/metamoji/lib/utils/UtLog;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v0}, Lcom/metamoji/lib/utils/UtLog;->debug$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ILjava/lang/Object;)V

    .line 377
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/NtDialog;->onNegative()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    .line 65
    const-string v0, "Don\'t use Dialog interfaces."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    const-string v0, "orgInflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/NtDialog;->preCreateBodyView()V

    const/4 v0, 0x1

    .line 161
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/NtDialog;->setRetainInstance(Z)V

    .line 165
    iget-boolean v1, p0, Lcom/metamoji/ui/dialog/NtDialog;->hideParentDialog:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/NtDialog;->isPhone()Z

    move-result v1

    if-nez v1, :cond_0

    .line 166
    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog$ParentVisibilityOption;->NONE:Lcom/metamoji/lib/dialog/UtDialog$ParentVisibilityOption;

    invoke-virtual {p0, v1}, Lcom/metamoji/ui/dialog/NtDialog;->setParentVisibilityOption(Lcom/metamoji/lib/dialog/UtDialog$ParentVisibilityOption;)V

    .line 168
    :cond_0
    sget-object v1, Lcom/metamoji/lib/dialog/UtDialogConfig;->INSTANCE:Lcom/metamoji/lib/dialog/UtDialogConfig;

    invoke-virtual {v1}, Lcom/metamoji/lib/dialog/UtDialogConfig;->getSolidBackgroundOnPhone()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/NtDialog;->isPhone()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 169
    invoke-virtual {p0, v2}, Lcom/metamoji/ui/dialog/NtDialog;->setAnimationEffect(Z)V

    .line 171
    :cond_1
    iget-boolean v1, p0, Lcom/metamoji/ui/dialog/NtDialog;->mModal:Z

    xor-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/metamoji/ui/dialog/NtDialog;->setCancellable(Z)V

    .line 172
    iget-boolean v1, p0, Lcom/metamoji/ui/dialog/NtDialog;->mDoneOnTouchOutsize:Z

    invoke-virtual {p0, v1}, Lcom/metamoji/ui/dialog/NtDialog;->setPositiveCancellable(Z)V

    .line 173
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/NtDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v3, Lcom/metamoji/noteanytime/R$layout;->dialog_frame:I

    invoke-virtual {v1, v3, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const-string v1, "null cannot be cast to non-null type android.widget.FrameLayout"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/FrameLayout;

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p0, p2}, Lcom/metamoji/ui/dialog/NtDialog;->setRootView(Landroid/view/ViewGroup;)V

    .line 174
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/NtDialog;->getRootView()Landroid/view/ViewGroup;

    move-result-object p2

    sget v1, Lcom/metamoji/noteanytime/R$id;->dialog_view:I

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 p2, 0x0

    .line 176
    :try_start_0
    iget v1, p0, Lcom/metamoji/ui/dialog/NtDialog;->mViewId:I

    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/NtDialog;->getRootView()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {p1, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->setDialogView(Landroid/view/ViewGroup;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/NtDialog;->getRootView()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/NtDialog;->getDialogView()Landroid/view/ViewGroup;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 185
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/NtDialog;->getDialogView()Landroid/view/ViewGroup;

    move-result-object p1

    sget v1, Lcom/metamoji/noteanytime/R$id;->control_dialog:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 187
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 193
    :cond_2
    iget-boolean v1, p0, Lcom/metamoji/ui/dialog/NtDialog;->mCentering:Z

    const/4 v3, -0x1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/NtDialog;->isPhone()Z

    move-result v1

    if-nez v1, :cond_4

    .line 194
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/NtDialog;->getDialogView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 195
    instance-of v4, v1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v4, :cond_3

    .line 196
    move-object v4, v1

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v5, 0x11

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 197
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/NtDialog;->getDialogView()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    if-eqz p1, :cond_4

    .line 205
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xd

    .line 206
    invoke-virtual {v1, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 207
    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    :cond_4
    iget p1, p0, Lcom/metamoji/ui/dialog/NtDialog;->mTitleId:I

    if-eq p1, v3, :cond_5

    .line 213
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/NtDialog;->getDialogView()Landroid/view/ViewGroup;

    move-result-object p1

    sget v1, Lcom/metamoji/noteanytime/R$id;->dlg_title:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_5

    iget v1, p0, Lcom/metamoji/ui/dialog/NtDialog;->mTitleId:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 217
    :cond_5
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/NtDialog;->getDialogView()Landroid/view/ViewGroup;

    move-result-object p1

    sget v1, Lcom/metamoji/noteanytime/R$id;->dlg_left_button:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/common/UiButtonHeader;

    const/4 v1, 0x4

    if-eqz p1, :cond_b

    .line 219
    iget-boolean v3, p0, Lcom/metamoji/ui/dialog/NtDialog;->mCancel:Z

    if-nez v3, :cond_7

    iget-boolean v4, p0, Lcom/metamoji/ui/dialog/NtDialog;->mBack:Z

    if-nez v4, :cond_7

    iget-boolean v4, p0, Lcom/metamoji/ui/dialog/NtDialog;->mCloseLeft:Z

    if-eqz v4, :cond_6

    goto :goto_0

    .line 232
    :cond_6
    invoke-virtual {p1, v1}, Lcom/metamoji/ui/common/UiButtonHeader;->setVisibility(I)V

    goto :goto_2

    :cond_7
    :goto_0
    if-eqz v3, :cond_8

    .line 221
    sget v3, Lcom/metamoji/noteanytime/R$string;->Button_Cancel_J:I

    invoke-virtual {p1, v3}, Lcom/metamoji/ui/common/UiButtonHeader;->setTitle(I)V

    .line 222
    sget v3, Lcom/metamoji/noteanytime/R$drawable;->control_button_header_blue:I

    invoke-virtual {p1, v3}, Lcom/metamoji/ui/common/UiButtonHeader;->setImageResource(I)V

    goto :goto_1

    .line 223
    :cond_8
    iget-boolean v3, p0, Lcom/metamoji/ui/dialog/NtDialog;->mBack:Z

    if-eqz v3, :cond_9

    .line 224
    sget v3, Lcom/metamoji/noteanytime/R$string;->Button_Back_J:I

    invoke-virtual {p1, v3}, Lcom/metamoji/ui/common/UiButtonHeader;->setTitle(I)V

    .line 225
    sget v3, Lcom/metamoji/noteanytime/R$drawable;->control_button_header_blue:I

    invoke-virtual {p1, v3}, Lcom/metamoji/ui/common/UiButtonHeader;->setImageResource(I)V

    goto :goto_1

    .line 226
    :cond_9
    iget-boolean v3, p0, Lcom/metamoji/ui/dialog/NtDialog;->mCloseLeft:Z

    if-eqz v3, :cond_a

    .line 227
    sget v3, Lcom/metamoji/noteanytime/R$string;->Button_Close_J:I

    invoke-virtual {p1, v3}, Lcom/metamoji/ui/common/UiButtonHeader;->setTitle(I)V

    .line 228
    sget v3, Lcom/metamoji/noteanytime/R$drawable;->control_button_header_blue:I

    invoke-virtual {p1, v3}, Lcom/metamoji/ui/common/UiButtonHeader;->setImageResource(I)V

    .line 230
    :cond_a
    :goto_1
    new-instance v3, Lcom/metamoji/ui/dialog/NtDialog$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/metamoji/ui/dialog/NtDialog$$ExternalSyntheticLambda2;-><init>(Lcom/metamoji/ui/dialog/NtDialog;)V

    invoke-virtual {p1, v3}, Lcom/metamoji/ui/common/UiButtonHeader;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    :cond_b
    :goto_2
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/NtDialog;->getDialogView()Landroid/view/ViewGroup;

    move-result-object p1

    sget v3, Lcom/metamoji/noteanytime/R$id;->dlg_right_button:I

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/common/UiButtonHeader;

    if-eqz p1, :cond_f

    .line 241
    iget-boolean v3, p0, Lcom/metamoji/ui/dialog/NtDialog;->mDone:Z

    if-nez v3, :cond_d

    iget-boolean v4, p0, Lcom/metamoji/ui/dialog/NtDialog;->mClose:Z

    if-eqz v4, :cond_c

    goto :goto_3

    .line 252
    :cond_c
    invoke-virtual {p1, v1}, Lcom/metamoji/ui/common/UiButtonHeader;->setVisibility(I)V

    goto :goto_4

    :cond_d
    :goto_3
    if-eqz v3, :cond_e

    .line 243
    sget v1, Lcom/metamoji/noteanytime/R$string;->Button_Done_J:I

    invoke-virtual {p1, v1}, Lcom/metamoji/ui/common/UiButtonHeader;->setTitle(I)V

    .line 244
    sget v1, Lcom/metamoji/noteanytime/R$drawable;->control_button_header_purple:I

    invoke-virtual {p1, v1}, Lcom/metamoji/ui/common/UiButtonHeader;->setImageResource(I)V

    .line 245
    new-instance v1, Lcom/metamoji/ui/dialog/NtDialog$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/dialog/NtDialog$$ExternalSyntheticLambda3;-><init>(Lcom/metamoji/ui/dialog/NtDialog;)V

    invoke-virtual {p1, v1}, Lcom/metamoji/ui/common/UiButtonHeader;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    .line 247
    :cond_e
    sget v1, Lcom/metamoji/noteanytime/R$string;->Button_Close_J:I

    invoke-virtual {p1, v1}, Lcom/metamoji/ui/common/UiButtonHeader;->setTitle(I)V

    .line 248
    sget v1, Lcom/metamoji/noteanytime/R$drawable;->control_button_header_blue:I

    invoke-virtual {p1, v1}, Lcom/metamoji/ui/common/UiButtonHeader;->setImageResource(I)V

    .line 249
    new-instance v1, Lcom/metamoji/ui/dialog/NtDialog$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/dialog/NtDialog$$ExternalSyntheticLambda4;-><init>(Lcom/metamoji/ui/dialog/NtDialog;)V

    invoke-virtual {p1, v1}, Lcom/metamoji/ui/common/UiButtonHeader;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    :cond_f
    :goto_4
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/NtDialog;->applyGuardColor()V

    .line 256
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/NtDialog;->getRootView()Landroid/view/ViewGroup;

    move-result-object p1

    new-instance v1, Lcom/metamoji/ui/dialog/NtDialog$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/dialog/NtDialog$$ExternalSyntheticLambda5;-><init>(Lcom/metamoji/ui/dialog/NtDialog;)V

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez p3, :cond_10

    .line 267
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/NtDialog;->getAnimationEffect()Z

    move-result p1

    if-eqz p1, :cond_17

    .line 268
    invoke-virtual {p0, v2}, Lcom/metamoji/ui/dialog/NtDialog;->setVisible(Z)V

    goto :goto_8

    .line 274
    :cond_10
    sget-object p1, Lcom/metamoji/ui/dialog/NtDialog;->Key_CancelDialogFlag:Ljava/lang/String;

    invoke-virtual {p3, p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 275
    sget-object v1, Lcom/metamoji/ui/dialog/NtDialog;->Key_ReconstructDialogFlag:Ljava/lang/String;

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    .line 276
    iget-boolean v1, p0, Lcom/metamoji/ui/dialog/NtDialog;->mV4Compatible:Z

    if-eqz v1, :cond_11

    iget-boolean v1, p0, Lcom/metamoji/ui/dialog/NtDialog;->mInitialized:Z

    if-eqz v1, :cond_11

    move v1, v0

    goto :goto_5

    :cond_11
    move v1, v2

    :goto_5
    if-nez p3, :cond_13

    if-eqz v1, :cond_12

    goto :goto_6

    :cond_12
    move p3, v2

    goto :goto_7

    :cond_13
    :goto_6
    move p3, v0

    :goto_7
    if-eqz p3, :cond_14

    .line 278
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;->getHasOnClosedListener()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/metamoji/ui/dialog/NtDialog;->mListener:Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;

    if-nez v1, :cond_14

    .line 279
    new-instance p3, Lcom/metamoji/ui/dialog/NtDialog$$ExternalSyntheticLambda6;

    invoke-direct {p3, p0}, Lcom/metamoji/ui/dialog/NtDialog$$ExternalSyntheticLambda6;-><init>(Lcom/metamoji/ui/dialog/NtDialog;)V

    invoke-static {v2, p3}, Lcom/metamoji/lib/utils/UtLibKt;->utAssert(ZLkotlin/jvm/functions/Function0;)V

    move p3, v2

    :cond_14
    if-nez p3, :cond_16

    .line 284
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/NtDialog;->mClosingOnReconstruction:Z

    if-eqz p1, :cond_15

    .line 286
    invoke-virtual {p0, p2}, Lcom/metamoji/ui/dialog/NtDialog;->onCancel(Landroid/view/View;)V

    goto :goto_8

    .line 288
    :cond_15
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/NtDialog;->cancel()V

    goto :goto_8

    .line 292
    :cond_16
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/NtDialog;->getParentVisibilityOption()Lcom/metamoji/lib/dialog/UtDialog$ParentVisibilityOption;

    move-result-object p1

    sget-object p2, Lcom/metamoji/lib/dialog/UtDialog$ParentVisibilityOption;->NONE:Lcom/metamoji/lib/dialog/UtDialog$ParentVisibilityOption;

    if-eq p1, p2, :cond_17

    .line 293
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/NtDialog;->getParentDialog()Lcom/metamoji/lib/dialog/UtDialog;

    move-result-object p1

    if-eqz p1, :cond_17

    invoke-virtual {p1, v2}, Lcom/metamoji/lib/dialog/UtDialog;->setVisible(Z)V

    .line 298
    :cond_17
    :goto_8
    iget-boolean p1, p0, Lcom/metamoji/ui/dialog/NtDialog;->mClosingOnReconstruction:Z

    if-nez p1, :cond_18

    iget-boolean p1, p0, Lcom/metamoji/ui/dialog/NtDialog;->mAutoDetectTextView:Z

    if-eqz p1, :cond_18

    .line 300
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/NtDialog;->getDialogView()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->listEditText(Landroid/view/ViewGroup;)Ljava/lang/Iterable;

    move-result-object p1

    .line 462
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_18

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    .line 301
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;->getEditorActionListener()Lcom/metamoji/ui/dialog/NtDialog$EditorActionListener;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    goto :goto_9

    .line 306
    :cond_18
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/NtDialog;->getParentDialog()Lcom/metamoji/lib/dialog/UtDialog;

    move-result-object p1

    if-eqz p1, :cond_19

    invoke-virtual {p1}, Lcom/metamoji/lib/dialog/UtDialog;->getBackInvokerPriority()I

    move-result p1

    goto :goto_a

    :cond_19
    sget-object p1, Lcom/metamoji/lib/dialog/UtDialogConfig;->INSTANCE:Lcom/metamoji/lib/dialog/UtDialogConfig;

    invoke-virtual {p1}, Lcom/metamoji/lib/dialog/UtDialogConfig;->getBaseBackInvokedDispatcherPriority()I

    move-result p1

    :goto_a
    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->setBackInvokerPriority(I)V

    .line 307
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/NtDialog;->getCompatBackKeyDispatcher()Lcom/metamoji/lib/utils/CompatBackKeyDispatcher;

    move-result-object p1

    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/NtDialog;->getBackInvokerPriority()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/metamoji/lib/utils/CompatBackKeyDispatcher;->setInvokedDispatcherPriority(I)Lcom/metamoji/lib/utils/CompatBackKeyDispatcher;

    move-result-object p1

    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/NtDialog;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-string p3, "requireActivity(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroidx/activity/ComponentActivity;

    move-object p3, p0

    check-cast p3, Landroidx/lifecycle/LifecycleOwner;

    new-instance v0, Lcom/metamoji/ui/dialog/NtDialog$onCreateView$7;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/dialog/NtDialog$onCreateView$7;-><init>(Ljava/lang/Object;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p1, p2, p3, v0}, Lcom/metamoji/lib/utils/CompatBackKeyDispatcher;->register(Landroidx/activity/ComponentActivity;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function0;)V

    .line 308
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/NtDialog;->setupWindowInsetsListener()V

    .line 309
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/NtDialog;->getRootView()Landroid/view/ViewGroup;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1

    :catchall_0
    move-exception p1

    .line 179
    sget-object p3, Lcom/metamoji/ui/dialog/NtDialog;->logger:Lcom/metamoji/lib/utils/UtLog;

    const/4 v0, 0x2

    invoke-static {p3, p1, p2, v0, p2}, Lcom/metamoji/lib/utils/UtLog;->stackTrace$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    .line 180
    throw p1
.end method

.method protected onDialogClosed()V
    .locals 4

    .line 381
    sget-object v0, Lcom/metamoji/ui/dialog/NtDialog;->logger:Lcom/metamoji/lib/utils/UtLog;

    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/NtDialog;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 382
    invoke-super {p0}, Lcom/metamoji/ui/dialog/UtDialogNt;->onDialogClosed()V

    .line 383
    iget-object v0, p0, Lcom/metamoji/ui/dialog/NtDialog;->mListener:Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/NtDialog;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/NtDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "params"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/NtDialog;->getStatus()Lcom/metamoji/lib/dialog/IUtDialog$Status;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/lib/dialog/IUtDialog$Status;->getPositive()Z

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;->onDialogClosed(Ljava/lang/String;Landroid/os/Bundle;Z)V

    .line 384
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/NtDialog;->isDialog()Z

    move-result v0

    if-nez v0, :cond_2

    .line 386
    iget-object v0, p0, Lcom/metamoji/ui/dialog/NtDialog;->dummyDialogInterface:Landroid/content/DialogInterface;

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/NtDialog;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_2
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 357
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/NtDialog;->isDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/UtDialogNt;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public onDone(Landroid/view/View;)V
    .locals 2

    .line 371
    sget-object p1, Lcom/metamoji/ui/dialog/NtDialog;->logger:Lcom/metamoji/lib/utils/UtLog;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v0}, Lcom/metamoji/lib/utils/UtLog;->debug$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ILjava/lang/Object;)V

    .line 372
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/NtDialog;->onPositive()V

    return-void
.end method

.method public onStart()V
    .locals 1

    const/4 v0, 0x1

    .line 329
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/NtDialog;->mInitialized:Z

    .line 330
    invoke-super {p0}, Lcom/metamoji/ui/dialog/UtDialogNt;->onStart()V

    return-void
.end method

.method protected final restoreInstanceStateIfAvailable(Landroid/view/View;)Z
    .locals 1

    const-string v0, "dlg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 366
    sget-object p1, Lcom/metamoji/ui/dialog/NtDialog;->logger:Lcom/metamoji/lib/utils/UtLog;

    const-string v0, "ignored"

    invoke-virtual {p1, v0}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final safeShow(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 404
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    const-string v1, "getInstance(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/metamoji/ui/dialog/NtDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/ui/dialog/NtDialog$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/ui/dialog/NtDialog;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/metamoji/ui/UiCurrentActivityManagerExtKt;->withActivity(Lcom/metamoji/ui/UiCurrentActivityManager;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final setCentering(Z)V
    .locals 0

    .line 137
    iput-boolean p1, p0, Lcom/metamoji/ui/dialog/NtDialog;->mCentering:Z

    return-void
.end method

.method public final setHideParentDialog(Z)V
    .locals 0

    .line 105
    iput-boolean p1, p0, Lcom/metamoji/ui/dialog/NtDialog;->hideParentDialog:Z

    return-void
.end method

.method public final setModal(Z)V
    .locals 0

    .line 133
    iput-boolean p1, p0, Lcom/metamoji/ui/dialog/NtDialog;->mModal:Z

    return-void
.end method

.method public setOnClosedListener(Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "use IUtImmoralTask or IUtDialogResultReceptor."
    .end annotation

    .line 154
    iput-object p1, p0, Lcom/metamoji/ui/dialog/NtDialog;->mListener:Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 155
    :goto_0
    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->setHasOnClosedListener(Z)V

    return-void
.end method

.method public show(Landroidx/fragment/app/FragmentTransaction;Ljava/lang/String;)I
    .locals 0

    const-string/jumbo p2, "transaction"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 399
    sget-object p1, Lcom/metamoji/ui/dialog/NtDialog;->logger:Lcom/metamoji/lib/utils/UtLog;

    const-string/jumbo p2, "use show(activity:FragmentActivity,tag:String) instead."

    invoke-virtual {p1, p2}, Lcom/metamoji/lib/utils/UtLog;->error(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/IllegalStateException;

    .line 400
    const-string/jumbo p2, "show(transaction,tag) is forbidden."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .locals 1

    const-string v0, "manager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 395
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lcom/metamoji/ui/dialog/NtDialog;->safeShow(Ljava/lang/String;)V

    return-void
.end method
