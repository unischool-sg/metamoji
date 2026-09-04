.class public Lcom/metamoji/mazec/ui/HandWritingView;
.super Landroid/view/View;
.source "HandWritingView.java"

# interfaces
.implements Lcom/metamoji/mazec/MazecIms$OnBackListener;
.implements Lcom/metamoji/mazec/stroke/StrokeStyleResolver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/mazec/ui/HandWritingView$HwStrokeListenerImpl;
    }
.end annotation


# static fields
.field private static final DELAY_HANDWRITE_STROKE_BLOCK_DETECTER:I = 0x1f4

.field private static final DELAY_HWR_RESULT_REFLECT:I = 0x1f4

.field private static final DELAY_RECOGNIZE_STRING:I = 0xc8

.field private static final DELAY_STROKE_BUTTON_EXPAND:I = 0x12c

.field private static final DELAY_WIDTH_ENHANCE:I = 0x190

.field private static final DRAG_MOVE_THRESHOLD:F = 4.0f

.field private static final DRAG_STATE_DRAG:I = 0x2

.field private static final DRAG_STATE_NONE:I = 0x0

.field private static final DRAG_STATE_WAIT:I = 0x1

.field private static final DRAG_STROKE_SPLIT_DISTANCE:F = 30.0f

.field public static final GUIDELINE_CJK_BASE_LINE_COEF_HIGH:F = 0.7837838f

.field public static final GUIDELINE_CJK_TOP_LINE_COEF_HIGH:F = 0.21621622f

.field public static final GUIDELINE_LATIN_BASE_LINE_COEF_HIGH:F = 0.6722973f

.field public static final GUIDELINE_LATIN_BASE_LINE_COEF_HIGH_IN_CJK:F = 0.7027027f

.field public static final GUIDELINE_LATIN_TOP_LINE_COEF_HIGH:F = 0.21621622f

.field private static final REF_STROKE_AREA_WIDTH_COEF:F = 0.2f

.field private static final WORD_SPACING_LINE_WIDTH:F = 4.0f

.field private static mBkColorReedit:I

.field private static mBkColorStroke:I

.field private static final mBreakLineColor:I

.field private static mDeleteStrokeColor:I

.field private static mGuidelineColor:I

.field private static mOldLineHeight:F

.field private static mOldScrollX:I

.field private static mScrollbarColor:I

.field private static mShiftStrokeColor:I

.field private static mWordspacingColor:I


# instance fields
.field private mAutoCommitDelay:I

.field private mAutoCommitEnabled:Z

.field private mAutoCommitter:Ljava/lang/Runnable;

.field private mAutoScrollAreaWidth:I

.field private mAutoScrollDelay:I

.field private mAutoScrollEnabled:Z

.field private mAutoScroller:Ljava/lang/Runnable;

.field private mBkColor:I

.field private mCandidateSelectors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/ui/HwrCandidateSelector;",
            ">;"
        }
    .end annotation
.end field

.field private mCurBaselineCoef:F

.field private mCurrentBase:F

.field private mCurrentHeight:I

.field private mCurrentTop:F

.field private mCurrentWidth:I

.field private mDashPathEffect:Landroid/graphics/DashPathEffect;

.field private mDemandRestWidth:I

.field private mDragDiff:F

.field private mDragMatrix:Landroid/graphics/Matrix;

.field private mDragMaxX:F

.field private mDragMinX:F

.field private mDragShiftTargets:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/metamoji/mazec/stroke/HwStroke;",
            ">;"
        }
    .end annotation
.end field

.field private mDragStartDuration:J

.field private mDragStartMoveLimit:F

.field private mDragState:I

.field private mDragStrokeSplitDistance:F

.field private mDrawingStroke:Lcom/metamoji/mazec/ui/DrawingStrokeModel;

.field private mHandwriteStrokeBlockDetecter:Ljava/lang/Runnable;

.field private mHwResultPositioner:Ljava/lang/Runnable;

.field private mHwResultReflecter:Ljava/lang/Runnable;

.field private mIgnoreStrokeUpdate:Z

.field private mInitHeight:I

.field private mInitScrollX:I

.field private mInitWidth:I

.field private mIsLatinLang:Z

.field private mLang:Ljava/lang/String;

.field private mLastTouchPointX:F

.field private mLastTouchPointY:F

.field private mLeftStrokeButtonExpander:Ljava/lang/Runnable;

.field private mLongPressDetecter:Ljava/lang/Runnable;

.field private mMaxViewWidth:I

.field private mMazecEventListener:Lcom/metamoji/mazec/MazecEventListener;

.field private mNeedAutoCommit:Z

.field private mNeedAutoScroll:Z

.field private mOnClickSelectorListener:Lcom/metamoji/mazec/ui/HwrCandidateSelector$OnClickListener;

.field private mPaintForBk:Landroid/graphics/Paint;

.field private mPaintForRuledLine:Landroid/graphics/Paint;

.field private mPaintForSelector:Landroid/graphics/Paint;

.field private mPaintForSelectorBorder:Landroid/graphics/Paint;

.field private mPopupCandis:Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;

.field private mPressedCandidatesIndex:I

.field private mPressedCandidatesType:I

.field private mRefStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

.field private mRightStrokeButtonExpander:Ljava/lang/Runnable;

.field private mScrollButtonHeight:I

.field private mScrollButtonWidth:I

.field private mScrollLeftButton:Landroid/widget/ImageView;

.field private mScrollRightButton:Landroid/widget/ImageView;

.field private mScrollX:I

.field private mSplitStrokeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/metamoji/mazec/stroke/HwStroke;",
            "[",
            "Lcom/metamoji/mazec/stroke/HwStroke;",
            ">;"
        }
    .end annotation
.end field

.field mStrokeBlocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/stroke/HwStrokes;",
            ">;"
        }
    .end annotation
.end field

.field private mStrokeDrawers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/stroke/StrokeDrawer;",
            ">;"
        }
    .end annotation
.end field

.field private mStrokePenInfo:Lcom/metamoji/mazec/stroke/StrokePenInfo;

.field private mStrokeSplitDisabled:Z

.field private mStrokeStyle:Lcom/metamoji/mazec/stroke/StrokeStyle;

.field private mStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

.field private mTouchBeganPointX:F

.field private mTouchBeganPointY:F

.field private mTouchScrollButton:Z

.field private mViewData:Lcom/metamoji/mazec/ui/HwStrokesModel;

.field private mViewMapInverseMatrix:Landroid/graphics/Matrix;

.field private mViewMapMatrix:Landroid/graphics/Matrix;

.field private mViewWidthEnhancer:Ljava/lang/Runnable;

.field private mWordspacingCoef:F

.field private mWordspacingLineWidth:F

.field private mWordspacingRect:Landroid/graphics/RectF;

.field private mWorkRect:Landroid/graphics/RectF;

