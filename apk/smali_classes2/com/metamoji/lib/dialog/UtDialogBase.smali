.class public abstract Lcom/metamoji/lib/dialog/UtDialogBase;
.super Landroidx/fragment/app/DialogFragment;
.source "UtDialogBase.kt"

# interfaces
.implements Lcom/metamoji/lib/dialog/IUtDialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/lib/dialog/UtDialogBase$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUtDialogBase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UtDialogBase.kt\ncom/metamoji/lib/dialog/UtDialogBase\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,382:1\n1#2:383\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0016\n\u0002\u0010\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008&\u0018\u0000 y2\u00020\u00012\u00020\u0002:\u0001yB\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0006\u0010\t\u001a\u00020\nJ\u0010\u0010E\u001a\u00020F2\u0006\u0010\u001b\u001a\u00020\u000cH\u0014J\u0010\u0010Q\u001a\u00020F2\u0006\u0010R\u001a\u00020SH\u0016J\u0008\u0010T\u001a\u00020FH\u0014J\u0008\u0010U\u001a\u00020FH\u0014J\u0008\u0010V\u001a\u00020FH\u0014J\u0008\u0010W\u001a\u00020\u0014H\u0002J\u001a\u0010X\u001a\u00020F2\u0006\u0010Y\u001a\u00020Z2\u0008\u0010[\u001a\u0004\u0018\u00010\nH\u0016J\u0008\u0010a\u001a\u00020FH\u0016J\u0008\u0010b\u001a\u00020FH\u0016J\n\u0010c\u001a\u0004\u0018\u00010dH\u0002J\u0010\u0010e\u001a\u00020F2\u0006\u0010f\u001a\u00020gH\u0016J\u0010\u0010i\u001a\u00020F2\u0006\u0010j\u001a\u00020\nH\u0016J\u0010\u0010l\u001a\u00020F2\u0006\u0010f\u001a\u00020gH\u0016J\u0008\u0010m\u001a\u00020FH\u0014J\u0008\u0010e\u001a\u00020FH\u0014J\u0008\u0010o\u001a\u00020FH\u0004J\u0010\u0010p\u001a\u00020\u000c2\u0006\u0010)\u001a\u00020*H\u0002J\u0008\u0010q\u001a\u00020FH\u0014J\u0008\u0010r\u001a\u00020FH\u0016J\u0010\u0010s\u001a\u00020F2\u0006\u0010)\u001a\u00020*H\u0016J\u0008\u0010t\u001a\u00020FH\u0016J\u001a\u0010u\u001a\u00020F2\u0006\u0010v\u001a\u00020w2\u0008\u0010x\u001a\u0004\u0018\u00010/H\u0016R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R+\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\u000c8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0013\u001a\u00020\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u000eR+\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u000b\u001a\u00020\u00148B@BX\u0082\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u001a\u0010\u0012\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R$\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001b\u001a\u00020\u001c8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R+\u0010\"\u001a\u00020\u00142\u0006\u0010\u000b\u001a\u00020\u00148F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008%\u0010\u0012\u001a\u0004\u0008#\u0010\u0017\"\u0004\u0008$\u0010\u0019R\u0016\u0010&\u001a\n\u0012\u0004\u0012\u00020(\u0018\u00010\'X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010)\u001a\u00020*X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010,\"\u0004\u0008-\u0010.R/\u00100\u001a\u0004\u0018\u00010/2\u0008\u0010\u000b\u001a\u0004\u0018\u00010/8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u00085\u0010\u0012\u001a\u0004\u00081\u00102\"\u0004\u00083\u00104R\u0011\u00106\u001a\u00020\u00018F\u00a2\u0006\u0006\u001a\u0004\u00087\u00108R+\u00109\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\u000c8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008<\u0010\u0012\u001a\u0004\u0008:\u0010\u000e\"\u0004\u0008;\u0010\u0010R+\u0010=\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\u000c8B@BX\u0082\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008@\u0010\u0012\u001a\u0004\u0008>\u0010\u000e\"\u0004\u0008?\u0010\u0010R$\u0010B\u001a\u00020\u000c2\u0006\u0010A\u001a\u00020\u000c8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008C\u0010\u000e\"\u0004\u0008D\u0010\u0010R/\u0010G\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c8B@BX\u0082\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008L\u0010\u0012\u001a\u0004\u0008H\u0010I\"\u0004\u0008J\u0010KR/\u0010M\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c8B@BX\u0082\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008P\u0010\u0012\u001a\u0004\u0008N\u0010I\"\u0004\u0008O\u0010KR\u001e\u0010]\u001a\u00020\u000c2\u0006\u0010\\\u001a\u00020\u000c@BX\u0082\u000e\u00a2\u0006\u0008\n\u0000\"\u0004\u0008^\u0010\u0010R\u001e\u0010_\u001a\u00020\u000c2\u0006\u0010\\\u001a\u00020\u000c@BX\u0082\u000e\u00a2\u0006\u0008\n\u0000\"\u0004\u0008`\u0010\u0010R\u000e\u0010h\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010k\u001a\u00020\u000c8TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008k\u0010\u000eR\u000e\u0010n\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006f"
    }
    d2 = {
        "Lcom/metamoji/lib/dialog/UtDialogBase;",
        "Landroidx/fragment/app/DialogFragment;",
        "Lcom/metamoji/lib/dialog/IUtDialog;",
        "<init>",
        "()V",
        "bundle",
        "Lcom/metamoji/lib/dialog/UtBundleDelegate;",
        "getBundle",
        "()Lcom/metamoji/lib/dialog/UtBundleDelegate;",
        "ensureArguments",
        "Landroid/os/Bundle;",
        "<set-?>",
        "",
        "isDialog",
        "()Z",
        "setDialog",
        "(Z)V",
        "isDialog$delegate",
        "Lkotlin/properties/ReadWriteProperty;",
        "isFragment",
        "",
        "systemZoneOptionValue",
        "getSystemZoneOptionValue",
        "()I",
        "setSystemZoneOptionValue",
        "(I)V",
        "systemZoneOptionValue$delegate",
        "value",
        "Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption;",
        "systemZoneOption",
        "getSystemZoneOption",
        "()Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption;",
        "setSystemZoneOption",
        "(Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption;)V",
        "systemZoneFlags",
        "getSystemZoneFlags",
        "setSystemZoneFlags",
        "systemZoneFlags$delegate",
        "dialogHost",
        "Ljava/lang/ref/WeakReference;",
        "Lcom/metamoji/lib/dialog/IUtDialogHost;",
        "status",
        "Lcom/metamoji/lib/dialog/IUtDialog$Status;",
        "getStatus",
        "()Lcom/metamoji/lib/dialog/IUtDialog$Status;",
        "setStatus",
        "(Lcom/metamoji/lib/dialog/IUtDialog$Status;)V",
        "",
        "immortalTaskName",
        "getImmortalTaskName",
        "()Ljava/lang/String;",
        "setImmortalTaskName",
        "(Ljava/lang/String;)V",
        "immortalTaskName$delegate",
        "asFragment",
        "getAsFragment",
        "()Landroidx/fragment/app/DialogFragment;",
        "doNotResumeTask",
        "getDoNotResumeTask",
        "setDoNotResumeTask",
        "doNotResumeTask$delegate",
        "lightCancelable",
        "getLightCancelable",
        "setLightCancelable",
        "lightCancelable$delegate",
        "c",
        "cancellable",
        "getCancellable",
        "setCancellable",
        "onCancellableChanged",
        "",
        "originalStatusBarVisibility",
        "getOriginalStatusBarVisibility",
        "()Ljava/lang/Boolean;",
        "setOriginalStatusBarVisibility",
        "(Ljava/lang/Boolean;)V",
        "originalStatusBarVisibility$delegate",
        "originalActionBarVisibility",
        "getOriginalActionBarVisibility",
        "setOriginalActionBarVisibility",
        "originalActionBarVisibility$delegate",
        "onAttach",
        "context",
        "Landroid/content/Context;",
        "onDialogOpening",
        "onDialogClosing",
        "onDialogClosed",
        "getActionBarHeight",
        "onViewCreated",
        "view",
        "Landroid/view/View;",
        "savedInstanceState",
        "v",
        "viewDestroyed",
        "setViewDestroyed",
        "dialogClosed",
        "setDialogClosed",
        "onDestroyView",
        "onDetach",
        "queryResultReceptor",
        "Lcom/metamoji/lib/dialog/IUtDialogResultReceptor;",
        "onCancel",
        "dialog",
        "Landroid/content/DialogInterface;",
        "willBeBackSoon",
        "onSaveInstanceState",
        "outState",
        "isAlertDialog",
        "onDismiss",
        "onComplete",
        "notified",
        "notifyResult",
        "setFinishingStatus",
        "internalCloseDialog",
        "forceDismiss",
        "complete",
        "cancel",
        "show",
        "activity",
        "Landroidx/fragment/app/FragmentActivity;",
        "tag",
        "Companion"
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

.field public static final Companion:Lcom/metamoji/lib/dialog/UtDialogBase$Companion;

.field private static final logger:Lcom/metamoji/lib/utils/UtLog;


# instance fields
.field private final bundle:Lcom/metamoji/lib/dialog/UtBundleDelegate;

.field private dialogClosed:Z

.field private dialogHost:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/metamoji/lib/dialog/IUtDialogHost;",
            ">;"
        }
    .end annotation
