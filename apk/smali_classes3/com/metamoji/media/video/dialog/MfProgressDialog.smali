.class public final Lcom/metamoji/media/video/dialog/MfProgressDialog;
.super Lcom/metamoji/ui/dialog/UtDialogNt;
.source "MfProgressDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion;,
        Lcom/metamoji/media/video/dialog/MfProgressDialog$Control;,
        Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0005\u0018\u0000 *2\u00020\u0001:\u0003*+,B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u0012\u001a\u00020\u0013J\u0008\u0010\u0014\u001a\u00020\u0013H\u0002J\u0008\u0010\u0015\u001a\u00020\u0013H\u0002J\u0008\u0010\u0016\u001a\u00020\u0013H\u0002J\u0008\u0010\u0017\u001a\u00020\u0013H\u0002J\u0008\u0010\u0018\u001a\u00020\u0013H\u0002J\u0008\u0010\u0019\u001a\u00020\u0013H\u0016J\u001a\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u0006\u0010\u001e\u001a\u00020\u001fH\u0014J\u001a\u0010 \u001a\u00020\u00132\u0006\u0010!\u001a\u00020\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016J\u0012\u0010\"\u001a\u00020#2\u0008\u0008\u0001\u0010$\u001a\u00020%H\u0002J+\u0010\"\u001a\u00020#2\u0008\u0008\u0001\u0010$\u001a\u00020%2\u0012\u0010&\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020(0\'\"\u00020(H\u0002\u00a2\u0006\u0002\u0010)R+\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00058B@BX\u0082\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u0012\u0010\u000c\u001a\u00060\rR\u00020\u0000X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0008\u0018\u00010\u000fR\u00020\u0000X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006-"
    }
    d2 = {
        "Lcom/metamoji/media/video/dialog/MfProgressDialog;",
        "Lcom/metamoji/ui/dialog/UtDialogNt;",
        "<init>",
        "()V",
        "<set-?>",
        "",
        "isMulti",
        "()Z",
        "setMulti",
        "(Z)V",
        "isMulti$delegate",
        "Lkotlin/properties/ReadWriteProperty;",
        "model",
        "Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;",
        "control",
        "Lcom/metamoji/media/video/dialog/MfProgressDialog$Control;",
        "openingEvent",
        "Lcom/metamoji/media/video/dialog/SuspendingEvent;",
        "closeDialog",
        "",
        "goBackground",
        "abort",
        "confirm",
        "ignore",
        "retry",
        "preCreateBodyView",
        "createBodyView",
        "Landroid/view/View;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "inflater",
        "Lcom/metamoji/lib/dialog/UtDialog$IViewInflater;",
        "onViewCreated",
        "view",
        "formatString",
        "",
        "id",
        "",
        "args",
        "",
        "",
        "(I[Ljava/lang/Object;)Ljava/lang/String;",
        "Companion",
        "Model",
        "Control",
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

.field public static final Companion:Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion;

.field private static continuationTask:Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$ContinuationStatus;",
            ">;"
        }
    .end annotation
.end field

.field private static final dialogCanceller:Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;

.field private static dialogInstance:Lcom/metamoji/media/video/dialog/MfProgressDialog;

.field private static final isBusy:Z

.field private static final logger:Lcom/metamoji/lib/utils/UtLog;


# instance fields
.field private control:Lcom/metamoji/media/video/dialog/MfProgressDialog$Control;

.field private final isMulti$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final model:Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;

