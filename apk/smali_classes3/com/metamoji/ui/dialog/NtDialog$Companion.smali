.class public final Lcom/metamoji/ui/dialog/NtDialog$Companion;
.super Ljava/lang/Object;
.source "NtDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/dialog/NtDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNtDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NtDialog.kt\ncom/metamoji/ui/dialog/NtDialog$Companion\n*L\n1#1,461:1\n440#1,7:462\n*S KotlinDebug\n*F\n+ 1 NtDialog.kt\ncom/metamoji/ui/dialog/NtDialog$Companion\n*L\n454#1:462,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0007H\u0007J2\u0010\r\u001a\u00020\u000b\"\u0006\u0008\u0000\u0010\u000e\u0018\u00012\u0006\u0010\u000c\u001a\u00020\u00072\u0014\u0008\u0004\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u0002H\u000e\u0012\u0004\u0012\u00020\u000b0\u0010H\u0086\u0008\u00f8\u0001\u0000J$\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u00072\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u000b0\u0010H\u0007R\u0010\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u00020\u00078\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\u00078\u0006X\u0087D\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/metamoji/ui/dialog/NtDialog$Companion;",
        "",
        "<init>",
        "()V",
        "logger",
        "Lcom/metamoji/lib/utils/UtLog;",
        "Key_params",
        "",
        "Key_ReconstructDialogFlag",
        "Key_CancelDialogFlag",
        "closeDialog",
        "",
        "tag",
        "withDialog",
        "T",
        "fn",
        "Lkotlin/Function1;",
        "javaWithDialog",
        "Lcom/metamoji/lib/dialog/UtDialog;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog$Companion;-><init>()V

    return-void
.end method

.method static final closeDialog$lambda$0(Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 429
    sget-object v0, Lcom/metamoji/lib/dialog/UtDialogHelper;->INSTANCE:Lcom/metamoji/lib/dialog/UtDialogHelper;

    invoke-virtual {v0, p1, p0}, Lcom/metamoji/lib/dialog/UtDialogHelper;->findDialog(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)Lcom/metamoji/lib/dialog/UtDialog;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->cancel()V

    .line 430
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final closeDialog(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 428
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    const-string v1, "getInstance(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/metamoji/ui/dialog/NtDialog$Companion$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/metamoji/ui/dialog/NtDialog$Companion$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/metamoji/ui/UiCurrentActivityManagerExtKt;->withActivity(Lcom/metamoji/ui/UiCurrentActivityManager;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final javaWithDialog(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 2
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

    const-string/jumbo v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fn"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 462
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    const-string v1, "getInstance(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/metamoji/ui/dialog/NtDialog$Companion$javaWithDialog$$inlined$withDialog$1;

    invoke-direct {v1, p1, p2}, Lcom/metamoji/ui/dialog/NtDialog$Companion$javaWithDialog$$inlined$withDialog$1;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/metamoji/ui/UiCurrentActivityManagerExtKt;->withActivity(Lcom/metamoji/ui/UiCurrentActivityManager;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final synthetic withDialog(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fn"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 440
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    const-string v1, "getInstance(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v1, Lcom/metamoji/ui/dialog/NtDialog$Companion$withDialog$1;

    invoke-direct {v1, p1, p2}, Lcom/metamoji/ui/dialog/NtDialog$Companion$withDialog$1;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/metamoji/ui/UiCurrentActivityManagerExtKt;->withActivity(Lcom/metamoji/ui/UiCurrentActivityManager;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