.end field

.field private final doNotResumeTask$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final immortalTaskName$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final isDialog$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final lightCancelable$delegate:Lkotlin/properties/ReadWriteProperty;

.field private notified:Z

.field private final originalActionBarVisibility$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final originalStatusBarVisibility$delegate:Lkotlin/properties/ReadWriteProperty;

.field private status:Lcom/metamoji/lib/dialog/IUtDialog$Status;

.field private final systemZoneFlags$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final systemZoneOptionValue$delegate:Lkotlin/properties/ReadWriteProperty;

.field private viewDestroyed:Z

.field private willBeBackSoon:Z


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/16 v0, 0x8

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "isDialog"

    const-string v3, "isDialog()Z"

    const-class v4, Lcom/metamoji/lib/dialog/UtDialogBase;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "systemZoneOptionValue"

    const-string v3, "getSystemZoneOptionValue()I"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "systemZoneFlags"

    const-string v3, "getSystemZoneFlags()I"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "immortalTaskName"

    const-string v3, "getImmortalTaskName()Ljava/lang/String;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "doNotResumeTask"

    const-string v3, "getDoNotResumeTask()Z"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "lightCancelable"

    const-string v3, "getLightCancelable()Z"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "originalStatusBarVisibility"

    const-string v3, "getOriginalStatusBarVisibility()Ljava/lang/Boolean;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "originalActionBarVisibility"

    const-string v3, "getOriginalActionBarVisibility()Ljava/lang/Boolean;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lcom/metamoji/lib/dialog/UtDialogBase;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/metamoji/lib/dialog/UtDialogBase$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/lib/dialog/UtDialogBase$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/lib/dialog/UtDialogBase;->Companion:Lcom/metamoji/lib/dialog/UtDialogBase$Companion;

    new-instance v2, Lcom/metamoji/lib/utils/UtLog;

    const/16 v8, 0x18

    const/4 v9, 0x0

    const-string v3, "DLG"

    const/4 v4, 0x0

    const-string v5, "com.metamoji.lib.dialog."

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/metamoji/lib/utils/UtLog;-><init>(Ljava/lang/String;Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v2, Lcom/metamoji/lib/dialog/UtDialogBase;->logger:Lcom/metamoji/lib/utils/UtLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 26
    new-instance v0, Lcom/metamoji/lib/dialog/UtBundleDelegate;

    new-instance v1, Lcom/metamoji/lib/dialog/UtDialogBase$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/metamoji/lib/dialog/UtDialogBase$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/lib/dialog/UtDialogBase;)V

    invoke-direct {v0, v1}, Lcom/metamoji/lib/dialog/UtBundleDelegate;-><init>(Lkotlin/jvm/functions/Function0;)V

    iput-object v0, p0, Lcom/metamoji/lib/dialog/UtDialogBase;->bundle:Lcom/metamoji/lib/dialog/UtBundleDelegate;

    .line 44
    sget-object v1, Lcom/metamoji/lib/dialog/UtDialogConfig;->INSTANCE:Lcom/metamoji/lib/dialog/UtDialogConfig;

    invoke-virtual {v1}, Lcom/metamoji/lib/dialog/UtDialogConfig;->getShowInDialogModeAsDefault()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/dialog/UtBundleDelegate;->booleanWithDefault(Z)Lkotlin/properties/ReadWriteProperty;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/lib/dialog/UtDialogBase;->isDialog$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 50
    sget-object v1, Lcom/metamoji/lib/dialog/UtDialogConfig;->INSTANCE:Lcom/metamoji/lib/dialog/UtDialogConfig;

    invoke-virtual {v1}, Lcom/metamoji/lib/dialog/UtDialogConfig;->getSystemZoneOption()Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/dialog/UtBundleDelegate;->intNonnull(I)Lkotlin/properties/ReadWriteProperty;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/lib/dialog/UtDialogBase;->systemZoneOptionValue$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 56
    sget-object v1, Lcom/metamoji/lib/dialog/UtDialogConfig;->INSTANCE:Lcom/metamoji/lib/dialog/UtDialogConfig;

    invoke-virtual {v1}, Lcom/metamoji/lib/dialog/UtDialogConfig;->getSystemZoneFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/dialog/UtBundleDelegate;->intNonnull(I)Lkotlin/properties/ReadWriteProperty;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/lib/dialog/UtDialogBase;->systemZoneFlags$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 61
    sget-object v1, Lcom/metamoji/lib/dialog/IUtDialog$Status;->UNKNOWN:Lcom/metamoji/lib/dialog/IUtDialog$Status;

    iput-object v1, p0, Lcom/metamoji/lib/dialog/UtDialogBase;->status:Lcom/metamoji/lib/dialog/IUtDialog$Status;

    .line 62
    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtBundleDelegate;->getStringNullable()Lkotlin/properties/ReadWriteProperty;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/lib/dialog/UtDialogBase;->immortalTaskName$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 65
    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtBundleDelegate;->getBooleanFalse()Lkotlin/properties/ReadWriteProperty;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/lib/dialog/UtDialogBase;->doNotResumeTask$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 72
    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtBundleDelegate;->getBooleanTrue()Lkotlin/properties/ReadWriteProperty;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/lib/dialog/UtDialogBase;->lightCancelable$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 85
    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtBundleDelegate;->getBooleanNullable()Lkotlin/properties/ReadWriteProperty;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/lib/dialog/UtDialogBase;->originalStatusBarVisibility$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 86
    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtBundleDelegate;->getBooleanNullable()Lkotlin/properties/ReadWriteProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/lib/dialog/UtDialogBase;->originalActionBarVisibility$delegate:Lkotlin/properties/ReadWriteProperty;

    const/4 v0, 0x1

    .line 150
    iput-boolean v0, p0, Lcom/metamoji/lib/dialog/UtDialogBase;->viewDestroyed:Z

    return-void
