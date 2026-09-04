.class public Lcom/metamoji/ui/dialog/SystemOption;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "SystemOption.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/dialog/SystemOption$GroupUpStyleStack;
    }
.end annotation


# instance fields
.field private mCommandButtons:I

.field private mCopiedShare:Z

.field private mDefaults:Lcom/metamoji/nt/NtUserDefaults;

.field private mDrawLongPressJudge:Z

.field private mFormatDrawTime:Ljava/lang/String;

.field private mFormatOneTapScrollerDisplayDelay:Ljava/lang/String;

.field private mGroupCommandButtons:Lcom/metamoji/ui/common/UiRadioGroup;

.field private mGroupOneTapScrollerLocation:Lcom/metamoji/ui/common/UiRadioGroup;

.field private mGroupPaintResponse:Lcom/metamoji/ui/common/UiRadioGroup;

.field private mGroupPositionMap:Lcom/metamoji/ui/common/UiRadioGroup;

.field private mHighResolution:Z

.field private mHistoryTab:Z

.field private mImageQualityChoice:Z

.field private mJumpEnabled:Z

.field private mLongPressTime:I

.field private mOneTapScroller:Z

.field private mOneTapScrollerDisplayDelay:I

.field private mOneTapScrollerLocation:I

.field private mPaintResponse:I

.field private mPositionMapPos:I

.field private mPositionMapState:Z

.field private mSaveCameraRoll:Z

.field private mSchoolPageType:I

.field private mSeekBarDrawTime:Landroid/widget/SeekBar;

.field private mSeekBarOneTapScrollerDisplayDelay:Landroid/widget/SeekBar;

.field private mShowDetailWindowButton:Z

.field private mShowHover:Z

.field private mShowWristGuardButton:Z

.field private mTextViewDrawTime:Lcom/metamoji/ui/common/UiTextView;

.field private mTextViewOneTapScrollerDisplayDelay:Lcom/metamoji/ui/common/UiTextView;

.field private mTextViewOneTapScrollerLocation:Lcom/metamoji/ui/common/UiTextView;

