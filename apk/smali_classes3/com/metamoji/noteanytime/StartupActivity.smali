.class public final Lcom/metamoji/noteanytime/StartupActivity;
.super Lcom/metamoji/lib/dialog/task/UtMortalActivity;
.source "StartupActivity.kt"

# interfaces
.implements Lcom/metamoji/nt/dl/INtResourceDownloadStatusOutput;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/noteanytime/StartupActivity$Companion;,
        Lcom/metamoji/noteanytime/StartupActivity$StartupViewModel;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0018\u0000 32\u00020\u00012\u00020\u0002:\u000223B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0012\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0014J\u0006\u0010\u0014\u001a\u00020\u0011J\u0010\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0010\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u0017H\u0014J\u0010\u0010\u001a\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0008\u0010\u001b\u001a\u00020\u0011H\u0002J\u0008\u0010\u001c\u001a\u00020\u0011H\u0002J\u0010\u0010\u001d\u001a\u00020\u00112\u0006\u0010\u001e\u001a\u00020\u0013H\u0014J\u0008\u0010\u001f\u001a\u00020\u0011H\u0014J\u0008\u0010 \u001a\u00020\u0011H\u0014J\u0010\u0010!\u001a\u00020\u00112\u0008\u0010\"\u001a\u0004\u0018\u00010#J\u0010\u0010$\u001a\u00020\u00112\u0008\u0010\"\u001a\u0004\u0018\u00010#J\u0008\u0010(\u001a\u00020\u0011H\u0002J\u0018\u0010)\u001a\u00020\u00112\u0006\u0010*\u001a\u00020#2\u0006\u0010+\u001a\u00020,H\u0016J\u0008\u0010-\u001a\u00020\u0011H\u0016J\u0010\u0010.\u001a\u00020\u00112\u0006\u0010/\u001a\u000200H\u0016J\u0008\u00101\u001a\u00020\u0011H\u0016R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008R\u0016\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0013\u0010%\u001a\u0004\u0018\u00010#8F\u00a2\u0006\u0006\u001a\u0004\u0008&\u0010\'\u00a8\u00064"
    }
    d2 = {
        "Lcom/metamoji/noteanytime/StartupActivity;",
        "Lcom/metamoji/lib/dialog/task/UtMortalActivity;",
        "Lcom/metamoji/nt/dl/INtResourceDownloadStatusOutput;",
        "<init>",
        "()V",
        "viewModel",
        "Lcom/metamoji/noteanytime/StartupActivity$StartupViewModel;",
        "getViewModel",
        "()Lcom/metamoji/noteanytime/StartupActivity$StartupViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "_itemHandler",
        "Lcom/metamoji/cm/ICmEventHandler;",
        "Lcom/metamoji/nt/NtUserDefaults;",
        "_sheetHandler",
        "_bgImageHandler",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "startMainActivity",
        "processIntentCommand",
        "launch",
        "Landroid/content/Intent;",
        "onNewIntent",
        "intent",
        "startCabinet",
        "registerUserDefaultsListener",
        "clearUserDefaultsListener",
        "onSaveInstanceState",
        "outState",
        "onResume",
        "onPause",
        "showInfoLabelText",
        "text",
        "",
        "showInfoLabelTextOnMainThread",
        "infoLabelText",
        "getInfoLabelText",
        "()Ljava/lang/String;",
        "doMigrationV2MyItem",
        "beginResourceDownload",
        "message",
        "cancelListener",
        "Landroid/view/View$OnClickListener;",
        "setResourceDownloadCancellable",
        "progressResourceDownload",
        "percent",
        "",
        "endResourceDownload",
        "StartupViewModel",
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
.field public static final Companion:Lcom/metamoji/noteanytime/StartupActivity$Companion;

.field public static onLogin:Z


# instance fields
.field private _bgImageHandler:Lcom/metamoji/cm/ICmEventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/cm/ICmEventHandler<",
            "Lcom/metamoji/nt/NtUserDefaults;",
            ">;"
        }
    .end annotation
.end field