.end method

.method public static final synthetic access$getLogger$cp()Lcom/metamoji/lib/utils/UtLog;
    .locals 1

    .line 25
    sget-object v0, Lcom/metamoji/lib/dialog/UtDialogBase;->logger:Lcom/metamoji/lib/utils/UtLog;

    return-object v0
.end method

.method static final bundle$lambda$0(Lcom/metamoji/lib/dialog/UtDialogBase;)Landroid/os/Bundle;
    .locals 0

    .line 26
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialogBase;->ensureArguments()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private final getActionBarHeight()I
    .locals 4

    .line 124
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialogBase;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 125
    :cond_1
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroidx/appcompat/app/ActionBar;->isShowing()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 126
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v2, 0x10102eb

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const-string v2, "obtainStyledAttributes(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 128
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_2
    return v1
.end method

.method private final getLightCancelable()Z
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialogBase;->lightCancelable$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialogBase;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private final getOriginalActionBarVisibility()Ljava/lang/Boolean;
    .locals 3

    .line 86
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialogBase;->originalActionBarVisibility$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialogBase;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method private final getOriginalStatusBarVisibility()Ljava/lang/Boolean;
    .locals 3

    .line 85
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialogBase;->originalStatusBarVisibility$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialogBase;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method private final getSystemZoneOptionValue()I
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialogBase;->systemZoneOptionValue$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialogBase;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final queryResultReceptor()Lcom/metamoji/lib/dialog/IUtDialogResultReceptor;
    .locals 4

    .line 200
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialogBase;->getTag()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 202
    :cond_0
    sget-object v2, Lcom/metamoji/lib/dialog/UtDialogHelper;->INSTANCE:Lcom/metamoji/lib/dialog/UtDialogHelper;

    move-object v3, p0

    check-cast v3, Lcom/metamoji/lib/dialog/IUtDialog;

    invoke-virtual {v2, v3}, Lcom/metamoji/lib/dialog/UtDialogHelper;->parentDialogHost(Lcom/metamoji/lib/dialog/IUtDialog;)Lcom/metamoji/lib/dialog/IUtDialogHost;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2, v0}, Lcom/metamoji/lib/dialog/IUtDialogHost;->queryDialogResultReceptor(Ljava/lang/String;)Lcom/metamoji/lib/dialog/IUtDialogResultReceptor;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    return-object v2

    .line 203
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/metamoji/lib/dialog/UtDialogBase;->dialogHost:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/lib/dialog/IUtDialogHost;

    if-eqz v2, :cond_3

    invoke-interface {v2, v0}, Lcom/metamoji/lib/dialog/IUtDialogHost;->queryDialogResultReceptor(Ljava/lang/String;)Lcom/metamoji/lib/dialog/IUtDialogResultReceptor;

    move-result-object v0

    return-object v0

    :cond_3
    return-object v1
