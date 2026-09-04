.class public Lcom/metamoji/ui/dialog/ShapeSettings;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "ShapeSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/dialog/ShapeSettings$ListAdapter;
    }
.end annotation


# static fields
.field public static final FILL_SHAPE_STATE_OFF:I = 0x0

.field public static final FILL_SHAPE_STATE_ON:I = 0x1

.field public static final FILL_SHAPE_STATE_UNKNOWN:I = 0x2

.field public static final PEN_STD_DASH:I = 0x1

.field public static final PEN_STD_MAPPING:I = 0x0

.field static final SHAPESETTINGS_PREVIEW_FILL_LEFTTOP:I = 0x0

.field static final SHAPESETTINGS_PREVIEW_FILL_RIGHTBOTTOM:I = 0x46

.field static final SHAPESETTINGS_PREVIEW_HEIGHT:I = 0x28

.field static final SHAPESETTINGS_PREVIEW_LINE_LEFTTOP:I = 0x1e

.field static final SHAPESETTINGS_PREVIEW_LINE_RIGHTBOTTOM:I = 0x64

.field static final SHAPESETTINGS_PREVIEW_LOCUS_HEIGHT:I = 0x14

.field static final SHAPESETTINGS_PREVIEW_LOCUS_LEFT:I = 0xa

.field static final SHAPESETTINGS_PREVIEW_LOCUS_TOP:I = 0xa

.field static final SHAPESETTINGS_PREVIEW_LOCUS_WIDTH:I = 0x14

.field static final SHAPESETTINGS_PREVIEW_WIDTH:I = 0x28

.field public static final SHAPE_SET_FILL:I = 0x1

.field public static final SHAPE_SET_LINE:I

