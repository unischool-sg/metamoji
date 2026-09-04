.class public Lcom/metamoji/ui/dialog/PenSettings2;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "PenSettings2.java"


# static fields
.field public static final PEN_CAL_A:I = 0x0

.field public static final PEN_CAL_B:I = 0x1

.field public static final PEN_CAL_OPTION:I = 0x2

.field public static final PEN_STD_DASH:I = 0x1

.field public static final PEN_STD_MAPPING:I

.field static final mAngleManipulationAmount:[I

.field static final mAngleManipulationIds:[I

.field static final mAnglePreset:[I

.field static final mAnglePresetIds:[I

.field static final mBottlesIds:[I

.field static final mPenTypeIds:[I

.field static final mRatioPreset:[I

.field static final mRatioPresetIds:[I

.field static final mTickOpacity:[Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

.field static final mTickRatio:[Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

.field static final mTickWeight:[Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

.field static final mWeightPresetCalligraphy:[I

.field static final mWeightPresetIds:[I

.field static final mWeightPresetStandard:[I


# instance fields
.field mAngleManipulationTimer:Lcom/metamoji/cm/UiTimer;

.field mAngleSlider:Lcom/metamoji/ui/common/UiAngleSlider;

.field mAngleValueView:Lcom/metamoji/ui/common/UiTextView;

.field mBottle:[Lcom/metamoji/ui/common/UiImageRadioButton;

.field mBottlesRadioGroup:Lcom/metamoji/ui/common/UiRadioContoller;

.field mButtonDrawShape:Lcom/metamoji/ui/common/UiButton;

.field mButtonInkColor:Lcom/metamoji/ui/common/UiButton;

.field mButtonOpacity:Lcom/metamoji/ui/common/UiButton;

.field mButtonPenAngle:Lcom/metamoji/ui/common/UiButton;

.field mButtonPenDropper:Lcom/metamoji/ui/common/UiButton;

.field mButtonPenRate:Lcom/metamoji/ui/common/UiButton;

.field mButtonThickness:Lcom/metamoji/ui/common/UiButton;

.field mCal2Angle:F

.field mCal2Rate:F

.field mCalligraphyBitmap:Landroid/graphics/Bitmap;

.field mCalligraphySampleAngle:Landroid/widget/ImageView;

.field mCalligraphySampleRate:Landroid/widget/ImageView;

.field mChangeStyle:Z

.field mColorSelectionView:Lcom/metamoji/ui/common/UiColorSelectionView2;

.field mColorViewCurrentPage:I

.field mCurrentPenType:I

.field mDebug:Z

.field private mDefaultCal1A:Lcom/metamoji/nt/share/NtPenStyle;

.field private mDefaultCal1B:Lcom/metamoji/nt/share/NtPenStyle;

.field private mDefaultCal2:Lcom/metamoji/nt/share/NtPenStyle;

.field private mDefaultFntD:Lcom/metamoji/nt/share/NtPenStyle;

.field private mDefaultFntS:Lcom/metamoji/nt/share/NtPenStyle;

.field private mDefaultMrk1:Lcom/metamoji/nt/share/NtPenStyle;

.field mDefaultSampleStyle:Lcom/metamoji/nt/share/NtPenStyle;

.field private mDefaultStd1:Lcom/metamoji/nt/share/NtPenStyle;

.field private mDefaultStd2:Lcom/metamoji/nt/share/NtPenStyle;

.field mDisableUpdate:Z

.field mDrawSample:Landroid/widget/ImageView;

.field mFromMazec:Z

.field mGroupPenCalligraphy:Lcom/metamoji/ui/common/UiRadioGroup;

.field mGroupPenStandard:Lcom/metamoji/ui/common/UiRadioGroup;

.field mInitializedInkColorsAndOpacity:Z

.field mInkColorsMarker:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mInkColorsNormal:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mOpacityMarker:I

.field mOpacityNormal:I

.field mPenRateSlider:Lcom/metamoji/ui/common/UiPlainSlider;

.field mPenTypeRadioGroup:Lcom/metamoji/ui/common/UiRadioContoller;

.field mReConstructed:Z

.field mSampleBitmap:Landroid/graphics/Bitmap;

.field mScrollView:Landroid/widget/ScrollView;

.field mSettings:Lcom/metamoji/nt/NtSystemPenSettings;

.field mSliderOpacity:Lcom/metamoji/ui/common/UiPlainSlider;

.field mSliderWeight:Lcom/metamoji/ui/common/UiPlainSlider;

.field mStyle:Lcom/metamoji/nt/share/NtPenStyle;

.field mStyleButtonList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ui/common/UiButton;",
            ">;"
        }
    .end annotation
.end field

.field mStyleInkColor:Landroid/view/View;

.field mStyleName:Lcom/metamoji/ui/common/UiTextView;

.field mStyleOpacity:Landroid/view/View;

.field mStylePenAngle:Landroid/view/View;

.field mStylePenRate:Landroid/view/View;

.field mStyleThickness:Landroid/view/View;

.field mStyleViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mWeightPresets:[I


# direct methods
.method static bridge synthetic -$$Nest$mCalcIntervalPenAnglePlusMinus(Lcom/metamoji/ui/dialog/PenSettings2;II)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/dialog/PenSettings2;->CalcIntervalPenAnglePlusMinus(II)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mbackupInkColorsAndOpacity(Lcom/metamoji/ui/dialog/PenSettings2;Ljava/util/List;FLjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/metamoji/ui/dialog/PenSettings2;->backupInkColorsAndOpacity(Ljava/util/List;FLjava/lang/String;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetAngleManipulationAmountByPresetId(Lcom/metamoji/ui/dialog/PenSettings2;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/PenSettings2;->getAngleManipulationAmountByPresetId(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$minitWeightPreset(Lcom/metamoji/ui/dialog/PenSettings2;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/dialog/PenSettings2;->initWeightPreset()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrestoreInkColorsAndOpacity(Lcom/metamoji/ui/dialog/PenSettings2;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/PenSettings2;->restoreInkColorsAndOpacity(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetShowPage(Lcom/metamoji/ui/dialog/PenSettings2;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/dialog/PenSettings2;->setShowPage(IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetShowWheelPage(Lcom/metamoji/ui/dialog/PenSettings2;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/dialog/PenSettings2;->setShowWheelPage()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSample(Lcom/metamoji/ui/dialog/PenSettings2;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/dialog/PenSettings2;->updateSample()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateStyleView(Lcom/metamoji/ui/dialog/PenSettings2;Lcom/metamoji/ui/common/UiButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/dialog/PenSettings2;->updateStyleView(Lcom/metamoji/ui/common/UiButton;Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 18

    .line 112
    sget v0, Lcom/metamoji/noteanytime/R$id;->bottle0:I

    sget v1, Lcom/metamoji/noteanytime/R$id;->bottle1:I

    sget v2, Lcom/metamoji/noteanytime/R$id;->bottle2:I

    sget v3, Lcom/metamoji/noteanytime/R$id;->bottle3:I

    sget v4, Lcom/metamoji/noteanytime/R$id;->bottle4:I

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/metamoji/ui/dialog/PenSettings2;->mBottlesIds:[I

    .line 114
    sget v0, Lcom/metamoji/noteanytime/R$id;->pentypeStd1:I

    sget v1, Lcom/metamoji/noteanytime/R$id;->pentypeMrk1:I

    sget v2, Lcom/metamoji/noteanytime/R$id;->pentypeCal1:I

    sget v3, Lcom/metamoji/noteanytime/R$id;->pentypeFnt1:I

    sget v4, Lcom/metamoji/noteanytime/R$id;->pentypeBrs1:I

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/metamoji/ui/dialog/PenSettings2;->mPenTypeIds:[I

    .line 116
    sget v0, Lcom/metamoji/noteanytime/R$id;->penWeight0:I

    sget v1, Lcom/metamoji/noteanytime/R$id;->penWeight1:I

    sget v2, Lcom/metamoji/noteanytime/R$id;->penWeight2:I

    sget v3, Lcom/metamoji/noteanytime/R$id;->penWeight3:I

    sget v4, Lcom/metamoji/noteanytime/R$id;->penWeight4:I

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/metamoji/ui/dialog/PenSettings2;->mWeightPresetIds:[I

    .line 118
    sget v1, Lcom/metamoji/noteanytime/R$id;->preAngle0:I

    sget v2, Lcom/metamoji/noteanytime/R$id;->preAngle1:I

    sget v3, Lcom/metamoji/noteanytime/R$id;->preAngle2:I

    sget v4, Lcom/metamoji/noteanytime/R$id;->preAngle3:I

    sget v5, Lcom/metamoji/noteanytime/R$id;->preAngle4:I

    sget v6, Lcom/metamoji/noteanytime/R$id;->preAngle5:I

    filled-new-array/range {v1 .. v6}, [I

    move-result-object v0

    sput-object v0, Lcom/metamoji/ui/dialog/PenSettings2;->mAnglePresetIds:[I

    .line 120
    sget v0, Lcom/metamoji/noteanytime/R$id;->angleDec:I

    sget v1, Lcom/metamoji/noteanytime/R$id;->angleDec10:I

    sget v2, Lcom/metamoji/noteanytime/R$id;->angleInc:I

    sget v3, Lcom/metamoji/noteanytime/R$id;->angleInc10:I

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/metamoji/ui/dialog/PenSettings2;->mAngleManipulationIds:[I

    .line 122
    sget v1, Lcom/metamoji/noteanytime/R$id;->ratio0:I

    sget v2, Lcom/metamoji/noteanytime/R$id;->ratio1:I

    sget v3, Lcom/metamoji/noteanytime/R$id;->ratio2:I

    sget v4, Lcom/metamoji/noteanytime/R$id;->ratio3:I

    sget v5, Lcom/metamoji/noteanytime/R$id;->ratio4:I

    sget v6, Lcom/metamoji/noteanytime/R$id;->ratio5:I

    filled-new-array/range {v1 .. v6}, [I

    move-result-object v0

    sput-object v0, Lcom/metamoji/ui/dialog/PenSettings2;->mRatioPresetIds:[I

    const/4 v0, 0x3

    const/4 v1, 0x5

    const/4 v2, 0x7

    const/16 v3, 0xa

    const/16 v4, 0x14

    .line 125
    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v5

    sput-object v5, Lcom/metamoji/ui/dialog/PenSettings2;->mWeightPresetStandard:[I

    const/16 v5, 0x29

    .line 127
    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v2

    sput-object v2, Lcom/metamoji/ui/dialog/PenSettings2;->mWeightPresetCalligraphy:[I

    const/4 v2, 0x6

    .line 129
    new-array v5, v2, [I

    fill-array-data v5, :array_0

    sput-object v5, Lcom/metamoji/ui/dialog/PenSettings2;->mAnglePreset:[I

    const/4 v5, -0x1

    const/16 v6, -0xa

    const/4 v7, 0x1

    .line 131
    filled-new-array {v5, v6, v7, v3}, [I

    move-result-object v5

    sput-object v5, Lcom/metamoji/ui/dialog/PenSettings2;->mAngleManipulationAmount:[I

    .line 133
    new-array v5, v2, [I

    fill-array-data v5, :array_1

    sput-object v5, Lcom/metamoji/ui/dialog/PenSettings2;->mRatioPreset:[I

    .line 137
    new-array v5, v1, [Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    new-instance v6, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    const/4 v8, 0x0

    invoke-direct {v6, v8, v7}, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;-><init>(II)V

    aput-object v6, v5, v8

    new-instance v6, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    const/16 v9, 0xfa

    invoke-direct {v6, v9, v3}, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;-><init>(II)V

    aput-object v6, v5, v7

    new-instance v6, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    const/16 v10, 0x1f4

    invoke-direct {v6, v10, v4}, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;-><init>(II)V

    const/4 v11, 0x2

    aput-object v6, v5, v11

    new-instance v6, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    const/16 v12, 0x2ee

    const/16 v13, 0x32

    invoke-direct {v6, v12, v13}, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;-><init>(II)V

    aput-object v6, v5, v0

    new-instance v6, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    const/16 v14, 0x3e8

    const/16 v15, 0x64

    invoke-direct {v6, v14, v15}, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;-><init>(II)V

    const/16 v16, 0x4

    aput-object v6, v5, v16

    sput-object v5, Lcom/metamoji/ui/dialog/PenSettings2;->mTickWeight:[Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    .line 139
    new-array v5, v1, [Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    new-instance v6, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    invoke-direct {v6, v8, v3}, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;-><init>(II)V

    aput-object v6, v5, v8

    new-instance v6, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    move/from16 v17, v0

    const/16 v0, 0x19

    invoke-direct {v6, v9, v0}, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;-><init>(II)V

    aput-object v6, v5, v7

    new-instance v0, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    invoke-direct {v0, v10, v13}, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;-><init>(II)V

    aput-object v0, v5, v11

    new-instance v0, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    const/16 v6, 0x4b

    invoke-direct {v0, v12, v6}, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;-><init>(II)V

    aput-object v0, v5, v17

    new-instance v0, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    invoke-direct {v0, v14, v15}, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;-><init>(II)V

    aput-object v0, v5, v16

    sput-object v5, Lcom/metamoji/ui/dialog/PenSettings2;->mTickOpacity:[Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    .line 141
    new-array v0, v2, [Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    new-instance v2, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    invoke-direct {v2, v8, v7}, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;-><init>(II)V

    aput-object v2, v0, v8

    new-instance v2, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    const/16 v5, 0xc8

    invoke-direct {v2, v5, v3}, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;-><init>(II)V

    aput-object v2, v0, v7

    new-instance v2, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    const/16 v3, 0x190

    invoke-direct {v2, v3, v4}, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;-><init>(II)V

    aput-object v2, v0, v11

    new-instance v2, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    const/16 v3, 0x258

    const/16 v4, 0x1e

    invoke-direct {v2, v3, v4}, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;-><init>(II)V

    aput-object v2, v0, v17

    new-instance v2, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    const/16 v3, 0x320

    const/16 v4, 0x28

    invoke-direct {v2, v3, v4}, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;-><init>(II)V

    aput-object v2, v0, v16

    new-instance v2, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    invoke-direct {v2, v14, v13}, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;-><init>(II)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/metamoji/ui/dialog/PenSettings2;->mTickRatio:[Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    return-void

    nop

    :array_0
    .array-data 4
        0xa
        0x1e
        0x2d
        0x34
        0x96
        0xaf
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x3
        0x5
        0xa
        0xf
        0x1e
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .line 151
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    const/4 v0, 0x5

    .line 92
    new-array v0, v0, [Lcom/metamoji/ui/common/UiImageRadioButton;

    iput-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mBottle:[Lcom/metamoji/ui/common/UiImageRadioButton;

    const/4 v0, -0x1

    .line 103
    iput v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mCurrentPenType:I

    .line 104
    iput v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mColorViewCurrentPage:I

    const/4 v0, 0x0

    .line 106
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mChangeStyle:Z

    .line 107
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mFromMazec:Z

    .line 108
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mDisableUpdate:Z

    const/4 v1, 0x0

    .line 109
    iput-object v1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mWeightPresets:[I

    .line 143
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mReConstructed:Z

    .line 145
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mDebug:Z

    .line 906
    iput-object v1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mAngleManipulationTimer:Lcom/metamoji/cm/UiTimer;

    .line 988
    invoke-static {}, Lcom/metamoji/nt/NtSystemSettings;->getInstance()Lcom/metamoji/nt/NtSystemSettings;

    move-result-object v0

    const-string v2, "MMJNtSystemPenSettings"

    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtSystemSettings;->getSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtSystemPenSettings;

    iput-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mSettings:Lcom/metamoji/nt/NtSystemPenSettings;

    .line 1462
    iput-object v1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mDefaultStd1:Lcom/metamoji/nt/share/NtPenStyle;

    .line 1463
    iput-object v1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mDefaultStd2:Lcom/metamoji/nt/share/NtPenStyle;

    .line 1464
    iput-object v1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mDefaultCal1A:Lcom/metamoji/nt/share/NtPenStyle;

    .line 1465
    iput-object v1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mDefaultCal1B:Lcom/metamoji/nt/share/NtPenStyle;

    .line 1466
    iput-object v1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mDefaultCal2:Lcom/metamoji/nt/share/NtPenStyle;

    .line 1467
    iput-object v1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mDefaultMrk1:Lcom/metamoji/nt/share/NtPenStyle;

    .line 1474
    iput-object v1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mDefaultFntS:Lcom/metamoji/nt/share/NtPenStyle;

    .line 1475
    iput-object v1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mDefaultFntD:Lcom/metamoji/nt/share/NtPenStyle;

    const/high16 v0, -0x40800000    # -1.0f

    .line 1476
    iput v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mCal2Angle:F

    .line 1477
    iput v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mCal2Rate:F

    .line 1981
    iput-object v1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mSampleBitmap:Landroid/graphics/Bitmap;

    .line 1982
    iput-object v1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mCalligraphyBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x1

    .line 152
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mReConstructed:Z

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/nt/share/NtPenStyle;)V
    .locals 1

    const/4 v0, 0x0

    .line 161
    invoke-direct {p0, p1, v0}, Lcom/metamoji/ui/dialog/PenSettings2;-><init>(Lcom/metamoji/nt/share/NtPenStyle;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/nt/share/NtPenStyle;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 164
    invoke-direct {p0, p1, p2, v0}, Lcom/metamoji/ui/dialog/PenSettings2;-><init>(Lcom/metamoji/nt/share/NtPenStyle;ZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/nt/share/NtPenStyle;ZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 167
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/metamoji/ui/dialog/PenSettings2;-><init>(Lcom/metamoji/nt/share/NtPenStyle;ZZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/nt/share/NtPenStyle;ZZZ)V
    .locals 3

    .line 170
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    const/4 v0, 0x5

    .line 92
    new-array v0, v0, [Lcom/metamoji/ui/common/UiImageRadioButton;

    iput-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mBottle:[Lcom/metamoji/ui/common/UiImageRadioButton;

    const/4 v0, -0x1

    .line 103
    iput v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mCurrentPenType:I

    .line 104
    iput v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mColorViewCurrentPage:I

    const/4 v0, 0x0

    .line 106
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mChangeStyle:Z

    .line 107
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mFromMazec:Z

    .line 108
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mDisableUpdate:Z

    const/4 v1, 0x0

    .line 109
    iput-object v1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mWeightPresets:[I

    .line 143
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mReConstructed:Z

    .line 145
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mDebug:Z

    .line 906
    iput-object v1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mAngleManipulationTimer:Lcom/metamoji/cm/UiTimer;

    .line 988
    invoke-static {}, Lcom/metamoji/nt/NtSystemSettings;->getInstance()Lcom/metamoji/nt/NtSystemSettings;

    move-result-object v0

    const-string v2, "MMJNtSystemPenSettings"

    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtSystemSettings;->getSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtSystemPenSettings;

    iput-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mSettings:Lcom/metamoji/nt/NtSystemPenSettings;

    .line 1462
    iput-object v1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mDefaultStd1:Lcom/metamoji/nt/share/NtPenStyle;

    .line 1463
    iput-object v1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mDefaultStd2:Lcom/metamoji/nt/share/NtPenStyle;

    .line 1464
    iput-object v1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mDefaultCal1A:Lcom/metamoji/nt/share/NtPenStyle;

    .line 1465
    iput-object v1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mDefaultCal1B:Lcom/metamoji/nt/share/NtPenStyle;

    .line 1466
    iput-object v1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mDefaultCal2:Lcom/metamoji/nt/share/NtPenStyle;

    .line 1467
    iput-object v1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mDefaultMrk1:Lcom/metamoji/nt/share/NtPenStyle;

    .line 1474
    iput-object v1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mDefaultFntS:Lcom/metamoji/nt/share/NtPenStyle;

    .line 1475
    iput-object v1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mDefaultFntD:Lcom/metamoji/nt/share/NtPenStyle;

    const/high16 v0, -0x40800000    # -1.0f

    .line 1476
    iput v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mCal2Angle:F

    .line 1477
    iput v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mCal2Rate:F

    .line 1981
    iput-object v1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mSampleBitmap:Landroid/graphics/Bitmap;

    .line 1982
    iput-object v1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mCalligraphyBitmap:Landroid/graphics/Bitmap;

    .line 171
    new-instance v0, Lcom/metamoji/nt/share/NtPenStyle;

    invoke-direct {v0, p1}, Lcom/metamoji/nt/share/NtPenStyle;-><init>(Lcom/metamoji/nt/share/NtPenStyle;)V

    iput-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    .line 172
    iput-boolean p2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mChangeStyle:Z

    .line 173
    iput-boolean p3, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mFromMazec:Z

    .line 174
    iput-boolean p4, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mDebug:Z

    const/4 p1, 0x1

    .line 176
    iput-boolean p1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mDoneOnTouchOutsize:Z

    return-void
.end method

.method private CalcIntervalPenAnglePlusMinus(II)I
    .locals 3

    const/16 v0, -0xa

    const/16 v1, 0x190

    const/16 v2, 0xa

    if-eq p2, v0, :cond_1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    if-eq p2, v2, :cond_1

    goto :goto_0

    .line 932
    :cond_0
    rem-int/2addr p1, v2

    if-nez p1, :cond_3

    return v1

    .line 937
    :cond_1
    div-int/lit8 p2, p1, 0x5a

    sub-int/2addr p1, v2

    if-lez p1, :cond_2

    .line 940
    div-int/lit8 p1, p1, 0x5a

    :cond_2
    if-eq p2, p1, :cond_3

    return v1

    :cond_3
    :goto_0
    const/16 p1, 0x32

    return p1
.end method

.method private backupInkColorsAndOpacity(Ljava/util/List;FLjava/lang/String;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;F",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    const/4 v1, -0x1

    if-gez v0, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p2, v0

    .line 1833
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    :goto_0
    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_4

    .line 1835
    const-string v3, "markerpen"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    if-eqz p1, :cond_1

    .line 1837
    new-instance p3, Lcom/metamoji/ui/dialog/PenSettings2$33;

    invoke-direct {p3, p0, p1}, Lcom/metamoji/ui/dialog/PenSettings2$33;-><init>(Lcom/metamoji/ui/dialog/PenSettings2;Ljava/util/List;)V

    iput-object p3, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mInkColorsMarker:Ljava/util/ArrayList;

    if-eqz p4, :cond_2

    .line 1839
    new-instance p1, Lcom/metamoji/ui/dialog/PenSettings2$34;

    invoke-direct {p1, p0}, Lcom/metamoji/ui/dialog/PenSettings2$34;-><init>(Lcom/metamoji/ui/dialog/PenSettings2;)V

    iput-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mInkColorsNormal:Ljava/util/ArrayList;

    goto :goto_1

    .line 1843
    :cond_1
    iput-object v2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mInkColorsMarker:Ljava/util/ArrayList;

    if-eqz p4, :cond_2

    .line 1845
    iput-object v2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mInkColorsNormal:Ljava/util/ArrayList;

    :cond_2
    :goto_1
    if-ltz p2, :cond_3

    .line 1849
    iput p2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mOpacityMarker:I

    if-eqz p4, :cond_a

    const/16 p1, 0xff

    .line 1851
    iput p1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mOpacityNormal:I

    goto :goto_4

    :cond_3
    if-eqz p4, :cond_a

    .line 1856
    iput v1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mOpacityNormal:I

    goto :goto_4

    :cond_4
    if-eqz p1, :cond_7

    .line 1863
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-le p3, v0, :cond_5

    .line 1864
    new-instance p3, Lcom/metamoji/ui/dialog/PenSettings2$35;

    invoke-direct {p3, p0, p1}, Lcom/metamoji/ui/dialog/PenSettings2$35;-><init>(Lcom/metamoji/ui/dialog/PenSettings2;Ljava/util/List;)V

    iput-object p3, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mInkColorsNormal:Ljava/util/ArrayList;

    goto :goto_2

    .line 1866
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_6

    .line 1867
    new-instance p3, Lcom/metamoji/ui/dialog/PenSettings2$36;

    invoke-direct {p3, p0, p1}, Lcom/metamoji/ui/dialog/PenSettings2$36;-><init>(Lcom/metamoji/ui/dialog/PenSettings2;Ljava/util/List;)V

    iput-object p3, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mInkColorsNormal:Ljava/util/ArrayList;

    :cond_6
    :goto_2
    if-eqz p4, :cond_8

    .line 1870
    new-instance p1, Lcom/metamoji/ui/dialog/PenSettings2$37;

    invoke-direct {p1, p0}, Lcom/metamoji/ui/dialog/PenSettings2$37;-><init>(Lcom/metamoji/ui/dialog/PenSettings2;)V

    iput-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mInkColorsMarker:Ljava/util/ArrayList;

    goto :goto_3

    .line 1874
    :cond_7
    iput-object v2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mInkColorsNormal:Ljava/util/ArrayList;

    if-eqz p4, :cond_8

    .line 1876
    iput-object v2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mInkColorsMarker:Ljava/util/ArrayList;

    :cond_8
    :goto_3
    if-ltz p2, :cond_9

    .line 1880
    iput p2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mOpacityNormal:I

    goto :goto_4

    .line 1883
    :cond_9
    iput v1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mOpacityNormal:I

    .line 1886
    :cond_a
    :goto_4
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mInitializedInkColorsAndOpacity:Z

    return-void
.end method

.method private getAngleManipulationAmountByPresetId(I)I
    .locals 2

    .line 896
    sget-object v0, Lcom/metamoji/ui/dialog/PenSettings2;->mAngleManipulationIds:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 897
    sget-object v1, Lcom/metamoji/ui/dialog/PenSettings2;->mAngleManipulationIds:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 898
    sget-object p1, Lcom/metamoji/ui/dialog/PenSettings2;->mAngleManipulationAmount:[I

    aget p1, p1, v0

    return p1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private initDlgValues()V
    .locals 18

    move-object/from16 v0, p0

    .line 994
    iget-object v1, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v1}, Lcom/metamoji/nt/share/NtPenStyle;->isType()Z

    move-result v1

    const-string v2, "markerpen"

    const-string/jumbo v3, "standard"

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    .line 995
    iget-object v1, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    iget-object v1, v1, Lcom/metamoji/nt/share/NtPenStyle;->type:Ljava/lang/String;

    const-string/jumbo v5, "shapepen"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1001
    iget-object v5, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    if-eqz v1, :cond_0

    .line 996
    iput-object v3, v5, Lcom/metamoji/nt/share/NtPenStyle;->type:Ljava/lang/String;

    .line 997
    iget-object v1, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mButtonDrawShape:Lcom/metamoji/ui/common/UiButton;

    if-eqz v1, :cond_1

    .line 998
    invoke-virtual {v1, v4}, Lcom/metamoji/ui/common/UiButton;->setSelected(Z)V

    goto :goto_0

    .line 1001
    :cond_0
    iget-object v1, v5, Lcom/metamoji/nt/share/NtPenStyle;->type:Ljava/lang/String;

    const-string/jumbo v5, "shapemarkerpen"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1002
    iget-object v1, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    iput-object v2, v1, Lcom/metamoji/nt/share/NtPenStyle;->type:Ljava/lang/String;

    .line 1003
    iget-object v1, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mButtonDrawShape:Lcom/metamoji/ui/common/UiButton;

    if-eqz v1, :cond_1

    .line 1004
    invoke-virtual {v1, v4}, Lcom/metamoji/ui/common/UiButton;->setSelected(Z)V

    .line 1008
    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mButtonDrawShape:Lcom/metamoji/ui/common/UiButton;

    if-eqz v1, :cond_2

    .line 1009
    iget-boolean v5, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mFromMazec:Z

    xor-int/2addr v5, v4

    invoke-virtual {v1, v5}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    .line 1013
    :cond_2
    new-instance v1, Lcom/metamoji/nt/share/NtPenStyle;

    invoke-direct {v1}, Lcom/metamoji/nt/share/NtPenStyle;-><init>()V

    iput-object v1, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mDefaultSampleStyle:Lcom/metamoji/nt/share/NtPenStyle;

    .line 1014
    const-string v5, "calligraphy"

    invoke-virtual {v1, v5}, Lcom/metamoji/nt/share/NtPenStyle;->setType(Ljava/lang/String;)V

    .line 1015
    iget-object v1, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mDefaultSampleStyle:Lcom/metamoji/nt/share/NtPenStyle;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v1, v6}, Lcom/metamoji/nt/share/NtPenStyle;->setLineAlpha(F)V

    .line 1016
    iget-object v1, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mDefaultSampleStyle:Lcom/metamoji/nt/share/NtPenStyle;

    const/high16 v7, 0x40800000    # 4.0f

    invoke-virtual {v1, v7}, Lcom/metamoji/nt/share/NtPenStyle;->setLineWidth(F)V

    .line 1017
    iget-object v1, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mDefaultSampleStyle:Lcom/metamoji/nt/share/NtPenStyle;

    const/high16 v7, 0x43610000    # 225.0f

    invoke-virtual {v1, v7}, Lcom/metamoji/nt/share/NtPenStyle;->setPenAngle(F)V

    .line 1018
    iget-object v1, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mDefaultSampleStyle:Lcom/metamoji/nt/share/NtPenStyle;

    const v7, 0x3dcccccd    # 0.1f

    invoke-virtual {v1, v7}, Lcom/metamoji/nt/share/NtPenStyle;->setPenRate(F)V

    .line 1019
    iget-object v1, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mDefaultSampleStyle:Lcom/metamoji/nt/share/NtPenStyle;

    const-string v7, "com.metamoji.pen.calligraphy.plus"

    invoke-virtual {v1, v7}, Lcom/metamoji/nt/share/NtPenStyle;->setPenId(Ljava/lang/String;)V

    .line 1020
    iget-object v1, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mDefaultSampleStyle:Lcom/metamoji/nt/share/NtPenStyle;

    const-string v8, "com.metamoji.ink.builtin.standard1"

    invoke-virtual {v1, v8}, Lcom/metamoji/nt/share/NtPenStyle;->setInkId(Ljava/lang/String;)V

    .line 1021
    iget-object v1, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mDefaultSampleStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v1, v3}, Lcom/metamoji/nt/share/NtPenStyle;->setInkType(Ljava/lang/String;)V

    .line 1022
    iget-object v1, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mDefaultSampleStyle:Lcom/metamoji/nt/share/NtPenStyle;

    new-instance v9, Lcom/metamoji/ui/dialog/PenSettings2$27;

    invoke-direct {v9, v0}, Lcom/metamoji/ui/dialog/PenSettings2$27;-><init>(Lcom/metamoji/ui/dialog/PenSettings2;)V

    invoke-virtual {v1, v9}, Lcom/metamoji/nt/share/NtPenStyle;->setInkColors(Ljava/util/List;)V

    .line 1024
    sget-object v1, Lcom/metamoji/lb/LbInAppPurchaseConstants;->PRODUCTID_PEN_KARIGURAFI_EX:Ljava/lang/String;

    invoke-static {v1}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->isPurchaseProduct(Ljava/lang/String;)Z

    move-result v1

    .line 1027
    iget-object v9, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v9}, Lcom/metamoji/nt/share/NtPenStyle;->isPenId()Z

    move-result v9

    const-string v10, "com.metamoji.pen.buildin.markerpen"

    const-string v11, "com.metamoji.pen.builtin.standard2"

    const-string v12, "com.metamoji.pen.builtin.fountainpen3"

    const-string v13, "com.metamoji.pen.builtin.fountainpen4"

    const-string v14, "com.metamoji.pen.builtin.calligraphy2"

    const-string v15, "com.metamoji.pen.builtin.calligraphy1"

    move/from16 v16, v6

    const-string v6, "com.metamoji.pen.builtin.standard1"

    if-nez v9, :cond_e

    .line 1030
    iget-object v9, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v9}, Lcom/metamoji/nt/share/NtPenStyle;->isType()Z

    move-result v9

    if-eqz v9, :cond_e

    .line 1031
    iget-object v9, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v9}, Lcom/metamoji/nt/share/NtPenStyle;->getType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 1041
    iget-object v4, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    if-eqz v9, :cond_4

    .line 1032
    invoke-virtual {v4}, Lcom/metamoji/nt/share/NtPenStyle;->getLineDash()Ljava/util/List;

    move-result-object v4

    .line 1038
    iget-object v5, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    if-eqz v4, :cond_3

    .line 1033
    invoke-virtual {v5}, Lcom/metamoji/nt/share/NtPenStyle;->getLineDash()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_e

    .line 1034
    iget-object v4, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v4, v11}, Lcom/metamoji/nt/share/NtPenStyle;->setPenId(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1038
    :cond_3
    invoke-virtual {v5, v6}, Lcom/metamoji/nt/share/NtPenStyle;->setPenId(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1041
    :cond_4
    invoke-virtual {v4}, Lcom/metamoji/nt/share/NtPenStyle;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1042
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v4

    sget-object v5, Lcom/metamoji/nt/NtFeature;->PenCalligraphyOption:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v4, v5}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v4

    if-nez v4, :cond_8

    if-nez v1, :cond_8

    iget-boolean v4, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mDebug:Z

    if-eqz v4, :cond_5

    goto/16 :goto_1

    .line 1045
    :cond_5
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v4

    sget-object v5, Lcom/metamoji/nt/NtFeature;->PenCalligraphy:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v4, v5}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1046
    iget-object v4, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mSettings:Lcom/metamoji/nt/NtSystemPenSettings;

    invoke-virtual {v4, v15}, Lcom/metamoji/nt/NtSystemPenSettings;->getPenTemplateById(Ljava/lang/String;)Lcom/metamoji/nt/NtPenTemplate;

    move-result-object v4

    .line 1047
    iget-object v5, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mSettings:Lcom/metamoji/nt/NtSystemPenSettings;

    invoke-virtual {v5, v14}, Lcom/metamoji/nt/NtSystemPenSettings;->getPenTemplateById(Ljava/lang/String;)Lcom/metamoji/nt/NtPenTemplate;

    move-result-object v5

    .line 1048
    iget-object v9, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v9}, Lcom/metamoji/nt/share/NtPenStyle;->getPenAngle()F

    move-result v9

    invoke-virtual {v4}, Lcom/metamoji/nt/NtPenTemplate;->getDefaultStyle()Lcom/metamoji/nt/share/NtPenStyle;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/metamoji/nt/share/NtPenStyle;->getPenAngle()F

    move-result v17

    cmpl-float v9, v9, v17

    if-nez v9, :cond_6

    iget-object v9, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    .line 1049
    invoke-virtual {v9}, Lcom/metamoji/nt/share/NtPenStyle;->getPenRate()F

    move-result v9

    invoke-virtual {v4}, Lcom/metamoji/nt/NtPenTemplate;->getDefaultStyle()Lcom/metamoji/nt/share/NtPenStyle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/nt/share/NtPenStyle;->getPenRate()F

    move-result v4

    cmpl-float v4, v9, v4

    if-nez v4, :cond_6

    .line 1050
    iget-object v4, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v4, v15}, Lcom/metamoji/nt/share/NtPenStyle;->setPenId(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1052
    :cond_6
    iget-object v4, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v4}, Lcom/metamoji/nt/share/NtPenStyle;->getPenAngle()F

    move-result v4

    invoke-virtual {v5}, Lcom/metamoji/nt/NtPenTemplate;->getDefaultStyle()Lcom/metamoji/nt/share/NtPenStyle;

    move-result-object v9

    invoke-virtual {v9}, Lcom/metamoji/nt/share/NtPenStyle;->getPenAngle()F

    move-result v9

    cmpl-float v4, v4, v9

    if-nez v4, :cond_e

    iget-object v4, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    .line 1053
    invoke-virtual {v4}, Lcom/metamoji/nt/share/NtPenStyle;->getPenRate()F

    move-result v4

    invoke-virtual {v5}, Lcom/metamoji/nt/NtPenTemplate;->getDefaultStyle()Lcom/metamoji/nt/share/NtPenStyle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/nt/share/NtPenStyle;->getPenRate()F

    move-result v5

    cmpl-float v4, v4, v5

    if-nez v4, :cond_e

    .line 1054
    iget-object v4, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v4, v14}, Lcom/metamoji/nt/share/NtPenStyle;->setPenId(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1059
    :cond_7
    iget-object v4, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v4, v6}, Lcom/metamoji/nt/share/NtPenStyle;->setPenId(Ljava/lang/String;)V

    .line 1060
    iget-object v4, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v4, v3}, Lcom/metamoji/nt/share/NtPenStyle;->setType(Ljava/lang/String;)V

    .line 1061
    iget-object v4, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v4}, Lcom/metamoji/nt/share/NtPenStyle;->isInkType()Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v4}, Lcom/metamoji/nt/share/NtPenStyle;->getInkType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 1062
    iget-object v4, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v4, v3}, Lcom/metamoji/nt/share/NtPenStyle;->setInkType(Ljava/lang/String;)V

    .line 1063
    iget-object v4, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v4, v8}, Lcom/metamoji/nt/share/NtPenStyle;->setInkId(Ljava/lang/String;)V

    .line 1066
    iget-object v4, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    new-instance v5, Lcom/metamoji/ui/dialog/PenSettings2$28;

    invoke-direct {v5, v0}, Lcom/metamoji/ui/dialog/PenSettings2$28;-><init>(Lcom/metamoji/ui/dialog/PenSettings2;)V

    invoke-virtual {v4, v5}, Lcom/metamoji/nt/share/NtPenStyle;->setInkColors(Ljava/util/List;)V

    goto/16 :goto_3

    .line 1043
    :cond_8
    :goto_1
    iget-object v4, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v4, v7}, Lcom/metamoji/nt/share/NtPenStyle;->setPenId(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1103
    :cond_9
    iget-object v4, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v4}, Lcom/metamoji/nt/share/NtPenStyle;->getType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "fountainpen"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v4}, Lcom/metamoji/nt/share/NtPenStyle;->isBeginRun()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1104
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v4

    sget-object v5, Lcom/metamoji/nt/NtFeature;->PenFountain:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v4, v5}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v4

    if-nez v4, :cond_b

    iget-boolean v4, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mDebug:Z

    if-eqz v4, :cond_a

    goto :goto_2

    .line 1115
    :cond_a
    iget-object v4, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v4, v6}, Lcom/metamoji/nt/share/NtPenStyle;->setPenId(Ljava/lang/String;)V

    .line 1116
    iget-object v4, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v4, v3}, Lcom/metamoji/nt/share/NtPenStyle;->setType(Ljava/lang/String;)V

    .line 1117
    iget-object v4, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v4}, Lcom/metamoji/nt/share/NtPenStyle;->isInkType()Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v4}, Lcom/metamoji/nt/share/NtPenStyle;->getInkType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 1118
    iget-object v4, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v4, v3}, Lcom/metamoji/nt/share/NtPenStyle;->setInkType(Ljava/lang/String;)V

    .line 1119
    iget-object v4, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v4, v8}, Lcom/metamoji/nt/share/NtPenStyle;->setInkId(Ljava/lang/String;)V

    .line 1122
    iget-object v4, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    new-instance v5, Lcom/metamoji/ui/dialog/PenSettings2$29;

    invoke-direct {v5, v0}, Lcom/metamoji/ui/dialog/PenSettings2$29;-><init>(Lcom/metamoji/ui/dialog/PenSettings2;)V

    invoke-virtual {v4, v5}, Lcom/metamoji/nt/share/NtPenStyle;->setInkColors(Ljava/util/List;)V

    goto :goto_3

    .line 1105
    :cond_b
    :goto_2
    iget-object v4, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mSettings:Lcom/metamoji/nt/NtSystemPenSettings;

    invoke-virtual {v4, v13}, Lcom/metamoji/nt/NtSystemPenSettings;->getPenTemplateById(Ljava/lang/String;)Lcom/metamoji/nt/NtPenTemplate;

    move-result-object v4

    .line 1106
    invoke-virtual {v4}, Lcom/metamoji/nt/NtPenTemplate;->getDefaultStyle()Lcom/metamoji/nt/share/NtPenStyle;

    move-result-object v4

    iget v4, v4, Lcom/metamoji/nt/share/NtPenStyle;->beginRun:F

    iget-object v5, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    iget v5, v5, Lcom/metamoji/nt/share/NtPenStyle;->beginRun:F

    cmpl-float v4, v4, v5

    .line 1110
    iget-object v5, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    if-nez v4, :cond_c

    .line 1107
    iput-object v13, v5, Lcom/metamoji/nt/share/NtPenStyle;->penId:Ljava/lang/String;

    goto :goto_3

    .line 1110
    :cond_c
    iput-object v12, v5, Lcom/metamoji/nt/share/NtPenStyle;->penId:Ljava/lang/String;

    goto :goto_3

    .line 1149
    :cond_d
    iget-object v4, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v4}, Lcom/metamoji/nt/share/NtPenStyle;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1151
    iget-object v4, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    iput-object v10, v4, Lcom/metamoji/nt/share/NtPenStyle;->penId:Ljava/lang/String;

    .line 1156
    :cond_e
    :goto_3
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v4

    sget-object v5, Lcom/metamoji/nt/NtFeature;->PenCalligraphyOption:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v4, v5}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v4

    if-nez v4, :cond_f

    iget-boolean v4, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mDebug:Z

    if-nez v4, :cond_f

    .line 1158
    iget-object v4, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v4}, Lcom/metamoji/nt/share/NtPenStyle;->isPenId()Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v4, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v4}, Lcom/metamoji/nt/share/NtPenStyle;->getPenId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    if-nez v1, :cond_f

    .line 1160
    iget-object v1, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v1, v6}, Lcom/metamoji/nt/share/NtPenStyle;->setPenId(Ljava/lang/String;)V

    .line 1161
    iget-object v1, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v1, v3}, Lcom/metamoji/nt/share/NtPenStyle;->setType(Ljava/lang/String;)V

    .line 1162
    iget-object v1, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v1}, Lcom/metamoji/nt/share/NtPenStyle;->isInkType()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v1}, Lcom/metamoji/nt/share/NtPenStyle;->getInkType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 1163
    iget-object v1, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v1, v3}, Lcom/metamoji/nt/share/NtPenStyle;->setInkType(Ljava/lang/String;)V

    .line 1164
    iget-object v1, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v1, v8}, Lcom/metamoji/nt/share/NtPenStyle;->setInkId(Ljava/lang/String;)V

    .line 1167
    iget-object v1, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    new-instance v4, Lcom/metamoji/ui/dialog/PenSettings2$30;

    invoke-direct {v4, v0}, Lcom/metamoji/ui/dialog/PenSettings2$30;-><init>(Lcom/metamoji/ui/dialog/PenSettings2;)V

    invoke-virtual {v1, v4}, Lcom/metamoji/nt/share/NtPenStyle;->setInkColors(Ljava/util/List;)V

    .line 1189
    :cond_f
    iget-object v1, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v1}, Lcom/metamoji/nt/share/NtPenStyle;->isPenId()Z

    move-result v1

    const/4 v5, 0x0

    if-eqz v1, :cond_1f

    .line 1191
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v1

    sget-object v9, Lcom/metamoji/nt/NtFeature;->PenCalligraphy:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v1, v9}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v1

    if-nez v1, :cond_11

    iget-boolean v1, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mDebug:Z

    if-nez v1, :cond_11

    .line 1193
    iget-object v1, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v1}, Lcom/metamoji/nt/share/NtPenStyle;->getPenId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    .line 1194
    invoke-virtual {v1}, Lcom/metamoji/nt/share/NtPenStyle;->getPenId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    .line 1195
    invoke-virtual {v1}, Lcom/metamoji/nt/share/NtPenStyle;->getPenId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    :cond_10
    const/4 v1, 0x1

    goto :goto_4

    :cond_11
    move v1, v5

    .line 1200
    :goto_4
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v9

    sget-object v4, Lcom/metamoji/nt/NtFeature;->PenCalligraphyOption:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v9, v4}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v4

    if-nez v4, :cond_12

    iget-boolean v4, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mDebug:Z

    if-nez v4, :cond_12

    .line 1202
    iget-object v4, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v4}, Lcom/metamoji/nt/share/NtPenStyle;->getPenId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    const/4 v1, 0x1

    .line 1207
    :cond_12
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v4

    sget-object v9, Lcom/metamoji/nt/NtFeature;->PenFountain:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v4, v9}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v4

    if-nez v4, :cond_14

    iget-boolean v4, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mDebug:Z

    if-nez v4, :cond_14

    .line 1209
    iget-object v4, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v4}, Lcom/metamoji/nt/share/NtPenStyle;->getPenId()Ljava/lang/String;

    move-result-object v4

    const-string v9, "com.metamoji.pen.builtin.fountainpen1"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    iget-object v4, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    .line 1210
    invoke-virtual {v4}, Lcom/metamoji/nt/share/NtPenStyle;->getPenId()Ljava/lang/String;

    move-result-object v4

    const-string v9, "com.metamoji.pen.builtin.fountainpen2"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    iget-object v4, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    .line 1211
    invoke-virtual {v4}, Lcom/metamoji/nt/share/NtPenStyle;->getPenId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    iget-object v4, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    .line 1212
    invoke-virtual {v4}, Lcom/metamoji/nt/share/NtPenStyle;->getPenId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    :cond_13
    const/4 v1, 0x1

    :cond_14
    if-eqz v1, :cond_15

    .line 1219
    iget-object v1, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v1, v6}, Lcom/metamoji/nt/share/NtPenStyle;->setPenId(Ljava/lang/String;)V

    .line 1220
    iget-object v1, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v1, v3}, Lcom/metamoji/nt/share/NtPenStyle;->setType(Ljava/lang/String;)V

    .line 1221
    iget-object v1, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v1}, Lcom/metamoji/nt/share/NtPenStyle;->isInkType()Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v1}, Lcom/metamoji/nt/share/NtPenStyle;->getInkType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 1222
    iget-object v1, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v1, v3}, Lcom/metamoji/nt/share/NtPenStyle;->setInkType(Ljava/lang/String;)V

    .line 1223
    iget-object v1, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v1, v8}, Lcom/metamoji/nt/share/NtPenStyle;->setInkId(Ljava/lang/String;)V

    .line 1226
    iget-object v1, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    new-instance v3, Lcom/metamoji/ui/dialog/PenSettings2$31;

    invoke-direct {v3, v0}, Lcom/metamoji/ui/dialog/PenSettings2$31;-><init>(Lcom/metamoji/ui/dialog/PenSettings2;)V

    invoke-virtual {v1, v3}, Lcom/metamoji/nt/share/NtPenStyle;->setInkColors(Ljava/util/List;)V

    .line 1254
    :cond_15
    iget-object v1, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v1}, Lcom/metamoji/nt/share/NtPenStyle;->getPenId()Ljava/lang/String;

    move-result-object v1

    .line 1255
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1256
    sget v1, Lcom/metamoji/noteanytime/R$id;->pentypeStd1:I

    .line 1257
    iget-object v3, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mGroupPenStandard:Lcom/metamoji/ui/common/UiRadioGroup;

    if-eqz v3, :cond_20

    .line 1258
    invoke-virtual {v3, v5}, Lcom/metamoji/ui/common/UiRadioGroup;->setCurrentButtonIndex(I)V

    goto/16 :goto_5

    .line 1260
    :cond_16
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 1262
    sget v1, Lcom/metamoji/noteanytime/R$id;->pentypeStd1:I

    .line 1263
    iget-object v3, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mGroupPenStandard:Lcom/metamoji/ui/common/UiRadioGroup;

    if-eqz v3, :cond_20

    const/4 v4, 0x1

    .line 1264
    invoke-virtual {v3, v4}, Lcom/metamoji/ui/common/UiRadioGroup;->setCurrentButtonIndex(I)V

    goto :goto_5

    .line 1266
    :cond_17
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1267
    sget v1, Lcom/metamoji/noteanytime/R$id;->pentypeCal1:I

    .line 1268
    iget-object v3, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mGroupPenCalligraphy:Lcom/metamoji/ui/common/UiRadioGroup;

    if-eqz v3, :cond_20

    .line 1269
    invoke-virtual {v3, v5}, Lcom/metamoji/ui/common/UiRadioGroup;->setCurrentButtonIndex(I)V

    goto :goto_5

    .line 1271
    :cond_18
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1272
    sget v1, Lcom/metamoji/noteanytime/R$id;->pentypeCal1:I

    .line 1274
    iget-object v3, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mGroupPenCalligraphy:Lcom/metamoji/ui/common/UiRadioGroup;

    if-eqz v3, :cond_20

    const/4 v4, 0x1

    .line 1275
    invoke-virtual {v3, v4}, Lcom/metamoji/ui/common/UiRadioGroup;->setCurrentButtonIndex(I)V

    goto :goto_5

    .line 1277
    :cond_19
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 1278
    sget v1, Lcom/metamoji/noteanytime/R$id;->pentypeCal1:I

    .line 1281
    iget-object v3, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mGroupPenCalligraphy:Lcom/metamoji/ui/common/UiRadioGroup;

    if-eqz v3, :cond_1a

    const/4 v4, 0x2

    .line 1282
    invoke-virtual {v3, v4}, Lcom/metamoji/ui/common/UiRadioGroup;->setCurrentButtonIndex(I)V

    :cond_1a
    const/4 v3, 0x1

    goto :goto_6

    .line 1296
    :cond_1b
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 1297
    sget v1, Lcom/metamoji/noteanytime/R$id;->pentypeFnt1:I

    goto :goto_5

    .line 1304
    :cond_1c
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 1305
    sget v1, Lcom/metamoji/noteanytime/R$id;->pentypeBrs1:I

    goto :goto_5

    .line 1311
    :cond_1d
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1312
    sget v1, Lcom/metamoji/noteanytime/R$id;->pentypeMrk1:I

    goto :goto_5

    .line 1314
    :cond_1e
    sget v1, Lcom/metamoji/noteanytime/R$id;->pentypeStd1:I

    goto :goto_5

    :cond_1f
    const/4 v1, -0x1

    :cond_20
    :goto_5
    move v3, v5

    .line 1318
    :goto_6
    iget-object v4, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v4}, Lcom/metamoji/nt/share/NtPenStyle;->isLineColor()Z

    move-result v4

    if-eqz v4, :cond_21

    iget-object v4, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v4}, Lcom/metamoji/nt/share/NtPenStyle;->getInkColors()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_21

    .line 1320
    iget-object v4, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    new-instance v6, Lcom/metamoji/ui/dialog/PenSettings2$32;

    invoke-direct {v6, v0}, Lcom/metamoji/ui/dialog/PenSettings2$32;-><init>(Lcom/metamoji/ui/dialog/PenSettings2;)V

    invoke-virtual {v4, v6}, Lcom/metamoji/nt/share/NtPenStyle;->setInkColors(Ljava/util/List;)V

    .line 1324
    :cond_21
    iget-object v4, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mPenTypeRadioGroup:Lcom/metamoji/ui/common/UiRadioContoller;

    const/4 v6, 0x1

    invoke-virtual {v4, v1, v6}, Lcom/metamoji/ui/common/UiRadioContoller;->select(IZ)V

    .line 1327
    iget-object v1, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v1}, Lcom/metamoji/nt/share/NtPenStyle;->getInkColors()Ljava/util/List;

    move-result-object v1

    const/high16 v4, -0x1000000

    if-eqz v1, :cond_22

    .line 1330
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_22

    .line 1331
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1332
    iget-object v8, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mColorSelectionView:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v8, v2, v1, v5}, Lcom/metamoji/ui/common/UiColorSelectionView2;->selectItemByColor(IIZ)Z

    move-result v1

    goto :goto_7

    .line 1333
    :cond_22
    iget-object v1, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v1}, Lcom/metamoji/nt/share/NtPenStyle;->isLineColor()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 1334
    iget-object v1, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v1}, Lcom/metamoji/nt/share/NtPenStyle;->getLineColor()I

    move-result v1

    .line 1336
    iget-object v6, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v6}, Lcom/metamoji/nt/share/NtPenStyle;->isType()Z

    move-result v6

    if-eqz v6, :cond_23

    iget-object v6, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v6}, Lcom/metamoji/nt/share/NtPenStyle;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1338
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    .line 1339
    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v6

    .line 1340
    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    .line 1341
    iget v8, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mOpacityMarker:I

    invoke-static {v8, v2, v6, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    :cond_23
    move v2, v1

    .line 1343
    iget-object v1, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mColorSelectionView:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-virtual {v1, v2, v5}, Lcom/metamoji/ui/common/UiColorSelectionView2;->selectItemByColor(IZ)Z

    move-result v1

    goto :goto_7

    :cond_24
    move v2, v4

    move v1, v5

    :goto_7
    if-nez v1, :cond_25

    .line 1345
    iget-boolean v1, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mChangeStyle:Z

    if-nez v1, :cond_25

    .line 1347
    iget-object v1, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mColorSelectionView:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-virtual {v1, v4}, Lcom/metamoji/ui/common/UiColorSelectionView2;->selectItemByColor(I)Z

    goto :goto_8

    :cond_25
    move v4, v2

    .line 1351
    :goto_8
    iget-object v1, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mColorSelectionView:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-virtual {v1}, Lcom/metamoji/ui/common/UiColorSelectionView2;->getSelectedGroup()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/nt/NtInkManager;->getGroupNameNumber(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    const/4 v6, 0x1

    if-eq v1, v6, :cond_29

    const/4 v9, 0x2

    if-eq v1, v9, :cond_28

    if-eq v1, v2, :cond_27

    .line 1362
    iget-object v6, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mBottlesRadioGroup:Lcom/metamoji/ui/common/UiRadioContoller;

    const/4 v8, 0x4

    if-eq v1, v8, :cond_26

    .line 1366
    sget v1, Lcom/metamoji/noteanytime/R$id;->bottle0:I

    invoke-virtual {v6, v1}, Lcom/metamoji/ui/common/UiRadioContoller;->select(I)V

    goto :goto_9

    .line 1362
    :cond_26
    sget v1, Lcom/metamoji/noteanytime/R$id;->bottle4:I

    invoke-virtual {v6, v1}, Lcom/metamoji/ui/common/UiRadioContoller;->select(I)V

    goto :goto_9

    .line 1359
    :cond_27
    iget-object v1, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mBottlesRadioGroup:Lcom/metamoji/ui/common/UiRadioContoller;

    sget v6, Lcom/metamoji/noteanytime/R$id;->bottle3:I

    invoke-virtual {v1, v6}, Lcom/metamoji/ui/common/UiRadioContoller;->select(I)V

    goto :goto_9

    .line 1356
    :cond_28
    iget-object v1, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mBottlesRadioGroup:Lcom/metamoji/ui/common/UiRadioContoller;

    sget v6, Lcom/metamoji/noteanytime/R$id;->bottle2:I

    invoke-virtual {v1, v6}, Lcom/metamoji/ui/common/UiRadioContoller;->select(I)V

    goto :goto_9

    .line 1353
    :cond_29
    iget-object v1, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mBottlesRadioGroup:Lcom/metamoji/ui/common/UiRadioContoller;

    sget v6, Lcom/metamoji/noteanytime/R$id;->bottle1:I

    invoke-virtual {v1, v6}, Lcom/metamoji/ui/common/UiRadioContoller;->select(I)V

    .line 1371
    :goto_9
    iget v1, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mColorViewCurrentPage:I

    if-ltz v1, :cond_2a

    .line 1372
    iget-object v6, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mColorSelectionView:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-virtual {v6, v1}, Lcom/metamoji/ui/common/UiColorSelectionView2;->reservePage(I)V

    .line 1376
    :cond_2a
    iget-object v1, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v1}, Lcom/metamoji/nt/share/NtPenStyle;->isLineWidth()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 1377
    iget-object v1, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v1}, Lcom/metamoji/nt/share/NtPenStyle;->getLineWidth()F

    move-result v1

    const/high16 v2, 0x40a00000    # 5.0f

    mul-float/2addr v1, v2

    cmpl-float v2, v1, v16

    .line 1382
    iget-object v6, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mSliderWeight:Lcom/metamoji/ui/common/UiPlainSlider;

    if-ltz v2, :cond_2b

    const/4 v2, 0x1

    .line 1379
    invoke-virtual {v6, v2}, Lcom/metamoji/ui/common/UiPlainSlider;->setEnabled(Z)V

    .line 1380
    iget-object v6, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mSliderWeight:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v6, v1}, Lcom/metamoji/ui/common/UiPlainSlider;->setCurrentValue(I)V

    goto :goto_a

    :cond_2b
    const/4 v2, 0x1

    .line 1382
    invoke-virtual {v6, v5}, Lcom/metamoji/ui/common/UiPlainSlider;->setEnabled(Z)V

    .line 1383
    iget-object v1, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mSliderWeight:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-virtual {v1}, Lcom/metamoji/ui/common/UiPlainSlider;->setNoValue()V

    .line 1384
    iget-object v1, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mSliderWeight:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/common/UiPlainSlider;->setCurrentValue(I)V

    goto :goto_a

    .line 1388
    :cond_2c
    iget-object v1, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mSliderWeight:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-virtual {v1, v5}, Lcom/metamoji/ui/common/UiPlainSlider;->setEnabled(Z)V

    .line 1389
    iget-object v1, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mSliderWeight:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-virtual {v1}, Lcom/metamoji/ui/common/UiPlainSlider;->setNoValue()V

    .line 1390
    iget-object v1, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mSliderWeight:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/common/UiPlainSlider;->setCurrentValue(I)V

    .line 1393
    :goto_a
    iget-object v1, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v1}, Lcom/metamoji/nt/share/NtPenStyle;->isLineAlpha()Z

    move-result v1

    .line 1398
    iget-object v2, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mSliderOpacity:Lcom/metamoji/ui/common/UiPlainSlider;

    const/high16 v6, 0x42c80000    # 100.0f

    if-eqz v1, :cond_2d

    const/4 v1, 0x1

    .line 1394
    invoke-virtual {v2, v1}, Lcom/metamoji/ui/common/UiPlainSlider;->setEnabled(Z)V

    .line 1395
    iget-object v1, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mSliderOpacity:Lcom/metamoji/ui/common/UiPlainSlider;

    iget-object v2, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v2}, Lcom/metamoji/nt/share/NtPenStyle;->getLineAlpha()F

    move-result v2

    mul-float/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/common/UiPlainSlider;->setCurrentValue(I)V

    goto :goto_b

    .line 1398
    :cond_2d
    invoke-virtual {v2, v5}, Lcom/metamoji/ui/common/UiPlainSlider;->setEnabled(Z)V

    .line 1399
    iget-object v1, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mSliderOpacity:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-virtual {v1}, Lcom/metamoji/ui/common/UiPlainSlider;->setNoValue()V

    .line 1400
    iget-object v1, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mSliderOpacity:Lcom/metamoji/ui/common/UiPlainSlider;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/common/UiPlainSlider;->setCurrentValue(I)V

    .line 1402
    :goto_b
    iget-object v1, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mSliderOpacity:Lcom/metamoji/ui/common/UiPlainSlider;

    const v2, 0xffffff

    and-int/2addr v2, v4

    invoke-virtual {v1, v2, v4}, Lcom/metamoji/ui/common/UiPlainSlider;->setSliderColor(II)V

    .line 1405
    iget-object v1, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mDefaultCal2:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v0, v7, v1}, Lcom/metamoji/ui/dialog/PenSettings2;->getDefaultStyle(Ljava/lang/String;Lcom/metamoji/nt/share/NtPenStyle;)Lcom/metamoji/nt/share/NtPenStyle;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mDefaultCal2:Lcom/metamoji/nt/share/NtPenStyle;

    if-eqz v3, :cond_2e

    .line 1407
    iget-object v1, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v1}, Lcom/metamoji/nt/share/NtPenStyle;->getPenAngle()F

    move-result v1

    iput v1, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mCal2Angle:F

    .line 1408
    iget-object v1, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v1}, Lcom/metamoji/nt/share/NtPenStyle;->getPenRate()F

    move-result v1

    iput v1, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mCal2Rate:F

    goto :goto_c

    .line 1410
    :cond_2e
    iget v2, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mCal2Angle:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2f

    .line 1411
    invoke-virtual {v1}, Lcom/metamoji/nt/share/NtPenStyle;->getPenAngle()F

    move-result v1

    iput v1, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mCal2Angle:F

    .line 1413
    :cond_2f
    iget v1, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mCal2Rate:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_30

    .line 1414
    iget-object v1, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mDefaultCal2:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v1}, Lcom/metamoji/nt/share/NtPenStyle;->getPenRate()F

    move-result v1

    iput v1, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mCal2Rate:F

    .line 1417
    :cond_30
    :goto_c
    iget-boolean v1, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mChangeStyle:Z

    const/16 v2, 0xb4

    if-eqz v1, :cond_33

    .line 1419
    iget-object v1, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v1}, Lcom/metamoji/nt/share/NtPenStyle;->isPenAngle()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 1420
    iget-object v1, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v1}, Lcom/metamoji/nt/share/NtPenStyle;->getPenAngle()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    if-lt v1, v2, :cond_31

    sub-int/2addr v1, v2

    goto :goto_d

    :cond_31
    add-int/2addr v1, v2

    .line 1422
    :goto_d
    iget-object v2, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mAngleSlider:Lcom/metamoji/ui/common/UiAngleSlider;

    invoke-virtual {v2, v1}, Lcom/metamoji/ui/common/UiAngleSlider;->setAngleDegree(I)V

    goto :goto_f

    .line 1429
    :cond_32
    iget-object v1, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mAngleSlider:Lcom/metamoji/ui/common/UiAngleSlider;

    invoke-virtual {v1, v5}, Lcom/metamoji/ui/common/UiAngleSlider;->setEnabled(Z)V

    .line 1430
    iget-object v1, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mAngleSlider:Lcom/metamoji/ui/common/UiAngleSlider;

    const/16 v2, 0xe1

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/common/UiAngleSlider;->setAngleDegree(I)V

    goto :goto_f

    .line 1435
    :cond_33
    iget v1, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mCal2Angle:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    if-lt v1, v2, :cond_34

    sub-int/2addr v1, v2

    goto :goto_e

    :cond_34
    add-int/2addr v1, v2

    .line 1437
    :goto_e
    iget-object v2, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mAngleSlider:Lcom/metamoji/ui/common/UiAngleSlider;

    invoke-virtual {v2, v1}, Lcom/metamoji/ui/common/UiAngleSlider;->setAngleDegree(I)V

    .line 1442
    :goto_f
    iget-boolean v1, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mChangeStyle:Z

    if-eqz v1, :cond_36

    .line 1444
    iget-object v1, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v1}, Lcom/metamoji/nt/share/NtPenStyle;->isPenRate()Z

    move-result v1

    .line 1450
    iget-object v2, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mPenRateSlider:Lcom/metamoji/ui/common/UiPlainSlider;

    if-eqz v1, :cond_35

    const/4 v4, 0x1

    .line 1445
    invoke-virtual {v2, v4}, Lcom/metamoji/ui/common/UiPlainSlider;->setEnabled(Z)V

    .line 1446
    iget-object v1, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mPenRateSlider:Lcom/metamoji/ui/common/UiPlainSlider;

    iget-object v2, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v2}, Lcom/metamoji/nt/share/NtPenStyle;->getPenRate()F

    move-result v2

    mul-float/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/common/UiPlainSlider;->setCurrentValue(I)V

    return-void

    .line 1450
    :cond_35
    invoke-virtual {v2, v5}, Lcom/metamoji/ui/common/UiPlainSlider;->setEnabled(Z)V

    .line 1451
    iget-object v1, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mPenRateSlider:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-virtual {v1}, Lcom/metamoji/ui/common/UiPlainSlider;->setNoValue()V

    .line 1452
    iget-object v1, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mPenRateSlider:Lcom/metamoji/ui/common/UiPlainSlider;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/common/UiPlainSlider;->setCurrentValue(I)V

    return-void

    .line 1457
    :cond_36
    iget-object v1, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mPenRateSlider:Lcom/metamoji/ui/common/UiPlainSlider;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/metamoji/ui/common/UiPlainSlider;->setEnabled(Z)V

    .line 1458
    iget-object v1, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mPenRateSlider:Lcom/metamoji/ui/common/UiPlainSlider;

    iget v2, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mCal2Rate:F

    mul-float/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/common/UiPlainSlider;->setCurrentValue(I)V

    return-void