.field private final openingEvent:Lcom/metamoji/media/video/dialog/SuspendingEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/4 v0, 0x1

    new-array v1, v0, [Lkotlin/reflect/KProperty;

    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v3, "isMulti"

    const-string v4, "isMulti()Z"

    const-class v5, Lcom/metamoji/media/video/dialog/MfProgressDialog;

    const/4 v6, 0x0

    invoke-direct {v2, v5, v3, v4, v6}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v2, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v2

    aput-object v2, v1, v6

    sput-object v1, Lcom/metamoji/media/video/dialog/MfProgressDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v1, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/metamoji/media/video/dialog/MfProgressDialog;->Companion:Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion;

    new-instance v7, Lcom/metamoji/lib/utils/UtLog;

    sget-object v9, Lcom/metamoji/ui/dialog/NtDialog;->logger:Lcom/metamoji/lib/utils/UtLog;

    const/16 v13, 0x18

    const/4 v14, 0x0

    const-string v8, "MF"

    const-string v10, "com.metamoji.media.video.dialog."

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v7 .. v14}, Lcom/metamoji/lib/utils/UtLog;-><init>(Ljava/lang/String;Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v7, Lcom/metamoji/media/video/dialog/MfProgressDialog;->logger:Lcom/metamoji/lib/utils/UtLog;

    new-instance v1, Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;

    invoke-direct {v1}, Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;-><init>()V

    sput-object v1, Lcom/metamoji/media/video/dialog/MfProgressDialog;->dialogCanceller:Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;

    sget-object v1, Lcom/metamoji/media/video/dialog/MfProgressDialog;->dialogInstance:Lcom/metamoji/media/video/dialog/MfProgressDialog;

    if-nez v1, :cond_2

    sget-object v1, Lcom/metamoji/media/video/VfVideoFileManager;->Companion:Lcom/metamoji/media/video/VfVideoFileManager$Companion;

    invoke-virtual {v1}, Lcom/metamoji/media/video/VfVideoFileManager$Companion;->getInstance()Lcom/metamoji/media/video/VfVideoFileManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/media/video/VfVideoFileManager;->getUploader()Lcom/metamoji/media/video/uploader/VfUploader;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/metamoji/media/video/uploader/VfUploader;->getCanEmergencyUpload()Z

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v6

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v6

    :cond_2
    :goto_1
    sput-boolean v0, Lcom/metamoji/media/video/dialog/MfProgressDialog;->isBusy:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/UtDialogNt;-><init>()V

    .line 374
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfProgressDialog;->getBundle()Lcom/metamoji/lib/dialog/UtBundleDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtBundleDelegate;->getBooleanFalse()Lkotlin/properties/ReadWriteProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/media/video/dialog/MfProgressDialog;->isMulti$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 489
    new-instance v0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;

    invoke-direct {v0, p0}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;-><init>(Lcom/metamoji/media/video/dialog/MfProgressDialog;)V

    iput-object v0, p0, Lcom/metamoji/media/video/dialog/MfProgressDialog;->model:Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;

    .line 495
    new-instance v0, Lcom/metamoji/media/video/dialog/SuspendingEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/metamoji/media/video/dialog/SuspendingEvent;-><init>(ZZ)V

    iput-object v0, p0, Lcom/metamoji/media/video/dialog/MfProgressDialog;->openingEvent:Lcom/metamoji/media/video/dialog/SuspendingEvent;

    return-void
.end method

.method private final abort()V
    .locals 2

    .line 513
    sget-object v0, Lcom/metamoji/media/video/dialog/MfProgressDialog;->continuationTask:Lkotlin/coroutines/Continuation;

    if-eqz v0, :cond_0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v1, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$ContinuationStatus;->CANCEL:Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$ContinuationStatus;

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    .line 514
    sput-object v0, Lcom/metamoji/media/video/dialog/MfProgressDialog;->continuationTask:Lkotlin/coroutines/Continuation;

    return-void
.end method

.method public static final synthetic access$abort(Lcom/metamoji/media/video/dialog/MfProgressDialog;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfProgressDialog;->abort()V

    return-void
.end method

.method public static final synthetic access$confirm(Lcom/metamoji/media/video/dialog/MfProgressDialog;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfProgressDialog;->confirm()V

    return-void
.end method

.method public static final synthetic access$formatString(Lcom/metamoji/media/video/dialog/MfProgressDialog;I)Ljava/lang/String;
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/metamoji/media/video/dialog/MfProgressDialog;->formatString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs synthetic access$formatString(Lcom/metamoji/media/video/dialog/MfProgressDialog;I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/metamoji/media/video/dialog/MfProgressDialog;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getContinuationTask$cp()Lkotlin/coroutines/Continuation;
    .locals 1

    .line 30
    sget-object v0, Lcom/metamoji/media/video/dialog/MfProgressDialog;->continuationTask:Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public static final synthetic access$getControl$p(Lcom/metamoji/media/video/dialog/MfProgressDialog;)Lcom/metamoji/media/video/dialog/MfProgressDialog$Control;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/metamoji/media/video/dialog/MfProgressDialog;->control:Lcom/metamoji/media/video/dialog/MfProgressDialog$Control;

    return-object p0
.end method

.method public static final synthetic access$getDialogCanceller$cp()Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;
    .locals 1

    .line 30
    sget-object v0, Lcom/metamoji/media/video/dialog/MfProgressDialog;->dialogCanceller:Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;

    return-object v0
.end method

.method public static final synthetic access$getDialogInstance$cp()Lcom/metamoji/media/video/dialog/MfProgressDialog;
    .locals 1

    .line 30
    sget-object v0, Lcom/metamoji/media/video/dialog/MfProgressDialog;->dialogInstance:Lcom/metamoji/media/video/dialog/MfProgressDialog;

    return-object v0
.end method

.method public static final synthetic access$getLogger$cp()Lcom/metamoji/lib/utils/UtLog;
    .locals 1

    .line 30
    sget-object v0, Lcom/metamoji/media/video/dialog/MfProgressDialog;->logger:Lcom/metamoji/lib/utils/UtLog;

    return-object v0
.end method

.method public static final synthetic access$getModel$p(Lcom/metamoji/media/video/dialog/MfProgressDialog;)Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/metamoji/media/video/dialog/MfProgressDialog;->model:Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;

    return-object p0
.end method

.method public static final synthetic access$getOpeningEvent$p(Lcom/metamoji/media/video/dialog/MfProgressDialog;)Lcom/metamoji/media/video/dialog/SuspendingEvent;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/metamoji/media/video/dialog/MfProgressDialog;->openingEvent:Lcom/metamoji/media/video/dialog/SuspendingEvent;

    return-object p0
.end method

.method public static final synthetic access$goBackground(Lcom/metamoji/media/video/dialog/MfProgressDialog;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfProgressDialog;->goBackground()V

    return-void
.end method

.method public static final synthetic access$ignore(Lcom/metamoji/media/video/dialog/MfProgressDialog;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfProgressDialog;->ignore()V

    return-void
.end method

.method public static final synthetic access$isBusy$cp()Z
    .locals 1

    .line 30
    sget-boolean v0, Lcom/metamoji/media/video/dialog/MfProgressDialog;->isBusy:Z

    return v0
.end method

.method public static final synthetic access$isMulti(Lcom/metamoji/media/video/dialog/MfProgressDialog;)Z
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfProgressDialog;->isMulti()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$retry(Lcom/metamoji/media/video/dialog/MfProgressDialog;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfProgressDialog;->retry()V

    return-void
.end method

.method public static final synthetic access$setContinuationTask$cp(Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 30
    sput-object p0, Lcom/metamoji/media/video/dialog/MfProgressDialog;->continuationTask:Lkotlin/coroutines/Continuation;

    return-void
.end method

.method public static final synthetic access$setDialogInstance$cp(Lcom/metamoji/media/video/dialog/MfProgressDialog;)V
    .locals 0

    .line 30
    sput-object p0, Lcom/metamoji/media/video/dialog/MfProgressDialog;->dialogInstance:Lcom/metamoji/media/video/dialog/MfProgressDialog;

    return-void
.end method

.method public static final synthetic access$setMulti(Lcom/metamoji/media/video/dialog/MfProgressDialog;Z)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/metamoji/media/video/dialog/MfProgressDialog;->setMulti(Z)V

    return-void
.end method

.method static final closeDialog$lambda$0(Lcom/metamoji/media/video/dialog/MfProgressDialog;)Lkotlin/Unit;
    .locals 0

    .line 501
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfProgressDialog;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 504
    :catchall_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final confirm()V
    .locals 2

    .line 518
    sget-object v0, Lcom/metamoji/media/video/dialog/MfProgressDialog;->continuationTask:Lkotlin/coroutines/Continuation;

    if-eqz v0, :cond_0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v1, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$ContinuationStatus;->CONFIRM:Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$ContinuationStatus;

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    .line 519
    sput-object v0, Lcom/metamoji/media/video/dialog/MfProgressDialog;->continuationTask:Lkotlin/coroutines/Continuation;

    return-void
.end method

.method private final formatString(I)Ljava/lang/String;
    .locals 6

    .line 602
    invoke-virtual {p0, p1}, Lcom/metamoji/media/video/dialog/MfProgressDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string p1, "getString(...)"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "%@"

    const-string v2, "%s"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final varargs formatString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 607
    invoke-direct {p0, p1}, Lcom/metamoji/media/video/dialog/MfProgressDialog;->formatString(I)Ljava/lang/String;

    move-result-object p1

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "format(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final goBackground()V
    .locals 1

    const/4 v0, 0x0

    .line 508
    sput-object v0, Lcom/metamoji/media/video/dialog/MfProgressDialog;->dialogInstance:Lcom/metamoji/media/video/dialog/MfProgressDialog;

    .line 509
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfProgressDialog;->dismiss()V

    return-void
.end method

.method private final ignore()V
    .locals 2

    .line 523
    sget-object v0, Lcom/metamoji/media/video/dialog/MfProgressDialog;->continuationTask:Lkotlin/coroutines/Continuation;

    if-eqz v0, :cond_0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v1, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$ContinuationStatus;->IGNORE:Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$ContinuationStatus;

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    .line 524
    sput-object v0, Lcom/metamoji/media/video/dialog/MfProgressDialog;->continuationTask:Lkotlin/coroutines/Continuation;

    return-void
.end method

.method private final isMulti()Z
    .locals 3

    .line 374
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfProgressDialog;->isMulti$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/media/video/dialog/MfProgressDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private final retry()V
    .locals 2

    .line 528
    sget-object v0, Lcom/metamoji/media/video/dialog/MfProgressDialog;->continuationTask:Lkotlin/coroutines/Continuation;

    if-eqz v0, :cond_0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v1, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$ContinuationStatus;->RETRY:Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$ContinuationStatus;

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    .line 529
    sput-object v0, Lcom/metamoji/media/video/dialog/MfProgressDialog;->continuationTask:Lkotlin/coroutines/Continuation;

    return-void
.end method

.method private final setMulti(Z)V
    .locals 3

    .line 374
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfProgressDialog;->isMulti$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/media/video/dialog/MfProgressDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final closeDialog()V
    .locals 2

    .line 499
    sget-object v0, Lcom/metamoji/media/video/dialog/MfProgressDialog;->Companion:Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion;

    new-instance v1, Lcom/metamoji/media/video/dialog/MfProgressDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/metamoji/media/video/dialog/MfProgressDialog$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/media/video/dialog/MfProgressDialog;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion;->mainThread(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method protected createBodyView(Landroid/os/Bundle;Lcom/metamoji/lib/dialog/UtDialog$IViewInflater;)Landroid/view/View;
    .locals 1

    const-string p1, "inflater"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 544
    sget p1, Lcom/metamoji/noteanytime/R$layout;->dialog_media_progress_dialog:I

    invoke-interface {p2, p1}, Lcom/metamoji/lib/dialog/UtDialog$IViewInflater;->inflate(I)Landroid/view/View;

    move-result-object p1

    .line 545
    new-instance p2, Lcom/metamoji/media/video/dialog/MfProgressDialog$Control;

    invoke-direct {p2, p0, p1}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Control;-><init>(Lcom/metamoji/media/video/dialog/MfProgressDialog;Landroid/view/View;)V

    iput-object p2, p0, Lcom/metamoji/media/video/dialog/MfProgressDialog;->control:Lcom/metamoji/media/video/dialog/MfProgressDialog$Control;

    .line 546
    sget-object p2, Lcom/metamoji/media/video/dialog/MfProgressDialog;->dialogInstance:Lcom/metamoji/media/video/dialog/MfProgressDialog;

    if-eqz p2, :cond_0

    .line 547
    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfProgressDialog;->model:Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;

    iget-object p2, p2, Lcom/metamoji/media/video/dialog/MfProgressDialog;->model:Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;

    invoke-virtual {v0, p2}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;->initByPreviousModel(Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;)V

    .line 549
    sput-object p0, Lcom/metamoji/media/video/dialog/MfProgressDialog;->dialogInstance:Lcom/metamoji/media/video/dialog/MfProgressDialog;

    return-object p1

    .line 551
    :cond_0
    iget-object p2, p0, Lcom/metamoji/media/video/dialog/MfProgressDialog;->model:Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;->initByPreviousModel(Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;)V

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 557
    invoke-super {p0, p1, p2}, Lcom/metamoji/ui/dialog/UtDialogNt;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 558
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    new-instance p1, Lcom/metamoji/media/video/dialog/MfProgressDialog$onViewCreated$1;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/metamoji/media/video/dialog/MfProgressDialog$onViewCreated$1;-><init>(Lcom/metamoji/media/video/dialog/MfProgressDialog;Lkotlin/coroutines/Continuation;)V

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public preCreateBodyView()V
    .locals 2

    .line 533
    invoke-super {p0}, Lcom/metamoji/ui/dialog/UtDialogNt;->preCreateBodyView()V

    const/4 v0, 0x0

    .line 534
    invoke-virtual {p0, v0}, Lcom/metamoji/media/video/dialog/MfProgressDialog;->setCancellable(Z)V

    const/4 v1, 0x1

    .line 535
    invoke-virtual {p0, v1}, Lcom/metamoji/media/video/dialog/MfProgressDialog;->setNoHeader(Z)V

    .line 536
    invoke-virtual {p0, v1}, Lcom/metamoji/media/video/dialog/MfProgressDialog;->setBodyContainerMargin(I)V

    .line 537
    invoke-virtual {p0, v0}, Lcom/metamoji/media/video/dialog/MfProgressDialog;->setAnimationEffect(Z)V

    .line 538
    sget-object v0, Lcom/metamoji/lib/dialog/UtDialog$WidthOption;->COMPACT:Lcom/metamoji/lib/dialog/UtDialog$WidthOption;

    invoke-virtual {p0, v0}, Lcom/metamoji/media/video/dialog/MfProgressDialog;->setWidthOption(Lcom/metamoji/lib/dialog/UtDialog$WidthOption;)V

    .line 539
    sget-object v0, Lcom/metamoji/lib/dialog/UtDialog$HeightOption;->COMPACT:Lcom/metamoji/lib/dialog/UtDialog$HeightOption;

    invoke-virtual {p0, v0}, Lcom/metamoji/media/video/dialog/MfProgressDialog;->setHeightOption(Lcom/metamoji/lib/dialog/UtDialog$HeightOption;)V

    .line 540
    sget-object v0, Lcom/metamoji/lib/dialog/UtDialog$GravityOption;->CENTER:Lcom/metamoji/lib/dialog/UtDialog$GravityOption;

    invoke-virtual {p0, v0}, Lcom/metamoji/media/video/dialog/MfProgressDialog;->setGravityOption(Lcom/metamoji/lib/dialog/UtDialog$GravityOption;)V

    return-void
.end method
