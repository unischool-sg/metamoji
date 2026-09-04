.class public final Lcom/metamoji/nt/mv/MvDebug$Companion;
.super Ljava/lang/Object;
.source "MvDebug.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/mv/MvDebug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001a\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0007J\u0008\u0010\u0010\u001a\u00020\u000bH\u0007J\u0008\u0010\u0011\u001a\u00020\u0005H\u0002J\u0008\u0010\u0012\u001a\u00020\u0005H\u0002J\u0008\u0010\u0013\u001a\u00020\u0005H\u0002J\u001a\u0010\u0014\u001a\u00020\u00052\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0017\u001a\u00020\u0016H\u0007R\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/metamoji/nt/mv/MvDebug$Companion;",
        "",
        "<init>",
        "()V",
        "showMenu",
        "",
        "activity",
        "Landroidx/fragment/app/FragmentActivity;",
        "options",
        "Lcom/metamoji/cm/CmContext;",
        "mRestoreSetting",
        "",
        "getMRestoreSetting",
        "()Z",
        "setMRestoreSetting",
        "(Z)V",
        "isRestoreSetting",
        "resetSheet",
        "resetItem",
        "resetBgimage",
        "noteInfo",
        "driveId",
        "",
        "docId",
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

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/nt/mv/MvDebug$Companion;-><init>()V

    return-void
.end method