.field private mWorkRect2:Landroid/graphics/Rect;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAutoCommitDelay(Lcom/metamoji/mazec/ui/HandWritingView;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mAutoCommitDelay:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAutoCommitEnabled(Lcom/metamoji/mazec/ui/HandWritingView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mAutoCommitEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAutoCommitter(Lcom/metamoji/mazec/ui/HandWritingView;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mAutoCommitter:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAutoScrollAreaWidth(Lcom/metamoji/mazec/ui/HandWritingView;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mAutoScrollAreaWidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAutoScrollDelay(Lcom/metamoji/mazec/ui/HandWritingView;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mAutoScrollDelay:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAutoScrollEnabled(Lcom/metamoji/mazec/ui/HandWritingView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mAutoScrollEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAutoScroller(Lcom/metamoji/mazec/ui/HandWritingView;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mAutoScroller:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCandidateSelectors(Lcom/metamoji/mazec/ui/HandWritingView;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mCandidateSelectors:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentBase(Lcom/metamoji/mazec/ui/HandWritingView;)F
    .locals 0

    iget p0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mCurrentBase:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentHeight(Lcom/metamoji/mazec/ui/HandWritingView;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mCurrentHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentWidth(Lcom/metamoji/mazec/ui/HandWritingView;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mCurrentWidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDrawingStroke(Lcom/metamoji/mazec/ui/HandWritingView;)Lcom/metamoji/mazec/ui/DrawingStrokeModel;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mDrawingStroke:Lcom/metamoji/mazec/ui/DrawingStrokeModel;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandwriteStrokeBlockDetecter(Lcom/metamoji/mazec/ui/HandWritingView;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mHandwriteStrokeBlockDetecter:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHwResultReflecter(Lcom/metamoji/mazec/ui/HandWritingView;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mHwResultReflecter:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIgnoreStrokeUpdate(Lcom/metamoji/mazec/ui/HandWritingView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mIgnoreStrokeUpdate:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmInitWidth(Lcom/metamoji/mazec/ui/HandWritingView;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mInitWidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsLatinLang(Lcom/metamoji/mazec/ui/HandWritingView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mIsLatinLang:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMaxViewWidth(Lcom/metamoji/mazec/ui/HandWritingView;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mMaxViewWidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNeedAutoCommit(Lcom/metamoji/mazec/ui/HandWritingView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mNeedAutoCommit:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNeedAutoScroll(Lcom/metamoji/mazec/ui/HandWritingView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mNeedAutoScroll:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPopupCandis(Lcom/metamoji/mazec/ui/HandWritingView;)Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mPopupCandis:Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScrollLeftButton(Lcom/metamoji/mazec/ui/HandWritingView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mScrollLeftButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScrollRightButton(Lcom/metamoji/mazec/ui/HandWritingView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mScrollRightButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScrollX(Lcom/metamoji/mazec/ui/HandWritingView;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mScrollX:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmStrokeDrawers(Lcom/metamoji/mazec/ui/HandWritingView;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mStrokeDrawers:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStrokePenInfo(Lcom/metamoji/mazec/ui/HandWritingView;)Lcom/metamoji/mazec/stroke/StrokePenInfo;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mStrokePenInfo:Lcom/metamoji/mazec/stroke/StrokePenInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStrokes(Lcom/metamoji/mazec/ui/HandWritingView;)Lcom/metamoji/mazec/stroke/HwStrokes;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmViewData(Lcom/metamoji/mazec/ui/HandWritingView;)Lcom/metamoji/mazec/ui/HwStrokesModel;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mViewData:Lcom/metamoji/mazec/ui/HwStrokesModel;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmViewMapInverseMatrix(Lcom/metamoji/mazec/ui/HandWritingView;)Landroid/graphics/Matrix;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mViewMapInverseMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmViewMapMatrix(Lcom/metamoji/mazec/ui/HandWritingView;)Landroid/graphics/Matrix;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mViewMapMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmViewWidthEnhancer(Lcom/metamoji/mazec/ui/HandWritingView;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mViewWidthEnhancer:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWordspacingLineWidth(Lcom/metamoji/mazec/ui/HandWritingView;)F
    .locals 0

    iget p0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mWordspacingLineWidth:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWordspacingRect(Lcom/metamoji/mazec/ui/HandWritingView;)Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mWordspacingRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWorkRect(Lcom/metamoji/mazec/ui/HandWritingView;)Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mWorkRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIgnoreStrokeUpdate(Lcom/metamoji/mazec/ui/HandWritingView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mIgnoreStrokeUpdate:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNeedAutoCommit(Lcom/metamoji/mazec/ui/HandWritingView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mNeedAutoCommit:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNeedAutoScroll(Lcom/metamoji/mazec/ui/HandWritingView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mNeedAutoScroll:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPopupCandis(Lcom/metamoji/mazec/ui/HandWritingView;Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mPopupCandis:Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmStrokes(Lcom/metamoji/mazec/ui/HandWritingView;Lcom/metamoji/mazec/stroke/HwStrokes;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

    return-void
.end method

.method static bridge synthetic -$$Nest$madjustStrokesRelatedVars(Lcom/metamoji/mazec/ui/HandWritingView;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/mazec/ui/HandWritingView;->adjustStrokesRelatedVars()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclear(Lcom/metamoji/mazec/ui/HandWritingView;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/mazec/ui/HandWritingView;->clear()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetDefaultStrokeStyle(Lcom/metamoji/mazec/ui/HandWritingView;)Lcom/metamoji/mazec/stroke/StrokeStyle;
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/mazec/ui/HandWritingView;->getDefaultStrokeStyle()Lcom/metamoji/mazec/stroke/StrokeStyle;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$minvalidateGradationRect(Lcom/metamoji/mazec/ui/HandWritingView;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/mazec/ui/HandWritingView;->invalidateGradationRect()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monClickSelector(Lcom/metamoji/mazec/ui/HandWritingView;ILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/mazec/ui/HandWritingView;->onClickSelector(ILjava/lang/String;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monSelectHwrCandidate(Lcom/metamoji/mazec/ui/HandWritingView;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/mazec/ui/HandWritingView;->onSelectHwrCandidate()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetScrollButtons(Lcom/metamoji/mazec/ui/HandWritingView;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/mazec/ui/HandWritingView;->resetScrollButtons()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateCandidatesButtonRects(Lcom/metamoji/mazec/ui/HandWritingView;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/mazec/ui/HandWritingView;->updateCandidatesButtonRects()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateLangRelatedSettings(Lcom/metamoji/mazec/ui/HandWritingView;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/mazec/ui/HandWritingView;->updateLangRelatedSettings(Ljava/lang/String;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateStrokesBlockWithRecogResult(Lcom/metamoji/mazec/ui/HandWritingView;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/mazec/ui/HandWritingView;->updateStrokesBlockWithRecogResult()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateViewWidth(Lcom/metamoji/mazec/ui/HandWritingView;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/mazec/ui/HandWritingView;->updateViewWidth()V

    return-void
.end method

.method static bridge synthetic -$$Nest$museDefaultStrokeStyle(Lcom/metamoji/mazec/ui/HandWritingView;)Z
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/mazec/ui/HandWritingView;->useDefaultStrokeStyle()Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xc0

    .line 113
    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/metamoji/mazec/ui/HandWritingView;->mBreakLineColor:I

    .line 123
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 124
    const-string v1, "color.color_guideline"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/metamoji/mazec/ui/HandWritingView;->mGuidelineColor:I

    .line 125
    const-string v1, "color.color_wordspacing"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/metamoji/mazec/ui/HandWritingView;->mWordspacingColor:I

    .line 126
    const-string v1, "color.bkcolor_hwv_scrollarea"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/metamoji/mazec/ui/HandWritingView;->mScrollbarColor:I

    .line 127
    const-string v1, "color.color_shift_stroke"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/metamoji/mazec/ui/HandWritingView;->mShiftStrokeColor:I

    .line 128
    const-string v1, "color.color_delete_stroke"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/metamoji/mazec/ui/HandWritingView;->mDeleteStrokeColor:I

    .line 129
    const-string v1, "color.bkcolor_hw_view_stroke"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/metamoji/mazec/ui/HandWritingView;->mBkColorStroke:I

    .line 130
    const-string v1, "color.bkcolor_hw_view_reedit"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/metamoji/mazec/ui/HandWritingView;->mBkColorReedit:I

    const/4 v0, 0x0

    .line 253
    sput v0, Lcom/metamoji/mazec/ui/HandWritingView;->mOldLineHeight:F

    const/4 v0, 0x0

    .line 254
    sput v0, Lcom/metamoji/mazec/ui/HandWritingView;->mOldScrollX:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 365
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 138
    iput-boolean p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mStrokeSplitDisabled:Z

    const/4 v0, 0x0

    .line 141
    iput-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mSplitStrokeMap:Ljava/util/HashMap;

    .line 144
    iput-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mWordspacingRect:Landroid/graphics/RectF;

    const v1, 0x3f48a60e

    .line 176
    iput v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mCurBaselineCoef:F

    .line 194
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mDragMatrix:Landroid/graphics/Matrix;

    .line 195
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mDragShiftTargets:Ljava/util/HashSet;

    .line 201
    iput-boolean p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mTouchScrollButton:Z

    .line 204
    iput p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mScrollX:I

    const/4 v1, 0x1

    .line 207
    iput-boolean v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mAutoScrollEnabled:Z

    .line 208
    iput p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mAutoScrollAreaWidth:I

    .line 209
    iput p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mAutoScrollDelay:I

    .line 210
    iput-boolean p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mNeedAutoScroll:Z

    .line 213
    iput-boolean p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mAutoCommitEnabled:Z

    .line 214
    iput p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mAutoCommitDelay:I

    .line 215
    iput-boolean p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mNeedAutoCommit:Z

    const/4 v1, 0x0

    .line 218
    iput v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mWordspacingCoef:F

    .line 221
    iput v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mDragStrokeSplitDistance:F

    .line 224
    iput v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mWordspacingLineWidth:F

    const/4 v1, -0x1

    .line 233
    iput v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mPressedCandidatesIndex:I

    .line 234
    iput p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mPressedCandidatesType:I

    .line 236
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mCandidateSelectors:Ljava/util/List;

    .line 243
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mStrokeDrawers:Ljava/util/List;

    .line 244
    iput-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mViewMapMatrix:Landroid/graphics/Matrix;

    .line 245
    iput-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mViewMapInverseMatrix:Landroid/graphics/Matrix;

    .line 246
    new-instance v1, Lcom/metamoji/mazec/stroke/HwStrokes;

    invoke-direct {v1}, Lcom/metamoji/mazec/stroke/HwStrokes;-><init>()V

    iput-object v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

    .line 248
    iput-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mPopupCandis:Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;

    .line 250
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mWorkRect:Landroid/graphics/RectF;

    .line 251
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mWorkRect2:Landroid/graphics/Rect;

    .line 257
    iput-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mStrokeStyle:Lcom/metamoji/mazec/stroke/StrokeStyle;

    .line 259
    iput-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mStrokePenInfo:Lcom/metamoji/mazec/stroke/StrokePenInfo;

    .line 262
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mStrokeBlocks:Ljava/util/List;

    .line 264
    iput-boolean p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mIgnoreStrokeUpdate:Z

    .line 268
    new-instance p1, Lcom/metamoji/mazec/ui/HandWritingView$1;

    invoke-direct {p1, p0}, Lcom/metamoji/mazec/ui/HandWritingView$1;-><init>(Lcom/metamoji/mazec/ui/HandWritingView;)V

    iput-object p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mLongPressDetecter:Ljava/lang/Runnable;

    .line 275
    new-instance p1, Lcom/metamoji/mazec/ui/HandWritingView$2;

    invoke-direct {p1, p0}, Lcom/metamoji/mazec/ui/HandWritingView$2;-><init>(Lcom/metamoji/mazec/ui/HandWritingView;)V

    iput-object p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mHwResultReflecter:Ljava/lang/Runnable;

    .line 283
    new-instance p1, Lcom/metamoji/mazec/ui/HandWritingView$3;

    invoke-direct {p1, p0}, Lcom/metamoji/mazec/ui/HandWritingView$3;-><init>(Lcom/metamoji/mazec/ui/HandWritingView;)V

    iput-object p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mHwResultPositioner:Ljava/lang/Runnable;

    .line 290
    new-instance p1, Lcom/metamoji/mazec/ui/HandWritingView$4;

    invoke-direct {p1, p0}, Lcom/metamoji/mazec/ui/HandWritingView$4;-><init>(Lcom/metamoji/mazec/ui/HandWritingView;)V

    iput-object p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mViewWidthEnhancer:Ljava/lang/Runnable;

    .line 297
    new-instance p1, Lcom/metamoji/mazec/ui/HandWritingView$5;

    invoke-direct {p1, p0}, Lcom/metamoji/mazec/ui/HandWritingView$5;-><init>(Lcom/metamoji/mazec/ui/HandWritingView;)V

    iput-object p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mAutoScroller:Ljava/lang/Runnable;

    .line 315
    new-instance p1, Lcom/metamoji/mazec/ui/HandWritingView$6;

    invoke-direct {p1, p0}, Lcom/metamoji/mazec/ui/HandWritingView$6;-><init>(Lcom/metamoji/mazec/ui/HandWritingView;)V

    iput-object p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mAutoCommitter:Ljava/lang/Runnable;

    .line 324
    new-instance p1, Lcom/metamoji/mazec/ui/HandWritingView$7;

    invoke-direct {p1, p0}, Lcom/metamoji/mazec/ui/HandWritingView$7;-><init>(Lcom/metamoji/mazec/ui/HandWritingView;)V

    iput-object p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mHandwriteStrokeBlockDetecter:Ljava/lang/Runnable;

    .line 354
    new-instance p1, Lcom/metamoji/mazec/ui/HandWritingView$8;

    invoke-direct {p1, p0}, Lcom/metamoji/mazec/ui/HandWritingView$8;-><init>(Lcom/metamoji/mazec/ui/HandWritingView;)V

    iput-object p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mOnClickSelectorListener:Lcom/metamoji/mazec/ui/HwrCandidateSelector$OnClickListener;

    .line 441
    new-instance p1, Lcom/metamoji/mazec/ui/HandWritingView$9;

    invoke-direct {p1, p0}, Lcom/metamoji/mazec/ui/HandWritingView$9;-><init>(Lcom/metamoji/mazec/ui/HandWritingView;)V

    iput-object p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mMazecEventListener:Lcom/metamoji/mazec/MazecEventListener;

    .line 1535
    new-instance p1, Lcom/metamoji/mazec/ui/HandWritingView$11;

    invoke-direct {p1, p0}, Lcom/metamoji/mazec/ui/HandWritingView$11;-><init>(Lcom/metamoji/mazec/ui/HandWritingView;)V

    iput-object p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mRightStrokeButtonExpander:Ljava/lang/Runnable;

    .line 1549
    new-instance p1, Lcom/metamoji/mazec/ui/HandWritingView$12;

    invoke-direct {p1, p0}, Lcom/metamoji/mazec/ui/HandWritingView$12;-><init>(Lcom/metamoji/mazec/ui/HandWritingView;)V

    iput-object p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mLeftStrokeButtonExpander:Ljava/lang/Runnable;

    .line 367
    invoke-direct {p0}, Lcom/metamoji/mazec/ui/HandWritingView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 375
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 138
    iput-boolean p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mStrokeSplitDisabled:Z

    const/4 p2, 0x0

    .line 141
    iput-object p2, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mSplitStrokeMap:Ljava/util/HashMap;

    .line 144
    iput-object p2, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mWordspacingRect:Landroid/graphics/RectF;

    const v0, 0x3f48a60e

    .line 176
    iput v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mCurBaselineCoef:F

    .line 194
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mDragMatrix:Landroid/graphics/Matrix;

    .line 195
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mDragShiftTargets:Ljava/util/HashSet;

    .line 201
    iput-boolean p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mTouchScrollButton:Z

    .line 204
    iput p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mScrollX:I

    const/4 v0, 0x1

    .line 207
    iput-boolean v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mAutoScrollEnabled:Z

    .line 208
    iput p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mAutoScrollAreaWidth:I

    .line 209
    iput p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mAutoScrollDelay:I

    .line 210
    iput-boolean p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mNeedAutoScroll:Z

    .line 213
    iput-boolean p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mAutoCommitEnabled:Z

    .line 214
    iput p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mAutoCommitDelay:I

    .line 215
    iput-boolean p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mNeedAutoCommit:Z

    const/4 v0, 0x0

    .line 218
    iput v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mWordspacingCoef:F

    .line 221
    iput v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mDragStrokeSplitDistance:F

    .line 224
    iput v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mWordspacingLineWidth:F

    const/4 v0, -0x1

    .line 233
    iput v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mPressedCandidatesIndex:I

    .line 234
    iput p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mPressedCandidatesType:I

    .line 236
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mCandidateSelectors:Ljava/util/List;

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mStrokeDrawers:Ljava/util/List;

    .line 244
    iput-object p2, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mViewMapMatrix:Landroid/graphics/Matrix;

    .line 245
    iput-object p2, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mViewMapInverseMatrix:Landroid/graphics/Matrix;

    .line 246
    new-instance v0, Lcom/metamoji/mazec/stroke/HwStrokes;

    invoke-direct {v0}, Lcom/metamoji/mazec/stroke/HwStrokes;-><init>()V

    iput-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

    .line 248
    iput-object p2, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mPopupCandis:Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;

    .line 250
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mWorkRect:Landroid/graphics/RectF;

    .line 251
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mWorkRect2:Landroid/graphics/Rect;

    .line 257
    iput-object p2, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mStrokeStyle:Lcom/metamoji/mazec/stroke/StrokeStyle;

    .line 259
    iput-object p2, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mStrokePenInfo:Lcom/metamoji/mazec/stroke/StrokePenInfo;

    .line 262
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mStrokeBlocks:Ljava/util/List;

    .line 264
    iput-boolean p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mIgnoreStrokeUpdate:Z

    .line 268
    new-instance p1, Lcom/metamoji/mazec/ui/HandWritingView$1;

    invoke-direct {p1, p0}, Lcom/metamoji/mazec/ui/HandWritingView$1;-><init>(Lcom/metamoji/mazec/ui/HandWritingView;)V

    iput-object p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mLongPressDetecter:Ljava/lang/Runnable;

    .line 275
    new-instance p1, Lcom/metamoji/mazec/ui/HandWritingView$2;

    invoke-direct {p1, p0}, Lcom/metamoji/mazec/ui/HandWritingView$2;-><init>(Lcom/metamoji/mazec/ui/HandWritingView;)V

    iput-object p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mHwResultReflecter:Ljava/lang/Runnable;

    .line 283
    new-instance p1, Lcom/metamoji/mazec/ui/HandWritingView$3;

    invoke-direct {p1, p0}, Lcom/metamoji/mazec/ui/HandWritingView$3;-><init>(Lcom/metamoji/mazec/ui/HandWritingView;)V

    iput-object p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mHwResultPositioner:Ljava/lang/Runnable;

    .line 290
    new-instance p1, Lcom/metamoji/mazec/ui/HandWritingView$4;

    invoke-direct {p1, p0}, Lcom/metamoji/mazec/ui/HandWritingView$4;-><init>(Lcom/metamoji/mazec/ui/HandWritingView;)V

    iput-object p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mViewWidthEnhancer:Ljava/lang/Runnable;

    .line 297
    new-instance p1, Lcom/metamoji/mazec/ui/HandWritingView$5;

    invoke-direct {p1, p0}, Lcom/metamoji/mazec/ui/HandWritingView$5;-><init>(Lcom/metamoji/mazec/ui/HandWritingView;)V

    iput-object p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mAutoScroller:Ljava/lang/Runnable;

    .line 315
    new-instance p1, Lcom/metamoji/mazec/ui/HandWritingView$6;

    invoke-direct {p1, p0}, Lcom/metamoji/mazec/ui/HandWritingView$6;-><init>(Lcom/metamoji/mazec/ui/HandWritingView;)V

    iput-object p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mAutoCommitter:Ljava/lang/Runnable;

    .line 324
    new-instance p1, Lcom/metamoji/mazec/ui/HandWritingView$7;

    invoke-direct {p1, p0}, Lcom/metamoji/mazec/ui/HandWritingView$7;-><init>(Lcom/metamoji/mazec/ui/HandWritingView;)V

    iput-object p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mHandwriteStrokeBlockDetecter:Ljava/lang/Runnable;

    .line 354
    new-instance p1, Lcom/metamoji/mazec/ui/HandWritingView$8;

    invoke-direct {p1, p0}, Lcom/metamoji/mazec/ui/HandWritingView$8;-><init>(Lcom/metamoji/mazec/ui/HandWritingView;)V

    iput-object p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mOnClickSelectorListener:Lcom/metamoji/mazec/ui/HwrCandidateSelector$OnClickListener;

    .line 441
    new-instance p1, Lcom/metamoji/mazec/ui/HandWritingView$9;

    invoke-direct {p1, p0}, Lcom/metamoji/mazec/ui/HandWritingView$9;-><init>(Lcom/metamoji/mazec/ui/HandWritingView;)V

    iput-object p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mMazecEventListener:Lcom/metamoji/mazec/MazecEventListener;

    .line 1535
    new-instance p1, Lcom/metamoji/mazec/ui/HandWritingView$11;

    invoke-direct {p1, p0}, Lcom/metamoji/mazec/ui/HandWritingView$11;-><init>(Lcom/metamoji/mazec/ui/HandWritingView;)V

    iput-object p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mRightStrokeButtonExpander:Ljava/lang/Runnable;

    .line 1549
    new-instance p1, Lcom/metamoji/mazec/ui/HandWritingView$12;

    invoke-direct {p1, p0}, Lcom/metamoji/mazec/ui/HandWritingView$12;-><init>(Lcom/metamoji/mazec/ui/HandWritingView;)V

    iput-object p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mLeftStrokeButtonExpander:Ljava/lang/Runnable;

    .line 377
    invoke-direct {p0}, Lcom/metamoji/mazec/ui/HandWritingView;->init()V

    return-void
.end method

.method private adjustLayout()V
    .locals 5

    .line 879
    iget-boolean v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mIsLatinLang:Z

    .line 883
    iget v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mCurrentHeight:I

    const v2, 0x3e5d67c9

    if-eqz v0, :cond_0

    int-to-float v0, v1

    mul-float/2addr v0, v2

    .line 880
    iput v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mCurrentTop:F

    int-to-float v0, v1

    const v1, 0x3f2c1bad

    mul-float/2addr v0, v1

    .line 881
    iput v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mCurrentBase:F

    goto :goto_0

    :cond_0
    int-to-float v0, v1

    mul-float/2addr v0, v2

    .line 883
    iput v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mCurrentTop:F

    int-to-float v0, v1

    .line 884
    iget v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mCurBaselineCoef:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mCurrentBase:F

    .line 886
    :goto_0
    iget v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mCurrentHeight:I

    int-to-double v1, v0

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_2

    .line 887
    iget-object v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mViewData:Lcom/metamoji/mazec/ui/HwStrokesModel;

    if-eqz v1, :cond_1

    .line 888
    iget v2, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mCurrentTop:F

    iget v3, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mCurrentBase:F

    int-to-float v0, v0

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2, v3, v0}, Lcom/metamoji/mazec/ui/HwStrokesModel;->setGuidelines(FFFF)V

    .line 890
    :cond_1
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

    if-eqz v0, :cond_2

    .line 891
    iget v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mCurrentTop:F

    iget v2, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mCurrentBase:F

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/mazec/stroke/HwStrokes;->setGuidelinesWithTop(FF)V

    :cond_2
    return-void
.end method

.method private adjustStrokesRelatedVars()V
    .locals 8

    .line 704
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v0

    .line 705
    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->getRefStrokes()Lcom/metamoji/mazec/stroke/HwStrokes;

    move-result-object v1

    .line 706
    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->getHwStrokesModel()Lcom/metamoji/mazec/ui/HwStrokesModel;

    move-result-object v0

    .line 707
    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/HwStrokesModel;->getGuideline1()F

    move-result v2

    .line 708
    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/HwStrokesModel;->getGuideline2()F

    move-result v3

    .line 709
    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/HwStrokesModel;->getGuideline3()F

    move-result v4

    .line 710
    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/HwStrokesModel;->getGuideline4()F

    move-result v0

    const/4 v5, 0x0

    cmpl-float v6, v2, v5

    const/4 v7, 0x0

    if-nez v6, :cond_0

    .line 713
    iget v6, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mCurrentTop:F

    cmpl-float v6, v3, v6

    if-nez v6, :cond_0

    iget v6, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mCurrentBase:F

    cmpl-float v4, v4, v6

    if-nez v4, :cond_0

    iget v4, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mCurrentHeight:I

    int-to-float v4, v4

    cmpl-float v0, v0, v4

    if-nez v0, :cond_0

    .line 714
    iput-object v7, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mViewMapMatrix:Landroid/graphics/Matrix;

    goto :goto_1

    .line 716
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mViewMapMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_1

    .line 717
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mViewMapMatrix:Landroid/graphics/Matrix;

    goto :goto_0

    .line 719
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 721
    :goto_0
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mViewMapMatrix:Landroid/graphics/Matrix;

    neg-float v4, v2

    invoke-virtual {v0, v5, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 722
    iget v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mCurrentBase:F

    iget v4, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mCurrentTop:F

    sub-float/2addr v0, v4

    sub-float/2addr v3, v2

    div-float/2addr v0, v3

    .line 723
    iget-object v2, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mViewMapMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 724
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mViewMapMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mCurrentTop:F

    invoke-virtual {v0, v5, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :goto_1
    if-nez v1, :cond_4

    .line 729
    iput-object v7, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mRefStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

    .line 730
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mViewMapMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_2

    .line 731
    iput-object v7, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mViewMapInverseMatrix:Landroid/graphics/Matrix;

    goto/16 :goto_6

    .line 733
    :cond_2
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mViewMapInverseMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_3

    .line 734
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mViewMapInverseMatrix:Landroid/graphics/Matrix;

    goto :goto_2

    .line 736
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 738
    :goto_2
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mViewMapMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mViewMapInverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    goto/16 :goto_6

    .line 741
    :cond_4
    iget v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mCurrentHeight:I

    int-to-float v0, v0

    const v2, 0x3e4ccccd    # 0.2f

    mul-float/2addr v0, v2

    .line 743
    iget-object v2, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mViewMapMatrix:Landroid/graphics/Matrix;

    if-nez v2, :cond_5

    .line 744
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mViewMapMatrix:Landroid/graphics/Matrix;

    .line 745
    invoke-virtual {v2, v0, v5}, Landroid/graphics/Matrix;->setTranslate(FF)V

    goto :goto_3

    .line 747
    :cond_5
    invoke-virtual {v2, v0, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 750
    :goto_3
    iget-object v2, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mViewMapInverseMatrix:Landroid/graphics/Matrix;

    if-nez v2, :cond_6

    .line 751
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mViewMapInverseMatrix:Landroid/graphics/Matrix;

    goto :goto_4

    .line 753
    :cond_6
    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 755
    :goto_4
    iget-object v2, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mViewMapMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mViewMapInverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 758
    iget v2, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mCurrentTop:F

    iget v3, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mCurrentBase:F

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/mazec/stroke/HwStrokes;->clone(FF)Lcom/metamoji/mazec/stroke/HwStrokes;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mRefStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

    .line 760
    invoke-virtual {v1}, Lcom/metamoji/mazec/stroke/HwStrokes;->outerBounds()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/metamoji/mazec/stroke/HwStrokes;->shift(F)V

    .line 762
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mRefStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

    invoke-virtual {v0}, Lcom/metamoji/mazec/stroke/HwStrokes;->strokeCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_7

    .line 764
    iget-object v2, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mRefStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

    invoke-virtual {v2, v1}, Lcom/metamoji/mazec/stroke/HwStrokes;->getStroke(I)Lcom/metamoji/mazec/stroke/HwStroke;

    move-result-object v2

    .line 765
    invoke-virtual {v2}, Lcom/metamoji/mazec/stroke/HwStroke;->getStrokeStyle()Lcom/metamoji/mazec/stroke/StrokeStyle;

    move-result-object v3

    .line 766
    invoke-virtual {v3}, Lcom/metamoji/mazec/stroke/StrokeStyle;->cloneMutable()Lcom/metamoji/mazec/stroke/MutableStrokeStyle;

    move-result-object v4

    .line 767
    invoke-virtual {v3}, Lcom/metamoji/mazec/stroke/StrokeStyle;->getLineColor()I

    move-result v3

    .line 768
    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    div-int/lit8 v5, v5, 0x4

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v6

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v7

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v5, v6, v7, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    .line 769
    invoke-virtual {v4, v3}, Lcom/metamoji/mazec/stroke/MutableStrokeStyle;->setLineColor(I)V

    .line 770
    invoke-virtual {v2, v4}, Lcom/metamoji/mazec/stroke/HwStroke;->setStrokeStyle(Lcom/metamoji/mazec/stroke/StrokeStyle;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 773
    :cond_7
    :goto_6
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mStrokeDrawers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/mazec/stroke/StrokeDrawer;

    .line 774
    invoke-virtual {v1}, Lcom/metamoji/mazec/stroke/StrokeDrawer;->clearPathCache()V

    goto :goto_7

    .line 776
    :cond_8
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mViewData:Lcom/metamoji/mazec/ui/HwStrokesModel;

    iget-object v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mViewMapMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Lcom/metamoji/mazec/ui/HwStrokesModel;->getHwStrokes(Landroid/graphics/Matrix;)Lcom/metamoji/mazec/stroke/HwStrokes;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

    return-void
.end method

.method private clear()V
    .locals 3

    .line 1071
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mCandidateSelectors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 1073
    iput v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mDragState:I

    const/4 v1, -0x1

    .line 1074
    iput v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mPressedCandidatesIndex:I

    .line 1076
    iget-object v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

    invoke-virtual {v1}, Lcom/metamoji/mazec/stroke/HwStrokes;->removeAllStrokes()V

    .line 1077
    iget-object v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mHandwriteStrokeBlockDetecter:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 1079
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v1

    .line 1080
    invoke-virtual {v1}, Lcom/metamoji/mazec/MazecIms;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 1081
    iget-object v2, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mHandwriteStrokeBlockDetecter:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1085
    :cond_0
    iget v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mInitWidth:I

    iput v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mCurrentWidth:I

    .line 1086
    iput v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mScrollX:I

    .line 1089
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/HandWritingView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/metamoji/mazec/ui/ExtHorizontalScrollView;

    .line 1090
    invoke-virtual {v1, v0}, Lcom/metamoji/mazec/ui/ExtHorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 1091
    invoke-virtual {v1, v0, v0}, Lcom/metamoji/mazec/ui/ExtHorizontalScrollView;->scrollTo(II)V

    .line 1093
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mStrokeBlocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1094
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/HandWritingView;->requestLayout()V

    return-void
.end method

.method private clearCallbacks()V
    .locals 2

    .line 863
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 865
    iget-object v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mLongPressDetecter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 866
    iget-object v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mHwResultReflecter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 867
    iget-object v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mViewWidthEnhancer:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 868
    iget-object v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mAutoScroller:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 869
    iget-object v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mAutoCommitter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 870
    iget-object v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mHandwriteStrokeBlockDetecter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private clearPopup()V
    .locals 2

    .line 845
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mPopupCandis:Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;

    if-eqz v0, :cond_1

    .line 846
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 848
    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->getInputView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 850
    check-cast v0, Lcom/metamoji/mazec/ui/MazecView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/mazec/ui/MazecView;->showBarrierView(Z)V

    .line 853
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mPopupCandis:Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;->dismiss()V

    const/4 v0, 0x0

    .line 854
    iput-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mPopupCandis:Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;

    :cond_1
    return-void
.end method

.method private drawDragStrokes(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1337
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 1338
    iget-object v8, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

    .line 1340
    iget v2, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mCurrentHeight:I

    int-to-float v2, v2

    const/high16 v3, 0x40e00000    # 7.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x40800000    # 4.0f

    div-float v3, v2, v3

    .line 1343
    iget v4, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mLastTouchPointX:F

    iget v5, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mDragDiff:F

    sub-float/2addr v4, v5

    .line 1345
    iget v5, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mTouchBeganPointY:F

    invoke-direct {v0, v4, v5, v3, v2}, Lcom/metamoji/mazec/ui/HandWritingView;->getBreakLinePath(FFFF)Landroid/graphics/Path;

    move-result-object v2

    .line 1369
    iget-object v5, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mPaintForBk:Landroid/graphics/Paint;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1370
    iget-object v5, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mPaintForBk:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1371
    iget-object v5, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mPaintForBk:Landroid/graphics/Paint;

    new-instance v9, Landroid/graphics/LinearGradient;

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v6, v3

    sub-float v10, v4, v6

    const/high16 v6, 0x3fc00000    # 1.5f

    mul-float/2addr v3, v6

    add-float v12, v4, v3

    const/4 v15, -0x1

    sget-object v16, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v11, 0x0

    const/4 v13, 0x0

    const v14, -0x222223

    invoke-direct/range {v9 .. v16}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1372
    iget-object v3, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mPaintForBk:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1373
    iget-object v3, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mPaintForBk:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1375
    iget-object v3, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mPaintForBk:Landroid/graphics/Paint;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1376
    iget-object v3, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mPaintForBk:Landroid/graphics/Paint;

    sget v5, Lcom/metamoji/mazec/ui/HandWritingView;->mBreakLineColor:I

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1377
    iget-object v3, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mPaintForBk:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1378
    iget-object v3, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mPaintForBk:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1380
    iget-object v2, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mPaintForBk:Landroid/graphics/Paint;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1381
    iget-object v2, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mPaintForBk:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1399
    invoke-direct {v0}, Lcom/metamoji/mazec/ui/HandWritingView;->useDefaultStrokeStyle()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1404
    invoke-direct {v0}, Lcom/metamoji/mazec/ui/HandWritingView;->getDefaultStrokeStyle()Lcom/metamoji/mazec/stroke/StrokeStyle;

    move-result-object v2

    .line 1405
    invoke-virtual {v0, v2}, Lcom/metamoji/mazec/ui/HandWritingView;->getAbsoluteLineWidth(Lcom/metamoji/mazec/stroke/StrokeStyle;)F

    move-result v3

    .line 1406
    iget-object v5, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mWorkRect:Landroid/graphics/RectF;

    iget v6, v7, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    sub-float/2addr v6, v3

    iget v10, v7, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    sub-float/2addr v10, v3

    iget v11, v7, Landroid/graphics/Rect;->right:I

    int-to-float v11, v11

    add-float/2addr v11, v3

    iget v12, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v12, v12

    add-float/2addr v12, v3

    invoke-virtual {v5, v6, v10, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    move-object v10, v2

    goto :goto_0

    :cond_0
    move-object v10, v4

    .line 1409
    :goto_0
    invoke-virtual {v8}, Lcom/metamoji/mazec/stroke/HwStrokes;->strokeCount()I

    move-result v11

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v11, :cond_e

    .line 1414
    invoke-virtual {v8, v13}, Lcom/metamoji/mazec/stroke/HwStrokes;->getStroke(I)Lcom/metamoji/mazec/stroke/HwStroke;

    move-result-object v2

    if-eqz v9, :cond_1

    goto :goto_2

    .line 1419
    :cond_1
    invoke-virtual {v2}, Lcom/metamoji/mazec/stroke/HwStroke;->getStrokeStyle()Lcom/metamoji/mazec/stroke/StrokeStyle;

    move-result-object v3

    .line 1420
    invoke-virtual {v3, v4}, Lcom/metamoji/mazec/stroke/StrokeStyle;->equals(Lcom/metamoji/mazec/stroke/StrokeStyle;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1421
    invoke-virtual {v8, v3}, Lcom/metamoji/mazec/stroke/HwStrokes;->lineWidthOfStrokeStyle(Lcom/metamoji/mazec/stroke/StrokeStyle;)F

    move-result v4

    .line 1423
    iget-object v5, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mWorkRect:Landroid/graphics/RectF;

    iget v6, v7, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    sub-float/2addr v6, v4

    iget v14, v7, Landroid/graphics/Rect;->top:I

    int-to-float v14, v14

    sub-float/2addr v14, v4

    iget v15, v7, Landroid/graphics/Rect;->right:I

    int-to-float v15, v15

    add-float/2addr v15, v4

    const/16 v16, 0x0

    iget v12, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v12, v12

    add-float/2addr v12, v4

    invoke-virtual {v5, v6, v14, v15, v12}, Landroid/graphics/RectF;->set(FFFF)V

    move-object v12, v3

    goto :goto_3

    :cond_2
    :goto_2
    const/16 v16, 0x0

    move-object v12, v4

    .line 1427
    :goto_3
    iget-object v3, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mDragShiftTargets:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1429
    invoke-direct {v0, v2}, Lcom/metamoji/mazec/ui/HandWritingView;->getShiftStrokeStyle(Lcom/metamoji/mazec/stroke/HwStroke;)Lcom/metamoji/mazec/stroke/StrokeStyle;

    move-result-object v3

    .line 1430
    invoke-direct {v0, v3}, Lcom/metamoji/mazec/ui/HandWritingView;->getDrawer(Lcom/metamoji/mazec/stroke/StrokeStyle;)Lcom/metamoji/mazec/stroke/StrokeDrawer;

    move-result-object v4

    iget-object v5, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mDragMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v1, v3, v5, v2}, Lcom/metamoji/mazec/stroke/StrokeDrawer;->draw(Landroid/graphics/Canvas;Lcom/metamoji/mazec/stroke/StrokeStyle;Landroid/graphics/Matrix;Lcom/metamoji/mazec/stroke/HwStroke;)V

    goto/16 :goto_8

    .line 1432
    :cond_3
    iget-object v3, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mSplitStrokeMap:Ljava/util/HashMap;

    if-eqz v3, :cond_9

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1434
    iget-object v3, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mSplitStrokeMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/metamoji/mazec/stroke/HwStroke;

    .line 1435
    aget-object v4, v3, v16

    .line 1436
    invoke-virtual {v4}, Lcom/metamoji/mazec/stroke/HwStroke;->bounds()Landroid/graphics/RectF;

    move-result-object v5

    .line 1437
    iget-object v6, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mWorkRect:Landroid/graphics/RectF;

    iget v14, v5, Landroid/graphics/RectF;->left:F

    iget v15, v5, Landroid/graphics/RectF;->top:F

    move-object/from16 v17, v3

    iget v3, v5, Landroid/graphics/RectF;->right:F

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v6, v14, v15, v3, v5}, Landroid/graphics/RectF;->intersects(FFFF)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1438
    invoke-virtual {v4}, Lcom/metamoji/mazec/stroke/HwStroke;->xCenterOfGravity()F

    move-result v3

    iget v5, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mLastTouchPointX:F

    cmpg-float v3, v3, v5

    if-gez v3, :cond_5

    if-eqz v9, :cond_4

    .line 1441
    invoke-direct {v0, v10}, Lcom/metamoji/mazec/ui/HandWritingView;->getDrawer(Lcom/metamoji/mazec/stroke/StrokeStyle;)Lcom/metamoji/mazec/stroke/StrokeDrawer;

    move-result-object v3

    invoke-virtual {v3, v1, v10, v4}, Lcom/metamoji/mazec/stroke/StrokeDrawer;->draw(Landroid/graphics/Canvas;Lcom/metamoji/mazec/stroke/StrokeStyle;Lcom/metamoji/mazec/stroke/HwStroke;)V

    goto :goto_4

    .line 1443
    :cond_4
    invoke-virtual {v4}, Lcom/metamoji/mazec/stroke/HwStroke;->getStrokeStyle()Lcom/metamoji/mazec/stroke/StrokeStyle;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/metamoji/mazec/ui/HandWritingView;->getDrawer(Lcom/metamoji/mazec/stroke/StrokeStyle;)Lcom/metamoji/mazec/stroke/StrokeDrawer;

    move-result-object v3

    invoke-virtual {v3, v1, v4}, Lcom/metamoji/mazec/stroke/StrokeDrawer;->draw(Landroid/graphics/Canvas;Lcom/metamoji/mazec/stroke/HwStroke;)V

    goto :goto_4

    .line 1447
    :cond_5
    invoke-direct {v0, v4}, Lcom/metamoji/mazec/ui/HandWritingView;->getDeletingStrokeStyle(Lcom/metamoji/mazec/stroke/HwStroke;)Lcom/metamoji/mazec/stroke/StrokeStyle;

    move-result-object v3

    .line 1448
    invoke-direct {v0, v3}, Lcom/metamoji/mazec/ui/HandWritingView;->getDrawer(Lcom/metamoji/mazec/stroke/StrokeStyle;)Lcom/metamoji/mazec/stroke/StrokeDrawer;

    move-result-object v5

    invoke-virtual {v5, v1, v3, v4}, Lcom/metamoji/mazec/stroke/StrokeDrawer;->draw(Landroid/graphics/Canvas;Lcom/metamoji/mazec/stroke/StrokeStyle;Lcom/metamoji/mazec/stroke/HwStroke;)V

    :cond_6
    :goto_4
    const/4 v3, 0x1

    .line 1451
    aget-object v5, v17, v3

    .line 1452
    invoke-virtual {v5}, Lcom/metamoji/mazec/stroke/HwStroke;->getStrokeStyle()Lcom/metamoji/mazec/stroke/StrokeStyle;

    move-result-object v6

    .line 1453
    invoke-direct {v0, v6}, Lcom/metamoji/mazec/ui/HandWritingView;->getDrawer(Lcom/metamoji/mazec/stroke/StrokeStyle;)Lcom/metamoji/mazec/stroke/StrokeDrawer;

    move-result-object v14

    iget-object v15, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mDragMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v14, v1, v6, v15, v5}, Lcom/metamoji/mazec/stroke/StrokeDrawer;->draw(Landroid/graphics/Canvas;Lcom/metamoji/mazec/stroke/StrokeStyle;Landroid/graphics/Matrix;Lcom/metamoji/mazec/stroke/HwStroke;)V

    .line 1457
    invoke-virtual {v2}, Lcom/metamoji/mazec/stroke/HwStroke;->points()Ljava/util/List;

    move-result-object v6

    move/from16 v14, v16

    invoke-interface {v6, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    .line 1458
    invoke-virtual {v4}, Lcom/metamoji/mazec/stroke/HwStroke;->points()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/graphics/PointF;

    .line 1459
    iget v14, v6, Landroid/graphics/PointF;->x:F

    move/from16 v17, v3

    iget v3, v15, Landroid/graphics/PointF;->x:F

    cmpl-float v3, v14, v3

    if-nez v3, :cond_7

    iget v3, v6, Landroid/graphics/PointF;->y:F

    iget v6, v15, Landroid/graphics/PointF;->y:F

    cmpl-float v3, v3, v6

    if-nez v3, :cond_7

    .line 1460
    invoke-virtual {v4}, Lcom/metamoji/mazec/stroke/HwStroke;->points()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v4}, Lcom/metamoji/mazec/stroke/HwStroke;->countOfPoints()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Landroid/graphics/PointF;

    .line 1461
    invoke-virtual {v5}, Lcom/metamoji/mazec/stroke/HwStroke;->points()Ljava/util/List;

    move-result-object v3

    const/4 v14, 0x0

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    goto :goto_5

    .line 1464
    :cond_7
    invoke-virtual {v5}, Lcom/metamoji/mazec/stroke/HwStroke;->points()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v5}, Lcom/metamoji/mazec/stroke/HwStroke;->countOfPoints()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    .line 1466
    :goto_5
    iget-object v4, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mPaintForBk:Landroid/graphics/Paint;

    if-eqz v9, :cond_8

    const/high16 v2, -0x1000000

    goto :goto_6

    :cond_8
    invoke-virtual {v2}, Lcom/metamoji/mazec/stroke/HwStroke;->getStrokeStyle()Lcom/metamoji/mazec/stroke/StrokeStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/mazec/stroke/StrokeStyle;->getLineColor()I

    move-result v2

    :goto_6
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1468
    iget v2, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/16 v16, 0x0

    aput v2, v4, v16

    aput v3, v4, v17

    .line 1469
    iget-object v2, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mDragMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v4}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1470
    iget v2, v15, Landroid/graphics/PointF;->x:F

    iget v3, v15, Landroid/graphics/PointF;->y:F

    move-object v5, v4

    aget v4, v5, v16

    aget v5, v5, v17

    iget-object v6, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mPaintForBk:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_8

    .line 1473
    :cond_9
    invoke-virtual {v2}, Lcom/metamoji/mazec/stroke/HwStroke;->bounds()Landroid/graphics/RectF;

    move-result-object v3

    .line 1474
    iget-object v4, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mWorkRect:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->left:F

    iget v6, v3, Landroid/graphics/RectF;->top:F

    iget v14, v3, Landroid/graphics/RectF;->right:F

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v4, v5, v6, v14, v3}, Landroid/graphics/RectF;->intersects(FFFF)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1475
    iget v3, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mPressedCandidatesIndex:I

    if-gez v3, :cond_b

    invoke-virtual {v2}, Lcom/metamoji/mazec/stroke/HwStroke;->xCenterOfGravity()F

    move-result v3

    iget v4, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mLastTouchPointX:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_a

    goto :goto_7

    .line 1484
    :cond_a
    invoke-direct {v0, v2}, Lcom/metamoji/mazec/ui/HandWritingView;->getDeletingStrokeStyle(Lcom/metamoji/mazec/stroke/HwStroke;)Lcom/metamoji/mazec/stroke/StrokeStyle;

    move-result-object v3

    .line 1485
    invoke-direct {v0, v3}, Lcom/metamoji/mazec/ui/HandWritingView;->getDrawer(Lcom/metamoji/mazec/stroke/StrokeStyle;)Lcom/metamoji/mazec/stroke/StrokeDrawer;

    move-result-object v4

    invoke-virtual {v4, v1, v3, v2}, Lcom/metamoji/mazec/stroke/StrokeDrawer;->draw(Landroid/graphics/Canvas;Lcom/metamoji/mazec/stroke/StrokeStyle;Lcom/metamoji/mazec/stroke/HwStroke;)V

    goto :goto_8

    :cond_b
    :goto_7
    if-eqz v9, :cond_c

    .line 1478
    invoke-direct {v0, v10}, Lcom/metamoji/mazec/ui/HandWritingView;->getDrawer(Lcom/metamoji/mazec/stroke/StrokeStyle;)Lcom/metamoji/mazec/stroke/StrokeDrawer;

    move-result-object v3

    invoke-virtual {v3, v1, v10, v2}, Lcom/metamoji/mazec/stroke/StrokeDrawer;->draw(Landroid/graphics/Canvas;Lcom/metamoji/mazec/stroke/StrokeStyle;Lcom/metamoji/mazec/stroke/HwStroke;)V

    goto :goto_8

    .line 1480
    :cond_c
    invoke-virtual {v2}, Lcom/metamoji/mazec/stroke/HwStroke;->getStrokeStyle()Lcom/metamoji/mazec/stroke/StrokeStyle;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/metamoji/mazec/ui/HandWritingView;->getDrawer(Lcom/metamoji/mazec/stroke/StrokeStyle;)Lcom/metamoji/mazec/stroke/StrokeDrawer;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/metamoji/mazec/stroke/StrokeDrawer;->draw(Landroid/graphics/Canvas;Lcom/metamoji/mazec/stroke/HwStroke;)V

    :cond_d
    :goto_8
    add-int/lit8 v13, v13, 0x1

    move-object v4, v12

    goto/16 :goto_1

    :cond_e
    return-void
.end method

.method private drawGuidelines(Landroid/graphics/Canvas;)V
    .locals 14

    .line 2171
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mPaintForBk:Landroid/graphics/Paint;

    sget v1, Lcom/metamoji/mazec/ui/HandWritingView;->mGuidelineColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2173
    iget v4, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mCurrentBase:F

    iget v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mCurrentWidth:I

    int-to-float v5, v0

    iget-object v7, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mPaintForBk:Landroid/graphics/Paint;

    const/4 v3, 0x0

    move v6, v4

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2175
    iget-object p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mPaintForBk:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mDashPathEffect:Landroid/graphics/DashPathEffect;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 2176
    iget v10, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mCurrentTop:F

    iget p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mCurrentWidth:I

    int-to-float v11, p1

    iget-object v13, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mPaintForBk:Landroid/graphics/Paint;

    const/4 v9, 0x0

    move v12, v10

    move-object v8, v2

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2177
    iget-object p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mPaintForBk:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    return-void
.end method

.method private drawStrokes(Landroid/graphics/Canvas;Lcom/metamoji/mazec/stroke/HwStrokes;)V
    .locals 12

    .line 1272
    invoke-virtual {p2}, Lcom/metamoji/mazec/stroke/HwStrokes;->getStrokes()Ljava/util/List;

    move-result-object p2

    .line 1273
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 1274
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 1278
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v4

    move-object v4, v3

    :goto_0
    if-ge v5, v2, :cond_2

    .line 1283
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/metamoji/mazec/stroke/HwStroke;

    .line 1284
    invoke-virtual {v6}, Lcom/metamoji/mazec/stroke/HwStroke;->bounds()Landroid/graphics/RectF;

    move-result-object v7

    .line 1285
    invoke-virtual {v6}, Lcom/metamoji/mazec/stroke/HwStroke;->getStrokeStyle()Lcom/metamoji/mazec/stroke/StrokeStyle;

    move-result-object v8

    .line 1286
    invoke-virtual {v8, v3}, Lcom/metamoji/mazec/stroke/StrokeStyle;->equals(Lcom/metamoji/mazec/stroke/StrokeStyle;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1287
    invoke-virtual {p0, v8}, Lcom/metamoji/mazec/ui/HandWritingView;->getAbsoluteLineWidth(Lcom/metamoji/mazec/stroke/StrokeStyle;)F

    move-result v3

    .line 1289
    iget v4, v1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    sub-float/2addr v4, v3

    iget v9, v1, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    sub-float/2addr v9, v3

    iget v10, v1, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    add-float/2addr v10, v3

    iget v11, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v11, v11

    add-float/2addr v11, v3

    invoke-virtual {v0, v4, v9, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1290
    invoke-direct {p0, v8}, Lcom/metamoji/mazec/ui/HandWritingView;->getDrawer(Lcom/metamoji/mazec/stroke/StrokeStyle;)Lcom/metamoji/mazec/stroke/StrokeDrawer;

    move-result-object v3

    move-object v4, v3

    move-object v3, v8

    .line 1293
    :cond_0
    iget v8, v7, Landroid/graphics/RectF;->left:F

    iget v9, v7, Landroid/graphics/RectF;->top:F

    iget v10, v7, Landroid/graphics/RectF;->right:F

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v8, v9, v10, v7}, Landroid/graphics/RectF;->intersects(FFFF)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1294
    invoke-virtual {v4, p1, v6}, Lcom/metamoji/mazec/stroke/StrokeDrawer;->draw(Landroid/graphics/Canvas;Lcom/metamoji/mazec/stroke/HwStroke;)V

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private drawStrokes(Landroid/graphics/Canvas;Lcom/metamoji/mazec/stroke/StrokeStyle;Lcom/metamoji/mazec/stroke/HwStrokes;)V
    .locals 9

    .line 1301
    invoke-virtual {p3}, Lcom/metamoji/mazec/stroke/HwStrokes;->getStrokes()Ljava/util/List;

    move-result-object p3

    .line 1302
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 1303
    invoke-virtual {p0, p2}, Lcom/metamoji/mazec/ui/HandWritingView;->getAbsoluteLineWidth(Lcom/metamoji/mazec/stroke/StrokeStyle;)F

    move-result v1

    .line 1304
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 1305
    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float/2addr v3, v1

    iget v4, v2, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    sub-float/2addr v4, v1

    iget v5, v2, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    add-float/2addr v5, v1

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    add-float/2addr v2, v1

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1306
    invoke-direct {p0, p2}, Lcom/metamoji/mazec/ui/HandWritingView;->getDrawer(Lcom/metamoji/mazec/stroke/StrokeStyle;)Lcom/metamoji/mazec/stroke/StrokeDrawer;

    move-result-object v1

    .line 1307
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 1310
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/mazec/stroke/HwStroke;

    .line 1311
    invoke-virtual {v4}, Lcom/metamoji/mazec/stroke/HwStroke;->bounds()Landroid/graphics/RectF;

    move-result-object v5

    .line 1313
    iget v6, v5, Landroid/graphics/RectF;->left:F

    iget v7, v5, Landroid/graphics/RectF;->top:F

    iget v8, v5, Landroid/graphics/RectF;->right:F

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v6, v7, v8, v5}, Landroid/graphics/RectF;->intersects(FFFF)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1314
    invoke-virtual {v1, p1, p2, v4}, Lcom/metamoji/mazec/stroke/StrokeDrawer;->draw(Landroid/graphics/Canvas;Lcom/metamoji/mazec/stroke/StrokeStyle;Lcom/metamoji/mazec/stroke/HwStroke;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getBreakLinePath(FFFF)Landroid/graphics/Path;
    .locals 5

    .line 1502
    iget v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mCurrentHeight:I

    int-to-float v0, v0

    .line 1504
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 1506
    invoke-virtual {v1, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    move v3, p1

    move v2, p2

    :goto_0
    cmpg-float v4, v2, v0

    if-gtz v4, :cond_0

    neg-float p3, p3

    add-float/2addr v3, p3

    add-float/2addr v2, p4

    .line 1511
    invoke-virtual {v1, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    .line 1513
    :cond_0
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    add-float/2addr v3, v0

    .line 1514
    invoke-virtual {v1, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_1
    const/4 v0, 0x0

    cmpl-float v0, v2, v0

    if-ltz v0, :cond_1

    neg-float p3, p3

    add-float/2addr v3, p3

    sub-float/2addr v2, p4

    .line 1519
    invoke-virtual {v1, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    .line 1521
    :cond_1
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float/2addr v3, v0

    .line 1522
    invoke-virtual {v1, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_2
    sub-float v0, p2, p4

    cmpg-float v0, v2, v0

    if-gez v0, :cond_2

    neg-float p3, p3

    add-float/2addr v3, p3

    add-float/2addr v2, p4

    .line 1527
    invoke-virtual {v1, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_2

    .line 1529
    :cond_2
    invoke-virtual {v1, p1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1530
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    return-object v1
.end method

.method private getDefaultStrokeStyle()Lcom/metamoji/mazec/stroke/StrokeStyle;
    .locals 4

    .line 2511
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v0

    .line 2512
    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->getClientType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2513
    sget v0, Lcom/metamoji/mazec/stroke/StrokeConstants;->DEFAULT_STROKE_COLOR:I

    const-wide v1, 0x3fd99999a0000000L    # 0.4000000059604645

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/metamoji/mazec/stroke/StrokeStyle;->standartStyle(IDLcom/metamoji/mazec/stroke/StrokeInk;)Lcom/metamoji/mazec/stroke/StrokeStyle;

    move-result-object v0

    return-object v0

    .line 2515
    :cond_0
    sget v0, Lcom/metamoji/mazec/stroke/StrokeConstants;->DEFAULT_STROKE_COLOR:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/metamoji/mazec/stroke/StrokeStyle;->sevenNotes1ageStrokeStyle(II)Lcom/metamoji/mazec/stroke/StrokeStyle;

    move-result-object v0

    return-object v0
.end method

.method private getDeletingStrokeStyle(Lcom/metamoji/mazec/stroke/HwStroke;)Lcom/metamoji/mazec/stroke/StrokeStyle;
    .locals 4

    .line 2445
    invoke-virtual {p1}, Lcom/metamoji/mazec/stroke/HwStroke;->getStrokeStyle()Lcom/metamoji/mazec/stroke/StrokeStyle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/mazec/stroke/StrokeStyle;->cloneMutable()Lcom/metamoji/mazec/stroke/MutableStrokeStyle;

    move-result-object p1

    const/4 v0, 0x0

    .line 2446
    invoke-virtual {p1, v0}, Lcom/metamoji/mazec/stroke/MutableStrokeStyle;->setInk(Lcom/metamoji/mazec/stroke/StrokeInk;)V

    .line 2447
    sget v0, Lcom/metamoji/mazec/ui/HandWritingView;->mDeleteStrokeColor:I

    .line 2448
    invoke-virtual {p1}, Lcom/metamoji/mazec/stroke/MutableStrokeStyle;->getLineColor()I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 2449
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v1, v1

    int-to-float v2, v2

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 2451
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    invoke-static {v1, v2, v3, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/metamoji/mazec/stroke/MutableStrokeStyle;->setLineColor(I)V

    return-object p1
.end method

.method private getDrawer(Lcom/metamoji/mazec/stroke/StrokeStyle;)Lcom/metamoji/mazec/stroke/StrokeDrawer;
    .locals 3

    .line 1320
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mStrokeDrawers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/mazec/stroke/StrokeDrawer;

    .line 1321
    invoke-virtual {v1, p1}, Lcom/metamoji/mazec/stroke/StrokeDrawer;->canDraw(Lcom/metamoji/mazec/stroke/StrokeStyle;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 1325
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/mazec/stroke/StrokeStyle;->getPenType()I

    move-result p1

    invoke-static {p1, p0}, Lcom/metamoji/mazec/stroke/StrokeDrawerFactory;->getDrawer(ILcom/metamoji/mazec/stroke/StrokeStyleResolver;)Lcom/metamoji/mazec/stroke/StrokeDrawer;

    move-result-object p1

    .line 1326
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mStrokeDrawers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method private getShiftStrokeStyle(Lcom/metamoji/mazec/stroke/HwStroke;)Lcom/metamoji/mazec/stroke/StrokeStyle;
    .locals 1

    .line 2439
    invoke-virtual {p1}, Lcom/metamoji/mazec/stroke/HwStroke;->getStrokeStyle()Lcom/metamoji/mazec/stroke/StrokeStyle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/mazec/stroke/StrokeStyle;->cloneMutable()Lcom/metamoji/mazec/stroke/MutableStrokeStyle;

    move-result-object p1

    const/4 v0, 0x0

    .line 2440
    invoke-virtual {p1, v0}, Lcom/metamoji/mazec/stroke/MutableStrokeStyle;->setInk(Lcom/metamoji/mazec/stroke/StrokeInk;)V

    .line 2441
    sget v0, Lcom/metamoji/mazec/ui/HandWritingView;->mShiftStrokeColor:I

    invoke-virtual {p1, v0}, Lcom/metamoji/mazec/stroke/MutableStrokeStyle;->setLineColor(I)V

    return-object p1
.end method

.method private init()V
    .locals 9

    .line 386
    sget-object v0, Lcom/metamoji/mazec/BuildOption$DeviceVendor;->AMAZON:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    sget-object v1, Lcom/metamoji/mazec/BuildConfig;->DEVICE_VENDOR:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v0, v1, :cond_0

    .line 390
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "LAYER_TYPE_SOFTWARE"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    .line 391
    const-class v5, Landroid/view/View;

    const-string/jumbo v6, "setLayerType"

    new-array v7, v3, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v2

    const-class v8, Landroid/graphics/Paint;

    aput-object v8, v7, v4

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 392
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    :catch_0
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mPaintForBk:Landroid/graphics/Paint;

    .line 400
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 402
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mPaintForBk:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 403
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mPaintForBk:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 404
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mPaintForBk:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 405
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mPaintForBk:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 407
    sget-object v0, Lcom/metamoji/mazec/BuildConfig;->DEVICE_VENDOR:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    sget-object v5, Lcom/metamoji/mazec/BuildOption$DeviceVendor;->SAMSUNG:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    if-ne v0, v5, :cond_1

    sget-object v0, Lcom/metamoji/mazec/BuildOption;->DEVICE_TYPE:Lcom/metamoji/mazec/BuildOption$DeviceType;

    sget-object v5, Lcom/metamoji/mazec/BuildOption$DeviceType;->TABLET:Lcom/metamoji/mazec/BuildOption$DeviceType;

    if-ne v0, v5, :cond_1

    .line 409
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mPaintForRuledLine:Landroid/graphics/Paint;

    .line 410
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 411
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mPaintForRuledLine:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 412
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mPaintForRuledLine:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 413
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mPaintForRuledLine:Landroid/graphics/Paint;

    const/16 v2, 0xe3

    const/16 v5, 0xab

    const/16 v6, 0xea

    invoke-static {v6, v2, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 416
    :cond_1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mPaintForSelector:Landroid/graphics/Paint;

    .line 417
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 419
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mPaintForSelector:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 420
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mPaintForSelector:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 421
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mPaintForSelector:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 422
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mPaintForSelector:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 424
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mPaintForSelectorBorder:Landroid/graphics/Paint;

    .line 425
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 427
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mPaintForSelectorBorder:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 428
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mPaintForSelectorBorder:Landroid/graphics/Paint;

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 429
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mPaintForSelectorBorder:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 430
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mPaintForSelectorBorder:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 432
    new-instance v0, Landroid/graphics/DashPathEffect;

    new-array v2, v3, [F

    fill-array-data v2, :array_0

    invoke-direct {v0, v2, v1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iput-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mDashPathEffect:Landroid/graphics/DashPathEffect;

    .line 434
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v0

    iget v0, v0, Lcom/metamoji/mazec/MazecIms;->density:F

    const/high16 v1, 0x41f00000    # 30.0f

    mul-float/2addr v1, v0

    .line 435
    iput v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mDragStrokeSplitDistance:F

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v1, v0

    .line 436
    iput v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mWordspacingLineWidth:F

    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr v0, v1

    .line 437
    iput v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mDragStartMoveLimit:F

    const-wide/16 v0, 0x258

    .line 438
    iput-wide v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mDragStartDuration:J

    return-void

    nop

    :array_0
    .array-data 4
        0x40000000    # 2.0f
        0x41000000    # 8.0f
    .end array-data
.end method

.method private invalidateGradationRect()V
    .locals 6

    .line 2532
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

    invoke-virtual {v0}, Lcom/metamoji/mazec/stroke/HwStrokes;->getStrokes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/mazec/stroke/HwStroke;

    .line 2533
    invoke-virtual {v1}, Lcom/metamoji/mazec/stroke/HwStroke;->getStrokeStyle()Lcom/metamoji/mazec/stroke/StrokeStyle;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2535
    invoke-virtual {v2}, Lcom/metamoji/mazec/stroke/StrokeStyle;->getInk()Lcom/metamoji/mazec/stroke/StrokeInk;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2536
    invoke-virtual {v3}, Lcom/metamoji/mazec/stroke/StrokeInk;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 2537
    invoke-virtual {v1}, Lcom/metamoji/mazec/stroke/HwStroke;->bounds()Landroid/graphics/RectF;

    move-result-object v1

    .line 2538
    invoke-virtual {p0, v2}, Lcom/metamoji/mazec/ui/HandWritingView;->getAbsoluteLineWidth(Lcom/metamoji/mazec/stroke/StrokeStyle;)F

    move-result v2

    .line 2539
    iget v3, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v2

    float-to-int v3, v3

    iget v4, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v2

    float-to-int v4, v4

    iget v5, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v5, v2

    float-to-int v5, v5

    add-int/lit8 v5, v5, 0x1

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v3, v4, v5, v1}, Lcom/metamoji/mazec/ui/HandWritingView;->invalidate(IIII)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private onClickSelector(ILjava/lang/String;Z)V
    .locals 2

    .line 2147
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v0

    .line 2149
    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->getHwrResult()Lcom/metamoji/mazec/recognizer/HwRecognitionResult;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    .line 2156
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x0

    const/4 p3, 0x6

    invoke-virtual {v0, p3, p1, p2}, Lcom/metamoji/mazec/MazecIms;->onEvent(ILjava/lang/Object;Ljava/lang/Object;)Z

    return-void

    :cond_1
    if-nez p2, :cond_2

    .line 2159
    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/ui/HandWritingView;->onCandidatesClicked(I)V

    return-void

    :cond_2
    const/4 p3, 0x5

    .line 2162
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p3, p1, p2}, Lcom/metamoji/mazec/MazecIms;->onEvent(ILjava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method private onSelectHwrCandidate()V
    .locals 4

    .line 2106
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mPopupCandis:Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;

    if-nez v0, :cond_0

    goto :goto_1

    .line 2110
    :cond_0
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v0

    .line 2112
    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->notifyInputViewTouched()V

    .line 2115
    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->getHwrResult()Lcom/metamoji/mazec/recognizer/HwRecognitionResult;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 2116
    iget v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mPressedCandidatesIndex:I

    if-ltz v1, :cond_4

    .line 2117
    iget-object v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mPopupCandis:Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;

    invoke-virtual {v1}, Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;->getSelectedString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2119
    iget v2, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mPressedCandidatesIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v0, v3, v2, v1}, Lcom/metamoji/mazec/MazecIms;->onEvent(ILjava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 2121
    :cond_1
    iget-object v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mPopupCandis:Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;

    invoke-virtual {v1}, Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;->getAltCandidates()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_3

    .line 2123
    iget-object v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mPopupCandis:Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;

    invoke-virtual {v1}, Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;->isRegisterButtonTapped()Z

    move-result v1

    .line 2128
    iget v2, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mPressedCandidatesIndex:I

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    const/16 v1, 0x17

    .line 2125
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/metamoji/mazec/MazecIms;->onEvent(ILjava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 v1, 0x6

    .line 2128
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/metamoji/mazec/MazecIms;->onEvent(ILjava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 2133
    :cond_3
    invoke-virtual {v0, v1}, Lcom/metamoji/mazec/MazecIms;->selectAltHwrCandidate(Ljava/util/List;)V

    :goto_0
    const/4 v0, -0x1

    .line 2137
    iput v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mPressedCandidatesIndex:I

    :cond_4
    :goto_1
    return-void
.end method

.method private onTouchEnd(Landroid/view/MotionEvent;)V
    .locals 9

    .line 1784
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1785
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 1787
    invoke-direct {p0}, Lcom/metamoji/mazec/ui/HandWritingView;->resetScrollButtons()V

    .line 1790
    iget-boolean v2, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mTouchScrollButton:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mScrollButtonHeight:I

    int-to-float v2, v2

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_2

    .line 1791
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/HandWritingView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/metamoji/mazec/ui/ExtHorizontalScrollView;

    .line 1792
    iget v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mTouchBeganPointX:F

    iget v2, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mScrollX:I

    int-to-float v4, v2

    sub-float v4, v1, v4

    iget v5, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mScrollButtonWidth:I

    int-to-float v6, v5

    cmpg-float v4, v4, v6

    const-wide v6, 0x3fe999999999999aL    # 0.8

    if-gtz v4, :cond_0

    int-to-float v4, v2

    sub-float v4, v0, v4

    int-to-float v8, v5

    cmpg-float v4, v4, v8

    if-gtz v4, :cond_0

    .line 1794
    invoke-virtual {p1}, Lcom/metamoji/mazec/ui/ExtHorizontalScrollView;->canScrollRight()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1795
    invoke-virtual {p0, v3}, Lcom/metamoji/mazec/ui/HandWritingView;->playSoundEffect(I)V

    .line 1796
    invoke-virtual {p1, v3}, Lcom/metamoji/mazec/ui/ExtHorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 1797
    iget v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mInitWidth:I

    neg-int v0, v0

    int-to-double v0, v0

    mul-double/2addr v0, v6

    double-to-int v0, v0

    invoke-virtual {p1, v0, v3}, Lcom/metamoji/mazec/ui/ExtHorizontalScrollView;->scrollBy(II)V

    goto :goto_0

    .line 1799
    :cond_0
    iget v4, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mInitWidth:I

    add-int v8, v2, v4

    sub-int/2addr v8, v5

    int-to-float v8, v8

    cmpg-float v1, v8, v1

    if-gtz v1, :cond_1

    add-int/2addr v2, v4

    sub-int/2addr v2, v5

    int-to-float v1, v2

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_1

    .line 1801
    invoke-virtual {p1}, Lcom/metamoji/mazec/ui/ExtHorizontalScrollView;->canScrollLeft()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1802
    invoke-virtual {p0, v3}, Lcom/metamoji/mazec/ui/HandWritingView;->playSoundEffect(I)V

    .line 1803
    invoke-virtual {p1, v3}, Lcom/metamoji/mazec/ui/ExtHorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 1804
    iget v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mInitWidth:I

    int-to-double v0, v0

    mul-double/2addr v0, v6

    double-to-int v0, v0

    invoke-virtual {p1, v0, v3}, Lcom/metamoji/mazec/ui/ExtHorizontalScrollView;->scrollBy(II)V

    .line 1807
    :cond_1
    :goto_0
    iput-boolean v3, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mTouchScrollButton:Z

    .line 1808
    iput-boolean v3, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mNeedAutoScroll:Z

    .line 1809
    iput-boolean v3, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mNeedAutoCommit:Z

    return-void

    .line 1814
    :cond_2
    iget v2, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mDragState:I

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-ne v2, v5, :cond_b

    .line 1815
    iget p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mDragMinX:F

    cmpg-float v1, v0, p1

    if-gez v1, :cond_3

    :goto_1
    move v0, p1

    goto :goto_2

    .line 1817
    :cond_3
    iget p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mDragMaxX:F

    cmpl-float v1, v0, p1

    if-lez v1, :cond_4

    goto :goto_1

    .line 1821
    :cond_4
    :goto_2
    iget p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mTouchBeganPointX:F

    sub-float p1, v0, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v1, 0x40800000    # 4.0f

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_a

    .line 1823
    iget p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mPressedCandidatesIndex:I

    .line 1833
    iget v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mTouchBeganPointX:F

    const/4 v2, 0x3

    const/4 v6, 0x4

    const/4 v7, 0x0

    if-ltz p1, :cond_6

    sub-float p1, v0, v1

    .line 1826
    iget-object v8, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mViewMapInverseMatrix:Landroid/graphics/Matrix;

    if-eqz v8, :cond_5

    sub-float/2addr v0, v1

    .line 1827
    new-array p1, v6, [F

    aput v7, p1, v3

    aput v7, p1, v4

    aput v0, p1, v5

    aput v7, p1, v2

    .line 1828
    invoke-virtual {v8, p1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1829
    aget v0, p1, v5

    aget p1, p1, v3

    sub-float p1, v0, p1

    .line 1831
    :cond_5
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mViewData:Lcom/metamoji/mazec/ui/HwStrokesModel;

    iget v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mPressedCandidatesIndex:I

    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/mazec/MazecIms;->getHwrResult()Lcom/metamoji/mazec/recognizer/HwRecognitionResult;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/metamoji/mazec/ui/HwStrokesModel;->shiftStrokes(FILcom/metamoji/mazec/recognizer/HwRecognitionResult;)V

    goto :goto_3

    :cond_6
    cmpg-float p1, v1, v0

    if-gez p1, :cond_8

    .line 1837
    iget-object p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mViewMapInverseMatrix:Landroid/graphics/Matrix;

    if-eqz p1, :cond_7

    .line 1838
    new-array v6, v6, [F

    aput v1, v6, v3

    aput v7, v6, v4

    aput v0, v6, v5

    aput v7, v6, v2

    .line 1839
    invoke-virtual {p1, v6}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1840
    iget-object p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mViewData:Lcom/metamoji/mazec/ui/HwStrokesModel;

    aget v0, v6, v3

    aget v1, v6, v5

    sub-float/2addr v1, v0

    iget-object v2, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mSplitStrokeMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1, v2}, Lcom/metamoji/mazec/ui/HwStrokesModel;->insertSpace(FFLjava/util/Map;)V

    goto :goto_3

    .line 1842
    :cond_7
    iget-object p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mViewData:Lcom/metamoji/mazec/ui/HwStrokesModel;

    sub-float/2addr v0, v1

    iget-object v2, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mSplitStrokeMap:Ljava/util/HashMap;

    invoke-virtual {p1, v1, v0, v2}, Lcom/metamoji/mazec/ui/HwStrokesModel;->insertSpace(FFLjava/util/Map;)V

    goto :goto_3

    :cond_8
    cmpl-float p1, v1, v0

    if-lez p1, :cond_a

    .line 1848
    iget-object p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mViewMapInverseMatrix:Landroid/graphics/Matrix;

    if-eqz p1, :cond_9

    .line 1849
    new-array v6, v6, [F

    aput v1, v6, v3

    aput v7, v6, v4

    aput v0, v6, v5

    aput v7, v6, v2

    .line 1850
    invoke-virtual {p1, v6}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1851
    iget-object p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mViewData:Lcom/metamoji/mazec/ui/HwStrokesModel;

    aget v0, v6, v3

    aget v1, v6, v5

    sub-float v1, v0, v1

    iget-object v2, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mSplitStrokeMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1, v2}, Lcom/metamoji/mazec/ui/HwStrokesModel;->deleteSpace(FFLjava/util/Map;)V

    goto :goto_3

    .line 1853
    :cond_9
    iget-object p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mViewData:Lcom/metamoji/mazec/ui/HwStrokesModel;

    sub-float v0, v1, v0

    iget-object v2, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mSplitStrokeMap:Ljava/util/HashMap;

    invoke-virtual {p1, v1, v0, v2}, Lcom/metamoji/mazec/ui/HwStrokesModel;->deleteSpace(FFLjava/util/Map;)V

    .line 1858
    :cond_a
    :goto_3
    iget-object p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mDragMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    .line 1859
    iget-object p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mDragShiftTargets:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 1861
    iput-boolean v3, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mNeedAutoScroll:Z

    .line 1862
    iput-boolean v3, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mNeedAutoCommit:Z

    .line 1863
    iput v3, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mDragState:I

    .line 1864
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/HandWritingView;->invalidate()V

    return-void

    .line 1867
    :cond_b
    iget v6, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mPressedCandidatesIndex:I

    if-ltz v6, :cond_e

    .line 1868
    iget-object p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mCandidateSelectors:Ljava/util/List;

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/mazec/ui/HwrCandidateSelector;

    .line 1870
    invoke-virtual {p1, v0, v1}, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->contains(FF)I

    move-result v0

    iget v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mPressedCandidatesType:I

    if-ne v0, v1, :cond_c

    .line 1871
    invoke-virtual {p0, v3}, Lcom/metamoji/mazec/ui/HandWritingView;->playSoundEffect(I)V

    .line 1872
    iget v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mTouchBeganPointX:F

    iget v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mTouchBeganPointY:F

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->click(FF)V

    .line 1875
    :cond_c
    iget v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mPressedCandidatesType:I

    if-ne v0, v5, :cond_d

    .line 1876
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mLongPressDetecter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1877
    invoke-virtual {p1, p0}, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->invalidateLowerButton(Landroid/view/View;)V

    .line 1879
    :cond_d
    iput-boolean v3, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mNeedAutoScroll:Z

    .line 1880
    iput-boolean v3, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mNeedAutoCommit:Z

    .line 1881
    iput v3, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mDragState:I

    return-void

    :cond_e
    if-ne v2, v4, :cond_f

    .line 1884
    iput v3, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mDragState:I

    .line 1885
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/mazec/MazecIms;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mLongPressDetecter:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1887
    iget-object v2, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mDrawingStroke:Lcom/metamoji/mazec/ui/DrawingStrokeModel;

    invoke-virtual {v2}, Lcom/metamoji/mazec/ui/DrawingStrokeModel;->startStroking()V

    .line 1890
    :cond_f
    iget v2, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mLastTouchPointX:F

    cmpl-float v2, v2, v0

    if-nez v2, :cond_10

    iget v2, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mLastTouchPointY:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_11

    .line 1891
    :cond_10
    iget-object v2, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mDrawingStroke:Lcom/metamoji/mazec/ui/DrawingStrokeModel;

    new-instance v3, Lcom/metamoji/mazec/stroke/StrokeTouch;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-direct {v3, v0, v1, v4, v5}, Lcom/metamoji/mazec/stroke/StrokeTouch;-><init>(FFJ)V

    invoke-virtual {v2, v3}, Lcom/metamoji/mazec/ui/DrawingStrokeModel;->addNextPoint(Lcom/metamoji/mazec/stroke/StrokeTouch;)V

    .line 1894
    :cond_11
    iget-object p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mDrawingStroke:Lcom/metamoji/mazec/ui/DrawingStrokeModel;

    invoke-virtual {p1}, Lcom/metamoji/mazec/ui/DrawingStrokeModel;->endStroke()V

    return-void
.end method

.method private onTouchMove(Landroid/view/MotionEvent;)V
    .locals 6

    .line 1714
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1715
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 1726
    iget v2, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mLastTouchPointX:F

    cmpl-float v2, v0, v2

    if-nez v2, :cond_0

    iget v2, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mLastTouchPointY:F

    cmpl-float v2, v1, v2

    if-nez v2, :cond_0

    goto/16 :goto_2

    .line 1731
    :cond_0
    iget-boolean v2, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mTouchScrollButton:Z

    if-eqz v2, :cond_1

    goto :goto_2

    .line 1737
    :cond_1
    iget v2, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mDragState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 1739
    iget p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mDragMinX:F

    cmpg-float v2, v0, p1

    if-gez v2, :cond_2

    :goto_0
    move v0, p1

    goto :goto_1

    .line 1741
    :cond_2
    iget p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mDragMaxX:F

    cmpl-float v2, v0, p1

    if-lez v2, :cond_3

    goto :goto_0

    .line 1745
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mDragMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    .line 1746
    iget-object p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mDragMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mTouchBeganPointX:F

    sub-float v2, v0, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 1750
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/HandWritingView;->invalidate()V

    .line 1752
    iput v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mLastTouchPointX:F

    .line 1753
    iput v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mLastTouchPointY:F

    return-void

    :cond_4
    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 1756
    iget v2, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mTouchBeganPointX:F

    sub-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mDragStartMoveLimit:F

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_5

    iget v2, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mTouchBeganPointY:F

    sub-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mDragStartMoveLimit:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_8

    :cond_5
    const/4 v2, 0x0

    .line 1757
    iput v2, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mDragState:I

    .line 1758
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/mazec/MazecIms;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mLongPressDetecter:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1759
    iget v2, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mPressedCandidatesIndex:I

    if-ltz v2, :cond_6

    goto :goto_2

    .line 1763
    :cond_6
    iget-object v2, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mDrawingStroke:Lcom/metamoji/mazec/ui/DrawingStrokeModel;

    invoke-virtual {v2}, Lcom/metamoji/mazec/ui/DrawingStrokeModel;->startStroking()V

    goto :goto_3

    .line 1766
    :cond_7
    iget v2, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mPressedCandidatesIndex:I

    if-ltz v2, :cond_8

    :goto_2
    return-void

    .line 1771
    :cond_8
    :goto_3
    iget-object v2, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mDrawingStroke:Lcom/metamoji/mazec/ui/DrawingStrokeModel;

    new-instance v3, Lcom/metamoji/mazec/stroke/StrokeTouch;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-direct {v3, v0, v1, v4, v5}, Lcom/metamoji/mazec/stroke/StrokeTouch;-><init>(FFJ)V

    invoke-virtual {v2, v3}, Lcom/metamoji/mazec/ui/DrawingStrokeModel;->addNextPoint(Lcom/metamoji/mazec/stroke/StrokeTouch;)V

    .line 1773
    iput v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mLastTouchPointX:F

    .line 1774
    iput v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mLastTouchPointY:F

    return-void
.end method

.method private onTouchStart(Landroid/view/MotionEvent;)V
    .locals 11

    const/4 v0, 0x0

    .line 1622
    iput v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mDragState:I

    const/4 v1, -0x1

    .line 1623
    iput v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mPressedCandidatesIndex:I

    .line 1625
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 1626
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 1628
    iput v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mLastTouchPointX:F

    iput v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mTouchBeganPointX:F

    .line 1629
    iput v2, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mLastTouchPointY:F

    iput v2, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mTouchBeganPointY:F

    .line 1631
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v3

    .line 1632
    invoke-virtual {v3}, Lcom/metamoji/mazec/MazecIms;->getHandler()Landroid/os/Handler;

    move-result-object v4

    .line 1634
    iget-boolean v5, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mAutoScrollEnabled:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mNeedAutoScroll:Z

    if-eqz v5, :cond_0

    .line 1635
    iget-object v5, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mAutoScroller:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1639
    :cond_0
    iget-boolean v5, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mAutoCommitEnabled:Z

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mNeedAutoCommit:Z

    if-eqz v5, :cond_1

    .line 1640
    iget-object v5, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mAutoCommitter:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1643
    :cond_1
    iget-object v5, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mHandwriteStrokeBlockDetecter:Ljava/lang/Runnable;

    if-eqz v5, :cond_2

    .line 1644
    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1647
    :cond_2
    iget v5, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mScrollButtonHeight:I

    int-to-float v5, v5

    cmpg-float v5, v2, v5

    const/4 v6, 0x1

    if-gtz v5, :cond_7

    .line 1648
    iget v5, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mScrollX:I

    if-lez v5, :cond_3

    int-to-float v7, v5

    sub-float v7, v1, v7

    iget v8, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mScrollButtonWidth:I

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_3

    move v7, v6

    goto :goto_0

    :cond_3
    move v7, v0

    :goto_0
    const-wide/16 v8, 0x12c

    if-eqz v7, :cond_4

    .line 1651
    iget-object v5, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mRightStrokeButtonExpander:Ljava/lang/Runnable;

    invoke-virtual {v4, v5, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 1653
    :cond_4
    iget v7, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mCurrentWidth:I

    iget v10, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mInitWidth:I

    sub-int/2addr v7, v10

    if-ge v5, v7, :cond_5

    add-int/2addr v5, v10

    iget v7, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mScrollButtonWidth:I

    sub-int/2addr v5, v7

    int-to-float v5, v5

    cmpg-float v5, v5, v1

    if-gtz v5, :cond_5

    move v7, v6

    goto :goto_1

    :cond_5
    move v7, v0

    :goto_1
    if-eqz v7, :cond_6

    .line 1656
    iget-object v5, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mLeftStrokeButtonExpander:Ljava/lang/Runnable;

    invoke-virtual {v4, v5, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    :goto_2
    if-eqz v7, :cond_7

    .line 1660
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/HandWritingView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/metamoji/mazec/ui/ExtHorizontalScrollView;

    invoke-virtual {p1, v6}, Lcom/metamoji/mazec/ui/ExtHorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 1661
    iput-boolean v6, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mTouchScrollButton:Z

    return-void

    .line 1665
    :cond_7
    iput-boolean v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mTouchScrollButton:Z

    .line 1667
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/HandWritingView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1670
    iget-object v4, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mViewData:Lcom/metamoji/mazec/ui/HwStrokesModel;

    invoke-virtual {v4}, Lcom/metamoji/mazec/ui/HwStrokesModel;->hasStrokes()Z

    move-result v4

    if-nez v4, :cond_8

    .line 1671
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mDrawingStroke:Lcom/metamoji/mazec/ui/DrawingStrokeModel;

    new-instance v3, Lcom/metamoji/mazec/stroke/StrokeTouch;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-direct {v3, v1, v2, v4, v5}, Lcom/metamoji/mazec/stroke/StrokeTouch;-><init>(FFJ)V

    invoke-virtual {v0, v3}, Lcom/metamoji/mazec/ui/DrawingStrokeModel;->addStartPoint(Lcom/metamoji/mazec/stroke/StrokeTouch;)V

    .line 1672
    iget-object p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mDrawingStroke:Lcom/metamoji/mazec/ui/DrawingStrokeModel;

    invoke-virtual {p1}, Lcom/metamoji/mazec/ui/DrawingStrokeModel;->startStroking()V

    return-void

    .line 1677
    :cond_8
    iget-object v4, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mCandidateSelectors:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    :goto_3
    if-ge v0, v4, :cond_b

    .line 1680
    iget-object v5, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mCandidateSelectors:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/mazec/ui/HwrCandidateSelector;

    .line 1681
    invoke-virtual {v5, v1, v2}, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->contains(FF)I

    move-result v7

    if-nez v7, :cond_9

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1686
    :cond_9
    iput v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mPressedCandidatesIndex:I

    .line 1687
    iput v7, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mPressedCandidatesType:I

    const/4 v0, 0x2

    if-ne v7, v0, :cond_a

    .line 1690
    invoke-virtual {v5, p0}, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->invalidateLowerButton(Landroid/view/View;)V

    goto :goto_4

    :cond_a
    return-void

    .line 1698
    :cond_b
    :goto_4
    iget v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mPressedCandidatesIndex:I

    if-gez v0, :cond_c

    .line 1699
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mDrawingStroke:Lcom/metamoji/mazec/ui/DrawingStrokeModel;

    new-instance v4, Lcom/metamoji/mazec/stroke/StrokeTouch;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    invoke-direct {v4, v1, v2, v7, v8}, Lcom/metamoji/mazec/stroke/StrokeTouch;-><init>(FFJ)V

    invoke-virtual {v0, v4}, Lcom/metamoji/mazec/ui/DrawingStrokeModel;->addStartPoint(Lcom/metamoji/mazec/stroke/StrokeTouch;)V

    .line 1702
    :cond_c
    invoke-virtual {v3}, Lcom/metamoji/mazec/MazecIms;->getHandler()Landroid/os/Handler;

    move-result-object p1

    .line 1703
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mLongPressDetecter:Ljava/lang/Runnable;

    iget-wide v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mDragStartDuration:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1704
    iput v6, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mDragState:I

    return-void
.end method

.method private resetScrollButtons()V
    .locals 5

    .line 1564
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v0

    .line 1565
    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 1566
    iget-object v2, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mRightStrokeButtonExpander:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1567
    iget-object v2, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mLeftStrokeButtonExpander:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1569
    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1570
    iget-object v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mScrollRightButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->isPressed()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "dimen.img_wn_scroll_button"

    if-eqz v1, :cond_0

    .line 1571
    iget-object v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mScrollRightButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1572
    invoke-static {v3}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1573
    iget-object v4, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mScrollRightButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1574
    iget-object v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mScrollRightButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 1576
    :cond_0
    iget-object v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mScrollLeftButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1577
    iget-object v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mScrollLeftButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1578
    invoke-static {v3}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1579
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mScrollLeftButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1580
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mScrollLeftButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setPressed(Z)V

    :cond_1
    return-void
.end method

.method private updateCandidatesButtonRects()V
    .locals 11

    .line 1009
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v0

    .line 1011
    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->getHwrResult()Lcom/metamoji/mazec/recognizer/HwRecognitionResult;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1013
    invoke-virtual {v1}, Lcom/metamoji/mazec/recognizer/HwRecognitionResult;->getCandidatesList()Ljava/util/List;

    move-result-object v2

    .line 1015
    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->getPrefs()Lcom/metamoji/mazec/MazecPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mLang:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/metamoji/mazec/MazecPreferences;->getFilter(Ljava/lang/String;)I

    move-result v3

    .line 1017
    iget-object v4, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

    iget v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mCurrentHeight:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mOnClickSelectorListener:Lcom/metamoji/mazec/ui/HwrCandidateSelector$OnClickListener;

    iget-object v7, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mCandidateSelectors:Ljava/util/List;

    iget v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mScrollX:I

    int-to-float v8, v0

    iget v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mInitWidth:I

    add-int/2addr v0, v1

    int-to-float v9, v0

    iget-object v10, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mPaintForSelector:Landroid/graphics/Paint;

    invoke-static/range {v2 .. v10}, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->calcSelectorPositions(Ljava/util/List;ILcom/metamoji/mazec/stroke/HwStrokes;FLcom/metamoji/mazec/ui/HwrCandidateSelector$OnClickListener;Ljava/util/List;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 1028
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mCandidateSelectors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1031
    :goto_0
    iget v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mScrollX:I

    iget v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mInitWidth:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mCurrentHeight:I

    int-to-float v2, v2

    invoke-static {p0, v0, v1, v2}, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->invalidate(Landroid/view/View;IIF)V

    return-void
.end method

.method private updateLangRelatedSettings(Ljava/lang/String;Z)V
    .locals 1

    .line 645
    iput-object p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mLang:Ljava/lang/String;

    .line 646
    iput-boolean p2, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mIsLatinLang:Z

    xor-int/lit8 p1, p2, 0x1

    .line 647
    iput-boolean p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mStrokeSplitDisabled:Z

    const/4 p1, 0x0

    if-nez p2, :cond_0

    .line 650
    iput-object p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mSplitStrokeMap:Ljava/util/HashMap;

    goto :goto_0

    .line 652
    :cond_0
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mSplitStrokeMap:Ljava/util/HashMap;

    .line 655
    :goto_0
    iget-object p2, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mLang:Ljava/lang/String;

    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->getPrefs()Lcom/metamoji/mazec/MazecPreferences;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/metamoji/mazec/util/LocaleUtil;->wordSpaceCoefficientForLanguage(Ljava/lang/String;Lcom/metamoji/mazec/MazecPreferences;)F

    move-result p2

    iput p2, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mWordspacingCoef:F

    const/4 v0, 0x0

    cmpl-float p2, p2, v0

    if-lez p2, :cond_1

    .line 657
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mWordspacingRect:Landroid/graphics/RectF;

    goto :goto_1

    .line 659
    :cond_1
    iput-object p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mWordspacingRect:Landroid/graphics/RectF;

    .line 674
    :goto_1
    invoke-direct {p0}, Lcom/metamoji/mazec/ui/HandWritingView;->adjustLayout()V

    return-void
.end method

.method private updateStrokesBlockWithRecogResult()V
    .locals 10

    .line 1034
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v0

    .line 1035
    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->getHwrResult()Lcom/metamoji/mazec/recognizer/HwRecognitionResult;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 1039
    :cond_0
    iget-object v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

    if-nez v1, :cond_1

    goto/16 :goto_3

    .line 1042
    :cond_1
    iget-object v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mStrokeBlocks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1043
    iget-object v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

    invoke-virtual {v1}, Lcom/metamoji/mazec/stroke/HwStrokes;->strokeCount()I

    move-result v1

    .line 1044
    invoke-virtual {v0}, Lcom/metamoji/mazec/recognizer/HwRecognitionResult;->getCandidatesList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/mazec/recognizer/HwCandidates;

    .line 1045
    invoke-virtual {v2}, Lcom/metamoji/mazec/recognizer/HwCandidates;->firstStrokeIndex()I

    move-result v3

    .line 1046
    invoke-virtual {v2}, Lcom/metamoji/mazec/recognizer/HwCandidates;->lastStrokeIndex()I

    move-result v2

    .line 1047
    iget-object v4, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

    invoke-virtual {v4}, Lcom/metamoji/mazec/stroke/HwStrokes;->clone()Lcom/metamoji/mazec/stroke/HwStrokes;

    move-result-object v4

    .line 1048
    invoke-virtual {v4}, Lcom/metamoji/mazec/stroke/HwStrokes;->removeAllStrokes()V

    :goto_1
    if-gt v3, v2, :cond_4

    if-lt v3, v1, :cond_2

    goto :goto_2

    .line 1053
    :cond_2
    iget-object v5, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

    invoke-virtual {v5, v3}, Lcom/metamoji/mazec/stroke/HwStrokes;->getStroke(I)Lcom/metamoji/mazec/stroke/HwStroke;

    move-result-object v5

    .line 1054
    invoke-virtual {v4, v5}, Lcom/metamoji/mazec/stroke/HwStrokes;->addStroke(Lcom/metamoji/mazec/stroke/HwStroke;)V

    .line 1055
    invoke-virtual {v5}, Lcom/metamoji/mazec/stroke/HwStroke;->getStrokeStyle()Lcom/metamoji/mazec/stroke/StrokeStyle;

    move-result-object v6

    .line 1056
    invoke-virtual {v6}, Lcom/metamoji/mazec/stroke/StrokeStyle;->getInk()Lcom/metamoji/mazec/stroke/StrokeInk;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 1057
    invoke-virtual {v7}, Lcom/metamoji/mazec/stroke/StrokeInk;->getType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    .line 1058
    invoke-virtual {v5}, Lcom/metamoji/mazec/stroke/HwStroke;->bounds()Landroid/graphics/RectF;

    move-result-object v5

    .line 1059
    invoke-virtual {p0, v6}, Lcom/metamoji/mazec/ui/HandWritingView;->getAbsoluteLineWidth(Lcom/metamoji/mazec/stroke/StrokeStyle;)F

    move-result v6

    .line 1060
    iget v7, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v7, v6

    float-to-int v7, v7

    iget v8, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v8, v6

    float-to-int v8, v8

    iget v9, v5, Landroid/graphics/RectF;->right:F

    add-float/2addr v9, v6

    float-to-int v9, v9

    add-int/lit8 v9, v9, 0x1

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v5, v6

    float-to-int v5, v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v7, v8, v9, v5}, Lcom/metamoji/mazec/ui/HandWritingView;->invalidate(IIII)V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1063
    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mStrokeBlocks:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    :goto_3
    return-void
.end method

.method private updateViewWidth()V
    .locals 3

    .line 2187
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

    .line 2188
    invoke-direct {p0}, Lcom/metamoji/mazec/ui/HandWritingView;->useDefaultStrokeStyle()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2190
    invoke-direct {p0}, Lcom/metamoji/mazec/ui/HandWritingView;->getDefaultStrokeStyle()Lcom/metamoji/mazec/stroke/StrokeStyle;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mWorkRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/mazec/stroke/HwStrokes;->boundsWithStrokeStyle(Lcom/metamoji/mazec/stroke/StrokeStyle;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    goto :goto_0

    .line 2193
    :cond_0
    iget-object v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mWorkRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Lcom/metamoji/mazec/stroke/HwStrokes;->innerBounds()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 2196
    :goto_0
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mWorkRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    .line 2198
    iget v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mCurrentWidth:I

    sub-int/2addr v1, v0

    .line 2199
    iget v2, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mDemandRestWidth:I

    if-eq v1, v2, :cond_3

    add-int/2addr v2, v0

    .line 2205
    iget v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mMaxViewWidth:I

    if-le v2, v1, :cond_1

    .line 2206
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_1

    .line 2207
    :cond_1
    iget v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mInitWidth:I

    if-ge v2, v0, :cond_2

    move v2, v0

    .line 2210
    :cond_2
    :goto_1
    iget v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mCurrentWidth:I

    if-eq v0, v2, :cond_3

    .line 2211
    iput v2, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mCurrentWidth:I

    .line 2213
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/HandWritingView;->requestLayout()V

    :cond_3
    return-void
.end method

.method private useDefaultStrokeStyle()Z
    .locals 1

    .line 2524
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v0

    .line 2525
    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->canInputStroke()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public addDrawingListener(Lcom/metamoji/mazec/ui/HwStrokeListener;)V
    .locals 1

    .line 696
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mDrawingStroke:Lcom/metamoji/mazec/ui/DrawingStrokeModel;

    invoke-virtual {v0, p1}, Lcom/metamoji/mazec/ui/DrawingStrokeModel;->addListener(Lcom/metamoji/mazec/ui/HwStrokeListener;)V

    return-void
.end method

.method adjustBackgroundColor(Lcom/metamoji/mazec/MazecIms;)V
    .locals 2

    .line 2246
    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->getClientType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2253
    sget p1, Lcom/metamoji/mazec/ui/HandWritingView;->mBkColorStroke:I

    goto :goto_0

    .line 2256
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->isInReedit()Z

    move-result v0

    if-eqz v0, :cond_1

    sget p1, Lcom/metamoji/mazec/ui/HandWritingView;->mBkColorReedit:I

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->getBackgroundColor()I

    move-result p1

    .line 2259
    :goto_0
    iput p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mBkColor:I

    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/ui/HandWritingView;->setBackgroundColor(I)V

    .line 2260
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/HandWritingView;->invalidate()V

    return-void
.end method

.method protected baseline()F
    .locals 1

    .line 1000
    iget v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mCurrentBase:F

    return v0
.end method

.method public cancelAutoActions()V
    .locals 1

    const/4 v0, 0x0

    .line 687
    iput-boolean v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mNeedAutoScroll:Z

    .line 688
    iput-boolean v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mNeedAutoCommit:Z

    return-void
.end method

.method closing()V
    .locals 0

    .line 836
    invoke-direct {p0}, Lcom/metamoji/mazec/ui/HandWritingView;->clearPopup()V

    .line 837
    invoke-direct {p0}, Lcom/metamoji/mazec/ui/HandWritingView;->clearCallbacks()V

    return-void
.end method

.method public disposeView(Lcom/metamoji/mazec/MazecIms;)V
    .locals 1

    .line 678
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mMazecEventListener:Lcom/metamoji/mazec/MazecEventListener;

    invoke-virtual {p1, v0}, Lcom/metamoji/mazec/MazecIms;->removeMazecEventListener(Lcom/metamoji/mazec/MazecEventListener;)V

    .line 679
    invoke-virtual {p1, p0}, Lcom/metamoji/mazec/MazecIms;->removeOnBackListener(Lcom/metamoji/mazec/MazecIms$OnBackListener;)V

    return-void
.end method

.method public getAbsoluteLineWidth(Lcom/metamoji/mazec/stroke/StrokeStyle;)F
    .locals 1

    .line 2547
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

    invoke-virtual {v0, p1}, Lcom/metamoji/mazec/stroke/HwStrokes;->lineWidthOfStrokeStyle(Lcom/metamoji/mazec/stroke/StrokeStyle;)F

    move-result p1

    return p1
.end method

.method public getGradient(Lcom/metamoji/mazec/stroke/StrokeStyle;Landroid/graphics/Path;)Landroid/graphics/Shader;
    .locals 11

    .line 2564
    invoke-virtual {p1}, Lcom/metamoji/mazec/stroke/StrokeStyle;->getInk()Lcom/metamoji/mazec/stroke/StrokeInk;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2568
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/mazec/stroke/StrokeInk;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 2570
    iget-object v2, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mRefStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

    if-nez v2, :cond_1

    .line 2571
    iget-object v2, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mStrokeBlocks:Ljava/util/List;

    goto :goto_0

    .line 2573
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2574
    iget-object v3, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mStrokeBlocks:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2575
    iget-object v3, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mRefStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2577
    :goto_0
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    const/4 v4, 0x0

    .line 2578
    invoke-virtual {p2, v3, v4}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 2579
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    .line 2581
    new-instance v5, Landroid/graphics/RectF;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v6, v6, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 2583
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, -0x1

    :goto_1
    if-ge v4, v6, :cond_3

    .line 2584
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/metamoji/mazec/stroke/HwStrokes;

    .line 2585
    invoke-virtual {v8, p1, p2}, Lcom/metamoji/mazec/stroke/HwStrokes;->boundsWithStrokeStyle(Lcom/metamoji/mazec/stroke/StrokeStyle;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    .line 2586
    invoke-virtual {p2, v3}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2587
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v8

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v9

    mul-float/2addr v8, v9

    .line 2588
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v9

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v10

    mul-float/2addr v9, v10

    cmpg-float v8, v8, v9

    if-gez v8, :cond_2

    .line 2590
    invoke-virtual {v5, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    move v7, v4

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    if-ltz v7, :cond_4

    .line 2596
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/mazec/stroke/HwStrokes;

    .line 2597
    invoke-virtual {v1, p1, p2}, Lcom/metamoji/mazec/stroke/HwStrokes;->boundsWithStrokeStyle(Lcom/metamoji/mazec/stroke/StrokeStyle;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    .line 2598
    new-instance v2, Landroid/graphics/LinearGradient;

    iget v3, p2, Landroid/graphics/RectF;->left:F

    iget v4, p2, Landroid/graphics/RectF;->top:F

    iget v5, p2, Landroid/graphics/RectF;->right:F

    iget v6, p2, Landroid/graphics/RectF;->bottom:F

    .line 2599
    invoke-virtual {v0}, Lcom/metamoji/mazec/stroke/StrokeInk;->getGradationStartColor()I

    move-result v7

    invoke-virtual {v0}, Lcom/metamoji/mazec/stroke/StrokeInk;->getGradationEndColor()I

    move-result v8

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    return-object v2

    :cond_4
    return-object v1
.end method

.method public getLineColor(Lcom/metamoji/mazec/stroke/StrokeStyle;Z)I
    .locals 2

    .line 2550
    invoke-virtual {p1}, Lcom/metamoji/mazec/stroke/StrokeStyle;->getPenType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    if-eqz p2, :cond_1

    .line 2552
    invoke-virtual {p1}, Lcom/metamoji/mazec/stroke/StrokeStyle;->getLineColor()I

    move-result p1

    const/high16 p2, 0xff0000

    and-int/2addr p2, p1

    shr-int/lit8 p2, p2, 0x10

    const v0, 0xff00

    and-int/2addr v0, p1

    shr-int/lit8 v0, v0, 0x8

    const/16 v1, 0xff

    and-int/2addr p1, v1

    .line 2554
    invoke-static {v1, p2, v0, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    return p1

    .line 2559
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/mazec/stroke/StrokeStyle;->getLineColor()I

    move-result p1

    return p1
.end method

.method protected initView(Lcom/metamoji/mazec/MazecIms;Lcom/metamoji/mazec/ui/HandwritingPanel;II)V
    .locals 3

    .line 539
    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->getHwStrokesModel()Lcom/metamoji/mazec/ui/HwStrokesModel;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mViewData:Lcom/metamoji/mazec/ui/HwStrokesModel;

    .line 540
    new-instance v0, Lcom/metamoji/mazec/ui/DrawingStrokeModel;

    invoke-direct {v0}, Lcom/metamoji/mazec/ui/DrawingStrokeModel;-><init>()V

    iput-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mDrawingStroke:Lcom/metamoji/mazec/ui/DrawingStrokeModel;

    .line 542
    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->getClientType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 543
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mDrawingStroke:Lcom/metamoji/mazec/ui/DrawingStrokeModel;

    const/4 v2, 0x1

    invoke-static {v2, p0}, Lcom/metamoji/mazec/stroke/StrokeDrawerFactory;->getDrawer(ILcom/metamoji/mazec/stroke/StrokeStyleResolver;)Lcom/metamoji/mazec/stroke/StrokeDrawer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/metamoji/mazec/ui/DrawingStrokeModel;->setStrokeDrawer(Lcom/metamoji/mazec/stroke/StrokeDrawer;)V

    .line 547
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->isLatinLang()Z

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/metamoji/mazec/ui/HandWritingView;->updateLangRelatedSettings(Ljava/lang/String;Z)V

    .line 549
    const-string v0, "id.scroll_right_stroke_button"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/metamoji/mazec/ui/HandwritingPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mScrollRightButton:Landroid/widget/ImageView;

    .line 550
    const-string v0, "id.scroll_left_stroke_button"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/metamoji/mazec/ui/HandwritingPanel;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mScrollLeftButton:Landroid/widget/ImageView;

    .line 552
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/HandWritingView;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Lcom/metamoji/mazec/ui/ExtHorizontalScrollView;

    .line 553
    new-instance v0, Lcom/metamoji/mazec/ui/HandWritingView$10;

    invoke-direct {v0, p0}, Lcom/metamoji/mazec/ui/HandWritingView$10;-><init>(Lcom/metamoji/mazec/ui/HandWritingView;)V

    invoke-virtual {p2, v0}, Lcom/metamoji/mazec/ui/ExtHorizontalScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 567
    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 568
    const-string v0, "dimen.scroll_stroke_image_padding"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/2addr v0, v1

    .line 573
    const-string v1, "dimen.img_wn_scroll_button"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mScrollButtonWidth:I

    .line 574
    const-string v1, "dimen.img_h_scroll_button"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    add-int/2addr v0, p2

    iput v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mScrollButtonHeight:I

    .line 586
    iput p3, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mInitWidth:I

    .line 587
    iput p4, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mInitHeight:I

    int-to-float p2, p3

    const v0, 0x3f4ccccd    # 0.8f

    mul-float/2addr p2, v0

    float-to-int p2, p2

    .line 588
    iput p2, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mDemandRestWidth:I

    .line 590
    iput p3, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mCurrentWidth:I

    .line 591
    iput p4, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mCurrentHeight:I

    mul-int/lit8 p4, p4, 0xa

    .line 592
    iput p4, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mMaxViewWidth:I

    .line 595
    sget p2, Lcom/metamoji/mazec/ui/HandWritingView;->mOldScrollX:I

    if-lez p2, :cond_2

    .line 597
    sget p3, Lcom/metamoji/mazec/ui/HandWritingView;->mOldLineHeight:F

    const/4 p4, 0x0

    cmpl-float v0, p3, p4

    if-lez v0, :cond_1

    int-to-float p2, p2

    .line 598
    iget v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mCurrentBase:F

    iget v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mCurrentTop:F

    sub-float/2addr v0, v1

    mul-float/2addr p2, v0

    div-float/2addr p2, p3

    float-to-int p2, p2

    .line 599
    sput p4, Lcom/metamoji/mazec/ui/HandWritingView;->mOldLineHeight:F

    :cond_1
    const/4 p3, 0x0

    .line 601
    sput p3, Lcom/metamoji/mazec/ui/HandWritingView;->mOldScrollX:I

    .line 605
    :cond_2
    iget-object p3, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mViewData:Lcom/metamoji/mazec/ui/HwStrokesModel;

    invoke-virtual {p3}, Lcom/metamoji/mazec/ui/HwStrokesModel;->getHwStrokes()Lcom/metamoji/mazec/stroke/HwStrokes;

    move-result-object p3

    .line 606
    invoke-virtual {p3}, Lcom/metamoji/mazec/stroke/HwStrokes;->strokeCount()I

    move-result p4

    if-lez p4, :cond_3

    .line 607
    invoke-virtual {p3}, Lcom/metamoji/mazec/stroke/HwStrokes;->innerBounds()Landroid/graphics/RectF;

    move-result-object p3

    .line 608
    iget p4, p3, Landroid/graphics/RectF;->right:F

    int-to-float v0, p2

    sub-float/2addr p4, v0

    .line 609
    iget v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mInitWidth:I

    int-to-float v0, v0

    cmpl-float p4, p4, v0

    if-lez p4, :cond_3

    .line 610
    iget p2, p3, Landroid/graphics/RectF;->right:F

    iget p3, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mInitWidth:I

    int-to-float p3, p3

    const p4, 0x3f333333    # 0.7f

    mul-float/2addr p3, p4

    sub-float/2addr p2, p3

    float-to-int p2, p2

    .line 613
    :cond_3
    iput p2, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mInitScrollX:I

    .line 616
    iget-object p2, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mDrawingStroke:Lcom/metamoji/mazec/ui/DrawingStrokeModel;

    new-instance p3, Lcom/metamoji/mazec/ui/HandWritingView$HwStrokeListenerImpl;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p4}, Lcom/metamoji/mazec/ui/HandWritingView$HwStrokeListenerImpl;-><init>(Lcom/metamoji/mazec/ui/HandWritingView;Lcom/metamoji/mazec/ui/HandWritingView-IA;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/mazec/ui/DrawingStrokeModel;->addListener(Lcom/metamoji/mazec/ui/HwStrokeListener;)V

    .line 619
    iget-object p2, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mMazecEventListener:Lcom/metamoji/mazec/MazecEventListener;

    invoke-virtual {p1, p2}, Lcom/metamoji/mazec/MazecIms;->addMazecEventListener(Lcom/metamoji/mazec/MazecEventListener;)V

    .line 622
    invoke-virtual {p1, p0}, Lcom/metamoji/mazec/MazecIms;->addOnBackListener(Lcom/metamoji/mazec/MazecIms$OnBackListener;)V

    .line 624
    invoke-static {}, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->init()V

    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    .line 2224
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mPopupCandis:Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2225
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v0

    .line 2226
    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->getInputView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/mazec/ui/MazecView;

    invoke-virtual {v0, v1}, Lcom/metamoji/mazec/ui/MazecView;->showBarrierView(Z)V

    .line 2227
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mPopupCandis:Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;->dismiss()V

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public onCandidatesClicked(I)V
    .locals 12

    .line 2059
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v0

    .line 2061
    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->getHwrResult()Lcom/metamoji/mazec/recognizer/HwRecognitionResult;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 2066
    :cond_0
    iput p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mPressedCandidatesIndex:I

    .line 2069
    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->getPrefs()Lcom/metamoji/mazec/MazecPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mLang:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/metamoji/mazec/MazecPreferences;->getFilter(Ljava/lang/String;)I

    move-result v10

    .line 2072
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 2073
    invoke-virtual {p0, v2}, Lcom/metamoji/mazec/ui/HandWritingView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 2076
    invoke-virtual {v1, p1}, Lcom/metamoji/mazec/recognizer/HwRecognitionResult;->getCandidates(I)Lcom/metamoji/mazec/recognizer/HwCandidates;

    move-result-object v1

    iget-object v3, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

    invoke-virtual {v1, v3}, Lcom/metamoji/mazec/recognizer/HwCandidates;->getTargetStrokes(Lcom/metamoji/mazec/stroke/HwStrokes;)Lcom/metamoji/mazec/stroke/HwStrokes;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/mazec/stroke/HwStrokes;->innerBounds()Landroid/graphics/RectF;

    move-result-object v1

    .line 2078
    new-instance v3, Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;

    invoke-direct {v3, v0}, Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mPopupCandis:Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;

    .line 2079
    new-instance v4, Lcom/metamoji/mazec/ui/HandWritingView$13;

    invoke-direct {v4, p0, v0}, Lcom/metamoji/mazec/ui/HandWritingView$13;-><init>(Lcom/metamoji/mazec/ui/HandWritingView;Lcom/metamoji/mazec/MazecIms;)V

    invoke-virtual {v3, v4}, Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 2088
    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->getInputView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/metamoji/mazec/ui/MazecView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/metamoji/mazec/ui/MazecView;->showBarrierView(Z)V

    .line 2089
    iget-object v4, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mPopupCandis:Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;

    .line 2090
    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->getInputView()Landroid/view/View;

    move-result-object v5

    iget v0, v2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v3, v1, Landroid/graphics/RectF;->left:F

    iget v6, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v3, v6

    add-float/2addr v0, v3

    iget v3, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mScrollX:I

    int-to-float v3, v3

    sub-float/2addr v0, v3

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/RectF;->top:F

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, v1

    div-float/2addr v3, v6

    add-float v7, v2, v3

    .line 2093
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/mazec/MazecIms;->getHwrResult()Lcom/metamoji/mazec/recognizer/HwRecognitionResult;

    move-result-object v8

    iget-object v11, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mLang:Ljava/lang/String;

    move v9, p1

    move v6, v0

    .line 2089
    invoke-virtual/range {v4 .. v11}, Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;->popup(Landroid/view/View;FFLcom/metamoji/mazec/recognizer/HwRecognitionResult;IILjava/lang/String;)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1105
    iget-object v6, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mWorkRect2:Landroid/graphics/Rect;

    .line 1106
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 1108
    iget-object v7, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

    .line 1110
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v1

    .line 1111
    invoke-virtual {v1}, Lcom/metamoji/mazec/MazecIms;->getInputMode()I

    move-result v1

    const/4 v8, 0x1

    const/4 v9, 0x2

    if-ne v1, v9, :cond_0

    move v10, v8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move v10, v1

    :goto_0
    if-eqz v10, :cond_1

    .line 1113
    iget-boolean v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mIsLatinLang:Z

    if-eqz v1, :cond_4

    .line 1114
    :cond_1
    iget v1, v6, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v2, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mCurrentTop:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2

    iget v1, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    cmpg-float v1, v2, v1

    if-lez v1, :cond_3

    :cond_2
    iget v1, v6, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v2, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mCurrentBase:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_4

    iget v1, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    cmpg-float v1, v2, v1

    if-gtz v1, :cond_4

    .line 1116
    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/metamoji/mazec/ui/HandWritingView;->drawGuidelines(Landroid/graphics/Canvas;)V

    .line 1121
    :cond_4
    sget-object v1, Lcom/metamoji/mazec/BuildConfig;->DEVICE_VENDOR:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    sget-object v2, Lcom/metamoji/mazec/BuildOption$DeviceVendor;->SAMSUNG:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    if-ne v1, v2, :cond_5

    sget-object v1, Lcom/metamoji/mazec/BuildOption;->DEVICE_TYPE:Lcom/metamoji/mazec/BuildOption$DeviceType;

    sget-object v2, Lcom/metamoji/mazec/BuildOption$DeviceType;->TABLET:Lcom/metamoji/mazec/BuildOption$DeviceType;

    if-ne v1, v2, :cond_5

    if-eqz v10, :cond_5

    const/16 v1, 0xf

    move v11, v1

    .line 1124
    :goto_1
    iget v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mCurrentHeight:I

    if-ge v11, v1, :cond_5

    int-to-float v2, v11

    .line 1125
    iget v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mCurrentWidth:I

    int-to-float v3, v1

    iget-object v5, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mPaintForRuledLine:Landroid/graphics/Paint;

    const/4 v1, 0x0

    move v4, v2

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v11, v11, 0x14

    goto :goto_1

    .line 1130
    :cond_5
    iget-boolean v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mAutoScrollEnabled:Z

    if-eqz v0, :cond_6

    .line 1131
    iget v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mScrollX:I

    iget v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mInitWidth:I

    add-int v2, v0, v1

    iget v3, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mMaxViewWidth:I

    if-ge v2, v3, :cond_6

    add-int/2addr v0, v1

    .line 1132
    iget v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mAutoScrollAreaWidth:I

    sub-int/2addr v0, v1

    .line 1133
    iget v1, v6, Landroid/graphics/Rect;->right:I

    if-gt v0, v1, :cond_6

    .line 1134
    iget-object v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mPaintForBk:Landroid/graphics/Paint;

    sget v2, Lcom/metamoji/mazec/ui/HandWritingView;->mScrollbarColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v1, v0

    .line 1135
    iget v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mCurrentWidth:I

    int-to-float v3, v0

    iget v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mCurrentHeight:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mPaintForBk:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1141
    :cond_6
    iget-object v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mRefStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

    if-eqz v1, :cond_7

    .line 1142
    invoke-direct {p0, p1, v1}, Lcom/metamoji/mazec/ui/HandWritingView;->drawStrokes(Landroid/graphics/Canvas;Lcom/metamoji/mazec/stroke/HwStrokes;)V

    .line 1145
    :cond_7
    iget v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mDragState:I

    if-ne v1, v9, :cond_8

    .line 1147
    invoke-direct/range {p0 .. p1}, Lcom/metamoji/mazec/ui/HandWritingView;->drawDragStrokes(Landroid/graphics/Canvas;)V

    goto/16 :goto_6

    .line 1151
    :cond_8
    invoke-direct {p0}, Lcom/metamoji/mazec/ui/HandWritingView;->useDefaultStrokeStyle()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1155
    invoke-direct {p0}, Lcom/metamoji/mazec/ui/HandWritingView;->getDefaultStrokeStyle()Lcom/metamoji/mazec/stroke/StrokeStyle;

    move-result-object v2

    .line 1156
    invoke-direct {p0, p1, v2, v7}, Lcom/metamoji/mazec/ui/HandWritingView;->drawStrokes(Landroid/graphics/Canvas;Lcom/metamoji/mazec/stroke/StrokeStyle;Lcom/metamoji/mazec/stroke/HwStrokes;)V

    goto :goto_2

    .line 1158
    :cond_9
    invoke-direct {p0, p1, v7}, Lcom/metamoji/mazec/ui/HandWritingView;->drawStrokes(Landroid/graphics/Canvas;Lcom/metamoji/mazec/stroke/HwStrokes;)V

    const/4 v2, 0x0

    .line 1165
    :goto_2
    iget-object v3, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mDrawingStroke:Lcom/metamoji/mazec/ui/DrawingStrokeModel;

    invoke-virtual {v3}, Lcom/metamoji/mazec/ui/DrawingStrokeModel;->getCurrentStroke()Lcom/metamoji/mazec/stroke/HwStroke;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 1166
    iget v4, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mDragState:I

    if-nez v4, :cond_b

    .line 1167
    iget-object v4, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mDrawingStroke:Lcom/metamoji/mazec/ui/DrawingStrokeModel;

    invoke-virtual {v4}, Lcom/metamoji/mazec/ui/DrawingStrokeModel;->getCurrentDrawable()Lcom/metamoji/mazec/stroke/drawable/Drawable;

    move-result-object v4

    if-eqz v1, :cond_a

    .line 1171
    invoke-interface {v4, p1, v2, p0, v8}, Lcom/metamoji/mazec/stroke/drawable/Drawable;->draw(Landroid/graphics/Canvas;Lcom/metamoji/mazec/stroke/StrokeStyle;Lcom/metamoji/mazec/stroke/StrokeStyleResolver;Z)V

    goto :goto_3

    .line 1174
    :cond_a
    invoke-virtual {v3}, Lcom/metamoji/mazec/stroke/HwStroke;->getStrokeStyle()Lcom/metamoji/mazec/stroke/StrokeStyle;

    move-result-object v2

    .line 1175
    invoke-interface {v4, p1, v2, p0, v8}, Lcom/metamoji/mazec/stroke/drawable/Drawable;->draw(Landroid/graphics/Canvas;Lcom/metamoji/mazec/stroke/StrokeStyle;Lcom/metamoji/mazec/stroke/StrokeStyleResolver;Z)V

    .line 1179
    :cond_b
    :goto_3
    iget v2, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mWordspacingCoef:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_d

    iget-object v2, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mDrawingStroke:Lcom/metamoji/mazec/ui/DrawingStrokeModel;

    .line 1180
    invoke-virtual {v2}, Lcom/metamoji/mazec/ui/DrawingStrokeModel;->isDrawing()Z

    move-result v2

    if-nez v2, :cond_d

    .line 1181
    invoke-virtual {v7}, Lcom/metamoji/mazec/stroke/HwStrokes;->strokeCount()I

    move-result v2

    if-lez v2, :cond_d

    .line 1183
    invoke-virtual {v7}, Lcom/metamoji/mazec/stroke/HwStrokes;->lineHeight()F

    move-result v2

    iget v3, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mWordspacingCoef:F

    mul-float/2addr v2, v3

    if-eqz v1, :cond_c

    .line 1186
    invoke-direct {p0}, Lcom/metamoji/mazec/ui/HandWritingView;->getDefaultStrokeStyle()Lcom/metamoji/mazec/stroke/StrokeStyle;

    move-result-object v1

    iget-object v3, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mWorkRect:Landroid/graphics/RectF;

    invoke-virtual {v7, v1, v3}, Lcom/metamoji/mazec/stroke/HwStrokes;->boundsWithStrokeStyle(Lcom/metamoji/mazec/stroke/StrokeStyle;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    goto :goto_4

    .line 1188
    :cond_c
    iget-object v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mWorkRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Lcom/metamoji/mazec/stroke/HwStrokes;->innerBounds()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1191
    :goto_4
    iget-object v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mWordspacingRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mWorkRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mCurrentBase:F

    iget-object v5, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mWorkRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    add-float/2addr v5, v2

    iget v2, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mCurrentBase:F

    iget v6, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mWordspacingLineWidth:F

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v6, v7

    add-float/2addr v2, v6

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1193
    iget-object v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mPaintForBk:Landroid/graphics/Paint;

    sget v2, Lcom/metamoji/mazec/ui/HandWritingView;->mWordspacingColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1194
    iget-object v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mWordspacingRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mPaintForBk:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1195
    iget-object v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mPaintForBk:Landroid/graphics/Paint;

    iget v2, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mBkColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1196
    iget-object v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mWordspacingRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mWordspacingLineWidth:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mWordspacingRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mWordspacingRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mWordspacingLineWidth:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mWordspacingRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    iget v5, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mWordspacingLineWidth:F

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mPaintForBk:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_d
    if-eqz v10, :cond_10

    .line 1201
    iget-object v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mDrawingStroke:Lcom/metamoji/mazec/ui/DrawingStrokeModel;

    invoke-virtual {v1}, Lcom/metamoji/mazec/ui/DrawingStrokeModel;->isDrawing()Z

    move-result v1

    if-nez v1, :cond_10

    iget v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mDragState:I

    if-eqz v1, :cond_e

    iget v2, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mPressedCandidatesIndex:I

    if-ltz v2, :cond_10

    if-ne v1, v8, :cond_10

    .line 1202
    :cond_e
    iget-object v2, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mPaintForSelector:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mPaintForSelectorBorder:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mCandidateSelectors:Ljava/util/List;

    if-ne v1, v8, :cond_f

    iget v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mPressedCandidatesIndex:I

    goto :goto_5

    :cond_f
    const/4 v1, -0x1

    :goto_5
    invoke-static {p1, v2, v3, v4, v1}, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;Ljava/util/List;I)V

    .line 1235
    :cond_10
    :goto_6
    invoke-static {}, Lcom/metamoji/mazec/MazecConfig;->getDebugShowRecognitionSegmentationPoints()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1236
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/mazec/MazecIms;->getRecognitionSegmentation()Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;

    move-result-object v1

    .line 1237
    invoke-virtual {v1}, Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;->getSplitPosition()Ljava/util/List;

    move-result-object v2

    .line 1238
    invoke-virtual {v1}, Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;->getJoinPosition()Ljava/util/List;

    move-result-object v1

    .line 1239
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    const/high16 v4, 0x40a00000    # 5.0f

    .line 1240
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    if-eqz v2, :cond_11

    const/high16 v5, -0x10000

    .line 1242
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1243
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 1244
    invoke-virtual {p1, v5, v4, v3}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    goto :goto_7

    :cond_11
    if-eqz v1, :cond_12

    const v2, -0xffff01

    .line 1248
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1249
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v4, 0x41200000    # 10.0f

    .line 1250
    invoke-virtual {p1, v2, v4, v3}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    goto :goto_8

    :cond_12
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 901
    iget p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mCurrentWidth:I

    iget p2, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mCurrentHeight:I

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/mazec/ui/HandWritingView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 913
    iget p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mInitScrollX:I

    if-lez p1, :cond_0

    .line 914
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/HandWritingView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/metamoji/mazec/ui/ExtHorizontalScrollView;

    const/4 p2, 0x0

    .line 915
    invoke-virtual {p1, p2}, Lcom/metamoji/mazec/ui/ExtHorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 916
    iget p3, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mInitScrollX:I

    invoke-virtual {p1, p3, p2}, Lcom/metamoji/mazec/ui/ExtHorizontalScrollView;->scrollTo(II)V

    .line 917
    iput p2, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mInitScrollX:I

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1591
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->notifyInputViewTouched()V

    .line 1593
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1609
    iput-boolean p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mNeedAutoScroll:Z

    .line 1610
    iput-boolean p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mNeedAutoCommit:Z

    goto :goto_0

    .line 1600
    :cond_1
    invoke-direct {p0, p1}, Lcom/metamoji/mazec/ui/HandWritingView;->onTouchMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 1604
    :cond_2
    invoke-direct {p0, p1}, Lcom/metamoji/mazec/ui/HandWritingView;->onTouchEnd(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 1596
    :cond_3
    invoke-direct {p0, p1}, Lcom/metamoji/mazec/ui/HandWritingView;->onTouchStart(Landroid/view/MotionEvent;)V

    :goto_0
    return v1
.end method

.method onUIModeChanged(Lcom/metamoji/mazec/MazecIms;)V
    .locals 1

    const/4 v0, 0x0

    .line 2235
    iput-boolean v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mNeedAutoScroll:Z

    .line 2236
    iput-boolean v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mNeedAutoCommit:Z

    .line 2239
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mCandidateSelectors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2241
    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/ui/HandWritingView;->adjustBackgroundColor(Lcom/metamoji/mazec/MazecIms;)V

    return-void
.end method

.method public onUpdateAutoCommitSetting(ZI)V
    .locals 0

    .line 2462
    iput-boolean p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mAutoCommitEnabled:Z

    .line 2463
    iput p2, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mAutoCommitDelay:I

    return-void
.end method

.method replacing()V
    .locals 2

    .line 824
    invoke-direct {p0}, Lcom/metamoji/mazec/ui/HandWritingView;->clearPopup()V

    .line 825
    invoke-direct {p0}, Lcom/metamoji/mazec/ui/HandWritingView;->clearCallbacks()V

    .line 827
    iget v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mCurrentBase:F

    iget v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mCurrentTop:F

    sub-float/2addr v0, v1

    sput v0, Lcom/metamoji/mazec/ui/HandWritingView;->mOldLineHeight:F

    .line 828
    iget v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mScrollX:I

    sput v0, Lcom/metamoji/mazec/ui/HandWritingView;->mOldScrollX:I

    return-void
.end method

.method public setHeight(I)V
    .locals 3

    .line 944
    iput p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mInitHeight:I

    .line 946
    iput p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mCurrentHeight:I

    mul-int/lit8 p1, p1, 0xa

    .line 947
    iput p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mMaxViewWidth:I

    .line 948
    invoke-direct {p0}, Lcom/metamoji/mazec/ui/HandWritingView;->adjustLayout()V

    .line 950
    invoke-direct {p0}, Lcom/metamoji/mazec/ui/HandWritingView;->updateViewWidth()V

    .line 952
    iget-object p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mCandidateSelectors:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 954
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object p1

    .line 955
    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mHwResultReflecter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 957
    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->getInputMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 958
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mViewData:Lcom/metamoji/mazec/ui/HwStrokesModel;

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/HwStrokesModel;->hasStrokes()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc8

    .line 960
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x14

    .line 959
    invoke-virtual {p1, v2, v0, v1}, Lcom/metamoji/mazec/MazecIms;->onEvent(ILjava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected setInitWidth(I)V
    .locals 2

    .line 628
    iget v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mInitWidth:I

    if-eq v0, p1, :cond_0

    .line 629
    iput p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mInitWidth:I

    int-to-float v0, p1

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 630
    iput v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mDemandRestWidth:I

    .line 632
    iput p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mCurrentWidth:I

    .line 633
    iget p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mCurrentHeight:I

    mul-int/lit8 p1, p1, 0xa

    iput p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mMaxViewWidth:I

    .line 635
    invoke-direct {p0}, Lcom/metamoji/mazec/ui/HandWritingView;->updateViewWidth()V

    .line 636
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/HandWritingView;->requestLayout()V

    .line 637
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/HandWritingView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setPenStyle(Lcom/metamoji/nt/share/NtPenStyle;)V
    .locals 3

    if-eqz p1, :cond_3

    .line 2488
    invoke-direct {p0}, Lcom/metamoji/mazec/ui/HandWritingView;->useDefaultStrokeStyle()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 2489
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mDrawingStroke:Lcom/metamoji/mazec/ui/DrawingStrokeModel;

    invoke-static {v1, p0}, Lcom/metamoji/mazec/stroke/StrokeDrawerFactory;->getDrawer(ILcom/metamoji/mazec/stroke/StrokeStyleResolver;)Lcom/metamoji/mazec/stroke/StrokeDrawer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/mazec/ui/DrawingStrokeModel;->setStrokeDrawer(Lcom/metamoji/mazec/stroke/StrokeDrawer;)V

    goto :goto_0

    .line 2491
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/nt/share/NtPenStyle;->getType()Ljava/lang/String;

    move-result-object v0

    .line 2492
    const-string v2, "calligraphy"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2493
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mDrawingStroke:Lcom/metamoji/mazec/ui/DrawingStrokeModel;

    const/4 v1, 0x3

    invoke-static {v1, p0}, Lcom/metamoji/mazec/stroke/StrokeDrawerFactory;->getDrawer(ILcom/metamoji/mazec/stroke/StrokeStyleResolver;)Lcom/metamoji/mazec/stroke/StrokeDrawer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/mazec/ui/DrawingStrokeModel;->setStrokeDrawer(Lcom/metamoji/mazec/stroke/StrokeDrawer;)V

    goto :goto_0

    .line 2494
    :cond_1
    const-string v2, "fountainpen"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2498
    iget-object v2, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mDrawingStroke:Lcom/metamoji/mazec/ui/DrawingStrokeModel;

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    .line 2495
    invoke-static {v0, p0}, Lcom/metamoji/mazec/stroke/StrokeDrawerFactory;->getDrawer(ILcom/metamoji/mazec/stroke/StrokeStyleResolver;)Lcom/metamoji/mazec/stroke/StrokeDrawer;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/metamoji/mazec/ui/DrawingStrokeModel;->setStrokeDrawer(Lcom/metamoji/mazec/stroke/StrokeDrawer;)V

    goto :goto_0

    .line 2498
    :cond_2
    invoke-static {v1, p0}, Lcom/metamoji/mazec/stroke/StrokeDrawerFactory;->getDrawer(ILcom/metamoji/mazec/stroke/StrokeStyleResolver;)Lcom/metamoji/mazec/stroke/StrokeDrawer;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/metamoji/mazec/ui/DrawingStrokeModel;->setStrokeDrawer(Lcom/metamoji/mazec/stroke/StrokeDrawer;)V

    .line 2501
    :goto_0
    invoke-static {p1}, Lcom/metamoji/mazec/stroke/StrokeStyle;->strokeStyleFromPenStyle(Lcom/metamoji/nt/share/NtPenStyle;)Lcom/metamoji/mazec/stroke/StrokeStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mStrokeStyle:Lcom/metamoji/mazec/stroke/StrokeStyle;

    .line 2502
    iget-object v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mDrawingStroke:Lcom/metamoji/mazec/ui/DrawingStrokeModel;

    invoke-virtual {v1, v0}, Lcom/metamoji/mazec/ui/DrawingStrokeModel;->setStrokeStyle(Lcom/metamoji/mazec/stroke/StrokeStyle;)V

    .line 2503
    invoke-static {p1}, Lcom/metamoji/mazec/stroke/StrokePenInfo;->strokePenInfoFromPenStyle(Lcom/metamoji/nt/share/NtPenStyle;)Lcom/metamoji/mazec/stroke/StrokePenInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mStrokePenInfo:Lcom/metamoji/mazec/stroke/StrokePenInfo;

    :cond_3
    return-void
.end method

.method protected startDrag()V
    .locals 19

    move-object/from16 v0, p0

    .line 1903
    iget v1, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mDragState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    .line 1907
    iput v1, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mDragState:I

    .line 1908
    iget-object v3, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mDrawingStroke:Lcom/metamoji/mazec/ui/DrawingStrokeModel;

    invoke-virtual {v3}, Lcom/metamoji/mazec/ui/DrawingStrokeModel;->cancelStroke()V

    .line 1910
    iget-object v3, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

    .line 1912
    iget v4, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mLastTouchPointX:F

    iput v4, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mTouchBeganPointX:F

    .line 1913
    iget v4, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mLastTouchPointY:F

    iput v4, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mTouchBeganPointY:F

    .line 1916
    iget-object v4, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mDragMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    .line 1917
    invoke-direct {v0}, Lcom/metamoji/mazec/ui/HandWritingView;->useDefaultStrokeStyle()Z

    move-result v4

    .line 1918
    iget v5, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mPressedCandidatesIndex:I

    if-ltz v5, :cond_6

    .line 1921
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/mazec/MazecIms;->getHwrResult()Lcom/metamoji/mazec/recognizer/HwRecognitionResult;

    move-result-object v1

    .line 1924
    iget v5, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mPressedCandidatesIndex:I

    invoke-virtual {v1, v5}, Lcom/metamoji/mazec/recognizer/HwRecognitionResult;->getCandidates(I)Lcom/metamoji/mazec/recognizer/HwCandidates;

    move-result-object v5

    iget-object v6, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

    invoke-virtual {v5, v6}, Lcom/metamoji/mazec/recognizer/HwCandidates;->getTargetStrokes(Lcom/metamoji/mazec/stroke/HwStrokes;)Lcom/metamoji/mazec/stroke/HwStrokes;

    move-result-object v5

    if-eqz v4, :cond_1

    .line 1926
    invoke-direct {v0}, Lcom/metamoji/mazec/ui/HandWritingView;->getDefaultStrokeStyle()Lcom/metamoji/mazec/stroke/StrokeStyle;

    move-result-object v6

    iget-object v7, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mWorkRect:Landroid/graphics/RectF;

    invoke-virtual {v5, v6, v7}, Lcom/metamoji/mazec/stroke/HwStrokes;->boundsWithStrokeStyle(Lcom/metamoji/mazec/stroke/StrokeStyle;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    goto :goto_0

    .line 1928
    :cond_1
    iget-object v6, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mWorkRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Lcom/metamoji/mazec/stroke/HwStrokes;->innerBounds()Landroid/graphics/RectF;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1932
    :goto_0
    invoke-virtual {v5}, Lcom/metamoji/mazec/stroke/HwStrokes;->getLeftMostPoint()Landroid/graphics/PointF;

    move-result-object v5

    .line 1933
    iget v5, v5, Landroid/graphics/PointF;->y:F

    iput v5, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mTouchBeganPointY:F

    .line 1936
    iget-object v5, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mWorkRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    .line 1937
    iget v6, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mTouchBeganPointX:F

    sub-float/2addr v6, v5

    iput v6, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mDragDiff:F

    .line 1940
    iget-object v6, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mDragShiftTargets:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    .line 1941
    invoke-virtual {v1}, Lcom/metamoji/mazec/recognizer/HwRecognitionResult;->getCount()I

    move-result v6

    .line 1942
    iget v7, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mPressedCandidatesIndex:I

    :goto_1
    if-ge v7, v6, :cond_2

    .line 1943
    iget-object v8, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mDragShiftTargets:Ljava/util/HashSet;

    invoke-virtual {v1, v7}, Lcom/metamoji/mazec/recognizer/HwRecognitionResult;->getCandidates(I)Lcom/metamoji/mazec/recognizer/HwCandidates;

    move-result-object v9

    iget-object v10, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

    invoke-virtual {v9, v10}, Lcom/metamoji/mazec/recognizer/HwCandidates;->getTargetStrokes(Lcom/metamoji/mazec/stroke/HwStrokes;)Lcom/metamoji/mazec/stroke/HwStrokes;

    move-result-object v9

    invoke-virtual {v9}, Lcom/metamoji/mazec/stroke/HwStrokes;->getStrokes()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    if-eqz v4, :cond_3

    .line 1949
    invoke-direct {v0}, Lcom/metamoji/mazec/ui/HandWritingView;->getDefaultStrokeStyle()Lcom/metamoji/mazec/stroke/StrokeStyle;

    move-result-object v6

    iget-object v7, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mWorkRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v6, v7}, Lcom/metamoji/mazec/stroke/HwStrokes;->boundsWithStrokeStyle(Lcom/metamoji/mazec/stroke/StrokeStyle;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    goto :goto_2

    .line 1952
    :cond_3
    iget-object v6, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mWorkRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Lcom/metamoji/mazec/stroke/HwStrokes;->innerBounds()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1954
    :goto_2
    iget v3, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mTouchBeganPointX:F

    iget v6, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mMaxViewWidth:I

    int-to-float v6, v6

    add-float/2addr v3, v6

    iget-object v6, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mWorkRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v6

    iput v3, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mDragMaxX:F

    .line 1957
    iget v3, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mPressedCandidatesIndex:I

    if-nez v3, :cond_4

    .line 1958
    iget v1, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mDragDiff:F

    iput v1, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mDragMinX:F

    goto/16 :goto_b

    :cond_4
    sub-int/2addr v3, v2

    .line 1960
    invoke-virtual {v1, v3}, Lcom/metamoji/mazec/recognizer/HwRecognitionResult;->getCandidates(I)Lcom/metamoji/mazec/recognizer/HwCandidates;

    move-result-object v1

    iget-object v2, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

    invoke-virtual {v1, v2}, Lcom/metamoji/mazec/recognizer/HwCandidates;->getTargetStrokes(Lcom/metamoji/mazec/stroke/HwStrokes;)Lcom/metamoji/mazec/stroke/HwStrokes;

    move-result-object v1

    if-eqz v4, :cond_5

    .line 1962
    invoke-direct {v0}, Lcom/metamoji/mazec/ui/HandWritingView;->getDefaultStrokeStyle()Lcom/metamoji/mazec/stroke/StrokeStyle;

    move-result-object v2

    iget-object v3, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mWorkRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/mazec/stroke/HwStrokes;->boundsWithStrokeStyle(Lcom/metamoji/mazec/stroke/StrokeStyle;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    goto :goto_3

    .line 1965
    :cond_5
    iget-object v2, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mWorkRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Lcom/metamoji/mazec/stroke/HwStrokes;->innerBounds()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1967
    :goto_3
    iget v1, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mTouchBeganPointX:F

    iget-object v2, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mWorkRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v5, v2

    sub-float/2addr v1, v5

    iput v1, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mDragMinX:F

    .line 1968
    iget v2, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mTouchBeganPointX:F

    cmpg-float v1, v2, v1

    if-gez v1, :cond_11

    .line 1969
    iput v2, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mDragMinX:F

    goto/16 :goto_b

    .line 1975
    :cond_6
    iget v5, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mTouchBeganPointX:F

    iget-object v6, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mDragShiftTargets:Ljava/util/HashSet;

    invoke-static {v3, v5, v6}, Lcom/metamoji/mazec/stroke/HwStrokes;->getRightStrokes(Lcom/metamoji/mazec/stroke/HwStrokes;FLjava/util/Set;)Ljava/util/Set;

    .line 1977
    iget-boolean v5, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mStrokeSplitDisabled:Z

    const/4 v6, 0x0

    if-nez v5, :cond_f

    .line 1979
    iget-object v5, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mSplitStrokeMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 1981
    invoke-virtual {v3}, Lcom/metamoji/mazec/stroke/HwStrokes;->strokeCount()I

    move-result v5

    .line 1982
    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7}, Landroid/graphics/PointF;-><init>()V

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v5, :cond_f

    .line 1985
    invoke-virtual {v3, v9}, Lcom/metamoji/mazec/stroke/HwStrokes;->getStroke(I)Lcom/metamoji/mazec/stroke/HwStroke;

    move-result-object v10

    .line 1986
    iget v11, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mTouchBeganPointX:F

    iget v12, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mTouchBeganPointY:F

    invoke-virtual {v10, v11, v12, v7}, Lcom/metamoji/mazec/stroke/HwStroke;->nearestPointOfStroke(FFLandroid/graphics/PointF;)F

    move-result v11

    cmpl-float v12, v11, v6

    if-ltz v12, :cond_e

    .line 1987
    iget v12, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mDragStrokeSplitDistance:F

    cmpg-float v11, v11, v12

    if-gez v11, :cond_e

    .line 1989
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1990
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1991
    invoke-virtual {v10}, Lcom/metamoji/mazec/stroke/HwStroke;->points()Ljava/util/List;

    move-result-object v13

    .line 1992
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    move-object v8, v11

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_5
    if-ge v15, v14, :cond_8

    .line 1995
    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v6, v17

    check-cast v6, Landroid/graphics/PointF;

    .line 1996
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1997
    iget v1, v7, Landroid/graphics/PointF;->x:F

    iget v2, v6, Landroid/graphics/PointF;->x:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_7

    iget v1, v7, Landroid/graphics/PointF;->y:F

    iget v2, v6, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_7

    .line 1999
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v8, v12

    :cond_7
    add-int/lit8 v15, v15, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v6, 0x0

    goto :goto_5

    .line 2002
    :cond_8
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_d

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v2, :cond_d

    .line 2005
    new-instance v1, Lcom/metamoji/mazec/stroke/HwStroke;

    invoke-virtual {v10}, Lcom/metamoji/mazec/stroke/HwStroke;->getStrokeStyle()Lcom/metamoji/mazec/stroke/StrokeStyle;

    move-result-object v2

    invoke-virtual {v10}, Lcom/metamoji/mazec/stroke/HwStroke;->granularityType()I

    move-result v6

    invoke-direct {v1, v2, v6}, Lcom/metamoji/mazec/stroke/HwStroke;-><init>(Lcom/metamoji/mazec/stroke/StrokeStyle;I)V

    .line 2006
    new-instance v2, Lcom/metamoji/mazec/stroke/HwStroke;

    invoke-virtual {v10}, Lcom/metamoji/mazec/stroke/HwStroke;->getStrokeStyle()Lcom/metamoji/mazec/stroke/StrokeStyle;

    move-result-object v6

    invoke-virtual {v10}, Lcom/metamoji/mazec/stroke/HwStroke;->granularityType()I

    move-result v8

    invoke-direct {v2, v6, v8}, Lcom/metamoji/mazec/stroke/HwStroke;-><init>(Lcom/metamoji/mazec/stroke/StrokeStyle;I)V

    const-wide/16 v13, 0xa

    .line 2008
    invoke-static {v11, v13, v14}, Lcom/metamoji/mazec/stroke/StrokeTouch;->makeStrokeTouchsWithFakeTime(Ljava/util/List;J)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/metamoji/mazec/stroke/HwStroke;->setPointsBeforeReduced(Ljava/util/List;)V

    .line 2009
    invoke-static {v12, v13, v14}, Lcom/metamoji/mazec/stroke/StrokeTouch;->makeStrokeTouchsWithFakeTime(Ljava/util/List;J)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/metamoji/mazec/stroke/HwStroke;->setPointsBeforeReduced(Ljava/util/List;)V

    .line 2011
    invoke-virtual {v1}, Lcom/metamoji/mazec/stroke/HwStroke;->xCenterOfGravity()F

    move-result v6

    .line 2012
    invoke-virtual {v2}, Lcom/metamoji/mazec/stroke/HwStroke;->xCenterOfGravity()F

    move-result v8

    .line 2014
    iget v11, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mTouchBeganPointX:F

    cmpg-float v6, v6, v11

    const/4 v12, 0x0

    if-gez v6, :cond_a

    cmpg-float v6, v8, v11

    if-gez v6, :cond_9

    goto :goto_6

    :cond_9
    move-object v12, v2

    goto :goto_7

    :cond_a
    cmpl-float v6, v8, v11

    if-ltz v6, :cond_b

    :goto_6
    move-object v1, v12

    move/from16 v2, v16

    goto :goto_8

    :cond_b
    move-object v12, v1

    move-object v1, v2

    :goto_7
    const/4 v2, 0x1

    :goto_8
    if-eqz v2, :cond_c

    .line 2030
    iget-object v2, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mSplitStrokeMap:Ljava/util/HashMap;

    const/4 v6, 0x2

    new-array v8, v6, [Lcom/metamoji/mazec/stroke/HwStroke;

    aput-object v1, v8, v16

    const/16 v18, 0x1

    aput-object v12, v8, v18

    invoke-virtual {v2, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2031
    iget-object v1, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mDragShiftTargets:Ljava/util/HashSet;

    invoke-virtual {v1, v10}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_c
    const/4 v6, 0x2

    const/16 v18, 0x1

    goto :goto_9

    :cond_d
    move/from16 v18, v2

    const/4 v6, 0x2

    goto :goto_9

    :cond_e
    move v6, v1

    move/from16 v18, v2

    const/16 v16, 0x0

    :goto_9
    add-int/lit8 v9, v9, 0x1

    move v1, v6

    move/from16 v2, v18

    const/4 v6, 0x0

    goto/16 :goto_4

    :cond_f
    if-eqz v4, :cond_10

    .line 2040
    invoke-direct {v0}, Lcom/metamoji/mazec/ui/HandWritingView;->getDefaultStrokeStyle()Lcom/metamoji/mazec/stroke/StrokeStyle;

    move-result-object v1

    iget-object v2, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mWorkRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v1, v2}, Lcom/metamoji/mazec/stroke/HwStrokes;->boundsWithStrokeStyle(Lcom/metamoji/mazec/stroke/StrokeStyle;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    goto :goto_a

    .line 2043
    :cond_10
    iget-object v1, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mWorkRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Lcom/metamoji/mazec/stroke/HwStrokes;->innerBounds()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 2045
    :goto_a
    iget v1, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mTouchBeganPointX:F

    iget v2, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mMaxViewWidth:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mWorkRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mDragMaxX:F

    const/4 v1, 0x0

    .line 2046
    iput v1, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mDragMinX:F

    .line 2047
    iput v1, v0, Lcom/metamoji/mazec/ui/HandWritingView;->mDragDiff:F

    .line 2050
    :cond_11
    :goto_b
    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/HandWritingView;->invalidate()V

    return-void
.end method

.method starting(Lcom/metamoji/mazec/MazecIms;)V
    .locals 3

    .line 783
    invoke-direct {p0}, Lcom/metamoji/mazec/ui/HandWritingView;->clearPopup()V

    .line 784
    invoke-direct {p0}, Lcom/metamoji/mazec/ui/HandWritingView;->clearCallbacks()V

    .line 787
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mDrawingStroke:Lcom/metamoji/mazec/ui/DrawingStrokeModel;

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/DrawingStrokeModel;->cancelStroke()V

    .line 789
    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->getPrefs()Lcom/metamoji/mazec/MazecPreferences;

    move-result-object v0

    .line 791
    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecPreferences;->isAutoScrollEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mAutoScrollEnabled:Z

    .line 792
    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecPreferences;->getAutoScrollDelay()I

    move-result v1

    iput v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mAutoScrollDelay:I

    .line 794
    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecPreferences;->isAutoCommitEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mAutoCommitEnabled:Z

    .line 795
    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecPreferences;->getAutoCommitDelay()I

    move-result v1

    iput v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mAutoCommitDelay:I

    .line 796
    iget v1, p1, Lcom/metamoji/mazec/MazecIms;->screenMinSize:I

    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecPreferences;->getAutoScrollAreaWidth()I

    move-result v2

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x64

    iput v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mAutoScrollAreaWidth:I

    .line 798
    iget-object v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mLang:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/metamoji/mazec/util/LocaleUtil;->wordSpaceCoefficientForLanguage(Ljava/lang/String;Lcom/metamoji/mazec/MazecPreferences;)F

    move-result v1

    iput v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mWordspacingCoef:F

    .line 800
    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->getClientType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 802
    iget v1, v0, Lcom/metamoji/mazec/MazecPreferences;->lineColor:I

    iget v0, v0, Lcom/metamoji/mazec/MazecPreferences;->lineWidthType:I

    invoke-static {v1, v0}, Lcom/metamoji/mazec/stroke/StrokeStyle;->sevenNotes1ageStrokeStyle(II)Lcom/metamoji/mazec/stroke/StrokeStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mStrokeStyle:Lcom/metamoji/mazec/stroke/StrokeStyle;

    .line 803
    iget-object v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mDrawingStroke:Lcom/metamoji/mazec/ui/DrawingStrokeModel;

    invoke-virtual {v1, v0}, Lcom/metamoji/mazec/ui/DrawingStrokeModel;->setStrokeStyle(Lcom/metamoji/mazec/stroke/StrokeStyle;)V

    goto :goto_0

    .line 805
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->getCurrentPenStyle()Lcom/metamoji/nt/share/NtPenStyle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/ui/HandWritingView;->setPenStyle(Lcom/metamoji/nt/share/NtPenStyle;)V

    .line 808
    :goto_0
    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/ui/HandWritingView;->adjustBackgroundColor(Lcom/metamoji/mazec/MazecIms;)V

    .line 810
    invoke-direct {p0}, Lcom/metamoji/mazec/ui/HandWritingView;->adjustStrokesRelatedVars()V

    .line 811
    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->getInputMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mHandwriteStrokeBlockDetecter:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

    if-eqz v0, :cond_1

    .line 812
    invoke-virtual {v0}, Lcom/metamoji/mazec/stroke/HwStrokes;->strokeCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 813
    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mHandwriteStrokeBlockDetecter:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 816
    :cond_1
    invoke-direct {p0}, Lcom/metamoji/mazec/ui/HandWritingView;->updateViewWidth()V

    return-void
.end method

.method protected upBaseline(Z)V
    .locals 3

    const/4 v0, 0x0

    .line 972
    iput-boolean v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mNeedAutoScroll:Z

    .line 973
    iput-boolean v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mNeedAutoCommit:Z

    if-eqz p1, :cond_0

    const p1, 0x3f33e453

    .line 976
    iput p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mCurBaselineCoef:F

    goto :goto_0

    :cond_0
    const p1, 0x3f48a60e

    .line 978
    iput p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mCurBaselineCoef:F

    .line 981
    :goto_0
    invoke-direct {p0}, Lcom/metamoji/mazec/ui/HandWritingView;->adjustLayout()V

    .line 983
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object p1

    .line 984
    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->getInputMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 985
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mViewData:Lcom/metamoji/mazec/ui/HwStrokesModel;

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/HwStrokesModel;->hasStrokes()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xc8

    .line 987
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x14

    .line 986
    invoke-virtual {p1, v2, v0, v1}, Lcom/metamoji/mazec/MazecIms;->onEvent(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 992
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/HandWritingView;->invalidate()V

    return-void
.end method

.method public updateScrollX(I)V
    .locals 3

    .line 927
    iput p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mScrollX:I

    .line 929
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object p1

    .line 930
    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 931
    iget-object v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mHwResultPositioner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 932
    iget-object v1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mLang:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "ja_JP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 933
    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->isRequesingRecognize()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 935
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/metamoji/mazec/ui/HandWritingView;->mHwResultPositioner:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