.field static final mBottlesIds_Fill:[I

.field static final mBottlesIds_Line:[I

.field static final mTickOpacity:[Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

.field static final mTickOpacity_Fill:[Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

.field static final mTickWeight:[Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

.field static final mWeightPresetIds:[I

.field static final mWeightPresetStandard:[I


# instance fields
.field private fillRect:Landroid/graphics/Rect;

.field private lineRect:Landroid/graphics/Rect;

.field mArrowStyle:Lcom/metamoji/nt/share/NtPenStyle;

.field mBottle_Fill:[Lcom/metamoji/ui/common/UiImageRadioButton;

.field mBottle_Line:[Lcom/metamoji/ui/common/UiImageRadioButton;

.field mBottlesRadioGroup_Fill:Lcom/metamoji/ui/common/UiRadioContoller;

.field mBottlesRadioGroup_Line:Lcom/metamoji/ui/common/UiRadioContoller;

.field mButtonArrow:Lcom/metamoji/ui/common/UiButton;

.field mButtonInkColor:Lcom/metamoji/ui/common/UiButton;

.field mButtonInkColor_Fill:Lcom/metamoji/ui/common/UiButton;

.field mButtonOpacity:Lcom/metamoji/ui/common/UiButton;

.field mButtonOpacity_Fill:Lcom/metamoji/ui/common/UiButton;

.field mButtonShapeFill:Lcom/metamoji/ui/common/UiButton;

.field mButtonThickness:Lcom/metamoji/ui/common/UiButton;

.field mChangeStyle:Z

.field private mColor:Landroid/graphics/Paint;

.field mColorArrow:Landroid/graphics/Paint;

.field mColorSelectionView_Fill:Lcom/metamoji/ui/common/UiColorSelectionView2;

.field mColorSelectionView_Line:Lcom/metamoji/ui/common/UiColorSelectionView2;

.field mColorViewCurrentPage_Fill:I

.field mColorViewCurrentPage_Line:I

.field mCurrentPenType:I

.field mCurrentShapeSet:I

.field mDebug:Z

.field private mDefaultStd1:Lcom/metamoji/nt/share/NtPenStyle;

.field private mDefaultStd2:Lcom/metamoji/nt/share/NtPenStyle;

.field mDisableUpdate:Z

.field mDrawSample:Landroid/widget/ImageView;

.field mFillBack:Landroid/graphics/drawable/Drawable;

.field mFillShapeState:I

.field mGroupPenStandard:Lcom/metamoji/ui/common/UiRadioGroup;

.field mGroupShapeSetting:Lcom/metamoji/ui/common/UiRadioGroup;

.field mLineBack:Landroid/graphics/drawable/Drawable;

.field mReConstructed:Z

.field mSampleBitmap:Landroid/graphics/Bitmap;

.field mScrollView:Landroid/widget/ScrollView;

.field mSettings:Lcom/metamoji/nt/NtSystemPenSettings;

.field mSliderOpacity:Lcom/metamoji/ui/common/UiPlainSlider;

.field mSliderOpacity_Fill:Lcom/metamoji/ui/common/UiPlainSlider;

.field mSliderWeight:Lcom/metamoji/ui/common/UiPlainSlider;

.field mStyle:Lcom/metamoji/nt/share/NtPenStyle;

.field mStyleArrow:Landroid/view/View;

.field mStyleButtonList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ui/common/UiButton;",
            ">;"
        }
    .end annotation
.end field

.field mStyleButtonList_Fill:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ui/common/UiButton;",
            ">;"
        }
    .end annotation
.end field

.field mStyleFill:Landroid/view/View;

.field mStyleInkColor:Landroid/view/View;

.field mStyleInkColor_Fill:Landroid/view/View;

.field mStyleLine:Landroid/view/View;

.field mStyleOpacity:Landroid/view/View;

.field mStyleOpacity_Fill:Landroid/view/View;

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

.field mStyleViewList_Fill:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$mupdateSample(Lcom/metamoji/ui/dialog/ShapeSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/dialog/ShapeSettings;->updateSample()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateStyleView(Lcom/metamoji/ui/dialog/ShapeSettings;Lcom/metamoji/ui/common/UiButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/dialog/ShapeSettings;->updateStyleView(Lcom/metamoji/ui/common/UiButton;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateStyleView_Fill(Lcom/metamoji/ui/dialog/ShapeSettings;Lcom/metamoji/ui/common/UiButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/dialog/ShapeSettings;->updateStyleView_Fill(Lcom/metamoji/ui/common/UiButton;Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 17

    .line 133
    sget v0, Lcom/metamoji/noteanytime/R$id;->bottle0_line:I

    sget v1, Lcom/metamoji/noteanytime/R$id;->bottle1_line:I

    sget v2, Lcom/metamoji/noteanytime/R$id;->bottle2_line:I

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/metamoji/ui/dialog/ShapeSettings;->mBottlesIds_Line:[I

    .line 134
    sget v0, Lcom/metamoji/noteanytime/R$id;->bottle0_fill:I

    sget v1, Lcom/metamoji/noteanytime/R$id;->bottle1_fill:I

    sget v2, Lcom/metamoji/noteanytime/R$id;->bottle2_fill:I

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/metamoji/ui/dialog/ShapeSettings;->mBottlesIds_Fill:[I

    .line 136
    sget v0, Lcom/metamoji/noteanytime/R$id;->penWeight0:I

    sget v1, Lcom/metamoji/noteanytime/R$id;->penWeight1:I

    sget v2, Lcom/metamoji/noteanytime/R$id;->penWeight2:I

    sget v3, Lcom/metamoji/noteanytime/R$id;->penWeight3:I

    sget v4, Lcom/metamoji/noteanytime/R$id;->penWeight4:I

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/metamoji/ui/dialog/ShapeSettings;->mWeightPresetIds:[I

    const/4 v0, 0x3

    const/4 v1, 0x5

    const/4 v2, 0x7

    const/16 v3, 0xa

    const/16 v4, 0x14

    .line 139
    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v2

    sput-object v2, Lcom/metamoji/ui/dialog/ShapeSettings;->mWeightPresetStandard:[I

    .line 142
    new-array v2, v1, [Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    new-instance v5, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;-><init>(II)V

    aput-object v5, v2, v6

    new-instance v5, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    const/16 v8, 0xfa

    invoke-direct {v5, v8, v3}, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;-><init>(II)V

    aput-object v5, v2, v7

    new-instance v5, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    const/16 v9, 0x1f4

    invoke-direct {v5, v9, v4}, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;-><init>(II)V

    const/4 v4, 0x2

    aput-object v5, v2, v4

    new-instance v5, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    const/16 v10, 0x2ee

    const/16 v11, 0x32

    invoke-direct {v5, v10, v11}, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;-><init>(II)V

    aput-object v5, v2, v0

    new-instance v5, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    const/16 v12, 0x3e8

    const/16 v13, 0x64

    invoke-direct {v5, v12, v13}, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;-><init>(II)V

    const/4 v14, 0x4

    aput-object v5, v2, v14

    sput-object v2, Lcom/metamoji/ui/dialog/ShapeSettings;->mTickWeight:[Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    .line 144
    new-array v2, v1, [Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    new-instance v5, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    invoke-direct {v5, v6, v3}, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;-><init>(II)V

    aput-object v5, v2, v6

    new-instance v5, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    const/16 v15, 0x19

    invoke-direct {v5, v8, v15}, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;-><init>(II)V

    aput-object v5, v2, v7

    new-instance v5, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    invoke-direct {v5, v9, v11}, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;-><init>(II)V

    aput-object v5, v2, v4

    new-instance v5, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    move/from16 v16, v0

    const/16 v0, 0x4b

    invoke-direct {v5, v10, v0}, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;-><init>(II)V

    aput-object v5, v2, v16

    new-instance v5, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    invoke-direct {v5, v12, v13}, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;-><init>(II)V

    aput-object v5, v2, v14

    sput-object v2, Lcom/metamoji/ui/dialog/ShapeSettings;->mTickOpacity:[Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    .line 146
    new-array v1, v1, [Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    new-instance v2, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    invoke-direct {v2, v6, v3}, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;-><init>(II)V

    aput-object v2, v1, v6

    new-instance v2, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    invoke-direct {v2, v8, v15}, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;-><init>(II)V

    aput-object v2, v1, v7

    new-instance v2, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    invoke-direct {v2, v9, v11}, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;-><init>(II)V

    aput-object v2, v1, v4

    new-instance v2, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    invoke-direct {v2, v10, v0}, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;-><init>(II)V

    aput-object v2, v1, v16

    new-instance v0, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    invoke-direct {v0, v12, v13}, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;-><init>(II)V

    aput-object v0, v1, v14

    sput-object v1, Lcom/metamoji/ui/dialog/ShapeSettings;->mTickOpacity_Fill:[Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 156
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    .line 85
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mColor:Landroid/graphics/Paint;

    .line 117
    new-array v0, v1, [Lcom/metamoji/ui/common/UiImageRadioButton;

    iput-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mBottle_Line:[Lcom/metamoji/ui/common/UiImageRadioButton;

    .line 118
    new-array v0, v1, [Lcom/metamoji/ui/common/UiImageRadioButton;

    iput-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mBottle_Fill:[Lcom/metamoji/ui/common/UiImageRadioButton;

    const/4 v0, -0x1

    .line 123
    iput v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mCurrentPenType:I

    .line 124
    iput v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mColorViewCurrentPage_Line:I

    .line 125
    iput v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mColorViewCurrentPage_Fill:I

    const/4 v0, 0x0

    .line 126
    iput v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mFillShapeState:I

    .line 127
    iput v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mCurrentShapeSet:I

    .line 129
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mChangeStyle:Z

    .line 130
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mDisableUpdate:Z

    .line 148
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mReConstructed:Z

    .line 150
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mDebug:Z

    .line 735
    invoke-static {}, Lcom/metamoji/nt/NtSystemSettings;->getInstance()Lcom/metamoji/nt/NtSystemSettings;

    move-result-object v0

    const-string v1, "MMJNtSystemPenSettings"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtSystemSettings;->getSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtSystemPenSettings;

    iput-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mSettings:Lcom/metamoji/nt/NtSystemPenSettings;

    const/4 v0, 0x0

    .line 932
    iput-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mDefaultStd1:Lcom/metamoji/nt/share/NtPenStyle;

    .line 933
    iput-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mDefaultStd2:Lcom/metamoji/nt/share/NtPenStyle;

    .line 1270
    iput-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mSampleBitmap:Landroid/graphics/Bitmap;

    .line 1328
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->lineRect:Landroid/graphics/Rect;

    .line 1329
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->fillRect:Landroid/graphics/Rect;

    const/4 v0, 0x1

    .line 157
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mReConstructed:Z

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/nt/share/NtPenStyle;)V
    .locals 1

    const/4 v0, 0x0

    .line 166
    invoke-direct {p0, p1, v0}, Lcom/metamoji/ui/dialog/ShapeSettings;-><init>(Lcom/metamoji/nt/share/NtPenStyle;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/nt/share/NtPenStyle;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 169
    invoke-direct {p0, p1, p2, v0}, Lcom/metamoji/ui/dialog/ShapeSettings;-><init>(Lcom/metamoji/nt/share/NtPenStyle;ZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/nt/share/NtPenStyle;ZZ)V
    .locals 2

    .line 172
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    .line 85
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mColor:Landroid/graphics/Paint;

    .line 117
    new-array v0, v1, [Lcom/metamoji/ui/common/UiImageRadioButton;

    iput-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mBottle_Line:[Lcom/metamoji/ui/common/UiImageRadioButton;

    .line 118
    new-array v0, v1, [Lcom/metamoji/ui/common/UiImageRadioButton;

    iput-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mBottle_Fill:[Lcom/metamoji/ui/common/UiImageRadioButton;

    const/4 v0, -0x1

    .line 123
    iput v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mCurrentPenType:I

    .line 124
    iput v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mColorViewCurrentPage_Line:I

    .line 125
    iput v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mColorViewCurrentPage_Fill:I

    const/4 v0, 0x0

    .line 126
    iput v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mFillShapeState:I

    .line 127
    iput v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mCurrentShapeSet:I

    .line 129
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mChangeStyle:Z

    .line 130
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mDisableUpdate:Z

    .line 148
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mReConstructed:Z

    .line 150
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mDebug:Z

    .line 735
    invoke-static {}, Lcom/metamoji/nt/NtSystemSettings;->getInstance()Lcom/metamoji/nt/NtSystemSettings;

    move-result-object v0

    const-string v1, "MMJNtSystemPenSettings"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtSystemSettings;->getSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtSystemPenSettings;

    iput-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mSettings:Lcom/metamoji/nt/NtSystemPenSettings;

    const/4 v0, 0x0

    .line 932
    iput-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mDefaultStd1:Lcom/metamoji/nt/share/NtPenStyle;

    .line 933
    iput-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mDefaultStd2:Lcom/metamoji/nt/share/NtPenStyle;

    .line 1270
    iput-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mSampleBitmap:Landroid/graphics/Bitmap;

    .line 1328
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->lineRect:Landroid/graphics/Rect;

    .line 1329
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->fillRect:Landroid/graphics/Rect;

    .line 173
    new-instance v0, Lcom/metamoji/nt/share/NtPenStyle;

    invoke-direct {v0, p1}, Lcom/metamoji/nt/share/NtPenStyle;-><init>(Lcom/metamoji/nt/share/NtPenStyle;)V

    iput-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    .line 174
    iput-boolean p2, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mChangeStyle:Z

    .line 175
    iput-boolean p3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mDebug:Z

    const/4 p1, 0x1

    .line 177
    iput-boolean p1, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mDoneOnTouchOutsize:Z

    return-void
.end method

.method private createPenPreviewImage()Landroid/graphics/Bitmap;
    .locals 8

    const/16 v0, 0x28

    .line 1336
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1337
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1339
    iget-object v1, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->fillRect:Landroid/graphics/Rect;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v1, Landroid/graphics/Rect;->left:I

    .line 1340
    iget-object v1, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->fillRect:Landroid/graphics/Rect;

    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v1, Landroid/graphics/Rect;->top:I

    const/high16 v1, 0x41600000    # 14.0f

    .line 1341
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1342
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1343
    iget-object v5, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->fillRect:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 1344
    iget-object v3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->fillRect:Landroid/graphics/Rect;

    iget v5, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v4

    iput v5, v3, Landroid/graphics/Rect;->bottom:I

    .line 1346
    iget-object v3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->lineRect:Landroid/graphics/Rect;

    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v3, Landroid/graphics/Rect;->left:I

    .line 1347
    iget-object v3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->lineRect:Landroid/graphics/Rect;

    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 1348
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1349
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1350
    iget-object v4, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->lineRect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 1351
    iget-object v3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->lineRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v1

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 1353
    iget-object v1, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mFillBack:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->fillRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1354
    iget-object v1, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mLineBack:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->lineRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1356
    iget v1, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mFillShapeState:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    iget-object v1, v1, Lcom/metamoji/nt/share/NtPenStyle;->fillColors:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    iget-object v1, v1, Lcom/metamoji/nt/share/NtPenStyle;->fillColors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v1}, Lcom/metamoji/nt/share/NtPenStyle;->isFillAlpha()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1357
    :goto_0
    iget-object v4, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mGroupShapeSetting:Lcom/metamoji/ui/common/UiRadioGroup;

    invoke-virtual {v4}, Lcom/metamoji/ui/common/UiRadioGroup;->getCurrentButtonIndex()I

    move-result v4

    .line 1368
    iget-object v5, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    if-ne v4, v3, :cond_1

    .line 1360
    invoke-virtual {v5}, Lcom/metamoji/nt/share/NtPenStyle;->getLineColor()I

    move-result v3

    iget-object v4, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    iget v4, v4, Lcom/metamoji/nt/share/NtPenStyle;->lineAlpha:F

    iget-object v5, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->lineRect:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/metamoji/ui/dialog/ShapeSettings;->drawLinePreview(Landroid/graphics/Canvas;IFLandroid/graphics/Rect;)V

    .line 1363
    iget-object v3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    iget-object v4, v3, Lcom/metamoji/nt/share/NtPenStyle;->fillType:Ljava/lang/String;

    iget-object v3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    iget-object v5, v3, Lcom/metamoji/nt/share/NtPenStyle;->fillColors:Ljava/util/List;

    iget-object v3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    iget v6, v3, Lcom/metamoji/nt/share/NtPenStyle;->fillAlpha:F

    iget-object v7, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->fillRect:Landroid/graphics/Rect;

    move v3, v1

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/metamoji/ui/dialog/ShapeSettings;->drawFillPreview(Landroid/graphics/Canvas;ZLjava/lang/String;Ljava/util/List;FLandroid/graphics/Rect;)V

    return-object v0

    :cond_1
    move v3, v1

    move-object v1, p0

    .line 1368
    iget-object v4, v5, Lcom/metamoji/nt/share/NtPenStyle;->fillType:Ljava/lang/String;

    iget-object v5, v1, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    iget-object v5, v5, Lcom/metamoji/nt/share/NtPenStyle;->fillColors:Ljava/util/List;

    iget-object v6, v1, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    iget v6, v6, Lcom/metamoji/nt/share/NtPenStyle;->fillAlpha:F

    iget-object v7, v1, Lcom/metamoji/ui/dialog/ShapeSettings;->fillRect:Landroid/graphics/Rect;

    invoke-direct/range {v1 .. v7}, Lcom/metamoji/ui/dialog/ShapeSettings;->drawFillPreview(Landroid/graphics/Canvas;ZLjava/lang/String;Ljava/util/List;FLandroid/graphics/Rect;)V

    .line 1371
    iget-object v3, v1, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v3}, Lcom/metamoji/nt/share/NtPenStyle;->getLineColor()I

    move-result v3

    iget-object v4, v1, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    iget v4, v4, Lcom/metamoji/nt/share/NtPenStyle;->lineAlpha:F

    iget-object v5, v1, Lcom/metamoji/ui/dialog/ShapeSettings;->lineRect:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/metamoji/ui/dialog/ShapeSettings;->drawLinePreview(Landroid/graphics/Canvas;IFLandroid/graphics/Rect;)V

    return-object v0
.end method

.method private drawFillPreview(Landroid/graphics/Canvas;ZLjava/lang/String;Ljava/util/List;FLandroid/graphics/Rect;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;F",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_2

    .line 1401
    iget-object p2, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mFillBack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1403
    iget-object p2, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mColor:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1404
    iget-object p2, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mColor:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1405
    const-string p2, "gradation"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/high16 v0, 0x437f0000    # 255.0f

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 1408
    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    const/4 p3, 0x1

    .line 1409
    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    .line 1410
    new-instance v1, Landroid/graphics/LinearGradient;

    iget p4, p6, Landroid/graphics/Rect;->left:I

    int-to-float v2, p4

    iget p4, p6, Landroid/graphics/Rect;->top:I

    int-to-float v3, p4

    iget p4, p6, Landroid/graphics/Rect;->right:I

    int-to-float v4, p4

    iget p4, p6, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, p4

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 1411
    iget-object p2, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mColor:Landroid/graphics/Paint;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1412
    iget-object p2, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mColor:Landroid/graphics/Paint;

    mul-float/2addr p5, v0

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-static {p3}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1413
    iget-object p2, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mColor:Landroid/graphics/Paint;

    invoke-virtual {p1, p6, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1414
    iget-object p1, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mColor:Landroid/graphics/Paint;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void

    .line 1416
    :cond_0
    const-string/jumbo p2, "standard"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1419
    iget-object p2, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mColor:Landroid/graphics/Paint;

    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1420
    iget-object p2, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mColor:Landroid/graphics/Paint;

    mul-float/2addr p5, v0

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-static {p3}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1421
    iget-object p2, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mColor:Landroid/graphics/Paint;

    invoke-virtual {p1, p6, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_1
    return-void

    .line 1427
    :cond_2
    iget-object p2, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mColor:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1428
    iget-object p2, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mColor:Landroid/graphics/Paint;

    const/high16 p3, 0x40000000    # 2.0f

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1429
    iget-object p2, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mColor:Landroid/graphics/Paint;

    const/16 p3, 0xc7

    invoke-static {p3, p3, p3}, Landroid/graphics/Color;->rgb(III)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1430
    iget-object p2, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mColor:Landroid/graphics/Paint;

    const/16 p3, 0xff

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1431
    iget-object p2, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mColor:Landroid/graphics/Paint;

    invoke-virtual {p1, p6, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1432
    iget p2, p6, Landroid/graphics/Rect;->left:I

    int-to-float v1, p2

    iget p2, p6, Landroid/graphics/Rect;->top:I

    int-to-float v2, p2

    iget p2, p6, Landroid/graphics/Rect;->right:I

    int-to-float v3, p2

    iget p2, p6, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, p2

    iget-object v5, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mColor:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawLinePreview(Landroid/graphics/Canvas;IFLandroid/graphics/Rect;)V
    .locals 2

    .line 1384
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mLineBack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1386
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mColor:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1387
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mColor:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1388
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mColor:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1389
    iget-object p2, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mColor:Landroid/graphics/Paint;

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p3, v0

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-static {p3}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1390
    iget-object p2, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mColor:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method private getDialogOrNull()Landroid/view/View;
    .locals 1

    .line 716
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/ShapeSettings;->getDialogView()Landroid/view/ViewGroup;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private initDlgValues()V
    .locals 9

    .line 739
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v0}, Lcom/metamoji/nt/share/NtPenStyle;->isPenId()Z

    move-result v0

    const-string v1, "com.metamoji.ink.builtin.standard1"

    const-string v2, "com.metamoji.pen.builtin.standard2"

    const-string v3, "com.metamoji.pen.builtin.standard1"

    const-string/jumbo v4, "standard"

    if-nez v0, :cond_2

    .line 742
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v0}, Lcom/metamoji/nt/share/NtPenStyle;->isType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 743
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v0}, Lcom/metamoji/nt/share/NtPenStyle;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 755
    iget-object v5, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    if-eqz v0, :cond_1

    .line 744
    invoke-virtual {v5}, Lcom/metamoji/nt/share/NtPenStyle;->getLineDash()Ljava/util/List;

    move-result-object v0

    .line 750
    iget-object v5, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    if-eqz v0, :cond_0

    .line 745
    invoke-virtual {v5}, Lcom/metamoji/nt/share/NtPenStyle;->getLineDash()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 746
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v0, v2}, Lcom/metamoji/nt/share/NtPenStyle;->setPenId(Ljava/lang/String;)V

    goto :goto_0

    .line 750
    :cond_0
    invoke-virtual {v5, v3}, Lcom/metamoji/nt/share/NtPenStyle;->setPenId(Ljava/lang/String;)V

    goto :goto_0

    .line 755
    :cond_1
    invoke-virtual {v5, v3}, Lcom/metamoji/nt/share/NtPenStyle;->setPenId(Ljava/lang/String;)V

    .line 756
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v0, v4}, Lcom/metamoji/nt/share/NtPenStyle;->setType(Ljava/lang/String;)V

    .line 757
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v0}, Lcom/metamoji/nt/share/NtPenStyle;->isInkType()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v0}, Lcom/metamoji/nt/share/NtPenStyle;->getInkType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 758
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v0, v4}, Lcom/metamoji/nt/share/NtPenStyle;->setInkType(Ljava/lang/String;)V

    .line 759
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/share/NtPenStyle;->setInkId(Ljava/lang/String;)V

    .line 762
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    new-instance v5, Lcom/metamoji/ui/dialog/ShapeSettings$26;

    invoke-direct {v5, p0}, Lcom/metamoji/ui/dialog/ShapeSettings$26;-><init>(Lcom/metamoji/ui/dialog/ShapeSettings;)V

    invoke-virtual {v0, v5}, Lcom/metamoji/nt/share/NtPenStyle;->setInkColors(Ljava/util/List;)V

    .line 768
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v0}, Lcom/metamoji/nt/share/NtPenStyle;->isPenId()Z

    move-result v0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_6

    .line 769
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v0}, Lcom/metamoji/nt/share/NtPenStyle;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 771
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v0, v3}, Lcom/metamoji/nt/share/NtPenStyle;->setPenId(Ljava/lang/String;)V

    .line 772
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v0, v4}, Lcom/metamoji/nt/share/NtPenStyle;->setType(Ljava/lang/String;)V

    .line 773
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v0}, Lcom/metamoji/nt/share/NtPenStyle;->isInkType()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v0}, Lcom/metamoji/nt/share/NtPenStyle;->getInkType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 774
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v0, v4}, Lcom/metamoji/nt/share/NtPenStyle;->setInkType(Ljava/lang/String;)V

    .line 775
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/share/NtPenStyle;->setInkId(Ljava/lang/String;)V

    .line 778
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    new-instance v1, Lcom/metamoji/ui/dialog/ShapeSettings$27;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/dialog/ShapeSettings$27;-><init>(Lcom/metamoji/ui/dialog/ShapeSettings;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/share/NtPenStyle;->setInkColors(Ljava/util/List;)V

    .line 782
    :cond_3
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v0}, Lcom/metamoji/nt/share/NtPenStyle;->getPenId()Ljava/lang/String;

    move-result-object v0

    .line 783
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 784
    sget v0, Lcom/metamoji/noteanytime/R$id;->pentypeStd1:I

    .line 785
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mGroupPenStandard:Lcom/metamoji/ui/common/UiRadioGroup;

    if-eqz v0, :cond_6

    .line 786
    invoke-virtual {v0, v6}, Lcom/metamoji/ui/common/UiRadioGroup;->setCurrentButtonIndex(I)V

    goto :goto_1

    .line 788
    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 790
    sget v0, Lcom/metamoji/noteanytime/R$id;->pentypeStd1:I

    .line 791
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mGroupPenStandard:Lcom/metamoji/ui/common/UiRadioGroup;

    if-eqz v0, :cond_6

    .line 792
    invoke-virtual {v0, v5}, Lcom/metamoji/ui/common/UiRadioGroup;->setCurrentButtonIndex(I)V

    goto :goto_1

    .line 795
    :cond_5
    sget v0, Lcom/metamoji/noteanytime/R$id;->pentypeStd1:I

    .line 800
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v0}, Lcom/metamoji/nt/share/NtPenStyle;->isFillType()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_8

    .line 801
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    iget-object v0, v0, Lcom/metamoji/nt/share/NtPenStyle;->fillType:Ljava/lang/String;

    const-string v2, "none"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 802
    iput v6, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mFillShapeState:I

    .line 803
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mButtonShapeFill:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {v0, v6}, Lcom/metamoji/ui/common/UiButton;->setSelected(Z)V

    goto :goto_2

    .line 806
    :cond_7
    iput v5, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mFillShapeState:I

    .line 807
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mButtonShapeFill:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {v0, v5}, Lcom/metamoji/ui/common/UiButton;->setSelected(Z)V

    goto :goto_2

    .line 811
    :cond_8
    iput v1, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mFillShapeState:I

    .line 813
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mButtonShapeFill:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiButton;->setCheckBoxUnknown()V

    .line 816
    :goto_2
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v0}, Lcom/metamoji/nt/share/NtPenStyle;->isLineColor()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v0}, Lcom/metamoji/nt/share/NtPenStyle;->getInkColors()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_9

    .line 818
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    new-instance v2, Lcom/metamoji/ui/dialog/ShapeSettings$28;

    invoke-direct {v2, p0}, Lcom/metamoji/ui/dialog/ShapeSettings$28;-><init>(Lcom/metamoji/ui/dialog/ShapeSettings;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/nt/share/NtPenStyle;->setInkColors(Ljava/util/List;)V

    .line 827
    :cond_9
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v0}, Lcom/metamoji/nt/share/NtPenStyle;->getInkColors()Ljava/util/List;

    move-result-object v0

    const/high16 v2, -0x1000000

    if-eqz v0, :cond_a

    .line 830
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v1, :cond_a

    .line 831
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 832
    iget-object v4, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mColorSelectionView_Line:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v3, v0, v6}, Lcom/metamoji/ui/common/UiColorSelectionView2;->selectItemByColor(IIZ)Z

    move-result v0

    goto :goto_3

    .line 833
    :cond_a
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v0}, Lcom/metamoji/nt/share/NtPenStyle;->isLineColor()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 834
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v0}, Lcom/metamoji/nt/share/NtPenStyle;->getLineColor()I

    move-result v3

    .line 835
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mColorSelectionView_Line:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-virtual {v0, v3, v6}, Lcom/metamoji/ui/common/UiColorSelectionView2;->selectItemByColor(IZ)Z

    move-result v0

    goto :goto_3

    :cond_b
    move v3, v2

    move v0, v6

    :goto_3
    if-nez v0, :cond_c

    .line 837
    iget-boolean v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mChangeStyle:Z

    if-nez v0, :cond_c

    .line 839
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mColorSelectionView_Line:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/common/UiColorSelectionView2;->selectItemByColor(I)Z

    move v3, v2

    .line 843
    :cond_c
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v0}, Lcom/metamoji/nt/share/NtPenStyle;->getFillColors()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 847
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v1, :cond_d

    .line 848
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 849
    iget-object v7, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mColorSelectionView_Fill:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v7, v4, v0, v6}, Lcom/metamoji/ui/common/UiColorSelectionView2;->selectItemByColor(IIZ)Z

    move-result v0

    goto :goto_4

    .line 850
    :cond_d
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v5, :cond_e

    .line 851
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 852
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mColorSelectionView_Fill:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-virtual {v0, v4, v6}, Lcom/metamoji/ui/common/UiColorSelectionView2;->selectItemByColor(IZ)Z

    move-result v0

    goto :goto_4

    :cond_e
    move v4, v2

    move v0, v6

    :goto_4
    if-nez v0, :cond_f

    .line 855
    iget-boolean v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mChangeStyle:Z

    if-nez v0, :cond_f

    .line 857
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mColorSelectionView_Fill:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/common/UiColorSelectionView2;->selectItemByColor(I)Z

    goto :goto_5

    :cond_f
    move v2, v4

    .line 861
    :goto_5
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mColorSelectionView_Line:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiColorSelectionView2;->getSelectedGroup()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/nt/NtInkManager;->getGroupNameNumber(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v5, :cond_11

    .line 866
    iget-object v4, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mBottlesRadioGroup_Line:Lcom/metamoji/ui/common/UiRadioContoller;

    if-eq v0, v1, :cond_10

    .line 870
    sget v0, Lcom/metamoji/noteanytime/R$id;->bottle0_line:I

    invoke-virtual {v4, v0}, Lcom/metamoji/ui/common/UiRadioContoller;->select(I)V

    goto :goto_6

    .line 866
    :cond_10
    sget v0, Lcom/metamoji/noteanytime/R$id;->bottle2_line:I

    invoke-virtual {v4, v0}, Lcom/metamoji/ui/common/UiRadioContoller;->select(I)V

    goto :goto_6

    .line 863
    :cond_11
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mBottlesRadioGroup_Line:Lcom/metamoji/ui/common/UiRadioContoller;

    sget v4, Lcom/metamoji/noteanytime/R$id;->bottle1_line:I

    invoke-virtual {v0, v4}, Lcom/metamoji/ui/common/UiRadioContoller;->select(I)V

    .line 875
    :goto_6
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mColorSelectionView_Fill:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiColorSelectionView2;->getSelectedGroup()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/nt/NtInkManager;->getGroupNameNumber(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v5, :cond_13

    .line 880
    iget-object v4, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mBottlesRadioGroup_Fill:Lcom/metamoji/ui/common/UiRadioContoller;

    if-eq v0, v1, :cond_12

    .line 884
    sget v0, Lcom/metamoji/noteanytime/R$id;->bottle0_fill:I

    invoke-virtual {v4, v0}, Lcom/metamoji/ui/common/UiRadioContoller;->select(I)V

    goto :goto_7

    .line 880
    :cond_12
    sget v0, Lcom/metamoji/noteanytime/R$id;->bottle2_fill:I

    invoke-virtual {v4, v0}, Lcom/metamoji/ui/common/UiRadioContoller;->select(I)V

    goto :goto_7

    .line 877
    :cond_13
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mBottlesRadioGroup_Fill:Lcom/metamoji/ui/common/UiRadioContoller;

    sget v1, Lcom/metamoji/noteanytime/R$id;->bottle1_fill:I

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiRadioContoller;->select(I)V

    .line 889
    :goto_7
    iget v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mColorViewCurrentPage_Line:I

    if-ltz v0, :cond_14

    .line 890
    iget-object v1, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mColorSelectionView_Line:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/common/UiColorSelectionView2;->reservePage(I)V

    .line 893
    :cond_14
    iget v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mColorViewCurrentPage_Fill:I

    if-ltz v0, :cond_15

    .line 894
    iget-object v1, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mColorSelectionView_Fill:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/common/UiColorSelectionView2;->reservePage(I)V

    .line 898
    :cond_15
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v0}, Lcom/metamoji/nt/share/NtPenStyle;->isLineWidth()Z

    move-result v0

    .line 903
    iget-object v1, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mSliderWeight:Lcom/metamoji/ui/common/UiPlainSlider;

    if-eqz v0, :cond_16

    .line 899
    invoke-virtual {v1, v5}, Lcom/metamoji/ui/common/UiPlainSlider;->setEnabled(Z)V

    .line 900
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mSliderWeight:Lcom/metamoji/ui/common/UiPlainSlider;

    iget-object v1, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v1}, Lcom/metamoji/nt/share/NtPenStyle;->getLineWidth()F

    move-result v1

    const/high16 v4, 0x40a00000    # 5.0f

    mul-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiPlainSlider;->setCurrentValue(I)V

    goto :goto_8

    .line 903
    :cond_16
    invoke-virtual {v1, v6}, Lcom/metamoji/ui/common/UiPlainSlider;->setEnabled(Z)V

    .line 904
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mSliderWeight:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiPlainSlider;->setNoValue()V

    .line 905
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mSliderWeight:Lcom/metamoji/ui/common/UiPlainSlider;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiPlainSlider;->setCurrentValue(I)V

    .line 908
    :goto_8
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v0}, Lcom/metamoji/nt/share/NtPenStyle;->isLineAlpha()Z

    move-result v0

    .line 913
    iget-object v1, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mSliderOpacity:Lcom/metamoji/ui/common/UiPlainSlider;

    const/high16 v4, 0x42c80000    # 100.0f

    const/16 v7, 0x64

    if-eqz v0, :cond_17

    .line 909
    invoke-virtual {v1, v5}, Lcom/metamoji/ui/common/UiPlainSlider;->setEnabled(Z)V

    .line 910
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mSliderOpacity:Lcom/metamoji/ui/common/UiPlainSlider;

    iget-object v1, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v1}, Lcom/metamoji/nt/share/NtPenStyle;->getLineAlpha()F

    move-result v1

    mul-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiPlainSlider;->setCurrentValue(I)V

    goto :goto_9

    .line 913
    :cond_17
    invoke-virtual {v1, v6}, Lcom/metamoji/ui/common/UiPlainSlider;->setEnabled(Z)V

    .line 914
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mSliderOpacity:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiPlainSlider;->setNoValue()V

    .line 915
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mSliderOpacity:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-virtual {v0, v7}, Lcom/metamoji/ui/common/UiPlainSlider;->setCurrentValue(I)V

    .line 917
    :goto_9
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mSliderOpacity:Lcom/metamoji/ui/common/UiPlainSlider;

    const v1, 0xffffff

    and-int v8, v3, v1

    invoke-virtual {v0, v8, v3}, Lcom/metamoji/ui/common/UiPlainSlider;->setSliderColor(II)V

    .line 919
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v0}, Lcom/metamoji/nt/share/NtPenStyle;->isFillAlpha()Z

    move-result v0

    .line 924
    iget-object v3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mSliderOpacity_Fill:Lcom/metamoji/ui/common/UiPlainSlider;

    if-eqz v0, :cond_18

    .line 920
    invoke-virtual {v3, v5}, Lcom/metamoji/ui/common/UiPlainSlider;->setEnabled(Z)V

    .line 921
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mSliderOpacity_Fill:Lcom/metamoji/ui/common/UiPlainSlider;

    iget-object v3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v3}, Lcom/metamoji/nt/share/NtPenStyle;->getFillAlpha()F

    move-result v3

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/metamoji/ui/common/UiPlainSlider;->setCurrentValue(I)V

    goto :goto_a

    .line 924
    :cond_18
    invoke-virtual {v3, v6}, Lcom/metamoji/ui/common/UiPlainSlider;->setEnabled(Z)V

    .line 925
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mSliderOpacity_Fill:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiPlainSlider;->setNoValue()V

    .line 926
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mSliderOpacity_Fill:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-virtual {v0, v7}, Lcom/metamoji/ui/common/UiPlainSlider;->setCurrentValue(I)V

    .line 928
    :goto_a
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mSliderOpacity_Fill:Lcom/metamoji/ui/common/UiPlainSlider;

    and-int/2addr v1, v2

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/ui/common/UiPlainSlider;->setSliderColor(II)V

    return-void
.end method

.method private initWeightPreset()V
    .locals 4

    .line 723
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/ShapeSettings;->getDialogOrNull()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 725
    sget-object v1, Lcom/metamoji/ui/dialog/ShapeSettings;->mWeightPresetIds:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 726
    sget-object v2, Lcom/metamoji/ui/dialog/ShapeSettings;->mWeightPresetIds:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ui/common/UiButton;

    .line 727
    sget-object v3, Lcom/metamoji/ui/dialog/ShapeSettings;->mWeightPresetStandard:[I

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/metamoji/ui/common/UiButton;->setMainTitle(Ljava/lang/CharSequence;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setShowPage_Fill(IZ)V
    .locals 2

    .line 613
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mColorSelectionView_Fill:Lcom/metamoji/ui/common/UiColorSelectionView2;

    if-nez v0, :cond_0

    return-void

    .line 615
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mBottle_Fill:[Lcom/metamoji/ui/common/UiImageRadioButton;

    aget-object v0, v0, p1

    if-eqz p2, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiImageRadioButton;->setVisibility(I)V

    .line 616
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mColorSelectionView_Fill:Lcom/metamoji/ui/common/UiColorSelectionView2;

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/ui/common/UiColorSelectionView2;->hidePage(IZ)V

    return-void
.end method

.method private setShowPage_Line(IZ)V
    .locals 2

    .line 606
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mColorSelectionView_Line:Lcom/metamoji/ui/common/UiColorSelectionView2;

    if-nez v0, :cond_0

    return-void

    .line 608
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mBottle_Line:[Lcom/metamoji/ui/common/UiImageRadioButton;

    aget-object v0, v0, p1

    if-eqz p2, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiImageRadioButton;->setVisibility(I)V

    .line 609
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mColorSelectionView_Line:Lcom/metamoji/ui/common/UiColorSelectionView2;

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/ui/common/UiColorSelectionView2;->hidePage(IZ)V

    return-void
.end method

.method private setShowWheelPage_Fill()V
    .locals 3

    .line 625
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v0}, Lcom/metamoji/nt/share/NtPenStyle;->isFillType()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v0}, Lcom/metamoji/nt/share/NtPenStyle;->getFillType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "gradation"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 628
    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/metamoji/ui/dialog/ShapeSettings;->setShowPage_Fill(IZ)V

    const/4 v2, 0x2

    xor-int/2addr v0, v1

    .line 629
    invoke-direct {p0, v2, v0}, Lcom/metamoji/ui/dialog/ShapeSettings;->setShowPage_Fill(IZ)V

    return-void
.end method

.method private setShowWheelPage_Line()V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 620
    invoke-direct {p0, v0, v1}, Lcom/metamoji/ui/dialog/ShapeSettings;->setShowPage_Line(IZ)V

    return-void
.end method

.method private subDone()V
    .locals 6

    .line 1212
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/ShapeSettings;->updateValues()V

    .line 1215
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mColorSelectionView_Line:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {v0}, Lcom/metamoji/nt/NtInkManager;->saveColorHistoryPen(Lcom/metamoji/ui/common/UiColorSelectionView2;)V

    .line 1216
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mColorSelectionView_Fill:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {v0}, Lcom/metamoji/nt/NtInkManager;->saveColorHistoryFill(Lcom/metamoji/ui/common/UiColorSelectionView2;)V

    .line 1218
    iget-boolean v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mChangeStyle:Z

    if-nez v0, :cond_7

    .line 1220
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 1221
    iget-object v1, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    iget-object v1, v1, Lcom/metamoji/nt/share/NtPenStyle;->lineDash:Ljava/util/List;

    .line 1222
    const-string v2, "ShapeLineDash"

    if-eqz v1, :cond_1

    .line 1226
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    .line 1227
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 1228
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/metamoji/cm/CmUtils;->toDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1229
    :cond_0
    invoke-virtual {v0, v2, v3}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    .line 1232
    :cond_1
    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtUserDefaults;->removeValue(Ljava/lang/String;)V

    .line 1234
    :goto_1
    iget-object v1, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v1}, Lcom/metamoji/nt/share/NtPenStyle;->getInkColors()Ljava/util/List;

    move-result-object v1

    .line 1235
    const-string v2, "ShapeLineColors"

    if-eqz v1, :cond_2

    .line 1236
    invoke-virtual {v0, v2, v1}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_2

    .line 1239
    :cond_2
    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtUserDefaults;->removeValue(Ljava/lang/String;)V

    .line 1241
    :goto_2
    iget-object v1, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    iget v1, v1, Lcom/metamoji/nt/share/NtPenStyle;->lineAlpha:F

    const-string v2, "ShapeLineAlpha"

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;F)V

    .line 1242
    iget-object v1, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    iget v1, v1, Lcom/metamoji/nt/share/NtPenStyle;->lineWidth:F

    const-string v2, "ShapeLineWidth"

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;F)V

    .line 1243
    iget-object v1, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v1}, Lcom/metamoji/nt/share/NtPenStyle;->isFillType()Z

    move-result v1

    const-string v2, "ShapeFillType"

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    iget-object v1, v1, Lcom/metamoji/nt/share/NtPenStyle;->fillType:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 1244
    iget-object v1, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    iget-object v1, v1, Lcom/metamoji/nt/share/NtPenStyle;->fillType:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1247
    :cond_3
    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtUserDefaults;->removeValue(Ljava/lang/String;)V

    .line 1249
    :goto_3
    iget-object v1, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v1}, Lcom/metamoji/nt/share/NtPenStyle;->isFillType()Z

    move-result v1

    const-string v2, "ShapeFillAlpha"

    const-string v3, "ShapeFillColors"

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    iget-object v1, v1, Lcom/metamoji/nt/share/NtPenStyle;->fillType:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    iget-object v1, v1, Lcom/metamoji/nt/share/NtPenStyle;->fillType:Ljava/lang/String;

    const-string/jumbo v4, "standard"

    .line 1250
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    iget-object v1, v1, Lcom/metamoji/nt/share/NtPenStyle;->fillType:Ljava/lang/String;

    const-string v4, "gradation"

    .line 1251
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1252
    :cond_4
    iget-object v1, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v1}, Lcom/metamoji/nt/share/NtPenStyle;->getFillColors()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1254
    invoke-virtual {v0, v3, v1}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_4

    .line 1257
    :cond_5
    invoke-virtual {v0, v3}, Lcom/metamoji/nt/NtUserDefaults;->removeValue(Ljava/lang/String;)V

    .line 1259
    :goto_4
    iget-object v1, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    iget v1, v1, Lcom/metamoji/nt/share/NtPenStyle;->fillAlpha:F

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;F)V

    goto :goto_5

    .line 1262
    :cond_6
    invoke-virtual {v0, v3}, Lcom/metamoji/nt/NtUserDefaults;->removeValue(Ljava/lang/String;)V

    .line 1263
    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtUserDefaults;->removeValue(Ljava/lang/String;)V

    .line 1265
    :goto_5
    iget-object v1, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    iget-object v1, v1, Lcom/metamoji/nt/share/NtPenStyle;->arrowType:Ljava/lang/String;

    const-string v2, "ShapeArrowType"

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1266
    iget-object v1, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    iget-object v1, v1, Lcom/metamoji/nt/share/NtPenStyle;->arrowKinds:Ljava/lang/String;

    const-string v2, "ShapeArrowKinds"

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method private updateSample()V
    .locals 4

    .line 1275
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mGroupShapeSetting:Lcom/metamoji/ui/common/UiRadioGroup;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiRadioGroup;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_2

    .line 1276
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mGroupShapeSetting:Lcom/metamoji/ui/common/UiRadioGroup;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiRadioGroup;->getCurrentButtonIndex()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 1285
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mGroupPenStandard:Lcom/metamoji/ui/common/UiRadioGroup;

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/common/UiRadioGroup;->setVisibility(I)V

    .line 1286
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mButtonShapeFill:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    .line 1288
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyleLine:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1289
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyleFill:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1278
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mGroupPenStandard:Lcom/metamoji/ui/common/UiRadioGroup;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiRadioGroup;->setVisibility(I)V

    .line 1279
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mButtonShapeFill:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    .line 1281
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyleLine:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1282
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyleFill:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1295
    :cond_2
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mGroupPenStandard:Lcom/metamoji/ui/common/UiRadioGroup;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiRadioGroup;->setVisibility(I)V

    .line 1296
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mButtonShapeFill:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    .line 1298
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyleLine:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1299
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyleFill:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1302
    :goto_0
    iget-boolean v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mDisableUpdate:Z

    if-nez v0, :cond_6

    .line 1303
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/ShapeSettings;->updateValues()V

    .line 1306
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v0}, Lcom/metamoji/nt/share/NtPenStyle;->isType()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v0}, Lcom/metamoji/nt/share/NtPenStyle;->isLineColor()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v0}, Lcom/metamoji/nt/share/NtPenStyle;->isLineAlpha()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v0}, Lcom/metamoji/nt/share/NtPenStyle;->isLineWidth()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1308
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v0}, Lcom/metamoji/nt/share/NtPenStyle;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "standard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v0}, Lcom/metamoji/nt/share/NtPenStyle;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "markerpen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1313
    :cond_3
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mDrawSample:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v1}, Lcom/metamoji/nt/share/NtPenStyle;->getLineColor()I

    move-result v1

    iget-object v2, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v2}, Lcom/metamoji/nt/share/NtPenStyle;->getInkColors()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/metamoji/nt/NtInkManager;->penPreviewBackgroundId(ILjava/util/List;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1314
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/ShapeSettings;->createPenPreviewImage()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 1317
    :cond_4
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mDrawSample:Landroid/widget/ImageView;

    sget v1, Lcom/metamoji/noteanytime/R$drawable;->hoverselector_pen_preview_frame:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const/4 v0, 0x0

    .line 1319
    :goto_1
    iget-object v1, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mDrawSample:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1320
    iget-object v1, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mSampleBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    .line 1321
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1323
    :cond_5
    iput-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mSampleBitmap:Landroid/graphics/Bitmap;

    :cond_6
    return-void
.end method

.method private updateStyleView(Lcom/metamoji/ui/common/UiButton;Z)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 633
    :goto_0
    iget-object v2, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyleButtonList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 634
    iget-object v2, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyleButtonList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ui/common/UiButton;

    .line 635
    invoke-virtual {v2}, Lcom/metamoji/ui/common/UiButton;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    .line 636
    invoke-virtual {v2, v0}, Lcom/metamoji/ui/common/UiButton;->setSelected(Z)V

    goto :goto_1

    .line 639
    :cond_0
    iget-object v3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyleViewList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-ne v2, p1, :cond_2

    if-eqz p2, :cond_1

    move v4, v0

    .line 641
    :cond_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 642
    invoke-virtual {v2, p2}, Lcom/metamoji/ui/common/UiButton;->setSelected(Z)V

    goto :goto_1

    .line 645
    :cond_2
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 646
    invoke-virtual {v2, v0}, Lcom/metamoji/ui/common/UiButton;->setSelected(Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 650
    :cond_3
    iget-object v1, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v1, :cond_5

    if-eqz p1, :cond_5

    if-eqz p2, :cond_4

    .line 651
    invoke-virtual {p1}, Lcom/metamoji/ui/common/UiButton;->getTop()I

    move-result v0

    .line 652
    :cond_4
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    .line 653
    new-instance p2, Lcom/metamoji/ui/dialog/ShapeSettings$24;

    invoke-direct {p2, p0, p1, v0}, Lcom/metamoji/ui/dialog/ShapeSettings$24;-><init>(Lcom/metamoji/ui/dialog/ShapeSettings;Lcom/metamoji/cm/CmTaskManager;I)V

    invoke-virtual {p1, p2}, Lcom/metamoji/cm/CmTaskManager;->requestRunOnBackground(Ljava/lang/Runnable;)Ljava/util/concurrent/ScheduledFuture;

    :cond_5
    return-void
.end method

.method private updateStyleView_Fill(Lcom/metamoji/ui/common/UiButton;Z)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 668
    :goto_0
    iget-object v2, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyleButtonList_Fill:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 669
    iget-object v2, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyleButtonList_Fill:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ui/common/UiButton;

    .line 670
    invoke-virtual {v2}, Lcom/metamoji/ui/common/UiButton;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    .line 671
    invoke-virtual {v2, v0}, Lcom/metamoji/ui/common/UiButton;->setSelected(Z)V

    goto :goto_1

    .line 674
    :cond_0
    iget-object v3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyleViewList_Fill:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-ne v2, p1, :cond_2

    if-eqz p2, :cond_1

    move v4, v0

    .line 676
    :cond_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 677
    invoke-virtual {v2, p2}, Lcom/metamoji/ui/common/UiButton;->setSelected(Z)V

    goto :goto_1

    .line 680
    :cond_2
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 681
    invoke-virtual {v2, v0}, Lcom/metamoji/ui/common/UiButton;->setSelected(Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 685
    :cond_3
    iget-object v1, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v1, :cond_5

    if-eqz p1, :cond_5

    if-eqz p2, :cond_4

    .line 686
    invoke-virtual {p1}, Lcom/metamoji/ui/common/UiButton;->getTop()I

    move-result v0

    .line 687
    :cond_4
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    .line 688
    new-instance p2, Lcom/metamoji/ui/dialog/ShapeSettings$25;

    invoke-direct {p2, p0, p1, v0}, Lcom/metamoji/ui/dialog/ShapeSettings$25;-><init>(Lcom/metamoji/ui/dialog/ShapeSettings;Lcom/metamoji/cm/CmTaskManager;I)V

    invoke-virtual {p1, p2}, Lcom/metamoji/cm/CmTaskManager;->requestRunOnBackground(Ljava/lang/Runnable;)Ljava/util/concurrent/ScheduledFuture;

    :cond_5
    return-void
.end method

.method private updateValues()V
    .locals 5

    .line 1067
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/ShapeSettings;->getDialogOrNull()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1072
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mColorSelectionView_Line:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiColorSelectionView2;->isSelectColorAvailable()Z

    move-result v0

    const-string v1, "gradation"

    const-string/jumbo v2, "standard"

    const/4 v3, 0x2

    if-eqz v0, :cond_2

    .line 1073
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1074
    iget-object v4, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mColorSelectionView_Line:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-virtual {v4}, Lcom/metamoji/ui/common/UiColorSelectionView2;->getSelectedColor()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1075
    iget-object v4, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mColorSelectionView_Line:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-virtual {v4}, Lcom/metamoji/ui/common/UiColorSelectionView2;->isGradationColorSelected()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1076
    iget-object v4, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mColorSelectionView_Line:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-virtual {v4}, Lcom/metamoji/ui/common/UiColorSelectionView2;->getSelectedColor2()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1077
    iget-object v4, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v4, v1}, Lcom/metamoji/nt/share/NtPenStyle;->setInkType(Ljava/lang/String;)V

    goto :goto_0

    .line 1079
    :cond_1
    iget-object v4, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v4, v2}, Lcom/metamoji/nt/share/NtPenStyle;->setInkType(Ljava/lang/String;)V

    .line 1081
    :goto_0
    iget-object v4, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v4, v0}, Lcom/metamoji/nt/share/NtPenStyle;->setInkColors(Ljava/util/List;)V

    .line 1087
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/metamoji/nt/share/NtPenStyle;->setInkId(Ljava/lang/String;)V

    .line 1089
    :cond_2
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mColorSelectionView_Line:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiColorSelectionView2;->getCurrentPage()I

    move-result v0

    iput v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mColorViewCurrentPage_Line:I

    .line 1091
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mColorSelectionView_Fill:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiColorSelectionView2;->isSelectColorAvailable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1092
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1093
    iget-object v3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mColorSelectionView_Fill:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-virtual {v3}, Lcom/metamoji/ui/common/UiColorSelectionView2;->getSelectedColor()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1094
    iget-object v3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mColorSelectionView_Fill:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-virtual {v3}, Lcom/metamoji/ui/common/UiColorSelectionView2;->isGradationColorSelected()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1095
    iget-object v3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mColorSelectionView_Fill:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-virtual {v3}, Lcom/metamoji/ui/common/UiColorSelectionView2;->getSelectedColor2()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1097
    :cond_3
    iget-object v3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v3, v0}, Lcom/metamoji/nt/share/NtPenStyle;->setFillColors(Ljava/util/List;)V

    .line 1099
    :cond_4
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mColorSelectionView_Fill:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiColorSelectionView2;->getCurrentPage()I

    move-result v0

    iput v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mColorViewCurrentPage_Fill:I

    .line 1101
    iget v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mFillShapeState:I

    if-nez v0, :cond_5

    .line 1103
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    const-string v1, "none"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/share/NtPenStyle;->setFillType(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const/4 v3, 0x1

    if-ne v0, v3, :cond_7

    .line 1106
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v0}, Lcom/metamoji/nt/share/NtPenStyle;->getFillColors()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1108
    iget-object v4, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_6

    goto :goto_1

    :cond_6
    move-object v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Lcom/metamoji/nt/share/NtPenStyle;->setFillType(Ljava/lang/String;)V

    .line 1112
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mSliderWeight:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiPlainSlider;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1113
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    iget-object v1, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mSliderWeight:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-virtual {v1}, Lcom/metamoji/ui/common/UiPlainSlider;->getCurrentValue()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40a00000    # 5.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/share/NtPenStyle;->setLineWidth(F)V

    .line 1115
    :cond_8
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mSliderOpacity:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiPlainSlider;->isEnabled()Z

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    if-eqz v0, :cond_9

    .line 1116
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    iget-object v2, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mSliderOpacity:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-virtual {v2}, Lcom/metamoji/ui/common/UiPlainSlider;->getCurrentValue()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/metamoji/nt/share/NtPenStyle;->setLineAlpha(F)V

    .line 1118
    :cond_9
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mSliderOpacity_Fill:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiPlainSlider;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1119
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    iget-object v2, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mSliderOpacity_Fill:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-virtual {v2}, Lcom/metamoji/ui/common/UiPlainSlider;->getCurrentValue()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/metamoji/nt/share/NtPenStyle;->setFillAlpha(F)V

    .line 1126
    :cond_a
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/ShapeSettings;->updateValuesSub()V

    return-void