.end method

.method private final setDialogClosed(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 161
    iget-boolean p1, p0, Lcom/metamoji/lib/dialog/UtDialogBase;->dialogClosed:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 162
    iput-boolean p1, p0, Lcom/metamoji/lib/dialog/UtDialogBase;->dialogClosed:Z

    .line 163
    iget-boolean p1, p0, Lcom/metamoji/lib/dialog/UtDialogBase;->viewDestroyed:Z

    if-eqz p1, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialogBase;->onDialogClosed()V

    :cond_0
    return-void
.end method

.method private final setFinishingStatus(Lcom/metamoji/lib/dialog/IUtDialog$Status;)Z
    .locals 4

    .line 289
    invoke-virtual {p1}, Lcom/metamoji/lib/dialog/IUtDialog$Status;->getFinished()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 292
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialogBase;->status:Lcom/metamoji/lib/dialog/IUtDialog$Status;

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/IUtDialog$Status;->getFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 293
    iput-object p1, p0, Lcom/metamoji/lib/dialog/UtDialogBase;->status:Lcom/metamoji/lib/dialog/IUtDialog$Status;

    .line 295
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialogBase;->onDialogClosing()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 297
    sget-object v1, Lcom/metamoji/lib/dialog/UtDialogBase;->logger:Lcom/metamoji/lib/utils/UtLog;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v1, v0, v3, v2, v3}, Lcom/metamoji/lib/utils/UtLog;->error$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    .line 299
    :goto_0
    invoke-virtual {p1}, Lcom/metamoji/lib/dialog/IUtDialog$Status;->getNegative()Z

    move-result p1

    if-nez p1, :cond_0

    .line 300
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialogBase;->onComplete()V

    goto :goto_1

    .line 302
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialogBase;->onCancel()V

    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 290
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ": finishing status is required."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final setLightCancelable(Z)V
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialogBase;->lightCancelable$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialogBase;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method private final setOriginalActionBarVisibility(Ljava/lang/Boolean;)V
    .locals 3

    .line 86
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialogBase;->originalActionBarVisibility$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialogBase;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method private final setOriginalStatusBarVisibility(Ljava/lang/Boolean;)V
    .locals 3

    .line 85
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialogBase;->originalStatusBarVisibility$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialogBase;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method private final setSystemZoneOptionValue(I)V
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialogBase;->systemZoneOptionValue$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialogBase;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method private final setViewDestroyed(Z)V
    .locals 1

    .line 152
    iget-boolean v0, p0, Lcom/metamoji/lib/dialog/UtDialogBase;->viewDestroyed:Z

    if-eq p1, v0, :cond_0

    .line 153
    iput-boolean p1, p0, Lcom/metamoji/lib/dialog/UtDialogBase;->viewDestroyed:Z

    if-eqz p1, :cond_0

    .line 154
    iget-boolean p1, p0, Lcom/metamoji/lib/dialog/UtDialogBase;->dialogClosed:Z

    if-eqz p1, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialogBase;->onDialogClosed()V

    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 348
    sget-object v0, Lcom/metamoji/lib/dialog/IUtDialog$Status;->NEGATIVE:Lcom/metamoji/lib/dialog/IUtDialog$Status;

    invoke-virtual {p0, v0}, Lcom/metamoji/lib/dialog/UtDialogBase;->complete(Lcom/metamoji/lib/dialog/IUtDialog$Status;)V

    return-void
