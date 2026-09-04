.class public final Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;
.super Ljava/lang/Object;
.source "MfFileListDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/media/video/dialog/MfFileListDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Controls"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0019\n\u0002\u0010\t\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010J\u001a\u00020KH\u0002J\u0008\u0010L\u001a\u00020KH\u0002R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u001b\u0010\u0008\u001a\u00020\t8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\n\u0010\u000bR\u001b\u0010\u000e\u001a\u00020\u000f8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\r\u001a\u0004\u0008\u0010\u0010\u0011R\u001b\u0010\u0013\u001a\u00020\u00148BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\r\u001a\u0004\u0008\u0015\u0010\u0016R\u001b\u0010\u0018\u001a\u00020\u00148BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\r\u001a\u0004\u0008\u0019\u0010\u0016R\u001b\u0010\u001b\u001a\u00020\u001c8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010\r\u001a\u0004\u0008\u001d\u0010\u001eR\u001b\u0010 \u001a\u00020\u001c8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\"\u0010\r\u001a\u0004\u0008!\u0010\u001eR\u001b\u0010#\u001a\u00020\u001c8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008%\u0010\r\u001a\u0004\u0008$\u0010\u001eR\u001b\u0010&\u001a\u00020\'8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008*\u0010\r\u001a\u0004\u0008(\u0010)R\u001b\u0010+\u001a\u00020\'8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008-\u0010\r\u001a\u0004\u0008,\u0010)R\u001b\u0010.\u001a\u00020\'8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00080\u0010\r\u001a\u0004\u0008/\u0010)R\u001b\u00101\u001a\u00020\'8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00083\u0010\r\u001a\u0004\u00082\u0010)R\u001b\u00104\u001a\u00020\t8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00086\u0010\r\u001a\u0004\u00085\u0010\u000bR\u001b\u00107\u001a\u00020\t8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00089\u0010\r\u001a\u0004\u00088\u0010\u000bR\u001b\u0010:\u001a\u00020\t8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008<\u0010\r\u001a\u0004\u0008;\u0010\u000bR\u001b\u0010=\u001a\u00020\t8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008?\u0010\r\u001a\u0004\u0008>\u0010\u000bR$\u0010B\u001a\u00020A2\u0006\u0010@\u001a\u00020A@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008C\u0010D\"\u0004\u0008E\u0010FR$\u0010G\u001a\u00020A2\u0006\u0010@\u001a\u00020A@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008H\u0010D\"\u0004\u0008I\u0010FR$\u0010N\u001a\u00020M2\u0006\u0010@\u001a\u00020M@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008O\u0010P\"\u0004\u0008Q\u0010RR$\u0010T\u001a\u00020S2\u0006\u0010@\u001a\u00020S@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008U\u0010V\"\u0004\u0008W\u0010X\u00a8\u0006Y"
    }
    d2 = {
        "Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;",
        "",
        "dialog",
        "Landroid/view/View;",
        "<init>",
        "(Lcom/metamoji/media/video/dialog/MfFileListDialog;Landroid/view/View;)V",
        "getDialog",
        "()Landroid/view/View;",
        "fileListTitleView",
        "Landroid/widget/TextView;",
        "getFileListTitleView",
        "()Landroid/widget/TextView;",
        "fileListTitleView$delegate",
        "Lkotlin/Lazy;",
        "fileListView",
        "Lcom/metamoji/media/video/dialog/MfFileListView;",
        "getFileListView",
        "()Lcom/metamoji/media/video/dialog/MfFileListView;",
        "fileListView$delegate",
        "iconButtons",
        "Landroid/view/ViewGroup;",
        "getIconButtons",
        "()Landroid/view/ViewGroup;",
        "iconButtons$delegate",
        "textButtons",
        "getTextButtons",
        "textButtons$delegate",
        "settingButton",
        "Landroid/widget/ImageButton;",
        "getSettingButton",
        "()Landroid/widget/ImageButton;",
        "settingButton$delegate",
        "deleteButton",
        "getDeleteButton",
        "deleteButton$delegate",
        "uploadButton",
        "getUploadButton",
        "uploadButton$delegate",
        "doUploadButton",
        "Lcom/metamoji/ui/common/UiButton;",
        "getDoUploadButton",
        "()Lcom/metamoji/ui/common/UiButton;",
        "doUploadButton$delegate",
        "doDeleteButton",
        "getDoDeleteButton",
        "doDeleteButton$delegate",
        "endEditButton",
        "getEndEditButton",
        "endEditButton$delegate",
        "clearCacheButton",
        "getClearCacheButton",
        "clearCacheButton$delegate",
        "consumptionLabelA",
        "getConsumptionLabelA",
        "consumptionLabelA$delegate",
        "consumptionLabelB",
        "getConsumptionLabelB",
        "consumptionLabelB$delegate",
        "consumptionValueA",
        "getConsumptionValueA",
        "consumptionValueA$delegate",
        "consumptionValueB",
        "getConsumptionValueB",
        "consumptionValueB$delegate",
        "v",
        "",
        "consumptionA",
        "getConsumptionA",
        "()J",
        "setConsumptionA",
        "(J)V",
        "consumptionB",
        "getConsumptionB",
        "setConsumptionB",
        "initForRemote",
        "",
        "initForLocal",
        "Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel$EditMode;",
        "editMode",
        "getEditMode",
        "()Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel$EditMode;",
        "setEditMode",
        "(Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel$EditMode;)V",
        "",
        "busy",
        "getBusy",
        "()Z",
        "setBusy",
        "(Z)V",
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


# instance fields
.field private busy:Z

.field private final clearCacheButton$delegate:Lkotlin/Lazy;

.field private consumptionA:J

.field private consumptionB:J

.field private final consumptionLabelA$delegate:Lkotlin/Lazy;

.field private final consumptionLabelB$delegate:Lkotlin/Lazy;

.field private final consumptionValueA$delegate:Lkotlin/Lazy;

.field private final consumptionValueB$delegate:Lkotlin/Lazy;

.field private final deleteButton$delegate:Lkotlin/Lazy;

.field private final dialog:Landroid/view/View;

.field private final doDeleteButton$delegate:Lkotlin/Lazy;

.field private final doUploadButton$delegate:Lkotlin/Lazy;

.field private editMode:Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel$EditMode;

.field private final endEditButton$delegate:Lkotlin/Lazy;

.field private final fileListTitleView$delegate:Lkotlin/Lazy;

.field private final fileListView$delegate:Lkotlin/Lazy;

.field private final iconButtons$delegate:Lkotlin/Lazy;

.field private final settingButton$delegate:Lkotlin/Lazy;

.field private final textButtons$delegate:Lkotlin/Lazy;

.field final synthetic this$0:Lcom/metamoji/media/video/dialog/MfFileListDialog;

.field private final uploadButton$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Lcom/metamoji/media/video/dialog/MfFileListDialog;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "dialog"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    iput-object p1, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->this$0:Lcom/metamoji/media/video/dialog/MfFileListDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->dialog:Landroid/view/View;

    .line 183
    new-instance p2, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->fileListTitleView$delegate:Lkotlin/Lazy;

    .line 187
    new-instance p2, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls$$ExternalSyntheticLambda11;

    invoke-direct {p2, p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls$$ExternalSyntheticLambda11;-><init>(Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->fileListView$delegate:Lkotlin/Lazy;

    .line 191
    new-instance p2, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls$$ExternalSyntheticLambda12;

    invoke-direct {p2, p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls$$ExternalSyntheticLambda12;-><init>(Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->iconButtons$delegate:Lkotlin/Lazy;

    .line 194
    new-instance p2, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls$$ExternalSyntheticLambda13;

    invoke-direct {p2, p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls$$ExternalSyntheticLambda13;-><init>(Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->textButtons$delegate:Lkotlin/Lazy;

    .line 199
    new-instance p2, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls$$ExternalSyntheticLambda14;

    invoke-direct {p2, p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls$$ExternalSyntheticLambda14;-><init>(Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->settingButton$delegate:Lkotlin/Lazy;

    .line 202
    new-instance p2, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->deleteButton$delegate:Lkotlin/Lazy;

    .line 205
    new-instance p2, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls$$ExternalSyntheticLambda2;-><init>(Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->uploadButton$delegate:Lkotlin/Lazy;

    .line 210
    new-instance p2, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls$$ExternalSyntheticLambda3;-><init>(Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->doUploadButton$delegate:Lkotlin/Lazy;

    .line 213
    new-instance p2, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls$$ExternalSyntheticLambda4;-><init>(Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->doDeleteButton$delegate:Lkotlin/Lazy;

    .line 216
    new-instance p2, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls$$ExternalSyntheticLambda5;-><init>(Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->endEditButton$delegate:Lkotlin/Lazy;

    .line 221
    new-instance p2, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls$$ExternalSyntheticLambda6;-><init>(Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->clearCacheButton$delegate:Lkotlin/Lazy;

    .line 225
    new-instance p2, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls$$ExternalSyntheticLambda7;

    invoke-direct {p2, p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls$$ExternalSyntheticLambda7;-><init>(Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->consumptionLabelA$delegate:Lkotlin/Lazy;

    .line 228
    new-instance p2, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls$$ExternalSyntheticLambda8;

    invoke-direct {p2, p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls$$ExternalSyntheticLambda8;-><init>(Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->consumptionLabelB$delegate:Lkotlin/Lazy;

    .line 231
    new-instance p2, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls$$ExternalSyntheticLambda9;

    invoke-direct {p2, p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls$$ExternalSyntheticLambda9;-><init>(Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->consumptionValueA$delegate:Lkotlin/Lazy;

    .line 234
    new-instance p2, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls$$ExternalSyntheticLambda10;

    invoke-direct {p2, p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls$$ExternalSyntheticLambda10;-><init>(Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->consumptionValueB$delegate:Lkotlin/Lazy;

    .line 255
    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->getIconButtons()Landroid/view/ViewGroup;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 256
    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->getTextButtons()Landroid/view/ViewGroup;

    move-result-object p2

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 257
    invoke-static {p1}, Lcom/metamoji/media/video/dialog/MfFileListDialog;->access$getForLocal(Lcom/metamoji/media/video/dialog/MfFileListDialog;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 258
    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->initForLocal()V

    goto :goto_0

    .line 260
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->initForRemote()V

    .line 293
    :goto_0
    sget-object p1, Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel$EditMode;->NONE:Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel$EditMode;

    iput-object p1, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->editMode:Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel$EditMode;

    return-void
.end method

.method static final clearCacheButton_delegate$lambda$10(Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;)Lcom/metamoji/ui/common/UiButton;
    .locals 1

    .line 222
    iget-object p0, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->dialog:Landroid/view/View;

    sget v0, Lcom/metamoji/noteanytime/R$id;->buttonClear:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/metamoji/ui/common/UiButton;

    return-object p0
.end method

.method static final consumptionLabelA_delegate$lambda$11(Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;)Landroid/widget/TextView;
    .locals 1

    .line 226
    iget-object p0, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->dialog:Landroid/view/View;

    sget v0, Lcom/metamoji/noteanytime/R$id;->consumptionLabelA:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method static final consumptionLabelB_delegate$lambda$12(Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;)Landroid/widget/TextView;
    .locals 1

    .line 229
    iget-object p0, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->dialog:Landroid/view/View;

    sget v0, Lcom/metamoji/noteanytime/R$id;->consumptionLabelB:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method static final consumptionValueA_delegate$lambda$13(Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;)Landroid/widget/TextView;
    .locals 1

    .line 232
    iget-object p0, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->dialog:Landroid/view/View;

    sget v0, Lcom/metamoji/noteanytime/R$id;->consumptionValueA:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method static final consumptionValueB_delegate$lambda$14(Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;)Landroid/widget/TextView;
    .locals 1

    .line 235
    iget-object p0, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->dialog:Landroid/view/View;

    sget v0, Lcom/metamoji/noteanytime/R$id;->consumptionValueB:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method static final deleteButton_delegate$lambda$5(Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;)Landroid/widget/ImageButton;
    .locals 1

    .line 203
    iget-object p0, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->dialog:Landroid/view/View;

    sget v0, Lcom/metamoji/noteanytime/R$id;->deleteButton:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageButton;

    return-object p0
.end method

.method static final doDeleteButton_delegate$lambda$8(Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;)Lcom/metamoji/ui/common/UiButton;
    .locals 1

    .line 214
    iget-object p0, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->dialog:Landroid/view/View;

    sget v0, Lcom/metamoji/noteanytime/R$id;->buttonDoDelete:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/metamoji/ui/common/UiButton;

    return-object p0
.end method

.method static final doUploadButton_delegate$lambda$7(Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;)Lcom/metamoji/ui/common/UiButton;
    .locals 1

    .line 211
    iget-object p0, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->dialog:Landroid/view/View;

    sget v0, Lcom/metamoji/noteanytime/R$id;->buttonDoUpload:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/metamoji/ui/common/UiButton;

    return-object p0
.end method

.method static final endEditButton_delegate$lambda$9(Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;)Lcom/metamoji/ui/common/UiButton;
    .locals 1

    .line 217
    iget-object p0, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->dialog:Landroid/view/View;

    sget v0, Lcom/metamoji/noteanytime/R$id;->buttonEndEdit:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/metamoji/ui/common/UiButton;

    return-object p0
.end method

.method static final fileListTitleView_delegate$lambda$0(Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;)Landroid/widget/TextView;
    .locals 1

    .line 184
    iget-object p0, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->dialog:Landroid/view/View;

    sget v0, Lcom/metamoji/noteanytime/R$id;->fileListTitle:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method static final fileListView_delegate$lambda$1(Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;)Lcom/metamoji/media/video/dialog/MfFileListView;
    .locals 1

    .line 188
    iget-object p0, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->dialog:Landroid/view/View;

    sget v0, Lcom/metamoji/noteanytime/R$id;->fileListView:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/metamoji/media/video/dialog/MfFileListView;

    return-object p0
.end method

.method private final getConsumptionLabelA()Landroid/widget/TextView;
    .locals 2

    .line 225
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->consumptionLabelA$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getConsumptionLabelB()Landroid/widget/TextView;
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->consumptionLabelB$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getConsumptionValueA()Landroid/widget/TextView;
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->consumptionValueA$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getConsumptionValueB()Landroid/widget/TextView;
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->consumptionValueB$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getFileListTitleView()Landroid/widget/TextView;
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->fileListTitleView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getIconButtons()Landroid/view/ViewGroup;
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->iconButtons$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method private final getTextButtons()Landroid/view/ViewGroup;
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->textButtons$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method static final iconButtons_delegate$lambda$2(Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;)Landroid/view/ViewGroup;
    .locals 1

    .line 192
    iget-object p0, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->dialog:Landroid/view/View;

    sget v0, Lcom/metamoji/noteanytime/R$id;->iconButtonContainer:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    return-object p0
.end method

.method private final initForLocal()V
    .locals 3

    .line 275
    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->getFileListTitleView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->this$0:Lcom/metamoji/media/video/dialog/MfFileListDialog;

    invoke-virtual {v1}, Lcom/metamoji/media/video/dialog/MfFileListDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_MF_OFFLINE_MOVIES_LIST:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->getConsumptionLabelA()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->this$0:Lcom/metamoji/media/video/dialog/MfFileListDialog;

    invoke-virtual {v1}, Lcom/metamoji/media/video/dialog/MfFileListDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_MF_OFFLINE_MOVIES:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->getConsumptionLabelB()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->this$0:Lcom/metamoji/media/video/dialog/MfFileListDialog;

    invoke-virtual {v1}, Lcom/metamoji/media/video/dialog/MfFileListDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_MF_DOWNLOAD_CACHE:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->getConsumptionValueA()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "0"

    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->getConsumptionValueB()Landroid/widget/TextView;

    move-result-object v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->getClearCacheButton()Lcom/metamoji/ui/common/UiButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    return-void
.end method

.method private final initForRemote()V
    .locals 3

    .line 265
    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->getFileListTitleView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->this$0:Lcom/metamoji/media/video/dialog/MfFileListDialog;

    invoke-virtual {v1}, Lcom/metamoji/media/video/dialog/MfFileListDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_MF_MOVIES_LIST:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->getConsumptionLabelA()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->this$0:Lcom/metamoji/media/video/dialog/MfFileListDialog;

    invoke-virtual {v1}, Lcom/metamoji/media/video/dialog/MfFileListDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_MF_PERSONAL:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->getConsumptionLabelB()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->this$0:Lcom/metamoji/media/video/dialog/MfFileListDialog;

    invoke-virtual {v1}, Lcom/metamoji/media/video/dialog/MfFileListDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_MF_COMPANY:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->getConsumptionValueA()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "0"

    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->getConsumptionValueB()Landroid/widget/TextView;

    move-result-object v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->getClearCacheButton()Lcom/metamoji/ui/common/UiButton;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    .line 271
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->getUploadButton()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method

.method static final settingButton_delegate$lambda$4(Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;)Landroid/widget/ImageButton;
    .locals 1

    .line 200
    iget-object p0, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->dialog:Landroid/view/View;

    sget v0, Lcom/metamoji/noteanytime/R$id;->settingButton:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageButton;

    return-object p0
.end method

.method static final textButtons_delegate$lambda$3(Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;)Landroid/view/ViewGroup;
    .locals 1

    .line 195
    iget-object p0, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->dialog:Landroid/view/View;

    sget v0, Lcom/metamoji/noteanytime/R$id;->textButtonContainer:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    return-object p0
.end method

.method static final uploadButton_delegate$lambda$6(Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;)Landroid/widget/ImageButton;
    .locals 1

    .line 206
    iget-object p0, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->dialog:Landroid/view/View;

    sget v0, Lcom/metamoji/noteanytime/R$id;->uploadButton:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageButton;

    return-object p0
.end method


# virtual methods
.method public final getBusy()Z
    .locals 1

    .line 317
    iget-boolean v0, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->busy:Z

    return v0
.end method

.method public final getClearCacheButton()Lcom/metamoji/ui/common/UiButton;
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->clearCacheButton$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/metamoji/ui/common/UiButton;

    return-object v0
.end method

.method public final getConsumptionA()J
    .locals 2

    .line 238
    iget-wide v0, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->consumptionA:J

    return-wide v0
.end method

.method public final getConsumptionB()J
    .locals 2

    .line 246
    iget-wide v0, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->consumptionB:J

    return-wide v0
.end method

.method public final getDeleteButton()Landroid/widget/ImageButton;
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->deleteButton$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageButton;

    return-object v0
.end method

.method public final getDialog()Landroid/view/View;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->dialog:Landroid/view/View;

    return-object v0
.end method

.method public final getDoDeleteButton()Lcom/metamoji/ui/common/UiButton;
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->doDeleteButton$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/metamoji/ui/common/UiButton;

    return-object v0
.end method

.method public final getDoUploadButton()Lcom/metamoji/ui/common/UiButton;
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->doUploadButton$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/metamoji/ui/common/UiButton;

    return-object v0
.end method

.method public final getEditMode()Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel$EditMode;
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->editMode:Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel$EditMode;

    return-object v0
.end method

.method public final getEndEditButton()Lcom/metamoji/ui/common/UiButton;
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->endEditButton$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/metamoji/ui/common/UiButton;

    return-object v0
.end method

.method public final getFileListView()Lcom/metamoji/media/video/dialog/MfFileListView;
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->fileListView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/metamoji/media/video/dialog/MfFileListView;

    return-object v0
.end method

.method public final getSettingButton()Landroid/widget/ImageButton;
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->settingButton$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageButton;

    return-object v0
.end method

.method public final getUploadButton()Landroid/widget/ImageButton;
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->uploadButton$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageButton;

    return-object v0
.end method

.method public final setBusy(Z)V
    .locals 1

    .line 319
    iget-boolean v0, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->busy:Z

    if-eq p1, v0, :cond_1

    .line 320
    iput-boolean p1, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->busy:Z

    if-eqz p1, :cond_0

    .line 322
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->getDoDeleteButton()Lcom/metamoji/ui/common/UiButton;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    .line 323
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->getDoUploadButton()Lcom/metamoji/ui/common/UiButton;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    return-void

    .line 325
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->getDoDeleteButton()Lcom/metamoji/ui/common/UiButton;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    .line 326
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->getDoUploadButton()Lcom/metamoji/ui/common/UiButton;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public final setConsumptionA(J)V
    .locals 2

    .line 240
    iget-wide v0, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->consumptionA:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    .line 241
    iput-wide p1, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->consumptionA:J

    .line 242
    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->getConsumptionValueA()Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Lcom/metamoji/media/video/dialog/MfFileListDialog;->Companion:Lcom/metamoji/media/video/dialog/MfFileListDialog$Companion;

    invoke-virtual {v1, p1, p2}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Companion;->formatConsumedString(J)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final setConsumptionB(J)V
    .locals 2

    .line 248
    iget-wide v0, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->consumptionB:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    .line 249
    iput-wide p1, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->consumptionB:J

    .line 250
    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->getConsumptionValueB()Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Lcom/metamoji/media/video/dialog/MfFileListDialog;->Companion:Lcom/metamoji/media/video/dialog/MfFileListDialog$Companion;

    invoke-virtual {v1, p1, p2}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Companion;->formatConsumedString(J)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final setEditMode(Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel$EditMode;)V
    .locals 3

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->editMode:Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel$EditMode;

    if-eq p1, v0, :cond_2

    .line 296
    iput-object p1, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->editMode:Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel$EditMode;

    .line 297
    sget-object v0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel$EditMode;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 311
    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->getIconButtons()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 312
    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->getTextButtons()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void

    .line 305
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->getIconButtons()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 306
    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->getTextButtons()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 307
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->getDoDeleteButton()Lcom/metamoji/ui/common/UiButton;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    .line 308
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->getDoUploadButton()Lcom/metamoji/ui/common/UiButton;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    return-void

    .line 299
    :cond_1
    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->getIconButtons()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 300
    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->getTextButtons()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 301
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->getDoDeleteButton()Lcom/metamoji/ui/common/UiButton;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    .line 302
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->getDoUploadButton()Lcom/metamoji/ui/common/UiButton;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    :cond_2
    return-void
.end method