.end method

.method private initWeightPreset()V
    .locals 4

    .line 968
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v0}, Lcom/metamoji/nt/share/NtPenStyle;->isType()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v0}, Lcom/metamoji/nt/share/NtPenStyle;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "calligraphy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 970
    sget-object v0, Lcom/metamoji/ui/dialog/PenSettings2;->mWeightPresetCalligraphy:[I

    iput-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mWeightPresets:[I

    goto :goto_1

    .line 972
    :cond_1
    sget-object v0, Lcom/metamoji/ui/dialog/PenSettings2;->mWeightPresetStandard:[I

    iput-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mWeightPresets:[I

    .line 976
    :goto_1
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/PenSettings2;->getDialogView()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 978
    sget-object v1, Lcom/metamoji/ui/dialog/PenSettings2;->mWeightPresetIds:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_2
    if-ltz v1, :cond_2

    .line 979
    sget-object v2, Lcom/metamoji/ui/dialog/PenSettings2;->mWeightPresetIds:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ui/common/UiButton;

    .line 980
    iget-object v3, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mWeightPresets:[I

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/metamoji/ui/common/UiButton;->setMainTitle(Ljava/lang/CharSequence;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private restoreInkColorsAndOpacity(Ljava/lang/String;)V
    .locals 8

    .line 1891
    const-string v0, "markerpen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/high16 v0, 0x437f0000    # 255.0f

    const/high16 v1, 0x42c80000    # 100.0f

    const/4 v2, 0x1

    const/4 v3, -0x1

    const-string v4, ""

    const/4 v5, 0x0

    if-eqz p1, :cond_5

    .line 1892
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mInkColorsMarker:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 1893
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mColorSelectionView:Lcom/metamoji/ui/common/UiColorSelectionView2;

    iget-object v3, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mInkColorsMarker:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/metamoji/ui/common/UiColorSelectionView2;->selectItemByColor(I)Z

    goto :goto_1

    .line 1897
    :cond_0
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mInkColorsNormal:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 1899
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mInkColorsNormal:Ljava/util/ArrayList;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result p1

    .line 1900
    iget-object v6, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mInkColorsNormal:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v6

    .line 1901
    iget-object v7, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mInkColorsNormal:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    .line 1902
    new-instance v7, Lcom/metamoji/ui/dialog/PenSettings2$38;

    invoke-direct {v7, p0, p1, v6, v5}, Lcom/metamoji/ui/dialog/PenSettings2$38;-><init>(Lcom/metamoji/ui/dialog/PenSettings2;III)V

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    .line 1904
    :goto_0
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mColorSelectionView:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-virtual {p1, v7}, Lcom/metamoji/ui/common/UiColorSelectionView2;->selectItemByColor(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1905
    iput-object v7, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mInkColorsMarker:Ljava/util/ArrayList;

    goto :goto_1

    :cond_2
    if-eqz v7, :cond_3

    .line 1908
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mColorSelectionView:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-virtual {p1}, Lcom/metamoji/ui/common/UiColorSelectionView2;->getSelectedGroup()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5, v4, v3}, Lcom/metamoji/ui/common/UiColorSelectionView2;->selectItem(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1911
    :cond_3
    :goto_1
    iget p1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mOpacityMarker:I

    if-ltz p1, :cond_4

    .line 1912
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mSliderOpacity:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-virtual {p1, v2}, Lcom/metamoji/ui/common/UiPlainSlider;->setEnabled(Z)V

    .line 1913
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mSliderOpacity:Lcom/metamoji/ui/common/UiPlainSlider;

    iget v2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mOpacityMarker:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    div-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/common/UiPlainSlider;->setCurrentValue(I)V

    .line 1914
    iget p1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mOpacityNormal:I

    if-gez p1, :cond_4

    .line 1915
    iget p1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mOpacityMarker:I

    iput p1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mOpacityNormal:I

    :cond_4
    return-void

    .line 1920
    :cond_5
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mInkColorsNormal:Ljava/util/ArrayList;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_6

    .line 1922
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mColorSelectionView:Lcom/metamoji/ui/common/UiColorSelectionView2;

    iget-object v3, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mInkColorsNormal:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Lcom/metamoji/ui/common/UiColorSelectionView2;->selectItemByColor(Ljava/util/List;)Z

    .line 1925
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mColorSelectionView:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-virtual {p1}, Lcom/metamoji/ui/common/UiColorSelectionView2;->setSelectedPage()V

    goto :goto_2

    .line 1928
    :cond_6
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mColorSelectionView:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-virtual {p1}, Lcom/metamoji/ui/common/UiColorSelectionView2;->getSelectedGroup()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6, v4, v3}, Lcom/metamoji/ui/common/UiColorSelectionView2;->selectItem(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1930
    :goto_2
    iget p1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mOpacityNormal:I

    .line 1935
    iget-object v3, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mSliderOpacity:Lcom/metamoji/ui/common/UiPlainSlider;

    if-ltz p1, :cond_7

    .line 1931
    invoke-virtual {v3, v2}, Lcom/metamoji/ui/common/UiPlainSlider;->setEnabled(Z)V

    .line 1932
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mSliderOpacity:Lcom/metamoji/ui/common/UiPlainSlider;

    iget v2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mOpacityNormal:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    div-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/common/UiPlainSlider;->setCurrentValue(I)V

    return-void

    .line 1935
    :cond_7
    invoke-virtual {v3, v5}, Lcom/metamoji/ui/common/UiPlainSlider;->setEnabled(Z)V

    .line 1936
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mSliderOpacity:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-virtual {p1}, Lcom/metamoji/ui/common/UiPlainSlider;->setNoValue()V

    .line 1937
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mSliderOpacity:Lcom/metamoji/ui/common/UiPlainSlider;

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/common/UiPlainSlider;->setCurrentValue(I)V

    return-void
.end method

.method private setShowPage(IZ)V
    .locals 2

    .line 845
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mColorSelectionView:Lcom/metamoji/ui/common/UiColorSelectionView2;

    if-nez v0, :cond_0

    return-void

    .line 847
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mBottle:[Lcom/metamoji/ui/common/UiImageRadioButton;

    aget-object v0, v0, p1

    if-eqz p2, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiImageRadioButton;->setVisibility(I)V

    .line 848
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mColorSelectionView:Lcom/metamoji/ui/common/UiColorSelectionView2;

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/ui/common/UiColorSelectionView2;->hidePage(IZ)V

    return-void
.end method

.method private setShowWheelPage()V
    .locals 3

    .line 853
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v0}, Lcom/metamoji/nt/share/NtPenStyle;->isInkType()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v0}, Lcom/metamoji/nt/share/NtPenStyle;->getInkType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "gradation"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x3

    .line 856
    invoke-direct {p0, v2, v0}, Lcom/metamoji/ui/dialog/PenSettings2;->setShowPage(IZ)V

    const/4 v2, 0x4

    xor-int/2addr v0, v1

    .line 857
    invoke-direct {p0, v2, v0}, Lcom/metamoji/ui/dialog/PenSettings2;->setShowPage(IZ)V

    return-void
.end method

.method private updateSample()V
    .locals 9

    .line 1985
    iget-boolean v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mDisableUpdate:Z

    if-nez v0, :cond_9

    .line 1986
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/PenSettings2;->updateValues()V

    .line 1987
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v0}, Lcom/metamoji/nt/share/NtPenStyle;->getLineWidth()F

    move-result v0

    const/high16 v1, 0x40c00000    # 6.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x41a00000    # 20.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    .line 1990
    iget-object v1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v1}, Lcom/metamoji/nt/share/NtPenStyle;->isType()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v1}, Lcom/metamoji/nt/share/NtPenStyle;->isLineColor()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v1}, Lcom/metamoji/nt/share/NtPenStyle;->isLineAlpha()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v1}, Lcom/metamoji/nt/share/NtPenStyle;->isLineWidth()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1992
    iget-object v1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v1}, Lcom/metamoji/nt/share/NtPenStyle;->getType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "standard"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v1}, Lcom/metamoji/nt/share/NtPenStyle;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v4, "markerpen"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1996
    :cond_0
    iget-object v1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v1}, Lcom/metamoji/nt/share/NtPenStyle;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v4, "calligraphy"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2002
    iget-object v4, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    if-eqz v1, :cond_1

    .line 1997
    invoke-virtual {v4}, Lcom/metamoji/nt/share/NtPenStyle;->isPenAngle()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v1}, Lcom/metamoji/nt/share/NtPenStyle;->isPenRate()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 2002
    :cond_1
    invoke-virtual {v4}, Lcom/metamoji/nt/share/NtPenStyle;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v4, "fountainpen"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2003
    iget-object v1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v1}, Lcom/metamoji/nt/share/NtPenStyle;->isBeginRun()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    :goto_0
    move v1, v3

    goto :goto_1

    :cond_3
    move v1, v2

    .line 2013
    :goto_1
    iget-object v4, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mDrawSample:Landroid/widget/ImageView;

    const/high16 v5, 0x40800000    # 4.0f

    const/high16 v6, 0x42a00000    # 80.0f

    if-eqz v1, :cond_4

    .line 2009
    iget-object v7, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v7}, Lcom/metamoji/nt/share/NtPenStyle;->getLineColor()I

    move-result v7

    iget-object v8, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v8}, Lcom/metamoji/nt/share/NtPenStyle;->getInkColors()Ljava/util/List;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/metamoji/nt/NtInkManager;->penPreviewBackgroundId(ILjava/util/List;)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2010
    iget-object v4, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-static {v4, v0, v6, v5, v2}, Lcom/metamoji/ui/HoverSelector;->CreatePenPreview(Lcom/metamoji/nt/share/NtPenStyle;FFFZ)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_2

    .line 2013
    :cond_4
    sget v2, Lcom/metamoji/noteanytime/R$drawable;->hoverselector_pen_preview_frame:I

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const/4 v2, 0x0

    .line 2015
    :goto_2
    iget-object v4, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mButtonPenDropper:Lcom/metamoji/ui/common/UiButton;

    if-eqz v4, :cond_5

    .line 2016
    invoke-virtual {v4, v1}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    .line 2018
    :cond_5
    iget-object v4, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mDrawSample:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2019
    iget-object v4, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mSampleBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_6

    .line 2020
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 2022
    :cond_6
    iput-object v2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mSampleBitmap:Landroid/graphics/Bitmap;

    .line 2024
    iget-object v2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mPenTypeRadioGroup:Lcom/metamoji/ui/common/UiRadioContoller;

    invoke-virtual {v2}, Lcom/metamoji/ui/common/UiRadioContoller;->getSelected()I

    move-result v2

    sget v4, Lcom/metamoji/noteanytime/R$id;->pentypeCal1:I

    if-ne v2, v4, :cond_9

    iget-object v2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mGroupPenCalligraphy:Lcom/metamoji/ui/common/UiRadioGroup;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/metamoji/ui/common/UiRadioGroup;->getCurrentButtonIndex()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_9

    if-eqz v1, :cond_7

    .line 2025
    iget-object v1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    goto :goto_3

    :cond_7
    iget-object v1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mDefaultSampleStyle:Lcom/metamoji/nt/share/NtPenStyle;

    :goto_3
    invoke-static {v1, v0, v6, v5, v3}, Lcom/metamoji/ui/HoverSelector;->CreatePenPreview(Lcom/metamoji/nt/share/NtPenStyle;FFFZ)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 2027
    iget-object v1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mCalligraphySampleAngle:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2028
    iget-object v1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mCalligraphySampleRate:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2029
    iget-object v1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mCalligraphyBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_8

    .line 2030
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 2032
    :cond_8
    iput-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mCalligraphyBitmap:Landroid/graphics/Bitmap;

    :cond_9
    return-void
