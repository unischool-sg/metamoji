.class public Lcom/metamoji/ui/dialog/DetailWindowSettings;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "DetailWindowSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final AUTOSCROLL_AREAWIDTH_NORMAL:F = 132.0f

.field public static final AUTOSCROLL_AREAWIDTH_SMALL:F = 88.0f

.field public static final AUTOSCROLL_AREAWIDTH_WIDE:F = 176.0f

.field private static final AUTOSCROLL_OPTIONS:[I

.field private static final FEEDSTEPWIDTH_OPTIONS:[I

.field private static final LINEFEEDWIDTH_OPTIONS:[I

.field private static final LINEFEED_WIDTH_FORMAT:Ljava/lang/String; = "%.1f"

.field private static final MAX_AUTOSCROLL_INTERVAL:F = 1.0f

.field private static final MAX_LINEFEED_WIDTH:F = 3.0f

.field private static final MAX_STEPPER_VALUE:I = 0x4

.field private static final MIN_AUTOSCROLL_INTERVAL:F = 0.0f

.field private static final MIN_LINEFEED_WIDTH:F = 0.1f

.field private static final MIN_STEPPER_VALUE:I = -0x4


# instance fields
.field private mAutoScroll:Z

.field private mAutoScrollAreaWidth:F

.field private mAutoScrollInterval:F

.field private mAutoScrollIntervalFormat:Ljava/lang/String;

.field private mFeedButtonMinus:Lcom/metamoji/ui/common/UiButton;

.field private mFeedButtonPlus:Lcom/metamoji/ui/common/UiButton;

.field private mFeedStepWidth:F

.field private mForceWindowStep:Z

.field private mHasHLines:Z

.field private mLineFeedWidth:F

.field private mMarginLineVisible:Z

.field private mStepperVal:I

.field private mTextFeedStepWidth:Lcom/metamoji/ui/common/UiTextView;

.field private mTextLineFeedWidth:Lcom/metamoji/ui/common/UiTextView;

.field private mTextViewAutoScrollInterval:Lcom/metamoji/ui/common/UiTextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmForceWindowStep(Lcom/metamoji/ui/dialog/DetailWindowSettings;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/metamoji/ui/dialog/DetailWindowSettings;->mForceWindowStep:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmAutoScroll(Lcom/metamoji/ui/dialog/DetailWindowSettings;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/metamoji/ui/dialog/DetailWindowSettings;->mAutoScroll:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAutoScrollAreaWidth(Lcom/metamoji/ui/dialog/DetailWindowSettings;F)V
    .locals 0

    iput p1, p0, Lcom/metamoji/ui/dialog/DetailWindowSettings;->mAutoScrollAreaWidth:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAutoScrollInterval(Lcom/metamoji/ui/dialog/DetailWindowSettings;F)V
    .locals 0

    iput p1, p0, Lcom/metamoji/ui/dialog/DetailWindowSettings;->mAutoScrollInterval:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmForceWindowStep(Lcom/metamoji/ui/dialog/DetailWindowSettings;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/metamoji/ui/dialog/DetailWindowSettings;->mForceWindowStep:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLineFeedWidth(Lcom/metamoji/ui/dialog/DetailWindowSettings;F)V
    .locals 0

    iput p1, p0, Lcom/metamoji/ui/dialog/DetailWindowSettings;->mLineFeedWidth:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMarginLineVisible(Lcom/metamoji/ui/dialog/DetailWindowSettings;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/metamoji/ui/dialog/DetailWindowSettings;->mMarginLineVisible:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mautoScrollAreaWidthFromId(Lcom/metamoji/ui/dialog/DetailWindowSettings;I)F
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/DetailWindowSettings;->autoScrollAreaWidthFromId(I)F

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mautoScrollIntervalFromProgress(Lcom/metamoji/ui/dialog/DetailWindowSettings;I)F
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/DetailWindowSettings;->autoScrollIntervalFromProgress(I)F

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mlineFeedWidthFromProgress(Lcom/metamoji/ui/dialog/DetailWindowSettings;I)F
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/DetailWindowSettings;->lineFeedWidthFromProgress(I)F

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mupdateAutoScrollIntervalLabel(Lcom/metamoji/ui/dialog/DetailWindowSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/dialog/DetailWindowSettings;->updateAutoScrollIntervalLabel()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateAutoScrollOptionsGrayOut(Lcom/metamoji/ui/dialog/DetailWindowSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/dialog/DetailWindowSettings;->updateAutoScrollOptionsGrayOut()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateFeedStepWidthOptionsVisible(Lcom/metamoji/ui/dialog/DetailWindowSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/DetailWindowSettings;->updateFeedStepWidthOptionsVisible(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateLineFeedWidthLabel(Lcom/metamoji/ui/dialog/DetailWindowSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/dialog/DetailWindowSettings;->updateLineFeedWidthLabel()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateLineFeedWidthOptionsVisible(Lcom/metamoji/ui/dialog/DetailWindowSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/DetailWindowSettings;->updateLineFeedWidthOptionsVisible(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smforceWindowStepFromId(I)Z
    .locals 0

    invoke-static {p0}, Lcom/metamoji/ui/dialog/DetailWindowSettings;->forceWindowStepFromId(I)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 396
    sget v0, Lcom/metamoji/noteanytime/R$id;->textview_dwindow_auto_scroll_interval:I

    sget v1, Lcom/metamoji/noteanytime/R$id;->seekbar_dwindow_auto_scroll_interval:I

    sget v2, Lcom/metamoji/noteanytime/R$id;->label_dwindow_auto_scroll_area_width:I

    sget v3, Lcom/metamoji/noteanytime/R$id;->group_dwindow_auto_scroll_area_width:I

    sget v4, Lcom/metamoji/noteanytime/R$id;->button_dwindow_auto_scroll_area_width_normal:I

    sget v5, Lcom/metamoji/noteanytime/R$id;->button_dwindow_auto_scroll_area_width_small:I

    filled-new-array/range {v0 .. v5}, [I

    move-result-object v0

    sput-object v0, Lcom/metamoji/ui/dialog/DetailWindowSettings;->AUTOSCROLL_OPTIONS:[I

    .line 406
    sget v0, Lcom/metamoji/noteanytime/R$id;->seekbar_dwindow_line_feed_width:I

    sget v1, Lcom/metamoji/noteanytime/R$id;->textview_dwindow_line_feed_width:I

    sget v2, Lcom/metamoji/noteanytime/R$id;->textview_dwindow_line_feed_width_min:I

    sget v3, Lcom/metamoji/noteanytime/R$id;->textview_dwindow_line_feed_width_max:I

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/metamoji/ui/dialog/DetailWindowSettings;->LINEFEEDWIDTH_OPTIONS:[I

    .line 415
    sget v0, Lcom/metamoji/noteanytime/R$id;->textview_dwindow_feed_step_width:I

    sget v1, Lcom/metamoji/noteanytime/R$id;->button_feedStepMinus:I

    sget v2, Lcom/metamoji/noteanytime/R$id;->button_feedStepPlus:I

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/metamoji/ui/dialog/DetailWindowSettings;->FEEDSTEPWIDTH_OPTIONS:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/DetailWindowSettings;->mMarginLineVisible:Z

    .line 41
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/DetailWindowSettings;->mAutoScroll:Z

    const/4 v1, 0x0

    .line 42
    iput v1, p0, Lcom/metamoji/ui/dialog/DetailWindowSettings;->mAutoScrollInterval:F

    const/high16 v1, 0x43040000    # 132.0f

    .line 43
    iput v1, p0, Lcom/metamoji/ui/dialog/DetailWindowSettings;->mAutoScrollAreaWidth:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 44
    iput v1, p0, Lcom/metamoji/ui/dialog/DetailWindowSettings;->mLineFeedWidth:F

    .line 45
    iput v1, p0, Lcom/metamoji/ui/dialog/DetailWindowSettings;->mFeedStepWidth:F

    .line 46
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/DetailWindowSettings;->mForceWindowStep:Z

    .line 47
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/DetailWindowSettings;->mHasHLines:Z

    .line 50
    iput v0, p0, Lcom/metamoji/ui/dialog/DetailWindowSettings;->mStepperVal:I

    return-void
.end method

.method private autoScrollAreaWidthFromId(I)F
    .locals 2

    .line 162
    sget v0, Lcom/metamoji/noteanytime/R$id;->button_dwindow_auto_scroll_area_width_small:I

    if-ne p1, v0, :cond_0

    const/high16 p1, 0x42b00000    # 88.0f

    return p1

    .line 164
    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$id;->button_dwindow_auto_scroll_area_width_wide:I

    const/high16 v1, 0x43040000    # 132.0f

    if-ne p1, v0, :cond_1

    .line 165
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/DetailWindowSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/high16 p1, 0x43300000    # 176.0f

    return p1

    :cond_1
    return v1
.end method

.method private autoScrollIntervalFromProgress(I)F
    .locals 1

    const v0, 0x3dcccccd    # 0.1f

    int-to-float p1, p1

    mul-float/2addr p1, v0

    const/4 v0, 0x0

    add-float/2addr p1, v0

    return p1
.end method

.method private feedStepByStepperValue(I)F
    .locals 4

    if-nez p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    return p1

    :cond_0
    if-gez p1, :cond_1

    add-int/lit8 p1, p1, -0x1

    .line 510
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    double-to-float p1, v2

    return p1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    int-to-float p1, p1

    return p1
.end method

.method private feedStepStrByStepperValue(I)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    .line 498
    const-string p1, " 1 "

    return-object p1

    :cond_0
    if-gez p1, :cond_1

    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "1/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 p1, p1, -0x1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 502
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static forceWindowStepFromId(I)Z
    .locals 1

    .line 184
    sget v0, Lcom/metamoji/noteanytime/R$id;->button_dwindow_feed_type_slider:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 186
    :cond_0
    sget p0, Lcom/metamoji/noteanytime/R$id;->button_dwindow_feed_type_stepper:I

    const/4 p0, 0x0

    return p0
.end method

.method private idFromAutoScrollAreaWidth(F)I
    .locals 2

    .line 144
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/DetailWindowSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v0

    const/high16 v1, 0x42dc0000    # 110.0f

    if-eqz v0, :cond_2

    const/high16 v0, 0x431a0000    # 154.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 146
    sget p1, Lcom/metamoji/noteanytime/R$id;->button_dwindow_auto_scroll_area_width_wide:I

    return p1

    :cond_0
    cmpl-float p1, p1, v1

    if-lez p1, :cond_1

    .line 148
    sget p1, Lcom/metamoji/noteanytime/R$id;->button_dwindow_auto_scroll_area_width_normal:I

    return p1

    .line 150
    :cond_1
    sget p1, Lcom/metamoji/noteanytime/R$id;->button_dwindow_auto_scroll_area_width_small:I

    return p1

    :cond_2
    cmpl-float p1, p1, v1

    if-lez p1, :cond_3

    .line 154
    sget p1, Lcom/metamoji/noteanytime/R$id;->button_dwindow_auto_scroll_area_width_wide:I

    return p1

    .line 156
    :cond_3
    sget p1, Lcom/metamoji/noteanytime/R$id;->button_dwindow_auto_scroll_area_width_small:I

    return p1
.end method

.method private idFromForceWindowStep(Z)I
    .locals 0

    if-eqz p1, :cond_1

    .line 177
    iget-boolean p1, p0, Lcom/metamoji/ui/dialog/DetailWindowSettings;->mForceWindowStep:Z

    if-eqz p1, :cond_0

    sget p1, Lcom/metamoji/noteanytime/R$id;->button_dwindow_feed_type_slider:I

    return p1

    :cond_0
    sget p1, Lcom/metamoji/noteanytime/R$id;->button_dwindow_feed_type_stepper:I

    return p1

    .line 179
    :cond_1
    sget p1, Lcom/metamoji/noteanytime/R$id;->button_dwindow_feed_type_slider:I

    return p1
.end method

.method private lineFeedWidthFromProgress(I)F
    .locals 1

    int-to-float p1, p1

    const v0, 0x3dcccccd    # 0.1f

    mul-float/2addr p1, v0

    add-float/2addr p1, v0

    return p1
.end method

.method private progressFromAutoScrollInterval(F)I
    .locals 1

    const/4 v0, 0x0

    sub-float/2addr p1, v0

    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr p1, v0

    .line 117
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method private progressFromLineFeedWidth(F)I
    .locals 1

    const v0, 0x3dcccccd    # 0.1f

    sub-float/2addr p1, v0

    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr p1, v0

    .line 214
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method private static stepperValFromFeedStep(D)I
    .locals 3

    const-wide v0, 0x3fcccccccccccccdL    # 0.225

    cmpg-double v2, p0, v0

    if-gez v2, :cond_0

    const/4 p0, -0x4

    return p0

    :cond_0
    cmpg-double v0, v0, p0

    const-wide v1, 0x3fd29fbe76c8b439L    # 0.291

    if-gtz v0, :cond_1

    cmpg-double v0, p0, v1

    if-gez v0, :cond_1

    const/4 p0, -0x3

    return p0

    :cond_1
    cmpg-double v0, v1, p0

    const-wide v1, 0x3fda9fbe76c8b439L    # 0.416

    if-gtz v0, :cond_2

    cmpg-double v0, p0, v1

    if-gez v0, :cond_2

    const/4 p0, -0x2

    return p0

    :cond_2
    cmpg-double v0, v1, p0

    const-wide/high16 v1, 0x3fe8000000000000L    # 0.75

    if-gtz v0, :cond_3

    cmpg-double v0, p0, v1

    if-gez v0, :cond_3

    const/4 p0, -0x1

    return p0

    :cond_3
    cmpg-double v0, v1, p0

    const-wide/high16 v1, 0x3ff8000000000000L    # 1.5

    if-gez v0, :cond_4

    cmpg-double v0, p0, v1

    if-gez v0, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    cmpg-double v0, v1, p0

    const-wide/high16 v1, 0x4004000000000000L    # 2.5

    if-gtz v0, :cond_5

    cmpg-double v0, p0, v1

    if-gez v0, :cond_5

    const/4 p0, 0x1

    return p0

    :cond_5
    cmpg-double v0, v1, p0

    const-wide/high16 v1, 0x400c000000000000L    # 3.5

    if-gtz v0, :cond_6

    cmpg-double v0, p0, v1

    if-gez v0, :cond_6

    const/4 p0, 0x2

    return p0

    :cond_6
    cmpg-double v0, v1, p0

    if-gtz v0, :cond_7

    const-wide/high16 v0, 0x4012000000000000L    # 4.5

    cmpg-double p0, p0, v0

    if-gez p0, :cond_7

    const/4 p0, 0x3

    return p0

    :cond_7
    const/4 p0, 0x4

    return p0
.end method

.method private updateAutoScrollIntervalLabel()V
    .locals 3

    .line 456
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DetailWindowSettings;->mTextViewAutoScrollInterval:Lcom/metamoji/ui/common/UiTextView;

    iget-object v1, p0, Lcom/metamoji/ui/dialog/DetailWindowSettings;->mAutoScrollIntervalFormat:Ljava/lang/String;

    iget v2, p0, Lcom/metamoji/ui/dialog/DetailWindowSettings;->mAutoScrollInterval:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateAutoScrollOptionsGrayOut()V
    .locals 6

    .line 423
    iget-boolean v0, p0, Lcom/metamoji/ui/dialog/DetailWindowSettings;->mAutoScroll:Z

    .line 424
    sget-object v1, Lcom/metamoji/ui/dialog/DetailWindowSettings;->AUTOSCROLL_OPTIONS:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, v1, v3

    .line 425
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/DetailWindowSettings;->getDialogView()Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 426
    invoke-virtual {v4, v0}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateFeedStepWidthLabel()V
    .locals 2

    .line 464
    iget v0, p0, Lcom/metamoji/ui/dialog/DetailWindowSettings;->mStepperVal:I

    invoke-direct {p0, v0}, Lcom/metamoji/ui/dialog/DetailWindowSettings;->feedStepStrByStepperValue(I)Ljava/lang/String;

    move-result-object v0

    .line 465
    iget-object v1, p0, Lcom/metamoji/ui/dialog/DetailWindowSettings;->mTextFeedStepWidth:Lcom/metamoji/ui/common/UiTextView;

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/common/UiTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateFeedStepWidthOptionsVisible(Z)V
    .locals 6

    .line 449
    sget-object v0, Lcom/metamoji/ui/dialog/DetailWindowSettings;->FEEDSTEPWIDTH_OPTIONS:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    .line 450
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/DetailWindowSettings;->getDialogView()Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz p1, :cond_0

    move v5, v2

    goto :goto_1

    :cond_0
    const/16 v5, 0x8

    .line 451
    :goto_1
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateLineFeedWidthLabel()V
    .locals 3

    .line 460
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DetailWindowSettings;->mTextLineFeedWidth:Lcom/metamoji/ui/common/UiTextView;

    iget v1, p0, Lcom/metamoji/ui/dialog/DetailWindowSettings;->mLineFeedWidth:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%.1f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateLineFeedWidthOptionsVisible(Z)V
    .locals 6

    .line 437
    sget-object v0, Lcom/metamoji/ui/dialog/DetailWindowSettings;->LINEFEEDWIDTH_OPTIONS:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    .line 438
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/DetailWindowSettings;->getDialogView()Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz p1, :cond_0

    move v5, v2

    goto :goto_1

    :cond_0
    const/16 v5, 0x8

    .line 439
    :goto_1
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateStepperEnabled()V
    .locals 5

    .line 533
    iget-boolean v0, p0, Lcom/metamoji/ui/dialog/DetailWindowSettings;->mHasHLines:Z

    if-eqz v0, :cond_2

    .line 534
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DetailWindowSettings;->mFeedButtonMinus:Lcom/metamoji/ui/common/UiButton;

    iget v1, p0, Lcom/metamoji/ui/dialog/DetailWindowSettings;->mStepperVal:I

    const/4 v2, -0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    .line 535
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DetailWindowSettings;->mFeedButtonPlus:Lcom/metamoji/ui/common/UiButton;

    iget v1, p0, Lcom/metamoji/ui/dialog/DetailWindowSettings;->mStepperVal:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    invoke-virtual {v0, v3}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method public getAutoScrollAreaWidth()F
    .locals 1

    .line 140
    iget v0, p0, Lcom/metamoji/ui/dialog/DetailWindowSettings;->mAutoScrollAreaWidth:F

    return v0
.end method

.method public getAutoScrollInterval()F
    .locals 1

    .line 113
    iget v0, p0, Lcom/metamoji/ui/dialog/DetailWindowSettings;->mAutoScrollInterval:F

    return v0
.end method

.method public getFeedStepWidth()F
    .locals 1

    .line 237
    iget v0, p0, Lcom/metamoji/ui/dialog/DetailWindowSettings;->mFeedStepWidth:F

    return v0
.end method

.method public getForceWindowStep()Z
    .locals 1

    .line 255
    iget-boolean v0, p0, Lcom/metamoji/ui/dialog/DetailWindowSettings;->mForceWindowStep:Z

    return v0
.end method

.method public getLineFeedWidth()F
    .locals 1

    .line 210
    iget v0, p0, Lcom/metamoji/ui/dialog/DetailWindowSettings;->mLineFeedWidth:F

    return v0
.end method

.method public isAutoScroll()Z
    .locals 1

    .line 94
    iget-boolean v0, p0, Lcom/metamoji/ui/dialog/DetailWindowSettings;->mAutoScroll:Z

    return v0
.end method

.method public isMarginLineVisible()Z
    .locals 1

    .line 75
    iget-boolean v0, p0, Lcom/metamoji/ui/dialog/DetailWindowSettings;->mMarginLineVisible:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 518
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/metamoji/noteanytime/R$id;->button_feedStepMinus:I

    if-ne v0, v1, :cond_0

    .line 519
    iget p1, p0, Lcom/metamoji/ui/dialog/DetailWindowSettings;->mStepperVal:I

    const/4 v0, -0x4

    if-ge v0, p1, :cond_1

    add-int/lit8 p1, p1, -0x1

    .line 520
    iput p1, p0, Lcom/metamoji/ui/dialog/DetailWindowSettings;->mStepperVal:I

    goto :goto_0

    .line 522
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/metamoji/noteanytime/R$id;->button_feedStepPlus:I

    if-ne p1, v0, :cond_1

    .line 523
    iget p1, p0, Lcom/metamoji/ui/dialog/DetailWindowSettings;->mStepperVal:I

    const/4 v0, 0x4

    if-ge p1, v0, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 524
    iput p1, p0, Lcom/metamoji/ui/dialog/DetailWindowSettings;->mStepperVal:I

    .line 527
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/DetailWindowSettings;->updateFeedStepWidthLabel()V

    .line 528
    iget p1, p0, Lcom/metamoji/ui/dialog/DetailWindowSettings;->mStepperVal:I

    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/DetailWindowSettings;->feedStepByStepperValue(I)F

    move-result p1

    iput p1, p0, Lcom/metamoji/ui/dialog/DetailWindowSettings;->mFeedStepWidth:F

    .line 529
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/DetailWindowSettings;->updateStepperEnabled()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .line 271
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_dwindow_settings:I

    iput v0, p0, Lcom/metamoji/ui/dialog/DetailWindowSettings;->mViewId:I

    .line 272
    sget v0, Lcom/metamoji/noteanytime/R$string;->DetailWindow_Settings:I

    iput v0, p0, Lcom/metamoji/ui/dialog/DetailWindowSettings;->mTitleId:I

    .line 274
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 276
    sget p2, Lcom/metamoji/noteanytime/R$id;->switch_dwindow_show_margin:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiSwitch;

    .line 277
    iget-boolean p3, p0, Lcom/metamoji/ui/dialog/DetailWindowSettings;->mMarginLineVisible:Z

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiSwitch;->setChecked(Z)V

    .line 278
    new-instance p3, Lcom/metamoji/ui/dialog/DetailWindowSettings$1;

    invoke-direct {p3, p0}, Lcom/metamoji/ui/dialog/DetailWindowSettings$1;-><init>(Lcom/metamoji/ui/dialog/DetailWindowSettings;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 285
    sget p2, Lcom/metamoji/noteanytime/R$id;->switch_dwindow_auto_scroll:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiSwitch;

    .line 286
    iget-boolean p3, p0, Lcom/metamoji/ui/dialog/DetailWindowSettings;->mAutoScroll:Z

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiSwitch;->setChecked(Z)V

    .line 287
    new-instance p3, Lcom/metamoji/ui/dialog/DetailWindowSettings$2;

    invoke-direct {p3, p0}, Lcom/metamoji/ui/dialog/DetailWindowSettings$2;-><init>(Lcom/metamoji/ui/dialog/DetailWindowSettings;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 295
    sget p2, Lcom/metamoji/noteanytime/R$id;->seekbar_dwindow_auto_scroll_interval:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/SeekBar;

    const/high16 p3, 0x3f800000    # 1.0f

    .line 296
    invoke-direct {p0, p3}, Lcom/metamoji/ui/dialog/DetailWindowSettings;->progressFromAutoScrollInterval(F)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 297
    iget p3, p0, Lcom/metamoji/ui/dialog/DetailWindowSettings;->mAutoScrollInterval:F

    invoke-direct {p0, p3}, Lcom/metamoji/ui/dialog/DetailWindowSettings;->progressFromAutoScrollInterval(F)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 298
    new-instance p3, Lcom/metamoji/ui/dialog/DetailWindowSettings$3;

    invoke-direct {p3, p0}, Lcom/metamoji/ui/dialog/DetailWindowSettings$3;-><init>(Lcom/metamoji/ui/dialog/DetailWindowSettings;)V

    invoke-virtual {p2, p3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 314
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/DetailWindowSettings;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/metamoji/noteanytime/R$string;->SystemOption_AutoScrollTime:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/ui/dialog/DetailWindowSettings;->mAutoScrollIntervalFormat:Ljava/lang/String;

    .line 315
    sget p2, Lcom/metamoji/noteanytime/R$id;->textview_dwindow_auto_scroll_interval:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiTextView;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/DetailWindowSettings;->mTextViewAutoScrollInterval:Lcom/metamoji/ui/common/UiTextView;

    .line 317
    sget p2, Lcom/metamoji/noteanytime/R$id;->group_dwindow_auto_scroll_area_width:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiRadioGroup;

    .line 318
    iget p3, p0, Lcom/metamoji/ui/dialog/DetailWindowSettings;->mAutoScrollAreaWidth:F

    invoke-direct {p0, p3}, Lcom/metamoji/ui/dialog/DetailWindowSettings;->idFromAutoScrollAreaWidth(F)I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiRadioGroup;->check(I)V

    .line 319
    new-instance p3, Lcom/metamoji/ui/dialog/DetailWindowSettings$4;

    invoke-direct {p3, p0}, Lcom/metamoji/ui/dialog/DetailWindowSettings$4;-><init>(Lcom/metamoji/ui/dialog/DetailWindowSettings;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiRadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 325
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/DetailWindowSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 327
    sget p2, Lcom/metamoji/noteanytime/R$id;->button_dwindow_auto_scroll_area_width_normal:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/16 p3, 0x8

    .line 328
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 331
    :cond_0
    iget-boolean p2, p0, Lcom/metamoji/ui/dialog/DetailWindowSettings;->mForceWindowStep:Z

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    move p2, p3

    goto :goto_0

    :cond_1
    iget-boolean p2, p0, Lcom/metamoji/ui/dialog/DetailWindowSettings;->mHasHLines:Z

    .line 333
    :goto_0
    sget v0, Lcom/metamoji/noteanytime/R$id;->group_dwindow_feed_type:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiRadioGroup;

    .line 334
    iget-boolean v1, p0, Lcom/metamoji/ui/dialog/DetailWindowSettings;->mHasHLines:Z

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiRadioGroup;->setEnabled(Z)V

    .line 335
    invoke-direct {p0, p2}, Lcom/metamoji/ui/dialog/DetailWindowSettings;->idFromForceWindowStep(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiRadioGroup;->check(I)V

    .line 337
    new-instance v1, Lcom/metamoji/ui/dialog/DetailWindowSettings$5;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/dialog/DetailWindowSettings$5;-><init>(Lcom/metamoji/ui/dialog/DetailWindowSettings;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiRadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 347
    sget v0, Lcom/metamoji/noteanytime/R$id;->seekbar_dwindow_line_feed_width:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    const/high16 v1, 0x40400000    # 3.0f

    .line 348
    invoke-direct {p0, v1}, Lcom/metamoji/ui/dialog/DetailWindowSettings;->progressFromLineFeedWidth(F)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 349
    iget v2, p0, Lcom/metamoji/ui/dialog/DetailWindowSettings;->mLineFeedWidth:F

    invoke-direct {p0, v2}, Lcom/metamoji/ui/dialog/DetailWindowSettings;->progressFromLineFeedWidth(F)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 350
    new-instance v2, Lcom/metamoji/ui/dialog/DetailWindowSettings$6;

    invoke-direct {v2, p0}, Lcom/metamoji/ui/dialog/DetailWindowSettings$6;-><init>(Lcom/metamoji/ui/dialog/DetailWindowSettings;)V

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    xor-int/lit8 v0, p2, 0x1

    .line 365
    invoke-direct {p0, v0}, Lcom/metamoji/ui/dialog/DetailWindowSettings;->updateLineFeedWidthOptionsVisible(Z)V

    .line 367
    sget v0, Lcom/metamoji/noteanytime/R$id;->textview_dwindow_line_feed_width:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiTextView;

    iput-object v0, p0, Lcom/metamoji/ui/dialog/DetailWindowSettings;->mTextLineFeedWidth:Lcom/metamoji/ui/common/UiTextView;

    .line 369
    sget v0, Lcom/metamoji/noteanytime/R$id;->textview_dwindow_line_feed_width_min:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiTextView;

    const v2, 0x3dcccccd    # 0.1f

    .line 370
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%.1f"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/common/UiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    sget v0, Lcom/metamoji/noteanytime/R$id;->textview_dwindow_line_feed_width_max:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiTextView;

    .line 372
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    invoke-direct {p0, p2}, Lcom/metamoji/ui/dialog/DetailWindowSettings;->updateFeedStepWidthOptionsVisible(Z)V

    .line 376
    sget p2, Lcom/metamoji/noteanytime/R$id;->button_feedStepMinus:I

    sget v0, Lcom/metamoji/noteanytime/R$id;->button_feedStepPlus:I

    filled-new-array {p2, v0}, [I

    move-result-object p2

    :goto_1
    const/4 v0, 0x2

    if-ge p3, v0, :cond_2

    .line 377
    aget v0, p2, p3

    .line 378
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiButton;

    .line 379
    invoke-virtual {v0, p0}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 381
    :cond_2
    iget p2, p0, Lcom/metamoji/ui/dialog/DetailWindowSettings;->mFeedStepWidth:F

    float-to-double p2, p2

    invoke-static {p2, p3}, Lcom/metamoji/ui/dialog/DetailWindowSettings;->stepperValFromFeedStep(D)I

    move-result p2

    iput p2, p0, Lcom/metamoji/ui/dialog/DetailWindowSettings;->mStepperVal:I

    .line 382
    sget p2, Lcom/metamoji/noteanytime/R$id;->textview_dwindow_feed_step_width:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiTextView;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/DetailWindowSettings;->mTextFeedStepWidth:Lcom/metamoji/ui/common/UiTextView;

    .line 383
    sget p2, Lcom/metamoji/noteanytime/R$id;->button_feedStepMinus:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/DetailWindowSettings;->mFeedButtonMinus:Lcom/metamoji/ui/common/UiButton;

    .line 384
    sget p2, Lcom/metamoji/noteanytime/R$id;->button_feedStepPlus:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/DetailWindowSettings;->mFeedButtonPlus:Lcom/metamoji/ui/common/UiButton;

    .line 386
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/dialog/DetailWindowSettings;->restoreInstanceStateIfAvailable(Landroid/view/View;)Z

    .line 388
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/DetailWindowSettings;->updateAutoScrollOptionsGrayOut()V

    .line 389
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/DetailWindowSettings;->updateAutoScrollIntervalLabel()V

    .line 390
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/DetailWindowSettings;->updateLineFeedWidthLabel()V

    .line 391
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/DetailWindowSettings;->updateFeedStepWidthLabel()V

    .line 392
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/DetailWindowSettings;->updateStepperEnabled()V

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 544
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 545
    sget-object v0, Lcom/metamoji/ui/dialog/DetailWindowSettings;->Key_ReconstructDialogFlag:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setAutoScroll(Z)V
    .locals 0

    .line 85
    iput-boolean p1, p0, Lcom/metamoji/ui/dialog/DetailWindowSettings;->mAutoScroll:Z

    return-void
.end method

.method public setAutoScrollAreaWidth(F)V
    .locals 0

    .line 131
    iput p1, p0, Lcom/metamoji/ui/dialog/DetailWindowSettings;->mAutoScrollAreaWidth:F

    return-void
.end method

.method public setAutoScrollInterval(F)V
    .locals 0

    .line 104
    iput p1, p0, Lcom/metamoji/ui/dialog/DetailWindowSettings;->mAutoScrollInterval:F

    return-void
.end method

.method public setFeedStepWidth(F)V
    .locals 0

    .line 228
    iput p1, p0, Lcom/metamoji/ui/dialog/DetailWindowSettings;->mFeedStepWidth:F

    return-void
.end method

.method public setForceWindowStep(Z)V
    .locals 0

    .line 246
    iput-boolean p1, p0, Lcom/metamoji/ui/dialog/DetailWindowSettings;->mForceWindowStep:Z

    return-void
.end method

.method public setHasHLines(Z)V
    .locals 0

    .line 265
    iput-boolean p1, p0, Lcom/metamoji/ui/dialog/DetailWindowSettings;->mHasHLines:Z

    return-void
.end method

.method public setLineFeedWidth(F)V
    .locals 0

    .line 201
    iput p1, p0, Lcom/metamoji/ui/dialog/DetailWindowSettings;->mLineFeedWidth:F

    return-void
.end method

.method public setMarginLineVisible(Z)V
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/metamoji/ui/dialog/DetailWindowSettings;->mMarginLineVisible:Z

    return-void
.end method
