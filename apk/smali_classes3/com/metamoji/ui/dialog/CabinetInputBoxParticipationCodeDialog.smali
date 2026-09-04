.class public Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "CabinetInputBoxParticipationCodeDialog.java"


# instance fields
.field _boxs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field _driveId:Ljava/lang/String;

.field _errorMessageText:Landroid/widget/TextView;

.field private _globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field _lowerLayout:Landroid/view/ViewGroup;

.field _participationCode:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field _upperLayout:Landroid/view/ViewGroup;


# direct methods
.method static bridge synthetic -$$Nest$fget_globalLayoutListener(Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->_globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mbackPassCode(Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->backPassCode()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mbuttonTapped(Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->buttonTapped(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mexecuteJoinApi(Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->executeJoinApi()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrecalcSize(Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->recalcSize()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetParticipationCode(Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->resetParticipationCode()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowErrorMessage(Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->showErrorMessage(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 50
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->_participationCode:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->_boxs:Ljava/util/List;

    .line 40
    iput-object v0, p0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->_upperLayout:Landroid/view/ViewGroup;

    .line 41
    iput-object v0, p0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->_lowerLayout:Landroid/view/ViewGroup;

    .line 42
    iput-object v0, p0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->_errorMessageText:Landroid/widget/TextView;

    .line 44
    iput-object v0, p0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->_globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 47
    iput-object v0, p0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->_driveId:Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->_participationCode:Ljava/util/ArrayList;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private backPassCode()V
    .locals 3

    .line 306
    iget-object v0, p0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->_participationCode:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 307
    iget-object v1, p0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->_participationCode:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 308
    iget-object v1, p0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->_participationCode:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 309
    iget-object v1, p0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->_boxs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private buttonTapped(Ljava/lang/String;)V
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->_errorMessageText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v0, p0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->_errorMessageText:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 211
    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->inputPassCode(Ljava/lang/String;)V

    return-void
.end method

.method private executeJoinApi()V
    .locals 3

    .line 238
    new-instance v0, Lcom/metamoji/cs/dc/params/CsJoinClassBoxParam;

    invoke-direct {v0}, Lcom/metamoji/cs/dc/params/CsJoinClassBoxParam;-><init>()V

    .line 239
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->getParticipationCode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/cs/dc/params/CsJoinClassBoxParam;->joinCode:Ljava/lang/String;

    .line 241
    invoke-static {}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->getInstance()Lcom/metamoji/dm/impl/sync/DmDCSyncManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->isProcessing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 243
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog$6;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog$6;-><init>(Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void

    .line 252
    :cond_0
    invoke-static {v0}, Lcom/metamoji/cs/dc/CsCloudService;->executeWithAutoLoginFor(Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object v0

    check-cast v0, Lcom/metamoji/cs/dc/response/CsJoinClassBoxResponse;

    .line 254
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v2, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog$7;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog$7;-><init>(Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;Lcom/metamoji/cs/dc/response/CsJoinClassBoxResponse;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private getMaxLineWidth(Landroid/text/StaticLayout;)F
    .locals 4

    .line 396
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 398
    invoke-virtual {p1, v2}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v3

    cmpl-float v3, v3, v1

    if-lez v3, :cond_0

    .line 399
    invoke-virtual {p1, v2}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private inputPassCode(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 216
    :goto_0
    iget-object v1, p0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->_participationCode:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 217
    iget-object v1, p0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->_participationCode:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 218
    iget-object v1, p0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->_participationCode:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 219
    iget-object v1, p0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->_boxs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x5

    if-ne v0, p1, :cond_0

    goto :goto_1

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 229
    :cond_2
    :goto_1
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog$5;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog$5;-><init>(Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void
.end method

.method private measure(Landroid/text/TextPaint;Ljava/lang/String;Ljava/lang/Integer;)Landroid/text/StaticLayout;
    .locals 8

    if-eqz p3, :cond_0

    .line 387
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    .line 388
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    goto :goto_0

    :cond_0
    const p3, 0x7fffffff

    :goto_0
    move v3, p3

    .line 390
    new-instance v0, Landroid/text/StaticLayout;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v2, p1

    move-object v1, p2

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v0
.end method

.method private recalcSize()V
    .locals 17

    move-object/from16 v0, p0

    .line 316
    iget-object v1, v0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->_upperLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    .line 317
    iget-object v1, v0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->_upperLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    int-to-double v1, v1

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    div-double v5, v1, v3

    const/4 v7, 0x6

    int-to-double v7, v7

    mul-double v9, v1, v7

    mul-double v11, v7, v5

    add-double/2addr v9, v11

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    mul-double v13, v5, v11

    add-double/2addr v9, v13

    cmpl-double v13, v9, v1

    if-lez v13, :cond_0

    move-wide v13, v1

    :goto_0
    cmpl-double v15, v9, v1

    if-lez v15, :cond_1

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v13, v5

    div-double v5, v13, v3

    mul-double v9, v13, v7

    mul-double v15, v7, v5

    add-double/2addr v9, v15

    mul-double v15, v5, v11

    add-double/2addr v9, v15

    goto :goto_0

    :cond_0
    move-wide v13, v1

    .line 331
    :cond_1
    iget-object v1, v0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->_boxs:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    double-to-int v2, v13

    double-to-int v5, v5

    move v3, v2

    move v4, v5

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->setSize(Landroid/view/View;IIII)V

    .line 332
    iget-object v1, v0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->_boxs:Ljava/util/List;

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v4, 0x0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->setSize(Landroid/view/View;IIII)V

    .line 333
    iget-object v1, v0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->_boxs:Ljava/util/List;

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->setSize(Landroid/view/View;IIII)V

    .line 334
    iget-object v1, v0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->_boxs:Ljava/util/List;

    const/4 v3, 0x3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    move v3, v2

    move v4, v5

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->setSize(Landroid/view/View;IIII)V

    .line 335
    iget-object v1, v0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->_boxs:Ljava/util/List;

    const/4 v3, 0x4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v4, 0x0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->setSize(Landroid/view/View;IIII)V

    .line 336
    iget-object v1, v0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->_boxs:Ljava/util/List;

    const/4 v3, 0x5

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->setSize(Landroid/view/View;IIII)V

    move v1, v7

    .line 338
    :goto_1
    iget-object v2, v0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->_participationCode:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 343
    iget-object v3, v0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->_boxs:Ljava/util/List;

    if-ge v1, v2, :cond_2

    .line 339
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->_participationCode:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 343
    :cond_2
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x44098000    # 550.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 345
    iget-object v1, v0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->_boxs:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    .line 346
    const-string v3, "9"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v3, v4}, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->measure(Landroid/text/TextPaint;Ljava/lang/String;Ljava/lang/Integer;)Landroid/text/StaticLayout;

    move-result-object v1

    .line 348
    invoke-direct {v0, v1}, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->getMaxLineWidth(Landroid/text/StaticLayout;)F

    move-result v5

    float-to-double v5, v5

    .line 349
    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    int-to-double v11, v1

    :goto_2
    cmpg-double v1, v13, v5

    if-ltz v1, :cond_5

    cmpg-double v1, v13, v11

    if-gez v1, :cond_3

    goto :goto_4

    :cond_3
    move v1, v7

    .line 361
    :goto_3
    iget-object v3, v0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->_boxs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 362
    iget-object v3, v0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->_boxs:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 363
    iget-object v3, v0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->_boxs:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 367
    :cond_4
    iget-object v1, v0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->_errorMessageText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    double-to-int v2, v9

    .line 368
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 369
    iget-object v2, v0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->_errorMessageText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 371
    iget-object v1, v0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->_lowerLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    iget-object v1, v0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->_lowerLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    iget-object v1, v0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->_lowerLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    .line 372
    iget-object v1, v0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->_lowerLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    iget-object v1, v0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->_lowerLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    iget-object v1, v0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->_lowerLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingRight()I

    return-void

    :cond_5
    :goto_4
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    .line 353
    iget-object v1, v0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->_boxs:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 354
    iget-object v1, v0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->_boxs:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    .line 356
    invoke-direct {v0, v1, v3, v4}, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->measure(Landroid/text/TextPaint;Ljava/lang/String;Ljava/lang/Integer;)Landroid/text/StaticLayout;

    move-result-object v1

    .line 357
    invoke-direct {v0, v1}, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->getMaxLineWidth(Landroid/text/StaticLayout;)F

    move-result v5

    float-to-double v5, v5

    .line 358
    invoke-virtual {v1, v7}, Landroid/text/StaticLayout;->getLineAscent(I)I

    move-result v8

    neg-int v8, v8

    invoke-virtual {v1, v7}, Landroid/text/StaticLayout;->getLineDescent(I)I

    move-result v1

    add-int/2addr v8, v1

    int-to-double v11, v8

    goto/16 :goto_2
.end method

.method private resetParticipationCode()V
    .locals 3

    const/4 v0, 0x0

    .line 299
    :goto_0
    iget-object v1, p0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->_participationCode:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 300
    iget-object v1, p0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->_participationCode:Ljava/util/ArrayList;

    const-string v2, "-"

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 301
    iget-object v1, p0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->_boxs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setSize(Landroid/view/View;IIII)V
    .locals 1

    .line 377
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/GridLayout$LayoutParams;

    .line 378
    iput p2, v0, Landroid/widget/GridLayout$LayoutParams;->width:I

    .line 379
    iput p3, v0, Landroid/widget/GridLayout$LayoutParams;->height:I

    .line 380
    iput p4, v0, Landroid/widget/GridLayout$LayoutParams;->leftMargin:I

    .line 381
    iput p5, v0, Landroid/widget/GridLayout$LayoutParams;->rightMargin:I

    .line 382
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private showErrorMessage(Ljava/lang/String;)V
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->_errorMessageText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    iget-object p1, p0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->_errorMessageText:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public getDriveId()Ljava/lang/String;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->_driveId:Ljava/lang/String;

    return-object v0
.end method

.method public getParticipationCode()Ljava/lang/String;
    .locals 3

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 200
    :goto_0
    iget-object v2, p0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->_boxs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 201
    iget-object v2, p0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->_boxs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 204
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 59
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onActivityCreated(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->getDialogView()Landroid/view/ViewGroup;

    move-result-object p1

    sget v0, Lcom/metamoji/noteanytime/R$id;->control_dialog_body:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 62
    new-instance v0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog$1;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog$1;-><init>(Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;Landroid/widget/LinearLayout;)V

    iput-object v0, p0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->_globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 76
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->_globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 151
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 153
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->getDialogView()Landroid/view/ViewGroup;

    move-result-object p1

    sget v0, Lcom/metamoji/noteanytime/R$id;->control_dialog_body:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 154
    new-instance v0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog$3;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog$3;-><init>(Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;Landroid/widget/LinearLayout;)V

    iput-object v0, p0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->_globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 168
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->_globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    if-eqz p3, :cond_0

    .line 84
    const-string v0, "participationCode"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->_participationCode:Ljava/util/ArrayList;

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 87
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz v0, :cond_2

    goto :goto_1

    .line 90
    :cond_2
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_input_paticipation_code_phone_land:I

    iput v0, p0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->mViewId:I

    goto :goto_2

    .line 88
    :cond_3
    :goto_1
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_input_paticipation_code:I

    iput v0, p0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->mViewId:I

    .line 92
    :goto_2
    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_CLASSROOM_INPUT_PARTICIPATION_CODE:I

    iput v0, p0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->mTitleId:I

    .line 93
    iput-boolean v1, p0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->mDone:Z

    .line 94
    iput-boolean v1, p0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->mClose:Z

    .line 95
    iput-boolean v2, p0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->mCancel:Z

    .line 96
    iput-boolean v2, p0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->mModal:Z

    .line 98
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 99
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->getResources()Landroid/content/res/Resources;

    .line 101
    sget p2, Lcom/metamoji/noteanytime/R$id;->box1:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 102
    sget p3, Lcom/metamoji/noteanytime/R$id;->box2:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 103
    sget v0, Lcom/metamoji/noteanytime/R$id;->box3:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 104
    sget v2, Lcom/metamoji/noteanytime/R$id;->box4:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 105
    sget v3, Lcom/metamoji/noteanytime/R$id;->box5:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 106
    sget v4, Lcom/metamoji/noteanytime/R$id;->box6:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 108
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->_boxs:Ljava/util/List;

    .line 109
    invoke-interface {v5, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object p2, p0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->_boxs:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object p2, p0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->_boxs:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object p2, p0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->_boxs:Ljava/util/List;

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object p2, p0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->_boxs:Ljava/util/List;

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object p2, p0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->_boxs:Ljava/util/List;

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    :goto_3
    iget-object p2, p0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->_participationCode:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v1, p2, :cond_4

    .line 117
    iget-object p2, p0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->_boxs:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iget-object p3, p0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->_participationCode:Ljava/util/ArrayList;

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 120
    :cond_4
    sget p2, Lcom/metamoji/noteanytime/R$id;->upperLayout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->_upperLayout:Landroid/view/ViewGroup;

    .line 121
    sget p2, Lcom/metamoji/noteanytime/R$id;->lowerLayout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->_lowerLayout:Landroid/view/ViewGroup;

    .line 123
    sget p2, Lcom/metamoji/noteanytime/R$id;->errorMessage:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->_errorMessageText:Landroid/widget/TextView;

    .line 125
    sget p2, Lcom/metamoji/noteanytime/R$id;->button1:I

    const-string p3, "1"

    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->setClickListener(Landroid/view/View;ILjava/lang/String;)V

    .line 126
    sget p2, Lcom/metamoji/noteanytime/R$id;->button2:I

    const-string p3, "2"

    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->setClickListener(Landroid/view/View;ILjava/lang/String;)V

    .line 127
    sget p2, Lcom/metamoji/noteanytime/R$id;->button3:I

    const-string p3, "3"

    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->setClickListener(Landroid/view/View;ILjava/lang/String;)V

    .line 128
    sget p2, Lcom/metamoji/noteanytime/R$id;->button4:I

    const-string p3, "4"

    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->setClickListener(Landroid/view/View;ILjava/lang/String;)V

    .line 129
    sget p2, Lcom/metamoji/noteanytime/R$id;->button5:I

    const-string p3, "5"

    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->setClickListener(Landroid/view/View;ILjava/lang/String;)V

    .line 130
    sget p2, Lcom/metamoji/noteanytime/R$id;->button6:I

    const-string p3, "6"

    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->setClickListener(Landroid/view/View;ILjava/lang/String;)V

    .line 131
    sget p2, Lcom/metamoji/noteanytime/R$id;->button7:I

    const-string p3, "7"

    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->setClickListener(Landroid/view/View;ILjava/lang/String;)V

    .line 132
    sget p2, Lcom/metamoji/noteanytime/R$id;->button8:I

    const-string p3, "8"

    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->setClickListener(Landroid/view/View;ILjava/lang/String;)V

    .line 133
    sget p2, Lcom/metamoji/noteanytime/R$id;->button9:I

    const-string p3, "9"

    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->setClickListener(Landroid/view/View;ILjava/lang/String;)V

    .line 134
    sget p2, Lcom/metamoji/noteanytime/R$id;->button0:I

    const-string p3, "0"

    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->setClickListener(Landroid/view/View;ILjava/lang/String;)V

    .line 135
    sget p2, Lcom/metamoji/noteanytime/R$id;->button_back:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 136
    new-instance p3, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog$2;

    invoke-direct {p3, p0}, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog$2;-><init>(Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->restoreInstanceStateIfAvailable(Landroid/view/View;)Z

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 183
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 184
    const-string v0, "participationCode"

    iget-object v1, p0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->_participationCode:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 185
    sget-object v0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->Key_ReconstructDialogFlag:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method setClickListener(Landroid/view/View;ILjava/lang/String;)V
    .locals 0

    .line 172
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 173
    new-instance p2, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog$4;

    invoke-direct {p2, p0, p3}, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog$4;-><init>(Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