.end method

.method public complete(Lcom/metamoji/lib/dialog/IUtDialog$Status;)V
    .locals 1

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 337
    invoke-direct {p0, p1}, Lcom/metamoji/lib/dialog/UtDialogBase;->setFinishingStatus(Lcom/metamoji/lib/dialog/IUtDialog$Status;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 338
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialogBase;->internalCloseDialog()V

    :cond_0
    return-void
.end method

.method public final ensureArguments()Landroid/os/Bundle;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialogBase;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Lcom/metamoji/lib/dialog/UtDialogBase;->setArguments(Landroid/os/Bundle;)V

    :cond_0
    return-object v0
.end method

.method public forceDismiss()V
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialogBase;->status:Lcom/metamoji/lib/dialog/IUtDialog$Status;

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/IUtDialog$Status;->getFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    sget-object v0, Lcom/metamoji/lib/dialog/IUtDialog$Status;->NEGATIVE:Lcom/metamoji/lib/dialog/IUtDialog$Status;

    iput-object v0, p0, Lcom/metamoji/lib/dialog/UtDialogBase;->status:Lcom/metamoji/lib/dialog/IUtDialog$Status;

    .line 325
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialogBase;->dismissAllowingStateLoss()V

    .line 326
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialogBase;->isDialog()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 328
    invoke-direct {p0, v0}, Lcom/metamoji/lib/dialog/UtDialogBase;->setDialogClosed(Z)V

    .line 330
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialogBase;->notifyResult()V

    return-void
.end method

.method public final getAsFragment()Landroidx/fragment/app/DialogFragment;
    .locals 1

    .line 64
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/DialogFragment;

    return-object v0
.end method

.method public final getBundle()Lcom/metamoji/lib/dialog/UtBundleDelegate;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialogBase;->bundle:Lcom/metamoji/lib/dialog/UtBundleDelegate;

    return-object v0
.end method

.method public final getCancellable()Z
    .locals 1

    .line 74
    invoke-direct {p0}, Lcom/metamoji/lib/dialog/UtDialogBase;->getLightCancelable()Z

    move-result v0

    return v0
.end method

.method public final getDoNotResumeTask()Z
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialogBase;->doNotResumeTask$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialogBase;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getImmortalTaskName()Ljava/lang/String;
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialogBase;->immortalTaskName$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialogBase;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getStatus()Lcom/metamoji/lib/dialog/IUtDialog$Status;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialogBase;->status:Lcom/metamoji/lib/dialog/IUtDialog$Status;

    return-object v0
.end method

.method public final getSystemZoneFlags()I
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialogBase;->systemZoneFlags$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialogBase;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final getSystemZoneOption()Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption;
    .locals 2

    .line 52
    sget-object v0, Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption;->Companion:Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption$Companion;

    invoke-direct {p0}, Lcom/metamoji/lib/dialog/UtDialogBase;->getSystemZoneOptionValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption$Companion;->of(I)Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption;

    move-result-object v0

    return-object v0
.end method

.method protected internalCloseDialog()V
    .locals 1

    .line 313
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialogBase;->dismiss()V

    .line 314
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialogBase;->isDialog()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 316
    invoke-direct {p0, v0}, Lcom/metamoji/lib/dialog/UtDialogBase;->setDialogClosed(Z)V

    .line 318
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialogBase;->notifyResult()V

    return-void
.end method

.method protected isAlertDialog()Z
    .locals 1

    .line 230
    instance-of v0, p0, Landroid/content/DialogInterface$OnClickListener;

    return v0
.end method

.method public final isDialog()Z
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialogBase;->isDialog$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialogBase;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final isFragment()Z
    .locals 1

    .line 45
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialogBase;->isDialog()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected final notifyResult()V
    .locals 2

    .line 275
    iget-boolean v0, p0, Lcom/metamoji/lib/dialog/UtDialogBase;->notified:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 276
    iput-boolean v0, p0, Lcom/metamoji/lib/dialog/UtDialogBase;->notified:Z

    .line 277
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialogBase;->getImmortalTaskName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->INSTANCE:Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;

    invoke-virtual {v1, v0}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->taskOf(Ljava/lang/String;)Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$ITaskInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$ITaskInfo;->getTask()Lcom/metamoji/lib/dialog/task/IUtImmortalTask;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 278
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialogBase;->getDoNotResumeTask()Z

    move-result v1

    if-nez v1, :cond_2

    .line 279
    invoke-interface {v0, p0}, Lcom/metamoji/lib/dialog/task/IUtImmortalTask;->resumeTask(Ljava/lang/Object;)V

    return-void

    .line 281
    :cond_2
    invoke-direct {p0}, Lcom/metamoji/lib/dialog/UtDialogBase;->queryResultReceptor()Lcom/metamoji/lib/dialog/IUtDialogResultReceptor;

    move-result-object v0

    if-eqz v0, :cond_3

    move-object v1, p0

    check-cast v1, Lcom/metamoji/lib/dialog/IUtDialog;

    invoke-interface {v0, v1}, Lcom/metamoji/lib/dialog/IUtDialogResultReceptor;->onDialogResult(Lcom/metamoji/lib/dialog/IUtDialog;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    .line 90
    instance-of v0, p1, Lcom/metamoji/lib/dialog/IUtDialogHost;

    if-eqz v0, :cond_0

    .line 91
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/metamoji/lib/dialog/UtDialogBase;->dialogHost:Ljava/lang/ref/WeakReference;

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialogBase;->isDialog()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialogBase;->getSystemZoneOption()Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption;

    move-result-object v0

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption;->HIDE_ACTION_BAR:Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption;

    if-ne v0, v1, :cond_3

    .line 94
    instance-of v0, p1, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_1

    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 96
    move-object v0, p1

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0}, Lcom/metamoji/lib/utils/ActivityExtKt;->isStatusBarVisible(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/metamoji/lib/dialog/UtDialogBase;->setOriginalStatusBarVisibility(Ljava/lang/Boolean;)V

    .line 97
    invoke-static {p1}, Lcom/metamoji/lib/utils/ActivityExtKt;->isActionBarVisible(Landroidx/appcompat/app/AppCompatActivity;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/metamoji/lib/dialog/UtDialogBase;->setOriginalActionBarVisibility(Ljava/lang/Boolean;)V

    .line 98
    invoke-direct {p0}, Lcom/metamoji/lib/dialog/UtDialogBase;->getOriginalStatusBarVisibility()Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 99
    invoke-static {v0}, Lcom/metamoji/lib/utils/ActivityExtKt;->hideStatusBar(Landroidx/fragment/app/FragmentActivity;)V

    .line 101
    :cond_2
    invoke-direct {p0}, Lcom/metamoji/lib/dialog/UtDialogBase;->getOriginalActionBarVisibility()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 102
    invoke-static {p1}, Lcom/metamoji/lib/utils/ActivityExtKt;->hideActionBar(Landroidx/appcompat/app/AppCompatActivity;)V

    :cond_3
    return-void
.end method

.method protected onCancel()V
    .locals 2

    .line 267
    sget-object v0, Lcom/metamoji/lib/dialog/UtDialogBase;->logger:Lcom/metamoji/lib/utils/UtLog;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    sget-object v0, Lcom/metamoji/lib/dialog/UtDialogBase;->logger:Lcom/metamoji/lib/utils/UtLog;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/metamoji/lib/utils/UtLog;->debug$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ILjava/lang/Object;)V

    .line 213
    sget-object v0, Lcom/metamoji/lib/dialog/IUtDialog$Status;->NEGATIVE:Lcom/metamoji/lib/dialog/IUtDialog$Status;

    invoke-direct {p0, v0}, Lcom/metamoji/lib/dialog/UtDialogBase;->setFinishingStatus(Lcom/metamoji/lib/dialog/IUtDialog$Status;)Z

    .line 214
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method

.method protected onCancellableChanged(Z)V
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lcom/metamoji/lib/dialog/UtDialogBase;->setCancelable(Z)V

    return-void
.end method

.method protected onComplete()V
    .locals 2

    .line 260
    sget-object v0, Lcom/metamoji/lib/dialog/UtDialogBase;->logger:Lcom/metamoji/lib/utils/UtLog;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 171
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    const/4 v0, 0x1

    .line 172
    invoke-direct {p0, v0}, Lcom/metamoji/lib/dialog/UtDialogBase;->setViewDestroyed(Z)V

    return-void
.end method

.method public onDetach()V
    .locals 5

    .line 176
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDetach()V

    const/4 v0, 0x0

    .line 177
    iput-object v0, p0, Lcom/metamoji/lib/dialog/UtDialogBase;->dialogHost:Ljava/lang/ref/WeakReference;

    .line 178
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialogBase;->isDialog()Z

    move-result v1

    if-nez v1, :cond_2

    .line 179
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialogBase;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    instance-of v2, v1, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v2, :cond_0

    check-cast v1, Landroidx/appcompat/app/AppCompatActivity;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_2

    .line 181
    invoke-direct {p0}, Lcom/metamoji/lib/dialog/UtDialogBase;->getOriginalStatusBarVisibility()Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 182
    invoke-direct {p0, v0}, Lcom/metamoji/lib/dialog/UtDialogBase;->setOriginalStatusBarVisibility(Ljava/lang/Boolean;)V

    .line 183
    move-object v2, v1

    check-cast v2, Landroidx/fragment/app/FragmentActivity;

    invoke-static {v2}, Lcom/metamoji/lib/utils/ActivityExtKt;->showStatusBar(Landroidx/fragment/app/FragmentActivity;)V

    .line 185
    :cond_1
    invoke-direct {p0}, Lcom/metamoji/lib/dialog/UtDialogBase;->getOriginalActionBarVisibility()Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 186
    invoke-direct {p0, v0}, Lcom/metamoji/lib/dialog/UtDialogBase;->setOriginalActionBarVisibility(Ljava/lang/Boolean;)V

    .line 187
    invoke-static {v1}, Lcom/metamoji/lib/utils/ActivityExtKt;->showActionBar(Landroidx/appcompat/app/AppCompatActivity;)V

    :cond_2
    return-void
.end method

.method protected onDialogClosed()V
    .locals 0

    return-void
.end method

.method protected onDialogClosing()V
    .locals 0

    return-void
.end method

.method protected onDialogOpening()V
    .locals 0

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    sget-object v0, Lcom/metamoji/lib/dialog/UtDialogBase;->logger:Lcom/metamoji/lib/utils/UtLog;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/metamoji/lib/utils/UtLog;->debug$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ILjava/lang/Object;)V

    .line 238
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialogBase;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    .line 239
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialogBase;->isAlertDialog()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/metamoji/lib/dialog/UtDialogBase;->willBeBackSoon:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_2

    .line 240
    :cond_1
    sget-object v1, Lcom/metamoji/lib/dialog/IUtDialog$Status;->NEGATIVE:Lcom/metamoji/lib/dialog/IUtDialog$Status;

    invoke-direct {p0, v1}, Lcom/metamoji/lib/dialog/UtDialogBase;->setFinishingStatus(Lcom/metamoji/lib/dialog/IUtDialog$Status;)Z

    .line 242
    :cond_2
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 243
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialogBase;->isDialog()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 244
    invoke-direct {p0, v2}, Lcom/metamoji/lib/dialog/UtDialogBase;->setDialogClosed(Z)V

    :cond_3
    if-nez v0, :cond_4

    .line 247
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialogBase;->isDialog()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/metamoji/lib/dialog/UtDialogBase;->willBeBackSoon:Z

    if-nez p1, :cond_5

    .line 251
    :cond_4
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialogBase;->notifyResult()V

    :cond_5
    const/4 p1, 0x0

    .line 253
    iput-boolean p1, p0, Lcom/metamoji/lib/dialog/UtDialogBase;->willBeBackSoon:Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 226
    iput-boolean p1, p0, Lcom/metamoji/lib/dialog/UtDialogBase;->willBeBackSoon:Z

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 138
    invoke-direct {p0, p1}, Lcom/metamoji/lib/dialog/UtDialogBase;->setViewDestroyed(Z)V

    if-nez p2, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialogBase;->onDialogOpening()V

    :cond_0
    return-void
.end method

.method public final setCancellable(Z)V
    .locals 1

    .line 76
    invoke-direct {p0}, Lcom/metamoji/lib/dialog/UtDialogBase;->getLightCancelable()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 77
    invoke-direct {p0, p1}, Lcom/metamoji/lib/dialog/UtDialogBase;->setLightCancelable(Z)V

    .line 78
    invoke-virtual {p0, p1}, Lcom/metamoji/lib/dialog/UtDialogBase;->onCancellableChanged(Z)V

    :cond_0
    return-void
.end method

.method public final setDialog(Z)V
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialogBase;->isDialog$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialogBase;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setDoNotResumeTask(Z)V
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialogBase;->doNotResumeTask$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialogBase;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setImmortalTaskName(Ljava/lang/String;)V
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialogBase;->immortalTaskName$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialogBase;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setStatus(Lcom/metamoji/lib/dialog/IUtDialog$Status;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iput-object p1, p0, Lcom/metamoji/lib/dialog/UtDialogBase;->status:Lcom/metamoji/lib/dialog/IUtDialog$Status;

    return-void
.end method

.method public final setSystemZoneFlags(I)V
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialogBase;->systemZoneFlags$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialogBase;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setSystemZoneOption(Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p1}, Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption;->getValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/metamoji/lib/dialog/UtDialogBase;->setSystemZoneOptionValue(I)V

    return-void
.end method

.method public show(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V
    .locals 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 355
    sget-object v0, Lcom/metamoji/lib/dialog/UtDialogHelper;->INSTANCE:Lcom/metamoji/lib/dialog/UtDialogHelper;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/lib/dialog/UtDialogHelper;->findDialog(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)Lcom/metamoji/lib/dialog/UtDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 356
    sget-object p1, Lcom/metamoji/lib/dialog/UtDialogBase;->logger:Lcom/metamoji/lib/utils/UtLog;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Dialog ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ") is already exists."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/lib/utils/UtLog;->error(Ljava/lang/String;)V

    return-void

    .line 360
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialogBase;->isDialog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 361
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void

    .line 363
    :cond_1
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 364
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x1020002

    .line 365
    move-object v2, p0

    check-cast v2, Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1, v2, p2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    .line 367
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 369
    sget-object p2, Lcom/metamoji/lib/dialog/UtDialogConfig;->INSTANCE:Lcom/metamoji/lib/dialog/UtDialogConfig;

    invoke-virtual {p2}, Lcom/metamoji/lib/dialog/UtDialogConfig;->getShowDialogImmediately()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 370
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    .line 362
    :cond_2
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-void
.end method