.field private mTextViewPositionMap:Lcom/metamoji/ui/common/UiTextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmGroupCommandButtons(Lcom/metamoji/ui/dialog/SystemOption;)Lcom/metamoji/ui/common/UiRadioGroup;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/dialog/SystemOption;->mGroupCommandButtons:Lcom/metamoji/ui/common/UiRadioGroup;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGroupPaintResponse(Lcom/metamoji/ui/dialog/SystemOption;)Lcom/metamoji/ui/common/UiRadioGroup;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/dialog/SystemOption;->mGroupPaintResponse:Lcom/metamoji/ui/common/UiRadioGroup;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGroupPositionMap(Lcom/metamoji/ui/dialog/SystemOption;)Lcom/metamoji/ui/common/UiRadioGroup;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/dialog/SystemOption;->mGroupPositionMap:Lcom/metamoji/ui/common/UiRadioGroup;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSeekBarDrawTime(Lcom/metamoji/ui/dialog/SystemOption;)Landroid/widget/SeekBar;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/dialog/SystemOption;->mSeekBarDrawTime:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTextViewDrawTime(Lcom/metamoji/ui/dialog/SystemOption;)Lcom/metamoji/ui/common/UiTextView;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/dialog/SystemOption;->mTextViewDrawTime:Lcom/metamoji/ui/common/UiTextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTextViewPositionMap(Lcom/metamoji/ui/dialog/SystemOption;)Lcom/metamoji/ui/common/UiTextView;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/dialog/SystemOption;->mTextViewPositionMap:Lcom/metamoji/ui/common/UiTextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCommandButtons(Lcom/metamoji/ui/dialog/SystemOption;I)V
    .locals 0

    iput p1, p0, Lcom/metamoji/ui/dialog/SystemOption;->mCommandButtons:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCopiedShare(Lcom/metamoji/ui/dialog/SystemOption;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/metamoji/ui/dialog/SystemOption;->mCopiedShare:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDrawLongPressJudge(Lcom/metamoji/ui/dialog/SystemOption;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/metamoji/ui/dialog/SystemOption;->mDrawLongPressJudge:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmHighResolution(Lcom/metamoji/ui/dialog/SystemOption;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/metamoji/ui/dialog/SystemOption;->mHighResolution:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmHistoryTab(Lcom/metamoji/ui/dialog/SystemOption;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/metamoji/ui/dialog/SystemOption;->mHistoryTab:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmImageQualityChoice(Lcom/metamoji/ui/dialog/SystemOption;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/metamoji/ui/dialog/SystemOption;->mImageQualityChoice:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmJumpEnabled(Lcom/metamoji/ui/dialog/SystemOption;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/metamoji/ui/dialog/SystemOption;->mJumpEnabled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLongPressTime(Lcom/metamoji/ui/dialog/SystemOption;I)V
    .locals 0

    iput p1, p0, Lcom/metamoji/ui/dialog/SystemOption;->mLongPressTime:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPaintResponse(Lcom/metamoji/ui/dialog/SystemOption;I)V
    .locals 0

    iput p1, p0, Lcom/metamoji/ui/dialog/SystemOption;->mPaintResponse:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPositionMapPos(Lcom/metamoji/ui/dialog/SystemOption;I)V
    .locals 0

    iput p1, p0, Lcom/metamoji/ui/dialog/SystemOption;->mPositionMapPos:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPositionMapState(Lcom/metamoji/ui/dialog/SystemOption;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/metamoji/ui/dialog/SystemOption;->mPositionMapState:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSaveCameraRoll(Lcom/metamoji/ui/dialog/SystemOption;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/metamoji/ui/dialog/SystemOption;->mSaveCameraRoll:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSchoolPageType(Lcom/metamoji/ui/dialog/SystemOption;I)V
    .locals 0

    iput p1, p0, Lcom/metamoji/ui/dialog/SystemOption;->mSchoolPageType:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmShowDetailWindowButton(Lcom/metamoji/ui/dialog/SystemOption;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/metamoji/ui/dialog/SystemOption;->mShowDetailWindowButton:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmShowHover(Lcom/metamoji/ui/dialog/SystemOption;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/metamoji/ui/dialog/SystemOption;->mShowHover:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmShowWristGuardButton(Lcom/metamoji/ui/dialog/SystemOption;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/metamoji/ui/dialog/SystemOption;->mShowWristGuardButton:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$msetTextViewDrawTime(Lcom/metamoji/ui/dialog/SystemOption;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/dialog/SystemOption;->setTextViewDrawTime()V

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 55
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/metamoji/ui/dialog/SystemOption;->mDefaults:Lcom/metamoji/nt/NtUserDefaults;

    const/4 v1, 0x0

    .line 61
    iput-boolean v1, p0, Lcom/metamoji/ui/dialog/SystemOption;->mShowHover:Z

    .line 63
    iput-object v0, p0, Lcom/metamoji/ui/dialog/SystemOption;->mGroupCommandButtons:Lcom/metamoji/ui/common/UiRadioGroup;

    const/4 v2, 0x1

    .line 64
    iput v2, p0, Lcom/metamoji/ui/dialog/SystemOption;->mCommandButtons:I

    .line 66
    iput-boolean v1, p0, Lcom/metamoji/ui/dialog/SystemOption;->mShowWristGuardButton:Z

    .line 67
    iput-boolean v1, p0, Lcom/metamoji/ui/dialog/SystemOption;->mShowDetailWindowButton:Z

    .line 69
    iput-boolean v1, p0, Lcom/metamoji/ui/dialog/SystemOption;->mJumpEnabled:Z

    .line 71
    iput-object v0, p0, Lcom/metamoji/ui/dialog/SystemOption;->mGroupPositionMap:Lcom/metamoji/ui/common/UiRadioGroup;

    .line 72
    iput-object v0, p0, Lcom/metamoji/ui/dialog/SystemOption;->mTextViewPositionMap:Lcom/metamoji/ui/common/UiTextView;

    .line 73
    iput-boolean v2, p0, Lcom/metamoji/ui/dialog/SystemOption;->mPositionMapState:Z

    .line 74
    iput v2, p0, Lcom/metamoji/ui/dialog/SystemOption;->mPositionMapPos:I

    .line 76
    iput-object v0, p0, Lcom/metamoji/ui/dialog/SystemOption;->mSeekBarOneTapScrollerDisplayDelay:Landroid/widget/SeekBar;

    .line 77
    iput-object v0, p0, Lcom/metamoji/ui/dialog/SystemOption;->mTextViewOneTapScrollerDisplayDelay:Lcom/metamoji/ui/common/UiTextView;

    .line 78
    iput-boolean v2, p0, Lcom/metamoji/ui/dialog/SystemOption;->mOneTapScroller:Z

    .line 79
    iput v2, p0, Lcom/metamoji/ui/dialog/SystemOption;->mOneTapScrollerDisplayDelay:I

    .line 80
    iput-object v0, p0, Lcom/metamoji/ui/dialog/SystemOption;->mFormatOneTapScrollerDisplayDelay:Ljava/lang/String;

    .line 81
    iput-object v0, p0, Lcom/metamoji/ui/dialog/SystemOption;->mGroupOneTapScrollerLocation:Lcom/metamoji/ui/common/UiRadioGroup;

    .line 82
    iput-object v0, p0, Lcom/metamoji/ui/dialog/SystemOption;->mTextViewOneTapScrollerLocation:Lcom/metamoji/ui/common/UiTextView;

    .line 83
    iput v1, p0, Lcom/metamoji/ui/dialog/SystemOption;->mOneTapScrollerLocation:I

    .line 90
    iput-object v0, p0, Lcom/metamoji/ui/dialog/SystemOption;->mSeekBarDrawTime:Landroid/widget/SeekBar;

    .line 91
    iput-object v0, p0, Lcom/metamoji/ui/dialog/SystemOption;->mTextViewDrawTime:Lcom/metamoji/ui/common/UiTextView;

    .line 92
    iput-boolean v2, p0, Lcom/metamoji/ui/dialog/SystemOption;->mDrawLongPressJudge:Z

    const-wide/high16 v3, 0x4008000000000000L    # 3.0

    .line 93
    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v3, v3

    iput v3, p0, Lcom/metamoji/ui/dialog/SystemOption;->mLongPressTime:I

    .line 94
    iput-object v0, p0, Lcom/metamoji/ui/dialog/SystemOption;->mFormatDrawTime:Ljava/lang/String;

    .line 97
    iput-boolean v2, p0, Lcom/metamoji/ui/dialog/SystemOption;->mSaveCameraRoll:Z

    .line 99
    iput-boolean v1, p0, Lcom/metamoji/ui/dialog/SystemOption;->mImageQualityChoice:Z

    .line 102
    iput-boolean v1, p0, Lcom/metamoji/ui/dialog/SystemOption;->mHighResolution:Z

    .line 105
    iput v2, p0, Lcom/metamoji/ui/dialog/SystemOption;->mSchoolPageType:I

    .line 107
    iput-boolean v2, p0, Lcom/metamoji/ui/dialog/SystemOption;->mHistoryTab:Z

    .line 109
    iput-boolean v1, p0, Lcom/metamoji/ui/dialog/SystemOption;->mCopiedShare:Z

    .line 116
    iput-object v0, p0, Lcom/metamoji/ui/dialog/SystemOption;->mGroupPaintResponse:Lcom/metamoji/ui/common/UiRadioGroup;

    .line 117
    iput v1, p0, Lcom/metamoji/ui/dialog/SystemOption;->mPaintResponse:I

    return-void
.end method

.method private setTextViewDrawTime()V
    .locals 3

    .line 737
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SystemOption;->mTextViewDrawTime:Lcom/metamoji/ui/common/UiTextView;

    if-eqz v0, :cond_0

    .line 738
    iget v1, p0, Lcom/metamoji/ui/dialog/SystemOption;->mLongPressTime:I

    add-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr v1, v2

    .line 739
    iget-object v2, p0, Lcom/metamoji/ui/dialog/SystemOption;->mFormatDrawTime:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private setTextViewOneTapScrollerDisplayDelay()V
    .locals 3

    .line 744
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SystemOption;->mTextViewOneTapScrollerDisplayDelay:Lcom/metamoji/ui/common/UiTextView;

    if-eqz v0, :cond_0

    .line 745
    iget v1, p0, Lcom/metamoji/ui/dialog/SystemOption;->mOneTapScrollerDisplayDelay:I

    int-to-float v1, v1

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr v1, v2

    .line 746
    iget-object v2, p0, Lcom/metamoji/ui/dialog/SystemOption;->mFormatOneTapScrollerDisplayDelay:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/view/View;)V
    .locals 0

    .line 956
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onCancel(Landroid/view/View;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .line 122
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_systemoption:I

    iput v0, p0, Lcom/metamoji/ui/dialog/SystemOption;->mViewId:I

    .line 123
    sget v0, Lcom/metamoji/noteanytime/R$string;->SystemOption_Title:I

    iput v0, p0, Lcom/metamoji/ui/dialog/SystemOption;->mTitleId:I

    const/4 v0, 0x1

    .line 129
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/SystemOption;->setModal(Z)V

    .line 131
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/ui/dialog/SystemOption;->mDefaults:Lcom/metamoji/nt/NtUserDefaults;

    .line 133
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 137
    sget p2, Lcom/metamoji/noteanytime/R$id;->button_share:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    const/4 p3, 0x0

    .line 138
    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    .line 139
    new-instance v1, Lcom/metamoji/ui/dialog/SystemOption$1;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/dialog/SystemOption$1;-><init>(Lcom/metamoji/ui/dialog/SystemOption;)V

    invoke-virtual {p2, v1}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    sget p2, Lcom/metamoji/noteanytime/R$id;->SystemOptionGroup_ImageQualityChoice:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    if-eqz p2, :cond_0

    .line 156
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 157
    iget-object p2, p0, Lcom/metamoji/ui/dialog/SystemOption;->mDefaults:Lcom/metamoji/nt/NtUserDefaults;

    const-string v1, "ImageQualityChoice"

    invoke-virtual {p2, v1, p3}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/metamoji/ui/dialog/SystemOption;->mImageQualityChoice:Z

    .line 158
    sget p2, Lcom/metamoji/noteanytime/R$id;->switch_imagequelitychoice:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiSwitch;

    .line 159
    iget-boolean v1, p0, Lcom/metamoji/ui/dialog/SystemOption;->mImageQualityChoice:Z

    invoke-virtual {p2, v1}, Lcom/metamoji/ui/common/UiSwitch;->setChecked(Z)V

    .line 160
    new-instance v1, Lcom/metamoji/ui/dialog/SystemOption$2;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/dialog/SystemOption$2;-><init>(Lcom/metamoji/ui/dialog/SystemOption;)V

    invoke-virtual {p2, v1}, Lcom/metamoji/ui/common/UiSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 173
    :cond_0
    sget p2, Lcom/metamoji/noteanytime/R$id;->switch_generatehdimage:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiSwitch;

    .line 174
    iget-object v1, p0, Lcom/metamoji/ui/dialog/SystemOption;->mDefaults:Lcom/metamoji/nt/NtUserDefaults;

    const-string v2, "GenerateHDImage"

    invoke-virtual {v1, v2, v0}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/metamoji/ui/dialog/SystemOption;->mHighResolution:Z

    if-eqz p2, :cond_1

    .line 176
    invoke-virtual {p2, v1}, Lcom/metamoji/ui/common/UiSwitch;->setChecked(Z)V

    .line 177
    new-instance v1, Lcom/metamoji/ui/dialog/SystemOption$3;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/dialog/SystemOption$3;-><init>(Lcom/metamoji/ui/dialog/SystemOption;)V

    invoke-virtual {p2, v1}, Lcom/metamoji/ui/common/UiSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 188
    :cond_1
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 189
    sget p2, Lcom/metamoji/noteanytime/R$id;->SystemOptionGroup_SchoolPageType:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    .line 190
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 192
    sget p2, Lcom/metamoji/noteanytime/R$id;->spinner_schoolPageType:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    .line 194
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->getSchoolPageTypeDefaultValue()I

    move-result v1

    iput v1, p0, Lcom/metamoji/ui/dialog/SystemOption;->mSchoolPageType:I

    if-eqz p2, :cond_2

    .line 196
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 197
    sget v2, Lcom/metamoji/noteanytime/R$string;->School_Label_Pagetype_Normal:I

    invoke-virtual {p0, v2}, Lcom/metamoji/ui/dialog/SystemOption;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    sget v2, Lcom/metamoji/noteanytime/R$string;->School_Label_Pagetype_Personal_User:I

    invoke-virtual {p0, v2}, Lcom/metamoji/ui/dialog/SystemOption;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    sget v2, Lcom/metamoji/noteanytime/R$string;->School_Label_Pagetype_Personal_Group:I

    invoke-virtual {p0, v2}, Lcom/metamoji/ui/dialog/SystemOption;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    sget v2, Lcom/metamoji/noteanytime/R$string;->School_Label_Pagetype_Personal_Class:I

    invoke-virtual {p0, v2}, Lcom/metamoji/ui/dialog/SystemOption;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/SystemOption;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const v4, 0x1090008

    invoke-direct {v2, v3, v4, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 203
    sget v1, Lcom/metamoji/noteanytime/R$layout;->school_spinner_drop_down_item:I

    invoke-virtual {v2, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 204
    invoke-virtual {p2, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 205
    iget v1, p0, Lcom/metamoji/ui/dialog/SystemOption;->mSchoolPageType:I

    invoke-virtual {p2, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 206
    new-instance v1, Lcom/metamoji/ui/dialog/SystemOption$4;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/dialog/SystemOption$4;-><init>(Lcom/metamoji/ui/dialog/SystemOption;)V

    invoke-virtual {p2, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 222
    :cond_2
    new-instance p2, Lcom/metamoji/ui/dialog/SystemOption$GroupUpStyleStack;

    invoke-direct {p2, p0}, Lcom/metamoji/ui/dialog/SystemOption$GroupUpStyleStack;-><init>(Lcom/metamoji/ui/dialog/SystemOption;)V

    .line 224
    sget v1, Lcom/metamoji/noteanytime/R$id;->SystemOptionGroup_ShowHistoryTab:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 226
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v2

    sget-object v3, Lcom/metamoji/nt/NtFeature;->AppUnavailableHistoryTab:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v2, v3}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v2

    const/16 v3, 0x8

    if-nez v2, :cond_5

    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/SystemOption;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    .line 229
    :cond_3
    sget v2, Lcom/metamoji/noteanytime/R$id;->switch_history_tab:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ui/common/UiSwitch;

    .line 230
    iget-object v4, p0, Lcom/metamoji/ui/dialog/SystemOption;->mDefaults:Lcom/metamoji/nt/NtUserDefaults;

    const-string v5, "MMJNtHistoryBarShow"

    invoke-virtual {v4, v5, p3}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/metamoji/ui/dialog/SystemOption;->mHistoryTab:Z

    if-eqz v2, :cond_4

    .line 232
    invoke-virtual {v2, v4}, Lcom/metamoji/ui/common/UiSwitch;->setChecked(Z)V

    .line 233
    new-instance v4, Lcom/metamoji/ui/dialog/SystemOption$5;

    invoke-direct {v4, p0}, Lcom/metamoji/ui/dialog/SystemOption$5;-><init>(Lcom/metamoji/ui/dialog/SystemOption;)V

    invoke-virtual {v2, v4}, Lcom/metamoji/ui/common/UiSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 240
    :cond_4
    invoke-virtual {p2, v1}, Lcom/metamoji/ui/dialog/SystemOption$GroupUpStyleStack;->add(Landroid/view/View;)V

    goto :goto_1

    .line 227
    :cond_5
    :goto_0
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 243
    :goto_1
    sget v1, Lcom/metamoji/noteanytime/R$id;->SystemOptionGroup_CopiedShare:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 244
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v2

    sget-object v4, Lcom/metamoji/nt/NtFeature;->AppClearCopiedShareNote:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v2, v4}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 245
    sget v2, Lcom/metamoji/noteanytime/R$id;->switch_copiedshare:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ui/common/UiSwitch;

    .line 246
    iget-object v4, p0, Lcom/metamoji/ui/dialog/SystemOption;->mDefaults:Lcom/metamoji/nt/NtUserDefaults;

    const-string v5, "MMJCopiedShare"

    invoke-virtual {v4, v5, p3}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/metamoji/ui/dialog/SystemOption;->mCopiedShare:Z

    if-eqz v2, :cond_6

    .line 248
    invoke-virtual {v2, v4}, Lcom/metamoji/ui/common/UiSwitch;->setChecked(Z)V

    .line 249
    new-instance v4, Lcom/metamoji/ui/dialog/SystemOption$6;

    invoke-direct {v4, p0}, Lcom/metamoji/ui/dialog/SystemOption$6;-><init>(Lcom/metamoji/ui/dialog/SystemOption;)V

    invoke-virtual {v2, v4}, Lcom/metamoji/ui/common/UiSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 256
    :cond_6
    invoke-virtual {p2, v1}, Lcom/metamoji/ui/dialog/SystemOption$GroupUpStyleStack;->add(Landroid/view/View;)V

    goto :goto_2

    .line 259
    :cond_7
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 262
    :goto_2
    sget v1, Lcom/metamoji/noteanytime/R$id;->SystemOptionGroup_OneTapScroller:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 265
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 350
    sget v1, Lcom/metamoji/noteanytime/R$id;->SystemOptionGroup_ShowHover:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 351
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/SystemOption;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 352
    sget v2, Lcom/metamoji/noteanytime/R$id;->switch_showhover:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ui/common/UiSwitch;

    .line 353
    iget-object v4, p0, Lcom/metamoji/ui/dialog/SystemOption;->mDefaults:Lcom/metamoji/nt/NtUserDefaults;

    const-string v5, "HoverSelectorEnable"

    invoke-virtual {v4, v5, p3}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/metamoji/ui/dialog/SystemOption;->mShowHover:Z

    if-eqz v2, :cond_8

    .line 355
    invoke-virtual {v2, v4}, Lcom/metamoji/ui/common/UiSwitch;->setChecked(Z)V

    .line 356
    new-instance v4, Lcom/metamoji/ui/dialog/SystemOption$10;

    invoke-direct {v4, p0}, Lcom/metamoji/ui/dialog/SystemOption$10;-><init>(Lcom/metamoji/ui/dialog/SystemOption;)V

    invoke-virtual {v2, v4}, Lcom/metamoji/ui/common/UiSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 363
    :cond_8
    invoke-virtual {p2, v1}, Lcom/metamoji/ui/dialog/SystemOption$GroupUpStyleStack;->add(Landroid/view/View;)V

    goto :goto_3

    .line 365
    :cond_9
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 368
    :goto_3
    sget v1, Lcom/metamoji/noteanytime/R$id;->SystemOptionGroup_CommandButton:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 369
    sget v2, Lcom/metamoji/noteanytime/R$id;->group_commandbuttons:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ui/common/UiRadioGroup;

    iput-object v2, p0, Lcom/metamoji/ui/dialog/SystemOption;->mGroupCommandButtons:Lcom/metamoji/ui/common/UiRadioGroup;

    .line 373
    iget-object v2, p0, Lcom/metamoji/ui/dialog/SystemOption;->mDefaults:Lcom/metamoji/nt/NtUserDefaults;

    const-string v4, "CommandButtons"

    invoke-virtual {v2, v4, v0}, Lcom/metamoji/nt/NtUserDefaults;->getIntValue(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/metamoji/ui/dialog/SystemOption;->mCommandButtons:I

    .line 374
    iget-object v4, p0, Lcom/metamoji/ui/dialog/SystemOption;->mGroupCommandButtons:Lcom/metamoji/ui/common/UiRadioGroup;

    if-eqz v4, :cond_a

    .line 375
    invoke-virtual {v4, v2}, Lcom/metamoji/ui/common/UiRadioGroup;->setCurrentButtonIndex(I)V

    .line 376
    iget-object v2, p0, Lcom/metamoji/ui/dialog/SystemOption;->mGroupCommandButtons:Lcom/metamoji/ui/common/UiRadioGroup;

    new-instance v4, Lcom/metamoji/ui/dialog/SystemOption$11;

    invoke-direct {v4, p0}, Lcom/metamoji/ui/dialog/SystemOption$11;-><init>(Lcom/metamoji/ui/dialog/SystemOption;)V

    invoke-virtual {v2, v4}, Lcom/metamoji/ui/common/UiRadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 384
    :cond_a
    sget v2, Lcom/metamoji/noteanytime/R$id;->layout_showWristGuardButton:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 385
    invoke-virtual {v2, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 386
    sget v2, Lcom/metamoji/noteanytime/R$id;->switch_showWristGuardButton:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ui/common/UiSwitch;

    .line 387
    iget-object v4, p0, Lcom/metamoji/ui/dialog/SystemOption;->mDefaults:Lcom/metamoji/nt/NtUserDefaults;

    const-string v5, "MMJWristGuardButtonVisible"

    invoke-virtual {v4, v5, p3}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/metamoji/ui/dialog/SystemOption;->mShowWristGuardButton:Z

    if-eqz v2, :cond_b

    .line 389
    invoke-virtual {v2, v4}, Lcom/metamoji/ui/common/UiSwitch;->setChecked(Z)V

    .line 390
    new-instance v4, Lcom/metamoji/ui/dialog/SystemOption$12;

    invoke-direct {v4, p0}, Lcom/metamoji/ui/dialog/SystemOption$12;-><init>(Lcom/metamoji/ui/dialog/SystemOption;)V

    invoke-virtual {v2, v4}, Lcom/metamoji/ui/common/UiSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 400
    :cond_b
    sget v2, Lcom/metamoji/noteanytime/R$id;->layout_showDetailWindowButton:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 401
    invoke-virtual {v2, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 402
    sget v2, Lcom/metamoji/noteanytime/R$id;->switch_showDetailWindowButton:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ui/common/UiSwitch;

    .line 403
    iget-object v4, p0, Lcom/metamoji/ui/dialog/SystemOption;->mDefaults:Lcom/metamoji/nt/NtUserDefaults;

    const-string v5, "MMJDetailWindowButtonVisible"

    invoke-virtual {v4, v5, p3}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/metamoji/ui/dialog/SystemOption;->mShowDetailWindowButton:Z

    if-eqz v2, :cond_c

    .line 405
    invoke-virtual {v2, v4}, Lcom/metamoji/ui/common/UiSwitch;->setChecked(Z)V

    .line 406
    new-instance v4, Lcom/metamoji/ui/dialog/SystemOption$13;

    invoke-direct {v4, p0}, Lcom/metamoji/ui/dialog/SystemOption$13;-><init>(Lcom/metamoji/ui/dialog/SystemOption;)V

    invoke-virtual {v2, v4}, Lcom/metamoji/ui/common/UiSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 414
    :cond_c
    invoke-virtual {p2, v1}, Lcom/metamoji/ui/dialog/SystemOption$GroupUpStyleStack;->add(Landroid/view/View;)V

    .line 416
    sget v1, Lcom/metamoji/noteanytime/R$id;->SystemOptionGroup_PositionMap:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 417
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v2

    sget-object v4, Lcom/metamoji/nt/NtFeature;->PositionMap:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v2, v4}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 418
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_5

    .line 420
    :cond_d
    sget v2, Lcom/metamoji/noteanytime/R$id;->switch_positionmap:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ui/common/UiSwitch;

    .line 421
    iget-object v4, p0, Lcom/metamoji/ui/dialog/SystemOption;->mDefaults:Lcom/metamoji/nt/NtUserDefaults;

    const-string v5, "DungeonMapState"

    invoke-virtual {v4, v5, v0}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/metamoji/ui/dialog/SystemOption;->mPositionMapState:Z

    if-eqz v2, :cond_e

    .line 423
    invoke-virtual {v2, v4}, Lcom/metamoji/ui/common/UiSwitch;->setChecked(Z)V

    .line 424
    new-instance v4, Lcom/metamoji/ui/dialog/SystemOption$14;

    invoke-direct {v4, p0}, Lcom/metamoji/ui/dialog/SystemOption$14;-><init>(Lcom/metamoji/ui/dialog/SystemOption;)V

    invoke-virtual {v2, v4}, Lcom/metamoji/ui/common/UiSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 438
    :cond_e
    sget v2, Lcom/metamoji/noteanytime/R$id;->group_positionmap:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ui/common/UiRadioGroup;

    iput-object v2, p0, Lcom/metamoji/ui/dialog/SystemOption;->mGroupPositionMap:Lcom/metamoji/ui/common/UiRadioGroup;

    .line 439
    sget v2, Lcom/metamoji/noteanytime/R$id;->textview_positionmap_place:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ui/common/UiTextView;

    iput-object v2, p0, Lcom/metamoji/ui/dialog/SystemOption;->mTextViewPositionMap:Lcom/metamoji/ui/common/UiTextView;

    .line 440
    iget-object v2, p0, Lcom/metamoji/ui/dialog/SystemOption;->mDefaults:Lcom/metamoji/nt/NtUserDefaults;

    const-string v4, "DungeonMapPos"

    invoke-virtual {v2, v4, p3}, Lcom/metamoji/nt/NtUserDefaults;->getIntValue(Ljava/lang/String;I)I

    move-result v2

    const/16 v4, 0x10

    if-ne v2, v4, :cond_f

    move v2, p3

    goto :goto_4

    :cond_f
    move v2, v0

    :goto_4
    iput v2, p0, Lcom/metamoji/ui/dialog/SystemOption;->mPositionMapPos:I

    .line 441
    iget-object v4, p0, Lcom/metamoji/ui/dialog/SystemOption;->mGroupPositionMap:Lcom/metamoji/ui/common/UiRadioGroup;

    if-eqz v4, :cond_11

    .line 442
    invoke-virtual {v4, v2}, Lcom/metamoji/ui/common/UiRadioGroup;->setCurrentButtonIndex(I)V

    .line 443
    iget-boolean v2, p0, Lcom/metamoji/ui/dialog/SystemOption;->mPositionMapState:Z

    if-nez v2, :cond_10

    .line 445
    iget-object v2, p0, Lcom/metamoji/ui/dialog/SystemOption;->mGroupPositionMap:Lcom/metamoji/ui/common/UiRadioGroup;

    invoke-virtual {v2, p3}, Lcom/metamoji/ui/common/UiRadioGroup;->setEnabled(Z)V

    .line 446
    iget-object v2, p0, Lcom/metamoji/ui/dialog/SystemOption;->mTextViewPositionMap:Lcom/metamoji/ui/common/UiTextView;

    if-eqz v2, :cond_10

    .line 447
    invoke-virtual {v2, p3}, Lcom/metamoji/ui/common/UiTextView;->setEnabled(Z)V

    .line 450
    :cond_10
    iget-object v2, p0, Lcom/metamoji/ui/dialog/SystemOption;->mGroupPositionMap:Lcom/metamoji/ui/common/UiRadioGroup;

    new-instance v4, Lcom/metamoji/ui/dialog/SystemOption$15;

    invoke-direct {v4, p0}, Lcom/metamoji/ui/dialog/SystemOption$15;-><init>(Lcom/metamoji/ui/dialog/SystemOption;)V

    invoke-virtual {v2, v4}, Lcom/metamoji/ui/common/UiRadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 457
    :cond_11
    invoke-virtual {p2, v1}, Lcom/metamoji/ui/dialog/SystemOption$GroupUpStyleStack;->add(Landroid/view/View;)V

    .line 461
    sget v1, Lcom/metamoji/noteanytime/R$id;->SystemOptionGroup_JumpEnabled:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 462
    sget v2, Lcom/metamoji/noteanytime/R$id;->switch_jumpEnabled:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ui/common/UiSwitch;

    .line 463
    iget-object v4, p0, Lcom/metamoji/ui/dialog/SystemOption;->mDefaults:Lcom/metamoji/nt/NtUserDefaults;

    const-string v5, "MMJJumpEnabled"

    invoke-virtual {v4, v5, p3}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/metamoji/ui/dialog/SystemOption;->mJumpEnabled:Z

    if-eqz v2, :cond_12

    .line 465
    invoke-virtual {v2, v4}, Lcom/metamoji/ui/common/UiSwitch;->setChecked(Z)V

    .line 466
    new-instance v4, Lcom/metamoji/ui/dialog/SystemOption$16;

    invoke-direct {v4, p0}, Lcom/metamoji/ui/dialog/SystemOption$16;-><init>(Lcom/metamoji/ui/dialog/SystemOption;)V

    invoke-virtual {v2, v4}, Lcom/metamoji/ui/common/UiSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 473
    :cond_12
    invoke-virtual {p2, v1}, Lcom/metamoji/ui/dialog/SystemOption$GroupUpStyleStack;->add(Landroid/view/View;)V

    .line 491
    :goto_5
    invoke-virtual {p2}, Lcom/metamoji/ui/dialog/SystemOption$GroupUpStyleStack;->apply()V

    .line 496
    sget p2, Lcom/metamoji/noteanytime/R$id;->switch_drawlongpress:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiSwitch;

    .line 497
    iget-object v1, p0, Lcom/metamoji/ui/dialog/SystemOption;->mDefaults:Lcom/metamoji/nt/NtUserDefaults;

    const-string v2, "DrawLongPressJudge"

    invoke-virtual {v1, v2, v0}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/metamoji/ui/dialog/SystemOption;->mDrawLongPressJudge:Z

    if-eqz p2, :cond_13

    .line 499
    invoke-virtual {p2, v1}, Lcom/metamoji/ui/common/UiSwitch;->setChecked(Z)V

    .line 500
    new-instance v1, Lcom/metamoji/ui/dialog/SystemOption$17;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/dialog/SystemOption$17;-><init>(Lcom/metamoji/ui/dialog/SystemOption;)V

    invoke-virtual {p2, v1}, Lcom/metamoji/ui/common/UiSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 516
    :cond_13
    sget p2, Lcom/metamoji/noteanytime/R$id;->SystemOption_TextModeSettings_btn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    if-eqz p2, :cond_14

    .line 518
    new-instance v1, Lcom/metamoji/ui/dialog/SystemOption$18;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/dialog/SystemOption$18;-><init>(Lcom/metamoji/ui/dialog/SystemOption;)V

    invoke-virtual {p2, v1}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 543
    :cond_14
    sget p2, Lcom/metamoji/noteanytime/R$id;->SystemOption_VideoSettings_btn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    if-eqz p2, :cond_16

    .line 545
    invoke-static {}, Lcom/metamoji/media/video/VfEditionDef;->isMovieFeatureAvailable()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-static {}, Lcom/metamoji/media/video/VfEditionDef;->isCloudAvailable()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isReadOnly()Z

    move-result v1

    if-nez v1, :cond_15

    .line 546
    new-instance v1, Lcom/metamoji/ui/dialog/SystemOption$19;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/dialog/SystemOption$19;-><init>(Lcom/metamoji/ui/dialog/SystemOption;)V

    invoke-virtual {p2, v1}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_6

    .line 566
    :cond_15
    invoke-virtual {p2, v3}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    .line 571
    :cond_16
    :goto_6
    sget p2, Lcom/metamoji/noteanytime/R$id;->seekbar_drawtime:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/SeekBar;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/SystemOption;->mSeekBarDrawTime:Landroid/widget/SeekBar;

    .line 572
    sget p2, Lcom/metamoji/noteanytime/R$id;->textview_drawtime:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiTextView;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/SystemOption;->mTextViewDrawTime:Lcom/metamoji/ui/common/UiTextView;

    .line 573
    invoke-virtual {p2}, Lcom/metamoji/ui/common/UiTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/SystemOption;->mFormatDrawTime:Ljava/lang/String;

    .line 574
    iget-object p2, p0, Lcom/metamoji/ui/dialog/SystemOption;->mDefaults:Lcom/metamoji/nt/NtUserDefaults;

    const-string v1, "DrawLongPressTime"

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {p2, v1, v2}, Lcom/metamoji/nt/NtUserDefaults;->getFloatValue(Ljava/lang/String;F)F

    move-result p2

    float-to-double v1, p2

    const-wide v4, 0x3fc999999999999aL    # 0.2

    sub-double/2addr v1, v4

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    mul-double/2addr v1, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int p2, v1

    iput p2, p0, Lcom/metamoji/ui/dialog/SystemOption;->mLongPressTime:I

    .line 575
    iget-object v1, p0, Lcom/metamoji/ui/dialog/SystemOption;->mSeekBarDrawTime:Landroid/widget/SeekBar;

    if-eqz v1, :cond_18

    .line 576
    invoke-virtual {v1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 577
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/SystemOption;->setTextViewDrawTime()V

    .line 578
    iget-boolean p2, p0, Lcom/metamoji/ui/dialog/SystemOption;->mDrawLongPressJudge:Z

    if-nez p2, :cond_17

    .line 580
    iget-object p2, p0, Lcom/metamoji/ui/dialog/SystemOption;->mSeekBarDrawTime:Landroid/widget/SeekBar;

    invoke-virtual {p2, p3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 581
    iget-object p2, p0, Lcom/metamoji/ui/dialog/SystemOption;->mTextViewDrawTime:Lcom/metamoji/ui/common/UiTextView;

    if-eqz p2, :cond_17

    .line 582
    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiTextView;->setEnabled(Z)V

    .line 585
    :cond_17
    iget-object p2, p0, Lcom/metamoji/ui/dialog/SystemOption;->mSeekBarDrawTime:Landroid/widget/SeekBar;

    new-instance v1, Lcom/metamoji/ui/dialog/SystemOption$20;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/dialog/SystemOption$20;-><init>(Lcom/metamoji/ui/dialog/SystemOption;)V

    invoke-virtual {p2, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 608
    :cond_18
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object p2

    sget-object v1, Lcom/metamoji/nt/NtFeature;->AppClearCaptureImage:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {p2, v1}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result p2

    if-eqz p2, :cond_19

    .line 609
    sget p2, Lcom/metamoji/noteanytime/R$id;->SystemOptionGroup_SaveCameraroll:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    if-eqz p2, :cond_1a

    .line 611
    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_7

    .line 614
    :cond_19
    sget p2, Lcom/metamoji/noteanytime/R$id;->switch_savecameraroll:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiSwitch;

    .line 615
    iget-object v1, p0, Lcom/metamoji/ui/dialog/SystemOption;->mDefaults:Lcom/metamoji/nt/NtUserDefaults;

    const-string v2, "SaveCameraRoll"

    invoke-virtual {v1, v2, v0}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/SystemOption;->mSaveCameraRoll:Z

    if-eqz p2, :cond_1a

    .line 617
    invoke-virtual {p2, v0}, Lcom/metamoji/ui/common/UiSwitch;->setChecked(Z)V

    .line 618
    new-instance v0, Lcom/metamoji/ui/dialog/SystemOption$21;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/dialog/SystemOption$21;-><init>(Lcom/metamoji/ui/dialog/SystemOption;)V

    invoke-virtual {p2, v0}, Lcom/metamoji/ui/common/UiSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 629
    :cond_1a
    :goto_7
    sget p2, Lcom/metamoji/noteanytime/R$id;->button_update_mazecdic:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    if-eqz p2, :cond_1c

    .line 633
    invoke-virtual {p2, v3}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    .line 634
    sget p2, Lcom/metamoji/noteanytime/R$id;->textview_settings_mazec:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 635
    sget v0, Lcom/metamoji/noteanytime/R$id;->view_update_mazecdic:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p2, :cond_1b

    .line 637
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1b
    if-eqz v0, :cond_1c

    .line 640
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 654
    :cond_1c
    sget p2, Lcom/metamoji/noteanytime/R$id;->radiogroup_paintresponse:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiRadioGroup;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/SystemOption;->mGroupPaintResponse:Lcom/metamoji/ui/common/UiRadioGroup;

    .line 655
    iget-object p2, p0, Lcom/metamoji/ui/dialog/SystemOption;->mDefaults:Lcom/metamoji/nt/NtUserDefaults;

    const-string v0, "PaintResponse"

    invoke-virtual {p2, v0, p3}, Lcom/metamoji/nt/NtUserDefaults;->getIntValue(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/metamoji/ui/dialog/SystemOption;->mPaintResponse:I

    .line 656
    iget-object p3, p0, Lcom/metamoji/ui/dialog/SystemOption;->mGroupPaintResponse:Lcom/metamoji/ui/common/UiRadioGroup;

    if-eqz p3, :cond_1d

    .line 657
    invoke-virtual {p3, p2}, Lcom/metamoji/ui/common/UiRadioGroup;->setCurrentButtonIndex(I)V

    .line 658
    iget-object p2, p0, Lcom/metamoji/ui/dialog/SystemOption;->mGroupPaintResponse:Lcom/metamoji/ui/common/UiRadioGroup;

    new-instance p3, Lcom/metamoji/ui/dialog/SystemOption$23;

    invoke-direct {p3, p0}, Lcom/metamoji/ui/dialog/SystemOption$23;-><init>(Lcom/metamoji/ui/dialog/SystemOption;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiRadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 668
    :cond_1d
    sget p2, Lcom/metamoji/noteanytime/R$id;->button_download_samplenote:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    if-eqz p2, :cond_1e

    .line 674
    invoke-virtual {p2, v3}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    :cond_1e
    return-object p1
.end method

.method public onDone(Landroid/view/View;)V
    .locals 12

    .line 773
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 777
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/SystemOption;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 778
    iget-boolean v1, p0, Lcom/metamoji/ui/dialog/SystemOption;->mShowHover:Z

    iget-object v3, p0, Lcom/metamoji/ui/dialog/SystemOption;->mDefaults:Lcom/metamoji/nt/NtUserDefaults;

    const-string v4, "HoverSelectorEnable"

    invoke-virtual {v3, v4, v2}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result v3

    if-eq v1, v3, :cond_1

    .line 779
    iget-object v1, p0, Lcom/metamoji/ui/dialog/SystemOption;->mDefaults:Lcom/metamoji/nt/NtUserDefaults;

    iget-boolean v3, p0, Lcom/metamoji/ui/dialog/SystemOption;->mShowHover:Z

    invoke-virtual {v1, v4, v3}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Z)V

    .line 780
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->editorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 782
    iget-boolean v3, p0, Lcom/metamoji/ui/dialog/SystemOption;->mShowHover:Z

    if-eqz v3, :cond_0

    .line 783
    invoke-interface {v1}, Lcom/metamoji/nt/INtEditor;->getHover()Lcom/metamoji/ui/CustomHoverSelectorView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ui/CustomHoverSelectorView;->show()V

    goto :goto_0

    .line 785
    :cond_0
    invoke-interface {v1}, Lcom/metamoji/nt/INtEditor;->getHover()Lcom/metamoji/ui/CustomHoverSelectorView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ui/CustomHoverSelectorView;->hide()V

    .line 791
    :cond_1
    :goto_0
    iget v1, p0, Lcom/metamoji/ui/dialog/SystemOption;->mCommandButtons:I

    iget-object v3, p0, Lcom/metamoji/ui/dialog/SystemOption;->mDefaults:Lcom/metamoji/nt/NtUserDefaults;

    const-string v4, "CommandButtons"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/metamoji/nt/NtUserDefaults;->getIntValue(Ljava/lang/String;I)I

    move-result v3

    if-eq v1, v3, :cond_2

    .line 792
    iget-object v1, p0, Lcom/metamoji/ui/dialog/SystemOption;->mDefaults:Lcom/metamoji/nt/NtUserDefaults;

    iget v3, p0, Lcom/metamoji/ui/dialog/SystemOption;->mCommandButtons:I

    invoke-virtual {v1, v4, v3}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;I)V

    .line 794
    :cond_2
    iget-boolean v1, p0, Lcom/metamoji/ui/dialog/SystemOption;->mShowWristGuardButton:Z

    iget-object v3, p0, Lcom/metamoji/ui/dialog/SystemOption;->mDefaults:Lcom/metamoji/nt/NtUserDefaults;

    const-string v4, "MMJWristGuardButtonVisible"

    invoke-virtual {v3, v4, v2}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result v3

    if-eq v1, v3, :cond_3

    .line 795
    iget-object v1, p0, Lcom/metamoji/ui/dialog/SystemOption;->mDefaults:Lcom/metamoji/nt/NtUserDefaults;

    iget-boolean v3, p0, Lcom/metamoji/ui/dialog/SystemOption;->mShowWristGuardButton:Z

    invoke-virtual {v1, v4, v3}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Z)V

    .line 796
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->editorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 798
    invoke-interface {v1}, Lcom/metamoji/nt/INtEditor;->updateWristGuardVisible()V

    .line 803
    :cond_3
    iget-boolean v1, p0, Lcom/metamoji/ui/dialog/SystemOption;->mShowDetailWindowButton:Z

    iget-object v3, p0, Lcom/metamoji/ui/dialog/SystemOption;->mDefaults:Lcom/metamoji/nt/NtUserDefaults;

    const-string v4, "MMJDetailWindowButtonVisible"

    invoke-virtual {v3, v4, v2}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result v3

    if-eq v1, v3, :cond_5

    .line 804
    iget-object v1, p0, Lcom/metamoji/ui/dialog/SystemOption;->mDefaults:Lcom/metamoji/nt/NtUserDefaults;

    iget-boolean v3, p0, Lcom/metamoji/ui/dialog/SystemOption;->mShowDetailWindowButton:Z

    invoke-virtual {v1, v4, v3}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Z)V

    .line 805
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->editorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 807
    iget-boolean v3, p0, Lcom/metamoji/ui/dialog/SystemOption;->mShowDetailWindowButton:Z

    if-eqz v3, :cond_4

    .line 808
    invoke-interface {v1}, Lcom/metamoji/nt/INtEditor;->getShowDetailWindowButton()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 810
    :cond_4
    invoke-interface {v1}, Lcom/metamoji/nt/INtEditor;->getShowDetailWindowButton()Landroid/view/View;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 817
    :cond_5
    :goto_1
    iget-boolean v1, p0, Lcom/metamoji/ui/dialog/SystemOption;->mJumpEnabled:Z

    iget-object v3, p0, Lcom/metamoji/ui/dialog/SystemOption;->mDefaults:Lcom/metamoji/nt/NtUserDefaults;

    const-string v4, "MMJJumpEnabled"

    invoke-virtual {v3, v4, v2}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result v3

    if-eq v1, v3, :cond_7

    .line 818
    iget-object v1, p0, Lcom/metamoji/ui/dialog/SystemOption;->mDefaults:Lcom/metamoji/nt/NtUserDefaults;

    iget-boolean v3, p0, Lcom/metamoji/ui/dialog/SystemOption;->mJumpEnabled:Z

    invoke-virtual {v1, v4, v3}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Z)V

    .line 819
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->editorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 821
    iget-boolean v3, p0, Lcom/metamoji/ui/dialog/SystemOption;->mJumpEnabled:Z

    if-eqz v3, :cond_6

    .line 822
    invoke-interface {v1}, Lcom/metamoji/nt/INtEditor;->updatePageNavigationButtons()V

    goto :goto_2

    .line 824
    :cond_6
    invoke-interface {v1}, Lcom/metamoji/nt/INtEditor;->getJumpListViewStatus()I

    move-result v3

    if-nez v3, :cond_7

    .line 826
    invoke-interface {v1}, Lcom/metamoji/nt/INtEditor;->changeToPageList()V

    .line 835
    :cond_7
    :goto_2
    iget-boolean v1, p0, Lcom/metamoji/ui/dialog/SystemOption;->mPositionMapState:Z

    iget-object v3, p0, Lcom/metamoji/ui/dialog/SystemOption;->mDefaults:Lcom/metamoji/nt/NtUserDefaults;

    const-string v4, "DungeonMapState"

    invoke-virtual {v3, v4, v5}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result v3

    if-eq v1, v3, :cond_8

    .line 836
    iget-object v1, p0, Lcom/metamoji/ui/dialog/SystemOption;->mDefaults:Lcom/metamoji/nt/NtUserDefaults;

    iget-boolean v3, p0, Lcom/metamoji/ui/dialog/SystemOption;->mPositionMapState:Z

    invoke-virtual {v1, v4, v3}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Z)V

    .line 839
    :cond_8
    iget v1, p0, Lcom/metamoji/ui/dialog/SystemOption;->mPositionMapPos:I

    iget-object v3, p0, Lcom/metamoji/ui/dialog/SystemOption;->mDefaults:Lcom/metamoji/nt/NtUserDefaults;

    const-string v4, "DungeonMapPos"

    invoke-virtual {v3, v4, v2}, Lcom/metamoji/nt/NtUserDefaults;->getIntValue(Ljava/lang/String;I)I

    move-result v3

    const/16 v6, 0x10

    if-ne v3, v6, :cond_9

    move v3, v2

    goto :goto_3

    :cond_9
    move v3, v5

    :goto_3
    if-eq v1, v3, :cond_b

    .line 840
    iget-object v1, p0, Lcom/metamoji/ui/dialog/SystemOption;->mDefaults:Lcom/metamoji/nt/NtUserDefaults;

    iget v3, p0, Lcom/metamoji/ui/dialog/SystemOption;->mPositionMapPos:I

    if-nez v3, :cond_a

    goto :goto_4

    :cond_a
    move v6, v2

    :goto_4
    invoke-virtual {v1, v4, v6}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;I)V

    .line 843
    :cond_b
    iget-boolean v1, p0, Lcom/metamoji/ui/dialog/SystemOption;->mOneTapScroller:Z

    iget-object v3, p0, Lcom/metamoji/ui/dialog/SystemOption;->mDefaults:Lcom/metamoji/nt/NtUserDefaults;

    const-string v4, "OneTapScroller"

    invoke-virtual {v3, v4, v5}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result v3

    const v6, 0x3dcccccd    # 0.1f

    const-string v7, "OneTapScrollerDisplayDelay"

    const-string v8, "OneTapScrollerLocation"

    const/high16 v9, 0x41200000    # 10.0f

    if-ne v1, v3, :cond_c

    iget v1, p0, Lcom/metamoji/ui/dialog/SystemOption;->mOneTapScrollerLocation:I

    iget-object v3, p0, Lcom/metamoji/ui/dialog/SystemOption;->mDefaults:Lcom/metamoji/nt/NtUserDefaults;

    .line 844
    invoke-virtual {v3, v8, v2}, Lcom/metamoji/nt/NtUserDefaults;->getIntValue(Ljava/lang/String;I)I

    move-result v3

    if-ne v1, v3, :cond_c

    iget v1, p0, Lcom/metamoji/ui/dialog/SystemOption;->mOneTapScrollerDisplayDelay:I

    iget-object v3, p0, Lcom/metamoji/ui/dialog/SystemOption;->mDefaults:Lcom/metamoji/nt/NtUserDefaults;

    .line 845
    invoke-virtual {v3, v7, v6}, Lcom/metamoji/nt/NtUserDefaults;->getFloatValue(Ljava/lang/String;F)F

    move-result v3

    mul-float/2addr v3, v9

    float-to-int v3, v3

    if-eq v1, v3, :cond_f

    .line 847
    :cond_c
    iget-boolean v1, p0, Lcom/metamoji/ui/dialog/SystemOption;->mOneTapScroller:Z

    iget-object v3, p0, Lcom/metamoji/ui/dialog/SystemOption;->mDefaults:Lcom/metamoji/nt/NtUserDefaults;

    invoke-virtual {v3, v4, v5}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result v3

    if-eq v1, v3, :cond_d

    .line 848
    iget-object v1, p0, Lcom/metamoji/ui/dialog/SystemOption;->mDefaults:Lcom/metamoji/nt/NtUserDefaults;

    iget-boolean v3, p0, Lcom/metamoji/ui/dialog/SystemOption;->mOneTapScroller:Z

    invoke-virtual {v1, v4, v3}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Z)V

    .line 851
    :cond_d
    iget v1, p0, Lcom/metamoji/ui/dialog/SystemOption;->mOneTapScrollerLocation:I

    iget-object v3, p0, Lcom/metamoji/ui/dialog/SystemOption;->mDefaults:Lcom/metamoji/nt/NtUserDefaults;

    invoke-virtual {v3, v8, v2}, Lcom/metamoji/nt/NtUserDefaults;->getIntValue(Ljava/lang/String;I)I

    move-result v3

    if-eq v1, v3, :cond_e

    .line 852
    iget-object v1, p0, Lcom/metamoji/ui/dialog/SystemOption;->mDefaults:Lcom/metamoji/nt/NtUserDefaults;

    iget v3, p0, Lcom/metamoji/ui/dialog/SystemOption;->mOneTapScrollerLocation:I

    invoke-virtual {v1, v8, v3}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;I)V

    .line 855
    :cond_e
    iget v1, p0, Lcom/metamoji/ui/dialog/SystemOption;->mOneTapScrollerDisplayDelay:I

    iget-object v3, p0, Lcom/metamoji/ui/dialog/SystemOption;->mDefaults:Lcom/metamoji/nt/NtUserDefaults;

    invoke-virtual {v3, v7, v6}, Lcom/metamoji/nt/NtUserDefaults;->getFloatValue(Ljava/lang/String;F)F

    move-result v3

    mul-float/2addr v3, v9

    float-to-int v3, v3

    if-eq v1, v3, :cond_f

    .line 856
    iget-object v1, p0, Lcom/metamoji/ui/dialog/SystemOption;->mDefaults:Lcom/metamoji/nt/NtUserDefaults;

    iget v3, p0, Lcom/metamoji/ui/dialog/SystemOption;->mOneTapScrollerDisplayDelay:I

    int-to-float v3, v3

    div-float/2addr v3, v9

    invoke-virtual {v1, v7, v3}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;F)V

    .line 866
    :cond_f
    iget-object v1, p0, Lcom/metamoji/ui/dialog/SystemOption;->mDefaults:Lcom/metamoji/nt/NtUserDefaults;

    const/high16 v3, 0x3f000000    # 0.5f

    const-string v4, "DrawLongPressTime"

    invoke-virtual {v1, v4, v3}, Lcom/metamoji/nt/NtUserDefaults;->getFloatValue(Ljava/lang/String;F)F

    move-result v1

    float-to-double v6, v1

    const-wide v10, 0x3fc999999999999aL    # 0.2

    sub-double/2addr v6, v10

    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    mul-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v1, v6

    .line 868
    iget-boolean v3, p0, Lcom/metamoji/ui/dialog/SystemOption;->mDrawLongPressJudge:Z

    iget-object v6, p0, Lcom/metamoji/ui/dialog/SystemOption;->mDefaults:Lcom/metamoji/nt/NtUserDefaults;

    const-string v7, "DrawLongPressJudge"

    invoke-virtual {v6, v7, v5}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result v6

    if-ne v3, v6, :cond_10

    iget v3, p0, Lcom/metamoji/ui/dialog/SystemOption;->mLongPressTime:I

    if-eq v3, v1, :cond_13

    .line 871
    :cond_10
    iget-boolean v3, p0, Lcom/metamoji/ui/dialog/SystemOption;->mDrawLongPressJudge:Z

    iget-object v6, p0, Lcom/metamoji/ui/dialog/SystemOption;->mDefaults:Lcom/metamoji/nt/NtUserDefaults;

    invoke-virtual {v6, v7, v5}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result v6

    if-eq v3, v6, :cond_11

    .line 872
    iget-object v3, p0, Lcom/metamoji/ui/dialog/SystemOption;->mDefaults:Lcom/metamoji/nt/NtUserDefaults;

    iget-boolean v6, p0, Lcom/metamoji/ui/dialog/SystemOption;->mDrawLongPressJudge:Z

    invoke-virtual {v3, v7, v6}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Z)V

    .line 875
    :cond_11
    iget v3, p0, Lcom/metamoji/ui/dialog/SystemOption;->mLongPressTime:I

    if-eq v3, v1, :cond_12

    .line 876
    iget-object v1, p0, Lcom/metamoji/ui/dialog/SystemOption;->mDefaults:Lcom/metamoji/nt/NtUserDefaults;

    add-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    div-float/2addr v3, v9

    invoke-virtual {v1, v4, v3}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;F)V

    :cond_12
    if-eqz v0, :cond_13

    .line 880
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_DRAW_CHANGE_LONGPRESSSETTING:Lcom/metamoji/nt/NtCommand;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    .line 885
    :cond_13
    iget-boolean v0, p0, Lcom/metamoji/ui/dialog/SystemOption;->mSaveCameraRoll:Z

    iget-object v1, p0, Lcom/metamoji/ui/dialog/SystemOption;->mDefaults:Lcom/metamoji/nt/NtUserDefaults;

    const-string v3, "SaveCameraRoll"

    invoke-virtual {v1, v3, v5}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result v1

    if-eq v0, v1, :cond_14

    .line 886
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SystemOption;->mDefaults:Lcom/metamoji/nt/NtUserDefaults;

    iget-boolean v1, p0, Lcom/metamoji/ui/dialog/SystemOption;->mSaveCameraRoll:Z

    invoke-virtual {v0, v3, v1}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Z)V

    .line 890
    :cond_14
    iget-boolean v0, p0, Lcom/metamoji/ui/dialog/SystemOption;->mImageQualityChoice:Z

    iget-object v1, p0, Lcom/metamoji/ui/dialog/SystemOption;->mDefaults:Lcom/metamoji/nt/NtUserDefaults;

    const-string v3, "ImageQualityChoice"

    invoke-virtual {v1, v3, v2}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result v1

    if-eq v0, v1, :cond_15

    .line 891
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SystemOption;->mDefaults:Lcom/metamoji/nt/NtUserDefaults;

    iget-boolean v1, p0, Lcom/metamoji/ui/dialog/SystemOption;->mImageQualityChoice:Z

    invoke-virtual {v0, v3, v1}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Z)V

    .line 896
    :cond_15
    iget-boolean v0, p0, Lcom/metamoji/ui/dialog/SystemOption;->mHighResolution:Z

    iget-object v1, p0, Lcom/metamoji/ui/dialog/SystemOption;->mDefaults:Lcom/metamoji/nt/NtUserDefaults;

    const-string v3, "GenerateHDImage"

    invoke-virtual {v1, v3, v5}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result v1

    if-eq v0, v1, :cond_16

    .line 897
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SystemOption;->mDefaults:Lcom/metamoji/nt/NtUserDefaults;

    iget-boolean v1, p0, Lcom/metamoji/ui/dialog/SystemOption;->mHighResolution:Z

    invoke-virtual {v0, v3, v1}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Z)V

    .line 902
    :cond_16
    iget v0, p0, Lcom/metamoji/ui/dialog/SystemOption;->mSchoolPageType:I

    iget-object v1, p0, Lcom/metamoji/ui/dialog/SystemOption;->mDefaults:Lcom/metamoji/nt/NtUserDefaults;

    const-string v3, "forSchoolDefaultSchoolPageType"

    invoke-virtual {v1, v3, v5}, Lcom/metamoji/nt/NtUserDefaults;->getIntValue(Ljava/lang/String;I)I

    move-result v1

    if-eq v0, v1, :cond_18

    .line 903
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v0

    .line 907
    iget-object v1, p0, Lcom/metamoji/ui/dialog/SystemOption;->mDefaults:Lcom/metamoji/nt/NtUserDefaults;

    if-eqz v0, :cond_17

    .line 905
    iget v0, p0, Lcom/metamoji/ui/dialog/SystemOption;->mSchoolPageType:I

    invoke-virtual {v1, v3, v0}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;I)V

    goto :goto_5

    .line 907
    :cond_17
    invoke-virtual {v1, v3, v5}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;I)V

    .line 911
    :cond_18
    :goto_5
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/SystemOption;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 912
    iget-boolean v0, p0, Lcom/metamoji/ui/dialog/SystemOption;->mHistoryTab:Z

    iget-object v1, p0, Lcom/metamoji/ui/dialog/SystemOption;->mDefaults:Lcom/metamoji/nt/NtUserDefaults;

    const-string v3, "MMJNtHistoryBarShow"

    invoke-virtual {v1, v3, v2}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result v1

    if-eq v0, v1, :cond_19

    .line 913
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SystemOption;->mDefaults:Lcom/metamoji/nt/NtUserDefaults;

    iget-boolean v1, p0, Lcom/metamoji/ui/dialog/SystemOption;->mHistoryTab:Z

    invoke-virtual {v0, v3, v1}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Z)V

    .line 917
    :cond_19
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtFeature;->AppClearCopiedShareNote:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 918
    iget-boolean v0, p0, Lcom/metamoji/ui/dialog/SystemOption;->mCopiedShare:Z

    iget-object v1, p0, Lcom/metamoji/ui/dialog/SystemOption;->mDefaults:Lcom/metamoji/nt/NtUserDefaults;

    const-string v3, "MMJCopiedShare"

    invoke-virtual {v1, v3, v2}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result v1

    if-eq v0, v1, :cond_1a

    .line 919
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SystemOption;->mDefaults:Lcom/metamoji/nt/NtUserDefaults;

    const-string v1, "MMJCopiedShare"

    iget-boolean v3, p0, Lcom/metamoji/ui/dialog/SystemOption;->mCopiedShare:Z

    invoke-virtual {v0, v1, v3}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Z)V

    .line 921
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/SystemOption;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->reloadAllView(Landroidx/fragment/app/FragmentActivity;)V

    .line 940
    :cond_1a
    iget v0, p0, Lcom/metamoji/ui/dialog/SystemOption;->mPaintResponse:I

    iget-object v1, p0, Lcom/metamoji/ui/dialog/SystemOption;->mDefaults:Lcom/metamoji/nt/NtUserDefaults;

    const-string v3, "PaintResponse"

    invoke-virtual {v1, v3, v2}, Lcom/metamoji/nt/NtUserDefaults;->getIntValue(Ljava/lang/String;I)I

    move-result v1

    if-eq v0, v1, :cond_1b

    .line 941
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SystemOption;->mDefaults:Lcom/metamoji/nt/NtUserDefaults;

    const-string v1, "PaintResponse"

    iget v2, p0, Lcom/metamoji/ui/dialog/SystemOption;->mPaintResponse:I

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;I)V

    .line 945
    :cond_1b
    invoke-static {}, Lcom/metamoji/nt/NtSystemSettings;->getInstance()Lcom/metamoji/nt/NtSystemSettings;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 947
    new-instance v1, Lcom/metamoji/df/model/ModelManagerSaveContext;

    invoke-direct {v1}, Lcom/metamoji/df/model/ModelManagerSaveContext;-><init>()V

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtSystemSettings;->ensureSaved(Lcom/metamoji/df/model/ModelManagerSaveContext;)V

    .line 950
    :cond_1c
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onDone(Landroid/view/View;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 764
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    .line 766
    sget-object v0, Lcom/metamoji/ui/dialog/SystemOption;->Key_ReconstructDialogFlag:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