.method static final noteInfo$lambda$5(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 127
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "clipboard"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type android.content.ClipboardManager"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/content/ClipboardManager;

    .line 128
    const-string p2, ""

    check-cast p2, Ljava/lang/CharSequence;

    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {p2, p0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p0

    .line 129
    invoke-virtual {p1, p0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    return-void
.end method

.method private final resetBgimage()V
    .locals 2

    .line 95
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    .line 96
    new-instance v1, Lcom/metamoji/nt/mv/MvDebug$Companion$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0}, Lcom/metamoji/nt/mv/MvDebug$Companion$$ExternalSyntheticLambda4;-><init>(Lcom/metamoji/cm/CmTaskManager;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method static final resetBgimage$lambda$4(Lcom/metamoji/cm/CmTaskManager;)V
    .locals 2

    .line 97
    invoke-virtual {p0}, Lcom/metamoji/cm/CmTaskManager;->invokeWaitScreenNow()V

    .line 98
    invoke-static {}, Lcom/metamoji/lb/LbLibraryBgImageManager;->getInstance()Lcom/metamoji/lb/LbLibraryBgImageManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/lb/LbLibraryBgImageManager;->setupSystemItem(Z)Z

    .line 99
    invoke-virtual {p0}, Lcom/metamoji/cm/CmTaskManager;->revokeWaitScreenNow()V

    return-void
.end method

.method private final resetItem()V
    .locals 2

    .line 83
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    .line 84
    new-instance v1, Lcom/metamoji/nt/mv/MvDebug$Companion$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lcom/metamoji/nt/mv/MvDebug$Companion$$ExternalSyntheticLambda2;-><init>(Lcom/metamoji/cm/CmTaskManager;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method static final resetItem$lambda$3(Lcom/metamoji/cm/CmTaskManager;)V
    .locals 2

    .line 85
    invoke-virtual {p0}, Lcom/metamoji/cm/CmTaskManager;->invokeWaitScreenNow()V

    .line 86
    invoke-static {}, Lcom/metamoji/lb/LbLibraryItemManager;->getInstance()Lcom/metamoji/lb/LbLibraryItemManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/lb/LbLibraryItemManager;->setupSystemItem(Z)Z

    .line 87
    invoke-virtual {p0}, Lcom/metamoji/cm/CmTaskManager;->revokeWaitScreenNow()V

    return-void
.end method

.method private final resetSheet()V
    .locals 2

    .line 71
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    .line 72
    new-instance v1, Lcom/metamoji/nt/mv/MvDebug$Companion$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/metamoji/nt/mv/MvDebug$Companion$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/cm/CmTaskManager;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method static final resetSheet$lambda$2(Lcom/metamoji/cm/CmTaskManager;)V
    .locals 2

    .line 73
    invoke-virtual {p0}, Lcom/metamoji/cm/CmTaskManager;->invokeWaitScreenNow()V

    .line 74
    invoke-static {}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->getInstance()Lcom/metamoji/lb/LbLibrarySheetTemplateManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->setupSystemSheetTemplate(Z)Z

    .line 75
    invoke-virtual {p0}, Lcom/metamoji/cm/CmTaskManager;->revokeWaitScreenNow()V

    return-void
.end method

.method static final showMenu$lambda$1(Landroid/view/View;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 40
    sget-object p0, Lcom/metamoji/ui/PopupCommand;->CABINET_DEBUG_FORCE_LOGOUT:Lcom/metamoji/ui/PopupCommand;

    if-ne p1, p0, :cond_0

    .line 41
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p0

    new-instance p1, Lcom/metamoji/nt/mv/MvDebug$Companion$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/metamoji/nt/mv/MvDebug$Companion$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, p1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void

    .line 43
    :cond_0
    sget-object p0, Lcom/metamoji/ui/PopupCommand;->CABINET_DEBUG_RESET_SHEET:Lcom/metamoji/ui/PopupCommand;

    if-ne p1, p0, :cond_1

    .line 44
    sget-object p0, Lcom/metamoji/nt/mv/MvDebug;->Companion:Lcom/metamoji/nt/mv/MvDebug$Companion;

    invoke-direct {p0}, Lcom/metamoji/nt/mv/MvDebug$Companion;->resetSheet()V

    return-void

    .line 46
    :cond_1
    sget-object p0, Lcom/metamoji/ui/PopupCommand;->CABINET_DEBUG_RESET_ITEM:Lcom/metamoji/ui/PopupCommand;

    if-ne p1, p0, :cond_2

    .line 47
    sget-object p0, Lcom/metamoji/nt/mv/MvDebug;->Companion:Lcom/metamoji/nt/mv/MvDebug$Companion;

    invoke-direct {p0}, Lcom/metamoji/nt/mv/MvDebug$Companion;->resetItem()V

    return-void

    .line 49
    :cond_2
    sget-object p0, Lcom/metamoji/ui/PopupCommand;->CABINET_DEBUG_RESET_BGIMAGE:Lcom/metamoji/ui/PopupCommand;

    if-ne p1, p0, :cond_3

    .line 50
    sget-object p0, Lcom/metamoji/nt/mv/MvDebug;->Companion:Lcom/metamoji/nt/mv/MvDebug$Companion;

    invoke-direct {p0}, Lcom/metamoji/nt/mv/MvDebug$Companion;->resetBgimage()V

    return-void

    .line 52
    :cond_3
    sget-object p0, Lcom/metamoji/ui/PopupCommand;->CABINET_DEBUG_RESTORE_SETTINGS:Lcom/metamoji/ui/PopupCommand;

    if-ne p1, p0, :cond_4

    .line 53
    sget-object p0, Lcom/metamoji/nt/mv/MvDebug;->Companion:Lcom/metamoji/nt/mv/MvDebug$Companion;

    sget-object p1, Lcom/metamoji/nt/mv/MvDebug;->Companion:Lcom/metamoji/nt/mv/MvDebug$Companion;

    invoke-virtual {p1}, Lcom/metamoji/nt/mv/MvDebug$Companion;->getMRestoreSetting()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/mv/MvDebug$Companion;->setMRestoreSetting(Z)V

    :cond_4
    return-void
.end method

.method static final showMenu$lambda$1$lambda$0()V
    .locals 2

    .line 41
    sget-object v0, Lcom/metamoji/ui/cabinet/user/LoginPageActivity;->Companion:Lcom/metamoji/ui/cabinet/user/LoginPageActivity$Companion;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/cabinet/user/LoginPageActivity$Companion;->logoutWithClearPasscode(Z)V

    return-void
.end method


# virtual methods
.method public final getMRestoreSetting()Z
    .locals 1

    .line 61
    invoke-static {}, Lcom/metamoji/nt/mv/MvDebug;->access$getMRestoreSetting$cp()Z

    move-result v0

    return v0
.end method

.method public final isRestoreSetting()Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 64
    invoke-virtual {p0}, Lcom/metamoji/nt/mv/MvDebug$Companion;->getMRestoreSetting()Z

    move-result v0

    return v0
.end method

.method public final noteInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "docId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    .line 110
    invoke-static {p1, p2}, Lcom/metamoji/dvm/DvmUtil;->getDocTitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 111
    const-string v2, "format(...)"

    const/4 v3, 0x1

    if-nez p1, :cond_0

    sget-object v4, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {}, Lcom/metamoji/dvm/DvmUtil;->getPrivateDrive()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    const-string v5, "(null) %s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v4, p1

    .line 112
    :goto_0
    invoke-static {p1, p2}, Lcom/metamoji/dvm/DvmUtil;->isShareNote(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {p1, p2}, Lcom/metamoji/dvm/DvmUtil;->getRoomId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const-string p1, ""

    .line 114
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    sget-object v6, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v6, "title\uff1a%s\n"

    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v4, "driveId\uff1a%s\n"

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    const-string v1, "docId\uff1a%s\n"

    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    sget-object p2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    iget-object p2, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyId:Ljava/lang/String;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    const-string v1, "companyId\uff1a%s\n"

    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    sget-object p2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    iget-object p2, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    const-string/jumbo v0, "userId\uff1a%s\n"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    sget-object p2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo p2, "roomId\uff1a%s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "toString(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/ui/UiCurrentActivityManager;->getCurrentActivityOrNull()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Lcom/metamoji/cm/CmUtils;->createAlertDialog(Landroidx/fragment/app/FragmentActivity;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    .line 124
    const-string/jumbo v0, "\u30ce\u30fc\u30c8\u60c5\u5831"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 125
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 126
    const-string/jumbo v0, "\u30af\u30ea\u30c3\u30d7\u30dc\u30fc\u30c9\u3078\u30b3\u30d4\u30fc"

    check-cast v0, Ljava/lang/CharSequence;

    new-instance v1, Lcom/metamoji/nt/mv/MvDebug$Companion$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lcom/metamoji/nt/mv/MvDebug$Companion$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 131
    const-string/jumbo p1, "\u9589\u3058\u308b"

    check-cast p1, Ljava/lang/CharSequence;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 p1, 0x0

    .line 132
    invoke-virtual {p2, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 133
    invoke-virtual {p2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const-string p2, "create(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method public final setMRestoreSetting(Z)V
    .locals 0

    .line 61
    invoke-static {p1}, Lcom/metamoji/nt/mv/MvDebug;->access$setMRestoreSetting$cp(Z)V

    return-void
.end method

.method public final showMenu(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/cm/CmContext;)V
    .locals 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string p2, "activity"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 31
    new-instance v0, Lcom/metamoji/ui/UiMenuItem;

    sget-object v1, Lcom/metamoji/ui/PopupCommand;->CABINET_DEBUG_FORCE_LOGOUT:Lcom/metamoji/ui/PopupCommand;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const-string/jumbo v3, "\u5f37\u5236\u30ed\u30b0\u30a2\u30a6\u30c8"

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/ui/UiMenuItem;-><init>(Lcom/metamoji/ui/PopupCommand;Ljava/lang/Object;Ljava/lang/String;II)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    new-instance v1, Lcom/metamoji/ui/UiMenuItem;

    sget-object v2, Lcom/metamoji/ui/PopupCommand;->CABINET_DEBUG_RESET_ITEM:Lcom/metamoji/ui/PopupCommand;

    const/4 v6, 0x0

    const/4 v3, 0x0

    const-string/jumbo v4, "\u7528\u7d19\u306e\u518d\u30a4\u30f3\u30b9\u30c8\u30fc\u30eb"

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/ui/UiMenuItem;-><init>(Lcom/metamoji/ui/PopupCommand;Ljava/lang/Object;Ljava/lang/String;II)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    new-instance v2, Lcom/metamoji/ui/UiMenuItem;

    sget-object v3, Lcom/metamoji/ui/PopupCommand;->CABINET_DEBUG_RESET_SHEET:Lcom/metamoji/ui/PopupCommand;

    const/4 v7, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "\u30a2\u30a4\u30c6\u30e0\u306e\u518d\u30a4\u30f3\u30b9\u30c8\u30fc\u30eb"

    invoke-direct/range {v2 .. v7}, Lcom/metamoji/ui/UiMenuItem;-><init>(Lcom/metamoji/ui/PopupCommand;Ljava/lang/Object;Ljava/lang/String;II)V

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    new-instance v3, Lcom/metamoji/ui/UiMenuItem;

    sget-object v4, Lcom/metamoji/ui/PopupCommand;->CABINET_DEBUG_RESET_BGIMAGE:Lcom/metamoji/ui/PopupCommand;

    const/4 v8, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "\u80cc\u666f\u753b\u50cf\u306e\u518d\u30a4\u30f3\u30b9\u30c8\u30fc\u30eb"

    invoke-direct/range {v3 .. v8}, Lcom/metamoji/ui/UiMenuItem;-><init>(Lcom/metamoji/ui/PopupCommand;Ljava/lang/Object;Ljava/lang/String;II)V

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    invoke-virtual {p0}, Lcom/metamoji/nt/mv/MvDebug$Companion;->getMRestoreSetting()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "\u30ed\u30b0\u30a4\u30f3\u6642\u306b\u8a2d\u5b9a\u5024\u3092\u5fa9\u5143\u3057\u306a\u3044\uff08\u30a2\u30d7\u30ea\u518d\u8d77\u52d5\u3059\u308b\u307e\u3067\uff09"

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "\u30ed\u30b0\u30a4\u30f3\u6642\u306b\u8a2d\u5b9a\u5024\u3092\u5fa9\u5143\u3059\u308b"

    :goto_0
    move-object v4, v0

    .line 36
    new-instance v1, Lcom/metamoji/ui/UiMenuItem;

    sget-object v2, Lcom/metamoji/ui/PopupCommand;->CABINET_DEBUG_RESTORE_SETTINGS:Lcom/metamoji/ui/PopupCommand;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/ui/UiMenuItem;-><init>(Lcom/metamoji/ui/PopupCommand;Ljava/lang/Object;Ljava/lang/String;II)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    new-instance v0, Lcom/metamoji/nt/mv/MvDebug$Companion$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/metamoji/nt/mv/MvDebug$Companion$$ExternalSyntheticLambda5;-><init>()V

    .line 55
    sget v1, Lcom/metamoji/noteanytime/R$id;->cabinet_anytime_button:I

    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 38
    invoke-static {p1, p2, v0, v1}, Lcom/metamoji/noteanytime/MainActivity;->showActionMenu(Landroidx/fragment/app/FragmentActivity;Ljava/util/ArrayList;Lcom/metamoji/ui/MenuEventListener;Landroid/view/View;)V

    return-void
.end method