.field private _itemHandler:Lcom/metamoji/cm/ICmEventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/cm/ICmEventHandler<",
            "Lcom/metamoji/nt/NtUserDefaults;",
            ">;"
        }
    .end annotation
.end field

.field private _sheetHandler:Lcom/metamoji/cm/ICmEventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/cm/ICmEventHandler<",
            "Lcom/metamoji/nt/NtUserDefaults;",
            ">;"
        }
    .end annotation
.end field

.field private final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/noteanytime/StartupActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/noteanytime/StartupActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/noteanytime/StartupActivity;->Companion:Lcom/metamoji/noteanytime/StartupActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;-><init>()V

    .line 82
    new-instance v0, Lcom/metamoji/noteanytime/StartupActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/metamoji/noteanytime/StartupActivity$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/noteanytime/StartupActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/noteanytime/StartupActivity;->viewModel$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$doMigrationV2MyItem(Lcom/metamoji/noteanytime/StartupActivity;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/metamoji/noteanytime/StartupActivity;->doMigrationV2MyItem()V

    return-void
.end method

.method private final clearUserDefaultsListener()V
    .locals 4

    .line 247
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 248
    iget-object v1, p0, Lcom/metamoji/noteanytime/StartupActivity;->_itemHandler:Lcom/metamoji/cm/ICmEventHandler;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 249
    const-string v3, "LibraryItemVersion"

    invoke-virtual {v0, v3, v1}, Lcom/metamoji/nt/NtUserDefaults;->removeOnChangeListener(Ljava/lang/String;Lcom/metamoji/cm/ICmEventHandler;)V

    .line 250
    iput-object v2, p0, Lcom/metamoji/noteanytime/StartupActivity;->_itemHandler:Lcom/metamoji/cm/ICmEventHandler;

    .line 252
    :cond_0
    iget-object v1, p0, Lcom/metamoji/noteanytime/StartupActivity;->_sheetHandler:Lcom/metamoji/cm/ICmEventHandler;

    if-eqz v1, :cond_1

    .line 253
    const-string v3, "LibraryTemplateVersion"

    invoke-virtual {v0, v3, v1}, Lcom/metamoji/nt/NtUserDefaults;->removeOnChangeListener(Ljava/lang/String;Lcom/metamoji/cm/ICmEventHandler;)V

    .line 254
    iput-object v2, p0, Lcom/metamoji/noteanytime/StartupActivity;->_sheetHandler:Lcom/metamoji/cm/ICmEventHandler;

    .line 256
    :cond_1
    iget-object v1, p0, Lcom/metamoji/noteanytime/StartupActivity;->_bgImageHandler:Lcom/metamoji/cm/ICmEventHandler;

    if-eqz v1, :cond_2

    .line 257
    const-string v3, "LibraryBgImageVersion"

    invoke-virtual {v0, v3, v1}, Lcom/metamoji/nt/NtUserDefaults;->removeOnChangeListener(Ljava/lang/String;Lcom/metamoji/cm/ICmEventHandler;)V

    .line 258
    iput-object v2, p0, Lcom/metamoji/noteanytime/StartupActivity;->_bgImageHandler:Lcom/metamoji/cm/ICmEventHandler;

    :cond_2
    return-void
.end method

.method private final doMigrationV2MyItem()V
    .locals 3

    .line 331
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/noteanytime/StartupActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/metamoji/noteanytime/StartupActivity$$ExternalSyntheticLambda4;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void
.end method

.method static final doMigrationV2MyItem$lambda$5()V
    .locals 1

    .line 332
    invoke-static {}, Lcom/metamoji/nt/NtClientSettingsStore;->restoreDocumentManagerVersionFromServer()V

    .line 333
    invoke-static {}, Lcom/metamoji/dvm/DvmDocumentManagerInitializer;->isMigrationDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 334
    invoke-static {}, Lcom/metamoji/dvm/DvmDocumentManagerInitializer;->migration()Z

    :cond_0
    return-void
.end method

.method private final getViewModel()Lcom/metamoji/noteanytime/StartupActivity$StartupViewModel;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/metamoji/noteanytime/StartupActivity;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/noteanytime/StartupActivity$StartupViewModel;

    return-object v0
.end method

.method private final processIntentCommand(Landroid/content/Intent;)V
    .locals 3

    .line 174
    sget v0, Lcom/metamoji/noteanytime/R$id;->progressText:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/StartupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 175
    sget v0, Lcom/metamoji/noteanytime/R$id;->progressRing:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/StartupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 176
    invoke-static {}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->isExistRestoreData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    new-instance v0, Landroid/content/Intent;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/metamoji/noteanytime/EditorActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 184
    const-string v1, "command"

    const-string v2, "restore"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x4000000

    .line 185
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 186
    sget-object v1, Lcom/metamoji/noteanytime/EntryActivity;->Companion:Lcom/metamoji/noteanytime/EntryActivity$Companion;

    invoke-virtual {v1, v0, p1}, Lcom/metamoji/noteanytime/EntryActivity$Companion;->handoverPendingIntent(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 187
    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/StartupActivity;->startActivity(Landroid/content/Intent;)V

    .line 188
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/StartupActivity;->finish()V

    return-void

    .line 190
    :cond_0
    invoke-direct {p0, p1}, Lcom/metamoji/noteanytime/StartupActivity;->startCabinet(Landroid/content/Intent;)V

    return-void
.end method

.method private final registerUserDefaultsListener()V
    .locals 3

    .line 232
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 234
    new-instance v1, Lcom/metamoji/noteanytime/StartupActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/metamoji/noteanytime/StartupActivity$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/noteanytime/StartupActivity;)V

    iput-object v1, p0, Lcom/metamoji/noteanytime/StartupActivity;->_itemHandler:Lcom/metamoji/cm/ICmEventHandler;

    .line 235
    const-string v2, "LibraryItemVersion"

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/nt/NtUserDefaults;->addOnChangeListener(Ljava/lang/String;Lcom/metamoji/cm/ICmEventHandler;)V

    .line 237
    new-instance v1, Lcom/metamoji/noteanytime/StartupActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/metamoji/noteanytime/StartupActivity$$ExternalSyntheticLambda2;-><init>(Lcom/metamoji/noteanytime/StartupActivity;)V

    iput-object v1, p0, Lcom/metamoji/noteanytime/StartupActivity;->_sheetHandler:Lcom/metamoji/cm/ICmEventHandler;

    .line 238
    const-string v2, "LibraryTemplateVersion"

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/nt/NtUserDefaults;->addOnChangeListener(Ljava/lang/String;Lcom/metamoji/cm/ICmEventHandler;)V

    .line 240
    new-instance v1, Lcom/metamoji/noteanytime/StartupActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/metamoji/noteanytime/StartupActivity$$ExternalSyntheticLambda3;-><init>(Lcom/metamoji/noteanytime/StartupActivity;)V

    iput-object v1, p0, Lcom/metamoji/noteanytime/StartupActivity;->_bgImageHandler:Lcom/metamoji/cm/ICmEventHandler;

    .line 241
    const-string v2, "LibraryBgImageVersion"

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/nt/NtUserDefaults;->addOnChangeListener(Ljava/lang/String;Lcom/metamoji/cm/ICmEventHandler;)V

    .line 243
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/StartupActivity;->startMainActivity()V

    return-void
.end method

.method static final registerUserDefaultsListener$lambda$1(Lcom/metamoji/noteanytime/StartupActivity;Lcom/metamoji/nt/NtUserDefaults;)V
    .locals 0

    .line 234
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/StartupActivity;->startMainActivity()V

    return-void
.end method

.method static final registerUserDefaultsListener$lambda$2(Lcom/metamoji/noteanytime/StartupActivity;Lcom/metamoji/nt/NtUserDefaults;)V
    .locals 0

    .line 237
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/StartupActivity;->startMainActivity()V

    return-void
.end method

.method static final registerUserDefaultsListener$lambda$3(Lcom/metamoji/noteanytime/StartupActivity;Lcom/metamoji/nt/NtUserDefaults;)V
    .locals 0

    .line 240
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/StartupActivity;->startMainActivity()V

    return-void
.end method

.method static final showInfoLabelTextOnMainThread$lambda$4(Lcom/metamoji/noteanytime/StartupActivity;Ljava/lang/String;)V
    .locals 0

    .line 311
    invoke-virtual {p0, p1}, Lcom/metamoji/noteanytime/StartupActivity;->showInfoLabelText(Ljava/lang/String;)V

    return-void
.end method

.method private final startCabinet(Landroid/content/Intent;)V
    .locals 4

    .line 215
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 216
    invoke-static {}, Lcom/metamoji/noteanytime/MainActivity$CabinetViewMode;->values()[Lcom/metamoji/noteanytime/MainActivity$CabinetViewMode;

    move-result-object v1

    .line 217
    sget-object v2, Lcom/metamoji/noteanytime/MainActivity$CabinetViewMode;->Normal:Lcom/metamoji/noteanytime/MainActivity$CabinetViewMode;

    invoke-virtual {v2}, Lcom/metamoji/noteanytime/MainActivity$CabinetViewMode;->ordinal()I

    move-result v2

    const-string v3, "MMJNtCabinetViewMode"

    invoke-virtual {v0, v3, v2}, Lcom/metamoji/nt/NtUserDefaults;->getIntValue(Ljava/lang/String;I)I

    move-result v0

    .line 218
    aget-object v0, v1, v0

    .line 219
    sget-object v1, Lcom/metamoji/noteanytime/MainActivity$CabinetViewMode;->ShareView:Lcom/metamoji/noteanytime/MainActivity$CabinetViewMode;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sput-boolean v1, Lcom/metamoji/noteanytime/MainActivity;->_IsShareViewMode:Z

    .line 220
    sget-object v1, Lcom/metamoji/noteanytime/MainActivity$CabinetViewMode;->ShareView:Lcom/metamoji/noteanytime/MainActivity$CabinetViewMode;

    if-ne v0, v1, :cond_1

    .line 221
    new-instance v0, Landroid/content/Intent;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/metamoji/ui/cabinet/ShareViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1

    .line 223
    :cond_1
    new-instance v0, Landroid/content/Intent;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/metamoji/noteanytime/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_1
    const/high16 v1, 0x4000000

    .line 225
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 226
    sget-object v1, Lcom/metamoji/noteanytime/EntryActivity;->Companion:Lcom/metamoji/noteanytime/EntryActivity$Companion;

    invoke-virtual {v1, v0, p1}, Lcom/metamoji/noteanytime/EntryActivity$Companion;->handoverPendingIntent(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 227
    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/StartupActivity;->startActivity(Landroid/content/Intent;)V

    .line 228
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/StartupActivity;->finish()V

    return-void
.end method

.method static final viewModel_delegate$lambda$0(Lcom/metamoji/noteanytime/StartupActivity;)Lcom/metamoji/noteanytime/StartupActivity$StartupViewModel;
    .locals 1

    .line 82
    sget-object v0, Lcom/metamoji/noteanytime/StartupActivity$StartupViewModel;->Companion:Lcom/metamoji/noteanytime/StartupActivity$StartupViewModel$Companion;

    invoke-virtual {v0, p0}, Lcom/metamoji/noteanytime/StartupActivity$StartupViewModel$Companion;->instanceFor(Lcom/metamoji/noteanytime/StartupActivity;)Lcom/metamoji/noteanytime/StartupActivity$StartupViewModel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public beginResourceDownload(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cancelListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 342
    sget v0, Lcom/metamoji/noteanytime/R$id;->progressText:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/StartupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 343
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 344
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 347
    sget v0, Lcom/metamoji/noteanytime/R$id;->downloadProgress:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/StartupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 348
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 351
    sget v0, Lcom/metamoji/noteanytime/R$id;->progressCancelButton:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/StartupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiButtonHeader;

    .line 352
    invoke-virtual {v0, p2}, Lcom/metamoji/ui/common/UiButtonHeader;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p2, 0x4

    .line 353
    invoke-virtual {v0, p2}, Lcom/metamoji/ui/common/UiButtonHeader;->setVisibility(I)V

    .line 356
    sget p2, Lcom/metamoji/noteanytime/R$id;->progressRing:I

    invoke-virtual {p0, p2}, Lcom/metamoji/noteanytime/StartupActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 359
    sget p2, Lcom/metamoji/noteanytime/R$id;->downloadPanel:I

    invoke-virtual {p0, p2}, Lcom/metamoji/noteanytime/StartupActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public endResourceDownload()V
    .locals 3

    .line 373
    sget v0, Lcom/metamoji/noteanytime/R$id;->progressText:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/StartupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.widget.TextView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    .line 374
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/StartupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/metamoji/noteanytime/R$string;->Msg_First_Time_Initializing:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    sget v0, Lcom/metamoji/noteanytime/R$id;->progressCancelButton:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/StartupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiButtonHeader;

    const/4 v1, 0x0

    .line 378
    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButtonHeader;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 381
    sget v0, Lcom/metamoji/noteanytime/R$id;->progressRing:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/StartupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 384
    sget v0, Lcom/metamoji/noteanytime/R$id;->downloadPanel:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/StartupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final getInfoLabelText()Ljava/lang/String;
    .locals 3

    .line 322
    sget v0, Lcom/metamoji/noteanytime/R$id;->progressText:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/StartupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/TextView;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 323
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 324
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 89
    invoke-super {p0, p1}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    move-object v0, p0

    check-cast v0, Landroidx/activity/ComponentActivity;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v0, v2, v2, v1, v2}, Landroidx/activity/EdgeToEdge;->enable$default(Landroidx/activity/ComponentActivity;Landroidx/activity/SystemBarStyle;Landroidx/activity/SystemBarStyle;ILjava/lang/Object;)V

    .line 91
    sget-object v0, Lcom/metamoji/noteanytime/EntryActivity;->Companion:Lcom/metamoji/noteanytime/EntryActivity$Companion;

    invoke-virtual {p0}, Lcom/metamoji/noteanytime/StartupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "getIntent(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/noteanytime/EntryActivity$Companion;->restorePendingIntent(Landroid/os/Bundle;Landroid/content/Intent;)V

    .line 101
    sget p1, Lcom/metamoji/noteanytime/R$layout;->activity_startup:I

    invoke-virtual {p0, p1}, Lcom/metamoji/noteanytime/StartupActivity;->setContentView(I)V

    .line 103
    move-object v3, p0

    check-cast v3, Lcom/metamoji/lib/dialog/task/UtMortalActivity;

    sget p1, Lcom/metamoji/noteanytime/R$id;->root:I

    invoke-virtual {p0, p1}, Lcom/metamoji/noteanytime/StartupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const-string p1, "findViewById(...)"

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->setupWindowInsetsListener$default(Lcom/metamoji/lib/dialog/task/UtMortalActivity;Landroid/view/View;ILkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 105
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x22

    if-lt p1, v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/StartupActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p0}, Lcom/metamoji/noteanytime/StartupActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/core/view/WindowCompat;->getInsetsController(Landroid/view/Window;Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsControllerCompat;->setAppearanceLightStatusBars(Z)V

    .line 108
    :cond_0
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object p1

    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/UiCurrentActivityManager;->registerActivity(Landroidx/fragment/app/FragmentActivity;)V

    .line 110
    invoke-direct {p0}, Lcom/metamoji/noteanytime/StartupActivity;->getViewModel()Lcom/metamoji/noteanytime/StartupActivity$StartupViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/noteanytime/StartupActivity$StartupViewModel;->reset()V

    .line 111
    invoke-direct {p0}, Lcom/metamoji/noteanytime/StartupActivity;->getViewModel()Lcom/metamoji/noteanytime/StartupActivity$StartupViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/noteanytime/StartupActivity$StartupViewModel;->isNeedLogin()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/flow/Flow;

    new-instance v0, Lcom/metamoji/noteanytime/StartupActivity$onCreate$1;

    invoke-direct {v0, p0, v2}, Lcom/metamoji/noteanytime/StartupActivity$onCreate$1;-><init>(Lcom/metamoji/noteanytime/StartupActivity;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {p1, v0}, Lkotlinx/coroutines/flow/FlowKt;->onEach(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    .line 145
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1, v0}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    invoke-super {p0, p1}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 202
    const-string v0, "StartupActivity#onNewIntent() called"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 203
    invoke-static {}, Lcom/metamoji/nt/NtStartup;->isNeedDisplayStartupActivity()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/metamoji/noteanytime/StartupActivity;->getViewModel()Lcom/metamoji/noteanytime/StartupActivity$StartupViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/noteanytime/StartupActivity$StartupViewModel;->getAreYouReady()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 206
    :cond_0
    invoke-direct {p0, p1}, Lcom/metamoji/noteanytime/StartupActivity;->processIntentCommand(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 281
    invoke-super {p0}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->onPause()V

    .line 282
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/UiCurrentActivityManager;->unregisterActivity(Landroidx/fragment/app/FragmentActivity;)V

    .line 283
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/StartupActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    invoke-static {v1}, Lcom/metamoji/ui/dialog/UiDialog;->dismissAllDialogs(Landroidx/fragment/app/FragmentActivity;)V

    .line 287
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/noteanytime/StartupActivity;->clearUserDefaultsListener()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 271
    invoke-super {p0}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->onResume()V

    .line 272
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/UiCurrentActivityManager;->registerActivity(Landroidx/fragment/app/FragmentActivity;)V

    .line 274
    invoke-direct {p0}, Lcom/metamoji/noteanytime/StartupActivity;->registerUserDefaultsListener()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    invoke-super {p0, p1}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 264
    sget-object v0, Lcom/metamoji/noteanytime/EntryActivity;->Companion:Lcom/metamoji/noteanytime/EntryActivity$Companion;

    invoke-virtual {p0}, Lcom/metamoji/noteanytime/StartupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "getIntent(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/noteanytime/EntryActivity$Companion;->savePendingIntent(Landroid/os/Bundle;Landroid/content/Intent;)V

    return-void
.end method

.method public progressResourceDownload(I)V
    .locals 1

    .line 368
    sget v0, Lcom/metamoji/noteanytime/R$id;->downloadProgress:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/StartupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 369
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method public setResourceDownloadCancellable()V
    .locals 2

    .line 363
    sget v0, Lcom/metamoji/noteanytime/R$id;->progressCancelButton:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/StartupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final showInfoLabelText(Ljava/lang/String;)V
    .locals 2

    .line 294
    sget v0, Lcom/metamoji/noteanytime/R$id;->progressText:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/StartupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 296
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 297
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 299
    sget v0, Lcom/metamoji/noteanytime/R$id;->progressRing:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/StartupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 301
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public final showInfoLabelTextOnMainThread(Ljava/lang/String;)V
    .locals 2

    .line 311
    :try_start_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/noteanytime/StartupActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/noteanytime/StartupActivity$$ExternalSyntheticLambda5;-><init>(Lcom/metamoji/noteanytime/StartupActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 313
    check-cast p1, Ljava/lang/Throwable;

    const-string v0, "StartupActivity:showInfoLabelTextOnMainThread error."

    invoke-static {p1, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public final startMainActivity()V
    .locals 2

    .line 156
    invoke-static {}, Lcom/metamoji/nt/NtStartup;->isNeedDisplayStartupActivity()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/metamoji/noteanytime/StartupActivity;->getViewModel()Lcom/metamoji/noteanytime/StartupActivity$StartupViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/noteanytime/StartupActivity$StartupViewModel;->getAreYouReady()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/noteanytime/StartupActivity;->clearUserDefaultsListener()V

    .line 164
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/StartupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "getIntent(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/metamoji/noteanytime/StartupActivity;->processIntentCommand(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method