.end method

.method private updateStyleView(Lcom/metamoji/ui/common/UiButton;Z)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 861
    :goto_0
    iget-object v2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyleButtonList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 862
    iget-object v2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyleButtonList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ui/common/UiButton;

    .line 863
    invoke-virtual {v2}, Lcom/metamoji/ui/common/UiButton;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    .line 864
    invoke-virtual {v2, v0}, Lcom/metamoji/ui/common/UiButton;->setSelected(Z)V

    goto :goto_1

    .line 867
    :cond_0
    iget-object v3, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyleViewList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-ne v2, p1, :cond_2

    if-eqz p2, :cond_1

    move v4, v0

    .line 869
    :cond_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 870
    invoke-virtual {v2, p2}, Lcom/metamoji/ui/common/UiButton;->setSelected(Z)V

    goto :goto_1

    .line 873
    :cond_2
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 874
    invoke-virtual {v2, v0}, Lcom/metamoji/ui/common/UiButton;->setSelected(Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 878
    :cond_3
    iget-object v1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v1, :cond_5

    if-eqz p1, :cond_5

    if-eqz p2, :cond_4

    .line 879
    invoke-virtual {p1}, Lcom/metamoji/ui/common/UiButton;->getTop()I

    move-result v0

    .line 880
    :cond_4
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    .line 881
    new-instance p2, Lcom/metamoji/ui/dialog/PenSettings2$25;

    invoke-direct {p2, p0, p1, v0}, Lcom/metamoji/ui/dialog/PenSettings2$25;-><init>(Lcom/metamoji/ui/dialog/PenSettings2;Lcom/metamoji/cm/CmTaskManager;I)V

    invoke-virtual {p1, p2}, Lcom/metamoji/cm/CmTaskManager;->requestRunOnBackground(Ljava/lang/Runnable;)Ljava/util/concurrent/ScheduledFuture;

    :cond_5
    return-void
.end method

.method private updateValues()V
    .locals 3

    .line 1788
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/PenSettings2;->getDialogView()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1793
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mColorSelectionView:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiColorSelectionView2;->isSelectColorAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1794
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1795
    iget-object v1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mColorSelectionView:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-virtual {v1}, Lcom/metamoji/ui/common/UiColorSelectionView2;->getSelectedColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1796
    iget-object v1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mColorSelectionView:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-virtual {v1}, Lcom/metamoji/ui/common/UiColorSelectionView2;->isGradationColorSelected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1797
    iget-object v1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mColorSelectionView:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-virtual {v1}, Lcom/metamoji/ui/common/UiColorSelectionView2;->getSelectedColor2()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1798
    iget-object v1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    const-string v2, "gradation"

    invoke-virtual {v1, v2}, Lcom/metamoji/nt/share/NtPenStyle;->setInkType(Ljava/lang/String;)V

    goto :goto_0

    .line 1800
    :cond_1
    iget-object v1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    const-string/jumbo v2, "standard"

    invoke-virtual {v1, v2}, Lcom/metamoji/nt/share/NtPenStyle;->setInkType(Ljava/lang/String;)V

    .line 1802
    :goto_0
    iget-object v1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v1, v0}, Lcom/metamoji/nt/share/NtPenStyle;->setInkColors(Ljava/util/List;)V

    .line 1808
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/share/NtPenStyle;->setInkId(Ljava/lang/String;)V

    .line 1810
    :cond_2
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mColorSelectionView:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiColorSelectionView2;->getCurrentPage()I

    move-result v0

    iput v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mColorViewCurrentPage:I

    .line 1820
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mSliderWeight:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiPlainSlider;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1821
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    iget-object v1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mSliderWeight:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-virtual {v1}, Lcom/metamoji/ui/common/UiPlainSlider;->getCurrentValue()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40a00000    # 5.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/share/NtPenStyle;->setLineWidth(F)V

    .line 1823
    :cond_3
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mSliderOpacity:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiPlainSlider;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1824
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    iget-object v1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mSliderOpacity:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-virtual {v1}, Lcom/metamoji/ui/common/UiPlainSlider;->getCurrentValue()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/share/NtPenStyle;->setLineAlpha(F)V

    .line 1828
    :cond_4
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mPenTypeRadioGroup:Lcom/metamoji/ui/common/UiRadioContoller;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiRadioContoller;->getSelected()I

    move-result v0

    .line 1829
    invoke-direct {p0, v0}, Lcom/metamoji/ui/dialog/PenSettings2;->updateValuesSub(I)V

    return-void
