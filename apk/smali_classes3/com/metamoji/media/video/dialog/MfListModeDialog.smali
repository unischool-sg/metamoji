.class public final Lcom/metamoji/media/video/dialog/MfListModeDialog;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "MfListModeDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/media/video/dialog/MfListModeDialog$Companion;,
        Lcom/metamoji/media/video/dialog/MfListModeDialog$Controls;,
        Lcom/metamoji/media/video/dialog/MfListModeDialog$Keys;,
        Lcom/metamoji/media/video/dialog/MfListModeDialog$Orders;,
        Lcom/metamoji/media/video/dialog/MfListModeDialog$SortParams;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMfListModeDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MfListModeDialog.kt\ncom/metamoji/media/video/dialog/MfListModeDialog\n+ 2 UtCompat.kt\ncom/metamoji/lib/utils/UtCompat$Companion\n*L\n1#1,182:1\n70#2:183\n70#2:184\n*S KotlinDebug\n*F\n+ 1 MfListModeDialog.kt\ncom/metamoji/media/video/dialog/MfListModeDialog\n*L\n38#1:183\n42#1:184\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\t\u0018\u0000 %2\u00020\u0001:\u0005$%&\'(B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J$\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0016J\u0012\u0010\u001f\u001a\u00020 2\u0008\u0010!\u001a\u0004\u0018\u00010\u0018H\u0016J\u0010\u0010\"\u001a\u00020 2\u0006\u0010#\u001a\u00020\u001eH\u0016R$\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00058B@BX\u0082\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR$\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020\u000b8B@BX\u0082\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001e\u0010\u0011\u001a\u00060\u0012R\u00020\u0000X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016\u00a8\u0006)"
    }
    d2 = {
        "Lcom/metamoji/media/video/dialog/MfListModeDialog;",
        "Lcom/metamoji/ui/dialog/NtDialog;",
        "<init>",
        "()V",
        "v",
        "Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;",
        "sortKey",
        "getSortKey",
        "()Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;",
        "setSortKey",
        "(Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;)V",
        "Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;",
        "sortOrder",
        "getSortOrder",
        "()Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;",
        "setSortOrder",
        "(Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;)V",
        "controls",
        "Lcom/metamoji/media/video/dialog/MfListModeDialog$Controls;",
        "getControls",
        "()Lcom/metamoji/media/video/dialog/MfListModeDialog$Controls;",
        "setControls",
        "(Lcom/metamoji/media/video/dialog/MfListModeDialog$Controls;)V",
        "onCreateView",
        "Landroid/view/View;",
        "orgInflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDone",
        "",
        "view",
        "onSaveInstanceState",
        "outState",
        "SortParams",
        "Companion",
        "Keys",
        "Orders",
        "Controls",
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
.field public static final Companion:Lcom/metamoji/media/video/dialog/MfListModeDialog$Companion;

.field public static final DIALOG_ID:Ljava/lang/String; = "MfListModeDialog"

.field private static final KEY_SORT_KEY:Ljava/lang/String; = "sort_key"

.field private static final KEY_SORT_ORDER:Ljava/lang/String; = "sort_order"


# instance fields
.field public controls:Lcom/metamoji/media/video/dialog/MfListModeDialog$Controls;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/media/video/dialog/MfListModeDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/media/video/dialog/MfListModeDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/media/video/dialog/MfListModeDialog;->Companion:Lcom/metamoji/media/video/dialog/MfListModeDialog$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    return-void
.end method

.method public static final synthetic access$getSortKey(Lcom/metamoji/media/video/dialog/MfListModeDialog;)Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfListModeDialog;->getSortKey()Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSortOrder(Lcom/metamoji/media/video/dialog/MfListModeDialog;)Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfListModeDialog;->getSortOrder()Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setSortKey(Lcom/metamoji/media/video/dialog/MfListModeDialog;Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/metamoji/media/video/dialog/MfListModeDialog;->setSortKey(Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;)V

    return-void
.end method

.method public static final synthetic access$setSortOrder(Lcom/metamoji/media/video/dialog/MfListModeDialog;Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/metamoji/media/video/dialog/MfListModeDialog;->setSortOrder(Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;)V

    return-void
.end method

.method private final getSortKey()Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;
    .locals 4

    .line 38
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfListModeDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/metamoji/lib/utils/UtCompat;->Companion:Lcom/metamoji/lib/utils/UtCompat$Companion;

    const-string/jumbo v2, "sort_key"

    .line 183
    const-class v3, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;

    invoke-virtual {v1, v0, v2, v3}, Lcom/metamoji/lib/utils/UtCompat$Companion;->getSerializable(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 38
    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method private final getSortOrder()Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;
    .locals 4

    .line 42
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfListModeDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/metamoji/lib/utils/UtCompat;->Companion:Lcom/metamoji/lib/utils/UtCompat$Companion;

    const-string/jumbo v2, "sort_order"

    .line 184
    const-class v3, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;

    invoke-virtual {v1, v0, v2, v3}, Lcom/metamoji/lib/utils/UtCompat$Companion;->getSerializable(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 42
    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method private final setSortKey(Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;)V
    .locals 2

    .line 39
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfListModeDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "sort_key"

    check-cast p1, Ljava/io/Serializable;

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_0
    return-void
.end method

.method private final setSortOrder(Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;)V
    .locals 2

    .line 43
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfListModeDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "sort_order"

    check-cast p1, Ljava/io/Serializable;

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getControls()Lcom/metamoji/media/video/dialog/MfListModeDialog$Controls;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfListModeDialog;->controls:Lcom/metamoji/media/video/dialog/MfListModeDialog$Controls;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "controls"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string v0, "orgInflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_media_list_mode:I

    iput v0, p0, Lcom/metamoji/media/video/dialog/MfListModeDialog;->mViewId:I

    .line 157
    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_MEDIAFILES_CLIPLIST_SETTING:I

    iput v0, p0, Lcom/metamoji/media/video/dialog/MfListModeDialog;->mTitleId:I

    .line 158
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 159
    new-instance p2, Lcom/metamoji/media/video/dialog/MfListModeDialog$Controls;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p2, p0, p1}, Lcom/metamoji/media/video/dialog/MfListModeDialog$Controls;-><init>(Lcom/metamoji/media/video/dialog/MfListModeDialog;Landroid/view/View;)V

    invoke-virtual {p0, p2}, Lcom/metamoji/media/video/dialog/MfListModeDialog;->setControls(Lcom/metamoji/media/video/dialog/MfListModeDialog$Controls;)V

    return-object p1
.end method

.method public onDone(Landroid/view/View;)V
    .locals 4

    .line 164
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onDone(Landroid/view/View;)V

    .line 165
    sget-object p1, Lcom/metamoji/media/video/dialog/MfDialogResultViewModel;->Companion:Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$Companion;

    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfListModeDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$Companion;->getInstance(Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/media/video/dialog/MfDialogResultViewModel;

    move-result-object p1

    new-instance v0, Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$DialogResult;

    new-instance v1, Lcom/metamoji/media/video/dialog/MfListModeDialog$SortParams;

    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfListModeDialog;->getSortKey()Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;

    move-result-object v2

    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfListModeDialog;->getSortOrder()Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/metamoji/media/video/dialog/MfListModeDialog$SortParams;-><init>(Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;)V

    const-string v2, "MfListModeDialog"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$DialogResult;-><init>(Ljava/lang/String;ZLjava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/media/video/dialog/MfDialogResultViewModel;->dialogCompleted(Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$DialogResult;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 180
    sget-object v0, Lcom/metamoji/ui/dialog/NtDialog;->Key_ReconstructDialogFlag:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final setControls(Lcom/metamoji/media/video/dialog/MfListModeDialog$Controls;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    iput-object p1, p0, Lcom/metamoji/media/video/dialog/MfListModeDialog;->controls:Lcom/metamoji/media/video/dialog/MfListModeDialog$Controls;

    return-void
.end method