.end method

.method private updateValuesSub()V
    .locals 17

    move-object/from16 v0, p0

    .line 953
    invoke-virtual {v0}, Lcom/metamoji/ui/dialog/ShapeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 954
    iget-object v2, v0, Lcom/metamoji/ui/dialog/ShapeSettings;->mGroupPenStandard:Lcom/metamoji/ui/common/UiRadioGroup;

    const-string/jumbo v3, "standard"

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/metamoji/ui/common/UiRadioGroup;->getCurrentButtonIndex()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 955
    iget-object v2, v0, Lcom/metamoji/ui/dialog/ShapeSettings;->mDefaultStd2:Lcom/metamoji/nt/share/NtPenStyle;

    const-string v5, "com.metamoji.pen.builtin.standard2"

    invoke-virtual {v0, v5, v2}, Lcom/metamoji/ui/dialog/ShapeSettings;->getDefaultStyle(Ljava/lang/String;Lcom/metamoji/nt/share/NtPenStyle;)Lcom/metamoji/nt/share/NtPenStyle;

    move-result-object v2

    iput-object v2, v0, Lcom/metamoji/ui/dialog/ShapeSettings;->mDefaultStd2:Lcom/metamoji/nt/share/NtPenStyle;

    .line 956
    iget-object v6, v0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v6, v3}, Lcom/metamoji/nt/share/NtPenStyle;->setType(Ljava/lang/String;)V

    .line 957
    iget-object v3, v0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v3, v5}, Lcom/metamoji/nt/share/NtPenStyle;->setPenId(Ljava/lang/String;)V

    goto :goto_0

    .line 960
    :cond_0
    iget-object v2, v0, Lcom/metamoji/ui/dialog/ShapeSettings;->mDefaultStd1:Lcom/metamoji/nt/share/NtPenStyle;

    const-string v5, "com.metamoji.pen.builtin.standard1"

    invoke-virtual {v0, v5, v2}, Lcom/metamoji/ui/dialog/ShapeSettings;->getDefaultStyle(Ljava/lang/String;Lcom/metamoji/nt/share/NtPenStyle;)Lcom/metamoji/nt/share/NtPenStyle;

    move-result-object v2

    iput-object v2, v0, Lcom/metamoji/ui/dialog/ShapeSettings;->mDefaultStd1:Lcom/metamoji/nt/share/NtPenStyle;

    .line 961
    iget-object v6, v0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v6, v3}, Lcom/metamoji/nt/share/NtPenStyle;->setType(Ljava/lang/String;)V

    .line 962
    iget-object v3, v0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v3, v5}, Lcom/metamoji/nt/share/NtPenStyle;->setPenId(Ljava/lang/String;)V

    :goto_0
    if-eqz v2, :cond_1

    .line 965
    iget-object v3, v0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v2}, Lcom/metamoji/nt/share/NtPenStyle;->getPenAngle()F

    move-result v5

    invoke-virtual {v3, v5}, Lcom/metamoji/nt/share/NtPenStyle;->setPenAngle(F)V

    .line 966
    iget-object v3, v0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v2}, Lcom/metamoji/nt/share/NtPenStyle;->getPenRate()F

    move-result v5

    invoke-virtual {v3, v5}, Lcom/metamoji/nt/share/NtPenStyle;->setPenRate(F)V

    .line 967
    iget-object v3, v0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v2}, Lcom/metamoji/nt/share/NtPenStyle;->getLineDash()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/metamoji/nt/share/NtPenStyle;->setLineDash(Ljava/util/List;)V

    :cond_1
    if-eqz v2, :cond_2

    .line 970
    iget-object v3, v0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v2}, Lcom/metamoji/nt/share/NtPenStyle;->getTrans()F

    move-result v5

    invoke-virtual {v3, v5}, Lcom/metamoji/nt/share/NtPenStyle;->setTrans(F)V

    .line 972
    iget-object v3, v0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v2}, Lcom/metamoji/nt/share/NtPenStyle;->getBeginStay()F

    move-result v5

    invoke-virtual {v3, v5}, Lcom/metamoji/nt/share/NtPenStyle;->setBeginStay(F)V

    .line 973
    iget-object v3, v0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v2}, Lcom/metamoji/nt/share/NtPenStyle;->getBeginStayRate()F

    move-result v5

    invoke-virtual {v3, v5}, Lcom/metamoji/nt/share/NtPenStyle;->setBeginStayRate(F)V

    .line 974
    iget-object v3, v0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v2}, Lcom/metamoji/nt/share/NtPenStyle;->getBeginStayDelta()F

    move-result v5

    invoke-virtual {v3, v5}, Lcom/metamoji/nt/share/NtPenStyle;->setBeginStayDelta(F)V

    .line 975
    iget-object v3, v0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v2}, Lcom/metamoji/nt/share/NtPenStyle;->getBeginRun()F

    move-result v5

    invoke-virtual {v3, v5}, Lcom/metamoji/nt/share/NtPenStyle;->setBeginRun(F)V

    .line 976
    iget-object v3, v0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v2}, Lcom/metamoji/nt/share/NtPenStyle;->getBeginRunRate()F

    move-result v5

    invoke-virtual {v3, v5}, Lcom/metamoji/nt/share/NtPenStyle;->setBeginRunRate(F)V

    .line 977
    iget-object v3, v0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v2}, Lcom/metamoji/nt/share/NtPenStyle;->getBeginRunDelta()F

    move-result v5

    invoke-virtual {v3, v5}, Lcom/metamoji/nt/share/NtPenStyle;->setBeginRunDelta(F)V

    .line 979
    iget-object v3, v0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v2}, Lcom/metamoji/nt/share/NtPenStyle;->getEndStay()F

    move-result v5

    invoke-virtual {v3, v5}, Lcom/metamoji/nt/share/NtPenStyle;->setEndStay(F)V

    .line 980
    iget-object v3, v0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v2}, Lcom/metamoji/nt/share/NtPenStyle;->getEndStayRate()F

    move-result v5

    invoke-virtual {v3, v5}, Lcom/metamoji/nt/share/NtPenStyle;->setEndStayRate(F)V

    .line 981
    iget-object v3, v0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v2}, Lcom/metamoji/nt/share/NtPenStyle;->getEndStayDelta()F

    move-result v5

    invoke-virtual {v3, v5}, Lcom/metamoji/nt/share/NtPenStyle;->setEndStayDelta(F)V

    .line 982
    iget-object v3, v0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v2}, Lcom/metamoji/nt/share/NtPenStyle;->getEndRun()F

    move-result v5

    invoke-virtual {v3, v5}, Lcom/metamoji/nt/share/NtPenStyle;->setEndRun(F)V

    .line 983
    iget-object v3, v0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v2}, Lcom/metamoji/nt/share/NtPenStyle;->getEndRunRate()F

    move-result v5

    invoke-virtual {v3, v5}, Lcom/metamoji/nt/share/NtPenStyle;->setEndRunRate(F)V

    .line 984
    iget-object v3, v0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v2}, Lcom/metamoji/nt/share/NtPenStyle;->getEndRunDelta()F

    move-result v5

    invoke-virtual {v3, v5}, Lcom/metamoji/nt/share/NtPenStyle;->setEndRunDelta(F)V

    .line 986
    iget-object v3, v0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v2}, Lcom/metamoji/nt/share/NtPenStyle;->getTailStay()F

    move-result v5

    invoke-virtual {v3, v5}, Lcom/metamoji/nt/share/NtPenStyle;->setTailStay(F)V

    .line 987
    iget-object v3, v0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v2}, Lcom/metamoji/nt/share/NtPenStyle;->getTailStayRate()F

    move-result v5

    invoke-virtual {v3, v5}, Lcom/metamoji/nt/share/NtPenStyle;->setTailStayRate(F)V

    .line 988
    iget-object v3, v0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v2}, Lcom/metamoji/nt/share/NtPenStyle;->getTailStayDelta()F

    move-result v5

    invoke-virtual {v3, v5}, Lcom/metamoji/nt/share/NtPenStyle;->setTailStayDelta(F)V

    .line 989
    iget-object v3, v0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v2}, Lcom/metamoji/nt/share/NtPenStyle;->getTailRun()F

    move-result v5

    invoke-virtual {v3, v5}, Lcom/metamoji/nt/share/NtPenStyle;->setTailRun(F)V

    .line 990
    iget-object v3, v0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v2}, Lcom/metamoji/nt/share/NtPenStyle;->getTailRunRate()F

    move-result v5

    invoke-virtual {v3, v5}, Lcom/metamoji/nt/share/NtPenStyle;->setTailRunRate(F)V

    .line 991
    iget-object v3, v0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v2}, Lcom/metamoji/nt/share/NtPenStyle;->getTailRunDelta()F

    move-result v2

    invoke-virtual {v3, v2}, Lcom/metamoji/nt/share/NtPenStyle;->setTailRunDelta(F)V

    .line 993
    :cond_2
    iget-object v2, v0, Lcom/metamoji/ui/dialog/ShapeSettings;->mButtonInkColor:Lcom/metamoji/ui/common/UiButton;

    const/4 v3, 0x2

    const/4 v5, 0x0

    if-eqz v2, :cond_4

    .line 995
    iget-object v2, v0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v2}, Lcom/metamoji/nt/share/NtPenStyle;->getInkColors()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 996
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v3, :cond_3

    .line 997
    iget-object v6, v0, Lcom/metamoji/ui/dialog/ShapeSettings;->mButtonInkColor:Lcom/metamoji/ui/common/UiButton;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v6, v7, v2}, Lcom/metamoji/ui/common/UiButton;->setInkColor(II)V

    goto :goto_1

    .line 998
    :cond_3
    iget-object v2, v0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v2}, Lcom/metamoji/nt/share/NtPenStyle;->isLineColor()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 999
    iget-object v2, v0, Lcom/metamoji/ui/dialog/ShapeSettings;->mButtonInkColor:Lcom/metamoji/ui/common/UiButton;

    iget-object v6, v0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v6}, Lcom/metamoji/nt/share/NtPenStyle;->getLineColor()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/metamoji/ui/common/UiButton;->setInkColor(I)V

    .line 1002
    :cond_4
    :goto_1
    iget-object v2, v0, Lcom/metamoji/ui/dialog/ShapeSettings;->mButtonOpacity:Lcom/metamoji/ui/common/UiButton;

    const-string v6, "%d%%"

    const/high16 v7, 0x42c80000    # 100.0f

    const-string v8, ""

    const/4 v9, 0x0

    if-eqz v2, :cond_6

    .line 1005
    iget-object v2, v0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    iget v2, v2, Lcom/metamoji/nt/share/NtPenStyle;->lineAlpha:F

    cmpl-float v2, v2, v9

    if-ltz v2, :cond_5

    .line 1006
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    iget-object v10, v0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    iget v10, v10, Lcom/metamoji/nt/share/NtPenStyle;->lineAlpha:F

    mul-float/2addr v10, v7

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v2, v6, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_5
    move-object v2, v8

    .line 1008
    :goto_2
    iget-object v10, v0, Lcom/metamoji/ui/dialog/ShapeSettings;->mButtonOpacity:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {v10, v2}, Lcom/metamoji/ui/common/UiButton;->setSubTitle(Ljava/lang/CharSequence;)V

    .line 1010
    :cond_6
    iget-object v2, v0, Lcom/metamoji/ui/dialog/ShapeSettings;->mButtonThickness:Lcom/metamoji/ui/common/UiButton;

    if-eqz v2, :cond_8

    .line 1013
    iget-object v2, v0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    iget v2, v2, Lcom/metamoji/nt/share/NtPenStyle;->lineWidth:F

    cmpl-float v2, v2, v9

    if-ltz v2, :cond_7

    iget-object v2, v0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    iget v2, v2, Lcom/metamoji/nt/share/NtPenStyle;->lineWidth:F

    const/high16 v10, 0x40a00000    # 5.0f

    mul-float/2addr v2, v10

    cmpg-float v2, v2, v7

    if-gtz v2, :cond_7

    .line 1014
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    iget-object v11, v0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    iget v11, v11, Lcom/metamoji/nt/share/NtPenStyle;->lineWidth:F

    mul-float/2addr v11, v10

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    const-string v11, "%d"

    invoke-static {v2, v11, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_7
    move-object v2, v8

    .line 1016
    :goto_3
    iget-object v10, v0, Lcom/metamoji/ui/dialog/ShapeSettings;->mButtonThickness:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {v10, v2}, Lcom/metamoji/ui/common/UiButton;->setSubTitle(Ljava/lang/CharSequence;)V

    .line 1018
    :cond_8
    iget-object v2, v0, Lcom/metamoji/ui/dialog/ShapeSettings;->mButtonArrow:Lcom/metamoji/ui/common/UiButton;

    if-eqz v2, :cond_9

    iget-object v2, v0, Lcom/metamoji/ui/dialog/ShapeSettings;->mArrowStyle:Lcom/metamoji/nt/share/NtPenStyle;

    if-eqz v2, :cond_9

    .line 1020
    sget v2, Lcom/metamoji/noteanytime/R$dimen;->buttonImageWidth:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1021
    sget v10, Lcom/metamoji/noteanytime/R$dimen;->buttonImageHeight:I

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1022
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 1023
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1024
    new-instance v13, Landroid/graphics/RectF;

    int-to-float v2, v2

    int-to-float v1, v1

    invoke-direct {v13, v9, v9, v2, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1025
    iget-object v12, v0, Lcom/metamoji/ui/dialog/ShapeSettings;->mColorArrow:Landroid/graphics/Paint;

    iget-object v14, v0, Lcom/metamoji/ui/dialog/ShapeSettings;->mArrowStyle:Lcom/metamoji/nt/share/NtPenStyle;

    iget v15, v14, Lcom/metamoji/nt/share/NtPenStyle;->lineWidth:F

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Lcom/metamoji/ui/UIUtils;->drawArrow(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;Lcom/metamoji/nt/share/NtPenStyle;F[F)V

    .line 1026
    iget-object v1, v0, Lcom/metamoji/ui/dialog/ShapeSettings;->mButtonArrow:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {v1, v10}, Lcom/metamoji/ui/common/UiButton;->setImage(Landroid/graphics/Bitmap;)V

    .line 1028
    :cond_9
    iget-object v1, v0, Lcom/metamoji/ui/dialog/ShapeSettings;->mButtonInkColor_Fill:Lcom/metamoji/ui/common/UiButton;

    if-eqz v1, :cond_b

    .line 1030
    iget-object v1, v0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v1}, Lcom/metamoji/nt/share/NtPenStyle;->getFillColors()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 1032
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v3, :cond_a

    .line 1033
    iget-object v2, v0, Lcom/metamoji/ui/dialog/ShapeSettings;->mButtonInkColor_Fill:Lcom/metamoji/ui/common/UiButton;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v3, v1}, Lcom/metamoji/ui/common/UiButton;->setInkColor(II)V

    goto :goto_4

    .line 1034
    :cond_a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v4, :cond_b

    .line 1035
    iget-object v2, v0, Lcom/metamoji/ui/dialog/ShapeSettings;->mButtonInkColor_Fill:Lcom/metamoji/ui/common/UiButton;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/metamoji/ui/common/UiButton;->setInkColor(I)V

    .line 1039
    :cond_b
    :goto_4
    iget-object v1, v0, Lcom/metamoji/ui/dialog/ShapeSettings;->mButtonOpacity_Fill:Lcom/metamoji/ui/common/UiButton;

    if-eqz v1, :cond_d

    .line 1042
    iget-object v1, v0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    iget v1, v1, Lcom/metamoji/nt/share/NtPenStyle;->fillAlpha:F

    cmpl-float v1, v1, v9

    if-ltz v1, :cond_c

    .line 1043
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    iget-object v2, v0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    iget v2, v2, Lcom/metamoji/nt/share/NtPenStyle;->fillAlpha:F

    mul-float/2addr v2, v7

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v6, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1045
    :cond_c
    iget-object v1, v0, Lcom/metamoji/ui/dialog/ShapeSettings;->mButtonOpacity_Fill:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {v1, v8}, Lcom/metamoji/ui/common/UiButton;->setSubTitle(Ljava/lang/CharSequence;)V

    .line 1047
    :cond_d
    iget-object v1, v0, Lcom/metamoji/ui/dialog/ShapeSettings;->mGroupShapeSetting:Lcom/metamoji/ui/common/UiRadioGroup;

    invoke-virtual {v1}, Lcom/metamoji/ui/common/UiRadioGroup;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_f

    .line 1048
    iget-object v1, v0, Lcom/metamoji/ui/dialog/ShapeSettings;->mGroupShapeSetting:Lcom/metamoji/ui/common/UiRadioGroup;

    invoke-virtual {v1}, Lcom/metamoji/ui/common/UiRadioGroup;->getCurrentButtonIndex()I

    move-result v1

    if-eq v1, v4, :cond_e

    goto :goto_5

    .line 1053
    :cond_e
    invoke-direct {v0}, Lcom/metamoji/ui/dialog/ShapeSettings;->setShowWheelPage_Fill()V

    :cond_f
    :goto_5
    return-void
.end method


# virtual methods
.method getDefaultStyle(Ljava/lang/String;Lcom/metamoji/nt/share/NtPenStyle;)Lcom/metamoji/nt/share/NtPenStyle;
    .locals 0

    if-eqz p2, :cond_0

    return-object p2

    .line 939
    :cond_0
    iget-object p2, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mSettings:Lcom/metamoji/nt/NtSystemPenSettings;

    invoke-virtual {p2, p1}, Lcom/metamoji/nt/NtSystemPenSettings;->getPenTemplateById(Ljava/lang/String;)Lcom/metamoji/nt/NtPenTemplate;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 943
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/nt/NtPenTemplate;->getDefaultStyle()Lcom/metamoji/nt/share/NtPenStyle;

    move-result-object p1

    return-object p1
.end method

.method public getPenStyle()Lcom/metamoji/nt/share/NtPenStyle;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    return-object v0
.end method

.method public onCancel(Landroid/view/View;)V
    .locals 1

    .line 1203
    iget-boolean v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mChangeStyle:Z

    if-nez v0, :cond_0

    .line 1205
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/ShapeSettings;->subDone()V

    .line 1208
    :cond_0
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onCancel(Landroid/view/View;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const/4 v0, 0x1

    .line 197
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mDisableUpdate:Z

    .line 199
    sget v1, Lcom/metamoji/noteanytime/R$layout;->dialog_shapesettings:I

    iput v1, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mViewId:I

    .line 202
    iget-boolean v1, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mChangeStyle:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 203
    sget v1, Lcom/metamoji/noteanytime/R$string;->ShapeChangeStyle:I

    iput v1, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mTitleId:I

    .line 204
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mDone:Z

    .line 205
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mCancel:Z

    goto :goto_0

    .line 208
    :cond_0
    sget v1, Lcom/metamoji/noteanytime/R$string;->ShapeSettings:I

    iput v1, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mTitleId:I

    .line 209
    iput-boolean v2, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mDone:Z

    .line 210
    iput-boolean v2, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mCancel:Z

    .line 211
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mBack:Z

    .line 219
    :goto_0
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mV4Compatible:Z

    .line 220
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 222
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 224
    iget-boolean p3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mReConstructed:Z

    if-eqz p3, :cond_1

    return-object p1

    .line 230
    :cond_1
    sget p3, Lcom/metamoji/noteanytime/R$id;->PenSettingsScrollView:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ScrollView;

    iput-object p3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mScrollView:Landroid/widget/ScrollView;

    .line 233
    sget p3, Lcom/metamoji/noteanytime/R$id;->radiogroup_shape_setting:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/metamoji/ui/common/UiRadioGroup;

    iput-object p3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mGroupShapeSetting:Lcom/metamoji/ui/common/UiRadioGroup;

    const/16 v1, 0x8

    if-eqz p3, :cond_3

    .line 235
    iget-boolean p3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mChangeStyle:Z

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    iget-boolean p3, p3, Lcom/metamoji/nt/share/NtPenStyle;->hasFill:Z

    if-nez p3, :cond_2

    .line 237
    iget-object p3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mGroupShapeSetting:Lcom/metamoji/ui/common/UiRadioGroup;

    invoke-virtual {p3, v1}, Lcom/metamoji/ui/common/UiRadioGroup;->setVisibility(I)V

    .line 239
    :cond_2
    iget-object p3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mGroupShapeSetting:Lcom/metamoji/ui/common/UiRadioGroup;

    iget v3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mCurrentShapeSet:I

    invoke-virtual {p3, v3}, Lcom/metamoji/ui/common/UiRadioGroup;->setCurrentButtonIndex(I)V

    .line 240
    iget-object p3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mGroupShapeSetting:Lcom/metamoji/ui/common/UiRadioGroup;

    new-instance v3, Lcom/metamoji/ui/dialog/ShapeSettings$1;

    invoke-direct {v3, p0}, Lcom/metamoji/ui/dialog/ShapeSettings$1;-><init>(Lcom/metamoji/ui/dialog/ShapeSettings;)V

    invoke-virtual {p3, v3}, Lcom/metamoji/ui/common/UiRadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 251
    :cond_3
    sget p3, Lcom/metamoji/noteanytime/R$id;->radiogroup_pen_standard:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/metamoji/ui/common/UiRadioGroup;

    iput-object p3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mGroupPenStandard:Lcom/metamoji/ui/common/UiRadioGroup;

    if-eqz p3, :cond_4

    .line 253
    invoke-virtual {p3, v2}, Lcom/metamoji/ui/common/UiRadioGroup;->setCurrentButtonIndex(I)V

    .line 254
    iget-object p3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mGroupPenStandard:Lcom/metamoji/ui/common/UiRadioGroup;

    new-instance v3, Lcom/metamoji/ui/dialog/ShapeSettings$2;

    invoke-direct {v3, p0}, Lcom/metamoji/ui/dialog/ShapeSettings$2;-><init>(Lcom/metamoji/ui/dialog/ShapeSettings;)V

    invoke-virtual {p3, v3}, Lcom/metamoji/ui/common/UiRadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 264
    :cond_4
    sget p3, Lcom/metamoji/noteanytime/R$id;->button_shape_fill:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/metamoji/ui/common/UiButton;

    iput-object p3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mButtonShapeFill:Lcom/metamoji/ui/common/UiButton;

    .line 265
    new-instance v3, Lcom/metamoji/ui/dialog/ShapeSettings$3;

    invoke-direct {v3, p0}, Lcom/metamoji/ui/dialog/ShapeSettings$3;-><init>(Lcom/metamoji/ui/dialog/ShapeSettings;)V

    invoke-virtual {p3, v3}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    sget p3, Lcom/metamoji/noteanytime/R$id;->style_line:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyleLine:Landroid/view/View;

    .line 275
    sget p3, Lcom/metamoji/noteanytime/R$id;->style_fill:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyleFill:Landroid/view/View;

    .line 277
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyleButtonList:Ljava/util/ArrayList;

    .line 278
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyleViewList:Ljava/util/ArrayList;

    .line 279
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyleButtonList_Fill:Ljava/util/ArrayList;

    .line 280
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyleViewList_Fill:Ljava/util/ArrayList;

    .line 282
    sget p3, Lcom/metamoji/noteanytime/R$id;->button_inkcolor_line:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/metamoji/ui/common/UiButton;

    iput-object p3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mButtonInkColor:Lcom/metamoji/ui/common/UiButton;

    .line 283
    sget p3, Lcom/metamoji/noteanytime/R$id;->style_inkcolor:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyleInkColor:Landroid/view/View;

    .line 284
    iget-object p3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyleButtonList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mButtonInkColor:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    iget-object p3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyleViewList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyleInkColor:Landroid/view/View;

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    sget p3, Lcom/metamoji/noteanytime/R$id;->button_opacity:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/metamoji/ui/common/UiButton;

    iput-object p3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mButtonOpacity:Lcom/metamoji/ui/common/UiButton;

    .line 288
    sget p3, Lcom/metamoji/noteanytime/R$id;->style_opacity:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyleOpacity:Landroid/view/View;

    .line 289
    iget-object p3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyleButtonList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mButtonOpacity:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    iget-object p3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyleViewList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyleOpacity:Landroid/view/View;

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    sget p3, Lcom/metamoji/noteanytime/R$id;->button_thickness:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/metamoji/ui/common/UiButton;

    iput-object p3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mButtonThickness:Lcom/metamoji/ui/common/UiButton;

    .line 293
    sget p3, Lcom/metamoji/noteanytime/R$id;->style_thickness:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyleThickness:Landroid/view/View;

    .line 294
    iget-object p3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyleButtonList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mButtonThickness:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    iget-object p3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyleViewList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyleThickness:Landroid/view/View;

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    sget p3, Lcom/metamoji/noteanytime/R$id;->button_arrow:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/metamoji/ui/common/UiButton;

    iput-object p3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mButtonArrow:Lcom/metamoji/ui/common/UiButton;

    .line 298
    sget p3, Lcom/metamoji/noteanytime/R$id;->style_arrow:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyleArrow:Landroid/view/View;

    .line 299
    iget-object p3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyleButtonList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mButtonArrow:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    iget-object p3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyleViewList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyleArrow:Landroid/view/View;

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    iget-object p3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mButtonArrow:Lcom/metamoji/ui/common/UiButton;

    iget-boolean v3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mChangeStyle:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    iget-boolean v3, v3, Lcom/metamoji/nt/share/NtPenStyle;->hasArrow:Z

    if-eqz v3, :cond_5

    move v1, v2

    :cond_5
    invoke-virtual {p3, v1}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    .line 303
    sget p3, Lcom/metamoji/noteanytime/R$id;->button_inkcolor_fill:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/metamoji/ui/common/UiButton;

    iput-object p3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mButtonInkColor_Fill:Lcom/metamoji/ui/common/UiButton;

    .line 304
    sget p3, Lcom/metamoji/noteanytime/R$id;->style_inkcolor_fill:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyleInkColor_Fill:Landroid/view/View;

    .line 305
    iget-object p3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyleButtonList_Fill:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mButtonInkColor_Fill:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    iget-object p3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyleViewList_Fill:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyleInkColor_Fill:Landroid/view/View;

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    sget p3, Lcom/metamoji/noteanytime/R$id;->button_opacity_fill:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/metamoji/ui/common/UiButton;

    iput-object p3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mButtonOpacity_Fill:Lcom/metamoji/ui/common/UiButton;

    .line 309
    sget p3, Lcom/metamoji/noteanytime/R$id;->style_opacity_fill:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyleOpacity_Fill:Landroid/view/View;

    .line 310
    iget-object p3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyleButtonList_Fill:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mButtonOpacity_Fill:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    iget-object p3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyleViewList_Fill:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyleOpacity_Fill:Landroid/view/View;

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    iget-object p3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mButtonInkColor:Lcom/metamoji/ui/common/UiButton;

    new-instance v1, Lcom/metamoji/ui/dialog/ShapeSettings$4;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/dialog/ShapeSettings$4;-><init>(Lcom/metamoji/ui/dialog/ShapeSettings;)V

    invoke-virtual {p3, v1}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    iget-object p3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mButtonInkColor_Fill:Lcom/metamoji/ui/common/UiButton;

    new-instance v1, Lcom/metamoji/ui/dialog/ShapeSettings$5;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/dialog/ShapeSettings$5;-><init>(Lcom/metamoji/ui/dialog/ShapeSettings;)V

    invoke-virtual {p3, v1}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    iget-object p3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mButtonOpacity:Lcom/metamoji/ui/common/UiButton;

    new-instance v1, Lcom/metamoji/ui/dialog/ShapeSettings$6;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/dialog/ShapeSettings$6;-><init>(Lcom/metamoji/ui/dialog/ShapeSettings;)V

    invoke-virtual {p3, v1}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    iget-object p3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mButtonOpacity_Fill:Lcom/metamoji/ui/common/UiButton;

    new-instance v1, Lcom/metamoji/ui/dialog/ShapeSettings$7;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/dialog/ShapeSettings$7;-><init>(Lcom/metamoji/ui/dialog/ShapeSettings;)V

    invoke-virtual {p3, v1}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 350
    iget-object p3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mButtonThickness:Lcom/metamoji/ui/common/UiButton;

    new-instance v1, Lcom/metamoji/ui/dialog/ShapeSettings$8;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/dialog/ShapeSettings$8;-><init>(Lcom/metamoji/ui/dialog/ShapeSettings;)V

    invoke-virtual {p3, v1}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 359
    iget-object p3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mButtonArrow:Lcom/metamoji/ui/common/UiButton;

    new-instance v1, Lcom/metamoji/ui/dialog/ShapeSettings$9;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/dialog/ShapeSettings$9;-><init>(Lcom/metamoji/ui/dialog/ShapeSettings;)V

    invoke-virtual {p3, v1}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 366
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mColorArrow:Landroid/graphics/Paint;

    .line 367
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 368
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    .line 369
    iget-object v1, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mColorArrow:Landroid/graphics/Paint;

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr p3, v3

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 372
    sget p3, Lcom/metamoji/noteanytime/R$id;->colorPalette_line:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/metamoji/ui/common/UiColorSelectionView2;

    iput-object p3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mColorSelectionView_Line:Lcom/metamoji/ui/common/UiColorSelectionView2;

    .line 373
    new-instance v1, Lcom/metamoji/ui/dialog/ShapeSettings$10;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/ui/dialog/ShapeSettings$10;-><init>(Lcom/metamoji/ui/dialog/ShapeSettings;Landroid/view/View;)V

    invoke-virtual {p3, v1}, Lcom/metamoji/ui/common/UiColorSelectionView2;->setColorSetGroupChangedListener(Lcom/metamoji/ui/common/UiColorSelectionView2$IColorSetGroupChanged;)V

    .line 384
    iget-object p3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mColorSelectionView_Line:Lcom/metamoji/ui/common/UiColorSelectionView2;

    new-instance v1, Lcom/metamoji/ui/dialog/ShapeSettings$11;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/dialog/ShapeSettings$11;-><init>(Lcom/metamoji/ui/dialog/ShapeSettings;)V

    invoke-virtual {p3, v1}, Lcom/metamoji/ui/common/UiColorSelectionView2;->setSelectionChangedListener(Lcom/metamoji/ui/common/UiColorSelectionView2$IColorSelectionChanged;)V

    .line 402
    sget p3, Lcom/metamoji/noteanytime/R$id;->colorPalette_fill:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/metamoji/ui/common/UiColorSelectionView2;

    iput-object p3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mColorSelectionView_Fill:Lcom/metamoji/ui/common/UiColorSelectionView2;

    .line 403
    new-instance v1, Lcom/metamoji/ui/dialog/ShapeSettings$12;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/ui/dialog/ShapeSettings$12;-><init>(Lcom/metamoji/ui/dialog/ShapeSettings;Landroid/view/View;)V

    invoke-virtual {p3, v1}, Lcom/metamoji/ui/common/UiColorSelectionView2;->setColorSetGroupChangedListener(Lcom/metamoji/ui/common/UiColorSelectionView2$IColorSetGroupChanged;)V

    .line 414
    iget-object p3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mColorSelectionView_Fill:Lcom/metamoji/ui/common/UiColorSelectionView2;

    new-instance v1, Lcom/metamoji/ui/dialog/ShapeSettings$13;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/dialog/ShapeSettings$13;-><init>(Lcom/metamoji/ui/dialog/ShapeSettings;)V

    invoke-virtual {p3, v1}, Lcom/metamoji/ui/common/UiColorSelectionView2;->setSelectionChangedListener(Lcom/metamoji/ui/common/UiColorSelectionView2$IColorSelectionChanged;)V

    .line 440
    new-instance p3, Lcom/metamoji/ui/common/UiRadioContoller;

    sget-object v1, Lcom/metamoji/ui/dialog/ShapeSettings;->mBottlesIds_Line:[I

    invoke-direct {p3, p1, v1}, Lcom/metamoji/ui/common/UiRadioContoller;-><init>(Landroid/view/View;[I)V

    iput-object p3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mBottlesRadioGroup_Line:Lcom/metamoji/ui/common/UiRadioContoller;

    .line 442
    new-instance v1, Lcom/metamoji/ui/dialog/ShapeSettings$14;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/dialog/ShapeSettings$14;-><init>(Lcom/metamoji/ui/dialog/ShapeSettings;)V

    invoke-virtual {p3, v1}, Lcom/metamoji/ui/common/UiRadioContoller;->setSelectChangedListener(Lcom/metamoji/ui/common/IUiRadioItem$IUiSelectChanged;)V

    move p3, v2

    .line 453
    :goto_1
    sget-object v1, Lcom/metamoji/ui/dialog/ShapeSettings;->mBottlesIds_Line:[I

    array-length v1, v1

    if-ge p3, v1, :cond_6

    .line 454
    iget-object v1, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mBottle_Line:[Lcom/metamoji/ui/common/UiImageRadioButton;

    iget-object v4, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mBottlesRadioGroup_Line:Lcom/metamoji/ui/common/UiRadioContoller;

    invoke-virtual {v4, p3}, Lcom/metamoji/ui/common/UiRadioContoller;->idFromIndex(I)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/metamoji/ui/common/UiImageRadioButton;

    aput-object v4, v1, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 456
    :cond_6
    iget-boolean p3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mChangeStyle:Z

    xor-int/2addr p3, v0

    invoke-direct {p0, v2, p3}, Lcom/metamoji/ui/dialog/ShapeSettings;->setShowPage_Line(IZ)V

    .line 457
    iget-boolean p3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mChangeStyle:Z

    invoke-direct {p0, v0, p3}, Lcom/metamoji/ui/dialog/ShapeSettings;->setShowPage_Line(IZ)V

    .line 458
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/ShapeSettings;->setShowWheelPage_Line()V

    .line 461
    new-instance p3, Lcom/metamoji/ui/common/UiRadioContoller;

    sget-object v1, Lcom/metamoji/ui/dialog/ShapeSettings;->mBottlesIds_Fill:[I

    invoke-direct {p3, p1, v1}, Lcom/metamoji/ui/common/UiRadioContoller;-><init>(Landroid/view/View;[I)V

    iput-object p3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mBottlesRadioGroup_Fill:Lcom/metamoji/ui/common/UiRadioContoller;

    .line 463
    new-instance v1, Lcom/metamoji/ui/dialog/ShapeSettings$15;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/dialog/ShapeSettings$15;-><init>(Lcom/metamoji/ui/dialog/ShapeSettings;)V

    invoke-virtual {p3, v1}, Lcom/metamoji/ui/common/UiRadioContoller;->setSelectChangedListener(Lcom/metamoji/ui/common/IUiRadioItem$IUiSelectChanged;)V

    move p3, v2

    .line 474
    :goto_2
    sget-object v1, Lcom/metamoji/ui/dialog/ShapeSettings;->mBottlesIds_Fill:[I

    array-length v1, v1

    if-ge p3, v1, :cond_7

    .line 475
    iget-object v1, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mBottle_Fill:[Lcom/metamoji/ui/common/UiImageRadioButton;

    iget-object v4, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mBottlesRadioGroup_Fill:Lcom/metamoji/ui/common/UiRadioContoller;

    invoke-virtual {v4, p3}, Lcom/metamoji/ui/common/UiRadioContoller;->idFromIndex(I)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/metamoji/ui/common/UiImageRadioButton;

    aput-object v4, v1, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    .line 477
    :cond_7
    invoke-direct {p0, v2, v0}, Lcom/metamoji/ui/dialog/ShapeSettings;->setShowPage_Fill(IZ)V

    .line 478
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/ShapeSettings;->setShowWheelPage_Fill()V

    .line 481
    sget p3, Lcom/metamoji/noteanytime/R$id;->paletteLeftButton:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    new-instance v1, Lcom/metamoji/ui/dialog/ShapeSettings$16;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/dialog/ShapeSettings$16;-><init>(Lcom/metamoji/ui/dialog/ShapeSettings;)V

    invoke-virtual {p3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 489
    sget p3, Lcom/metamoji/noteanytime/R$id;->paletteRightButton:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    new-instance v1, Lcom/metamoji/ui/dialog/ShapeSettings$17;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/dialog/ShapeSettings$17;-><init>(Lcom/metamoji/ui/dialog/ShapeSettings;)V

    invoke-virtual {p3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 497
    sget p3, Lcom/metamoji/noteanytime/R$id;->paletteLeftButton_fill:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    new-instance v1, Lcom/metamoji/ui/dialog/ShapeSettings$18;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/dialog/ShapeSettings$18;-><init>(Lcom/metamoji/ui/dialog/ShapeSettings;)V

    invoke-virtual {p3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 505
    sget p3, Lcom/metamoji/noteanytime/R$id;->paletteRightButton_fill:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    new-instance v1, Lcom/metamoji/ui/dialog/ShapeSettings$19;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/dialog/ShapeSettings$19;-><init>(Lcom/metamoji/ui/dialog/ShapeSettings;)V

    invoke-virtual {p3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 513
    sget p3, Lcom/metamoji/noteanytime/R$id;->sliderWeight:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/metamoji/ui/common/UiPlainSlider;

    iput-object p3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mSliderWeight:Lcom/metamoji/ui/common/UiPlainSlider;

    .line 514
    sget-object v1, Lcom/metamoji/ui/dialog/ShapeSettings;->mTickWeight:[Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    invoke-virtual {p3, v1}, Lcom/metamoji/ui/common/UiPlainSlider;->setTickList([Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;)V

    .line 515
    iget-object p3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mSliderWeight:Lcom/metamoji/ui/common/UiPlainSlider;

    new-instance v1, Lcom/metamoji/ui/dialog/ShapeSettings$20;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/dialog/ShapeSettings$20;-><init>(Lcom/metamoji/ui/dialog/ShapeSettings;)V

    invoke-virtual {p3, v1}, Lcom/metamoji/ui/common/UiPlainSlider;->setValueChangedListener(Lcom/metamoji/ui/common/UiPlainSlider$IOnValueChanged;)V

    .line 523
    new-instance p3, Lcom/metamoji/ui/dialog/ShapeSettings$21;

    invoke-direct {p3, p0}, Lcom/metamoji/ui/dialog/ShapeSettings$21;-><init>(Lcom/metamoji/ui/dialog/ShapeSettings;)V

    .line 540
    sget-object v1, Lcom/metamoji/ui/dialog/ShapeSettings;->mWeightPresetIds:[I

    array-length v1, v1

    sub-int/2addr v1, v0

    :goto_3
    if-ltz v1, :cond_8

    .line 541
    sget-object v0, Lcom/metamoji/ui/dialog/ShapeSettings;->mWeightPresetIds:[I

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiButton;

    .line 542
    invoke-virtual {v0, p3}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 546
    :cond_8
    sget p3, Lcom/metamoji/noteanytime/R$id;->sliderOpacity:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/metamoji/ui/common/UiPlainSlider;

    iput-object p3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mSliderOpacity:Lcom/metamoji/ui/common/UiPlainSlider;

    .line 547
    sget-object v0, Lcom/metamoji/ui/dialog/ShapeSettings;->mTickOpacity:[Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    invoke-virtual {p3, v0}, Lcom/metamoji/ui/common/UiPlainSlider;->setTickList([Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;)V

    .line 548
    iget-object p3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mSliderOpacity:Lcom/metamoji/ui/common/UiPlainSlider;

    new-instance v0, Lcom/metamoji/ui/dialog/ShapeSettings$22;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/dialog/ShapeSettings$22;-><init>(Lcom/metamoji/ui/dialog/ShapeSettings;)V

    invoke-virtual {p3, v0}, Lcom/metamoji/ui/common/UiPlainSlider;->setValueChangedListener(Lcom/metamoji/ui/common/UiPlainSlider$IOnValueChanged;)V

    .line 556
    sget p3, Lcom/metamoji/noteanytime/R$id;->sliderOpacity_fill:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/metamoji/ui/common/UiPlainSlider;

    iput-object p3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mSliderOpacity_Fill:Lcom/metamoji/ui/common/UiPlainSlider;

    .line 557
    sget-object v0, Lcom/metamoji/ui/dialog/ShapeSettings;->mTickOpacity_Fill:[Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    invoke-virtual {p3, v0}, Lcom/metamoji/ui/common/UiPlainSlider;->setTickList([Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;)V

    .line 558
    iget-object p3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mSliderOpacity_Fill:Lcom/metamoji/ui/common/UiPlainSlider;

    new-instance v0, Lcom/metamoji/ui/dialog/ShapeSettings$23;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/dialog/ShapeSettings$23;-><init>(Lcom/metamoji/ui/dialog/ShapeSettings;)V

    invoke-virtual {p3, v0}, Lcom/metamoji/ui/common/UiPlainSlider;->setValueChangedListener(Lcom/metamoji/ui/common/UiPlainSlider$IOnValueChanged;)V

    .line 567
    sget p3, Lcom/metamoji/noteanytime/R$id;->drawSample:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mDrawSample:Landroid/widget/ImageView;

    .line 568
    sget p3, Lcom/metamoji/noteanytime/R$drawable;->grid_line:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mLineBack:Landroid/graphics/drawable/Drawable;

    .line 569
    sget p3, Lcom/metamoji/noteanytime/R$drawable;->grid:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mFillBack:Landroid/graphics/drawable/Drawable;

    .line 572
    sget p2, Lcom/metamoji/noteanytime/R$id;->arrow_list:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    .line 576
    new-instance p3, Lcom/metamoji/ui/dialog/ShapeSettings$ListAdapter;

    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/ShapeSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p3, p0, v0}, Lcom/metamoji/ui/dialog/ShapeSettings$ListAdapter;-><init>(Lcom/metamoji/ui/dialog/ShapeSettings;Landroid/content/Context;)V

    .line 577
    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 578
    invoke-virtual {p2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 579
    iget-object p3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    iget-boolean p3, p3, Lcom/metamoji/nt/share/NtPenStyle;->hasArrow:Z

    if-eqz p3, :cond_9

    iget-object p3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {p3}, Lcom/metamoji/nt/share/NtPenStyle;->isArrowType()Z

    move-result p3

    if-eqz p3, :cond_9

    .line 580
    iget-object p3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-static {p3}, Lcom/metamoji/ui/UIUtils;->getArrowIndex(Lcom/metamoji/nt/share/NtPenStyle;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setSelection(I)V

    .line 581
    new-instance p2, Lcom/metamoji/nt/share/NtPenStyle;

    iget-object p3, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-direct {p2, p3}, Lcom/metamoji/nt/share/NtPenStyle;-><init>(Lcom/metamoji/nt/share/NtPenStyle;)V

    iput-object p2, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mArrowStyle:Lcom/metamoji/nt/share/NtPenStyle;

    .line 582
    invoke-virtual {p2, v3}, Lcom/metamoji/nt/share/NtPenStyle;->setLineWidth(F)V

    .line 583
    iget-object p2, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mArrowStyle:Lcom/metamoji/nt/share/NtPenStyle;

    const/high16 p3, -0x1000000

    invoke-virtual {p2, p3}, Lcom/metamoji/nt/share/NtPenStyle;->setLineColor(I)V

    .line 584
    iget-object p2, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mArrowStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {p2, v3}, Lcom/metamoji/nt/share/NtPenStyle;->setLineAlpha(F)V

    .line 593
    :cond_9
    sget p2, Lcom/metamoji/noteanytime/R$id;->control_dialog:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 598
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/ShapeSettings;->initDlgValues()V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 1442
    invoke-super {p0}, Lcom/metamoji/ui/dialog/NtDialog;->onDestroyView()V

    .line 1443
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mSampleBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1444
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 1445
    iput-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mSampleBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public onDone(Landroid/view/View;)V
    .locals 0

    .line 1192
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/ShapeSettings;->subDone()V

    .line 1194
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onDone(Landroid/view/View;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1176
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/metamoji/ui/UIUtils;->getArrowStyle(I)Lcom/metamoji/nt/share/NtPenStyle;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mArrowStyle:Lcom/metamoji/nt/share/NtPenStyle;

    const/high16 p2, 0x3f800000    # 1.0f

    .line 1177
    invoke-virtual {p1, p2}, Lcom/metamoji/nt/share/NtPenStyle;->setLineWidth(F)V

    .line 1178
    iget-object p1, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mArrowStyle:Lcom/metamoji/nt/share/NtPenStyle;

    const/high16 p3, -0x1000000

    invoke-virtual {p1, p3}, Lcom/metamoji/nt/share/NtPenStyle;->setLineColor(I)V

    .line 1179
    iget-object p1, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mArrowStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {p1, p2}, Lcom/metamoji/nt/share/NtPenStyle;->setLineAlpha(F)V

    .line 1181
    iget-object p1, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    iget-object p2, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mArrowStyle:Lcom/metamoji/nt/share/NtPenStyle;

    iget-object p2, p2, Lcom/metamoji/nt/share/NtPenStyle;->arrowType:Ljava/lang/String;

    iput-object p2, p1, Lcom/metamoji/nt/share/NtPenStyle;->arrowType:Ljava/lang/String;

    .line 1182
    iget-object p1, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    iget-object p2, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mArrowStyle:Lcom/metamoji/nt/share/NtPenStyle;

    iget-object p2, p2, Lcom/metamoji/nt/share/NtPenStyle;->arrowKinds:Ljava/lang/String;

    iput-object p2, p1, Lcom/metamoji/nt/share/NtPenStyle;->arrowKinds:Ljava/lang/String;

    .line 1184
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/ShapeSettings;->updateSample()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 1451
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1452
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/ShapeSettings;->updateValues()V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 707
    invoke-super {p0}, Lcom/metamoji/ui/dialog/NtDialog;->onStart()V

    const/4 v0, 0x0

    .line 708
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings;->mDisableUpdate:Z

    .line 709
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/ShapeSettings;->updateSample()V

    .line 710
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/ShapeSettings;->initWeightPreset()V

    return-void
.end method