.end method

.method private updateValuesSub(I)V
    .locals 10

    .line 1501
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/PenSettings2;->getResources()Landroid/content/res/Resources;

    .line 1502
    sget v0, Lcom/metamoji/noteanytime/R$id;->pentypeStd1:I

    const/4 v1, 0x2

    const/high16 v2, 0x42c80000    # 100.0f

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0xb4

    const/16 v6, 0x8

    if-ne p1, v0, :cond_6

    .line 1503
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mGroupPenStandard:Lcom/metamoji/ui/common/UiRadioGroup;

    const-string/jumbo v0, "standard"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/metamoji/ui/common/UiRadioGroup;->getCurrentButtonIndex()I

    move-result p1

    if-ne p1, v3, :cond_0

    .line 1504
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyleName:Lcom/metamoji/ui/common/UiTextView;

    sget v7, Lcom/metamoji/noteanytime/R$string;->PenSettings_Dash_Title:I

    invoke-virtual {p1, v7}, Lcom/metamoji/ui/common/UiTextView;->setText(I)V

    .line 1505
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mDefaultStd2:Lcom/metamoji/nt/share/NtPenStyle;

    const-string v7, "com.metamoji.pen.builtin.standard2"

    invoke-virtual {p0, v7, p1}, Lcom/metamoji/ui/dialog/PenSettings2;->getDefaultStyle(Ljava/lang/String;Lcom/metamoji/nt/share/NtPenStyle;)Lcom/metamoji/nt/share/NtPenStyle;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mDefaultStd2:Lcom/metamoji/nt/share/NtPenStyle;

    .line 1506
    iget-object v8, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v8, v0}, Lcom/metamoji/nt/share/NtPenStyle;->setType(Ljava/lang/String;)V

    .line 1507
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v0, v7}, Lcom/metamoji/nt/share/NtPenStyle;->setPenId(Ljava/lang/String;)V

    goto :goto_0

    .line 1509
    :cond_0
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyleName:Lcom/metamoji/ui/common/UiTextView;

    sget v7, Lcom/metamoji/noteanytime/R$string;->PenSettings_Mapping_Title:I

    invoke-virtual {p1, v7}, Lcom/metamoji/ui/common/UiTextView;->setText(I)V

    .line 1510
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mDefaultStd1:Lcom/metamoji/nt/share/NtPenStyle;

    const-string v7, "com.metamoji.pen.builtin.standard1"

    invoke-virtual {p0, v7, p1}, Lcom/metamoji/ui/dialog/PenSettings2;->getDefaultStyle(Ljava/lang/String;Lcom/metamoji/nt/share/NtPenStyle;)Lcom/metamoji/nt/share/NtPenStyle;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mDefaultStd1:Lcom/metamoji/nt/share/NtPenStyle;

    .line 1511
    iget-object v8, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v8, v0}, Lcom/metamoji/nt/share/NtPenStyle;->setType(Ljava/lang/String;)V

    .line 1512
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v0, v7}, Lcom/metamoji/nt/share/NtPenStyle;->setPenId(Ljava/lang/String;)V

    :goto_0
    if-eqz p1, :cond_1

    .line 1515
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {p1}, Lcom/metamoji/nt/share/NtPenStyle;->getPenAngle()F

    move-result v7

    invoke-virtual {v0, v7}, Lcom/metamoji/nt/share/NtPenStyle;->setPenAngle(F)V

    .line 1516
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {p1}, Lcom/metamoji/nt/share/NtPenStyle;->getPenRate()F

    move-result v7

    invoke-virtual {v0, v7}, Lcom/metamoji/nt/share/NtPenStyle;->setPenRate(F)V

    .line 1517
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {p1}, Lcom/metamoji/nt/share/NtPenStyle;->getLineDash()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/metamoji/nt/share/NtPenStyle;->setLineDash(Ljava/util/List;)V

    .line 1519
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mButtonPenAngle:Lcom/metamoji/ui/common/UiButton;

    if-eqz v0, :cond_2

    .line 1520
    invoke-virtual {v0, v6}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    .line 1522
    :cond_2
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStylePenAngle:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 1523
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1525
    :cond_3
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mButtonPenRate:Lcom/metamoji/ui/common/UiButton;

    if-eqz v0, :cond_4

    .line 1526
    invoke-virtual {v0, v6}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    .line 1528
    :cond_4
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStylePenRate:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 1529
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1531
    :cond_5
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mButtonDrawShape:Lcom/metamoji/ui/common/UiButton;

    if-eqz v0, :cond_2a

    .line 1534
    invoke-virtual {v0, v6}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    goto/16 :goto_6

    .line 1539
    :cond_6
    sget v0, Lcom/metamoji/noteanytime/R$id;->pentypeMrk1:I

    if-ne p1, v0, :cond_c

    .line 1540
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyleName:Lcom/metamoji/ui/common/UiTextView;

    sget v0, Lcom/metamoji/noteanytime/R$string;->PenSettings_Marker_Title:I

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/common/UiTextView;->setText(I)V

    .line 1541
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mDefaultMrk1:Lcom/metamoji/nt/share/NtPenStyle;

    const-string v0, "com.metamoji.pen.buildin.markerpen"

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/ui/dialog/PenSettings2;->getDefaultStyle(Ljava/lang/String;Lcom/metamoji/nt/share/NtPenStyle;)Lcom/metamoji/nt/share/NtPenStyle;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mDefaultMrk1:Lcom/metamoji/nt/share/NtPenStyle;

    .line 1542
    iget-object v7, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    const-string v8, "markerpen"

    invoke-virtual {v7, v8}, Lcom/metamoji/nt/share/NtPenStyle;->setType(Ljava/lang/String;)V

    .line 1543
    iget-object v7, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v7, v0}, Lcom/metamoji/nt/share/NtPenStyle;->setPenId(Ljava/lang/String;)V

    if-eqz p1, :cond_7

    .line 1545
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {p1}, Lcom/metamoji/nt/share/NtPenStyle;->getPenAngle()F

    move-result v7

    invoke-virtual {v0, v7}, Lcom/metamoji/nt/share/NtPenStyle;->setPenAngle(F)V

    .line 1546
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {p1}, Lcom/metamoji/nt/share/NtPenStyle;->getPenRate()F

    move-result v7

    invoke-virtual {v0, v7}, Lcom/metamoji/nt/share/NtPenStyle;->setPenRate(F)V

    .line 1547
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {p1}, Lcom/metamoji/nt/share/NtPenStyle;->getLineDash()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/metamoji/nt/share/NtPenStyle;->setLineDash(Ljava/util/List;)V

    .line 1549
    :cond_7
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mButtonPenAngle:Lcom/metamoji/ui/common/UiButton;

    if-eqz v0, :cond_8

    .line 1550
    invoke-virtual {v0, v6}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    .line 1552
    :cond_8
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStylePenAngle:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 1553
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1555
    :cond_9
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mButtonPenRate:Lcom/metamoji/ui/common/UiButton;

    if-eqz v0, :cond_a

    .line 1556
    invoke-virtual {v0, v6}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    .line 1558
    :cond_a
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStylePenRate:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 1559
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1561
    :cond_b
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mButtonDrawShape:Lcom/metamoji/ui/common/UiButton;

    if-eqz v0, :cond_2a

    .line 1564
    invoke-virtual {v0, v6}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    goto/16 :goto_6

    .line 1569
    :cond_c
    sget v0, Lcom/metamoji/noteanytime/R$id;->pentypeCal1:I

    if-ne p1, v0, :cond_1b

    .line 1570
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyleName:Lcom/metamoji/ui/common/UiTextView;

    sget v0, Lcom/metamoji/noteanytime/R$string;->PenSettings_Calligraphy_Title:I

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/common/UiTextView;->setText(I)V

    .line 1571
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    const-string v0, "calligraphy"

    invoke-virtual {p1, v0}, Lcom/metamoji/nt/share/NtPenStyle;->setType(Ljava/lang/String;)V

    .line 1572
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mGroupPenCalligraphy:Lcom/metamoji/ui/common/UiRadioGroup;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/metamoji/ui/common/UiRadioGroup;->getCurrentButtonIndex()I

    move-result p1

    goto :goto_1

    :cond_d
    move p1, v4

    .line 1573
    :goto_1
    const-string v0, "com.metamoji.pen.builtin.calligraphy2"

    if-ne p1, v1, :cond_13

    .line 1574
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    const-string v7, "com.metamoji.pen.calligraphy.plus"

    invoke-virtual {p1, v7}, Lcom/metamoji/nt/share/NtPenStyle;->setPenId(Ljava/lang/String;)V

    .line 1575
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mDefaultCal2:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/ui/dialog/PenSettings2;->getDefaultStyle(Ljava/lang/String;Lcom/metamoji/nt/share/NtPenStyle;)Lcom/metamoji/nt/share/NtPenStyle;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mDefaultCal2:Lcom/metamoji/nt/share/NtPenStyle;

    .line 1577
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mAngleSlider:Lcom/metamoji/ui/common/UiAngleSlider;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiAngleSlider;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1578
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mAngleSlider:Lcom/metamoji/ui/common/UiAngleSlider;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiAngleSlider;->getAngleDegree()I

    move-result v0

    iget-object v7, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mAngleSlider:Lcom/metamoji/ui/common/UiAngleSlider;

    if-lt v0, v5, :cond_e

    invoke-virtual {v7}, Lcom/metamoji/ui/common/UiAngleSlider;->getAngleDegree()I

    move-result v0

    sub-int/2addr v0, v5

    goto :goto_2

    :cond_e
    invoke-virtual {v7}, Lcom/metamoji/ui/common/UiAngleSlider;->getAngleDegree()I

    move-result v0

    add-int/2addr v0, v5

    :goto_2
    const/16 v7, 0x167

    if-le v0, v7, :cond_10

    move v0, v7

    goto :goto_3

    :cond_f
    const/4 v0, -0x1

    .line 1583
    :cond_10
    :goto_3
    iget-object v7, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    int-to-float v0, v0

    invoke-virtual {v7, v0}, Lcom/metamoji/nt/share/NtPenStyle;->setPenAngle(F)V

    .line 1587
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    iget-object v7, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mPenRateSlider:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-virtual {v7}, Lcom/metamoji/ui/common/UiPlainSlider;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_11

    iget-object v7, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mPenRateSlider:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-virtual {v7}, Lcom/metamoji/ui/common/UiPlainSlider;->getCurrentValue()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v2

    goto :goto_4

    :cond_11
    const/high16 v7, -0x40800000    # -1.0f

    :goto_4
    invoke-virtual {v0, v7}, Lcom/metamoji/nt/share/NtPenStyle;->setPenRate(F)V

    .line 1588
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    iget-object v7, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mDefaultCal2:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v7}, Lcom/metamoji/nt/share/NtPenStyle;->getLineDash()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/metamoji/nt/share/NtPenStyle;->setLineDash(Ljava/util/List;)V

    .line 1589
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mButtonPenAngle:Lcom/metamoji/ui/common/UiButton;

    if-eqz v0, :cond_12

    .line 1590
    invoke-virtual {v0, v4}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    .line 1592
    :cond_12
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mButtonPenRate:Lcom/metamoji/ui/common/UiButton;

    if-eqz v0, :cond_19

    .line 1593
    invoke-virtual {v0, v4}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    goto :goto_5

    .line 1610
    :cond_13
    iget-object v7, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    if-ne p1, v3, :cond_16

    .line 1596
    invoke-virtual {v7, v0}, Lcom/metamoji/nt/share/NtPenStyle;->setPenId(Ljava/lang/String;)V

    .line 1597
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mDefaultCal1B:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/ui/dialog/PenSettings2;->getDefaultStyle(Ljava/lang/String;Lcom/metamoji/nt/share/NtPenStyle;)Lcom/metamoji/nt/share/NtPenStyle;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mDefaultCal1B:Lcom/metamoji/nt/share/NtPenStyle;

    if-eqz p1, :cond_14

    .line 1599
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {p1}, Lcom/metamoji/nt/share/NtPenStyle;->getPenAngle()F

    move-result v7

    invoke-virtual {v0, v7}, Lcom/metamoji/nt/share/NtPenStyle;->setPenAngle(F)V

    .line 1600
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {p1}, Lcom/metamoji/nt/share/NtPenStyle;->getPenRate()F

    move-result v7

    invoke-virtual {v0, v7}, Lcom/metamoji/nt/share/NtPenStyle;->setPenRate(F)V

    .line 1601
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {p1}, Lcom/metamoji/nt/share/NtPenStyle;->getLineDash()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/metamoji/nt/share/NtPenStyle;->setLineDash(Ljava/util/List;)V

    .line 1603
    :cond_14
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mButtonPenAngle:Lcom/metamoji/ui/common/UiButton;

    if-eqz v0, :cond_15

    .line 1604
    invoke-virtual {v0, v6}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    .line 1606
    :cond_15
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mButtonPenRate:Lcom/metamoji/ui/common/UiButton;

    if-eqz v0, :cond_19

    .line 1607
    invoke-virtual {v0, v6}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    goto :goto_5

    .line 1610
    :cond_16
    const-string p1, "com.metamoji.pen.builtin.calligraphy1"

    invoke-virtual {v7, p1}, Lcom/metamoji/nt/share/NtPenStyle;->setPenId(Ljava/lang/String;)V

    .line 1611
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mDefaultCal1A:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/ui/dialog/PenSettings2;->getDefaultStyle(Ljava/lang/String;Lcom/metamoji/nt/share/NtPenStyle;)Lcom/metamoji/nt/share/NtPenStyle;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mDefaultCal1A:Lcom/metamoji/nt/share/NtPenStyle;

    if-eqz p1, :cond_17

    .line 1613
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {p1}, Lcom/metamoji/nt/share/NtPenStyle;->getPenAngle()F

    move-result v7

    invoke-virtual {v0, v7}, Lcom/metamoji/nt/share/NtPenStyle;->setPenAngle(F)V

    .line 1614
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {p1}, Lcom/metamoji/nt/share/NtPenStyle;->getPenRate()F

    move-result v7

    invoke-virtual {v0, v7}, Lcom/metamoji/nt/share/NtPenStyle;->setPenRate(F)V

    .line 1615
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {p1}, Lcom/metamoji/nt/share/NtPenStyle;->getLineDash()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/metamoji/nt/share/NtPenStyle;->setLineDash(Ljava/util/List;)V

    .line 1617
    :cond_17
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mButtonPenAngle:Lcom/metamoji/ui/common/UiButton;

    if-eqz v0, :cond_18

    .line 1618
    invoke-virtual {v0, v6}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    .line 1620
    :cond_18
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mButtonPenRate:Lcom/metamoji/ui/common/UiButton;

    if-eqz v0, :cond_19

    .line 1621
    invoke-virtual {v0, v6}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    .line 1624
    :cond_19
    :goto_5
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mButtonDrawShape:Lcom/metamoji/ui/common/UiButton;

    if-eqz v0, :cond_1a

    .line 1625
    invoke-virtual {v0, v6}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    .line 1627
    :cond_1a
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/PenSettings2;->setShowWheelPage()V

    goto/16 :goto_6

    .line 1628
    :cond_1b
    sget v0, Lcom/metamoji/noteanytime/R$id;->pentypeFnt1:I

    const-string v7, "fountainpen"

    if-ne p1, v0, :cond_22

    .line 1629
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyleName:Lcom/metamoji/ui/common/UiTextView;

    sget v0, Lcom/metamoji/noteanytime/R$string;->PenSettings_Fountain_Title:I

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/common/UiTextView;->setText(I)V

    .line 1630
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {p1, v7}, Lcom/metamoji/nt/share/NtPenStyle;->setType(Ljava/lang/String;)V

    .line 1645
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mDefaultFntS:Lcom/metamoji/nt/share/NtPenStyle;

    const-string v0, "com.metamoji.pen.builtin.fountainpen3"

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/ui/dialog/PenSettings2;->getDefaultStyle(Ljava/lang/String;Lcom/metamoji/nt/share/NtPenStyle;)Lcom/metamoji/nt/share/NtPenStyle;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mDefaultFntS:Lcom/metamoji/nt/share/NtPenStyle;

    .line 1646
    iget-object v7, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v7, v0}, Lcom/metamoji/nt/share/NtPenStyle;->setPenId(Ljava/lang/String;)V

    if-eqz p1, :cond_1c

    .line 1648
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {p1}, Lcom/metamoji/nt/share/NtPenStyle;->getPenAngle()F

    move-result v7

    invoke-virtual {v0, v7}, Lcom/metamoji/nt/share/NtPenStyle;->setPenAngle(F)V

    .line 1649
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {p1}, Lcom/metamoji/nt/share/NtPenStyle;->getPenRate()F

    move-result v7

    invoke-virtual {v0, v7}, Lcom/metamoji/nt/share/NtPenStyle;->setPenRate(F)V

    .line 1650
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {p1}, Lcom/metamoji/nt/share/NtPenStyle;->getLineDash()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/metamoji/nt/share/NtPenStyle;->setLineDash(Ljava/util/List;)V

    .line 1652
    :cond_1c
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mButtonPenAngle:Lcom/metamoji/ui/common/UiButton;

    if-eqz v0, :cond_1d

    .line 1653
    invoke-virtual {v0, v6}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    .line 1655
    :cond_1d
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStylePenAngle:Landroid/view/View;

    if-eqz v0, :cond_1e

    .line 1656
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1658
    :cond_1e
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mButtonPenRate:Lcom/metamoji/ui/common/UiButton;

    if-eqz v0, :cond_1f

    .line 1659
    invoke-virtual {v0, v6}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    .line 1661
    :cond_1f
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStylePenRate:Landroid/view/View;

    if-eqz v0, :cond_20

    .line 1662
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1664
    :cond_20
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mButtonDrawShape:Lcom/metamoji/ui/common/UiButton;

    if-eqz v0, :cond_21

    .line 1665
    invoke-virtual {v0, v6}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    .line 1667
    :cond_21
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/PenSettings2;->setShowWheelPage()V

    goto :goto_6

    .line 1668
    :cond_22
    sget v0, Lcom/metamoji/noteanytime/R$id;->pentypeBrs1:I

    .line 1709
    iget-object v8, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyleName:Lcom/metamoji/ui/common/UiTextView;

    if-ne p1, v0, :cond_29

    .line 1669
    sget p1, Lcom/metamoji/noteanytime/R$string;->PenSettings_Brush_Title:I

    invoke-virtual {v8, p1}, Lcom/metamoji/ui/common/UiTextView;->setText(I)V

    .line 1670
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {p1, v7}, Lcom/metamoji/nt/share/NtPenStyle;->setType(Ljava/lang/String;)V

    .line 1685
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mDefaultFntD:Lcom/metamoji/nt/share/NtPenStyle;

    const-string v0, "com.metamoji.pen.builtin.fountainpen4"

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/ui/dialog/PenSettings2;->getDefaultStyle(Ljava/lang/String;Lcom/metamoji/nt/share/NtPenStyle;)Lcom/metamoji/nt/share/NtPenStyle;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mDefaultFntD:Lcom/metamoji/nt/share/NtPenStyle;

    .line 1686
    iget-object v7, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v7, v0}, Lcom/metamoji/nt/share/NtPenStyle;->setPenId(Ljava/lang/String;)V

    if-eqz p1, :cond_23

    .line 1688
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {p1}, Lcom/metamoji/nt/share/NtPenStyle;->getPenAngle()F

    move-result v7

    invoke-virtual {v0, v7}, Lcom/metamoji/nt/share/NtPenStyle;->setPenAngle(F)V

    .line 1689
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {p1}, Lcom/metamoji/nt/share/NtPenStyle;->getPenRate()F

    move-result v7

    invoke-virtual {v0, v7}, Lcom/metamoji/nt/share/NtPenStyle;->setPenRate(F)V

    .line 1690
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {p1}, Lcom/metamoji/nt/share/NtPenStyle;->getLineDash()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/metamoji/nt/share/NtPenStyle;->setLineDash(Ljava/util/List;)V

    .line 1692
    :cond_23
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mButtonPenAngle:Lcom/metamoji/ui/common/UiButton;

    if-eqz v0, :cond_24

    .line 1693
    invoke-virtual {v0, v6}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    .line 1695
    :cond_24
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStylePenAngle:Landroid/view/View;

    if-eqz v0, :cond_25

    .line 1696
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1698
    :cond_25
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mButtonPenRate:Lcom/metamoji/ui/common/UiButton;

    if-eqz v0, :cond_26

    .line 1699
    invoke-virtual {v0, v6}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    .line 1701
    :cond_26
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStylePenRate:Landroid/view/View;

    if-eqz v0, :cond_27

    .line 1702
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1704
    :cond_27
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mButtonDrawShape:Lcom/metamoji/ui/common/UiButton;

    if-eqz v0, :cond_28

    .line 1705
    invoke-virtual {v0, v6}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    .line 1707
    :cond_28
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/PenSettings2;->setShowWheelPage()V

    goto :goto_6

    .line 1709
    :cond_29
    sget p1, Lcom/metamoji/noteanytime/R$string;->PenSettings_Style:I

    invoke-virtual {v8, p1}, Lcom/metamoji/ui/common/UiTextView;->setText(I)V

    const/4 p1, 0x0

    :cond_2a
    :goto_6
    if-eqz p1, :cond_2b

    .line 1711
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {p1}, Lcom/metamoji/nt/share/NtPenStyle;->getTrans()F

    move-result v6

    invoke-virtual {v0, v6}, Lcom/metamoji/nt/share/NtPenStyle;->setTrans(F)V

    .line 1713
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {p1}, Lcom/metamoji/nt/share/NtPenStyle;->getBeginStay()F

    move-result v6

    invoke-virtual {v0, v6}, Lcom/metamoji/nt/share/NtPenStyle;->setBeginStay(F)V

    .line 1714
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {p1}, Lcom/metamoji/nt/share/NtPenStyle;->getBeginStayRate()F

    move-result v6

    invoke-virtual {v0, v6}, Lcom/metamoji/nt/share/NtPenStyle;->setBeginStayRate(F)V

    .line 1715
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {p1}, Lcom/metamoji/nt/share/NtPenStyle;->getBeginStayDelta()F

    move-result v6

    invoke-virtual {v0, v6}, Lcom/metamoji/nt/share/NtPenStyle;->setBeginStayDelta(F)V

    .line 1716
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {p1}, Lcom/metamoji/nt/share/NtPenStyle;->getBeginRun()F

    move-result v6

    invoke-virtual {v0, v6}, Lcom/metamoji/nt/share/NtPenStyle;->setBeginRun(F)V

    .line 1717
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {p1}, Lcom/metamoji/nt/share/NtPenStyle;->getBeginRunRate()F

    move-result v6

    invoke-virtual {v0, v6}, Lcom/metamoji/nt/share/NtPenStyle;->setBeginRunRate(F)V

    .line 1718
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {p1}, Lcom/metamoji/nt/share/NtPenStyle;->getBeginRunDelta()F

    move-result v6

    invoke-virtual {v0, v6}, Lcom/metamoji/nt/share/NtPenStyle;->setBeginRunDelta(F)V

    .line 1720
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {p1}, Lcom/metamoji/nt/share/NtPenStyle;->getEndStay()F

    move-result v6

    invoke-virtual {v0, v6}, Lcom/metamoji/nt/share/NtPenStyle;->setEndStay(F)V

    .line 1721
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {p1}, Lcom/metamoji/nt/share/NtPenStyle;->getEndStayRate()F

    move-result v6

    invoke-virtual {v0, v6}, Lcom/metamoji/nt/share/NtPenStyle;->setEndStayRate(F)V

    .line 1722
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {p1}, Lcom/metamoji/nt/share/NtPenStyle;->getEndStayDelta()F

    move-result v6

    invoke-virtual {v0, v6}, Lcom/metamoji/nt/share/NtPenStyle;->setEndStayDelta(F)V

    .line 1723
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {p1}, Lcom/metamoji/nt/share/NtPenStyle;->getEndRun()F

    move-result v6

    invoke-virtual {v0, v6}, Lcom/metamoji/nt/share/NtPenStyle;->setEndRun(F)V

    .line 1724
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {p1}, Lcom/metamoji/nt/share/NtPenStyle;->getEndRunRate()F

    move-result v6

    invoke-virtual {v0, v6}, Lcom/metamoji/nt/share/NtPenStyle;->setEndRunRate(F)V

    .line 1725
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {p1}, Lcom/metamoji/nt/share/NtPenStyle;->getEndRunDelta()F

    move-result v6

    invoke-virtual {v0, v6}, Lcom/metamoji/nt/share/NtPenStyle;->setEndRunDelta(F)V

    .line 1727
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {p1}, Lcom/metamoji/nt/share/NtPenStyle;->getTailStay()F

    move-result v6

    invoke-virtual {v0, v6}, Lcom/metamoji/nt/share/NtPenStyle;->setTailStay(F)V

    .line 1728
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {p1}, Lcom/metamoji/nt/share/NtPenStyle;->getTailStayRate()F

    move-result v6

    invoke-virtual {v0, v6}, Lcom/metamoji/nt/share/NtPenStyle;->setTailStayRate(F)V

    .line 1729
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {p1}, Lcom/metamoji/nt/share/NtPenStyle;->getTailStayDelta()F

    move-result v6

    invoke-virtual {v0, v6}, Lcom/metamoji/nt/share/NtPenStyle;->setTailStayDelta(F)V

    .line 1730
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {p1}, Lcom/metamoji/nt/share/NtPenStyle;->getTailRun()F

    move-result v6

    invoke-virtual {v0, v6}, Lcom/metamoji/nt/share/NtPenStyle;->setTailRun(F)V

    .line 1731
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {p1}, Lcom/metamoji/nt/share/NtPenStyle;->getTailRunRate()F

    move-result v6

    invoke-virtual {v0, v6}, Lcom/metamoji/nt/share/NtPenStyle;->setTailRunRate(F)V

    .line 1732
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {p1}, Lcom/metamoji/nt/share/NtPenStyle;->getTailRunDelta()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/metamoji/nt/share/NtPenStyle;->setTailRunDelta(F)V

    .line 1734
    :cond_2b
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mButtonInkColor:Lcom/metamoji/ui/common/UiButton;

    if-eqz p1, :cond_2d

    .line 1736
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {p1}, Lcom/metamoji/nt/share/NtPenStyle;->getInkColors()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2c

    .line 1737
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_2c

    .line 1738
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mButtonInkColor:Lcom/metamoji/ui/common/UiButton;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/ui/common/UiButton;->setInkColor(II)V

    goto :goto_7

    .line 1739
    :cond_2c
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {p1}, Lcom/metamoji/nt/share/NtPenStyle;->isLineColor()Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 1740
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mButtonInkColor:Lcom/metamoji/ui/common/UiButton;

    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v0}, Lcom/metamoji/nt/share/NtPenStyle;->getLineColor()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/common/UiButton;->setInkColor(I)V

    .line 1743
    :cond_2d
    :goto_7
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mButtonOpacity:Lcom/metamoji/ui/common/UiButton;

    const-string v0, "%d%%"

    const/4 v1, 0x0

    const-string v3, ""

    if-eqz p1, :cond_2f

    .line 1746
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    iget p1, p1, Lcom/metamoji/nt/share/NtPenStyle;->lineAlpha:F

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_2e

    .line 1747
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    iget-object v4, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    iget v4, v4, Lcom/metamoji/nt/share/NtPenStyle;->lineAlpha:F

    mul-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {p1, v0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_8

    :cond_2e
    move-object p1, v3

    .line 1749
    :goto_8
    iget-object v4, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mButtonOpacity:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {v4, p1}, Lcom/metamoji/ui/common/UiButton;->setSubTitle(Ljava/lang/CharSequence;)V

    .line 1751
    :cond_2f
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mButtonThickness:Lcom/metamoji/ui/common/UiButton;

    if-eqz p1, :cond_31

    .line 1754
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    iget p1, p1, Lcom/metamoji/nt/share/NtPenStyle;->lineWidth:F

    float-to-double v6, p1

    const-wide v8, 0x3fc999999999999aL    # 0.2

    cmpl-double p1, v6, v8

    if-ltz p1, :cond_30

    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    iget p1, p1, Lcom/metamoji/nt/share/NtPenStyle;->lineWidth:F

    const/high16 v4, 0x41a00000    # 20.0f

    cmpg-float p1, p1, v4

    if-gtz p1, :cond_30

    .line 1755
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    iget-object v4, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    iget v4, v4, Lcom/metamoji/nt/share/NtPenStyle;->lineWidth:F

    const/high16 v6, 0x40a00000    # 5.0f

    mul-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v6, "%d"

    invoke-static {p1, v6, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_9

    :cond_30
    move-object p1, v3

    .line 1757
    :goto_9
    iget-object v4, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mButtonThickness:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {v4, p1}, Lcom/metamoji/ui/common/UiButton;->setSubTitle(Ljava/lang/CharSequence;)V

    .line 1759
    :cond_31
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mButtonPenAngle:Lcom/metamoji/ui/common/UiButton;

    if-eqz p1, :cond_34

    .line 1762
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    iget p1, p1, Lcom/metamoji/nt/share/NtPenStyle;->penAngle:F

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_33

    .line 1763
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    iget p1, p1, Lcom/metamoji/nt/share/NtPenStyle;->penAngle:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    if-lt p1, v5, :cond_32

    sub-int/2addr p1, v5

    goto :goto_a

    :cond_32
    add-int/2addr p1, v5

    .line 1765
    :goto_a
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v5, "%d\u00b0"

    invoke-static {v4, v5, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_b

    :cond_33
    move-object p1, v3

    .line 1772
    :goto_b
    iget-object v4, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mButtonPenAngle:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {v4, p1}, Lcom/metamoji/ui/common/UiButton;->setSubTitle(Ljava/lang/CharSequence;)V

    .line 1774
    :cond_34
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mButtonPenRate:Lcom/metamoji/ui/common/UiButton;

    if-eqz p1, :cond_36

    .line 1777
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    iget p1, p1, Lcom/metamoji/nt/share/NtPenStyle;->penRate:F

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_35

    .line 1778
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    iget-object v1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    iget v1, v1, Lcom/metamoji/nt/share/NtPenStyle;->penRate:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1780
    :cond_35
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mButtonPenRate:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {p1, v3}, Lcom/metamoji/ui/common/UiButton;->setSubTitle(Ljava/lang/CharSequence;)V

    :cond_36
    return-void
.end method


# virtual methods
.method public clearAngleManipulationTimer()Z
    .locals 1

    .line 948
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mAngleManipulationTimer:Lcom/metamoji/cm/UiTimer;

    if-eqz v0, :cond_0

    .line 949
    invoke-virtual {v0}, Lcom/metamoji/cm/UiTimer;->cancel()V

    const/4 v0, 0x0

    .line 950
    iput-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mAngleManipulationTimer:Lcom/metamoji/cm/UiTimer;

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method getDefaultStyle(Ljava/lang/String;Lcom/metamoji/nt/share/NtPenStyle;)Lcom/metamoji/nt/share/NtPenStyle;
    .locals 0

    if-eqz p2, :cond_0

    return-object p2

    .line 1483
    :cond_0
    iget-object p2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mSettings:Lcom/metamoji/nt/NtSystemPenSettings;

    invoke-virtual {p2, p1}, Lcom/metamoji/nt/NtSystemPenSettings;->getPenTemplateById(Ljava/lang/String;)Lcom/metamoji/nt/NtPenTemplate;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 1487
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/nt/NtPenTemplate;->getDefaultStyle()Lcom/metamoji/nt/share/NtPenStyle;

    move-result-object p1

    return-object p1
.end method

.method public getPenStyle()Lcom/metamoji/nt/share/NtPenStyle;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    return-object v0
.end method

.method public onCancel(Landroid/view/View;)V
    .locals 0

    .line 1978
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onCancel(Landroid/view/View;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    const/4 v0, 0x1

    .line 194
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mDisableUpdate:Z

    .line 202
    sget v1, Lcom/metamoji/noteanytime/R$layout;->dialog_pensettings2:I

    iput v1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mViewId:I

    .line 205
    iget-boolean v1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mChangeStyle:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/metamoji/noteanytime/R$string;->ChangeStyle_Title:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/metamoji/noteanytime/R$string;->PenSettings_Title:I

    :goto_0
    iput v1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mTitleId:I

    .line 213
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 215
    iget-boolean p2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mReConstructed:Z

    if-eqz p2, :cond_1

    goto/16 :goto_7

    .line 221
    :cond_1
    sget p2, Lcom/metamoji/noteanytime/R$id;->PenSettingsScrollView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ScrollView;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mScrollView:Landroid/widget/ScrollView;

    .line 223
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object p2

    sget-object v1, Lcom/metamoji/nt/NtFeature;->PenDropper:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {p2, v1}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    iget-boolean p2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mChangeStyle:Z

    if-eqz p2, :cond_2

    .line 225
    sget p2, Lcom/metamoji/noteanytime/R$id;->button_pendropper:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mButtonPenDropper:Lcom/metamoji/ui/common/UiButton;

    .line 226
    invoke-virtual {p2, v1}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    .line 227
    iget-object p2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mButtonPenDropper:Lcom/metamoji/ui/common/UiButton;

    new-instance v2, Lcom/metamoji/ui/dialog/PenSettings2$1;

    invoke-direct {v2, p0}, Lcom/metamoji/ui/dialog/PenSettings2$1;-><init>(Lcom/metamoji/ui/dialog/PenSettings2;)V

    invoke-virtual {p2, v2}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    :cond_2
    sget p2, Lcom/metamoji/noteanytime/R$id;->styleName:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiTextView;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyleName:Lcom/metamoji/ui/common/UiTextView;

    .line 246
    sget p2, Lcom/metamoji/noteanytime/R$id;->radiogroup_pen_standard:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiRadioGroup;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mGroupPenStandard:Lcom/metamoji/ui/common/UiRadioGroup;

    if-eqz p2, :cond_3

    .line 248
    invoke-virtual {p2, v1}, Lcom/metamoji/ui/common/UiRadioGroup;->setCurrentButtonIndex(I)V

    .line 249
    iget-object p2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mGroupPenStandard:Lcom/metamoji/ui/common/UiRadioGroup;

    new-instance v2, Lcom/metamoji/ui/dialog/PenSettings2$2;

    invoke-direct {v2, p0}, Lcom/metamoji/ui/dialog/PenSettings2$2;-><init>(Lcom/metamoji/ui/dialog/PenSettings2;)V

    invoke-virtual {p2, v2}, Lcom/metamoji/ui/common/UiRadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 259
    :cond_3
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object p2

    sget-object v2, Lcom/metamoji/nt/NtFeature;->PenCalligraphy:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {p2, v2}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 261
    sget-object p2, Lcom/metamoji/lb/LbInAppPurchaseConstants;->PRODUCTID_PEN_KARIGURAFI_EX:Ljava/lang/String;

    invoke-static {p2}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->isPurchaseProduct(Ljava/lang/String;)Z

    move-result p2

    .line 263
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v2

    sget-object v3, Lcom/metamoji/nt/NtFeature;->PenCalligraphyOption:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v2, v3}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v2

    if-nez v2, :cond_4

    if-nez p2, :cond_4

    .line 264
    sget p2, Lcom/metamoji/noteanytime/R$id;->radiogroup_pen_calligraphy_lite:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiRadioGroup;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mGroupPenCalligraphy:Lcom/metamoji/ui/common/UiRadioGroup;

    goto :goto_1

    .line 267
    :cond_4
    sget p2, Lcom/metamoji/noteanytime/R$id;->radiogroup_pen_calligraphy:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiRadioGroup;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mGroupPenCalligraphy:Lcom/metamoji/ui/common/UiRadioGroup;

    .line 281
    :cond_5
    :goto_1
    iget-object p2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mGroupPenCalligraphy:Lcom/metamoji/ui/common/UiRadioGroup;

    if-eqz p2, :cond_6

    .line 282
    invoke-virtual {p2, v1}, Lcom/metamoji/ui/common/UiRadioGroup;->setCurrentButtonIndex(I)V

    .line 283
    iget-object p2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mGroupPenCalligraphy:Lcom/metamoji/ui/common/UiRadioGroup;

    new-instance v2, Lcom/metamoji/ui/dialog/PenSettings2$3;

    invoke-direct {v2, p0}, Lcom/metamoji/ui/dialog/PenSettings2$3;-><init>(Lcom/metamoji/ui/dialog/PenSettings2;)V

    invoke-virtual {p2, v2}, Lcom/metamoji/ui/common/UiRadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 293
    :cond_6
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object p2

    sget-object v2, Lcom/metamoji/nt/NtFeature;->DrawShape:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {p2, v2}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result p2

    if-eqz p2, :cond_7

    iget-boolean p2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mChangeStyle:Z

    if-nez p2, :cond_7

    .line 294
    sget p2, Lcom/metamoji/noteanytime/R$id;->button_drawshape:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mButtonDrawShape:Lcom/metamoji/ui/common/UiButton;

    .line 297
    :cond_7
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyleButtonList:Ljava/util/ArrayList;

    .line 298
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyleViewList:Ljava/util/ArrayList;

    .line 300
    sget p2, Lcom/metamoji/noteanytime/R$id;->button_inkcolor:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mButtonInkColor:Lcom/metamoji/ui/common/UiButton;

    .line 301
    sget p2, Lcom/metamoji/noteanytime/R$id;->style_inkcolor:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyleInkColor:Landroid/view/View;

    .line 302
    iget-object p2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyleButtonList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mButtonInkColor:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    iget-object p2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyleViewList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyleInkColor:Landroid/view/View;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    sget p2, Lcom/metamoji/noteanytime/R$id;->button_opacity:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mButtonOpacity:Lcom/metamoji/ui/common/UiButton;

    .line 306
    sget p2, Lcom/metamoji/noteanytime/R$id;->style_opacity:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyleOpacity:Landroid/view/View;

    .line 307
    iget-object p2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyleButtonList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mButtonOpacity:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    iget-object p2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyleViewList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyleOpacity:Landroid/view/View;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    sget p2, Lcom/metamoji/noteanytime/R$id;->button_thickness:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mButtonThickness:Lcom/metamoji/ui/common/UiButton;

    .line 311
    sget p2, Lcom/metamoji/noteanytime/R$id;->style_thickness:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyleThickness:Landroid/view/View;

    .line 312
    iget-object p2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyleButtonList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mButtonThickness:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    iget-object p2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyleViewList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyleThickness:Landroid/view/View;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    sget p2, Lcom/metamoji/noteanytime/R$id;->button_penangle:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mButtonPenAngle:Lcom/metamoji/ui/common/UiButton;

    .line 316
    sget p2, Lcom/metamoji/noteanytime/R$id;->style_penangle:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStylePenAngle:Landroid/view/View;

    .line 317
    iget-object p2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyleButtonList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mButtonPenAngle:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    iget-object p2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyleViewList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStylePenAngle:Landroid/view/View;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    sget p2, Lcom/metamoji/noteanytime/R$id;->button_penrate:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mButtonPenRate:Lcom/metamoji/ui/common/UiButton;

    .line 321
    sget p2, Lcom/metamoji/noteanytime/R$id;->style_penrate:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStylePenRate:Landroid/view/View;

    .line 322
    iget-object p2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyleButtonList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mButtonPenRate:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    iget-object p2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyleViewList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStylePenRate:Landroid/view/View;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    iget-object p2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mButtonInkColor:Lcom/metamoji/ui/common/UiButton;

    new-instance v2, Lcom/metamoji/ui/dialog/PenSettings2$4;

    invoke-direct {v2, p0}, Lcom/metamoji/ui/dialog/PenSettings2$4;-><init>(Lcom/metamoji/ui/dialog/PenSettings2;)V

    invoke-virtual {p2, v2}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 340
    iget-object p2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mButtonOpacity:Lcom/metamoji/ui/common/UiButton;

    new-instance v2, Lcom/metamoji/ui/dialog/PenSettings2$5;

    invoke-direct {v2, p0}, Lcom/metamoji/ui/dialog/PenSettings2$5;-><init>(Lcom/metamoji/ui/dialog/PenSettings2;)V

    invoke-virtual {p2, v2}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 349
    iget-object p2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mButtonThickness:Lcom/metamoji/ui/common/UiButton;

    new-instance v2, Lcom/metamoji/ui/dialog/PenSettings2$6;

    invoke-direct {v2, p0}, Lcom/metamoji/ui/dialog/PenSettings2$6;-><init>(Lcom/metamoji/ui/dialog/PenSettings2;)V

    invoke-virtual {p2, v2}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 358
    iget-object p2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mButtonPenAngle:Lcom/metamoji/ui/common/UiButton;

    new-instance v2, Lcom/metamoji/ui/dialog/PenSettings2$7;

    invoke-direct {v2, p0}, Lcom/metamoji/ui/dialog/PenSettings2$7;-><init>(Lcom/metamoji/ui/dialog/PenSettings2;)V

    invoke-virtual {p2, v2}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    iget-object p2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mButtonPenRate:Lcom/metamoji/ui/common/UiButton;

    new-instance v2, Lcom/metamoji/ui/dialog/PenSettings2$8;

    invoke-direct {v2, p0}, Lcom/metamoji/ui/dialog/PenSettings2$8;-><init>(Lcom/metamoji/ui/dialog/PenSettings2;)V

    invoke-virtual {p2, v2}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 376
    sget p2, Lcom/metamoji/noteanytime/R$id;->colorPalette:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiColorSelectionView2;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mColorSelectionView:Lcom/metamoji/ui/common/UiColorSelectionView2;

    .line 377
    new-instance v2, Lcom/metamoji/ui/dialog/PenSettings2$9;

    invoke-direct {v2, p0, p1}, Lcom/metamoji/ui/dialog/PenSettings2$9;-><init>(Lcom/metamoji/ui/dialog/PenSettings2;Landroid/view/View;)V

    invoke-virtual {p2, v2}, Lcom/metamoji/ui/common/UiColorSelectionView2;->setColorSetGroupChangedListener(Lcom/metamoji/ui/common/UiColorSelectionView2$IColorSetGroupChanged;)V

    .line 388
    iget-object p2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mColorSelectionView:Lcom/metamoji/ui/common/UiColorSelectionView2;

    new-instance v2, Lcom/metamoji/ui/dialog/PenSettings2$10;

    invoke-direct {v2, p0}, Lcom/metamoji/ui/dialog/PenSettings2$10;-><init>(Lcom/metamoji/ui/dialog/PenSettings2;)V

    invoke-virtual {p2, v2}, Lcom/metamoji/ui/common/UiColorSelectionView2;->setSelectionChangedListener(Lcom/metamoji/ui/common/UiColorSelectionView2$IColorSelectionChanged;)V

    .line 406
    new-instance p2, Lcom/metamoji/ui/common/UiRadioContoller;

    sget-object v2, Lcom/metamoji/ui/dialog/PenSettings2;->mBottlesIds:[I

    invoke-direct {p2, p1, v2}, Lcom/metamoji/ui/common/UiRadioContoller;-><init>(Landroid/view/View;[I)V

    iput-object p2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mBottlesRadioGroup:Lcom/metamoji/ui/common/UiRadioContoller;

    .line 408
    new-instance v2, Lcom/metamoji/ui/dialog/PenSettings2$11;

    invoke-direct {v2, p0}, Lcom/metamoji/ui/dialog/PenSettings2$11;-><init>(Lcom/metamoji/ui/dialog/PenSettings2;)V

    invoke-virtual {p2, v2}, Lcom/metamoji/ui/common/UiRadioContoller;->setSelectChangedListener(Lcom/metamoji/ui/common/IUiRadioItem$IUiSelectChanged;)V

    move p2, v1

    .line 419
    :goto_2
    sget-object v2, Lcom/metamoji/ui/dialog/PenSettings2;->mBottlesIds:[I

    array-length v2, v2

    if-ge p2, v2, :cond_8

    .line 420
    iget-object v2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mBottle:[Lcom/metamoji/ui/common/UiImageRadioButton;

    iget-object v3, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mBottlesRadioGroup:Lcom/metamoji/ui/common/UiRadioContoller;

    invoke-virtual {v3, p2}, Lcom/metamoji/ui/common/UiRadioContoller;->idFromIndex(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/metamoji/ui/common/UiImageRadioButton;

    aput-object v3, v2, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 424
    :cond_8
    new-instance p2, Lcom/metamoji/ui/common/UiRadioContoller;

    sget-object v2, Lcom/metamoji/ui/dialog/PenSettings2;->mPenTypeIds:[I

    invoke-direct {p2, p1, v2}, Lcom/metamoji/ui/common/UiRadioContoller;-><init>(Landroid/view/View;[I)V

    iput-object p2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mPenTypeRadioGroup:Lcom/metamoji/ui/common/UiRadioContoller;

    .line 425
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object p2

    sget-object v2, Lcom/metamoji/nt/NtFeature;->PenFountain:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {p2, v2}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result p2

    const/16 v2, 0x8

    if-nez p2, :cond_9

    iget-boolean p2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mDebug:Z

    if-nez p2, :cond_9

    .line 426
    sget p2, Lcom/metamoji/noteanytime/R$id;->pentypeFnt1:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 427
    sget p2, Lcom/metamoji/noteanytime/R$id;->pentypeBrs1:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 429
    :cond_9
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object p2

    sget-object v3, Lcom/metamoji/nt/NtFeature;->PenCalligraphy:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {p2, v3}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result p2

    if-nez p2, :cond_a

    iget-boolean p2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mDebug:Z

    if-nez p2, :cond_a

    .line 430
    sget p2, Lcom/metamoji/noteanytime/R$id;->pentypeCal1:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 432
    :cond_a
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object p2

    sget-object v3, Lcom/metamoji/nt/NtFeature;->PenMarker:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {p2, v3}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result p2

    if-nez p2, :cond_b

    iget-boolean p2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mDebug:Z

    if-nez p2, :cond_b

    .line 433
    sget p2, Lcom/metamoji/noteanytime/R$id;->pentypeMrk1:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 448
    :cond_b
    iget-object p2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mPenTypeRadioGroup:Lcom/metamoji/ui/common/UiRadioContoller;

    new-instance v2, Lcom/metamoji/ui/dialog/PenSettings2$12;

    invoke-direct {v2, p0, p1}, Lcom/metamoji/ui/dialog/PenSettings2$12;-><init>(Lcom/metamoji/ui/dialog/PenSettings2;Landroid/view/View;)V

    invoke-virtual {p2, v2}, Lcom/metamoji/ui/common/UiRadioContoller;->setSelectChangedListener(Lcom/metamoji/ui/common/IUiRadioItem$IUiSelectChanged;)V

    .line 631
    sget p2, Lcom/metamoji/noteanytime/R$id;->paletteLeftButton:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v2, Lcom/metamoji/ui/dialog/PenSettings2$13;

    invoke-direct {v2, p0}, Lcom/metamoji/ui/dialog/PenSettings2$13;-><init>(Lcom/metamoji/ui/dialog/PenSettings2;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 639
    sget p2, Lcom/metamoji/noteanytime/R$id;->paletteRightButton:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v2, Lcom/metamoji/ui/dialog/PenSettings2$14;

    invoke-direct {v2, p0}, Lcom/metamoji/ui/dialog/PenSettings2$14;-><init>(Lcom/metamoji/ui/dialog/PenSettings2;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 647
    sget p2, Lcom/metamoji/noteanytime/R$id;->sliderWeight:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiPlainSlider;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mSliderWeight:Lcom/metamoji/ui/common/UiPlainSlider;

    .line 648
    sget-object v2, Lcom/metamoji/ui/dialog/PenSettings2;->mTickWeight:[Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    invoke-virtual {p2, v2}, Lcom/metamoji/ui/common/UiPlainSlider;->setTickList([Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;)V

    .line 649
    iget-object p2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mSliderWeight:Lcom/metamoji/ui/common/UiPlainSlider;

    new-instance v2, Lcom/metamoji/ui/dialog/PenSettings2$15;

    invoke-direct {v2, p0}, Lcom/metamoji/ui/dialog/PenSettings2$15;-><init>(Lcom/metamoji/ui/dialog/PenSettings2;)V

    invoke-virtual {p2, v2}, Lcom/metamoji/ui/common/UiPlainSlider;->setValueChangedListener(Lcom/metamoji/ui/common/UiPlainSlider$IOnValueChanged;)V

    .line 657
    new-instance p2, Lcom/metamoji/ui/dialog/PenSettings2$16;

    invoke-direct {p2, p0}, Lcom/metamoji/ui/dialog/PenSettings2$16;-><init>(Lcom/metamoji/ui/dialog/PenSettings2;)V

    .line 674
    sget-object v2, Lcom/metamoji/ui/dialog/PenSettings2;->mWeightPresetIds:[I

    array-length v2, v2

    sub-int/2addr v2, v0

    :goto_3
    if-ltz v2, :cond_c

    .line 675
    sget-object v3, Lcom/metamoji/ui/dialog/PenSettings2;->mWeightPresetIds:[I

    aget v3, v3, v2

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/metamoji/ui/common/UiButton;

    .line 676
    invoke-virtual {v3, p2}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 680
    :cond_c
    sget p2, Lcom/metamoji/noteanytime/R$id;->sliderOpacity:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiPlainSlider;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mSliderOpacity:Lcom/metamoji/ui/common/UiPlainSlider;

    .line 681
    sget-object v2, Lcom/metamoji/ui/dialog/PenSettings2;->mTickOpacity:[Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    invoke-virtual {p2, v2}, Lcom/metamoji/ui/common/UiPlainSlider;->setTickList([Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;)V

    .line 682
    iget-object p2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mSliderOpacity:Lcom/metamoji/ui/common/UiPlainSlider;

    new-instance v2, Lcom/metamoji/ui/dialog/PenSettings2$17;

    invoke-direct {v2, p0}, Lcom/metamoji/ui/dialog/PenSettings2$17;-><init>(Lcom/metamoji/ui/dialog/PenSettings2;)V

    invoke-virtual {p2, v2}, Lcom/metamoji/ui/common/UiPlainSlider;->setValueChangedListener(Lcom/metamoji/ui/common/UiPlainSlider$IOnValueChanged;)V

    .line 691
    sget p2, Lcom/metamoji/noteanytime/R$id;->drawSample:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mDrawSample:Landroid/widget/ImageView;

    .line 694
    sget p2, Lcom/metamoji/noteanytime/R$id;->angleValue:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiTextView;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mAngleValueView:Lcom/metamoji/ui/common/UiTextView;

    .line 695
    sget p2, Lcom/metamoji/noteanytime/R$id;->angleSlider:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiAngleSlider;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mAngleSlider:Lcom/metamoji/ui/common/UiAngleSlider;

    .line 696
    new-instance v2, Lcom/metamoji/ui/dialog/PenSettings2$18;

    invoke-direct {v2, p0}, Lcom/metamoji/ui/dialog/PenSettings2$18;-><init>(Lcom/metamoji/ui/dialog/PenSettings2;)V

    invoke-virtual {p2, v2}, Lcom/metamoji/ui/common/UiAngleSlider;->setOnValueChangedListener(Lcom/metamoji/ui/common/UiAngleSlider$IOnValueChanged;)V

    .line 714
    new-instance p2, Lcom/metamoji/ui/dialog/PenSettings2$19;

    invoke-direct {p2, p0}, Lcom/metamoji/ui/dialog/PenSettings2$19;-><init>(Lcom/metamoji/ui/dialog/PenSettings2;)V

    .line 731
    sget-object v2, Lcom/metamoji/ui/dialog/PenSettings2;->mAnglePresetIds:[I

    array-length v2, v2

    sub-int/2addr v2, v0

    :goto_4
    if-ltz v2, :cond_d

    .line 732
    sget-object v3, Lcom/metamoji/ui/dialog/PenSettings2;->mAnglePresetIds:[I

    aget v3, v3, v2

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/metamoji/ui/common/UiButton;

    .line 733
    invoke-virtual {v3, p2}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .line 737
    :cond_d
    new-instance p2, Lcom/metamoji/ui/dialog/PenSettings2$20;

    invoke-direct {p2, p0}, Lcom/metamoji/ui/dialog/PenSettings2$20;-><init>(Lcom/metamoji/ui/dialog/PenSettings2;)V

    .line 748
    new-instance v2, Lcom/metamoji/ui/dialog/PenSettings2$21;

    invoke-direct {v2, p0}, Lcom/metamoji/ui/dialog/PenSettings2$21;-><init>(Lcom/metamoji/ui/dialog/PenSettings2;)V

    .line 758
    new-instance v3, Lcom/metamoji/ui/dialog/PenSettings2$22;

    invoke-direct {v3, p0}, Lcom/metamoji/ui/dialog/PenSettings2$22;-><init>(Lcom/metamoji/ui/dialog/PenSettings2;)V

    .line 772
    sget-object v4, Lcom/metamoji/ui/dialog/PenSettings2;->mAngleManipulationIds:[I

    array-length v4, v4

    sub-int/2addr v4, v0

    :goto_5
    if-ltz v4, :cond_e

    .line 773
    sget-object v5, Lcom/metamoji/ui/dialog/PenSettings2;->mAngleManipulationIds:[I

    aget v5, v5, v4

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/metamoji/ui/common/UiButton;

    .line 774
    invoke-virtual {v5, p2}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 775
    invoke-virtual {v5, v2}, Lcom/metamoji/ui/common/UiButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 776
    invoke-virtual {v5, v3}, Lcom/metamoji/ui/common/UiButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_5

    .line 780
    :cond_e
    sget p2, Lcom/metamoji/noteanytime/R$id;->sliderRatio:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiPlainSlider;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mPenRateSlider:Lcom/metamoji/ui/common/UiPlainSlider;

    .line 781
    sget-object v2, Lcom/metamoji/ui/dialog/PenSettings2;->mTickRatio:[Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    invoke-virtual {p2, v2}, Lcom/metamoji/ui/common/UiPlainSlider;->setTickList([Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;)V

    .line 782
    iget-object p2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mPenRateSlider:Lcom/metamoji/ui/common/UiPlainSlider;

    new-instance v2, Lcom/metamoji/ui/dialog/PenSettings2$23;

    invoke-direct {v2, p0}, Lcom/metamoji/ui/dialog/PenSettings2$23;-><init>(Lcom/metamoji/ui/dialog/PenSettings2;)V

    invoke-virtual {p2, v2}, Lcom/metamoji/ui/common/UiPlainSlider;->setValueChangedListener(Lcom/metamoji/ui/common/UiPlainSlider$IOnValueChanged;)V

    .line 790
    new-instance p2, Lcom/metamoji/ui/dialog/PenSettings2$24;

    invoke-direct {p2, p0}, Lcom/metamoji/ui/dialog/PenSettings2$24;-><init>(Lcom/metamoji/ui/dialog/PenSettings2;)V

    .line 806
    sget-object v2, Lcom/metamoji/ui/dialog/PenSettings2;->mRatioPresetIds:[I

    array-length v2, v2

    sub-int/2addr v2, v0

    :goto_6
    if-ltz v2, :cond_f

    .line 807
    sget-object v3, Lcom/metamoji/ui/dialog/PenSettings2;->mRatioPresetIds:[I

    aget v3, v3, v2

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/metamoji/ui/common/UiButton;

    .line 808
    invoke-virtual {v3, p2}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    .line 812
    :cond_f
    sget p2, Lcom/metamoji/noteanytime/R$id;->penLocus_Angle:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mCalligraphySampleAngle:Landroid/widget/ImageView;

    .line 813
    sget p2, Lcom/metamoji/noteanytime/R$id;->penLocus_Rate:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mCalligraphySampleRate:Landroid/widget/ImageView;

    const/4 p2, 0x0

    if-nez p3, :cond_10

    .line 817
    iput-object p2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mInkColorsNormal:Ljava/util/ArrayList;

    const/4 p3, -0x1

    .line 818
    iput p3, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mOpacityNormal:I

    .line 819
    iput-object p2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mInkColorsMarker:Ljava/util/ArrayList;

    .line 820
    invoke-static {}, Lcom/metamoji/nt/NtInkManager;->markerTopColor()I

    move-result p3

    invoke-static {p3}, Landroid/graphics/Color;->alpha(I)I

    move-result p3

    iput p3, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mOpacityMarker:I

    .line 829
    :cond_10
    sget p3, Lcom/metamoji/noteanytime/R$id;->control_dialog:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, v1}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 834
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/PenSettings2;->initDlgValues()V

    .line 837
    iget-boolean p3, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mInitializedInkColorsAndOpacity:Z

    if-nez p3, :cond_12

    .line 838
    iget-object p3, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {p3}, Lcom/metamoji/nt/share/NtPenStyle;->getInkColors()Ljava/util/List;

    move-result-object p3

    iget-object v1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v1}, Lcom/metamoji/nt/share/NtPenStyle;->getLineAlpha()F

    move-result v1

    iget-object v2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v2}, Lcom/metamoji/nt/share/NtPenStyle;->isType()Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object p2, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {p2}, Lcom/metamoji/nt/share/NtPenStyle;->getType()Ljava/lang/String;

    move-result-object p2

    :cond_11
    invoke-direct {p0, p3, v1, p2, v0}, Lcom/metamoji/ui/dialog/PenSettings2;->backupInkColorsAndOpacity(Ljava/util/List;FLjava/lang/String;Z)V

    :cond_12
    :goto_7
    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 2043
    invoke-super {p0}, Lcom/metamoji/ui/dialog/NtDialog;->onDestroyView()V

    .line 2044
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mSampleBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2045
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2046
    iput-object v1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mSampleBitmap:Landroid/graphics/Bitmap;

    .line 2048
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mCalligraphyBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 2049
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2050
    iput-object v1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mCalligraphyBitmap:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method public onDone(Landroid/view/View;)V
    .locals 2

    .line 1947
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/PenSettings2;->updateValues()V

    .line 1950
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mButtonDrawShape:Lcom/metamoji/ui/common/UiButton;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiButton;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1951
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    iget-object v0, v0, Lcom/metamoji/nt/share/NtPenStyle;->type:Ljava/lang/String;

    const-string/jumbo v1, "standard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1954
    iget-object v1, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    if-eqz v0, :cond_0

    .line 1952
    const-string/jumbo v0, "shapepen"

    iput-object v0, v1, Lcom/metamoji/nt/share/NtPenStyle;->type:Ljava/lang/String;

    goto :goto_0

    .line 1954
    :cond_0
    iget-object v0, v1, Lcom/metamoji/nt/share/NtPenStyle;->type:Ljava/lang/String;

    const-string v1, "markerpen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1955
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    const-string/jumbo v1, "shapemarkerpen"

    iput-object v1, v0, Lcom/metamoji/nt/share/NtPenStyle;->type:Ljava/lang/String;

    .line 1967
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mColorSelectionView:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {v0}, Lcom/metamoji/nt/NtInkManager;->saveColorHistoryPen(Lcom/metamoji/ui/common/UiColorSelectionView2;)V

    .line 1969
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onDone(Landroid/view/View;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 2056
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2057
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/PenSettings2;->updateValues()V

    .line 2058
    sget-object v0, Lcom/metamoji/ui/dialog/PenSettings2;->Key_ReconstructDialogFlag:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 961
    invoke-super {p0}, Lcom/metamoji/ui/dialog/NtDialog;->onStart()V

    const/4 v0, 0x0

    .line 962
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mDisableUpdate:Z

    .line 963
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/PenSettings2;->updateSample()V

    .line 964
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/PenSettings2;->initWeightPreset()V

    return-void
.end method

.method public startAngleManipulationTimer(Landroid/view/View;)V
    .locals 6

    .line 908
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/PenSettings2;->clearAngleManipulationTimer()Z

    .line 910
    new-instance v0, Lcom/metamoji/cm/UiTimer;

    invoke-direct {v0}, Lcom/metamoji/cm/UiTimer;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2;->mAngleManipulationTimer:Lcom/metamoji/cm/UiTimer;

    .line 911
    new-instance v1, Lcom/metamoji/ui/dialog/PenSettings2$26;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/ui/dialog/PenSettings2$26;-><init>(Lcom/metamoji/ui/dialog/PenSettings2;Landroid/view/View;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x32

    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/cm/UiTimer;->schedule(Ljava/lang/Runnable;JJ)V

    return-void
.end method
