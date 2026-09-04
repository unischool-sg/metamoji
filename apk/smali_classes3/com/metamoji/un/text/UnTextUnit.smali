.class public Lcom/metamoji/un/text/UnTextUnit;
.super Lcom/metamoji/nt/NtUnitController;
.source "UnTextUnit.java"

# interfaces
.implements Lcom/metamoji/un/text/IUnTextUnitDelegate;
.implements Lcom/metamoji/un/text/ITUInputConnectionClient;
.implements Lcom/metamoji/un/text/model/undo/ITextUndoManager;
.implements Lcom/metamoji/nt/IUndoOrRedoEventHandler;
.implements Lcom/metamoji/df/sprite/LongPressListener;
.implements Lcom/metamoji/df/sprite/ViewportListener;
.implements Lcom/metamoji/ui/dialog/UiDialog$OnGlobalShowDismissListener;
.implements Lcom/metamoji/nt/NtMazecImsManager$ToggleListener;
.implements Lcom/metamoji/ns/direction/INsDirectionHandler;
.implements Lcom/metamoji/un/text/model/IStringWithStrokesArrayDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/text/UnTextUnit$ViewForSoftInput;,
        Lcom/metamoji/un/text/UnTextUnit$TextUnitSizeCheckDoInitType;,
        Lcom/metamoji/un/text/UnTextUnit$ReeditMode;,
        Lcom/metamoji/un/text/UnTextUnit$InsertionPointCursorController;,
        Lcom/metamoji/un/text/UnTextUnit$SelectionModifierCursorController;,
        Lcom/metamoji/un/text/UnTextUnit$CancelModeType;,
        Lcom/metamoji/un/text/UnTextUnit$CommandId;,
        Lcom/metamoji/un/text/UnTextUnit$UndoModelDef;,
        Lcom/metamoji/un/text/UnTextUnit$UndoPerformer;,
        Lcom/metamoji/un/text/UnTextUnit$SetRenderStrokesSwitch;,
        Lcom/metamoji/un/text/UnTextUnit$PenStyleSet;,
        Lcom/metamoji/un/text/UnTextUnit$PaperEdge;,
        Lcom/metamoji/un/text/UnTextUnit$UnTextUnitOption;,
        Lcom/metamoji/un/text/UnTextUnit$SpellCheckCmdId;,
        Lcom/metamoji/un/text/UnTextUnit$CursorController;,
        Lcom/metamoji/un/text/UnTextUnit$HandleView;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final MMJMD_MODEL_PROPERTY_REGARD_DIRECTION:Ljava/lang/String; = "textmode.direction.regard"

.field private static final MMJUN_PROP_UNDO_DATAS:Ljava/lang/String; = "undoDatas"

.field private static final MMJUN_PROP_UNDO_SELECTED_TEXT_RANGE_AFTER:Ljava/lang/String; = "undoSelectedTextRangeAfter"

.field private static final MMJUN_PROP_UNDO_SELECTED_TEXT_RANGE_BEFORE:Ljava/lang/String; = "undoSelectedTextRangeBefore"

.field private static final MMJUN_PROP_UNOD_TASKNAME:Ljava/lang/String; = "taskName"

.field public static final MMJUN_TEXTMODEL_PROPERTY_CTAG_PREFIX:Ljava/lang/String; = "cTagIdGenerator"

.field public static final MMJUN_TEXT_FONTPOINT_MAX:F = 96.0f

.field public static final MMJUN_TEXT_FONTPOINT_MIN:F = 4.0f

.field public static final MODELTYPE:Ljava/lang/String; = "$text"

.field private static final TEXTUNIT_KEY_LOCATIONCHECK_INPAPER:Ljava/lang/String; = "textmode.locationcheck.paper"

.field private static final TEXTUNIT_KEY_SIZECHECK_DOINIT:Ljava/lang/String; = "textmode.sizecheck.doinit"

.field private static _checkSpelling:Z = false

.field private static final _scslForSpellCheckAvailable:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;

.field static _spellCheckerSession:Landroid/view/textservice/SpellCheckerSession; = null

.field private static duringChangeUnitSizeByRemakeLineTable:Ljava/lang/ThreadLocal; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static s_textUnitOption:I = -0x1


# instance fields
.field private _alive:Z

.field private _collaboModified:Z

.field private _collaboOtherEditting:Z

.field private _delayShareSendAfterUndoOrRedo:Z

.field private _duringCancelReconvertTask:Z

.field private _duringInsertComposingText:Z

.field _fromPosOnSearchNextReeditRange:Lcom/metamoji/un/text/model/TextPosition;

.field private _inputStyleBarUpdateAttrFlag:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;",
            ">;"
        }
    .end annotation
.end field

.field private _isOwnerAndEditability:Ljava/lang/Boolean;

.field private _isSupportReedit:Z

.field _lastCandidateRangeForConvert:Lcom/metamoji/un/text/model/TextRange;

.field private _monitorCaretPos:Z

.field _reeditMode:Lcom/metamoji/un/text/UnTextUnit$ReeditMode;

.field private _registerCollabo:Z

.field private _rubberBand:Lcom/metamoji/un/util/UnRubberBandSupport;

.field private _selectBack:Z

.field private _tagChangedEventHandler:Lcom/metamoji/cm/ICmEventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/cm/ICmEventHandler<",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/CtEventTagChanged;",
            ">;>;"
        }
    .end annotation
.end field

.field private _tagIdGenerator:Lcom/metamoji/ctold/CtIdGenerator;

.field private _taggedParagraphDic:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/metamoji/cm/RectEx;",
            ">;"
        }
    .end annotation
.end field

.field private _tapObserver:Lcom/metamoji/un/text/UnTextUnitTapObserver;

.field private _timerForSendToCollabo:Ljava/util/Timer;

.field private _undoDatasForReconvert:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private _undoModelForReconvert:Lcom/metamoji/df/model/IModel;

.field private _updateInputStyleBarLock:Ljava/lang/Object;

.field private _updateInputStyleBarRunnable:Ljava/lang/Runnable;

.field private _viewForSI:Lcom/metamoji/un/text/UnTextUnit$ViewForSoftInput;

.field private _visibleContextMenu:Z

.field private callCheckMinSizeAtSetGeometricProps:Z

.field private composingSpan:Lcom/metamoji/un/text/model/TextRange;

.field private duringChangeFontSizeAttr:Z

.field private duringSetGeometricProps:Z

.field private editMode:Lcom/metamoji/nt/NtDocument$EditMode;

.field private editing:Z

.field private handler:Landroid/os/Handler;

.field private hotSpotLocations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/un/text/hotspot/HotSpotLocation;",
            ">;"
        }
    .end annotation
.end field

.field private inhibitAddSelfResizeUndo:Z

.field private insPtCurCtrl:Lcom/metamoji/un/text/UnTextUnit$InsertionPointCursorController;

.field private isStrokeReditMode:Z

.field private maxMaxWidthHeight:F

.field private mazecAction:Lcom/metamoji/un/text/MazecAction;

.field private mediaType:Lcom/metamoji/df/controller/ControllerContext$MediaType;

.field private preResizeUndoData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private selModCurCtrl:Lcom/metamoji/un/text/UnTextUnit$SelectionModifierCursorController;

.field private temporaryStackedUndoDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/df/model/IModel;",
            ">;"
        }
    .end annotation
.end field

.field private textSprite:Lcom/metamoji/un/text/sprite/TextSprite;

.field private toolMode:Lcom/metamoji/nt/NtDocument$ToolMode;

.field private undoDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private undoDatasBindToDrawEditContext:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private undoDatasForChangeUnitSizeByRemakeLineTable:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private undoDatasForComposingText:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private undoModel:Lcom/metamoji/df/model/IModel;


# direct methods
.method static bridge synthetic -$$Nest$fget_alive(Lcom/metamoji/un/text/UnTextUnit;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/metamoji/un/text/UnTextUnit;->_alive:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fget_rubberBand(Lcom/metamoji/un/text/UnTextUnit;)Lcom/metamoji/un/util/UnRubberBandSupport;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/un/text/UnTextUnit;->_rubberBand:Lcom/metamoji/un/util/UnRubberBandSupport;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_viewForSI(Lcom/metamoji/un/text/UnTextUnit;)Lcom/metamoji/un/text/UnTextUnit$ViewForSoftInput;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/un/text/UnTextUnit;->_viewForSI:Lcom/metamoji/un/text/UnTextUnit$ViewForSoftInput;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetediting(Lcom/metamoji/un/text/UnTextUnit;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/metamoji/un/text/UnTextUnit;->editing:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetinsPtCurCtrl(Lcom/metamoji/un/text/UnTextUnit;)Lcom/metamoji/un/text/UnTextUnit$InsertionPointCursorController;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/un/text/UnTextUnit;->insPtCurCtrl:Lcom/metamoji/un/text/UnTextUnit$InsertionPointCursorController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetselModCurCtrl(Lcom/metamoji/un/text/UnTextUnit;)Lcom/metamoji/un/text/UnTextUnit$SelectionModifierCursorController;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/un/text/UnTextUnit;->selModCurCtrl:Lcom/metamoji/un/text/UnTextUnit$SelectionModifierCursorController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettextSprite(Lcom/metamoji/un/text/UnTextUnit;)Lcom/metamoji/un/text/sprite/TextSprite;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/un/text/UnTextUnit;->textSprite:Lcom/metamoji/un/text/sprite/TextSprite;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fput_collaboModified(Lcom/metamoji/un/text/UnTextUnit;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/metamoji/un/text/UnTextUnit;->_collaboModified:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fput_isSupportReedit(Lcom/metamoji/un/text/UnTextUnit;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/metamoji/un/text/UnTextUnit;->_isSupportReedit:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fput_visibleContextMenu(Lcom/metamoji/un/text/UnTextUnit;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/metamoji/un/text/UnTextUnit;->_visibleContextMenu:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mappearContextMenu(Lcom/metamoji/un/text/UnTextUnit;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->appearContextMenu()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mappearContextMenuForSpellCheck(Lcom/metamoji/un/text/UnTextUnit;Lcom/metamoji/un/text/hotspot/HotSpotLocationForSpellCheck;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/un/text/UnTextUnit;->appearContextMenuForSpellCheck(Lcom/metamoji/un/text/hotspot/HotSpotLocationForSpellCheck;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcaretNotHide(Lcom/metamoji/un/text/UnTextUnit;)Z
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->caretNotHide()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$menableSendTextUnitEdittingData(Lcom/metamoji/un/text/UnTextUnit;)Z
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->enableSendTextUnitEdittingData()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$menterStrokeReeditMode(Lcom/metamoji/un/text/UnTextUnit;Lcom/metamoji/un/text/UnTextUnit$ReeditMode;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/un/text/UnTextUnit;->enterStrokeReeditMode(Lcom/metamoji/un/text/UnTextUnit$ReeditMode;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetMinBoundRect(Lcom/metamoji/un/text/UnTextUnit;)Landroid/graphics/RectF;
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->getMinBoundRect()Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhandleChangeTextStyleAttributes(Lcom/metamoji/un/text/UnTextUnit;Lcom/metamoji/un/text/model/UnitStyles;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/un/text/UnTextUnit;->handleChangeTextStyleAttributes(Lcom/metamoji/un/text/model/UnitStyles;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleCommandMenu(Lcom/metamoji/un/text/UnTextUnit;Lcom/metamoji/un/text/UnTextUnit$CommandId;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/text/UnTextUnit;->handleCommandMenu(Lcom/metamoji/un/text/UnTextUnit$CommandId;Ljava/lang/Object;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$minVisibleViewRect(Lcom/metamoji/un/text/UnTextUnit;Landroid/graphics/RectF;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/un/text/UnTextUnit;->inVisibleViewRect(Landroid/graphics/RectF;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misSupportReedit(Lcom/metamoji/un/text/UnTextUnit;)Z
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->isSupportReedit()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$monTagChangedEvent(Lcom/metamoji/un/text/UnTextUnit;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/un/text/UnTextUnit;->onTagChangedEvent(Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monTappedInBounds(Lcom/metamoji/un/text/UnTextUnit;Landroid/graphics/PointF;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/text/UnTextUnit;->onTappedInBounds(Landroid/graphics/PointF;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monTappedOutOfBounds(Lcom/metamoji/un/text/UnTextUnit;Landroid/graphics/PointF;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/text/UnTextUnit;->onTappedOutOfBounds(Landroid/graphics/PointF;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monTimerSendToCollabo(Lcom/metamoji/un/text/UnTextUnit;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->onTimerSendToCollabo()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mputSpellErrorMarkToTextAttributes(Lcom/metamoji/un/text/UnTextUnit;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/un/text/UnTextUnit;->putSpellErrorMarkToTextAttributes(Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreflectDirectionWithTextModel(Lcom/metamoji/un/text/UnTextUnit;Lcom/metamoji/un/text/model/TextModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/un/text/UnTextUnit;->reflectDirectionWithTextModel(Lcom/metamoji/un/text/model/TextModel;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreplaceSpellCheckError(Lcom/metamoji/un/text/UnTextUnit;Lcom/metamoji/un/text/hotspot/HotSpotLocationForSpellCheck;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/text/UnTextUnit;->replaceSpellCheckError(Lcom/metamoji/un/text/hotspot/HotSpotLocationForSpellCheck;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mscrollRectToVisible(Lcom/metamoji/un/text/UnTextUnit;Landroid/graphics/RectF;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/text/UnTextUnit;->scrollRectToVisible(Landroid/graphics/RectF;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetGeometricPropsSelf(Lcom/metamoji/un/text/UnTextUnit;Lcom/metamoji/df/controller/GeometricProps;Lcom/metamoji/un/text/model/undo/ITextUndoManager;ZZZLjava/util/List;ZLjava/util/Map;Z)Z
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/metamoji/un/text/UnTextUnit;->setGeometricPropsSelf(Lcom/metamoji/df/controller/GeometricProps;Lcom/metamoji/un/text/model/undo/ITextUndoManager;ZZZLjava/util/List;ZLjava/util/Map;Z)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mtextSpriteToViewport(Lcom/metamoji/un/text/UnTextUnit;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/un/text/UnTextUnit;->textSpriteToViewport(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mtimerUpdateInputStyleBar(Lcom/metamoji/un/text/UnTextUnit;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->timerUpdateInputStyleBar()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mviewportToTextSprite(Lcom/metamoji/un/text/UnTextUnit;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/un/text/UnTextUnit;->viewportToTextSprite(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smgetMinSizeWithFont(Landroid/graphics/Paint;F)Lcom/metamoji/cm/SizeF;
    .locals 0

    invoke-static {p0, p1}, Lcom/metamoji/un/text/UnTextUnit;->getMinSizeWithFont(Landroid/graphics/Paint;F)Lcom/metamoji/cm/SizeF;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smreeditModeIsPending(Lcom/metamoji/un/text/UnTextUnit$ReeditMode;)Z
    .locals 0

    invoke-static {p0}, Lcom/metamoji/un/text/UnTextUnit;->reeditModeIsPending(Lcom/metamoji/un/text/UnTextUnit$ReeditMode;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smswitchReeditPendingMode(Lcom/metamoji/un/text/UnTextUnit$ReeditMode;)Lcom/metamoji/un/text/UnTextUnit$ReeditMode;
    .locals 0

    invoke-static {p0}, Lcom/metamoji/un/text/UnTextUnit;->switchReeditPendingMode(Lcom/metamoji/un/text/UnTextUnit$ReeditMode;)Lcom/metamoji/un/text/UnTextUnit$ReeditMode;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 477
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtFeature;->TextSpellCheck:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 478
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    const-string v2, "MMJTextUnitAutoSpellCheck"

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/metamoji/un/text/UnTextUnit;->_checkSpelling:Z

    goto :goto_0

    .line 480
    :cond_0
    sput-boolean v1, Lcom/metamoji/un/text/UnTextUnit;->_checkSpelling:Z

    .line 3915
    :goto_0
    new-instance v0, Lcom/metamoji/un/text/UnTextUnit$16;

    invoke-direct {v0}, Lcom/metamoji/un/text/UnTextUnit$16;-><init>()V

    sput-object v0, Lcom/metamoji/un/text/UnTextUnit;->duringChangeUnitSizeByRemakeLineTable:Ljava/lang/ThreadLocal;

    .line 11401
    new-instance v0, Lcom/metamoji/un/text/UnTextUnit$46;

    invoke-direct {v0}, Lcom/metamoji/un/text/UnTextUnit$46;-><init>()V

    sput-object v0, Lcom/metamoji/un/text/UnTextUnit;->_scslForSpellCheckAvailable:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/df/controller/ControllerContext;Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V
    .locals 3

    .line 661
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/nt/NtUnitController;-><init>(Lcom/metamoji/df/controller/ControllerContext;Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 338
    iput-boolean p3, p0, Lcom/metamoji/un/text/UnTextUnit;->_selectBack:Z

    .line 352
    iput-boolean p3, p0, Lcom/metamoji/un/text/UnTextUnit;->_alive:Z

    .line 358
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 366
    iput-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->_timerForSendToCollabo:Ljava/util/Timer;

    .line 369
    iput-boolean p3, p0, Lcom/metamoji/un/text/UnTextUnit;->_collaboModified:Z

    .line 372
    iput-boolean p3, p0, Lcom/metamoji/un/text/UnTextUnit;->_registerCollabo:Z

    .line 378
    iput-boolean p3, p0, Lcom/metamoji/un/text/UnTextUnit;->_collaboOtherEditting:Z

    .line 381
    iput-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->_tapObserver:Lcom/metamoji/un/text/UnTextUnitTapObserver;

    .line 387
    iput-boolean p3, p0, Lcom/metamoji/un/text/UnTextUnit;->_visibleContextMenu:Z

    .line 420
    iput-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->_isOwnerAndEditability:Ljava/lang/Boolean;

    .line 2743
    iput-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->preResizeUndoData:Ljava/util/Map;

    .line 2748
    iput-boolean p3, p0, Lcom/metamoji/un/text/UnTextUnit;->inhibitAddSelfResizeUndo:Z

    .line 2753
    iput-boolean p3, p0, Lcom/metamoji/un/text/UnTextUnit;->duringChangeFontSizeAttr:Z

    .line 3750
    iput-boolean p3, p0, Lcom/metamoji/un/text/UnTextUnit;->duringSetGeometricProps:Z

    .line 3752
    iput-boolean p3, p0, Lcom/metamoji/un/text/UnTextUnit;->callCheckMinSizeAtSetGeometricProps:Z

    .line 3907
    iput-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->undoDatas:Ljava/util/List;

    .line 3908
    iput-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->undoModel:Lcom/metamoji/df/model/IModel;

    .line 3909
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/metamoji/un/text/UnTextUnit;->undoDatasForComposingText:Ljava/util/List;

    .line 3910
    iput-boolean p3, p0, Lcom/metamoji/un/text/UnTextUnit;->_duringInsertComposingText:Z

    .line 3912
    iput-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->_undoDatasForReconvert:Ljava/util/List;

    .line 3913
    iput-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->_undoModelForReconvert:Lcom/metamoji/df/model/IModel;

    .line 3918
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/metamoji/un/text/UnTextUnit;->undoDatasForChangeUnitSizeByRemakeLineTable:Ljava/util/List;

    .line 4021
    iput-boolean p3, p0, Lcom/metamoji/un/text/UnTextUnit;->_duringCancelReconvertTask:Z

    .line 7652
    iput-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->mazecAction:Lcom/metamoji/un/text/MazecAction;

    .line 7758
    iput-boolean p3, p0, Lcom/metamoji/un/text/UnTextUnit;->isStrokeReditMode:Z

    .line 10633
    iput-boolean p3, p0, Lcom/metamoji/un/text/UnTextUnit;->_delayShareSendAfterUndoOrRedo:Z

    .line 10760
    iput-boolean p3, p0, Lcom/metamoji/un/text/UnTextUnit;->_monitorCaretPos:Z

    .line 10939
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/metamoji/un/text/UnTextUnit;->_updateInputStyleBarLock:Ljava/lang/Object;

    .line 12287
    new-instance v1, Lcom/metamoji/un/text/UnTextUnit$51;

    invoke-direct {v1, p0}, Lcom/metamoji/un/text/UnTextUnit$51;-><init>(Lcom/metamoji/un/text/UnTextUnit;)V

    iput-object v1, p0, Lcom/metamoji/un/text/UnTextUnit;->_tagChangedEventHandler:Lcom/metamoji/cm/ICmEventHandler;

    .line 663
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->undoSelfBufferOn()V

    .line 664
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getAppFrame()Lcom/metamoji/nt/INtAppFrame;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/metamoji/nt/INtAppFrame;->addUndoOrRedoListener(Lcom/metamoji/nt/IUndoOrRedoEventHandler;)V

    .line 666
    iput-boolean p3, p0, Lcom/metamoji/un/text/UnTextUnit;->editing:Z

    .line 670
    iget-object p1, p1, Lcom/metamoji/df/controller/ControllerContext;->mediaType:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    iput-object p1, p0, Lcom/metamoji/un/text/UnTextUnit;->mediaType:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    .line 673
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object p1

    .line 674
    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteController;->getEditMode()Lcom/metamoji/nt/NtDocument$EditMode;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/un/text/UnTextUnit;->editMode:Lcom/metamoji/nt/NtDocument$EditMode;

    .line 677
    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteController;->getToolMode()Lcom/metamoji/nt/NtDocument$ToolMode;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/un/text/UnTextUnit;->toolMode:Lcom/metamoji/nt/NtDocument$ToolMode;

    .line 679
    sget-object p1, Lcom/metamoji/un/text/UnTextUnit$ReeditMode;->ReNone:Lcom/metamoji/un/text/UnTextUnit$ReeditMode;

    iput-object p1, p0, Lcom/metamoji/un/text/UnTextUnit;->_reeditMode:Lcom/metamoji/un/text/UnTextUnit$ReeditMode;

    .line 680
    iput-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->_fromPosOnSearchNextReeditRange:Lcom/metamoji/un/text/model/TextPosition;

    .line 681
    iput-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->_lastCandidateRangeForConvert:Lcom/metamoji/un/text/model/TextRange;

    .line 683
    move-object p1, p2

    check-cast p1, Lcom/metamoji/un/text/model/TextModel;

    .line 685
    iget-object v1, p0, Lcom/metamoji/un/text/UnTextUnit;->textSprite:Lcom/metamoji/un/text/sprite/TextSprite;

    invoke-virtual {v1, p1}, Lcom/metamoji/un/text/sprite/TextSprite;->setTextModel(Lcom/metamoji/un/text/model/TextModel;)V

    .line 686
    iput-object p0, p1, Lcom/metamoji/un/text/model/TextModel;->unitControllerDelegate:Lcom/metamoji/un/text/IUnTextUnitDelegate;

    .line 687
    invoke-virtual {p1, p0}, Lcom/metamoji/un/text/model/TextModel;->setEditTextUndoManager(Lcom/metamoji/un/text/model/undo/ITextUndoManager;)V

    .line 688
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextModel;->getStringWsArrayObject()Lcom/metamoji/un/text/model/StringWithStrokesArray;

    move-result-object v1

    iput-object p0, v1, Lcom/metamoji/un/text/model/StringWithStrokesArray;->swsArrayDelegate:Lcom/metamoji/un/text/model/IStringWithStrokesArrayDelegate;

    const/4 v1, 0x1

    .line 691
    iput-boolean v1, p0, Lcom/metamoji/un/text/UnTextUnit;->_alive:Z

    .line 693
    iput-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->_timerForSendToCollabo:Ljava/util/Timer;

    .line 694
    iput-boolean p3, p0, Lcom/metamoji/un/text/UnTextUnit;->_collaboModified:Z

    .line 695
    iput-boolean p3, p0, Lcom/metamoji/un/text/UnTextUnit;->_registerCollabo:Z

    .line 833
    invoke-direct {p0, p2}, Lcom/metamoji/un/text/UnTextUnit;->update(Lcom/metamoji/df/model/IModel;)V

    .line 836
    new-instance p2, Lcom/metamoji/un/util/UnRubberBandSupport;

    new-instance p3, Lcom/metamoji/un/text/UnTextUnit$1;

    invoke-direct {p3, p0}, Lcom/metamoji/un/text/UnTextUnit$1;-><init>(Lcom/metamoji/un/text/UnTextUnit;)V

    invoke-direct {p2, p0, p3}, Lcom/metamoji/un/util/UnRubberBandSupport;-><init>(Lcom/metamoji/nt/NtUnitController;Lcom/metamoji/un/util/UnRubberBandSupport$IRubberBandSupportCallback;)V

    iput-object p2, p0, Lcom/metamoji/un/text/UnTextUnit;->_rubberBand:Lcom/metamoji/un/util/UnRubberBandSupport;

    .line 873
    new-instance p2, Lcom/metamoji/un/text/UnTextUnit$InsertionPointCursorController;

    invoke-direct {p2, p0}, Lcom/metamoji/un/text/UnTextUnit$InsertionPointCursorController;-><init>(Lcom/metamoji/un/text/UnTextUnit;)V

    iput-object p2, p0, Lcom/metamoji/un/text/UnTextUnit;->insPtCurCtrl:Lcom/metamoji/un/text/UnTextUnit$InsertionPointCursorController;

    .line 874
    new-instance p2, Lcom/metamoji/un/text/UnTextUnit$SelectionModifierCursorController;

    invoke-direct {p2, p0}, Lcom/metamoji/un/text/UnTextUnit$SelectionModifierCursorController;-><init>(Lcom/metamoji/un/text/UnTextUnit;)V

    iput-object p2, p0, Lcom/metamoji/un/text/UnTextUnit;->selModCurCtrl:Lcom/metamoji/un/text/UnTextUnit$SelectionModifierCursorController;

    .line 878
    new-instance p2, Lcom/metamoji/ctold/CtIdGenerator;

    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object p3

    const-string v2, "cTagIdGenerator"

    invoke-direct {p2, p3, v2}, Lcom/metamoji/ctold/CtIdGenerator;-><init>(Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/metamoji/un/text/UnTextUnit;->_tagIdGenerator:Lcom/metamoji/ctold/CtIdGenerator;

    .line 881
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/un/text/model/TextModel;->clearParagraphTable()V

    .line 891
    invoke-virtual {p1, v0, v1}, Lcom/metamoji/un/text/model/TextModel;->needsRemakeLineTableWithUnitSizeSelfAdjustmentFromPosition(Lcom/metamoji/un/text/model/TextPosition;Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/metamoji/un/text/UnTextUnit;Ljava/util/List;)V
    .locals 0

    .line 209
    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/UnTextUnit;->notifyObjectsContentChanged(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$100(Lcom/metamoji/un/text/UnTextUnit;Ljava/util/List;)V
    .locals 0

    .line 209
    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/UnTextUnit;->notifyObjectsRemoving(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(Lcom/metamoji/un/text/UnTextUnit;)Lcom/metamoji/df/sprite/Sprite;
    .locals 0

    .line 209
    iget-object p0, p0, Lcom/metamoji/un/text/UnTextUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    return-object p0
.end method

.method static synthetic access$300(Lcom/metamoji/un/text/UnTextUnit;)Lcom/metamoji/df/sprite/Sprite;
    .locals 0

    .line 209
    iget-object p0, p0, Lcom/metamoji/un/text/UnTextUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    return-object p0
.end method

.method static synthetic access$400(Lcom/metamoji/un/text/UnTextUnit;)Lcom/metamoji/df/sprite/Sprite;
    .locals 0

    .line 209
    iget-object p0, p0, Lcom/metamoji/un/text/UnTextUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    return-object p0
.end method

.method static synthetic access$500(Lcom/metamoji/un/text/UnTextUnit;)Lcom/metamoji/df/sprite/Sprite;
    .locals 0

    .line 209
    iget-object p0, p0, Lcom/metamoji/un/text/UnTextUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    return-object p0
.end method

.method public static addTextUnitForLabel(Lcom/metamoji/cm/CmContext;I)V
    .locals 4

    .line 12386
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 12390
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v1

    if-nez v1, :cond_1

    :goto_0
    return-void

    .line 12394
    :cond_1
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v2

    new-instance v3, Lcom/metamoji/un/text/UnTextUnit$52;

    invoke-direct {v3, v1, p1, p0, v0}, Lcom/metamoji/un/text/UnTextUnit$52;-><init>(Lcom/metamoji/nt/NtNoteController;ILcom/metamoji/cm/CmContext;Lcom/metamoji/nt/NtEditorWindowController;)V

    invoke-virtual {v2, v3}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private addUndoDataInSelfBufferToAppUndo()V
    .locals 3

    .line 10593
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->joinUndoModels()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 10595
    invoke-virtual {p0, v1}, Lcom/metamoji/un/text/UnTextUnit;->beginEdit(Ljava/lang/Object;)Lcom/metamoji/df/controller/EditContext;

    move-result-object v1

    const/4 v2, 0x1

    .line 10596
    invoke-virtual {v1, v0, v2}, Lcom/metamoji/df/controller/EditContext;->addUndo(Lcom/metamoji/df/model/IModel;Z)V

    .line 10597
    invoke-virtual {p0, v1}, Lcom/metamoji/un/text/UnTextUnit;->endEdit(Lcom/metamoji/df/controller/EditContext;)V

    :cond_0
    return-void
.end method

.method private addUndoDataToSelfBuffer(Lcom/metamoji/df/model/IModel;)V
    .locals 1

    .line 10513
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->temporaryStackedUndoDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static adjustFontSize(DZ)F
    .locals 2

    if-eqz p2, :cond_0

    .line 3328
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    double-to-int p0, p0

    int-to-double p0, p0

    goto :goto_0

    .line 3330
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-double p0, p0

    :goto_0
    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    cmpg-double p2, p0, v0

    if-gez p2, :cond_1

    move-wide p0, v0

    :cond_1
    const-wide/high16 v0, 0x4058000000000000L    # 96.0

    cmpl-double p2, p0, v0

    if-lez p2, :cond_2

    move-wide p0, v0

    :cond_2
    double-to-float p0, p0

    return p0
.end method

.method public static adjustFontSize(F)F
    .locals 2

    float-to-double v0, p0

    const/4 p0, 0x0

    .line 3324
    invoke-static {v0, v1, p0}, Lcom/metamoji/un/text/UnTextUnit;->adjustFontSize(DZ)F

    move-result p0

    return p0
.end method

.method private appearContextMenu()V
    .locals 17

    move-object/from16 v0, p0

    .line 4268
    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->isStrokeReeditMode()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 4271
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 4272
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4275
    sget-object v3, Lcom/metamoji/un/text/UnTextUnit$CommandId;->Select:Lcom/metamoji/un/text/UnTextUnit$CommandId;

    invoke-virtual {v0, v3}, Lcom/metamoji/un/text/UnTextUnit;->canPerformCommand(Lcom/metamoji/un/text/UnTextUnit$CommandId;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 4276
    new-instance v3, Lcom/metamoji/ui/UiMenuItem;

    sget-object v5, Lcom/metamoji/un/text/UnTextUnit$CommandId;->Select:Lcom/metamoji/un/text/UnTextUnit$CommandId;

    sget v6, Lcom/metamoji/noteanytime/R$string;->ContextMenu_Select:I

    invoke-direct {v3, v5, v4, v6}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4278
    :cond_1
    sget-object v3, Lcom/metamoji/un/text/UnTextUnit$CommandId;->SelectAll:Lcom/metamoji/un/text/UnTextUnit$CommandId;

    invoke-virtual {v0, v3}, Lcom/metamoji/un/text/UnTextUnit;->canPerformCommand(Lcom/metamoji/un/text/UnTextUnit$CommandId;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4279
    new-instance v3, Lcom/metamoji/ui/UiMenuItem;

    sget-object v5, Lcom/metamoji/un/text/UnTextUnit$CommandId;->SelectAll:Lcom/metamoji/un/text/UnTextUnit$CommandId;

    sget v6, Lcom/metamoji/noteanytime/R$string;->ContextMenu_SelectAll:I

    invoke-direct {v3, v5, v4, v6}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4283
    :cond_2
    sget-object v3, Lcom/metamoji/un/text/UnTextUnit$CommandId;->Cut:Lcom/metamoji/un/text/UnTextUnit$CommandId;

    invoke-virtual {v0, v3}, Lcom/metamoji/un/text/UnTextUnit;->canPerformCommand(Lcom/metamoji/un/text/UnTextUnit$CommandId;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4284
    new-instance v3, Lcom/metamoji/ui/UiMenuItem;

    sget-object v5, Lcom/metamoji/un/text/UnTextUnit$CommandId;->Cut:Lcom/metamoji/un/text/UnTextUnit$CommandId;

    sget v6, Lcom/metamoji/noteanytime/R$string;->ContextMenu_Cut:I

    invoke-direct {v3, v5, v4, v6}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4286
    :cond_3
    sget-object v3, Lcom/metamoji/un/text/UnTextUnit$CommandId;->Copy:Lcom/metamoji/un/text/UnTextUnit$CommandId;

    invoke-virtual {v0, v3}, Lcom/metamoji/un/text/UnTextUnit;->canPerformCommand(Lcom/metamoji/un/text/UnTextUnit$CommandId;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4287
    new-instance v3, Lcom/metamoji/ui/UiMenuItem;

    sget-object v5, Lcom/metamoji/un/text/UnTextUnit$CommandId;->Copy:Lcom/metamoji/un/text/UnTextUnit$CommandId;

    sget v6, Lcom/metamoji/noteanytime/R$string;->ContextMenu_Copy:I

    invoke-direct {v3, v5, v4, v6}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4289
    :cond_4
    sget-object v3, Lcom/metamoji/un/text/UnTextUnit$CommandId;->Paste:Lcom/metamoji/un/text/UnTextUnit$CommandId;

    invoke-virtual {v0, v3}, Lcom/metamoji/un/text/UnTextUnit;->canPerformCommand(Lcom/metamoji/un/text/UnTextUnit$CommandId;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 4290
    new-instance v3, Lcom/metamoji/ui/UiMenuItem;

    sget-object v5, Lcom/metamoji/un/text/UnTextUnit$CommandId;->Paste:Lcom/metamoji/un/text/UnTextUnit$CommandId;

    sget v6, Lcom/metamoji/noteanytime/R$string;->ContextMenu_Paste:I

    invoke-direct {v3, v5, v4, v6}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4292
    :cond_5
    sget-object v3, Lcom/metamoji/un/text/UnTextUnit$CommandId;->Delete:Lcom/metamoji/un/text/UnTextUnit$CommandId;

    invoke-virtual {v0, v3}, Lcom/metamoji/un/text/UnTextUnit;->canPerformCommand(Lcom/metamoji/un/text/UnTextUnit$CommandId;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 4293
    new-instance v3, Lcom/metamoji/ui/UiMenuItem;

    sget-object v5, Lcom/metamoji/un/text/UnTextUnit$CommandId;->Delete:Lcom/metamoji/un/text/UnTextUnit$CommandId;

    sget v6, Lcom/metamoji/noteanytime/R$string;->ContextMenu_Remove:I

    invoke-direct {v3, v5, v4, v6}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4297
    :cond_6
    sget-object v3, Lcom/metamoji/un/text/UnTextUnit$CommandId;->CharDeco:Lcom/metamoji/un/text/UnTextUnit$CommandId;

    invoke-virtual {v0, v3}, Lcom/metamoji/un/text/UnTextUnit;->canPerformCommand(Lcom/metamoji/un/text/UnTextUnit$CommandId;)Z

    move-result v3

    const/4 v6, 0x0

    if-eqz v3, :cond_25

    .line 4298
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4301
    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/metamoji/un/text/model/TextModel;->textKindInRange(Lcom/metamoji/un/text/model/TextRange;)Ljava/util/EnumSet;

    move-result-object v7

    .line 4303
    const-class v8, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-static {v8}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v8

    .line 4304
    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v9

    invoke-virtual {v9, v4, v8}, Lcom/metamoji/un/text/model/TextModel;->getAttributesInRange(Lcom/metamoji/un/text/model/TextRange;Ljava/util/EnumSet;)Lcom/metamoji/un/text/model/attr/Attributes;

    move-result-object v9

    .line 4305
    const-class v10, Lcom/metamoji/un/text/model/attr/StringAttributes;

    invoke-static {v9, v10}, Lcom/metamoji/cm/CmUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/metamoji/un/text/model/attr/StringAttributes;

    .line 4308
    sget-object v11, Lcom/metamoji/un/text/model/TextKind;->Stroke:Lcom/metamoji/un/text/model/TextKind;

    invoke-virtual {v7, v11}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 4309
    new-instance v11, Lcom/metamoji/ui/UiMenuItem;

    sget-object v12, Lcom/metamoji/un/text/UnTextUnit$CommandId;->StrokePen:Lcom/metamoji/un/text/UnTextUnit$CommandId;

    sget v13, Lcom/metamoji/noteanytime/R$string;->ContextMenu_TextStroke_Pen:I

    invoke-direct {v11, v12, v4, v13}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4313
    :cond_7
    sget-object v11, Lcom/metamoji/un/text/model/TextKind;->String:Lcom/metamoji/un/text/model/TextKind;

    invoke-virtual {v7, v11}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    const-string v12, "%s(%s)"

    if-eqz v11, :cond_d

    .line 4317
    sget-object v11, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->FontName:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {v8, v11}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    if-eqz v10, :cond_9

    .line 4318
    invoke-virtual {v10}, Lcom/metamoji/un/text/model/attr/StringAttributes;->getFontName()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_8

    .line 4320
    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v11

    invoke-virtual {v11}, Lcom/metamoji/un/text/model/TextModel;->getDefaultStringAttributes()Lcom/metamoji/un/text/model/attr/StringAttributes;

    move-result-object v11

    invoke-virtual {v11}, Lcom/metamoji/un/text/model/attr/StringAttributes;->getFontName()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x1

    goto :goto_1

    .line 4322
    :cond_8
    invoke-virtual {v10}, Lcom/metamoji/un/text/model/attr/StringAttributes;->getFontName()Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    :cond_9
    move-object v11, v4

    :goto_0
    move v13, v6

    :goto_1
    if-eqz v11, :cond_a

    .line 4327
    invoke-static {v11}, Lcom/metamoji/un/text/FontUtils;->getRenderingFontInfo(Ljava/lang/String;)Lcom/metamoji/un/text/FontInfo;

    move-result-object v11

    .line 4328
    iget-object v14, v11, Lcom/metamoji/un/text/FontInfo;->familyName:Ljava/lang/String;

    move-object/from16 v16, v14

    move-object v14, v11

    move-object/from16 v11, v16

    goto :goto_2

    :cond_a
    move-object v14, v4

    .line 4330
    :goto_2
    new-instance v15, Lcom/metamoji/ui/UiMenuItem;

    sget-object v5, Lcom/metamoji/un/text/UnTextUnit$CommandId;->Font:Lcom/metamoji/un/text/UnTextUnit$CommandId;

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    sget v4, Lcom/metamoji/noteanytime/R$string;->ContextMenu_TextFont:I

    invoke-direct {v15, v5, v11, v4}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    if-eqz v14, :cond_c

    .line 4332
    invoke-static {v14, v6}, Lcom/metamoji/un/text/FontUtils;->createTypeface(Lcom/metamoji/un/text/FontInfo;I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v15, v4}, Lcom/metamoji/ui/UiMenuItem;->set_subTitleTypeface(Landroid/graphics/Typeface;)V

    .line 4333
    iget-object v4, v14, Lcom/metamoji/un/text/FontInfo;->dispName:Ljava/lang/String;

    if-eqz v13, :cond_b

    .line 4334
    sget v5, Lcom/metamoji/noteanytime/R$string;->ContextMenu_NormalPrefix:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v12, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 4336
    :cond_b
    invoke-virtual {v15, v4}, Lcom/metamoji/ui/UiMenuItem;->set_subTitle(Ljava/lang/String;)V

    .line 4338
    :cond_c
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4346
    :cond_d
    sget-object v4, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->FontSize:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {v8, v4}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 4347
    invoke-virtual {v9}, Lcom/metamoji/un/text/model/attr/Attributes;->isUseFontSize()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 4348
    invoke-virtual {v9}, Lcom/metamoji/un/text/model/attr/Attributes;->getFontSize()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    move v5, v6

    goto :goto_3

    .line 4352
    :cond_e
    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/un/text/model/TextModel;->getDefaultStringAttributes()Lcom/metamoji/un/text/model/attr/StringAttributes;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/un/text/model/attr/StringAttributes;->getFontSize()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x1

    goto :goto_3

    :cond_f
    move v5, v6

    const/4 v4, 0x0

    .line 4355
    :goto_3
    new-instance v11, Lcom/metamoji/ui/UiMenuItem;

    sget-object v13, Lcom/metamoji/un/text/UnTextUnit$CommandId;->TextSize:Lcom/metamoji/un/text/UnTextUnit$CommandId;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    filled-new-array {v4, v14}, [Ljava/lang/Object;

    move-result-object v14

    sget v15, Lcom/metamoji/noteanytime/R$string;->ContextMenu_TextSize:I

    invoke-direct {v11, v13, v14, v15}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    if-eqz v4, :cond_11

    .line 4357
    const-string v13, "%.0f"

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v13, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    if-eqz v5, :cond_10

    .line 4358
    sget v5, Lcom/metamoji/noteanytime/R$string;->ContextMenu_NormalPrefix:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1, v4}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v12, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 4360
    :cond_10
    invoke-virtual {v11, v4}, Lcom/metamoji/ui/UiMenuItem;->set_subTitle(Ljava/lang/String;)V

    .line 4362
    :cond_11
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4366
    sget-object v1, Lcom/metamoji/un/text/model/TextKind;->String:Lcom/metamoji/un/text/model/TextKind;

    invoke-virtual {v7, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 4370
    sget-object v1, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->Color:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {v8, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 4371
    invoke-virtual {v9}, Lcom/metamoji/un/text/model/attr/Attributes;->isUseColor()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 4372
    invoke-virtual {v9}, Lcom/metamoji/un/text/model/attr/Attributes;->getColor()Lcom/metamoji/un/text/model/ColorComponent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/ColorComponent;->getUIColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move v4, v6

    goto :goto_4

    .line 4375
    :cond_12
    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextModel;->getDefaultStringAttributes()Lcom/metamoji/un/text/model/attr/StringAttributes;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/attr/StringAttributes;->getColor()Lcom/metamoji/un/text/model/ColorComponent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/ColorComponent;->getUIColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x1

    goto :goto_4

    :cond_13
    move v4, v6

    const/4 v1, 0x0

    .line 4378
    :goto_4
    new-instance v5, Lcom/metamoji/ui/UiMenuItem;

    sget-object v11, Lcom/metamoji/un/text/UnTextUnit$CommandId;->TextColor:Lcom/metamoji/un/text/UnTextUnit$CommandId;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    filled-new-array {v1, v12}, [Ljava/lang/Object;

    move-result-object v12

    sget v13, Lcom/metamoji/noteanytime/R$string;->ContextMenu_TextColor:I

    invoke-direct {v5, v11, v12, v13}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    if-eqz v1, :cond_14

    .line 4380
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v5, v1, v4}, Lcom/metamoji/ui/UiMenuItem;->set_color(IZ)V

    .line 4382
    :cond_14
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4386
    :cond_15
    sget-object v1, Lcom/metamoji/un/text/UnTextUnit$CommandId;->TextParticalBackgroundColor:Lcom/metamoji/un/text/UnTextUnit$CommandId;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/UnTextUnit;->canPerformCommand(Lcom/metamoji/un/text/UnTextUnit$CommandId;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 4390
    sget-object v1, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->BackgroundColor:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {v8, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 4391
    invoke-virtual {v9}, Lcom/metamoji/un/text/model/attr/Attributes;->isUseBackgroundColor()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 4392
    invoke-virtual {v9}, Lcom/metamoji/un/text/model/attr/Attributes;->getBackgroundColor()Lcom/metamoji/un/text/model/ColorComponent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/ColorComponent;->getUIColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move v4, v6

    goto :goto_5

    :cond_16
    const/4 v1, 0x0

    const/4 v4, 0x1

    goto :goto_5

    :cond_17
    move v4, v6

    const/4 v1, 0x0

    .line 4397
    :goto_5
    new-instance v5, Lcom/metamoji/ui/UiMenuItem;

    sget-object v11, Lcom/metamoji/un/text/UnTextUnit$CommandId;->TextParticalBackgroundColor:Lcom/metamoji/un/text/UnTextUnit$CommandId;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    filled-new-array {v1, v12}, [Ljava/lang/Object;

    move-result-object v12

    sget v13, Lcom/metamoji/noteanytime/R$string;->CHARDECORATION_BACKGROUNDCOLOR:I

    invoke-direct {v5, v11, v12, v13}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    if-nez v1, :cond_18

    if-eqz v4, :cond_19

    .line 4399
    :cond_18
    invoke-virtual {v5, v1}, Lcom/metamoji/ui/UiMenuItem;->set_color(Ljava/lang/Integer;)V

    .line 4401
    :cond_19
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4407
    :cond_1a
    sget-object v1, Lcom/metamoji/un/text/model/TextKind;->String:Lcom/metamoji/un/text/model/TextKind;

    invoke-virtual {v7, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 4409
    sget-object v1, Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;->MMJUI_MENU_CHECKSTATE_NONE:Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;

    .line 4411
    sget-object v4, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->FontWeight:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {v8, v4}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    const/16 v5, 0x2bc

    if-eqz v4, :cond_1c

    .line 4412
    invoke-virtual {v9}, Lcom/metamoji/un/text/model/attr/Attributes;->isUseFontWeight()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual {v9}, Lcom/metamoji/un/text/model/attr/Attributes;->getFontWeight()I

    move-result v1

    const/16 v4, 0x190

    if-le v1, v4, :cond_1b

    .line 4413
    sget-object v1, Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;->MMJUI_MENU_CHECKSTATE_ON:Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;

    move v5, v4

    goto :goto_6

    .line 4417
    :cond_1b
    sget-object v1, Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;->MMJUI_MENU_CHECKSTATE_OFF:Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;

    .line 4421
    :cond_1c
    :goto_6
    new-instance v4, Lcom/metamoji/ui/UiMenuItem;

    sget-object v11, Lcom/metamoji/un/text/UnTextUnit$CommandId;->TextBold:Lcom/metamoji/un/text/UnTextUnit$CommandId;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget v12, Lcom/metamoji/noteanytime/R$string;->ContextMenu_TextBold:I

    invoke-direct {v4, v11, v5, v12}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 4422
    invoke-virtual {v4, v1}, Lcom/metamoji/ui/UiMenuItem;->set_checkState(Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;)V

    .line 4423
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4428
    :cond_1d
    sget-object v1, Lcom/metamoji/un/text/model/TextKind;->String:Lcom/metamoji/un/text/model/TextKind;

    invoke-virtual {v7, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 4430
    sget-object v1, Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;->MMJUI_MENU_CHECKSTATE_NONE:Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;

    .line 4432
    sget-object v4, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->Italic:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {v8, v4}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    if-eqz v10, :cond_1e

    .line 4433
    invoke-virtual {v10}, Lcom/metamoji/un/text/model/attr/StringAttributes;->isItalic()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 4434
    sget-object v1, Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;->MMJUI_MENU_CHECKSTATE_ON:Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;

    move v4, v6

    goto :goto_7

    .line 4438
    :cond_1e
    sget-object v1, Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;->MMJUI_MENU_CHECKSTATE_OFF:Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;

    :cond_1f
    const/4 v4, 0x1

    .line 4442
    :goto_7
    new-instance v5, Lcom/metamoji/ui/UiMenuItem;

    sget-object v7, Lcom/metamoji/un/text/UnTextUnit$CommandId;->TextItalic:Lcom/metamoji/un/text/UnTextUnit$CommandId;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sget v10, Lcom/metamoji/noteanytime/R$string;->CONTEXTMENU_TEXTITALIC:I

    invoke-direct {v5, v7, v4, v10}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 4443
    invoke-virtual {v5, v1}, Lcom/metamoji/ui/UiMenuItem;->set_checkState(Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;)V

    .line 4444
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4450
    :cond_20
    sget-object v1, Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;->MMJUI_MENU_CHECKSTATE_NONE:Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;

    .line 4452
    sget-object v4, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->Underline:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {v8, v4}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 4453
    invoke-virtual {v9}, Lcom/metamoji/un/text/model/attr/Attributes;->isUnderline()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 4454
    sget-object v1, Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;->MMJUI_MENU_CHECKSTATE_ON:Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;

    move v4, v6

    goto :goto_8

    .line 4458
    :cond_21
    sget-object v1, Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;->MMJUI_MENU_CHECKSTATE_OFF:Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;

    :cond_22
    const/4 v4, 0x1

    .line 4462
    :goto_8
    new-instance v5, Lcom/metamoji/ui/UiMenuItem;

    sget-object v7, Lcom/metamoji/un/text/UnTextUnit$CommandId;->TextUnderLine:Lcom/metamoji/un/text/UnTextUnit$CommandId;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sget v10, Lcom/metamoji/noteanytime/R$string;->ContextMenu_TextUnderline:I

    invoke-direct {v5, v7, v4, v10}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 4463
    invoke-virtual {v5, v1}, Lcom/metamoji/ui/UiMenuItem;->set_checkState(Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;)V

    .line 4464
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4470
    sget-object v1, Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;->MMJUI_MENU_CHECKSTATE_NONE:Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;

    .line 4472
    sget-object v4, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->Strikeout:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {v8, v4}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 4473
    invoke-virtual {v9}, Lcom/metamoji/un/text/model/attr/Attributes;->isStrikeout()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 4474
    sget-object v1, Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;->MMJUI_MENU_CHECKSTATE_ON:Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;

    move v4, v6

    goto :goto_9

    .line 4478
    :cond_23
    sget-object v1, Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;->MMJUI_MENU_CHECKSTATE_OFF:Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;

    :cond_24
    const/4 v4, 0x1

    .line 4482
    :goto_9
    new-instance v5, Lcom/metamoji/ui/UiMenuItem;

    sget-object v7, Lcom/metamoji/un/text/UnTextUnit$CommandId;->TextStrikeTrough:Lcom/metamoji/un/text/UnTextUnit$CommandId;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sget v8, Lcom/metamoji/noteanytime/R$string;->ContextMenu_TextStriketrough:I

    invoke-direct {v5, v7, v4, v8}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 4483
    invoke-virtual {v5, v1}, Lcom/metamoji/ui/UiMenuItem;->set_checkState(Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;)V

    .line 4484
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4487
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_25

    .line 4488
    new-instance v1, Lcom/metamoji/ui/UiMenuItem;

    sget v4, Lcom/metamoji/noteanytime/R$string;->ContextMenu_CharDeco:I

    invoke-direct {v1, v3, v4, v6, v6}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/util/ArrayList;III)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4493
    :cond_25
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4494
    sget-object v3, Lcom/metamoji/un/text/UnTextUnit$CommandId;->AlignLeft:Lcom/metamoji/un/text/UnTextUnit$CommandId;

    invoke-virtual {v0, v3}, Lcom/metamoji/un/text/UnTextUnit;->canPerformCommand(Lcom/metamoji/un/text/UnTextUnit$CommandId;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 4495
    new-instance v3, Lcom/metamoji/ui/UiMenuItem;

    sget-object v4, Lcom/metamoji/un/text/UnTextUnit$CommandId;->AlignLeft:Lcom/metamoji/un/text/UnTextUnit$CommandId;

    sget v5, Lcom/metamoji/noteanytime/R$string;->ContextMenu_TextAlign_Left:I

    const/4 v7, 0x0

    invoke-direct {v3, v4, v7, v5}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_26
    const/4 v7, 0x0

    .line 4497
    :goto_a
    sget-object v3, Lcom/metamoji/un/text/UnTextUnit$CommandId;->AlignCenter:Lcom/metamoji/un/text/UnTextUnit$CommandId;

    invoke-virtual {v0, v3}, Lcom/metamoji/un/text/UnTextUnit;->canPerformCommand(Lcom/metamoji/un/text/UnTextUnit$CommandId;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 4498
    new-instance v3, Lcom/metamoji/ui/UiMenuItem;

    sget-object v4, Lcom/metamoji/un/text/UnTextUnit$CommandId;->AlignCenter:Lcom/metamoji/un/text/UnTextUnit$CommandId;

    sget v5, Lcom/metamoji/noteanytime/R$string;->ContextMenu_TextAlign_Center:I

    invoke-direct {v3, v4, v7, v5}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4500
    :cond_27
    sget-object v3, Lcom/metamoji/un/text/UnTextUnit$CommandId;->AlignRight:Lcom/metamoji/un/text/UnTextUnit$CommandId;

    invoke-virtual {v0, v3}, Lcom/metamoji/un/text/UnTextUnit;->canPerformCommand(Lcom/metamoji/un/text/UnTextUnit$CommandId;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 4501
    new-instance v3, Lcom/metamoji/ui/UiMenuItem;

    sget-object v4, Lcom/metamoji/un/text/UnTextUnit$CommandId;->AlignRight:Lcom/metamoji/un/text/UnTextUnit$CommandId;

    sget v5, Lcom/metamoji/noteanytime/R$string;->ContextMenu_TextAlign_Right:I

    invoke-direct {v3, v4, v7, v5}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4503
    :cond_28
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_29

    .line 4504
    new-instance v3, Lcom/metamoji/ui/UiMenuItem;

    sget v4, Lcom/metamoji/noteanytime/R$string;->ContextMenu_TextAlign:I

    invoke-direct {v3, v1, v4, v6, v6}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/util/ArrayList;III)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4508
    :cond_29
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4509
    sget-object v3, Lcom/metamoji/un/text/UnTextUnit$CommandId;->BulletedList:Lcom/metamoji/un/text/UnTextUnit$CommandId;

    invoke-virtual {v0, v3}, Lcom/metamoji/un/text/UnTextUnit;->canPerformCommand(Lcom/metamoji/un/text/UnTextUnit$CommandId;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 4510
    new-instance v3, Lcom/metamoji/ui/UiMenuItem;

    sget-object v4, Lcom/metamoji/un/text/UnTextUnit$CommandId;->BulletedList:Lcom/metamoji/un/text/UnTextUnit$CommandId;

    sget v5, Lcom/metamoji/noteanytime/R$string;->CONTEXTMENU_TEXT_BULLETEDLIST:I

    const/4 v7, 0x0

    invoke-direct {v3, v4, v7, v5}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_2a
    const/4 v7, 0x0

    .line 4512
    :goto_b
    sget-object v3, Lcom/metamoji/un/text/UnTextUnit$CommandId;->BulletedListNumberd:Lcom/metamoji/un/text/UnTextUnit$CommandId;

    invoke-virtual {v0, v3}, Lcom/metamoji/un/text/UnTextUnit;->canPerformCommand(Lcom/metamoji/un/text/UnTextUnit$CommandId;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 4513
    new-instance v3, Lcom/metamoji/ui/UiMenuItem;

    sget-object v4, Lcom/metamoji/un/text/UnTextUnit$CommandId;->BulletedListNumberd:Lcom/metamoji/un/text/UnTextUnit$CommandId;

    sget v5, Lcom/metamoji/noteanytime/R$string;->CONTEXTMENU_TEXT_NUMBEREDLIST:I

    invoke-direct {v3, v4, v7, v5}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4515
    :cond_2b
    sget-object v3, Lcom/metamoji/un/text/UnTextUnit$CommandId;->BulletedListLevelDemote:Lcom/metamoji/un/text/UnTextUnit$CommandId;

    invoke-virtual {v0, v3}, Lcom/metamoji/un/text/UnTextUnit;->canPerformCommand(Lcom/metamoji/un/text/UnTextUnit$CommandId;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 4516
    new-instance v3, Lcom/metamoji/ui/UiMenuItem;

    sget-object v4, Lcom/metamoji/un/text/UnTextUnit$CommandId;->BulletedListLevelDemote:Lcom/metamoji/un/text/UnTextUnit$CommandId;

    sget v5, Lcom/metamoji/noteanytime/R$string;->CONTEXTMENU_TEXT_DEMOTE_LISTLEVEL:I

    invoke-direct {v3, v4, v7, v5}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4518
    :cond_2c
    sget-object v3, Lcom/metamoji/un/text/UnTextUnit$CommandId;->BulletedListLevelPromote:Lcom/metamoji/un/text/UnTextUnit$CommandId;

    invoke-virtual {v0, v3}, Lcom/metamoji/un/text/UnTextUnit;->canPerformCommand(Lcom/metamoji/un/text/UnTextUnit$CommandId;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 4519
    new-instance v3, Lcom/metamoji/ui/UiMenuItem;

    sget-object v4, Lcom/metamoji/un/text/UnTextUnit$CommandId;->BulletedListLevelPromote:Lcom/metamoji/un/text/UnTextUnit$CommandId;

    sget v5, Lcom/metamoji/noteanytime/R$string;->CONTEXTMENU_TEXT_PROMOTE_LISTLEVEL:I

    invoke-direct {v3, v4, v7, v5}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4521
    :cond_2d
    sget-object v3, Lcom/metamoji/un/text/UnTextUnit$CommandId;->BulletedListRemove:Lcom/metamoji/un/text/UnTextUnit$CommandId;

    invoke-virtual {v0, v3}, Lcom/metamoji/un/text/UnTextUnit;->canPerformCommand(Lcom/metamoji/un/text/UnTextUnit$CommandId;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 4522
    new-instance v3, Lcom/metamoji/ui/UiMenuItem;

    sget-object v4, Lcom/metamoji/un/text/UnTextUnit$CommandId;->BulletedListRemove:Lcom/metamoji/un/text/UnTextUnit$CommandId;

    sget v5, Lcom/metamoji/noteanytime/R$string;->CONTEXTMENU_TEXT_REMOVE_LISTFORMAT:I

    invoke-direct {v3, v4, v7, v5}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4524
    :cond_2e
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2f

    .line 4525
    new-instance v3, Lcom/metamoji/ui/UiMenuItem;

    sget v4, Lcom/metamoji/noteanytime/R$string;->CONTEXTMENU_TEXT_BULLETEDLIST_COMMAND:I

    invoke-direct {v3, v1, v4, v6, v6}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/util/ArrayList;III)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4530
    :cond_2f
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4531
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4532
    invoke-virtual {v0, v3}, Lcom/metamoji/un/text/UnTextUnit;->collectSelectedAuthorInfos(Ljava/util/List;)V

    .line 4533
    invoke-virtual {v0, v3}, Lcom/metamoji/un/text/UnTextUnit;->canPerformPlayFromAuthorInfo(Ljava/util/List;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_30

    .line 4534
    new-instance v4, Lcom/metamoji/ui/UiMenuItem;

    sget-object v7, Lcom/metamoji/un/text/UnTextUnit$CommandId;->VoicePlayFromAuthorInfo:Lcom/metamoji/un/text/UnTextUnit$CommandId;

    sget v8, Lcom/metamoji/noteanytime/R$string;->Voice_PlayFromCreateTime:I

    invoke-direct {v4, v7, v3, v8}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4536
    :cond_30
    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->canPerformPlayFromVoiceTag()Z

    move-result v3

    if-ne v3, v5, :cond_31

    .line 4537
    new-instance v3, Lcom/metamoji/ui/UiMenuItem;

    sget-object v4, Lcom/metamoji/un/text/UnTextUnit$CommandId;->VoicePlayFromVoiceTag:Lcom/metamoji/un/text/UnTextUnit$CommandId;

    sget v7, Lcom/metamoji/noteanytime/R$string;->Voice_PlayTag:I

    const/4 v8, 0x0

    invoke-direct {v3, v4, v8, v7}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_31
    const/4 v8, 0x0

    .line 4543
    :goto_c
    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->canPerformDetachVoiceTagSelectedObjects()Z

    move-result v3

    if-ne v3, v5, :cond_32

    .line 4544
    new-instance v3, Lcom/metamoji/ui/UiMenuItem;

    sget-object v4, Lcom/metamoji/un/text/UnTextUnit$CommandId;->VoiceDetachVoiceTag:Lcom/metamoji/un/text/UnTextUnit$CommandId;

    sget v5, Lcom/metamoji/noteanytime/R$string;->Voice_DetachLink:I

    invoke-direct {v3, v4, v8, v5}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4547
    :cond_32
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_33

    .line 4548
    new-instance v3, Lcom/metamoji/ui/UiMenuItem;

    sget v4, Lcom/metamoji/noteanytime/R$string;->Voice_Menu:I

    invoke-direct {v3, v1, v4, v6, v6}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/util/ArrayList;III)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4553
    :cond_33
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4556
    sget-object v3, Lcom/metamoji/un/text/UnTextUnit$CommandId;->Reedit:Lcom/metamoji/un/text/UnTextUnit$CommandId;

    invoke-virtual {v0, v3}, Lcom/metamoji/un/text/UnTextUnit;->canPerformCommand(Lcom/metamoji/un/text/UnTextUnit$CommandId;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 4557
    new-instance v3, Lcom/metamoji/ui/UiMenuItem;

    sget-object v4, Lcom/metamoji/un/text/UnTextUnit$CommandId;->Reedit:Lcom/metamoji/un/text/UnTextUnit$CommandId;

    sget v5, Lcom/metamoji/noteanytime/R$string;->ContextMenu_ReEdit:I

    const/4 v7, 0x0

    invoke-direct {v3, v4, v7, v5}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_34
    const/4 v7, 0x0

    .line 4560
    :goto_d
    sget-object v3, Lcom/metamoji/un/text/UnTextUnit$CommandId;->Reconvert:Lcom/metamoji/un/text/UnTextUnit$CommandId;

    invoke-virtual {v0, v3}, Lcom/metamoji/un/text/UnTextUnit;->canPerformCommand(Lcom/metamoji/un/text/UnTextUnit$CommandId;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 4561
    new-instance v3, Lcom/metamoji/ui/UiMenuItem;

    sget-object v4, Lcom/metamoji/un/text/UnTextUnit$CommandId;->Reconvert:Lcom/metamoji/un/text/UnTextUnit$CommandId;

    sget v5, Lcom/metamoji/noteanytime/R$string;->CONTEXTMENU_RECONVERT:I

    invoke-direct {v3, v4, v7, v5}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4564
    :cond_35
    sget-object v3, Lcom/metamoji/un/text/UnTextUnit$CommandId;->InsertDateTime:Lcom/metamoji/un/text/UnTextUnit$CommandId;

    invoke-virtual {v0, v3}, Lcom/metamoji/un/text/UnTextUnit;->canPerformCommand(Lcom/metamoji/un/text/UnTextUnit$CommandId;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 4565
    new-instance v3, Lcom/metamoji/ui/UiMenuItem;

    sget-object v4, Lcom/metamoji/un/text/UnTextUnit$CommandId;->InsertDateTime:Lcom/metamoji/un/text/UnTextUnit$CommandId;

    sget v5, Lcom/metamoji/noteanytime/R$string;->ContextMenu_InsertDate:I

    invoke-direct {v3, v4, v7, v5}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4568
    :cond_36
    sget-object v3, Lcom/metamoji/un/text/UnTextUnit$CommandId;->InsertLineSeparator:Lcom/metamoji/un/text/UnTextUnit$CommandId;

    invoke-virtual {v0, v3}, Lcom/metamoji/un/text/UnTextUnit;->canPerformCommand(Lcom/metamoji/un/text/UnTextUnit$CommandId;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 4569
    new-instance v3, Lcom/metamoji/ui/UiMenuItem;

    sget-object v4, Lcom/metamoji/un/text/UnTextUnit$CommandId;->InsertLineSeparator:Lcom/metamoji/un/text/UnTextUnit$CommandId;

    sget v5, Lcom/metamoji/noteanytime/R$string;->ContextMenu_InsertLineSeparator:I

    invoke-direct {v3, v4, v7, v5}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4572
    :cond_37
    sget-object v3, Lcom/metamoji/un/text/UnTextUnit$CommandId;->TextUnitStyle:Lcom/metamoji/un/text/UnTextUnit$CommandId;

    invoke-virtual {v0, v3}, Lcom/metamoji/un/text/UnTextUnit;->canPerformCommand(Lcom/metamoji/un/text/UnTextUnit$CommandId;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 4574
    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/text/model/TextModel;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/text/model/TextRange;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_38

    .line 4575
    new-instance v3, Lcom/metamoji/ui/UiMenuItem;

    sget-object v4, Lcom/metamoji/un/text/UnTextUnit$CommandId;->TextUnitStyle:Lcom/metamoji/un/text/UnTextUnit$CommandId;

    sget v5, Lcom/metamoji/noteanytime/R$string;->ContextMenu_TextUnitStyle:I

    const/4 v7, 0x0

    invoke-direct {v3, v4, v7, v5}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4579
    :cond_38
    sget-object v3, Lcom/metamoji/un/text/UnTextUnit$CommandId;->TextUnitStyleToSystem:Lcom/metamoji/un/text/UnTextUnit$CommandId;

    invoke-virtual {v0, v3}, Lcom/metamoji/un/text/UnTextUnit;->canPerformCommand(Lcom/metamoji/un/text/UnTextUnit$CommandId;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 4581
    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/text/model/TextModel;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/text/model/TextRange;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_39

    .line 4582
    new-instance v3, Lcom/metamoji/ui/UiMenuItem;

    sget-object v4, Lcom/metamoji/un/text/UnTextUnit$CommandId;->TextUnitStyleToSystem:Lcom/metamoji/un/text/UnTextUnit$CommandId;

    sget v5, Lcom/metamoji/noteanytime/R$string;->ContextMenu_TextUnitStyle_To_System:I

    const/4 v7, 0x0

    invoke-direct {v3, v4, v7, v5}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_39
    const/4 v7, 0x0

    .line 4586
    :goto_e
    sget-object v3, Lcom/metamoji/un/text/UnTextUnit$CommandId;->SeparateUnit:Lcom/metamoji/un/text/UnTextUnit$CommandId;

    invoke-virtual {v0, v3}, Lcom/metamoji/un/text/UnTextUnit;->canPerformCommand(Lcom/metamoji/un/text/UnTextUnit$CommandId;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 4587
    new-instance v3, Lcom/metamoji/ui/UiMenuItem;

    sget-object v4, Lcom/metamoji/un/text/UnTextUnit$CommandId;->SeparateUnit:Lcom/metamoji/un/text/UnTextUnit$CommandId;

    sget v5, Lcom/metamoji/noteanytime/R$string;->SEPARATE_TEXTUNIT:I

    invoke-direct {v3, v4, v7, v5}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4597
    :cond_3a
    sget-object v3, Lcom/metamoji/un/text/UnTextUnit$CommandId;->DisplayQRCode:Lcom/metamoji/un/text/UnTextUnit$CommandId;

    invoke-virtual {v0, v3}, Lcom/metamoji/un/text/UnTextUnit;->canPerformCommand(Lcom/metamoji/un/text/UnTextUnit$CommandId;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 4598
    new-instance v3, Lcom/metamoji/ui/UiMenuItem;

    sget-object v4, Lcom/metamoji/un/text/UnTextUnit$CommandId;->DisplayQRCode:Lcom/metamoji/un/text/UnTextUnit$CommandId;

    sget v5, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_DISPLAY_QR_CODE:I

    invoke-direct {v3, v4, v7, v5}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4608
    :cond_3b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3c

    .line 4609
    new-instance v3, Lcom/metamoji/ui/UiMenuItem;

    sget v4, Lcom/metamoji/noteanytime/R$string;->ContextMenu_TextUnitOthers:I

    invoke-direct {v3, v1, v4, v6, v6}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/util/ArrayList;III)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4612
    :cond_3c
    new-instance v1, Lcom/metamoji/un/text/UnTextUnit$18;

    invoke-direct {v1, v0}, Lcom/metamoji/un/text/UnTextUnit$18;-><init>(Lcom/metamoji/un/text/UnTextUnit;)V

    .line 4619
    invoke-direct {v0, v2, v1}, Lcom/metamoji/un/text/UnTextUnit;->appearContextMenuInPosition(Ljava/util/ArrayList;Lcom/metamoji/ui/MenuEventListener;)V

    return-void
.end method

.method private appearContextMenuForSpellCheck(Lcom/metamoji/un/text/hotspot/HotSpotLocationForSpellCheck;)V
    .locals 5

    .line 11587
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    .line 11588
    iget-object v1, p1, Lcom/metamoji/un/text/hotspot/HotSpotLocationForSpellCheck;->suggestions:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/metamoji/un/text/hotspot/HotSpotLocationForSpellCheck;->suggestions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 11593
    :cond_0
    iget-object v1, p1, Lcom/metamoji/un/text/hotspot/HotSpotLocationForSpellCheck;->suggestions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 11594
    new-instance v3, Lcom/metamoji/ui/UiMenuItem;

    sget-object v4, Lcom/metamoji/un/text/UnTextUnit$SpellCheckCmdId;->Replace:Lcom/metamoji/un/text/UnTextUnit$SpellCheckCmdId;

    invoke-direct {v3, v4, v2, v2}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11590
    :cond_1
    :goto_1
    new-instance v1, Lcom/metamoji/ui/UiMenuItem;

    sget-object v2, Lcom/metamoji/un/text/UnTextUnit$SpellCheckCmdId;->NotReplace:Lcom/metamoji/un/text/UnTextUnit$SpellCheckCmdId;

    const/4 v3, 0x0

    sget v4, Lcom/metamoji/noteanytime/R$string;->TEXT_SPELLCHECK_MSG_NO_SUGGESTION:I

    invoke-direct {v1, v2, v3, v4}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11598
    :cond_2
    new-instance v1, Lcom/metamoji/un/text/UnTextUnit$48;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/un/text/UnTextUnit$48;-><init>(Lcom/metamoji/un/text/UnTextUnit;Lcom/metamoji/un/text/hotspot/HotSpotLocationForSpellCheck;)V

    .line 11612
    invoke-direct {p0, v0, v1}, Lcom/metamoji/un/text/UnTextUnit;->appearContextMenuInPosition(Ljava/util/ArrayList;Lcom/metamoji/ui/MenuEventListener;)V

    return-void
.end method

.method private appearContextMenuInPosition(Ljava/util/ArrayList;Lcom/metamoji/ui/MenuEventListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ui/UiMenuItem;",
            ">;",
            "Lcom/metamoji/ui/MenuEventListener;",
            ")V"
        }
    .end annotation

    .line 4623
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 4626
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v0

    .line 4627
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v1

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/metamoji/un/text/model/TextModel;->caretRectInWholeViewForPosition(Lcom/metamoji/un/text/model/TextPosition;)Landroid/graphics/RectF;

    move-result-object v1

    .line 4629
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 4630
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v2

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/metamoji/un/text/model/TextModel;->caretRectInWholeViewForPosition(Lcom/metamoji/un/text/model/TextPosition;)Landroid/graphics/RectF;

    move-result-object v2

    .line 4632
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/text/model/TextModel;->getLineTable()Lcom/metamoji/un/text/model/linetable/LineTable;

    move-result-object v3

    .line 4633
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineIndex(Lcom/metamoji/un/text/model/TextPosition;)I

    move-result v4

    .line 4634
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineIndex(Lcom/metamoji/un/text/model/TextPosition;)I

    move-result v0

    if-eq v4, v0, :cond_1

    .line 4637
    new-instance v0, Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/metamoji/un/text/UnTextUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    .line 4638
    invoke-virtual {v3}, Lcom/metamoji/df/sprite/Sprite;->getWidth()F

    move-result v3

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    const/4 v4, 0x0

    invoke-direct {v0, v4, v1, v3, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_0

    .line 4641
    :cond_1
    invoke-static {v1, v2}, Lcom/metamoji/cm/RectUtils;->union(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    :goto_0
    move-object v1, v0

    .line 4649
    :cond_2
    invoke-direct {p0, v1}, Lcom/metamoji/un/text/UnTextUnit;->spriteToViewPort(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    .line 4650
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 4651
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 4652
    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    const/high16 v3, 0x420c0000    # 35.0f

    mul-float/2addr v1, v3

    add-float/2addr v2, v1

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    .line 4655
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 4656
    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 4657
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4658
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/metamoji/df/sprite/Viewport;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 4659
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 4661
    new-instance v0, Lcom/metamoji/un/text/UnTextUnit$19;

    invoke-direct {v0, p0}, Lcom/metamoji/un/text/UnTextUnit$19;-><init>(Lcom/metamoji/un/text/UnTextUnit;)V

    .line 4668
    invoke-static {p1, p2, v0, v1}, Lcom/metamoji/nt/NtEditorWindowController;->ShowContextMenu(Ljava/util/ArrayList;Lcom/metamoji/ui/MenuEventListener;Lcom/metamoji/ui/MenuCloseEventListener;Landroid/graphics/Rect;)V

    .line 4669
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->isCurrentPopupVisible()Z

    move-result p1

    iput-boolean p1, p0, Lcom/metamoji/un/text/UnTextUnit;->_visibleContextMenu:Z

    return-void
.end method

.method private canPerformInsertCurrentDateString()Z
    .locals 1

    .line 5885
    iget-boolean v0, p0, Lcom/metamoji/un/text/UnTextUnit;->editing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private canPerformSeparateUnit()Z
    .locals 7

    .line 6360
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtFeature;->SeparateTextUnit:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 6368
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    .line 6369
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/TextRange;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6370
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v2

    .line 6371
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->beginningOfDocument()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/metamoji/un/text/model/TextPosition;->compareTo(Lcom/metamoji/un/text/model/TextPosition;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v4, v3, :cond_2

    .line 6372
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->endOfDocument()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/metamoji/un/text/model/TextPosition;->compareTo(Lcom/metamoji/un/text/model/TextPosition;)I

    move-result v3

    const/4 v5, -0x1

    if-ne v5, v3, :cond_2

    .line 6380
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getStringWsArrayObject()Lcom/metamoji/un/text/model/StringWithStrokesArray;

    move-result-object v3

    iget v5, v2, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    invoke-virtual {v3, v5}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v3

    .line 6381
    invoke-virtual {v3}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->isRenderStrokes()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v3}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->hasString()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 6382
    new-instance v5, Lcom/metamoji/cm/Range;

    iget v6, v2, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    invoke-direct {v5, v6, v4}, Lcom/metamoji/cm/Range;-><init>(II)V

    invoke-virtual {v3, v5}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->substringWithRange(Lcom/metamoji/cm/Range;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 6383
    invoke-static {}, Lcom/metamoji/cm/CharacterSet;->newlineCharacterSet()Lcom/metamoji/cm/CharacterSet;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/metamoji/cm/CharacterSet;->characterIsMember(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6384
    invoke-virtual {v0, v2, v4}, Lcom/metamoji/un/text/model/TextModel;->positionFromPosition(Lcom/metamoji/un/text/model/TextPosition;I)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v2

    .line 6385
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->endOfDocument()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/metamoji/un/text/model/TextPosition;->compareTo(Lcom/metamoji/un/text/model/TextPosition;)I

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    return v4

    :cond_2
    return v1
.end method

.method public static canPerformTextUnitCombine()Z
    .locals 1

    .line 6652
    invoke-static {}, Lcom/metamoji/un/text/UnTextUnit;->getTextUnitCombineUnits()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private cancelMode(Lcom/metamoji/un/text/UnTextUnit$CancelModeType;)V
    .locals 3

    .line 7617
    invoke-virtual {p1}, Lcom/metamoji/un/text/UnTextUnit$CancelModeType;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v1, v0

    goto :goto_0

    :cond_1
    move v2, v1

    move v1, v0

    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    .line 7630
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->leaveStrokeReeditModeLaterIfNeeded()V

    :cond_2
    if-eqz v1, :cond_3

    .line 7634
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->clearContextMenu()V

    :cond_3
    return-void
.end method

.method private caretNotHide()Z
    .locals 5

    .line 10269
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Stage;->setQueueing(Z)V

    .line 10270
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/df/model/IModelManager;->lock()V

    const/4 v0, 0x0

    .line 10272
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/TextModel;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v2

    .line 10273
    invoke-virtual {v2}, Lcom/metamoji/un/text/model/TextRange;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 10274
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v1

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/metamoji/un/text/model/TextModel;->caretRectInWholeViewForPosition(Lcom/metamoji/un/text/model/TextPosition;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/metamoji/un/text/UnTextUnit;->inVisibleViewRect(Landroid/graphics/RectF;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10280
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/TextModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/metamoji/df/model/IModelManager;->unlock()V

    .line 10281
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/metamoji/df/sprite/Stage;->setQueueing(Z)V

    return v1

    .line 10276
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v3

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/metamoji/un/text/model/TextModel;->caretRectInWholeViewForPosition(Lcom/metamoji/un/text/model/TextPosition;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/metamoji/un/text/UnTextUnit;->inVisibleViewRect(Landroid/graphics/RectF;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 10277
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v3

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/metamoji/un/text/model/TextModel;->caretRectInWholeViewForPosition(Lcom/metamoji/un/text/model/TextPosition;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/metamoji/un/text/UnTextUnit;->inVisibleViewRect(Landroid/graphics/RectF;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 10280
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/TextModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/metamoji/df/model/IModelManager;->unlock()V

    .line 10281
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/metamoji/df/sprite/Stage;->setQueueing(Z)V

    .line 10282
    throw v1
.end method

.method private changeFontSizeOfWholeChar(F)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 6066
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getDefaultStringAttributes()Lcom/metamoji/un/text/model/attr/StringAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/attr/StringAttributes;->getFontSize()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v2, p1, v1

    const/4 v3, 0x0

    const/high16 v4, 0x42c00000    # 96.0f

    if-lez v2, :cond_0

    cmpl-float v2, v0, v4

    if-gez v2, :cond_1

    :cond_0
    cmpg-float v2, p1, v1

    const/high16 v5, 0x40800000    # 4.0f

    if-gez v2, :cond_2

    cmpg-float v2, v0, v5

    if-gtz v2, :cond_2

    :cond_1
    return-object v3

    :cond_2
    add-float v2, v0, p1

    cmpl-float v6, v2, v4

    if-ltz v6, :cond_3

    sub-float p1, v4, v0

    move v2, v4

    :cond_3
    cmpg-float v6, v2, v5

    if-gtz v6, :cond_4

    sub-float p1, v5, v0

    move v2, v5

    .line 6083
    :cond_4
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/metamoji/un/text/model/TextModel;->rangesFontSizeDesignated()Ljava/util/List;

    move-result-object v6

    .line 6084
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/metamoji/un/text/model/TextModel;->maxFontSize(Ljava/util/List;)[F

    move-result-object v7

    cmpl-float v8, p1, v1

    const/4 v9, 0x0

    if-lez v8, :cond_5

    .line 6086
    aget v8, v7, v9

    cmpl-float v8, v8, v4

    if-gez v8, :cond_6

    :cond_5
    cmpg-float v1, p1, v1

    const/4 v8, 0x1

    if-gez v1, :cond_7

    aget v1, v7, v8

    cmpg-float v1, v1, v5

    if-gtz v1, :cond_7

    :cond_6
    return-object v3

    .line 6090
    :cond_7
    aget v1, v7, v9

    add-float v3, v1, p1

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_8

    sub-float p1, v4, v1

    .line 6093
    :cond_8
    aget v1, v7, v8

    add-float v3, v1, p1

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_9

    sub-float p1, v5, v1

    .line 6098
    :cond_9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6102
    new-instance v3, Lcom/metamoji/un/text/UnTextUnit$29;

    invoke-direct {v3, p0, v0}, Lcom/metamoji/un/text/UnTextUnit$29;-><init>(Lcom/metamoji/un/text/UnTextUnit;F)V

    .line 6103
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v3, v0, v9}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator;->createUnitStyleParams(Lcom/metamoji/un/text/model/UnitStyles;Ljava/lang/Float;Z)Ljava/util/Map;

    move-result-object v0

    .line 6104
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6106
    new-instance v0, Lcom/metamoji/un/text/model/UnitStyles;

    invoke-direct {v0}, Lcom/metamoji/un/text/model/UnitStyles;-><init>()V

    .line 6107
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v0, Lcom/metamoji/un/text/model/UnitStyles;->fontSize:Ljava/lang/Float;

    .line 6108
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v2

    invoke-virtual {v2, v0, v8, v9}, Lcom/metamoji/un/text/model/TextModel;->setUnitStyles(Lcom/metamoji/un/text/model/UnitStyles;ZZ)V

    .line 6119
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    invoke-virtual {v0, p1, v6}, Lcom/metamoji/un/text/model/TextModel;->expandOrReduceFontSizeCore(FLjava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 6120
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 6121
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_a
    return-object v1
.end method

.method private cleanupUndoDataSelfBuffer()V
    .locals 1

    .line 10521
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->temporaryStackedUndoDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private clearBackgroundColorToMazec()V
    .locals 2

    .line 8231
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getMazecAction()Lcom/metamoji/un/text/MazecAction;

    move-result-object v0

    const/16 v1, 0xff

    .line 8232
    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    .line 8231
    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/MazecAction;->notifyHandwritingBackgroundColorChanged(I)V

    return-void
.end method

.method public static clearTextUnitSettingsCache()V
    .locals 3

    .line 466
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtFeature;->TextSpellCheck:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 467
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    const-string v2, "MMJTextUnitAutoSpellCheck"

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/metamoji/un/text/UnTextUnit;->_checkSpelling:Z

    goto :goto_0

    .line 469
    :cond_0
    sput-boolean v1, Lcom/metamoji/un/text/UnTextUnit;->_checkSpelling:Z

    :goto_0
    const/4 v0, -0x1

    .line 472
    sput v0, Lcom/metamoji/un/text/UnTextUnit;->s_textUnitOption:I

    return-void
.end method

.method private commandCopy()V
    .locals 2

    .line 5182
    sget-object v0, Lcom/metamoji/un/text/UnTextUnit$CommandId;->Copy:Lcom/metamoji/un/text/UnTextUnit$CommandId;

    invoke-virtual {p0, v0}, Lcom/metamoji/un/text/UnTextUnit;->canPerformCommand(Lcom/metamoji/un/text/UnTextUnit$CommandId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5183
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    .line 5184
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/un/text/ClipboardUtils;->copy(Lcom/metamoji/un/text/model/TextModel;Lcom/metamoji/un/text/model/TextRange;)V

    :cond_0
    return-void
.end method

.method private commandCut()V
    .locals 2

    .line 5193
    sget-object v0, Lcom/metamoji/un/text/UnTextUnit$CommandId;->Cut:Lcom/metamoji/un/text/UnTextUnit$CommandId;

    invoke-virtual {p0, v0}, Lcom/metamoji/un/text/UnTextUnit;->canPerformCommand(Lcom/metamoji/un/text/UnTextUnit$CommandId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5194
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->commandCopy()V

    .line 5199
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->endReconvertTaskIfNeeded()V

    .line 5201
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Stage;->setQueueing(Z)V

    .line 5202
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->cut()V

    .line 5203
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Stage;->setQueueing(Z)V

    .line 5205
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->notifySelectedRangeChanged()V

    .line 5209
    sget-object v0, Lcom/metamoji/un/text/UnTextUnit$CancelModeType;->MenuAndStrokeReedit:Lcom/metamoji/un/text/UnTextUnit$CancelModeType;

    invoke-direct {p0, v0}, Lcom/metamoji/un/text/UnTextUnit;->cancelMode(Lcom/metamoji/un/text/UnTextUnit$CancelModeType;)V

    :cond_0
    return-void
.end method

.method private commandDelete()V
    .locals 2

    .line 5257
    sget-object v0, Lcom/metamoji/un/text/UnTextUnit$CommandId;->Delete:Lcom/metamoji/un/text/UnTextUnit$CommandId;

    invoke-virtual {p0, v0}, Lcom/metamoji/un/text/UnTextUnit;->canPerformCommand(Lcom/metamoji/un/text/UnTextUnit$CommandId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5262
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Stage;->setQueueing(Z)V

    .line 5263
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->deleteBackward()V

    .line 5264
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Stage;->setQueueing(Z)V

    .line 5266
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->notifySelectedRangeChanged()V

    :cond_0
    return-void
.end method

.method private commandInsertCurrentDateString()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 5903
    invoke-static {v0, v1}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v0

    .line 5904
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 5906
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/metamoji/un/text/model/TextModel;->insertText(Ljava/lang/String;)V

    .line 5907
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/un/text/UnTextUnit;->setNeedsCheckCaretHideOrNot(Lcom/metamoji/un/text/model/TextPosition;)V

    return-void
.end method

.method private commandPaste()V
    .locals 3

    .line 5220
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->isInComposition()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 5225
    :cond_0
    new-instance v0, Lcom/metamoji/un/text/ClipboardUtils$PasteContent;

    invoke-direct {v0}, Lcom/metamoji/un/text/ClipboardUtils$PasteContent;-><init>()V

    .line 5226
    invoke-static {v0}, Lcom/metamoji/un/text/ClipboardUtils;->getPasteContent(Lcom/metamoji/un/text/ClipboardUtils$PasteContent;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5230
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->endReconvertTaskIfNeeded()V

    .line 5232
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/metamoji/df/sprite/Stage;->setQueueing(Z)V

    .line 5233
    iget-object v1, v0, Lcom/metamoji/un/text/ClipboardUtils$PasteContent;->swsArray:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 5234
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v1

    iget-object v0, v0, Lcom/metamoji/un/text/ClipboardUtils$PasteContent;->swsArray:Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/metamoji/un/text/model/TextModel;->paste(Ljava/util/List;)V

    goto :goto_0

    .line 5236
    :cond_1
    iget-object v1, v0, Lcom/metamoji/un/text/ClipboardUtils$PasteContent;->plainText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    .line 5237
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v1

    iget-object v0, v0, Lcom/metamoji/un/text/ClipboardUtils$PasteContent;->plainText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/metamoji/un/text/model/TextModel;->paste(Ljava/lang/CharSequence;)V

    .line 5239
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/un/text/UnTextUnit;->setNeedsCheckCaretHideOrNot(Lcom/metamoji/un/text/model/TextPosition;)V

    .line 5240
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Stage;->setQueueing(Z)V

    .line 5242
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->notifySelectedRangeChanged()V

    .line 5246
    sget-object v0, Lcom/metamoji/un/text/UnTextUnit$CancelModeType;->MenuAndStrokeReedit:Lcom/metamoji/un/text/UnTextUnit$CancelModeType;

    invoke-direct {p0, v0}, Lcom/metamoji/un/text/UnTextUnit;->cancelMode(Lcom/metamoji/un/text/UnTextUnit$CancelModeType;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private commandReedit(Lcom/metamoji/un/text/UnTextUnit$CommandId;)V
    .locals 2

    .line 5438
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/metamoji/un/text/UnTextUnit$23;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/un/text/UnTextUnit$23;-><init>(Lcom/metamoji/un/text/UnTextUnit;Lcom/metamoji/un/text/UnTextUnit$CommandId;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private commandSelect()V
    .locals 2

    .line 5276
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    .line 5280
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/model/TextModel;->characterRangeAtPosition(Lcom/metamoji/un/text/model/TextPosition;)Lcom/metamoji/un/text/model/TextRange;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5282
    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/model/TextModel;->setSelectedTextRange(Lcom/metamoji/un/text/model/TextRange;)V

    :cond_0
    const/4 v0, 0x1

    .line 5284
    invoke-virtual {p0, v0}, Lcom/metamoji/un/text/UnTextUnit;->notifySelectedRangeChanged(Z)V

    .line 5286
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->setNeedsDisplay()V

    .line 5289
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->selModCurCtrl:Lcom/metamoji/un/text/UnTextUnit$SelectionModifierCursorController;

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit$SelectionModifierCursorController;->show()V

    .line 5292
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/text/UnTextUnit;->_viewForSI:Lcom/metamoji/un/text/UnTextUnit$ViewForSoftInput;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtEditorWindowController;->hideSoftInput(Landroid/view/View;)Z

    .line 5296
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/metamoji/un/text/UnTextUnit$20;

    invoke-direct {v1, p0}, Lcom/metamoji/un/text/UnTextUnit$20;-><init>(Lcom/metamoji/un/text/UnTextUnit;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private commandSelectAll()V
    .locals 2

    .line 5312
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v0

    const/4 v1, 0x0

    .line 5313
    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/model/TextRange;->setEmpty(Z)V

    .line 5314
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextModel;->beginningOfDocument()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/model/TextRange;->setStart(Lcom/metamoji/un/text/model/TextPosition;)V

    .line 5315
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextModel;->endOfDocument()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/model/TextRange;->setEnd(Lcom/metamoji/un/text/model/TextPosition;)V

    const/4 v1, 0x1

    .line 5316
    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/model/TextRange;->setSelectedAll(Z)V

    .line 5318
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->notifySelectedRangeChanged()V

    .line 5320
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->setNeedsDisplay()V

    .line 5323
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->selModCurCtrl:Lcom/metamoji/un/text/UnTextUnit$SelectionModifierCursorController;

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit$SelectionModifierCursorController;->show()V

    .line 5326
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/text/UnTextUnit;->_viewForSI:Lcom/metamoji/un/text/UnTextUnit$ViewForSoftInput;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtEditorWindowController;->hideSoftInput(Landroid/view/View;)Z

    .line 5331
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/metamoji/un/text/UnTextUnit$21;

    invoke-direct {v1, p0}, Lcom/metamoji/un/text/UnTextUnit$21;-><init>(Lcom/metamoji/un/text/UnTextUnit;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private commandSelectParagraphWithTapPoint(Landroid/graphics/PointF;)V
    .locals 6

    .line 5356
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getLineTable()Lcom/metamoji/un/text/model/linetable/LineTable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 5361
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineCount()I

    move-result v1

    .line 5363
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/metamoji/un/text/model/TextModel;->closestPositionToPoint(Landroid/graphics/PointF;)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    .line 5364
    invoke-virtual {v0, p1}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineIndex(Lcom/metamoji/un/text/model/TextPosition;)I

    move-result p1

    move v2, p1

    :goto_0
    const/4 v3, 0x0

    if-ltz v2, :cond_2

    .line 5368
    invoke-virtual {v0, v2}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineInfoAtIndex(I)Lcom/metamoji/un/text/model/linetable/LineInfo;

    move-result-object v4

    .line 5370
    iget-boolean v5, v4, Lcom/metamoji/un/text/model/linetable/LineInfo;->paragraphTop:Z

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    move-object v4, v3

    :goto_1
    if-nez v4, :cond_3

    :goto_2
    return-void

    :cond_3
    :goto_3
    if-ge p1, v1, :cond_5

    .line 5382
    invoke-virtual {v0, p1}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineInfoAtIndex(I)Lcom/metamoji/un/text/model/linetable/LineInfo;

    move-result-object v2

    .line 5384
    iget-boolean v2, v2, Lcom/metamoji/un/text/model/linetable/LineInfo;->endOfParagraph:Z

    if-eqz v2, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_5
    move p1, v1

    .line 5391
    :goto_4
    iget-object v2, v4, Lcom/metamoji/un/text/model/linetable/LineInfo;->position:Lcom/metamoji/un/text/model/TextPosition;

    const/4 v4, 0x1

    add-int/2addr p1, v4

    if-ge p1, v1, :cond_6

    .line 5397
    invoke-virtual {v0, p1}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineInfoAtIndex(I)Lcom/metamoji/un/text/model/linetable/LineInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/metamoji/un/text/model/linetable/LineInfo;->position:Lcom/metamoji/un/text/model/TextPosition;

    .line 5398
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/un/text/model/TextModel;->positionFromPosition(Lcom/metamoji/un/text/model/TextPosition;I)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v3

    :cond_6
    if-nez v3, :cond_7

    .line 5402
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextModel;->endOfDocument()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v3

    .line 5405
    :cond_7
    new-instance p1, Lcom/metamoji/un/text/model/TextRange;

    invoke-direct {p1, v2, v3}, Lcom/metamoji/un/text/model/TextRange;-><init>(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/TextPosition;)V

    .line 5407
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/un/text/model/TextModel;->setSelectedTextRange(Lcom/metamoji/un/text/model/TextRange;)V

    .line 5409
    invoke-virtual {p0, v4}, Lcom/metamoji/un/text/UnTextUnit;->notifySelectedRangeChanged(Z)V

    .line 5411
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->setNeedsDisplay()V

    .line 5414
    iget-object p1, p0, Lcom/metamoji/un/text/UnTextUnit;->selModCurCtrl:Lcom/metamoji/un/text/UnTextUnit$SelectionModifierCursorController;

    invoke-virtual {p1}, Lcom/metamoji/un/text/UnTextUnit$SelectionModifierCursorController;->show()V

    .line 5417
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->_viewForSI:Lcom/metamoji/un/text/UnTextUnit$ViewForSoftInput;

    invoke-virtual {p1, v0}, Lcom/metamoji/nt/NtEditorWindowController;->hideSoftInput(Landroid/view/View;)Z

    .line 5421
    iget-object p1, p0, Lcom/metamoji/un/text/UnTextUnit;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/metamoji/un/text/UnTextUnit$22;

    invoke-direct {v0, p0}, Lcom/metamoji/un/text/UnTextUnit$22;-><init>(Lcom/metamoji/un/text/UnTextUnit;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private commandSeparateUnit()V
    .locals 16

    move-object/from16 v1, p0

    .line 6401
    invoke-direct {v1}, Lcom/metamoji/un/text/UnTextUnit;->canPerformSeparateUnit()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 6405
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 6406
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    .line 6407
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentRootUnitController()Lcom/metamoji/nt/NtUnitController;

    move-result-object v0

    .line 6410
    instance-of v2, v0, Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    if-eqz v2, :cond_c

    .line 6411
    move-object v2, v0

    check-cast v2, Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    .line 6419
    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v3

    iget-object v3, v3, Lcom/metamoji/un/text/model/TextModel;->unitControllerDelegate:Lcom/metamoji/un/text/IUnTextUnitDelegate;

    if-eqz v3, :cond_1

    .line 6420
    iget-object v3, v1, Lcom/metamoji/un/text/UnTextUnit;->_viewForSI:Lcom/metamoji/un/text/UnTextUnit$ViewForSoftInput;

    iget-object v3, v3, Lcom/metamoji/un/text/UnTextUnit$ViewForSoftInput;->_ic:Lcom/metamoji/un/text/TUInputConnection;

    invoke-virtual {v3}, Lcom/metamoji/un/text/TUInputConnection;->finishComposingText()Z

    .line 6428
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/nt/NtUnitController;->getPageController()Lcom/metamoji/nt/NtPageController;

    move-result-object v3

    const/4 v4, 0x0

    .line 6432
    invoke-virtual {v3, v4}, Lcom/metamoji/nt/NtPageController;->beginEdit(Ljava/lang/Object;)Lcom/metamoji/df/controller/EditContext;

    move-result-object v5

    .line 6440
    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v6

    .line 6441
    invoke-virtual {v6}, Lcom/metamoji/un/text/model/TextModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v7

    invoke-interface {v7}, Lcom/metamoji/df/model/IModelManager;->lock()V

    .line 6444
    :try_start_0
    invoke-virtual {v6}, Lcom/metamoji/un/text/model/TextModel;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v7

    invoke-virtual {v7}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v7

    .line 6445
    invoke-virtual {v6}, Lcom/metamoji/un/text/model/TextModel;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v8

    invoke-virtual {v8}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v8

    .line 6452
    invoke-virtual {v6}, Lcom/metamoji/un/text/model/TextModel;->getStringWsArrayObject()Lcom/metamoji/un/text/model/StringWithStrokesArray;

    move-result-object v9

    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnit;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v10

    invoke-virtual {v10}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v10

    iget v10, v10, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    invoke-virtual {v9, v10}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v9

    .line 6453
    invoke-virtual {v9}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->isRenderStrokes()Z

    move-result v10

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-nez v10, :cond_2

    invoke-virtual {v9}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->hasString()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 6454
    new-instance v10, Lcom/metamoji/cm/Range;

    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnit;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v13

    invoke-virtual {v13}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v13

    iget v13, v13, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    invoke-direct {v10, v13, v11}, Lcom/metamoji/cm/Range;-><init>(II)V

    invoke-virtual {v9, v10}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->substringWithRange(Lcom/metamoji/cm/Range;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 6455
    invoke-static {}, Lcom/metamoji/cm/CharacterSet;->newlineCharacterSet()Lcom/metamoji/cm/CharacterSet;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/metamoji/cm/CharacterSet;->characterIsMember(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 6457
    invoke-virtual {v6, v7, v11}, Lcom/metamoji/un/text/model/TextModel;->positionFromPosition(Lcom/metamoji/un/text/model/TextPosition;I)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v8

    move v9, v11

    goto :goto_0

    :cond_2
    move v9, v12

    :goto_0
    const/4 v10, -0x1

    if-nez v9, :cond_3

    .line 6463
    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v9

    invoke-virtual {v9}, Lcom/metamoji/un/text/model/TextModel;->getLineTable()Lcom/metamoji/un/text/model/linetable/LineTable;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineIndex(Lcom/metamoji/un/text/model/TextPosition;)I

    move-result v9

    goto :goto_1

    :cond_3
    move v9, v10

    .line 6467
    :goto_1
    new-instance v13, Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {v6}, Lcom/metamoji/un/text/model/TextModel;->beginningOfDocument()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v14

    invoke-direct {v13, v14, v7}, Lcom/metamoji/un/text/model/TextRange;-><init>(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/TextPosition;)V

    .line 6468
    invoke-virtual {v6}, Lcom/metamoji/un/text/model/TextModel;->getStringWsArrayObject()Lcom/metamoji/un/text/model/StringWithStrokesArray;

    move-result-object v7

    invoke-virtual {v7, v13, v11}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->getAsStringWsArrayWithRange(Lcom/metamoji/un/text/model/TextRange;Z)Ljava/util/List;

    move-result-object v7

    .line 6471
    new-instance v13, Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {v6}, Lcom/metamoji/un/text/model/TextModel;->endOfDocument()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v14

    invoke-direct {v13, v8, v14}, Lcom/metamoji/un/text/model/TextRange;-><init>(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/TextPosition;)V

    .line 6472
    invoke-virtual {v6}, Lcom/metamoji/un/text/model/TextModel;->getStringWsArrayObject()Lcom/metamoji/un/text/model/StringWithStrokesArray;

    move-result-object v14

    invoke-virtual {v14, v13, v11}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->getAsStringWsArrayWithRange(Lcom/metamoji/un/text/model/TextRange;Z)Ljava/util/List;

    move-result-object v13

    .line 6474
    invoke-virtual {v6, v8}, Lcom/metamoji/un/text/model/TextModel;->caretRectInWholeViewForPosition(Lcom/metamoji/un/text/model/TextPosition;)Landroid/graphics/RectF;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6478
    invoke-virtual {v6}, Lcom/metamoji/un/text/model/TextModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v14

    invoke-interface {v14}, Lcom/metamoji/df/model/IModelManager;->unlock()V

    const-wide/16 v14, 0x0

    .line 6482
    invoke-direct {v1, v7, v14, v15}, Lcom/metamoji/un/text/UnTextUnit;->createNewTextModelBySeparateUnit(Ljava/util/List;D)Lcom/metamoji/un/text/model/TextModel;

    move-result-object v7

    .line 6485
    invoke-virtual {v6}, Lcom/metamoji/un/text/model/TextModel;->getVerticalWriting()Z

    move-result v6

    const/high16 v14, 0x41a00000    # 20.0f

    if-eqz v6, :cond_4

    .line 6487
    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnit;->getWidth()F

    move-result v6

    iget v8, v8, Landroid/graphics/RectF;->left:F

    sub-float/2addr v6, v8

    goto :goto_2

    .line 6490
    :cond_4
    iget v6, v8, Landroid/graphics/RectF;->bottom:F

    :goto_2
    add-float/2addr v6, v14

    float-to-double v14, v6

    .line 6492
    invoke-direct {v1, v13, v14, v15}, Lcom/metamoji/un/text/UnTextUnit;->createNewTextModelBySeparateUnit(Ljava/util/List;D)Lcom/metamoji/un/text/model/TextModel;

    move-result-object v6

    const/4 v8, 0x2

    .line 6494
    new-array v8, v8, [Lcom/metamoji/un/text/model/TextModel;

    aput-object v7, v8, v12

    aput-object v6, v8, v11

    .line 6495
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-array v14, v11, [Ljava/lang/Integer;

    .line 6496
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v12

    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    .line 6494
    invoke-virtual {v2, v8, v13, v12, v14}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->convertStrokeToTextWithModels(Ljava/util/List;Ljava/util/List;ILjava/util/List;)V

    .line 6499
    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnit;->getObjectListener()Lcom/metamoji/ctold/CtObjectListener;

    move-result-object v8

    if-eqz v8, :cond_a

    .line 6501
    invoke-virtual {v0, v7}, Lcom/metamoji/nt/NtUnitController;->getControllerOf(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/controller/DfController;

    move-result-object v13

    .line 6502
    invoke-virtual {v0, v6}, Lcom/metamoji/nt/NtUnitController;->getControllerOf(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/controller/DfController;

    move-result-object v0

    .line 6506
    instance-of v14, v13, Lcom/metamoji/un/text/UnTextUnit;

    if-eqz v14, :cond_5

    .line 6507
    check-cast v13, Lcom/metamoji/un/text/UnTextUnit;

    goto :goto_3

    :cond_5
    move-object v13, v4

    .line 6509
    :goto_3
    instance-of v14, v0, Lcom/metamoji/un/text/UnTextUnit;

    if-eqz v14, :cond_6

    .line 6510
    check-cast v0, Lcom/metamoji/un/text/UnTextUnit;

    goto :goto_4

    :cond_6
    move-object v0, v4

    :goto_4
    if-eqz v13, :cond_a

    if-eqz v0, :cond_a

    .line 6515
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 6516
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6517
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6518
    invoke-interface {v8, v1, v14}, Lcom/metamoji/ctold/CtObjectListener;->notifyObjectDivided(Lcom/metamoji/ctold/CtTaggableObject;Ljava/util/List;)V

    .line 6521
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 6522
    invoke-virtual {v1, v14, v12}, Lcom/metamoji/un/text/UnTextUnit;->collectAllParagraphInfos(Ljava/util/List;Z)V

    if-eq v10, v9, :cond_7

    add-int/lit8 v10, v9, 0x1

    .line 6524
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    if-gt v10, v15, :cond_7

    .line 6527
    invoke-static {}, Lcom/metamoji/cm/CmLocalIdManager;->getInstance()Lcom/metamoji/cm/CmLocalIdManager;

    move-result-object v15

    const-string/jumbo v11, "unit"

    invoke-virtual {v15, v11}, Lcom/metamoji/cm/CmLocalIdManager;->generateSubIdWithType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 6528
    sget-object v15, Lcom/metamoji/ctold/object/CtObjectType;->CT_OBJTYPE_ELEM:Lcom/metamoji/ctold/object/CtObjectType;

    invoke-static {v15, v11, v4, v4}, Lcom/metamoji/un/util/UnTaggableSaveObject;->createObject(Lcom/metamoji/ctold/object/CtObjectType;Ljava/lang/String;Lcom/metamoji/un/util/UnTaggableSaveObject;Lcom/metamoji/un/util/UnTaggableSaveObject;)Lcom/metamoji/un/util/UnTaggableSaveObject;

    move-result-object v4

    .line 6529
    invoke-interface {v14, v10, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 6533
    :cond_7
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 6534
    invoke-virtual {v13, v4, v12}, Lcom/metamoji/un/text/UnTextUnit;->collectAllParagraphInfos(Ljava/util/List;Z)V

    .line 6535
    invoke-virtual {v0, v4, v12}, Lcom/metamoji/un/text/UnTextUnit;->collectAllParagraphInfos(Ljava/util/List;Z)V

    .line 6538
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/ctold/CtTaggableObject;

    .line 6539
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v10

    if-gtz v10, :cond_8

    goto :goto_6

    .line 6542
    :cond_8
    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/metamoji/ctold/CtTaggableObject;

    .line 6543
    invoke-interface {v8, v10, v4}, Lcom/metamoji/ctold/CtObjectListener;->notifyObjectTransferred(Lcom/metamoji/ctold/CtTaggableObject;Lcom/metamoji/ctold/CtTaggableObject;)V

    .line 6544
    invoke-interface {v14, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_5

    .line 6548
    :cond_9
    :goto_6
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 6549
    invoke-interface {v8, v14}, Lcom/metamoji/ctold/CtObjectListener;->notifyObjectsRemoving(Ljava/util/List;)V

    .line 6554
    :cond_a
    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    .line 6555
    new-instance v4, Lcom/metamoji/cm/CmContext;

    invoke-direct {v4}, Lcom/metamoji/cm/CmContext;-><init>()V

    invoke-virtual {v2, v1, v4}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->removeUnit(Lcom/metamoji/nt/NtUnitController;Lcom/metamoji/cm/CmContext;)V

    .line 6557
    invoke-virtual {v5}, Lcom/metamoji/df/controller/EditContext;->detachUndo()Lcom/metamoji/df/model/IModel;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 6560
    const-string v4, "page.textunit.separate.undo"

    const/4 v8, 0x1

    invoke-static {v3, v4, v8}, Lcom/metamoji/nt/NtControllerUndoPerformer;->makeNewUndoModelForController(Lcom/metamoji/df/controller/DfController;Ljava/lang/String;I)Lcom/metamoji/df/model/IModel;

    move-result-object v4

    .line 6562
    const-string v8, "m"

    invoke-interface {v4, v8, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 6563
    const-string v2, "f"

    invoke-interface {v4, v2, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 6565
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6566
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6567
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6568
    const-string/jumbo v2, "t"

    invoke-interface {v4, v2, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/List;)V

    .line 6570
    const-string v0, "i"

    invoke-interface {v4, v0, v9}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    const/4 v8, 0x1

    .line 6572
    invoke-virtual {v5, v4, v8}, Lcom/metamoji/df/controller/EditContext;->addUndo(Lcom/metamoji/df/model/IModel;Z)V

    .line 6575
    :cond_b
    invoke-virtual {v3, v5}, Lcom/metamoji/nt/NtPageController;->endEdit(Lcom/metamoji/df/controller/EditContext;)V

    return-void

    :catchall_0
    move-exception v0

    .line 6478
    invoke-virtual {v6}, Lcom/metamoji/un/text/model/TextModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/metamoji/df/model/IModelManager;->unlock()V

    .line 6479
    throw v0

    .line 6414
    :cond_c
    const-string v0, "UnTextUnit.commandSeparateUnit: unknown UnitController"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    return-void
.end method

.method private commandStrokePenStyle()V
    .locals 7

    .line 6191
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/model/TextModel;->textKindInRange(Lcom/metamoji/un/text/model/TextRange;)Ljava/util/EnumSet;

    move-result-object v0

    .line 6193
    sget-object v2, Lcom/metamoji/un/text/model/TextKind;->Stroke:Lcom/metamoji/un/text/model/TextKind;

    invoke-virtual {v0, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 6197
    :cond_0
    new-instance v0, Lcom/metamoji/un/text/UnTextUnit$PenStyleSet;

    invoke-direct {v0, v1}, Lcom/metamoji/un/text/UnTextUnit$PenStyleSet;-><init>(Lcom/metamoji/un/text/UnTextUnit-IA;)V

    .line 6200
    const-class v2, Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;

    invoke-static {v2}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v2

    .line 6201
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/metamoji/un/text/model/TextModel;->getStrokeStyleInRange(Lcom/metamoji/un/text/model/TextRange;Ljava/util/EnumSet;)Lcom/metamoji/mazecclient/stroke/IStrokeStyle;

    move-result-object v3

    iput-object v3, v0, Lcom/metamoji/un/text/UnTextUnit$PenStyleSet;->strokeStyle:Lcom/metamoji/mazecclient/stroke/IStrokeStyle;

    .line 6204
    new-instance v3, Lcom/metamoji/nt/share/NtPenStyle;

    invoke-direct {v3}, Lcom/metamoji/nt/share/NtPenStyle;-><init>()V

    iput-object v3, v0, Lcom/metamoji/un/text/UnTextUnit$PenStyleSet;->penStyle:Lcom/metamoji/nt/share/NtPenStyle;

    .line 6208
    sget-object v3, Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;->PenType:Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;

    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6209
    sget-object v3, Lcom/metamoji/mazecclient/stroke/StrokePenType;->CALLIGRAPHY:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    iget-object v4, v0, Lcom/metamoji/un/text/UnTextUnit$PenStyleSet;->strokeStyle:Lcom/metamoji/mazecclient/stroke/IStrokeStyle;

    invoke-interface {v4}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getPenType()Lcom/metamoji/mazecclient/stroke/StrokePenType;

    move-result-object v4

    if-ne v3, v4, :cond_1

    .line 6210
    const-string v3, "calligraphy"

    goto :goto_0

    .line 6211
    :cond_1
    sget-object v3, Lcom/metamoji/mazecclient/stroke/StrokePenType;->FOUNTAIN:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    iget-object v4, v0, Lcom/metamoji/un/text/UnTextUnit$PenStyleSet;->strokeStyle:Lcom/metamoji/mazecclient/stroke/IStrokeStyle;

    invoke-interface {v4}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getPenType()Lcom/metamoji/mazecclient/stroke/StrokePenType;

    move-result-object v4

    if-ne v3, v4, :cond_2

    .line 6212
    const-string v3, "fountainpen"

    goto :goto_0

    .line 6214
    :cond_2
    const-string/jumbo v3, "standard"

    goto :goto_0

    :cond_3
    move-object v3, v1

    .line 6217
    :goto_0
    iget-object v4, v0, Lcom/metamoji/un/text/UnTextUnit$PenStyleSet;->penStyle:Lcom/metamoji/nt/share/NtPenStyle;

    iput-object v3, v4, Lcom/metamoji/nt/share/NtPenStyle;->type:Ljava/lang/String;

    .line 6221
    sget-object v3, Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;->LineColor:Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;

    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/high16 v4, -0x40800000    # -1.0f

    if-eqz v3, :cond_4

    .line 6222
    iget-object v3, v0, Lcom/metamoji/un/text/UnTextUnit$PenStyleSet;->strokeStyle:Lcom/metamoji/mazecclient/stroke/IStrokeStyle;

    invoke-interface {v3}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getLineColor()I

    move-result v3

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v5, 0x437f0000    # 255.0f

    div-float/2addr v3, v5

    goto :goto_1

    :cond_4
    move v3, v4

    .line 6224
    :goto_1
    iget-object v5, v0, Lcom/metamoji/un/text/UnTextUnit$PenStyleSet;->penStyle:Lcom/metamoji/nt/share/NtPenStyle;

    iput v3, v5, Lcom/metamoji/nt/share/NtPenStyle;->lineAlpha:F

    .line 6228
    sget-object v3, Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;->Ink:Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;

    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 6229
    iget-object v3, v0, Lcom/metamoji/un/text/UnTextUnit$PenStyleSet;->strokeStyle:Lcom/metamoji/mazecclient/stroke/IStrokeStyle;

    invoke-interface {v3}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getInk()Lcom/metamoji/mazecclient/stroke/IStrokeInk;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 6230
    invoke-interface {v3}, Lcom/metamoji/mazecclient/stroke/IStrokeInk;->getType()Lcom/metamoji/mazecclient/stroke/StrokeInkType;

    move-result-object v5

    goto :goto_2

    :cond_5
    sget-object v5, Lcom/metamoji/mazecclient/stroke/StrokeInkType;->NONE:Lcom/metamoji/mazecclient/stroke/StrokeInkType;

    .line 6232
    :goto_2
    sget-object v6, Lcom/metamoji/mazecclient/stroke/StrokeInkType;->GRADIATION:Lcom/metamoji/mazecclient/stroke/StrokeInkType;

    if-ne v6, v5, :cond_6

    .line 6233
    new-instance v5, Lcom/metamoji/un/text/UnTextUnit$30;

    invoke-direct {v5, p0, v3}, Lcom/metamoji/un/text/UnTextUnit$30;-><init>(Lcom/metamoji/un/text/UnTextUnit;Lcom/metamoji/mazecclient/stroke/IStrokeInk;)V

    goto :goto_3

    .line 6239
    :cond_6
    sget-object v6, Lcom/metamoji/mazecclient/stroke/StrokeInkType;->NONE:Lcom/metamoji/mazecclient/stroke/StrokeInkType;

    if-eq v6, v5, :cond_7

    .line 6240
    new-instance v5, Lcom/metamoji/un/text/UnTextUnit$31;

    invoke-direct {v5, p0, v3}, Lcom/metamoji/un/text/UnTextUnit$31;-><init>(Lcom/metamoji/un/text/UnTextUnit;Lcom/metamoji/mazecclient/stroke/IStrokeInk;)V

    goto :goto_3

    .line 6246
    :cond_7
    iget-object v3, v0, Lcom/metamoji/un/text/UnTextUnit$PenStyleSet;->strokeStyle:Lcom/metamoji/mazecclient/stroke/IStrokeStyle;

    invoke-interface {v3}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getLineColor()I

    move-result v3

    const/16 v5, 0xff

    invoke-static {v3, v5}, Lcom/metamoji/cm/ColorUtils;->colorWithAlpha(II)I

    move-result v3

    .line 6247
    new-instance v5, Lcom/metamoji/un/text/UnTextUnit$32;

    invoke-direct {v5, p0, v3}, Lcom/metamoji/un/text/UnTextUnit$32;-><init>(Lcom/metamoji/un/text/UnTextUnit;I)V

    goto :goto_3

    :cond_8
    move-object v5, v1

    .line 6252
    :goto_3
    iget-object v3, v0, Lcom/metamoji/un/text/UnTextUnit$PenStyleSet;->penStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v3, v5}, Lcom/metamoji/nt/share/NtPenStyle;->setInkColors(Ljava/util/List;)V

    .line 6255
    iget-object v3, v0, Lcom/metamoji/un/text/UnTextUnit$PenStyleSet;->penStyle:Lcom/metamoji/nt/share/NtPenStyle;

    iput-object v1, v3, Lcom/metamoji/nt/share/NtPenStyle;->lineDash:Ljava/util/List;

    .line 6259
    sget-object v1, Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;->LineWidthRatio:Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;

    invoke-virtual {v2, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 6260
    iget-object v1, v0, Lcom/metamoji/un/text/UnTextUnit$PenStyleSet;->strokeStyle:Lcom/metamoji/mazecclient/stroke/IStrokeStyle;

    invoke-interface {v1}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getLineWidthRatio()F

    move-result v1

    goto :goto_4

    :cond_9
    move v1, v4

    .line 6262
    :goto_4
    iget-object v3, v0, Lcom/metamoji/un/text/UnTextUnit$PenStyleSet;->penStyle:Lcom/metamoji/nt/share/NtPenStyle;

    iput v1, v3, Lcom/metamoji/nt/share/NtPenStyle;->lineWidth:F

    .line 6266
    sget-object v1, Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;->LineCalliAngle:Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;

    invoke-virtual {v2, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 6267
    iget-object v1, v0, Lcom/metamoji/un/text/UnTextUnit$PenStyleSet;->strokeStyle:Lcom/metamoji/mazecclient/stroke/IStrokeStyle;

    invoke-interface {v1}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getCalliAngle()F

    move-result v1

    goto :goto_5

    :cond_a
    move v1, v4

    .line 6269
    :goto_5
    iget-object v3, v0, Lcom/metamoji/un/text/UnTextUnit$PenStyleSet;->penStyle:Lcom/metamoji/nt/share/NtPenStyle;

    iput v1, v3, Lcom/metamoji/nt/share/NtPenStyle;->penAngle:F

    .line 6273
    sget-object v1, Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;->LineCalliRate:Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;

    invoke-virtual {v2, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 6274
    iget-object v1, v0, Lcom/metamoji/un/text/UnTextUnit$PenStyleSet;->strokeStyle:Lcom/metamoji/mazecclient/stroke/IStrokeStyle;

    invoke-interface {v1}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getCalliRate()F

    move-result v4

    .line 6276
    :cond_b
    iget-object v1, v0, Lcom/metamoji/un/text/UnTextUnit$PenStyleSet;->penStyle:Lcom/metamoji/nt/share/NtPenStyle;

    iput v4, v1, Lcom/metamoji/nt/share/NtPenStyle;->penRate:F

    .line 6279
    sget-object v1, Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;->FountainProps:Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;

    invoke-virtual {v2, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 6280
    iget-object v1, v0, Lcom/metamoji/un/text/UnTextUnit$PenStyleSet;->strokeStyle:Lcom/metamoji/mazecclient/stroke/IStrokeStyle;

    invoke-interface {v1}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getFountainProperties()Lcom/metamoji/mazecclient/stroke/IFountainProperties;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 6282
    iget-object v2, v0, Lcom/metamoji/un/text/UnTextUnit$PenStyleSet;->penStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-interface {v1}, Lcom/metamoji/mazecclient/stroke/IFountainProperties;->getTrans()D

    move-result-wide v3

    double-to-float v3, v3

    iput v3, v2, Lcom/metamoji/nt/share/NtPenStyle;->trans:F

    .line 6283
    iget-object v2, v0, Lcom/metamoji/un/text/UnTextUnit$PenStyleSet;->penStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-interface {v1}, Lcom/metamoji/mazecclient/stroke/IFountainProperties;->getBeginStay()D

    move-result-wide v3

    double-to-float v3, v3

    iput v3, v2, Lcom/metamoji/nt/share/NtPenStyle;->beginStay:F

    .line 6284
    iget-object v2, v0, Lcom/metamoji/un/text/UnTextUnit$PenStyleSet;->penStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-interface {v1}, Lcom/metamoji/mazecclient/stroke/IFountainProperties;->getBeginStayRate()D

    move-result-wide v3

    double-to-float v3, v3

    iput v3, v2, Lcom/metamoji/nt/share/NtPenStyle;->beginStayRate:F

    .line 6285
    iget-object v2, v0, Lcom/metamoji/un/text/UnTextUnit$PenStyleSet;->penStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-interface {v1}, Lcom/metamoji/mazecclient/stroke/IFountainProperties;->getBeginStayDelta()D

    move-result-wide v3

    double-to-float v3, v3

    iput v3, v2, Lcom/metamoji/nt/share/NtPenStyle;->beginStayDelta:F

    .line 6286
    iget-object v2, v0, Lcom/metamoji/un/text/UnTextUnit$PenStyleSet;->penStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-interface {v1}, Lcom/metamoji/mazecclient/stroke/IFountainProperties;->getBeginRun()D

    move-result-wide v3

    double-to-float v3, v3

    iput v3, v2, Lcom/metamoji/nt/share/NtPenStyle;->beginRun:F

    .line 6287
    iget-object v2, v0, Lcom/metamoji/un/text/UnTextUnit$PenStyleSet;->penStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-interface {v1}, Lcom/metamoji/mazecclient/stroke/IFountainProperties;->getBeginRunRate()D

    move-result-wide v3

    double-to-float v3, v3

    iput v3, v2, Lcom/metamoji/nt/share/NtPenStyle;->beginRunRate:F

    .line 6288
    iget-object v2, v0, Lcom/metamoji/un/text/UnTextUnit$PenStyleSet;->penStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-interface {v1}, Lcom/metamoji/mazecclient/stroke/IFountainProperties;->getBeginRunDelta()D

    move-result-wide v3

    double-to-float v3, v3

    iput v3, v2, Lcom/metamoji/nt/share/NtPenStyle;->beginRunDelta:F

    .line 6289
    iget-object v2, v0, Lcom/metamoji/un/text/UnTextUnit$PenStyleSet;->penStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-interface {v1}, Lcom/metamoji/mazecclient/stroke/IFountainProperties;->getEndStay()D

    move-result-wide v3

    double-to-float v3, v3

    iput v3, v2, Lcom/metamoji/nt/share/NtPenStyle;->endStay:F

    .line 6290
    iget-object v2, v0, Lcom/metamoji/un/text/UnTextUnit$PenStyleSet;->penStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-interface {v1}, Lcom/metamoji/mazecclient/stroke/IFountainProperties;->getEndStayRate()D

    move-result-wide v3

    double-to-float v3, v3

    iput v3, v2, Lcom/metamoji/nt/share/NtPenStyle;->endStayRate:F

    .line 6291
    iget-object v2, v0, Lcom/metamoji/un/text/UnTextUnit$PenStyleSet;->penStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-interface {v1}, Lcom/metamoji/mazecclient/stroke/IFountainProperties;->getEndStayDelta()D

    move-result-wide v3

    double-to-float v3, v3

    iput v3, v2, Lcom/metamoji/nt/share/NtPenStyle;->endStayDelta:F

    .line 6292
    iget-object v2, v0, Lcom/metamoji/un/text/UnTextUnit$PenStyleSet;->penStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-interface {v1}, Lcom/metamoji/mazecclient/stroke/IFountainProperties;->getEndRun()D

    move-result-wide v3

    double-to-float v3, v3

    iput v3, v2, Lcom/metamoji/nt/share/NtPenStyle;->endRun:F

    .line 6293
    iget-object v2, v0, Lcom/metamoji/un/text/UnTextUnit$PenStyleSet;->penStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-interface {v1}, Lcom/metamoji/mazecclient/stroke/IFountainProperties;->getEndRunRate()D

    move-result-wide v3

    double-to-float v3, v3

    iput v3, v2, Lcom/metamoji/nt/share/NtPenStyle;->endRunRate:F

    .line 6294
    iget-object v2, v0, Lcom/metamoji/un/text/UnTextUnit$PenStyleSet;->penStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-interface {v1}, Lcom/metamoji/mazecclient/stroke/IFountainProperties;->getEndRunDelta()D

    move-result-wide v3

    double-to-float v3, v3

    iput v3, v2, Lcom/metamoji/nt/share/NtPenStyle;->endRunDelta:F

    .line 6295
    iget-object v2, v0, Lcom/metamoji/un/text/UnTextUnit$PenStyleSet;->penStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-interface {v1}, Lcom/metamoji/mazecclient/stroke/IFountainProperties;->getTailStay()D

    move-result-wide v3

    double-to-float v3, v3

    iput v3, v2, Lcom/metamoji/nt/share/NtPenStyle;->tailStay:F

    .line 6296
    iget-object v2, v0, Lcom/metamoji/un/text/UnTextUnit$PenStyleSet;->penStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-interface {v1}, Lcom/metamoji/mazecclient/stroke/IFountainProperties;->getTailStayRate()D

    move-result-wide v3

    double-to-float v3, v3

    iput v3, v2, Lcom/metamoji/nt/share/NtPenStyle;->tailStayRate:F

    .line 6297
    iget-object v2, v0, Lcom/metamoji/un/text/UnTextUnit$PenStyleSet;->penStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-interface {v1}, Lcom/metamoji/mazecclient/stroke/IFountainProperties;->getTailStayDelta()D

    move-result-wide v3

    double-to-float v3, v3

    iput v3, v2, Lcom/metamoji/nt/share/NtPenStyle;->tailStayDelta:F

    .line 6298
    iget-object v2, v0, Lcom/metamoji/un/text/UnTextUnit$PenStyleSet;->penStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-interface {v1}, Lcom/metamoji/mazecclient/stroke/IFountainProperties;->getTailRun()D

    move-result-wide v3

    double-to-float v3, v3

    iput v3, v2, Lcom/metamoji/nt/share/NtPenStyle;->tailRun:F

    .line 6299
    iget-object v2, v0, Lcom/metamoji/un/text/UnTextUnit$PenStyleSet;->penStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-interface {v1}, Lcom/metamoji/mazecclient/stroke/IFountainProperties;->getTailRunRate()D

    move-result-wide v3

    double-to-float v3, v3

    iput v3, v2, Lcom/metamoji/nt/share/NtPenStyle;->tailRunRate:F

    .line 6300
    iget-object v2, v0, Lcom/metamoji/un/text/UnTextUnit$PenStyleSet;->penStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-interface {v1}, Lcom/metamoji/mazecclient/stroke/IFountainProperties;->getTailRunDelta()D

    move-result-wide v3

    double-to-float v1, v3

    iput v1, v2, Lcom/metamoji/nt/share/NtPenStyle;->tailRunDelta:F

    .line 6305
    :cond_c
    new-instance v1, Lcom/metamoji/cm/CmContext;

    invoke-direct {v1}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 6308
    const-string/jumbo v2, "selectInfo"

    invoke-virtual {v1, v2, v0}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6309
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_CHANGE_STYLE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return-void
.end method

.method private commandTextAlign(Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;)V
    .locals 0

    .line 6174
    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/UnTextUnit;->changeTextAlign(Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;)V

    return-void
.end method

.method private commandTextInputStyleBar()V
    .locals 1

    .line 11249
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->toggleShowSetting(Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method

.method public static commandTextUnitCombine()Z
    .locals 31

    .line 6728
    invoke-static {}, Lcom/metamoji/un/text/UnTextUnit;->getTextUnitCombineUnits()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 6733
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v2

    .line 6734
    invoke-virtual {v2}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v3

    .line 6735
    invoke-virtual {v3}, Lcom/metamoji/nt/NtNoteController;->getCurrentRootUnitController()Lcom/metamoji/nt/NtUnitController;

    move-result-object v4

    .line 6738
    instance-of v5, v4, Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    if-eqz v5, :cond_13

    .line 6739
    move-object v5, v4

    check-cast v5, Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    .line 6746
    invoke-virtual {v4}, Lcom/metamoji/nt/NtUnitController;->getPageController()Lcom/metamoji/nt/NtPageController;

    move-result-object v6

    const/4 v7, 0x0

    .line 6751
    invoke-virtual {v6, v7}, Lcom/metamoji/nt/NtPageController;->beginEdit(Ljava/lang/Object;)Lcom/metamoji/df/controller/EditContext;

    move-result-object v8

    .line 6753
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/metamoji/un/text/UnTextUnit;

    .line 6754
    invoke-virtual {v9}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v9

    .line 6757
    invoke-virtual {v9}, Lcom/metamoji/un/text/model/TextModel;->getVerticalWriting()Z

    move-result v9

    .line 6760
    new-instance v10, Landroid/util/SparseArray;

    invoke-direct {v10}, Landroid/util/SparseArray;-><init>()V

    .line 6761
    new-instance v11, Lcom/metamoji/un/text/UnTextUnit$33;

    invoke-direct {v11, v10, v9}, Lcom/metamoji/un/text/UnTextUnit$33;-><init>(Landroid/util/SparseArray;Z)V

    invoke-static {v0, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 6823
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/metamoji/un/text/UnTextUnit;

    .line 6824
    invoke-virtual {v10}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v11

    .line 6827
    invoke-virtual {v5}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->deselect()V

    .line 6830
    invoke-virtual {v2}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/nt/NtDocument;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v2

    .line 6831
    invoke-virtual {v3}, Lcom/metamoji/nt/NtNoteController;->getTextUnitSettings()Lcom/metamoji/un/text/IUnTextSettings;

    move-result-object v3

    .line 6830
    invoke-static {v2, v3}, Lcom/metamoji/un/text/UnTextUnit;->createNewTextModel(Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/un/text/IUnTextSettings;)Lcom/metamoji/df/model/IModel;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/text/model/TextModel;

    .line 6834
    const-string/jumbo v3, "width"

    const-string v12, "height"

    const/4 v13, 0x1

    if-eqz v9, :cond_1

    .line 6835
    invoke-virtual {v2, v3, v13}, Lcom/metamoji/un/text/model/TextModel;->setProperty(Ljava/lang/String;I)V

    goto :goto_0

    .line 6837
    :cond_1
    invoke-virtual {v2, v12, v13}, Lcom/metamoji/un/text/model/TextModel;->setProperty(Ljava/lang/String;I)V

    .line 6840
    :goto_0
    invoke-virtual {v11}, Lcom/metamoji/un/text/model/TextModel;->getUnitStyles()Lcom/metamoji/un/text/model/UnitStyles;

    move-result-object v14

    invoke-virtual {v2, v14}, Lcom/metamoji/un/text/model/TextModel;->setUnitStyles(Lcom/metamoji/un/text/model/UnitStyles;)V

    .line 6844
    invoke-virtual {v2}, Lcom/metamoji/un/text/model/TextModel;->getStringWsArrayObject()Lcom/metamoji/un/text/model/StringWithStrokesArray;

    move-result-object v14

    .line 6849
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 6850
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move/from16 v16, v13

    .line 6851
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v17, 0x0

    move-object/from16 v23, v4

    move/from16 v20, v9

    move-object/from16 v21, v10

    move-wide/from16 v9, v17

    const/16 v22, 0x0

    .line 6855
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_9

    .line 6856
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/nt/NtUnitController;

    move-object/from16 v24, v0

    .line 6857
    instance-of v0, v4, Lcom/metamoji/un/text/UnTextUnit;

    if-nez v0, :cond_2

    move-object/from16 v26, v5

    move-object/from16 v27, v6

    move-object/from16 v25, v11

    const/4 v0, 0x0

    goto/16 :goto_5

    .line 6860
    :cond_2
    invoke-virtual {v4}, Lcom/metamoji/nt/NtUnitController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/text/model/TextModel;

    move-object/from16 v25, v11

    .line 6863
    iget-boolean v11, v0, Lcom/metamoji/un/text/model/TextModel;->unitWidthSelfAdjustment:Z

    if-nez v11, :cond_4

    if-eqz v20, :cond_3

    .line 6865
    invoke-virtual {v4}, Lcom/metamoji/nt/NtUnitController;->getHeight()F

    move-result v11

    move-object/from16 v26, v5

    move-object/from16 v27, v6

    float-to-double v5, v11

    invoke-static {v9, v10, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    goto :goto_2

    :cond_3
    move-object/from16 v26, v5

    move-object/from16 v27, v6

    .line 6867
    invoke-virtual {v4}, Lcom/metamoji/nt/NtUnitController;->getWidth()F

    move-result v5

    float-to-double v5, v5

    invoke-static {v9, v10, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    :goto_2
    move-wide v9, v5

    goto :goto_3

    :cond_4
    move-object/from16 v26, v5

    move-object/from16 v27, v6

    .line 6870
    :goto_3
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getStringWsArrayObject()Lcom/metamoji/un/text/model/StringWithStrokesArray;

    move-result-object v5

    .line 6871
    invoke-virtual {v5}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->getCount()I

    move-result v6

    const/4 v11, 0x0

    :goto_4
    if-ge v11, v6, :cond_6

    move/from16 v28, v6

    .line 6873
    invoke-virtual {v5, v11}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v6

    move-object/from16 v29, v5

    if-eqz v6, :cond_5

    .line 6875
    new-instance v5, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    invoke-direct {v5, v6}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;-><init>(Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;)V

    .line 6876
    invoke-virtual {v6}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getParagraphStyle()Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    move-result-object v22

    move-object/from16 v30, v6

    invoke-virtual/range {v22 .. v22}, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;->cloneMutableExceptPersonalInfo()Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->setParagraphStyle(Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;)V

    .line 6877
    invoke-virtual {v14, v5}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->addStringWs(Lcom/metamoji/un/text/model/stringws/StringWithStrokes;)V

    .line 6878
    invoke-virtual/range {v30 .. v30}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getParagraphStyle()Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    move-result-object v22

    :cond_5
    add-int/lit8 v11, v11, 0x1

    move/from16 v6, v28

    move-object/from16 v5, v29

    goto :goto_4

    .line 6883
    :cond_6
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-eq v1, v5, :cond_8

    .line 6884
    new-instance v5, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    const-string v6, "\n"

    invoke-direct {v5, v6}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;-><init>(Ljava/lang/CharSequence;)V

    if-eqz v22, :cond_7

    .line 6887
    invoke-virtual/range {v22 .. v22}, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;->cloneMutableExceptPersonalInfo()Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->setParagraphStyle(Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;)V

    .line 6889
    :cond_7
    invoke-virtual {v14, v5}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->addStringWs(Lcom/metamoji/un/text/model/stringws/StringWithStrokes;)V

    .line 6893
    :cond_8
    invoke-interface {v15, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6896
    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6899
    check-cast v4, Lcom/metamoji/un/text/UnTextUnit;

    const/4 v0, 0x0

    invoke-virtual {v4, v7, v0}, Lcom/metamoji/un/text/UnTextUnit;->collectAllParagraphInfos(Ljava/util/List;Z)V

    :goto_5
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, v24

    move-object/from16 v11, v25

    move-object/from16 v5, v26

    move-object/from16 v6, v27

    goto/16 :goto_1

    :cond_9
    move-object/from16 v24, v0

    move-object/from16 v26, v5

    move-object/from16 v27, v6

    move-object/from16 v25, v11

    const/4 v0, 0x0

    cmpg-double v1, v17, v9

    if-gez v1, :cond_b

    .line 6903
    iput-boolean v0, v2, Lcom/metamoji/un/text/model/TextModel;->unitWidthSelfAdjustment:Z

    if-eqz v20, :cond_a

    .line 6905
    invoke-virtual {v2, v12, v9, v10}, Lcom/metamoji/un/text/model/TextModel;->setProperty(Ljava/lang/String;D)V

    goto :goto_6

    .line 6907
    :cond_a
    invoke-virtual {v2, v3, v9, v10}, Lcom/metamoji/un/text/model/TextModel;->setProperty(Ljava/lang/String;D)V

    .line 6911
    :cond_b
    :goto_6
    const-string/jumbo v0, "rotation"

    invoke-virtual/range {v21 .. v21}, Lcom/metamoji/un/text/UnTextUnit;->getRotation()D

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lcom/metamoji/un/text/model/TextModel;->setProperty(Ljava/lang/String;D)V

    if-eqz v20, :cond_c

    .line 6916
    invoke-virtual/range {v25 .. v25}, Lcom/metamoji/un/text/model/TextModel;->getRotatedTR()Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/metamoji/un/text/model/TextModel;->setRotatedTR(Landroid/graphics/PointF;)V

    goto :goto_7

    .line 6918
    :cond_c
    invoke-virtual/range {v25 .. v25}, Lcom/metamoji/un/text/model/TextModel;->getRotatedTL()Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/metamoji/un/text/model/TextModel;->setRotatedTL(Landroid/graphics/PointF;)V

    :goto_7
    move/from16 v0, v16

    .line 6921
    new-array v1, v0, [Lcom/metamoji/un/text/model/TextModel;

    const/16 v19, 0x0

    aput-object v2, v1, v19

    .line 6922
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-array v4, v0, [Ljava/lang/Integer;

    .line 6923
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v19

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v4, -0x1

    move-object/from16 v5, v26

    .line 6921
    invoke-virtual {v5, v1, v3, v4, v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->convertStrokeToTextWithModels(Ljava/util/List;Ljava/util/List;ILjava/util/List;)V

    .line 6925
    invoke-virtual {v5, v2}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->getControllerOf(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/controller/DfController;

    move-result-object v0

    .line 6927
    instance-of v1, v0, Lcom/metamoji/un/text/UnTextUnit;

    if-eqz v1, :cond_d

    .line 6928
    check-cast v0, Lcom/metamoji/un/text/UnTextUnit;

    goto :goto_8

    :cond_d
    const/4 v0, 0x0

    .line 6931
    :goto_8
    invoke-virtual/range {v23 .. v23}, Lcom/metamoji/nt/NtUnitController;->getObjectListener()Lcom/metamoji/ctold/CtObjectListener;

    move-result-object v1

    if-eqz v0, :cond_10

    if-eqz v1, :cond_10

    .line 6935
    invoke-interface {v1, v15, v0}, Lcom/metamoji/ctold/CtObjectListener;->notifyObjectUnificated(Ljava/util/List;Lcom/metamoji/ctold/CtTaggableObject;)V

    .line 6938
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 6939
    invoke-virtual {v0, v2, v3}, Lcom/metamoji/un/text/UnTextUnit;->collectAllParagraphInfos(Ljava/util/List;Z)V

    .line 6942
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/ctold/CtTaggableObject;

    .line 6943
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    if-gtz v6, :cond_e

    goto :goto_a

    .line 6946
    :cond_e
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/metamoji/ctold/CtTaggableObject;

    .line 6947
    invoke-interface {v1, v6, v4}, Lcom/metamoji/ctold/CtObjectListener;->notifyObjectTransferred(Lcom/metamoji/ctold/CtTaggableObject;Lcom/metamoji/ctold/CtTaggableObject;)V

    .line 6948
    invoke-interface {v7, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_9

    .line 6952
    :cond_f
    :goto_a
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_10

    .line 6953
    invoke-interface {v1, v7}, Lcom/metamoji/ctold/CtObjectListener;->notifyObjectsRemoving(Ljava/util/List;)V

    .line 6957
    :cond_10
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/nt/NtUnitController;

    .line 6958
    new-instance v3, Lcom/metamoji/cm/CmContext;

    invoke-direct {v3}, Lcom/metamoji/cm/CmContext;-><init>()V

    invoke-virtual {v5, v2, v3}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->removeUnit(Lcom/metamoji/nt/NtUnitController;Lcom/metamoji/cm/CmContext;)V

    goto :goto_b

    .line 6961
    :cond_11
    invoke-virtual {v8}, Lcom/metamoji/df/controller/EditContext;->detachUndo()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 6965
    const-string v2, "page.textunit.combine.undo"

    move-object/from16 v3, v27

    const/4 v4, 0x1

    invoke-static {v3, v2, v4}, Lcom/metamoji/nt/NtControllerUndoPerformer;->makeNewUndoModelForController(Lcom/metamoji/df/controller/DfController;Ljava/lang/String;I)Lcom/metamoji/df/model/IModel;

    move-result-object v2

    .line 6967
    const-string v5, "m"

    invoke-interface {v2, v5, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 6968
    const-string v1, "f"

    invoke-interface {v2, v1, v13}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/List;)V

    .line 6969
    const-string/jumbo v1, "t"

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 6971
    invoke-virtual {v8, v2, v4}, Lcom/metamoji/df/controller/EditContext;->addUndo(Lcom/metamoji/df/model/IModel;Z)V

    goto :goto_c

    :cond_12
    move-object/from16 v3, v27

    const/4 v4, 0x1

    .line 6974
    :goto_c
    invoke-virtual {v3, v8}, Lcom/metamoji/nt/NtPageController;->endEdit(Lcom/metamoji/df/controller/EditContext;)V

    return v4

    .line 6742
    :cond_13
    const-string v0, "UnTextUnit.commandSeparateUnit: unknown UnitController"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    const/16 v19, 0x0

    return v19
.end method

.method private commandTextUnitFontSizeIncDec(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 6145
    :cond_0
    invoke-direct {p0, p1}, Lcom/metamoji/un/text/UnTextUnit;->changeFontSizeOfWholeChar(F)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 6147
    const-string/jumbo v0, "textUnitStyle"

    invoke-virtual {p0, v0}, Lcom/metamoji/un/text/UnTextUnit;->startEditTextTask(Ljava/lang/String;)V

    .line 6149
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 6150
    invoke-virtual {p0, v0}, Lcom/metamoji/un/text/UnTextUnit;->addUndoData(Ljava/util/Map;)V

    goto :goto_0

    .line 6153
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->endEditTextTask()V

    .line 6154
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/metamoji/un/text/model/TextModel;->setModified(Z)V

    .line 6156
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/metamoji/un/text/model/TextModel;->needsRemakeLineTableWithUnitSizeSelfAdjustmentFromPosition(Lcom/metamoji/un/text/model/TextPosition;)V

    .line 6164
    :cond_2
    sget-object p1, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->FontSize:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-static {p1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/metamoji/un/text/UnTextUnit;->updateInputStyleBar(Ljava/util/EnumSet;)V

    return-void
.end method

.method public static createNewTextModel(Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/un/text/IUnTextSettings;)Lcom/metamoji/df/model/IModel;
    .locals 7

    .line 489
    const-string v0, "$text"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/text/model/TextModel;

    const/4 v0, 0x3

    .line 492
    invoke-virtual {p0, v0}, Lcom/metamoji/un/text/model/TextModel;->setVersion(I)V

    .line 495
    invoke-static {}, Lcom/metamoji/cm/CmLocalIdManager;->getInstance()Lcom/metamoji/cm/CmLocalIdManager;

    move-result-object v0

    const-string/jumbo v1, "unit"

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmLocalIdManager;->generateSubIdWithType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "unitId"

    invoke-virtual {p0, v1, v0}, Lcom/metamoji/un/text/model/TextModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 498
    invoke-interface {p1}, Lcom/metamoji/un/text/IUnTextSettings;->getTextUnitFontSize()F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 499
    invoke-interface {p1}, Lcom/metamoji/un/text/IUnTextSettings;->getTextUnitLineHeight()F

    move-result v2

    invoke-static {v0, v2}, Lcom/metamoji/un/text/UnTextUnit;->getMinSizeWithFont(Landroid/graphics/Paint;F)Lcom/metamoji/cm/SizeF;

    move-result-object v0

    .line 501
    invoke-interface {p1}, Lcom/metamoji/un/text/IUnTextSettings;->getTextUnitVerticalWriting()Z

    move-result v2

    const-string v3, "height"

    const-string/jumbo v4, "width"

    if-eqz v2, :cond_0

    .line 502
    iget v2, v0, Lcom/metamoji/cm/SizeF;->height:F

    float-to-double v5, v2

    invoke-virtual {p0, v4, v5, v6}, Lcom/metamoji/un/text/model/TextModel;->setProperty(Ljava/lang/String;D)V

    .line 503
    iget v0, v0, Lcom/metamoji/cm/SizeF;->width:F

    float-to-double v4, v0

    invoke-virtual {p0, v3, v4, v5}, Lcom/metamoji/un/text/model/TextModel;->setProperty(Ljava/lang/String;D)V

    goto :goto_0

    .line 506
    :cond_0
    iget v2, v0, Lcom/metamoji/cm/SizeF;->width:F

    float-to-double v5, v2

    invoke-virtual {p0, v4, v5, v6}, Lcom/metamoji/un/text/model/TextModel;->setProperty(Ljava/lang/String;D)V

    .line 507
    iget v0, v0, Lcom/metamoji/cm/SizeF;->height:F

    float-to-double v4, v0

    invoke-virtual {p0, v3, v4, v5}, Lcom/metamoji/un/text/model/TextModel;->setProperty(Ljava/lang/String;D)V

    .line 512
    :goto_0
    invoke-interface {p1}, Lcom/metamoji/un/text/IUnTextSettings;->getTextUnitBackgroundColor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/text/DataUtil;->createUIColorWithCSSColorString(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 513
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 514
    :goto_1
    invoke-interface {p1}, Lcom/metamoji/un/text/IUnTextSettings;->getTextUnitBackgroundColorAlpha()F

    move-result v2

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 515
    invoke-static {v0, v2}, Lcom/metamoji/cm/ColorUtils;->colorWithAlpha(II)I

    move-result v0

    .line 517
    new-instance v2, Lcom/metamoji/un/text/model/UnitStyles;

    invoke-direct {v2}, Lcom/metamoji/un/text/model/UnitStyles;-><init>()V

    .line 518
    invoke-interface {p1}, Lcom/metamoji/un/text/IUnTextSettings;->getTextUnitFontFamily()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/metamoji/un/text/model/UnitStyles;->fontFamilyName:Ljava/lang/String;

    .line 519
    invoke-interface {p1}, Lcom/metamoji/un/text/IUnTextSettings;->getTextUnitFontSize()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, v2, Lcom/metamoji/un/text/model/UnitStyles;->fontSize:Ljava/lang/Float;

    .line 520
    invoke-interface {p1}, Lcom/metamoji/un/text/IUnTextSettings;->getTextUnitFontColor()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/un/text/DataUtil;->createUIColorWithCSSColorString(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/metamoji/un/text/model/UnitStyles;->charColor:Ljava/lang/Integer;

    .line 521
    invoke-interface {p1}, Lcom/metamoji/un/text/IUnTextSettings;->getTextUnitLineHeight()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, v2, Lcom/metamoji/un/text/model/UnitStyles;->lineHeight:Ljava/lang/Float;

    .line 522
    invoke-interface {p1}, Lcom/metamoji/un/text/IUnTextSettings;->getTextUnitRuledLineStyle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/un/text/DataUtil;->createRuledLineStyleFromString(Ljava/lang/String;)Lcom/metamoji/un/text/model/RuledLineStyle;

    move-result-object v3

    iput-object v3, v2, Lcom/metamoji/un/text/model/UnitStyles;->ruledLineStyle:Lcom/metamoji/un/text/model/RuledLineStyle;

    .line 523
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lcom/metamoji/un/text/model/UnitStyles;->bgColor:Ljava/lang/Integer;

    .line 524
    invoke-interface {p1}, Lcom/metamoji/un/text/IUnTextSettings;->getTextUnitBorderStyle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/text/DataUtil;->createBorderStyleFromString(Ljava/lang/String;)Lcom/metamoji/un/text/model/UnitBorderStyle;

    move-result-object v0

    iput-object v0, v2, Lcom/metamoji/un/text/model/UnitStyles;->unitBorderStyle:Lcom/metamoji/un/text/model/UnitBorderStyle;

    .line 525
    sget-boolean v0, Lcom/metamoji/noteanytime/ModelInfo;->isTextVerticalWritingEnabled:Z

    if-eqz v0, :cond_2

    .line 526
    invoke-interface {p1}, Lcom/metamoji/un/text/IUnTextSettings;->getTextUnitVerticalWriting()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v2, Lcom/metamoji/un/text/model/UnitStyles;->verticalWriting:Ljava/lang/Boolean;

    .line 528
    :cond_2
    invoke-virtual {p0, v2}, Lcom/metamoji/un/text/model/TextModel;->setUnitStyles(Lcom/metamoji/un/text/model/UnitStyles;)V

    .line 531
    iput-boolean v1, p0, Lcom/metamoji/un/text/model/TextModel;->unitWidthSelfAdjustment:Z

    return-object p0
.end method

.method private createNewTextModelBySeparateUnit(Ljava/util/List;D)Lcom/metamoji/un/text/model/TextModel;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/un/text/model/stringws/StringWithStrokes;",
            ">;D)",
            "Lcom/metamoji/un/text/model/TextModel;"
        }
    .end annotation

    .line 6581
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 6582
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v1

    .line 6583
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getTextUnitSettings()Lcom/metamoji/un/text/IUnTextSettings;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/un/text/UnTextUnit;->createNewTextModel(Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/un/text/IUnTextSettings;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/text/model/TextModel;

    .line 6586
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextModel;->getUnitStyles()Lcom/metamoji/un/text/model/UnitStyles;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/un/text/model/TextModel;->setUnitStyles(Lcom/metamoji/un/text/model/UnitStyles;Z)V

    .line 6587
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v1

    iget-boolean v1, v1, Lcom/metamoji/un/text/model/TextModel;->unitWidthSelfAdjustment:Z

    iput-boolean v1, v0, Lcom/metamoji/un/text/model/TextModel;->unitWidthSelfAdjustment:Z

    .line 6590
    invoke-virtual {v0, p1}, Lcom/metamoji/un/text/model/TextModel;->setStringWsArrayObject(Ljava/util/List;)V

    .line 6593
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextModel;->getVerticalWriting()Z

    move-result p1

    .line 6594
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v1

    iget-boolean v1, v1, Lcom/metamoji/un/text/model/TextModel;->unitWidthSelfAdjustment:Z

    if-nez v1, :cond_1

    if-eqz p1, :cond_0

    .line 6596
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getHeight()F

    move-result v1

    float-to-double v1, v1

    const-string v3, "height"

    invoke-virtual {v0, v3, v1, v2}, Lcom/metamoji/un/text/model/TextModel;->setProperty(Ljava/lang/String;D)V

    goto :goto_0

    .line 6598
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getWidth()F

    move-result v1

    float-to-double v1, v1

    const-string/jumbo v3, "width"

    invoke-virtual {v0, v3, v1, v2}, Lcom/metamoji/un/text/model/TextModel;->setProperty(Ljava/lang/String;D)V

    .line 6602
    :cond_1
    :goto_0
    const-string/jumbo v1, "rotation"

    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getRotation()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/metamoji/un/text/model/TextModel;->setProperty(Ljava/lang/String;D)V

    .line 6603
    const-string/jumbo v1, "y"

    const-string/jumbo v2, "x"

    const-wide/16 v3, 0x0

    if-eqz p1, :cond_4

    .line 6604
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getRotation()D

    move-result-wide v5

    cmpl-double p1, v3, v5

    if-nez p1, :cond_2

    .line 6606
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getX()F

    move-result p1

    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getWidth()F

    move-result v3

    add-float/2addr p1, v3

    float-to-double v3, p1

    sub-double/2addr v3, p2

    .line 6607
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getY()F

    move-result p1

    float-to-double p1, p1

    .line 6608
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getUnitWidth()F

    move-result p3

    float-to-double v5, p3

    sub-double/2addr v3, v5

    invoke-virtual {v0, v2, v3, v4}, Lcom/metamoji/un/text/model/TextModel;->setProperty(Ljava/lang/String;D)V

    .line 6609
    invoke-virtual {v0, v1, p1, p2}, Lcom/metamoji/un/text/model/TextModel;->setProperty(Ljava/lang/String;D)V

    return-object v0

    .line 6612
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextModel;->getRotatedTR()Landroid/graphics/PointF;

    move-result-object p1

    cmpl-double v1, v3, p2

    if-eqz v1, :cond_3

    .line 6615
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    .line 6616
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    .line 6617
    iget v5, p1, Landroid/graphics/PointF;->x:F

    float-to-double v5, v5

    mul-double/2addr v1, p2

    sub-double/2addr v5, v1

    double-to-float v1, v5

    iput v1, p1, Landroid/graphics/PointF;->x:F

    .line 6618
    iget v1, p1, Landroid/graphics/PointF;->y:F

    float-to-double v1, v1

    mul-double/2addr p2, v3

    sub-double/2addr v1, p2

    double-to-float p2, v1

    iput p2, p1, Landroid/graphics/PointF;->y:F

    .line 6620
    :cond_3
    invoke-virtual {v0, p1}, Lcom/metamoji/un/text/model/TextModel;->setRotatedTR(Landroid/graphics/PointF;)V

    return-object v0

    .line 6624
    :cond_4
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getRotation()D

    move-result-wide v5

    cmpl-double p1, v3, v5

    if-nez p1, :cond_5

    .line 6625
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getX()F

    move-result p1

    float-to-double v3, p1

    invoke-virtual {v0, v2, v3, v4}, Lcom/metamoji/un/text/model/TextModel;->setProperty(Ljava/lang/String;D)V

    .line 6626
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getY()F

    move-result p1

    float-to-double v2, p1

    add-double/2addr v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/metamoji/un/text/model/TextModel;->setProperty(Ljava/lang/String;D)V

    return-object v0

    .line 6631
    :cond_5
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextModel;->getRotatedTL()Landroid/graphics/PointF;

    move-result-object p1

    cmpl-double v1, v3, p2

    if-eqz v1, :cond_6

    .line 6635
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getRotation()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    .line 6636
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getRotation()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    .line 6637
    iget v5, p1, Landroid/graphics/PointF;->x:F

    float-to-double v5, v5

    mul-double/2addr v3, p2

    sub-double/2addr v5, v3

    double-to-float v3, v5

    iput v3, p1, Landroid/graphics/PointF;->x:F

    .line 6638
    iget v3, p1, Landroid/graphics/PointF;->y:F

    float-to-double v3, v3

    mul-double/2addr v1, p2

    add-double/2addr v3, v1

    double-to-float p2, v3

    iput p2, p1, Landroid/graphics/PointF;->y:F

    .line 6642
    :cond_6
    invoke-virtual {v0, p1}, Lcom/metamoji/un/text/model/TextModel;->setRotatedTL(Landroid/graphics/PointF;)V

    return-object v0
.end method

.method public static createNewTextModelFromPlainText(Ljava/lang/String;Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/un/text/IUnTextSettings;Z)Lcom/metamoji/df/model/IModel;
    .locals 10

    .line 547
    invoke-static {p1, p2}, Lcom/metamoji/un/text/UnTextUnit;->createNewTextModel(Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/un/text/IUnTextSettings;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/text/model/TextModel;

    .line 550
    invoke-virtual {p1, p0}, Lcom/metamoji/un/text/model/TextModel;->setText(Ljava/lang/CharSequence;)V

    .line 552
    new-instance p0, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 553
    invoke-interface {p2}, Lcom/metamoji/un/text/IUnTextSettings;->getTextUnitFontSize()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 554
    invoke-interface {p2}, Lcom/metamoji/un/text/IUnTextSettings;->getTextUnitLineHeight()F

    move-result p2

    invoke-static {p0, p2}, Lcom/metamoji/un/text/UnTextUnit;->getMinSizeWithFont(Landroid/graphics/Paint;F)Lcom/metamoji/cm/SizeF;

    move-result-object p0

    .line 556
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p2

    .line 557
    invoke-virtual {p2}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object p2

    .line 558
    invoke-virtual {p2}, Lcom/metamoji/nt/NtNoteController;->getCurrentRootUnitController()Lcom/metamoji/nt/NtUnitController;

    move-result-object v0

    .line 559
    invoke-virtual {v0}, Lcom/metamoji/nt/NtUnitController;->getPageController()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    .line 561
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextModel;->getVerticalWriting()Z

    move-result v1

    .line 562
    const-string v2, "height"

    const-string/jumbo v3, "width"

    const/4 v4, 0x0

    const/high16 v5, 0x41200000    # 10.0f

    if-eqz v1, :cond_3

    .line 564
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextModel;->longestLineWidth()F

    move-result v1

    .line 565
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getPaperHeight()F

    move-result v6

    if-eqz p3, :cond_1

    .line 570
    invoke-virtual {p2}, Lcom/metamoji/nt/NtNoteController;->getZoom()F

    move-result v7

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_0

    .line 571
    invoke-virtual {p2}, Lcom/metamoji/nt/NtNoteController;->getZoom()F

    move-result p2

    div-float/2addr v5, p2

    .line 573
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getViewportHeight()F

    move-result p2

    invoke-static {p2, v6}, Ljava/lang/Math;->min(FF)F

    move-result p2

    sub-float v6, p2, v5

    :cond_1
    cmpl-float p2, v1, v6

    if-lez p2, :cond_2

    move v1, v6

    .line 582
    :cond_2
    iget p0, p0, Lcom/metamoji/cm/SizeF;->height:F

    float-to-double v4, p0

    invoke-virtual {p1, v3, v4, v5}, Lcom/metamoji/un/text/model/TextModel;->setProperty(Ljava/lang/String;D)V

    float-to-double v0, v1

    .line 583
    invoke-virtual {p1, v2, v0, v1}, Lcom/metamoji/un/text/model/TextModel;->setProperty(Ljava/lang/String;D)V

    goto :goto_0

    .line 587
    :cond_3
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextModel;->longestLineWidth()F

    move-result v1

    float-to-double v6, v1

    .line 589
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getPaperWidth()F

    move-result v1

    float-to-double v8, v1

    if-eqz p3, :cond_5

    .line 594
    invoke-virtual {p2}, Lcom/metamoji/nt/NtNoteController;->getZoom()F

    move-result v1

    cmpl-float v1, v4, v1

    if-eqz v1, :cond_4

    .line 595
    invoke-virtual {p2}, Lcom/metamoji/nt/NtNoteController;->getZoom()F

    move-result p2

    div-float/2addr v5, p2

    .line 597
    :cond_4
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getViewportWidth()F

    move-result p2

    float-to-double v0, p2

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    float-to-double v4, v5

    sub-double v8, v0, v4

    :cond_5
    cmpl-double p2, v6, v8

    if-lez p2, :cond_6

    move-wide v6, v8

    .line 606
    :cond_6
    invoke-virtual {p1, v3, v6, v7}, Lcom/metamoji/un/text/model/TextModel;->setProperty(Ljava/lang/String;D)V

    .line 607
    iget p0, p0, Lcom/metamoji/cm/SizeF;->height:F

    float-to-double v0, p0

    invoke-virtual {p1, v2, v0, v1}, Lcom/metamoji/un/text/model/TextModel;->setProperty(Ljava/lang/String;D)V

    :goto_0
    if-eqz p3, :cond_7

    .line 612
    sget-object p0, Lcom/metamoji/un/text/UnTextUnit$TextUnitSizeCheckDoInitType;->TextUnitSizeCheckDoInitType_PlainTextPaste:Lcom/metamoji/un/text/UnTextUnit$TextUnitSizeCheckDoInitType;

    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit$TextUnitSizeCheckDoInitType;->toIntValue()I

    move-result p0

    const-string/jumbo p2, "textmode.sizecheck.doinit"

    invoke-virtual {p1, p2, p0}, Lcom/metamoji/un/text/model/TextModel;->setProperty(Ljava/lang/String;I)V

    :cond_7
    return-object p1
.end method

.method private createUndoModelAndAdd(Lcom/metamoji/df/controller/EditContext;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/df/controller/EditContext;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 4081
    const-string/jumbo v0, "textUnitUndo"

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lcom/metamoji/un/text/UnTextUnit$UndoPerformer;->makeNewUndoModelForController(Lcom/metamoji/df/controller/DfController;Ljava/lang/String;I)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 4082
    const-string/jumbo v1, "undoDatas"

    invoke-interface {v0, v1, p2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/List;)V

    const/4 p2, 0x1

    .line 4084
    invoke-virtual {p1, v0, p2}, Lcom/metamoji/df/controller/EditContext;->addUndo(Lcom/metamoji/df/model/IModel;Z)V

    return-void
.end method

.method private enableSendTextUnitEdittingData()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private endReconvertTask()V
    .locals 4

    .line 4001
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->_undoDatasForReconvert:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 4003
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->_undoModelForReconvert:Lcom/metamoji/df/model/IModel;

    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator;->createJSONTextRange(Lcom/metamoji/un/text/model/TextRange;)Ljava/util/Map;

    move-result-object v2

    const-string/jumbo v3, "undoSelectedTextRangeAfter"

    invoke-interface {v0, v3, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/Map;)V

    .line 4004
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->_undoModelForReconvert:Lcom/metamoji/df/model/IModel;

    const-string/jumbo v2, "undoDatas"

    iget-object v3, p0, Lcom/metamoji/un/text/UnTextUnit;->_undoDatasForReconvert:Ljava/util/List;

    invoke-interface {v0, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/List;)V

    .line 4005
    iput-object v1, p0, Lcom/metamoji/un/text/UnTextUnit;->_undoDatasForReconvert:Ljava/util/List;

    .line 4007
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->_undoModelForReconvert:Lcom/metamoji/df/model/IModel;

    invoke-direct {p0, v0}, Lcom/metamoji/un/text/UnTextUnit;->addUndoDataToSelfBuffer(Lcom/metamoji/df/model/IModel;)V

    goto :goto_0

    .line 4010
    :cond_0
    iput-object v1, p0, Lcom/metamoji/un/text/UnTextUnit;->_undoDatasForReconvert:Ljava/util/List;

    .line 4012
    :goto_0
    iput-object v1, p0, Lcom/metamoji/un/text/UnTextUnit;->_undoModelForReconvert:Lcom/metamoji/df/model/IModel;

    return-void
.end method

.method private enterStrokeReeditMode(Lcom/metamoji/un/text/UnTextUnit$ReeditMode;)V
    .locals 2

    .line 7680
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/text/UnTextUnit;->_viewForSI:Lcom/metamoji/un/text/UnTextUnit$ViewForSoftInput;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtEditorWindowController;->showSoftInput(Landroid/view/View;)Z

    .line 7682
    iput-object p1, p0, Lcom/metamoji/un/text/UnTextUnit;->_reeditMode:Lcom/metamoji/un/text/UnTextUnit$ReeditMode;

    .line 7684
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v0

    .line 7685
    invoke-direct {p0, v0}, Lcom/metamoji/un/text/UnTextUnit;->searchFirstContinualStrokesInRange(Lcom/metamoji/un/text/model/TextRange;)Lcom/metamoji/un/text/model/TextRange;

    move-result-object v1

    if-nez v1, :cond_0

    .line 7687
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/metamoji/un/text/UnTextUnit;->searchNextStrokesFromPosition(Lcom/metamoji/un/text/model/TextPosition;Z)Lcom/metamoji/un/text/model/TextRange;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_2

    .line 7690
    sget-object v0, Lcom/metamoji/un/text/UnTextUnit$ReeditMode;->Reconvert:Lcom/metamoji/un/text/UnTextUnit$ReeditMode;

    if-ne v0, p1, :cond_1

    .line 7691
    invoke-direct {p0, v1}, Lcom/metamoji/un/text/UnTextUnit;->startReconvertTask(Lcom/metamoji/un/text/model/TextRange;)V

    .line 7693
    :cond_1
    iput-object v1, p0, Lcom/metamoji/un/text/UnTextUnit;->_lastCandidateRangeForConvert:Lcom/metamoji/un/text/model/TextRange;

    .line 7695
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getMazecAction()Lcom/metamoji/un/text/MazecAction;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/metamoji/un/text/MazecAction;->setStrokeReedit(Z)V

    .line 7696
    iput-boolean v0, p0, Lcom/metamoji/un/text/UnTextUnit;->isStrokeReditMode:Z

    .line 7699
    invoke-direct {p0, v1}, Lcom/metamoji/un/text/UnTextUnit;->sendStrokesInRange(Lcom/metamoji/un/text/model/TextRange;)V

    return-void

    .line 7707
    :cond_2
    sget-object p1, Lcom/metamoji/un/text/UnTextUnit$ReeditMode;->ReNone:Lcom/metamoji/un/text/UnTextUnit$ReeditMode;

    iput-object p1, p0, Lcom/metamoji/un/text/UnTextUnit;->_reeditMode:Lcom/metamoji/un/text/UnTextUnit$ReeditMode;

    return-void
.end method

.method private existUndoDataInSelfBuffer()Z
    .locals 1

    .line 10530
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->temporaryStackedUndoDatas:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static extractTextInTextUnits(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/un/text/UnTextUnit;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    .line 7029
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 7030
    new-instance p0, Lcom/metamoji/un/text/UnTextUnit$34;

    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit$34;-><init>()V

    invoke-static {v1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 7059
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move-object v1, v0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/text/UnTextUnit;

    .line 7060
    invoke-virtual {v2}, Lcom/metamoji/un/text/UnTextUnit;->extractText()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 7061
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    move-object v2, v0

    :cond_1
    if-eqz v2, :cond_0

    if-eqz v1, :cond_2

    .line 7066
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 7067
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    if-nez v1, :cond_3

    move-object v1, v2

    goto :goto_0

    .line 7072
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    return-object v1

    :cond_5
    return-object v0
.end method

.method public static getDispTextUnitDropShadow()Z
    .locals 1

    .line 11337
    sget-object v0, Lcom/metamoji/un/text/UnTextUnit$UnTextUnitOption;->UnTextUnitOption_HideDropShadow:Lcom/metamoji/un/text/UnTextUnit$UnTextUnitOption;

    invoke-static {v0}, Lcom/metamoji/un/text/UnTextUnit;->isEnableFlagTextUnitOption(Lcom/metamoji/un/text/UnTextUnit$UnTextUnitOption;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static getFocusedTextUnit()Lcom/metamoji/un/text/UnTextUnit;
    .locals 3

    .line 10883
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 10884
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 10885
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_2

    .line 10886
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getFocusUnit()Lcom/metamoji/nt/NtUnitController;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, v1

    .line 10887
    :goto_2
    instance-of v2, v0, Lcom/metamoji/un/text/UnTextUnit;

    if-eqz v2, :cond_3

    .line 10888
    check-cast v0, Lcom/metamoji/un/text/UnTextUnit;

    return-object v0

    :cond_3
    return-object v1
.end method

.method private getInvalidateRangeRect(Lcom/metamoji/un/text/model/TextRange;)Landroid/graphics/RectF;
    .locals 13

    .line 2476
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 2479
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2480
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/un/text/model/TextModel;->caretRectInWholeViewForPosition(Lcom/metamoji/un/text/model/TextPosition;)Landroid/graphics/RectF;

    move-result-object p1

    return-object p1

    .line 2484
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getNormalizedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object p1

    .line 2485
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v0

    .line 2486
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    .line 2488
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextModel;->getLineTable()Lcom/metamoji/un/text/model/linetable/LineTable;

    move-result-object v1

    .line 2489
    invoke-virtual {v1, v0}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineIndex(Lcom/metamoji/un/text/model/TextPosition;)I

    move-result v2

    .line 2490
    invoke-virtual {v1, p1}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineIndex(Lcom/metamoji/un/text/model/TextPosition;)I

    move-result v3

    .line 2492
    invoke-virtual {v1, v2}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineInfoAtIndex(I)Lcom/metamoji/un/text/model/linetable/LineInfo;

    move-result-object v4

    if-ne v2, v3, :cond_1

    move-object v2, v4

    goto :goto_0

    .line 2497
    :cond_1
    invoke-virtual {v1, v3}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineInfoAtIndex(I)Lcom/metamoji/un/text/model/linetable/LineInfo;

    move-result-object v2

    .line 2505
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/metamoji/un/text/model/linetable/LineTable;->getRectOfTextPosition(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/ITextInput;)Landroid/graphics/RectF;

    move-result-object v0

    .line 2508
    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/metamoji/un/text/UnTextUnit;->textSprite:Lcom/metamoji/un/text/sprite/TextSprite;

    invoke-virtual {v5}, Lcom/metamoji/un/text/sprite/TextSprite;->getWidth()F

    move-result v5

    cmpg-float v3, v3, v5

    if-gez v3, :cond_2

    .line 2509
    iget-object v3, p0, Lcom/metamoji/un/text/UnTextUnit;->textSprite:Lcom/metamoji/un/text/sprite/TextSprite;

    invoke-virtual {v3}, Lcom/metamoji/un/text/sprite/TextSprite;->getWidth()F

    move-result v3

    iget v5, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v5

    invoke-static {v0, v3}, Lcom/metamoji/cm/RectUtils;->setWidth(Landroid/graphics/RectF;F)V

    .line 2513
    :cond_2
    iget-object v3, v4, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    float-to-double v5, v3

    iget-object v3, v4, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    float-to-double v7, v3

    iget-object v3, v4, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v3, v3, Lcom/metamoji/cm/SizeF;->width:F

    float-to-double v9, v3

    iget-object v3, v4, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v3, v3, Lcom/metamoji/cm/SizeF;->height:F

    float-to-double v11, v3

    invoke-static/range {v5 .. v12}, Lcom/metamoji/cm/RectUtils;->RectBySize(DDDD)Landroid/graphics/RectF;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/metamoji/cm/RectUtils;->union(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v3

    .line 2514
    iget v4, v3, Landroid/graphics/RectF;->top:F

    iput v4, v0, Landroid/graphics/RectF;->top:F

    .line 2515
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {v0, v3}, Lcom/metamoji/cm/RectUtils;->setHeight(Landroid/graphics/RectF;F)V

    .line 2522
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Lcom/metamoji/un/text/model/linetable/LineTable;->getRectOfTextPosition(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/ITextInput;)Landroid/graphics/RectF;

    move-result-object p1

    .line 2525
    iget v1, p1, Landroid/graphics/RectF;->right:F

    .line 2526
    iget v3, p1, Landroid/graphics/RectF;->left:F

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, p1, Landroid/graphics/RectF;->left:F

    .line 2527
    iget v3, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v3

    invoke-static {p1, v1}, Lcom/metamoji/cm/RectUtils;->setWidth(Landroid/graphics/RectF;F)V

    .line 2530
    iget-object v1, v2, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    float-to-double v3, v1

    iget-object v1, v2, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    float-to-double v5, v1

    iget-object v1, v2, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v1, v1, Lcom/metamoji/cm/SizeF;->width:F

    float-to-double v7, v1

    iget-object v1, v2, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v1, v1, Lcom/metamoji/cm/SizeF;->height:F

    float-to-double v9, v1

    invoke-static/range {v3 .. v10}, Lcom/metamoji/cm/RectUtils;->RectBySize(DDDD)Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/metamoji/cm/RectUtils;->union(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    .line 2531
    iget v2, v1, Landroid/graphics/RectF;->top:F

    iput v2, p1, Landroid/graphics/RectF;->top:F

    .line 2532
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-static {p1, v1}, Lcom/metamoji/cm/RectUtils;->setHeight(Landroid/graphics/RectF;F)V

    .line 2535
    invoke-static {v0, p1}, Lcom/metamoji/cm/RectUtils;->union(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    return-object p1
.end method

.method private getMinBoundRect()Landroid/graphics/RectF;
    .locals 12

    .line 7085
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getWidth()F

    move-result v0

    .line 7086
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getHeight()F

    move-result v1

    .line 7088
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getX()F

    move-result v2

    .line 7089
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getX()F

    move-result v3

    add-float/2addr v3, v0

    .line 7090
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getY()F

    move-result v4

    .line 7091
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getY()F

    move-result v5

    add-float/2addr v5, v1

    const-wide/16 v6, 0x0

    .line 7093
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getRotation()D

    move-result-wide v8

    cmpl-double v6, v6, v8

    if-nez v6, :cond_0

    .line 7094
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v2, v4, v3, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0

    .line 7096
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getRotation()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v6, v6

    .line 7097
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getRotation()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v7, v7

    .line 7098
    new-instance v8, Landroid/graphics/PointF;

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v0, v9

    add-float/2addr v0, v2

    div-float/2addr v1, v9

    add-float/2addr v1, v4

    invoke-direct {v8, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 7099
    new-instance v0, Landroid/graphics/PointF;

    iget v1, v8, Landroid/graphics/PointF;->x:F

    sub-float v1, v2, v1

    mul-float/2addr v1, v6

    iget v9, v8, Landroid/graphics/PointF;->y:F

    sub-float v9, v4, v9

    mul-float/2addr v9, v7

    sub-float/2addr v1, v9

    iget v9, v8, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v9

    iget v9, v8, Landroid/graphics/PointF;->x:F

    sub-float v9, v2, v9

    mul-float/2addr v9, v7

    iget v10, v8, Landroid/graphics/PointF;->y:F

    sub-float v10, v4, v10

    mul-float/2addr v10, v6

    add-float/2addr v9, v10

    iget v10, v8, Landroid/graphics/PointF;->y:F

    add-float/2addr v9, v10

    invoke-direct {v0, v1, v9}, Landroid/graphics/PointF;-><init>(FF)V

    .line 7102
    new-instance v1, Landroid/graphics/PointF;

    iget v9, v8, Landroid/graphics/PointF;->x:F

    sub-float v9, v3, v9

    mul-float/2addr v9, v6

    iget v10, v8, Landroid/graphics/PointF;->y:F

    sub-float v10, v4, v10

    mul-float/2addr v10, v7

    sub-float/2addr v9, v10

    iget v10, v8, Landroid/graphics/PointF;->x:F

    add-float/2addr v9, v10

    iget v10, v8, Landroid/graphics/PointF;->x:F

    sub-float v10, v3, v10

    mul-float/2addr v10, v7

    iget v11, v8, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v11

    mul-float/2addr v4, v6

    add-float/2addr v10, v4

    iget v4, v8, Landroid/graphics/PointF;->y:F

    add-float/2addr v10, v4

    invoke-direct {v1, v9, v10}, Landroid/graphics/PointF;-><init>(FF)V

    .line 7105
    new-instance v4, Landroid/graphics/PointF;

    iget v9, v8, Landroid/graphics/PointF;->x:F

    sub-float v9, v2, v9

    mul-float/2addr v9, v6

    iget v10, v8, Landroid/graphics/PointF;->y:F

    sub-float v10, v5, v10

    mul-float/2addr v10, v7

    sub-float/2addr v9, v10

    iget v10, v8, Landroid/graphics/PointF;->x:F

    add-float/2addr v9, v10

    iget v10, v8, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v10

    mul-float/2addr v2, v7

    iget v10, v8, Landroid/graphics/PointF;->y:F

    sub-float v10, v5, v10

    mul-float/2addr v10, v6

    add-float/2addr v2, v10

    iget v10, v8, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v10

    invoke-direct {v4, v9, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 7108
    new-instance v2, Landroid/graphics/PointF;

    iget v9, v8, Landroid/graphics/PointF;->x:F

    sub-float v9, v3, v9

    mul-float/2addr v9, v6

    iget v10, v8, Landroid/graphics/PointF;->y:F

    sub-float v10, v5, v10

    mul-float/2addr v10, v7

    sub-float/2addr v9, v10

    iget v10, v8, Landroid/graphics/PointF;->x:F

    add-float/2addr v9, v10

    iget v10, v8, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v10

    mul-float/2addr v3, v7

    iget v7, v8, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v7

    mul-float/2addr v5, v6

    add-float/2addr v3, v5

    iget v5, v8, Landroid/graphics/PointF;->y:F

    add-float/2addr v3, v5

    invoke-direct {v2, v9, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 7112
    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v5, v1, Landroid/graphics/PointF;->x:F

    iget v6, v4, Landroid/graphics/PointF;->x:F

    iget v7, v2, Landroid/graphics/PointF;->x:F

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 7113
    iget v5, v0, Landroid/graphics/PointF;->y:F

    iget v6, v1, Landroid/graphics/PointF;->y:F

    iget v7, v4, Landroid/graphics/PointF;->y:F

    iget v8, v2, Landroid/graphics/PointF;->y:F

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 7114
    iget v6, v0, Landroid/graphics/PointF;->x:F

    iget v7, v1, Landroid/graphics/PointF;->x:F

    iget v8, v4, Landroid/graphics/PointF;->x:F

    iget v9, v2, Landroid/graphics/PointF;->x:F

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 7115
    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 7117
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v3, v5, v6, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v1
.end method

.method private static getMinSizeWithFont(Landroid/graphics/Paint;F)Lcom/metamoji/cm/SizeF;
    .locals 3

    .line 626
    const-string/jumbo v0, "\uff37"

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x40a00000    # 5.0f

    mul-float/2addr v0, v1

    .line 627
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p0

    .line 628
    iget v1, p0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v1, v1

    iget p0, p0, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v1, p0

    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float v2, p1, p0

    if-ltz v2, :cond_0

    sub-float/2addr p1, p0

    const/4 p0, 0x0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_0

    mul-float/2addr p1, v1

    add-float/2addr v1, p1

    .line 641
    :cond_0
    new-instance p0, Lcom/metamoji/cm/SizeF;

    invoke-direct {p0, v0, v1}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    return-object p0
.end method

.method private getSendDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;
    .locals 2

    .line 11821
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->isDirectable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 11826
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 11830
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getAppFrame()Lcom/metamoji/nt/INtAppFrame;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/nt/INtAppFrame;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object v0

    return-object v0
.end method

.method public static getSingleSelectionTextUnit()Lcom/metamoji/un/text/UnTextUnit;
    .locals 5

    .line 6985
    invoke-static {}, Lcom/metamoji/un/text/UnTextUnitStateManager;->sharedInstance()Lcom/metamoji/un/text/UnTextUnitStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnitStateManager;->focusTextUnit()Lcom/metamoji/un/text/UnTextUnit;

    move-result-object v0

    if-nez v0, :cond_1

    .line 6988
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v1

    .line 6989
    invoke-virtual {v1}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v1

    .line 6990
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getCurrentRootUnitController()Lcom/metamoji/nt/NtUnitController;

    move-result-object v1

    .line 6993
    instance-of v2, v1, Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    if-eqz v2, :cond_0

    .line 6994
    check-cast v1, Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 7000
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->getSelectedUnitControllers()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    .line 7002
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 7005
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->isSelectingStroke()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->isSelectingShape()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 7007
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/nt/NtUnitController;

    .line 7008
    instance-of v2, v1, Lcom/metamoji/un/text/UnTextUnit;

    if-eqz v2, :cond_1

    .line 7009
    check-cast v1, Lcom/metamoji/un/text/UnTextUnit;

    return-object v1

    :cond_1
    return-object v0
.end method

.method private static getTextUnitCombineUnits()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/nt/NtUnitController;",
            ">;"
        }
    .end annotation

    .line 6665
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtFeature;->CombineTextUnit:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 6669
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 6670
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    .line 6671
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentRootUnitController()Lcom/metamoji/nt/NtUnitController;

    move-result-object v0

    .line 6674
    instance-of v2, v0, Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    if-eqz v2, :cond_1

    .line 6675
    check-cast v0, Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 6681
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->getSelectedUnitControllers()Ljava/util/List;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_b

    .line 6685
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_3

    goto :goto_3

    :cond_3
    if-eqz v0, :cond_5

    .line 6691
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->isSelectingStroke()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->isSelectingShape()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    return-object v1

    .line 6699
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    move v4, v3

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/nt/NtUnitController;

    .line 6701
    instance-of v6, v5, Lcom/metamoji/un/text/UnTextUnit;

    if-nez v6, :cond_7

    return-object v1

    .line 6705
    :cond_7
    check-cast v5, Lcom/metamoji/un/text/UnTextUnit;

    invoke-virtual {v5}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v6

    .line 6706
    invoke-virtual {v6}, Lcom/metamoji/un/text/model/TextModel;->getVerticalWriting()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_8

    move v3, v7

    goto :goto_2

    :cond_8
    move v4, v7

    :goto_2
    if-eqz v3, :cond_9

    if-eqz v4, :cond_9

    return-object v1

    .line 6714
    :cond_9
    invoke-virtual {v5}, Lcom/metamoji/un/text/UnTextUnit;->isEditableTextUnit()Z

    move-result v5

    if-nez v5, :cond_6

    return-object v1

    :cond_a
    return-object v2

    :cond_b
    :goto_3
    return-object v1
.end method

.method public static getTextUnitOption()I
    .locals 3

    .line 11276
    sget v0, Lcom/metamoji/un/text/UnTextUnit;->s_textUnitOption:I

    if-gez v0, :cond_0

    .line 11277
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    sget-object v1, Lcom/metamoji/un/text/UnTextUnit$UnTextUnitOption;->UnTextUnitOption_None:Lcom/metamoji/un/text/UnTextUnit$UnTextUnitOption;

    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnit$UnTextUnitOption;->toIntValue()I

    move-result v1

    const-string v2, "MMJTextUnitOption"

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/nt/NtUserDefaults;->getIntValue(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/metamoji/un/text/UnTextUnit;->s_textUnitOption:I

    .line 11280
    :cond_0
    sget v0, Lcom/metamoji/un/text/UnTextUnit;->s_textUnitOption:I

    return v0
.end method

.method private handleChangeTextStyleAttributes(Lcom/metamoji/un/text/model/UnitStyles;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 9932
    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v10, 0x0

    .line 9936
    iput-object v10, v0, Lcom/metamoji/un/text/UnTextUnit;->preResizeUndoData:Ljava/util/Map;

    const/4 v2, 0x0

    .line 9937
    iput-boolean v2, v0, Lcom/metamoji/un/text/UnTextUnit;->inhibitAddSelfResizeUndo:Z

    .line 9939
    const-string/jumbo v3, "textUnitStyle"

    invoke-virtual {v0, v3}, Lcom/metamoji/un/text/UnTextUnit;->startEditTextTask(Ljava/lang/String;)V

    .line 9941
    new-instance v11, Lcom/metamoji/un/text/model/UnitStyles;

    invoke-direct {v11}, Lcom/metamoji/un/text/model/UnitStyles;-><init>()V

    .line 9942
    new-instance v3, Lcom/metamoji/un/text/model/UnitStyles;

    invoke-direct {v3}, Lcom/metamoji/un/text/model/UnitStyles;-><init>()V

    .line 9945
    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/un/text/model/TextModel;->getDefaultStringAttributes()Lcom/metamoji/un/text/model/attr/StringAttributes;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/un/text/model/attr/StringAttributes;->getFontName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/metamoji/un/text/FontUtils;->getRenderingFontInfo(Ljava/lang/String;)Lcom/metamoji/un/text/FontInfo;

    move-result-object v4

    .line 9946
    iget-object v5, v1, Lcom/metamoji/un/text/model/UnitStyles;->fontFamilyName:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v4, v4, Lcom/metamoji/un/text/FontInfo;->familyName:Ljava/lang/String;

    iget-object v5, v1, Lcom/metamoji/un/text/model/UnitStyles;->fontFamilyName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 9948
    iget-object v4, v1, Lcom/metamoji/un/text/model/UnitStyles;->fontFamilyName:Ljava/lang/String;

    iput-object v4, v11, Lcom/metamoji/un/text/model/UnitStyles;->fontFamilyName:Ljava/lang/String;

    .line 9949
    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/un/text/model/TextModel;->getDefaultStringAttributes()Lcom/metamoji/un/text/model/attr/StringAttributes;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/un/text/model/attr/StringAttributes;->getFontName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/metamoji/un/text/model/UnitStyles;->fontFamilyName:Ljava/lang/String;

    .line 9953
    :cond_1
    iget-object v4, v1, Lcom/metamoji/un/text/model/UnitStyles;->fontSize:Ljava/lang/Float;

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/un/text/model/TextModel;->getDefaultStringAttributes()Lcom/metamoji/un/text/model/attr/StringAttributes;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/un/text/model/attr/StringAttributes;->getFontSize()F

    move-result v4

    iget-object v5, v1, Lcom/metamoji/un/text/model/UnitStyles;->fontSize:Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_2

    .line 9955
    iget-object v4, v1, Lcom/metamoji/un/text/model/UnitStyles;->fontSize:Ljava/lang/Float;

    iput-object v4, v11, Lcom/metamoji/un/text/model/UnitStyles;->fontSize:Ljava/lang/Float;

    .line 9956
    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/un/text/model/TextModel;->getDefaultStringAttributes()Lcom/metamoji/un/text/model/attr/StringAttributes;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/un/text/model/attr/StringAttributes;->getFontSize()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, v3, Lcom/metamoji/un/text/model/UnitStyles;->fontSize:Ljava/lang/Float;

    .line 9960
    :cond_2
    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/un/text/model/TextModel;->getDefaultUnitFontColor()Lcom/metamoji/un/text/model/ColorComponent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/un/text/model/ColorComponent;->getUIColor()I

    move-result v4

    .line 9961
    iget-object v5, v1, Lcom/metamoji/un/text/model/UnitStyles;->charColor:Ljava/lang/Integer;

    if-eqz v5, :cond_3

    iget-object v5, v1, Lcom/metamoji/un/text/model/UnitStyles;->charColor:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v4, v5, :cond_3

    .line 9963
    iget-object v5, v1, Lcom/metamoji/un/text/model/UnitStyles;->charColor:Ljava/lang/Integer;

    iput-object v5, v11, Lcom/metamoji/un/text/model/UnitStyles;->charColor:Ljava/lang/Integer;

    .line 9964
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Lcom/metamoji/un/text/model/UnitStyles;->charColor:Ljava/lang/Integer;

    .line 9968
    :cond_3
    iget-object v4, v1, Lcom/metamoji/un/text/model/UnitStyles;->lineHeight:Ljava/lang/Float;

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/un/text/model/TextModel;->getLineSpacing()F

    move-result v4

    iget-object v5, v1, Lcom/metamoji/un/text/model/UnitStyles;->lineHeight:Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_4

    .line 9970
    iget-object v4, v1, Lcom/metamoji/un/text/model/UnitStyles;->lineHeight:Ljava/lang/Float;

    iput-object v4, v11, Lcom/metamoji/un/text/model/UnitStyles;->lineHeight:Ljava/lang/Float;

    .line 9971
    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/un/text/model/TextModel;->getLineSpacing()F

    move-result v4

    add-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, v3, Lcom/metamoji/un/text/model/UnitStyles;->lineHeight:Ljava/lang/Float;

    .line 9975
    :cond_4
    iget-object v4, v1, Lcom/metamoji/un/text/model/UnitStyles;->ruledLineStyle:Lcom/metamoji/un/text/model/RuledLineStyle;

    if-eqz v4, :cond_5

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/un/text/model/TextModel;->getRuledLineStyle()Lcom/metamoji/un/text/model/RuledLineStyle;

    move-result-object v4

    iget-object v5, v1, Lcom/metamoji/un/text/model/UnitStyles;->ruledLineStyle:Lcom/metamoji/un/text/model/RuledLineStyle;

    if-eq v4, v5, :cond_5

    .line 9977
    iget-object v4, v1, Lcom/metamoji/un/text/model/UnitStyles;->ruledLineStyle:Lcom/metamoji/un/text/model/RuledLineStyle;

    iput-object v4, v11, Lcom/metamoji/un/text/model/UnitStyles;->ruledLineStyle:Lcom/metamoji/un/text/model/RuledLineStyle;

    .line 9978
    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/un/text/model/TextModel;->getRuledLineStyle()Lcom/metamoji/un/text/model/RuledLineStyle;

    move-result-object v4

    iput-object v4, v3, Lcom/metamoji/un/text/model/UnitStyles;->ruledLineStyle:Lcom/metamoji/un/text/model/RuledLineStyle;

    .line 9982
    :cond_5
    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/un/text/model/TextModel;->getUnitBackgroundColor()Lcom/metamoji/un/text/model/ColorComponent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/un/text/model/ColorComponent;->getUIColor()I

    move-result v4

    .line 9983
    iget-object v5, v1, Lcom/metamoji/un/text/model/UnitStyles;->bgColor:Ljava/lang/Integer;

    if-eqz v5, :cond_6

    iget-object v5, v1, Lcom/metamoji/un/text/model/UnitStyles;->bgColor:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v4, v5, :cond_6

    .line 9985
    iget-object v5, v1, Lcom/metamoji/un/text/model/UnitStyles;->bgColor:Ljava/lang/Integer;

    iput-object v5, v11, Lcom/metamoji/un/text/model/UnitStyles;->bgColor:Ljava/lang/Integer;

    .line 9986
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Lcom/metamoji/un/text/model/UnitStyles;->bgColor:Ljava/lang/Integer;

    .line 9990
    :cond_6
    iget-object v4, v1, Lcom/metamoji/un/text/model/UnitStyles;->unitBorderStyle:Lcom/metamoji/un/text/model/UnitBorderStyle;

    if-eqz v4, :cond_7

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/un/text/model/TextModel;->getUnitBorderStyle()Lcom/metamoji/un/text/model/UnitBorderStyle;

    move-result-object v4

    iget-object v5, v1, Lcom/metamoji/un/text/model/UnitStyles;->unitBorderStyle:Lcom/metamoji/un/text/model/UnitBorderStyle;

    if-eq v4, v5, :cond_7

    .line 9992
    iget-object v4, v1, Lcom/metamoji/un/text/model/UnitStyles;->unitBorderStyle:Lcom/metamoji/un/text/model/UnitBorderStyle;

    iput-object v4, v11, Lcom/metamoji/un/text/model/UnitStyles;->unitBorderStyle:Lcom/metamoji/un/text/model/UnitBorderStyle;

    .line 9993
    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/un/text/model/TextModel;->getUnitBorderStyle()Lcom/metamoji/un/text/model/UnitBorderStyle;

    move-result-object v4

    iput-object v4, v3, Lcom/metamoji/un/text/model/UnitStyles;->unitBorderStyle:Lcom/metamoji/un/text/model/UnitBorderStyle;

    .line 9997
    :cond_7
    sget-boolean v4, Lcom/metamoji/noteanytime/ModelInfo;->isTextVerticalWritingEnabled:Z

    if-eqz v4, :cond_8

    iget-object v4, v1, Lcom/metamoji/un/text/model/UnitStyles;->verticalWriting:Ljava/lang/Boolean;

    if-eqz v4, :cond_8

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/un/text/model/TextModel;->getVerticalWriting()Z

    move-result v4

    iget-object v5, v1, Lcom/metamoji/un/text/model/UnitStyles;->verticalWriting:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eq v4, v5, :cond_8

    .line 9999
    iget-object v1, v1, Lcom/metamoji/un/text/model/UnitStyles;->verticalWriting:Ljava/lang/Boolean;

    iput-object v1, v11, Lcom/metamoji/un/text/model/UnitStyles;->verticalWriting:Ljava/lang/Boolean;

    .line 10000
    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextModel;->getVerticalWriting()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v3, Lcom/metamoji/un/text/model/UnitStyles;->verticalWriting:Ljava/lang/Boolean;

    .line 10003
    :cond_8
    iget-object v1, v11, Lcom/metamoji/un/text/model/UnitStyles;->fontSize:Ljava/lang/Float;

    const/4 v12, 0x1

    invoke-static {v3, v1, v12}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator;->createUnitStyleParams(Lcom/metamoji/un/text/model/UnitStyles;Ljava/lang/Float;Z)Ljava/util/Map;

    move-result-object v1

    .line 10004
    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/UnTextUnit;->addUndoData(Ljava/util/Map;)V

    .line 10005
    iput-object v1, v0, Lcom/metamoji/un/text/UnTextUnit;->preResizeUndoData:Ljava/util/Map;

    .line 10007
    new-instance v13, Lcom/metamoji/cm/mutable/MutableBoolean;

    invoke-direct {v13, v2}, Lcom/metamoji/cm/mutable/MutableBoolean;-><init>(Z)V

    .line 10008
    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v1

    invoke-virtual {v1, v11, v12, v2, v13}, Lcom/metamoji/un/text/model/TextModel;->setUnitStyles(Lcom/metamoji/un/text/model/UnitStyles;ZZLcom/metamoji/cm/mutable/MutableBoolean;)V

    .line 10011
    iget-object v1, v11, Lcom/metamoji/un/text/model/UnitStyles;->verticalWriting:Ljava/lang/Boolean;

    if-eqz v1, :cond_e

    .line 10012
    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextModel;->getUnitWidth()F

    move-result v1

    .line 10013
    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/TextModel;->getUnitHeight()F

    move-result v2

    .line 10017
    new-instance v3, Lcom/metamoji/cm/SizeF;

    invoke-direct {v3, v2, v1}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    .line 10018
    new-instance v4, Lcom/metamoji/df/controller/GeometricProps;

    invoke-direct {v4}, Lcom/metamoji/df/controller/GeometricProps;-><init>()V

    .line 10019
    iput-object v3, v4, Lcom/metamoji/df/controller/GeometricProps;->size:Lcom/metamoji/cm/SizeF;

    .line 10023
    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->getRotation()D

    move-result-wide v5

    .line 10024
    new-instance v3, Landroid/graphics/PointF;

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->getX()F

    move-result v7

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->getY()F

    move-result v8

    invoke-direct {v3, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    const-wide/16 v7, 0x0

    cmpl-double v5, v7, v5

    if-nez v5, :cond_9

    .line 10036
    new-instance v1, Landroid/graphics/PointF;

    iget v2, v3, Landroid/graphics/PointF;->x:F

    iget v5, v3, Landroid/graphics/PointF;->y:F

    invoke-direct {v1, v2, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 10038
    new-instance v2, Landroid/graphics/PointF;

    iget v5, v3, Landroid/graphics/PointF;->x:F

    iget v6, v3, Landroid/graphics/PointF;->y:F

    invoke-direct {v2, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    move-object/from16 v18, v13

    goto/16 :goto_0

    .line 10049
    :cond_9
    new-instance v5, Landroid/graphics/PointF;

    neg-float v6, v1

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    neg-float v8, v2

    div-float/2addr v8, v7

    invoke-direct {v5, v6, v8}, Landroid/graphics/PointF;-><init>(FF)V

    .line 10050
    new-instance v9, Landroid/graphics/PointF;

    invoke-direct {v9, v8, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 10053
    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->getRotation()D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    .line 10054
    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->getRotation()D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    .line 10055
    new-instance v6, Landroid/graphics/PointF;

    iget v8, v5, Landroid/graphics/PointF;->x:F

    move/from16 p1, v7

    float-to-double v7, v8

    mul-double/2addr v7, v14

    iget v10, v5, Landroid/graphics/PointF;->y:F

    move-object/from16 v18, v13

    float-to-double v12, v10

    mul-double v12, v12, v16

    sub-double/2addr v7, v12

    double-to-float v7, v7

    iget v8, v5, Landroid/graphics/PointF;->x:F

    float-to-double v12, v8

    mul-double v12, v12, v16

    iget v5, v5, Landroid/graphics/PointF;->y:F

    move v8, v1

    move v10, v2

    float-to-double v1, v5

    mul-double/2addr v1, v14

    add-double/2addr v12, v1

    double-to-float v1, v12

    invoke-direct {v6, v7, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 10057
    iget v1, v6, Landroid/graphics/PointF;->x:F

    iget v2, v3, Landroid/graphics/PointF;->x:F

    div-float v5, v8, p1

    add-float/2addr v2, v5

    add-float/2addr v1, v2

    iput v1, v6, Landroid/graphics/PointF;->x:F

    .line 10058
    iget v1, v6, Landroid/graphics/PointF;->y:F

    iget v2, v3, Landroid/graphics/PointF;->y:F

    div-float v7, v10, p1

    add-float/2addr v2, v7

    add-float/2addr v1, v2

    iput v1, v6, Landroid/graphics/PointF;->y:F

    .line 10060
    new-instance v2, Landroid/graphics/PointF;

    iget v1, v9, Landroid/graphics/PointF;->x:F

    float-to-double v12, v1

    mul-double/2addr v12, v14

    iget v1, v9, Landroid/graphics/PointF;->y:F

    move v8, v5

    move-object/from16 p1, v6

    float-to-double v5, v1

    mul-double v5, v5, v16

    sub-double/2addr v12, v5

    double-to-float v1, v12

    iget v5, v9, Landroid/graphics/PointF;->x:F

    float-to-double v5, v5

    mul-double v5, v5, v16

    iget v9, v9, Landroid/graphics/PointF;->y:F

    float-to-double v9, v9

    mul-double/2addr v9, v14

    add-double/2addr v5, v9

    double-to-float v5, v5

    invoke-direct {v2, v1, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 10062
    iget v1, v2, Landroid/graphics/PointF;->x:F

    iget v5, v3, Landroid/graphics/PointF;->x:F

    add-float/2addr v5, v7

    add-float/2addr v1, v5

    iput v1, v2, Landroid/graphics/PointF;->x:F

    .line 10063
    iget v1, v2, Landroid/graphics/PointF;->y:F

    iget v5, v3, Landroid/graphics/PointF;->y:F

    add-float/2addr v5, v8

    add-float/2addr v1, v5

    iput v1, v2, Landroid/graphics/PointF;->y:F

    move-object/from16 v1, p1

    .line 10066
    :goto_0
    new-instance v5, Landroid/graphics/PointF;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 10067
    iget v7, v2, Landroid/graphics/PointF;->x:F

    iget v8, v1, Landroid/graphics/PointF;->x:F

    cmpl-float v7, v7, v8

    if-nez v7, :cond_a

    iget v7, v2, Landroid/graphics/PointF;->y:F

    iget v8, v1, Landroid/graphics/PointF;->y:F

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_b

    .line 10068
    :cond_a
    new-instance v5, Landroid/graphics/PointF;

    iget v7, v2, Landroid/graphics/PointF;->x:F

    iget v8, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v7, v8

    neg-float v7, v7

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v1

    neg-float v1, v2

    invoke-direct {v5, v7, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 10077
    :cond_b
    iget v1, v5, Landroid/graphics/PointF;->x:F

    cmpl-float v1, v1, v6

    if-nez v1, :cond_c

    iget v1, v5, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, v6

    if-eqz v1, :cond_d

    .line 10078
    :cond_c
    new-instance v1, Landroid/graphics/PointF;

    iget v2, v3, Landroid/graphics/PointF;->x:F

    iget v6, v5, Landroid/graphics/PointF;->x:F

    add-float/2addr v2, v6

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v5, v5, Landroid/graphics/PointF;->y:F

    add-float/2addr v3, v5

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, v4, Lcom/metamoji/df/controller/GeometricProps;->origin:Landroid/graphics/PointF;

    .line 10080
    :cond_d
    iget-object v8, v0, Lcom/metamoji/un/text/UnTextUnit;->preResizeUndoData:Ljava/util/Map;

    iget-boolean v9, v0, Lcom/metamoji/un/text/UnTextUnit;->inhibitAddSelfResizeUndo:Z

    const/4 v3, 0x1

    move-object v1, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v9}, Lcom/metamoji/un/text/UnTextUnit;->setGeometricPropsSelf(Lcom/metamoji/df/controller/GeometricProps;Lcom/metamoji/un/text/model/undo/ITextUndoManager;ZZZLjava/util/List;ZLjava/util/Map;Z)Z

    move-object/from16 v1, v18

    const/4 v2, 0x1

    .line 10081
    invoke-virtual {v1, v2}, Lcom/metamoji/cm/mutable/MutableBoolean;->setValue(Z)V

    goto :goto_1

    :cond_e
    move-object v1, v13

    .line 10084
    :goto_1
    invoke-virtual {v1}, Lcom/metamoji/cm/mutable/MutableBoolean;->getValue()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 10085
    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/metamoji/un/text/model/TextModel;->needsRemakeLineTableWithUnitSizeSelfAdjustmentFromPosition(Lcom/metamoji/un/text/model/TextPosition;)V

    .line 10104
    :cond_f
    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->endEditTextTask()V

    .line 10107
    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 10109
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v1

    .line 10110
    invoke-interface {v1}, Lcom/metamoji/nt/INtEditor;->getTextUnitInputStyleBar()Lcom/metamoji/nt/NtTextUnitInputStyleBar;

    move-result-object v2

    if-eqz v2, :cond_10

    invoke-interface {v1}, Lcom/metamoji/nt/INtEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->beTextUnitInputStyleBarShown(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 10111
    invoke-interface {v1}, Lcom/metamoji/nt/INtEditor;->getTextUnitInputStyleBar()Lcom/metamoji/nt/NtTextUnitInputStyleBar;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->updateDefaultValue(Lcom/metamoji/un/text/model/UnitStyles;)V

    .line 10115
    :cond_10
    iget-boolean v1, v0, Lcom/metamoji/un/text/UnTextUnit;->editing:Z

    if-eqz v1, :cond_12

    .line 10116
    invoke-direct {v0}, Lcom/metamoji/un/text/UnTextUnit;->enableSendTextUnitEdittingData()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 10118
    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->sendTextUnitEdittingData()V

    :cond_11
    :goto_2
    return-void

    .line 10122
    :cond_12
    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->sendTextUnitData()V

    return-void
.end method

.method private handleChangeTextUnitVerticalWriting()V
    .locals 3

    .line 11255
    new-instance v0, Lcom/metamoji/un/text/model/UnitStyles;

    invoke-direct {v0}, Lcom/metamoji/un/text/model/UnitStyles;-><init>()V

    .line 11256
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextModel;->getVerticalWriting()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 11257
    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, v1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v2, v0, Lcom/metamoji/un/text/model/UnitStyles;->verticalWriting:Ljava/lang/Boolean;

    .line 11258
    invoke-direct {p0, v0}, Lcom/metamoji/un/text/UnTextUnit;->handleChangeTextStyleAttributes(Lcom/metamoji/un/text/model/UnitStyles;)V

    .line 11261
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 11262
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    .line 11263
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtNoteController;->setNoteSettingsVerticalWriting(Z)V

    return-void
.end method

.method private handleCharDecoFontTap(Ljava/lang/String;)V
    .locals 3

    .line 5462
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getDefaultStringAttributes()Lcom/metamoji/un/text/model/attr/StringAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/attr/StringAttributes;->getFontName()Ljava/lang/String;

    move-result-object v0

    .line 5463
    invoke-static {v0}, Lcom/metamoji/un/text/FontUtils;->getRenderingFontInfo(Ljava/lang/String;)Lcom/metamoji/un/text/FontInfo;

    move-result-object v0

    .line 5464
    new-instance v1, Lcom/metamoji/ui/dialog/FontList;

    iget-object v2, v0, Lcom/metamoji/un/text/FontInfo;->familyName:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Lcom/metamoji/ui/dialog/FontList;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5466
    new-instance p1, Lcom/metamoji/un/text/UnTextUnit$24;

    invoke-direct {p1, p0, v1, v0}, Lcom/metamoji/un/text/UnTextUnit$24;-><init>(Lcom/metamoji/un/text/UnTextUnit;Lcom/metamoji/ui/dialog/FontList;Lcom/metamoji/un/text/FontInfo;)V

    invoke-virtual {v1, p1}, Lcom/metamoji/ui/dialog/FontList;->setOnClosedListener(Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V

    .line 5486
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object p1

    invoke-interface {p1}, Lcom/metamoji/nt/INtEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 5487
    const-string v0, "FontList"

    invoke-virtual {v1, p1, v0}, Lcom/metamoji/ui/dialog/FontList;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private handleCharDecoTextBoldTap(I)V
    .locals 0

    .line 5768
    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/UnTextUnit;->changeAttrFontWeight(I)V

    .line 5769
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->updateInputStyleBar()V

    .line 5776
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->appearContextMenu()V

    return-void
.end method

.method private handleCharDecoTextColorTap(Ljava/lang/Integer;Z)V
    .locals 2

    .line 5576
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getDefaultStringAttributes()Lcom/metamoji/un/text/model/attr/StringAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/attr/StringAttributes;->getColor()Lcom/metamoji/un/text/model/ColorComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/ColorComponent;->getUIColor()I

    move-result v0

    .line 5577
    new-instance v1, Lcom/metamoji/ui/dialog/TextColor;

    invoke-direct {v1, p1, p2, v0}, Lcom/metamoji/ui/dialog/TextColor;-><init>(Ljava/lang/Integer;ZI)V

    .line 5579
    new-instance p1, Lcom/metamoji/un/text/UnTextUnit$26;

    invoke-direct {p1, p0, v1}, Lcom/metamoji/un/text/UnTextUnit$26;-><init>(Lcom/metamoji/un/text/UnTextUnit;Lcom/metamoji/ui/dialog/TextColor;)V

    invoke-virtual {v1, p1}, Lcom/metamoji/ui/dialog/TextColor;->setOnClosedListener(Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V

    .line 5598
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object p1

    invoke-interface {p1}, Lcom/metamoji/nt/INtEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 5599
    const-string p2, "TextColor"

    invoke-virtual {v1, p1, p2}, Lcom/metamoji/ui/dialog/TextColor;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private handleCharDecoTextItalicTap(Z)V
    .locals 0

    .line 5796
    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/UnTextUnit;->changeAttrFontItalic(Z)V

    .line 5797
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->updateInputStyleBar()V

    .line 5805
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->appearContextMenu()V

    return-void
.end method

.method private handleCharDecoTextParticalBackgroundColorTap(Ljava/lang/Integer;Z)V
    .locals 1

    .line 5731
    new-instance v0, Lcom/metamoji/ui/dialog/BackgroundColor;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5732
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_0
    sget p2, Lcom/metamoji/noteanytime/R$string;->CHARDECORATION_BACKGROUNDCOLOR:I

    invoke-direct {v0, p1, p2}, Lcom/metamoji/ui/dialog/BackgroundColor;-><init>(Ljava/lang/Integer;I)V

    .line 5734
    new-instance p1, Lcom/metamoji/un/text/UnTextUnit$27;

    invoke-direct {p1, p0, v0}, Lcom/metamoji/un/text/UnTextUnit$27;-><init>(Lcom/metamoji/un/text/UnTextUnit;Lcom/metamoji/ui/dialog/BackgroundColor;)V

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/dialog/BackgroundColor;->setOnClosedListener(Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V

    .line 5756
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object p1

    invoke-interface {p1}, Lcom/metamoji/nt/INtEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 5757
    const-string p2, "CharDecoTextParticalBackgroundColor"

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/ui/dialog/BackgroundColor;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private handleCharDecoTextSizeTap(Ljava/lang/Float;Z)V
    .locals 2

    .line 5519
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getDefaultStringAttributes()Lcom/metamoji/un/text/model/attr/StringAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/attr/StringAttributes;->getFontSize()F

    move-result v0

    .line 5520
    new-instance v1, Lcom/metamoji/ui/dialog/TextSize;

    invoke-direct {v1, p1, p2, v0}, Lcom/metamoji/ui/dialog/TextSize;-><init>(Ljava/lang/Float;ZF)V

    .line 5522
    new-instance p1, Lcom/metamoji/un/text/UnTextUnit$25;

    invoke-direct {p1, p0, v1}, Lcom/metamoji/un/text/UnTextUnit$25;-><init>(Lcom/metamoji/un/text/UnTextUnit;Lcom/metamoji/ui/dialog/TextSize;)V

    invoke-virtual {v1, p1}, Lcom/metamoji/ui/dialog/TextSize;->setOnClosedListener(Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V

    .line 5540
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object p1

    invoke-interface {p1}, Lcom/metamoji/nt/INtEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 5541
    const-string p2, "TextSize"

    invoke-virtual {v1, p1, p2}, Lcom/metamoji/ui/dialog/TextSize;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private handleCharDecoTextStrikeThroughTap(Z)V
    .locals 0

    .line 5857
    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/UnTextUnit;->changeAttrFontStrikeThrough(Z)V

    .line 5858
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->updateInputStyleBar()V

    .line 5865
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->appearContextMenu()V

    return-void
.end method

.method private handleCharDecoTextUnderLineTap(Z)V
    .locals 0

    .line 5827
    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/UnTextUnit;->changeAttrFontUnderline(Z)V

    .line 5828
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->updateInputStyleBar()V

    .line 5835
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->appearContextMenu()V

    return-void
.end method

.method private handleCommandMenu(Lcom/metamoji/un/text/UnTextUnit$CommandId;Ljava/lang/Object;)V
    .locals 4

    .line 4940
    invoke-virtual {p1}, Lcom/metamoji/un/text/UnTextUnit$CommandId;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    return-void

    .line 5168
    :pswitch_1
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->commandDisplayQRCode()V

    return-void

    .line 5163
    :pswitch_2
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object p2, Lcom/metamoji/nt/NtCommand;->CMD_VC_DETACH_VOICE_TAG_SELECTED_OBJECTS:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, p2, v1}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return-void

    .line 5155
    :pswitch_3
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object p2, Lcom/metamoji/nt/NtCommand;->CMD_VC_PLAY_FROM_VOICE_TAG:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, p2, v1}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return-void

    .line 5148
    :pswitch_4
    new-instance p1, Lcom/metamoji/cm/CmContext;

    invoke-direct {p1}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 5149
    const-string v0, "authorInfos"

    invoke-virtual {p1, v0, p2}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5150
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p2

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_VC_PLAY_FROM_AUTHOR_INFO:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p2, v0, p1}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return-void

    .line 5136
    :pswitch_5
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->commandTextUnitStyleToSystem()V

    return-void

    .line 5132
    :pswitch_6
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->commandBulletedListRemove()V

    return-void

    .line 5128
    :pswitch_7
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->commandBulletedListLevelPromote()V

    return-void

    .line 5124
    :pswitch_8
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->commandBulletedListLevelDemote()V

    return-void

    .line 5120
    :pswitch_9
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->commandInsertBulletedListNumbered()V

    return-void

    .line 5116
    :pswitch_a
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->commandInsertBulletedList()V

    return-void

    .line 5110
    :pswitch_b
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->commandSeparateUnit()V

    return-void

    .line 5095
    :pswitch_c
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->commandTextUnitStyle()V

    return-void

    .line 5088
    :pswitch_d
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->commandInsertLineSeparator()V

    return-void

    .line 5081
    :pswitch_e
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->commandInsertCurrentDateString()V

    return-void

    .line 5039
    :pswitch_f
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/metamoji/un/text/UnTextUnit;->handleCharDecoTextItalicTap(Z)V

    return-void

    .line 5053
    :pswitch_10
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/metamoji/un/text/UnTextUnit;->handleCharDecoTextStrikeThroughTap(Z)V

    return-void

    .line 5046
    :pswitch_11
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/metamoji/un/text/UnTextUnit;->handleCharDecoTextUnderLineTap(Z)V

    return-void

    .line 5034
    :pswitch_12
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/metamoji/un/text/UnTextUnit;->handleCharDecoTextBoldTap(I)V

    return-void

    .line 5026
    :pswitch_13
    check-cast p2, [Ljava/lang/Object;

    .line 5027
    aget-object p1, p2, v3

    check-cast p1, Ljava/lang/Integer;

    aget-object p2, p2, v2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/text/UnTextUnit;->handleCharDecoTextParticalBackgroundColorTap(Ljava/lang/Integer;Z)V

    return-void

    .line 5018
    :pswitch_14
    check-cast p2, [Ljava/lang/Object;

    .line 5019
    aget-object p1, p2, v3

    check-cast p1, Ljava/lang/Integer;

    aget-object p2, p2, v2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/text/UnTextUnit;->handleCharDecoTextColorTap(Ljava/lang/Integer;Z)V

    return-void

    .line 5010
    :pswitch_15
    check-cast p2, [Ljava/lang/Object;

    .line 5011
    aget-object p1, p2, v3

    check-cast p1, Ljava/lang/Float;

    aget-object p2, p2, v2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/text/UnTextUnit;->handleCharDecoTextSizeTap(Ljava/lang/Float;Z)V

    return-void

    .line 5001
    :pswitch_16
    check-cast p2, [Ljava/lang/Object;

    .line 5002
    aget-object p1, p2, v3

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/metamoji/un/text/UnTextUnit;->handleCharDecoFontTap(Ljava/lang/String;)V

    return-void

    .line 4994
    :pswitch_17
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->commandStrokePenStyle()V

    return-void

    .line 5074
    :pswitch_18
    sget-object p1, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;->Right:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;

    invoke-direct {p0, p1}, Lcom/metamoji/un/text/UnTextUnit;->commandTextAlign(Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;)V

    return-void

    .line 5067
    :pswitch_19
    sget-object p1, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;->Centering:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;

    invoke-direct {p0, p1}, Lcom/metamoji/un/text/UnTextUnit;->commandTextAlign(Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;)V

    return-void

    .line 5060
    :pswitch_1a
    sget-object p1, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;->Left:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;

    invoke-direct {p0, p1}, Lcom/metamoji/un/text/UnTextUnit;->commandTextAlign(Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;)V

    return-void

    .line 4987
    :pswitch_1b
    invoke-direct {p0, p1}, Lcom/metamoji/un/text/UnTextUnit;->commandReedit(Lcom/metamoji/un/text/UnTextUnit$CommandId;)V

    return-void

    .line 4979
    :pswitch_1c
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->commandSelectAll()V

    return-void

    .line 4972
    :pswitch_1d
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->commandSelect()V

    return-void

    .line 4965
    :pswitch_1e
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->commandDelete()V

    return-void

    .line 4958
    :pswitch_1f
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->commandPaste()V

    return-void

    .line 4951
    :pswitch_20
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->commandCut()V

    return-void

    .line 4944
    :pswitch_21
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->commandCopy()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1b
        :pswitch_0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private hotspotURLStringFromPoint(Landroid/graphics/PointF;)Ljava/lang/String;
    .locals 3

    .line 10674
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->hotSpotLocations:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 10675
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->hotSpotLocations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/text/hotspot/HotSpotLocation;

    .line 10676
    invoke-virtual {v1, p1}, Lcom/metamoji/un/text/hotspot/HotSpotLocation;->rectsContainsPoint(Landroid/graphics/PointF;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10677
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextModel;->getStringWsArrayObject()Lcom/metamoji/un/text/model/StringWithStrokesArray;

    move-result-object p1

    iget-object v0, v1, Lcom/metamoji/un/text/hotspot/HotSpotLocation;->range:Lcom/metamoji/un/text/model/TextRange;

    invoke-static {v0}, Lcom/metamoji/un/text/hotspot/HotSpotUtil;->rangeForSubString(Lcom/metamoji/un/text/model/TextRange;)Lcom/metamoji/un/text/model/TextRange;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->substringWithRange(Lcom/metamoji/un/text/model/TextRange;Z)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 10679
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    .line 10682
    const-string v0, "mailto:%s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private inVisibleViewRect(Landroid/graphics/RectF;)Z
    .locals 4

    .line 10411
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v0

    .line 10412
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Viewport;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Viewport;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 10413
    invoke-direct {p0, p1}, Lcom/metamoji/un/text/UnTextUnit;->spriteToViewPort(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result p1

    return p1
.end method

.method public static isCheckSpellingWhenTyping()Z
    .locals 1

    .line 11456
    sget-boolean v0, Lcom/metamoji/un/text/UnTextUnit;->_checkSpelling:Z

    return v0
.end method

.method public static isEnableFlagTextUnitOption(Lcom/metamoji/un/text/UnTextUnit$UnTextUnitOption;)Z
    .locals 1

    .line 11301
    invoke-static {}, Lcom/metamoji/un/text/UnTextUnit;->getTextUnitOption()I

    move-result v0

    .line 11302
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit$UnTextUnitOption;->toIntValue()I

    move-result p0

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isEnableLockShareEditing()Z
    .locals 1

    .line 11374
    sget-object v0, Lcom/metamoji/un/text/UnTextUnit$UnTextUnitOption;->UnTextUnitOption_AllowMultipleShareEdit:Lcom/metamoji/un/text/UnTextUnit$UnTextUnitOption;

    invoke-static {v0}, Lcom/metamoji/un/text/UnTextUnit;->isEnableFlagTextUnitOption(Lcom/metamoji/un/text/UnTextUnit$UnTextUnitOption;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static isReconvertMode(Lcom/metamoji/un/text/UnTextUnit$ReeditMode;)Z
    .locals 1

    .line 7747
    sget-object v0, Lcom/metamoji/un/text/UnTextUnit$ReeditMode;->Reconvert:Lcom/metamoji/un/text/UnTextUnit$ReeditMode;

    if-eq v0, p0, :cond_1

    sget-object v0, Lcom/metamoji/un/text/UnTextUnit$ReeditMode;->RePendingReconvert:Lcom/metamoji/un/text/UnTextUnit$ReeditMode;

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isSpellCheckAvailable()Z
    .locals 2

    .line 11408
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtFeature;->TextSpellCheck:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 11412
    :cond_0
    sget-object v0, Lcom/metamoji/un/text/UnTextUnit;->_scslForSpellCheckAvailable:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;

    invoke-static {v0}, Lcom/metamoji/un/text/UnTextUnit;->newSpellCheckerSession(Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;)Landroid/view/textservice/SpellCheckerSession;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-eqz v1, :cond_2

    .line 11415
    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerSession;->close()V

    :cond_2
    return v1
.end method

.method private isSupportReedit()Z
    .locals 1

    .line 7661
    iget-boolean v0, p0, Lcom/metamoji/un/text/UnTextUnit;->_isSupportReedit:Z

    return v0
.end method

.method private joinUndoModels()Lcom/metamoji/df/model/IModel;
    .locals 12

    .line 10543
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10544
    iget-object v1, p0, Lcom/metamoji/un/text/UnTextUnit;->temporaryStackedUndoDatas:Ljava/util/List;

    const-string/jumbo v2, "taskName"

    const-string/jumbo v3, "undoSelectedTextRangeAfter"

    const-string/jumbo v4, "undoSelectedTextRangeBefore"

    const-string/jumbo v5, "undoDatas"

    const/4 v6, 0x0

    if-eqz v1, :cond_4

    .line 10545
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/metamoji/df/model/IModel;

    .line 10546
    invoke-interface {v10, v5}, Lcom/metamoji/df/model/IModel;->getPropertyAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    .line 10547
    invoke-interface {v0, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-nez v7, :cond_1

    .line 10550
    invoke-interface {v10, v4}, Lcom/metamoji/df/model/IModel;->getPropertyAsDictionary(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v11

    if-eqz v11, :cond_1

    move-object v7, v11

    .line 10555
    :cond_1
    invoke-interface {v10, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDictionary(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v11

    if-eqz v11, :cond_2

    move-object v8, v11

    :cond_2
    if-nez v9, :cond_0

    .line 10560
    invoke-interface {v10, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 10563
    :cond_3
    iget-object v1, p0, Lcom/metamoji/un/text/UnTextUnit;->temporaryStackedUndoDatas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_1

    :cond_4
    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    .line 10565
    :goto_1
    iget-object v1, p0, Lcom/metamoji/un/text/UnTextUnit;->undoDatasForChangeUnitSizeByRemakeLineTable:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 10566
    iget-object v1, p0, Lcom/metamoji/un/text/UnTextUnit;->undoDatasForChangeUnitSizeByRemakeLineTable:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 10570
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 10572
    const-string/jumbo v1, "textUnitUndo"

    const/4 v6, 0x2

    invoke-static {p0, v1, v6}, Lcom/metamoji/un/text/UnTextUnit$UndoPerformer;->makeNewUndoModelForController(Lcom/metamoji/df/controller/DfController;Ljava/lang/String;I)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    .line 10574
    invoke-interface {v1, v5, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/List;)V

    .line 10576
    invoke-interface {v1, v4, v7}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/Map;)V

    .line 10577
    invoke-interface {v1, v3, v8}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/Map;)V

    .line 10578
    invoke-interface {v1, v2, v9}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_5
    return-object v6
.end method

.method private leaveStrokeReeditMode()Z
    .locals 3

    .line 7718
    iget-boolean v0, p0, Lcom/metamoji/un/text/UnTextUnit;->_duringCancelReconvertTask:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 7722
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->isStrokeReconvertMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->_undoDatasForReconvert:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 7723
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->cancelReconvertTask()V

    .line 7726
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->_reeditMode:Lcom/metamoji/un/text/UnTextUnit$ReeditMode;

    invoke-static {v0}, Lcom/metamoji/un/text/UnTextUnit;->reeditModeIsPending(Lcom/metamoji/un/text/UnTextUnit$ReeditMode;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 7727
    sget-object v0, Lcom/metamoji/un/text/UnTextUnit$ReeditMode;->ReNone:Lcom/metamoji/un/text/UnTextUnit$ReeditMode;

    iput-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->_reeditMode:Lcom/metamoji/un/text/UnTextUnit$ReeditMode;

    :cond_2
    const/4 v0, 0x0

    .line 7729
    iput-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->_fromPosOnSearchNextReeditRange:Lcom/metamoji/un/text/model/TextPosition;

    .line 7730
    iput-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->_lastCandidateRangeForConvert:Lcom/metamoji/un/text/model/TextRange;

    .line 7732
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->isStrokeReeditMode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 7733
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getMazecAction()Lcom/metamoji/un/text/MazecAction;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/metamoji/un/text/MazecAction;->setStrokes(Ljava/util/List;)V

    .line 7734
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getMazecAction()Lcom/metamoji/un/text/MazecAction;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/MazecAction;->setStrokeReedit(Z)V

    .line 7735
    iput-boolean v1, p0, Lcom/metamoji/un/text/UnTextUnit;->isStrokeReditMode:Z

    const/4 v0, 0x1

    return v0

    :cond_3
    return v1
.end method

.method private leaveStrokeReeditModeLaterIfNeeded()V
    .locals 1

    .line 8060
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->isStrokeReeditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8062
    const-class v0, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/metamoji/un/text/UnTextUnit;->updateInputStyleBar(Ljava/util/EnumSet;)V

    .line 8064
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->leaveStrokeReeditMode()Z

    :cond_0
    return-void
.end method

.method private moveCaretToEnd()V
    .locals 2

    .line 2677
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->endOfDocument()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v0

    .line 2678
    new-instance v1, Lcom/metamoji/un/text/model/TextRange;

    invoke-direct {v1, v0}, Lcom/metamoji/un/text/model/TextRange;-><init>(Lcom/metamoji/un/text/model/TextPosition;)V

    .line 2679
    invoke-virtual {p0, v1}, Lcom/metamoji/un/text/UnTextUnit;->setSelectedTextRange(Lcom/metamoji/un/text/model/TextRange;)V

    const/4 v0, 0x1

    .line 2681
    invoke-virtual {p0, v0}, Lcom/metamoji/un/text/UnTextUnit;->notifySelectedRangeChanged(Z)V

    return-void
.end method

.method public static newSpellCheckerSession(Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;)Landroid/view/textservice/SpellCheckerSession;
    .locals 0

    .line 11424
    sget-object p0, Lcom/metamoji/un/text/UnTextUnit;->_spellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    if-eqz p0, :cond_0

    .line 11425
    invoke-virtual {p0}, Landroid/view/textservice/SpellCheckerSession;->close()V

    :cond_0
    const/4 p0, 0x0

    .line 11427
    sput-object p0, Lcom/metamoji/un/text/UnTextUnit;->_spellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    .line 11438
    sget-boolean p0, Lcom/metamoji/un/text/UnTextUnit;->_checkSpelling:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    .line 11439
    sput-boolean p0, Lcom/metamoji/un/text/UnTextUnit;->_checkSpelling:Z

    .line 11445
    :cond_1
    sget-object p0, Lcom/metamoji/un/text/UnTextUnit;->_spellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    return-object p0
.end method

.method private notifyImeCaretPos()V
    .locals 1

    .line 10772
    iget-boolean v0, p0, Lcom/metamoji/un/text/UnTextUnit;->_monitorCaretPos:Z

    if-eqz v0, :cond_0

    .line 10773
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->updateImeCaretPos()V

    :cond_0
    return-void
.end method

.method private onTagChangedEvent(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/CtEventTagChanged;",
            ">;)V"
        }
    .end annotation

    .line 12294
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ctold/CtEventTagChanged;

    .line 12296
    sget-object v1, Lcom/metamoji/ctold/object/CtObjectType;->CT_OBJTYPE_ELEM:Lcom/metamoji/ctold/object/CtObjectType;

    invoke-virtual {v0}, Lcom/metamoji/ctold/CtEventTagChanged;->getObjectType()Lcom/metamoji/ctold/object/CtObjectType;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 12297
    invoke-virtual {v0}, Lcom/metamoji/ctold/CtEventTagChanged;->getOwnerId()Ljava/lang/String;

    move-result-object v1

    .line 12299
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getUnitId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12300
    invoke-virtual {v0}, Lcom/metamoji/ctold/CtEventTagChanged;->getObjectId()Ljava/lang/String;

    move-result-object v1

    .line 12301
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/TextModel;->getParagraphTable()Lcom/metamoji/un/text/model/paragtable/ParagraphTable;

    move-result-object v2

    .line 12302
    invoke-virtual {v2}, Lcom/metamoji/un/text/model/paragtable/ParagraphTable;->count()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_0

    .line 12304
    invoke-virtual {v2, v4}, Lcom/metamoji/un/text/model/paragtable/ParagraphTable;->paragraphInfoAt(I)Lcom/metamoji/un/text/model/paragtable/ParagraphInfo;

    move-result-object v5

    check-cast v5, Lcom/metamoji/un/text/model/paragtable/TaggedParagraphInfo;

    .line 12306
    invoke-virtual {v5}, Lcom/metamoji/un/text/model/paragtable/TaggedParagraphInfo;->getParagraphStyle()Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 12307
    invoke-virtual {v6}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->getTagId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 12308
    iget-object v1, v5, Lcom/metamoji/un/text/model/paragtable/TaggedParagraphInfo;->startLine:Lcom/metamoji/un/text/model/paragtable/ParagraphInfo$LineLocation;

    iget v1, v1, Lcom/metamoji/un/text/model/paragtable/ParagraphInfo$LineLocation;->lineNo:I

    .line 12309
    invoke-virtual {v0}, Lcom/metamoji/ctold/CtEventTagChanged;->isExistTagInstance()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12311
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    sget-object v2, Lcom/metamoji/un/text/model/MMJEdTrdParagraphMark;->Voice:Lcom/metamoji/un/text/model/MMJEdTrdParagraphMark;

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/un/text/model/TextModel;->setParagraphMarkOfLine(Lcom/metamoji/un/text/model/MMJEdTrdParagraphMark;I)V

    goto :goto_2

    .line 12314
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/model/TextModel;->clearParagraphMarkOfLine(I)Z

    .line 12318
    :goto_2
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getLineTable()Lcom/metamoji/un/text/model/linetable/LineTable;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineInfoAtIndex(I)Lcom/metamoji/un/text/model/linetable/LineInfo;

    move-result-object v0

    .line 12319
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v1

    iget-object v2, v0, Lcom/metamoji/un/text/model/linetable/LineInfo;->position:Lcom/metamoji/un/text/model/TextPosition;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/un/text/model/TextModel;->positionFromPosition(Lcom/metamoji/un/text/model/TextPosition;I)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v1

    .line 12320
    new-instance v2, Lcom/metamoji/un/text/model/TextRange;

    iget-object v0, v0, Lcom/metamoji/un/text/model/linetable/LineInfo;->position:Lcom/metamoji/un/text/model/TextPosition;

    invoke-direct {v2, v0, v1}, Lcom/metamoji/un/text/model/TextRange;-><init>(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/TextPosition;)V

    invoke-virtual {p0, v2}, Lcom/metamoji/un/text/UnTextUnit;->invalidateRange(Lcom/metamoji/un/text/model/TextRange;)V

    goto/16 :goto_0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private onTapped(Landroid/graphics/PointF;ZZ)V
    .locals 8

    .line 1149
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->_tapObserver:Lcom/metamoji/un/text/UnTextUnitTapObserver;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p2, :cond_2

    if-eqz v0, :cond_0

    .line 1114
    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnitTapObserver;->clear()V

    .line 1115
    iput-object v2, p0, Lcom/metamoji/un/text/UnTextUnit;->_tapObserver:Lcom/metamoji/un/text/UnTextUnitTapObserver;

    .line 1119
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/un/text/model/TextModel;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/un/text/model/TextRange;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 1122
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->leaveStrokeReeditModeLaterIfNeeded()V

    .line 1124
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->commandClearSelect()V

    return-void

    .line 1132
    :cond_1
    new-instance p2, Lcom/metamoji/nt/NtFocusOption;

    invoke-direct {p2}, Lcom/metamoji/nt/NtFocusOption;-><init>()V

    .line 1134
    invoke-virtual {p2, p1}, Lcom/metamoji/nt/NtFocusOption;->setTapPos(Landroid/graphics/PointF;)V

    .line 1136
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object p1

    .line 1138
    :try_start_0
    invoke-virtual {p1, v3}, Lcom/metamoji/nt/NtNoteController;->setDelaySelectTextUnit(Z)V

    .line 1140
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getAppFrame()Lcom/metamoji/nt/INtAppFrame;

    move-result-object p3

    invoke-interface {p3, p2}, Lcom/metamoji/nt/INtAppFrame;->requestKillFocus(Lcom/metamoji/nt/NtFocusOption;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1142
    invoke-virtual {p1, v1}, Lcom/metamoji/nt/NtNoteController;->setDelaySelectTextUnit(Z)V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1, v1}, Lcom/metamoji/nt/NtNoteController;->setDelaySelectTextUnit(Z)V

    .line 1143
    throw p2

    :cond_2
    if-nez v0, :cond_3

    .line 1150
    new-instance p2, Lcom/metamoji/un/text/UnTextUnitTapObserver;

    invoke-direct {p2}, Lcom/metamoji/un/text/UnTextUnitTapObserver;-><init>()V

    iput-object p2, p0, Lcom/metamoji/un/text/UnTextUnit;->_tapObserver:Lcom/metamoji/un/text/UnTextUnitTapObserver;

    .line 1154
    :cond_3
    iget-object p2, p0, Lcom/metamoji/un/text/UnTextUnit;->_tapObserver:Lcom/metamoji/un/text/UnTextUnitTapObserver;

    invoke-virtual {p2}, Lcom/metamoji/un/text/UnTextUnitTapObserver;->incrementTap()V

    .line 1167
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/un/text/model/TextRange;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_6

    .line 1170
    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/UnTextUnit;->inSelectedTextRect(Landroid/graphics/PointF;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 1173
    iget-boolean p2, p0, Lcom/metamoji/un/text/UnTextUnit;->isStrokeReditMode:Z

    if-nez p2, :cond_5

    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->isStrokeReconvertMode()Z

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/metamoji/un/text/UnTextUnit;->_tapObserver:Lcom/metamoji/un/text/UnTextUnitTapObserver;

    .line 1174
    invoke-virtual {p2}, Lcom/metamoji/un/text/UnTextUnitTapObserver;->getContinuousTapCount()S

    move-result p2

    if-ne p2, v3, :cond_4

    iget-object p2, p0, Lcom/metamoji/un/text/UnTextUnit;->_tapObserver:Lcom/metamoji/un/text/UnTextUnitTapObserver;

    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v4

    invoke-virtual {p2, p1, v0, v4}, Lcom/metamoji/un/text/UnTextUnitTapObserver;->isEqualToSavePointRange(Landroid/graphics/PointF;Lcom/metamoji/un/text/model/TextRange;Lcom/metamoji/un/text/model/ITextInput;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_0

    .line 1190
    :cond_4
    invoke-direct {p0, p1}, Lcom/metamoji/un/text/UnTextUnit;->commandSelectParagraphWithTapPoint(Landroid/graphics/PointF;)V

    .line 1193
    iget-object p2, p0, Lcom/metamoji/un/text/UnTextUnit;->_tapObserver:Lcom/metamoji/un/text/UnTextUnitTapObserver;

    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/metamoji/un/text/UnTextUnitTapObserver;->setPointRange(Landroid/graphics/PointF;Lcom/metamoji/un/text/model/TextRange;)V

    return-void

    .line 1176
    :cond_5
    :goto_0
    sget-object p2, Lcom/metamoji/un/text/UnTextUnit$CancelModeType;->MenuAndStrokeReedit:Lcom/metamoji/un/text/UnTextUnit$CancelModeType;

    invoke-direct {p0, p2}, Lcom/metamoji/un/text/UnTextUnit;->cancelMode(Lcom/metamoji/un/text/UnTextUnit$CancelModeType;)V

    .line 1178
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/metamoji/un/text/model/TextModel;->closestPositionToPoint(Landroid/graphics/PointF;)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p2

    .line 1179
    new-instance v0, Lcom/metamoji/un/text/model/TextRange;

    invoke-direct {v0, p2}, Lcom/metamoji/un/text/model/TextRange;-><init>(Lcom/metamoji/un/text/model/TextPosition;)V

    .line 1180
    invoke-virtual {p0, v0}, Lcom/metamoji/un/text/UnTextUnit;->setSelectedTextRange(Lcom/metamoji/un/text/model/TextRange;)V

    .line 1182
    invoke-virtual {p0, v3}, Lcom/metamoji/un/text/UnTextUnit;->notifySelectedRangeChanged(Z)V

    .line 1184
    iget-object p2, p0, Lcom/metamoji/un/text/UnTextUnit;->_tapObserver:Lcom/metamoji/un/text/UnTextUnitTapObserver;

    invoke-virtual {p2}, Lcom/metamoji/un/text/UnTextUnitTapObserver;->clear()V

    .line 1185
    iput-object v2, p0, Lcom/metamoji/un/text/UnTextUnit;->_tapObserver:Lcom/metamoji/un/text/UnTextUnitTapObserver;

    .line 1204
    :cond_6
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p2

    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->_viewForSI:Lcom/metamoji/un/text/UnTextUnit$ViewForSoftInput;

    invoke-virtual {p2, v0}, Lcom/metamoji/nt/NtEditorWindowController;->showSoftInput(Landroid/view/View;)Z

    .line 1207
    invoke-direct {p0, p1}, Lcom/metamoji/un/text/UnTextUnit;->hotspotURLStringFromPoint(Landroid/graphics/PointF;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 1210
    invoke-static {p2}, Lcom/metamoji/un/link/MMJUnLinkUnit;->canHandleOpenURLString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1211
    new-instance v0, Landroid/graphics/PointF;

    iget v4, p1, Landroid/graphics/PointF;->x:F

    iget v5, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {p0, v0}, Lcom/metamoji/un/text/UnTextUnit;->textSpriteToViewport(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    .line 1212
    new-instance v4, Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/PointF;->x:F

    float-to-int v5, v5

    iget v6, v0, Landroid/graphics/PointF;->y:F

    float-to-int v6, v6

    iget v7, v0, Landroid/graphics/PointF;->x:F

    float-to-int v7, v7

    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-int v0, v0

    invoke-direct {v4, v5, v6, v7, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1213
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->editorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    .line 1214
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v5, Lcom/metamoji/noteanytime/R$id;->editing_area:I

    invoke-virtual {v0, v5}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 1215
    invoke-static {v4, v0, v2}, Lcom/metamoji/cm/CmUtils;->transformRect(Landroid/graphics/Rect;Landroid/view/View;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1216
    invoke-static {p2, v3, v0}, Lcom/metamoji/un/link/MMJUnLinkUnit;->performJumpWithURLString(Ljava/lang/String;ZLandroid/graphics/Rect;)V

    goto :goto_1

    .line 1219
    :cond_7
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 1221
    invoke-static {p2}, Lcom/metamoji/forSchool/ScSchoolUtils;->openUrl(Landroid/net/Uri;)V

    .line 1224
    :cond_8
    :goto_1
    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/UnTextUnit;->moveCaretToPoint(Landroid/graphics/PointF;)V

    goto :goto_2

    .line 1228
    :cond_9
    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/UnTextUnit;->moveCaretToPoint(Landroid/graphics/PointF;)V

    .line 1230
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/un/text/model/TextModel;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object p2

    .line 1231
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getStringWsArrayObject()Lcom/metamoji/un/text/model/StringWithStrokesArray;

    move-result-object v0

    .line 1232
    invoke-virtual {p2}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->attributesAt(Lcom/metamoji/un/text/model/TextPosition;)Lcom/metamoji/un/text/model/attr/Attributes;

    move-result-object v2

    const-class v4, Lcom/metamoji/un/text/model/attr/StringAttributes;

    invoke-static {v2, v4}, Lcom/metamoji/cm/CmUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/text/model/attr/StringAttributes;

    if-eqz v2, :cond_a

    .line 1233
    invoke-virtual {v2}, Lcom/metamoji/un/text/model/attr/StringAttributes;->isSpellErrorMark()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1234
    sget-object v4, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->SpellErrorMark:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-static {v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    invoke-virtual {p2}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p2

    invoke-virtual {v0, v2, v4, p2}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->rangeForSameAttributes(Lcom/metamoji/un/text/model/attr/Attributes;Ljava/util/EnumSet;Lcom/metamoji/un/text/model/TextPosition;)Lcom/metamoji/un/text/model/TextRange;

    move-result-object p2

    .line 1236
    new-instance v2, Lcom/metamoji/un/text/UnTextUnit$2;

    invoke-direct {v2, p0}, Lcom/metamoji/un/text/UnTextUnit$2;-><init>(Lcom/metamoji/un/text/UnTextUnit;)V

    invoke-static {v0, p2, v2}, Lcom/metamoji/un/text/hotspot/HotSpotUtil;->suggestions(Lcom/metamoji/un/text/model/StringWithStrokesArray;Lcom/metamoji/un/text/model/TextRange;Lcom/metamoji/cm/IAction1;)V

    .line 1249
    :cond_a
    :goto_2
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object p2

    .line 1251
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->_tapObserver:Lcom/metamoji/un/text/UnTextUnitTapObserver;

    if-eqz v0, :cond_c

    .line 1252
    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnitTapObserver;->getContinuousTapCount()S

    move-result v0

    if-ne v0, v3, :cond_b

    invoke-virtual {p2}, Lcom/metamoji/un/text/model/TextRange;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->_tapObserver:Lcom/metamoji/un/text/UnTextUnitTapObserver;

    .line 1253
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v2

    invoke-virtual {v0, p1, p2, v2}, Lcom/metamoji/un/text/UnTextUnitTapObserver;->isEqualToSavePointRange(Landroid/graphics/PointF;Lcom/metamoji/un/text/model/TextRange;Lcom/metamoji/un/text/model/ITextInput;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1254
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->commandSelect()V

    move v1, v3

    .line 1258
    :cond_b
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->_tapObserver:Lcom/metamoji/un/text/UnTextUnitTapObserver;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/un/text/UnTextUnitTapObserver;->setPointRange(Landroid/graphics/PointF;Lcom/metamoji/un/text/model/TextRange;)V

    :cond_c
    if-nez v1, :cond_d

    .line 1264
    iget-object p1, p0, Lcom/metamoji/un/text/UnTextUnit;->insPtCurCtrl:Lcom/metamoji/un/text/UnTextUnit$InsertionPointCursorController;

    invoke-virtual {p1}, Lcom/metamoji/un/text/UnTextUnit$InsertionPointCursorController;->show()V

    :cond_d
    if-eqz p3, :cond_e

    .line 1269
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->isInComposition()Z

    move-result p1

    if-nez p1, :cond_e

    .line 1270
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->appearContextMenu()V

    :cond_e
    return-void
.end method

.method private onTappedInBounds(Landroid/graphics/PointF;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1294
    invoke-direct {p0, p1, v0, p2}, Lcom/metamoji/un/text/UnTextUnit;->onTapped(Landroid/graphics/PointF;ZZ)V

    return-void
.end method

.method private onTappedOutOfBounds(Landroid/graphics/PointF;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 1285
    invoke-direct {p0, p1, v0, p2}, Lcom/metamoji/un/text/UnTextUnit;->onTapped(Landroid/graphics/PointF;ZZ)V

    return-void
.end method

.method private onTimerSendToCollabo()V
    .locals 1

    .line 11697
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->stopSendToCollaboTimer()V

    const/4 v0, 0x0

    .line 11700
    invoke-direct {p0, v0}, Lcom/metamoji/un/text/UnTextUnit;->sendTextDataDirection(Z)V

    return-void
.end method

.method private paperSpriteToTextSprite(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 2

    .line 10467
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getPageController()Lcom/metamoji/nt/NtPageController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getPaperSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/metamoji/df/sprite/Sprite;->localToGlobal(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/Sprite;->globalToLocal(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public static performPageTextUnitCombineUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V
    .locals 16

    move/from16 v0, p0

    move-object/from16 v1, p1

    .line 7128
    const-string v2, "m"

    invoke-interface {v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 7132
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v3

    .line 7133
    invoke-virtual {v3}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v3

    .line 7134
    invoke-virtual {v3}, Lcom/metamoji/nt/NtNoteController;->getCurrentRootUnitController()Lcom/metamoji/nt/NtUnitController;

    move-result-object v3

    if-eqz v3, :cond_13

    .line 7137
    invoke-virtual {v3}, Lcom/metamoji/nt/NtUnitController;->getObjectListener()Lcom/metamoji/ctold/CtObjectListener;

    move-result-object v4

    if-eqz v4, :cond_13

    .line 7140
    const-string/jumbo v5, "unit"

    const-string/jumbo v6, "t"

    const-string v7, "f"

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-eqz v0, :cond_a

    .line 7142
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 7143
    invoke-interface {v1, v6}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v6

    .line 7145
    invoke-interface {v1, v7}, Lcom/metamoji/df/model/IModel;->getPropertyAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 7146
    invoke-virtual {v3, v6}, Lcom/metamoji/nt/NtUnitController;->getControllerOf(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/controller/DfController;

    move-result-object v6

    .line 7148
    instance-of v7, v6, Lcom/metamoji/un/text/UnTextUnit;

    if-eqz v7, :cond_0

    .line 7149
    check-cast v6, Lcom/metamoji/un/text/UnTextUnit;

    goto :goto_0

    :cond_0
    move-object v6, v10

    :goto_0
    if-eqz v6, :cond_13

    .line 7151
    invoke-virtual {v6, v11, v8}, Lcom/metamoji/un/text/UnTextUnit;->collectAllParagraphInfos(Ljava/util/List;Z)V

    .line 7154
    invoke-static {}, Lcom/metamoji/cm/CmLocalIdManager;->getInstance()Lcom/metamoji/cm/CmLocalIdManager;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/metamoji/cm/CmLocalIdManager;->generateSubIdWithType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 7156
    invoke-virtual {v6}, Lcom/metamoji/un/text/UnTextUnit;->getObjectType()Lcom/metamoji/ctold/object/CtObjectType;

    move-result-object v7

    invoke-static {v7, v5, v10, v10}, Lcom/metamoji/un/util/UnTaggableSaveObject;->createObject(Lcom/metamoji/ctold/object/CtObjectType;Ljava/lang/String;Lcom/metamoji/un/util/UnTaggableSaveObject;Lcom/metamoji/un/util/UnTaggableSaveObject;)Lcom/metamoji/un/util/UnTaggableSaveObject;

    move-result-object v5

    .line 7158
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 7159
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/metamoji/ctold/CtTaggableObject;

    .line 7160
    invoke-interface {v13}, Lcom/metamoji/ctold/CtTaggableObject;->getObjectType()Lcom/metamoji/ctold/object/CtObjectType;

    move-result-object v14

    invoke-interface {v13}, Lcom/metamoji/ctold/CtTaggableObject;->getObjectId()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v13, v5, v5}, Lcom/metamoji/un/util/UnTaggableSaveObject;->createObject(Lcom/metamoji/ctold/object/CtObjectType;Ljava/lang/String;Lcom/metamoji/un/util/UnTaggableSaveObject;Lcom/metamoji/un/util/UnTaggableSaveObject;)Lcom/metamoji/un/util/UnTaggableSaveObject;

    move-result-object v13

    .line 7161
    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 7165
    :cond_1
    invoke-interface {v4, v6, v5}, Lcom/metamoji/ctold/CtObjectListener;->notifyObjectTransferred(Lcom/metamoji/ctold/CtTaggableObject;Lcom/metamoji/ctold/CtTaggableObject;)V

    .line 7167
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/metamoji/ctold/CtTaggableObject;

    .line 7168
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    if-gtz v13, :cond_2

    goto :goto_3

    .line 7171
    :cond_2
    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/metamoji/ctold/CtTaggableObject;

    .line 7172
    invoke-interface {v4, v13, v12}, Lcom/metamoji/ctold/CtObjectListener;->notifyObjectTransferred(Lcom/metamoji/ctold/CtTaggableObject;Lcom/metamoji/ctold/CtTaggableObject;)V

    .line 7173
    invoke-interface {v11, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 7177
    :cond_3
    :goto_3
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 7178
    invoke-interface {v4, v11}, Lcom/metamoji/ctold/CtObjectListener;->notifyObjectsRemoving(Ljava/util/List;)V

    .line 7181
    :cond_4
    invoke-interface {v2}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v6

    invoke-interface {v6, v2, v0}, Lcom/metamoji/df/model/IModelManager;->callUndoPerformer(Lcom/metamoji/df/model/IModel;Z)V

    .line 7185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7187
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 7189
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 7192
    instance-of v11, v6, Lcom/metamoji/un/text/model/TextModel;

    if-eqz v11, :cond_6

    .line 7193
    check-cast v6, Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {v3, v6}, Lcom/metamoji/nt/NtUnitController;->getControllerOf(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/controller/DfController;

    move-result-object v6

    .line 7194
    instance-of v11, v6, Lcom/metamoji/un/text/UnTextUnit;

    if-eqz v11, :cond_6

    .line 7195
    check-cast v6, Lcom/metamoji/un/text/UnTextUnit;

    goto :goto_5

    :cond_6
    move-object v6, v10

    :goto_5
    if-eqz v6, :cond_5

    .line 7198
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7199
    invoke-virtual {v6, v0, v8}, Lcom/metamoji/un/text/UnTextUnit;->collectAllParagraphInfos(Ljava/util/List;Z)V

    goto :goto_4

    .line 7204
    :cond_7
    invoke-interface {v4, v5, v2}, Lcom/metamoji/ctold/CtObjectListener;->notifyObjectDivided(Lcom/metamoji/ctold/CtTaggableObject;Ljava/util/List;)V

    .line 7206
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ctold/CtTaggableObject;

    .line 7207
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_8

    goto :goto_7

    .line 7210
    :cond_8
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ctold/CtTaggableObject;

    .line 7211
    invoke-interface {v4, v2, v1}, Lcom/metamoji/ctold/CtObjectListener;->notifyObjectTransferred(Lcom/metamoji/ctold/CtTaggableObject;Lcom/metamoji/ctold/CtTaggableObject;)V

    .line 7212
    invoke-interface {v7, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_6

    .line 7216
    :cond_9
    :goto_7
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_14

    .line 7217
    invoke-interface {v4, v7}, Lcom/metamoji/ctold/CtObjectListener;->notifyObjectsRemoving(Ljava/util/List;)V

    return-void

    .line 7224
    :cond_a
    invoke-interface {v1, v7}, Lcom/metamoji/df/model/IModel;->getPropertyAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 7225
    invoke-interface {v1, v6}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    .line 7226
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 7227
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_b
    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 7230
    instance-of v12, v11, Lcom/metamoji/df/model/IModel;

    if-eqz v12, :cond_c

    .line 7231
    check-cast v11, Lcom/metamoji/df/model/IModel;

    .line 7232
    invoke-virtual {v3, v11}, Lcom/metamoji/nt/NtUnitController;->getControllerOf(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/controller/DfController;

    move-result-object v11

    .line 7233
    instance-of v12, v11, Lcom/metamoji/un/text/UnTextUnit;

    if-eqz v12, :cond_c

    .line 7234
    check-cast v11, Lcom/metamoji/un/text/UnTextUnit;

    goto :goto_9

    :cond_c
    move-object v11, v10

    :goto_9
    if-eqz v11, :cond_b

    .line 7237
    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 7242
    :cond_d
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 7244
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 7246
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/metamoji/un/text/UnTextUnit;

    .line 7247
    invoke-static {}, Lcom/metamoji/cm/CmLocalIdManager;->getInstance()Lcom/metamoji/cm/CmLocalIdManager;

    move-result-object v13

    invoke-virtual {v13, v5}, Lcom/metamoji/cm/CmLocalIdManager;->generateSubIdWithType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 7248
    invoke-virtual {v12}, Lcom/metamoji/un/text/UnTextUnit;->getObjectType()Lcom/metamoji/ctold/object/CtObjectType;

    move-result-object v14

    invoke-static {v14, v13, v10, v10}, Lcom/metamoji/un/util/UnTaggableSaveObject;->createObject(Lcom/metamoji/ctold/object/CtObjectType;Ljava/lang/String;Lcom/metamoji/un/util/UnTaggableSaveObject;Lcom/metamoji/un/util/UnTaggableSaveObject;)Lcom/metamoji/un/util/UnTaggableSaveObject;

    move-result-object v13

    .line 7249
    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7250
    invoke-interface {v4, v12, v13}, Lcom/metamoji/ctold/CtObjectListener;->notifyObjectTransferred(Lcom/metamoji/ctold/CtTaggableObject;Lcom/metamoji/ctold/CtTaggableObject;)V

    .line 7252
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 7253
    invoke-virtual {v12, v14, v8}, Lcom/metamoji/un/text/UnTextUnit;->collectAllParagraphInfos(Ljava/util/List;Z)V

    .line 7254
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_e

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/metamoji/ctold/CtTaggableObject;

    .line 7255
    invoke-interface {v14}, Lcom/metamoji/ctold/CtTaggableObject;->getObjectType()Lcom/metamoji/ctold/object/CtObjectType;

    move-result-object v15

    invoke-interface {v14}, Lcom/metamoji/ctold/CtTaggableObject;->getObjectId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v15, v10, v13, v13}, Lcom/metamoji/un/util/UnTaggableSaveObject;->createObject(Lcom/metamoji/ctold/object/CtObjectType;Ljava/lang/String;Lcom/metamoji/un/util/UnTaggableSaveObject;Lcom/metamoji/un/util/UnTaggableSaveObject;)Lcom/metamoji/un/util/UnTaggableSaveObject;

    move-result-object v10

    .line 7256
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7257
    invoke-interface {v4, v14, v10}, Lcom/metamoji/ctold/CtObjectListener;->notifyObjectTransferred(Lcom/metamoji/ctold/CtTaggableObject;Lcom/metamoji/ctold/CtTaggableObject;)V

    const/4 v10, 0x0

    goto :goto_a

    .line 7262
    :cond_f
    invoke-interface {v2}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v5

    invoke-interface {v5, v2, v0}, Lcom/metamoji/df/model/IModelManager;->callUndoPerformer(Lcom/metamoji/df/model/IModel;Z)V

    .line 7267
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7269
    invoke-virtual {v3, v1}, Lcom/metamoji/nt/NtUnitController;->getControllerOf(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/controller/DfController;

    move-result-object v1

    .line 7271
    instance-of v2, v1, Lcom/metamoji/un/text/UnTextUnit;

    if-eqz v2, :cond_10

    .line 7272
    move-object v10, v1

    check-cast v10, Lcom/metamoji/un/text/UnTextUnit;

    goto :goto_b

    :cond_10
    const/4 v10, 0x0

    :goto_b
    if-eqz v10, :cond_14

    .line 7274
    invoke-virtual {v10, v0, v8}, Lcom/metamoji/un/text/UnTextUnit;->collectAllParagraphInfos(Ljava/util/List;Z)V

    .line 7277
    invoke-interface {v4, v7, v10}, Lcom/metamoji/ctold/CtObjectListener;->notifyObjectUnificated(Ljava/util/List;Lcom/metamoji/ctold/CtTaggableObject;)V

    .line 7280
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ctold/CtTaggableObject;

    .line 7281
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_11

    goto :goto_d

    .line 7284
    :cond_11
    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ctold/CtTaggableObject;

    .line 7285
    invoke-interface {v4, v2, v1}, Lcom/metamoji/ctold/CtObjectListener;->notifyObjectTransferred(Lcom/metamoji/ctold/CtTaggableObject;Lcom/metamoji/ctold/CtTaggableObject;)V

    .line 7286
    invoke-interface {v11, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_c

    .line 7290
    :cond_12
    :goto_d
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_14

    .line 7291
    invoke-interface {v4, v11}, Lcom/metamoji/ctold/CtObjectListener;->notifyObjectsRemoving(Ljava/util/List;)V

    return-void

    .line 7298
    :cond_13
    invoke-interface {v2}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v1

    invoke-interface {v1, v2, v0}, Lcom/metamoji/df/model/IModelManager;->callUndoPerformer(Lcom/metamoji/df/model/IModel;Z)V

    :cond_14
    return-void
.end method

.method public static performPageTextUnitSeparateUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V
    .locals 17

    move/from16 v0, p0

    move-object/from16 v1, p1

    .line 7311
    const-string v2, "m"

    invoke-interface {v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 7315
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v3

    .line 7316
    invoke-virtual {v3}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v3

    .line 7317
    invoke-virtual {v3}, Lcom/metamoji/nt/NtNoteController;->getCurrentRootUnitController()Lcom/metamoji/nt/NtUnitController;

    move-result-object v3

    if-eqz v3, :cond_15

    .line 7320
    invoke-virtual {v3}, Lcom/metamoji/nt/NtUnitController;->getObjectListener()Lcom/metamoji/ctold/CtObjectListener;

    move-result-object v4

    if-eqz v4, :cond_15

    .line 7323
    const-string v5, "i"

    const-string/jumbo v6, "t"

    const-string v7, "f"

    const-string/jumbo v8, "unit"

    const/4 v9, -0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v0, :cond_9

    .line 7326
    invoke-interface {v1, v6}, Lcom/metamoji/df/model/IModel;->getPropertyAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 7327
    invoke-interface {v1, v7}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v7

    .line 7328
    invoke-interface {v1, v5, v9}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v1

    .line 7329
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 7330
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 7332
    instance-of v14, v13, Lcom/metamoji/df/model/IModel;

    if-eqz v14, :cond_1

    .line 7333
    check-cast v13, Lcom/metamoji/df/model/IModel;

    invoke-virtual {v3, v13}, Lcom/metamoji/nt/NtUnitController;->getControllerOf(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/controller/DfController;

    move-result-object v13

    .line 7334
    instance-of v14, v13, Lcom/metamoji/un/text/UnTextUnit;

    if-eqz v14, :cond_1

    .line 7335
    check-cast v13, Lcom/metamoji/un/text/UnTextUnit;

    goto :goto_1

    :cond_1
    move-object v13, v12

    :goto_1
    if-eqz v13, :cond_0

    .line 7338
    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7343
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 7345
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 7346
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/metamoji/un/text/UnTextUnit;

    .line 7347
    invoke-static {}, Lcom/metamoji/cm/CmLocalIdManager;->getInstance()Lcom/metamoji/cm/CmLocalIdManager;

    move-result-object v15

    invoke-virtual {v15, v8}, Lcom/metamoji/cm/CmLocalIdManager;->generateSubIdWithType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 7348
    invoke-virtual {v14}, Lcom/metamoji/un/text/UnTextUnit;->getObjectType()Lcom/metamoji/ctold/object/CtObjectType;

    move-result-object v10

    invoke-static {v10, v15, v12, v12}, Lcom/metamoji/un/util/UnTaggableSaveObject;->createObject(Lcom/metamoji/ctold/object/CtObjectType;Ljava/lang/String;Lcom/metamoji/un/util/UnTaggableSaveObject;Lcom/metamoji/un/util/UnTaggableSaveObject;)Lcom/metamoji/un/util/UnTaggableSaveObject;

    move-result-object v10

    .line 7349
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7350
    invoke-interface {v4, v14, v10}, Lcom/metamoji/ctold/CtObjectListener;->notifyObjectTransferred(Lcom/metamoji/ctold/CtTaggableObject;Lcom/metamoji/ctold/CtTaggableObject;)V

    .line 7352
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 7353
    invoke-virtual {v14, v15, v11}, Lcom/metamoji/un/text/UnTextUnit;->collectAllParagraphInfos(Ljava/util/List;Z)V

    .line 7354
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/metamoji/ctold/CtTaggableObject;

    .line 7355
    invoke-interface {v15}, Lcom/metamoji/ctold/CtTaggableObject;->getObjectType()Lcom/metamoji/ctold/object/CtObjectType;

    move-result-object v12

    move/from16 v16, v11

    invoke-interface {v15}, Lcom/metamoji/ctold/CtTaggableObject;->getObjectId()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11, v10, v10}, Lcom/metamoji/un/util/UnTaggableSaveObject;->createObject(Lcom/metamoji/ctold/object/CtObjectType;Ljava/lang/String;Lcom/metamoji/un/util/UnTaggableSaveObject;Lcom/metamoji/un/util/UnTaggableSaveObject;)Lcom/metamoji/un/util/UnTaggableSaveObject;

    move-result-object v11

    .line 7356
    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7357
    invoke-interface {v4, v15, v11}, Lcom/metamoji/ctold/CtObjectListener;->notifyObjectTransferred(Lcom/metamoji/ctold/CtTaggableObject;Lcom/metamoji/ctold/CtTaggableObject;)V

    move/from16 v11, v16

    const/4 v12, 0x0

    goto :goto_2

    :cond_4
    move/from16 v16, v11

    if-eq v9, v1, :cond_5

    add-int/lit8 v1, v1, 0x1

    .line 7362
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_5

    .line 7363
    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/ctold/CtTaggableObject;

    .line 7364
    invoke-interface {v13, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 7365
    invoke-interface {v4, v5}, Lcom/metamoji/ctold/CtObjectListener;->notifyObjectRemoving(Lcom/metamoji/ctold/CtTaggableObject;)V

    .line 7369
    :cond_5
    invoke-interface {v2}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v1

    invoke-interface {v1, v2, v0}, Lcom/metamoji/df/model/IModelManager;->callUndoPerformer(Lcom/metamoji/df/model/IModel;Z)V

    .line 7374
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7376
    invoke-virtual {v3, v7}, Lcom/metamoji/nt/NtUnitController;->getControllerOf(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/controller/DfController;

    move-result-object v1

    .line 7378
    instance-of v2, v1, Lcom/metamoji/un/text/UnTextUnit;

    if-eqz v2, :cond_6

    .line 7379
    move-object v12, v1

    check-cast v12, Lcom/metamoji/un/text/UnTextUnit;

    goto :goto_3

    :cond_6
    const/4 v12, 0x0

    :goto_3
    if-eqz v12, :cond_16

    move/from16 v1, v16

    .line 7381
    invoke-virtual {v12, v0, v1}, Lcom/metamoji/un/text/UnTextUnit;->collectAllParagraphInfos(Ljava/util/List;Z)V

    .line 7384
    invoke-interface {v4, v6, v12}, Lcom/metamoji/ctold/CtObjectListener;->notifyObjectUnificated(Ljava/util/List;Lcom/metamoji/ctold/CtTaggableObject;)V

    .line 7387
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ctold/CtTaggableObject;

    .line 7388
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_7

    goto :goto_5

    :cond_7
    const/4 v2, 0x0

    .line 7391
    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/ctold/CtTaggableObject;

    .line 7392
    invoke-interface {v4, v3, v1}, Lcom/metamoji/ctold/CtObjectListener;->notifyObjectTransferred(Lcom/metamoji/ctold/CtTaggableObject;Lcom/metamoji/ctold/CtTaggableObject;)V

    .line 7393
    invoke-interface {v13, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_4

    .line 7397
    :cond_8
    :goto_5
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_16

    .line 7398
    invoke-interface {v4, v13}, Lcom/metamoji/ctold/CtObjectListener;->notifyObjectsRemoving(Ljava/util/List;)V

    return-void

    .line 7404
    :cond_9
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 7405
    invoke-interface {v1, v7}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v7

    .line 7407
    invoke-interface {v1, v6}, Lcom/metamoji/df/model/IModel;->getPropertyAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 7408
    invoke-interface {v1, v5, v9}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v1

    .line 7409
    invoke-virtual {v3, v7}, Lcom/metamoji/nt/NtUnitController;->getControllerOf(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/controller/DfController;

    move-result-object v5

    .line 7411
    instance-of v7, v5, Lcom/metamoji/un/text/UnTextUnit;

    if-eqz v7, :cond_a

    .line 7412
    check-cast v5, Lcom/metamoji/un/text/UnTextUnit;

    goto :goto_6

    :cond_a
    const/4 v5, 0x0

    :goto_6
    if-eqz v5, :cond_15

    const/4 v7, 0x1

    .line 7414
    invoke-virtual {v5, v10, v7}, Lcom/metamoji/un/text/UnTextUnit;->collectAllParagraphInfos(Ljava/util/List;Z)V

    if-eq v9, v1, :cond_b

    add-int/2addr v1, v7

    .line 7417
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v7

    if-gt v1, v7, :cond_b

    .line 7419
    invoke-static {}, Lcom/metamoji/cm/CmLocalIdManager;->getInstance()Lcom/metamoji/cm/CmLocalIdManager;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/metamoji/cm/CmLocalIdManager;->generateSubIdWithType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 7420
    sget-object v9, Lcom/metamoji/ctold/object/CtObjectType;->CT_OBJTYPE_ELEM:Lcom/metamoji/ctold/object/CtObjectType;

    const/4 v11, 0x0

    invoke-static {v9, v7, v11, v11}, Lcom/metamoji/un/util/UnTaggableSaveObject;->createObject(Lcom/metamoji/ctold/object/CtObjectType;Ljava/lang/String;Lcom/metamoji/un/util/UnTaggableSaveObject;Lcom/metamoji/un/util/UnTaggableSaveObject;)Lcom/metamoji/un/util/UnTaggableSaveObject;

    move-result-object v7

    .line 7421
    invoke-interface {v10, v1, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_7

    :cond_b
    const/4 v11, 0x0

    .line 7425
    :goto_7
    invoke-static {}, Lcom/metamoji/cm/CmLocalIdManager;->getInstance()Lcom/metamoji/cm/CmLocalIdManager;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/metamoji/cm/CmLocalIdManager;->generateSubIdWithType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7427
    invoke-virtual {v5}, Lcom/metamoji/un/text/UnTextUnit;->getObjectType()Lcom/metamoji/ctold/object/CtObjectType;

    move-result-object v7

    invoke-static {v7, v1, v11, v11}, Lcom/metamoji/un/util/UnTaggableSaveObject;->createObject(Lcom/metamoji/ctold/object/CtObjectType;Ljava/lang/String;Lcom/metamoji/un/util/UnTaggableSaveObject;Lcom/metamoji/un/util/UnTaggableSaveObject;)Lcom/metamoji/un/util/UnTaggableSaveObject;

    move-result-object v1

    .line 7429
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 7430
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/metamoji/ctold/CtTaggableObject;

    .line 7431
    invoke-interface {v9}, Lcom/metamoji/ctold/CtTaggableObject;->getObjectType()Lcom/metamoji/ctold/object/CtObjectType;

    move-result-object v12

    invoke-interface {v9}, Lcom/metamoji/ctold/CtTaggableObject;->getObjectId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9, v1, v1}, Lcom/metamoji/un/util/UnTaggableSaveObject;->createObject(Lcom/metamoji/ctold/object/CtObjectType;Ljava/lang/String;Lcom/metamoji/un/util/UnTaggableSaveObject;Lcom/metamoji/un/util/UnTaggableSaveObject;)Lcom/metamoji/un/util/UnTaggableSaveObject;

    move-result-object v9

    .line 7432
    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 7436
    :cond_c
    invoke-interface {v4, v5, v1}, Lcom/metamoji/ctold/CtObjectListener;->notifyObjectTransferred(Lcom/metamoji/ctold/CtTaggableObject;Lcom/metamoji/ctold/CtTaggableObject;)V

    .line 7438
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/metamoji/ctold/CtTaggableObject;

    .line 7439
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v9

    if-gtz v9, :cond_d

    goto :goto_a

    :cond_d
    const/4 v9, 0x0

    .line 7442
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/metamoji/ctold/CtTaggableObject;

    .line 7443
    invoke-interface {v4, v12, v8}, Lcom/metamoji/ctold/CtObjectListener;->notifyObjectTransferred(Lcom/metamoji/ctold/CtTaggableObject;Lcom/metamoji/ctold/CtTaggableObject;)V

    .line 7444
    invoke-interface {v10, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_9

    .line 7448
    :cond_e
    :goto_a
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_f

    .line 7449
    invoke-interface {v4, v10}, Lcom/metamoji/ctold/CtObjectListener;->notifyObjectsRemoving(Ljava/util/List;)V

    .line 7452
    :cond_f
    invoke-interface {v2}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v5

    invoke-interface {v5, v2, v0}, Lcom/metamoji/df/model/IModelManager;->callUndoPerformer(Lcom/metamoji/df/model/IModel;Z)V

    .line 7456
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7458
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 7460
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 7462
    instance-of v8, v6, Lcom/metamoji/df/model/IModel;

    if-eqz v8, :cond_10

    .line 7463
    check-cast v6, Lcom/metamoji/df/model/IModel;

    invoke-virtual {v3, v6}, Lcom/metamoji/nt/NtUnitController;->getControllerOf(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/controller/DfController;

    move-result-object v6

    .line 7464
    instance-of v8, v6, Lcom/metamoji/un/text/UnTextUnit;

    if-eqz v8, :cond_10

    .line 7465
    check-cast v6, Lcom/metamoji/un/text/UnTextUnit;

    goto :goto_c

    :cond_10
    move-object v6, v11

    :goto_c
    if-eqz v6, :cond_11

    .line 7469
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x1

    .line 7470
    invoke-virtual {v6, v0, v8}, Lcom/metamoji/un/text/UnTextUnit;->collectAllParagraphInfos(Ljava/util/List;Z)V

    goto :goto_b

    :cond_11
    const/4 v8, 0x1

    goto :goto_b

    .line 7475
    :cond_12
    invoke-interface {v4, v1, v2}, Lcom/metamoji/ctold/CtObjectListener;->notifyObjectDivided(Lcom/metamoji/ctold/CtTaggableObject;Ljava/util/List;)V

    .line 7477
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ctold/CtTaggableObject;

    .line 7478
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_13

    goto :goto_e

    :cond_13
    const/4 v2, 0x0

    .line 7481
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/ctold/CtTaggableObject;

    .line 7482
    invoke-interface {v4, v3, v1}, Lcom/metamoji/ctold/CtObjectListener;->notifyObjectTransferred(Lcom/metamoji/ctold/CtTaggableObject;Lcom/metamoji/ctold/CtTaggableObject;)V

    .line 7483
    invoke-interface {v7, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_d

    .line 7487
    :cond_14
    :goto_e
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_16

    .line 7488
    invoke-interface {v4, v7}, Lcom/metamoji/ctold/CtObjectListener;->notifyObjectsRemoving(Ljava/util/List;)V

    return-void

    .line 7495
    :cond_15
    invoke-interface {v2}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v1

    invoke-interface {v1, v2, v0}, Lcom/metamoji/df/model/IModelManager;->callUndoPerformer(Lcom/metamoji/df/model/IModel;Z)V

    :cond_16
    return-void
.end method

.method private performTextEditUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V
    .locals 6

    .line 3760
    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "textUnitUndo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3763
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->_undoDatasForReconvert:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 3764
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->cancelReconvertTask()V

    .line 3766
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Stage;->setQueueing(Z)V

    .line 3772
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->undoSelfBufferOff()V

    .line 3773
    const-string/jumbo v0, "undoDatas"

    invoke-interface {p2, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 3774
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/metamoji/un/text/UnTextUnit;->undoDatas:Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3777
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v4

    invoke-virtual {v4, v1, p1}, Lcom/metamoji/un/text/model/TextModel;->processUndoTask(Ljava/util/List;Z)V

    if-eqz p1, :cond_1

    .line 3782
    const-string/jumbo p1, "undoSelectedTextRangeBefore"

    invoke-interface {p2, p1}, Lcom/metamoji/df/model/IModel;->getPropertyAsDictionary(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    goto :goto_0

    .line 3784
    :cond_1
    const-string/jumbo p1, "undoSelectedTextRangeAfter"

    invoke-interface {p2, p1}, Lcom/metamoji/df/model/IModel;->getPropertyAsDictionary(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 3790
    :goto_0
    const-string/jumbo v1, "taskName"

    invoke-interface {p2, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3791
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v4

    new-instance v5, Lcom/metamoji/un/text/UnTextUnit$15;

    invoke-direct {v5, p0, p1, v1}, Lcom/metamoji/un/text/UnTextUnit$15;-><init>(Lcom/metamoji/un/text/UnTextUnit;Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/metamoji/cm/CmTaskManager;->runOnUIThreadAsync(Ljava/lang/Runnable;)V

    .line 3822
    iget-object p1, p0, Lcom/metamoji/un/text/UnTextUnit;->undoDatas:Ljava/util/List;

    invoke-interface {p2, v0, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3825
    iput-object v3, p0, Lcom/metamoji/un/text/UnTextUnit;->undoDatas:Ljava/util/List;

    .line 3827
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->undoSelfBufferOn()V

    .line 3833
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/metamoji/df/sprite/Stage;->setQueueing(Z)V

    return-void

    :catchall_0
    move-exception p1

    .line 3825
    iput-object v3, p0, Lcom/metamoji/un/text/UnTextUnit;->undoDatas:Ljava/util/List;

    .line 3827
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->undoSelfBufferOn()V

    .line 3833
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/metamoji/df/sprite/Stage;->setQueueing(Z)V

    .line 3843
    throw p1

    :cond_2
    return-void
.end method

.method private putSpellErrorMarkToTextAttributes(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/un/text/model/TextRange;",
            ">;)V"
        }
    .end annotation

    .line 11537
    new-instance v1, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    invoke-direct {v1}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;-><init>()V

    const/4 v0, 0x1

    .line 11538
    invoke-virtual {v1, v0}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->setSpellErrorMark(Z)V

    .line 11540
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/metamoji/un/text/model/TextRange;

    .line 11542
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    sget-object v2, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->SpellErrorMark:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-static {v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    const-class v3, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

    .line 11543
    invoke-static {v3}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 11542
    invoke-virtual/range {v0 .. v6}, Lcom/metamoji/un/text/model/TextModel;->putTextAttributesCore(Lcom/metamoji/un/text/model/attr/StringAttributes;Ljava/util/EnumSet;Lcom/metamoji/mazecclient/stroke/IStrokeStyle;Lcom/metamoji/mazecclient/stroke/IStrokePenInfo;Ljava/util/EnumSet;Lcom/metamoji/un/text/model/TextRange;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static reeditModeIsPending(Lcom/metamoji/un/text/UnTextUnit$ReeditMode;)Z
    .locals 0

    .line 7743
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit$ReeditMode;->toIntValue()I

    move-result p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private reeditNextStrokes()V
    .locals 3

    .line 7774
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->isStrokeReeditMode()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 7780
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->_fromPosOnSearchNextReeditRange:Lcom/metamoji/un/text/model/TextPosition;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/metamoji/un/text/UnTextUnit;->searchNextStrokesFromPosition(Lcom/metamoji/un/text/model/TextPosition;Z)Lcom/metamoji/un/text/model/TextRange;

    move-result-object v0

    .line 7782
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->isStrokeReconvertMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/metamoji/un/text/UnTextUnit;->_lastCandidateRangeForConvert:Lcom/metamoji/un/text/model/TextRange;

    .line 7783
    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v1

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/metamoji/un/text/model/TextPosition;->compareTo(Lcom/metamoji/un/text/model/TextPosition;)I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/metamoji/un/text/UnTextUnit;->_lastCandidateRangeForConvert:Lcom/metamoji/un/text/model/TextRange;

    .line 7784
    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v1

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/metamoji/un/text/model/TextPosition;->compareTo(Lcom/metamoji/un/text/model/TextPosition;)I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    if-eqz v0, :cond_3

    .line 7797
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->isStrokeReconvertMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7798
    invoke-direct {p0, v0}, Lcom/metamoji/un/text/UnTextUnit;->startReconvertTask(Lcom/metamoji/un/text/model/TextRange;)V

    .line 7802
    :cond_2
    invoke-direct {p0, v0}, Lcom/metamoji/un/text/UnTextUnit;->sendStrokesInRange(Lcom/metamoji/un/text/model/TextRange;)V

    .line 7803
    iput-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->_lastCandidateRangeForConvert:Lcom/metamoji/un/text/model/TextRange;

    return-void

    .line 7806
    :cond_3
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->leaveStrokeReeditMode()Z

    return-void
.end method

.method private reeditNextStrokesLaterIfNeeded()V
    .locals 1

    .line 8044
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->isStrokeReeditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8046
    const-class v0, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/metamoji/un/text/UnTextUnit;->updateInputStyleBar(Ljava/util/EnumSet;)V

    .line 8048
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->reeditNextStrokes()V

    :cond_0
    return-void
.end method

.method private reflectDirectionWithTextModel(Lcom/metamoji/un/text/model/TextModel;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    .line 11952
    iget-boolean v1, v0, Lcom/metamoji/un/text/UnTextUnit;->editing:Z

    if-eqz v1, :cond_0

    .line 11953
    invoke-direct/range {p0 .. p1}, Lcom/metamoji/un/text/UnTextUnit;->reflectGeometricPropsFromModel(Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 11964
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->getObjectListener()Lcom/metamoji/ctold/CtObjectListener;

    move-result-object v11

    const/4 v1, 0x1

    const/4 v12, 0x0

    if-eqz v11, :cond_2

    .line 11966
    invoke-static {}, Lcom/metamoji/cm/CmLocalIdManager;->getInstance()Lcom/metamoji/cm/CmLocalIdManager;

    move-result-object v2

    const-string/jumbo v3, "unit"

    invoke-virtual {v2, v3}, Lcom/metamoji/cm/CmLocalIdManager;->generateSubIdWithType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 11967
    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->getObjectType()Lcom/metamoji/ctold/object/CtObjectType;

    move-result-object v3

    invoke-static {v3, v2, v12, v12}, Lcom/metamoji/un/util/UnTaggableSaveObject;->createObject(Lcom/metamoji/ctold/object/CtObjectType;Ljava/lang/String;Lcom/metamoji/un/util/UnTaggableSaveObject;Lcom/metamoji/un/util/UnTaggableSaveObject;)Lcom/metamoji/un/util/UnTaggableSaveObject;

    move-result-object v2

    .line 11970
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 11971
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 11972
    invoke-virtual {v0, v4, v1}, Lcom/metamoji/un/text/UnTextUnit;->collectAllParagraphInfos(Ljava/util/List;Z)V

    .line 11974
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/ctold/CtTaggableObject;

    .line 11975
    invoke-interface {v5}, Lcom/metamoji/ctold/CtTaggableObject;->getObjectType()Lcom/metamoji/ctold/object/CtObjectType;

    move-result-object v6

    invoke-interface {v5}, Lcom/metamoji/ctold/CtTaggableObject;->getObjectId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2, v2}, Lcom/metamoji/un/util/UnTaggableSaveObject;->createObject(Lcom/metamoji/ctold/object/CtObjectType;Ljava/lang/String;Lcom/metamoji/un/util/UnTaggableSaveObject;Lcom/metamoji/un/util/UnTaggableSaveObject;)Lcom/metamoji/un/util/UnTaggableSaveObject;

    move-result-object v6

    .line 11976
    invoke-interface {v11, v5, v6}, Lcom/metamoji/ctold/CtObjectListener;->notifyObjectTransferred(Lcom/metamoji/ctold/CtTaggableObject;Lcom/metamoji/ctold/CtTaggableObject;)V

    .line 11977
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11980
    :cond_1
    invoke-interface {v11, v0, v2}, Lcom/metamoji/ctold/CtObjectListener;->notifyObjectTransferred(Lcom/metamoji/ctold/CtTaggableObject;Lcom/metamoji/ctold/CtTaggableObject;)V

    move-object v13, v2

    move-object v14, v3

    goto :goto_1

    :cond_2
    move-object v13, v12

    move-object v14, v13

    .line 11983
    :goto_1
    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->getUnitNoDropShadow()Z

    move-result v15

    .line 11986
    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v2

    .line 11987
    invoke-virtual {v2, v10}, Lcom/metamoji/un/text/model/TextModel;->applyModel(Lcom/metamoji/un/text/model/TextModel;)V

    .line 11989
    invoke-virtual {v2}, Lcom/metamoji/un/text/model/TextModel;->getVerticalWriting()Z

    move-result v3

    .line 11990
    iget-object v4, v0, Lcom/metamoji/un/text/UnTextUnit;->textSprite:Lcom/metamoji/un/text/sprite/TextSprite;

    invoke-virtual {v4}, Lcom/metamoji/un/text/sprite/TextSprite;->isVerticalWriting()Z

    move-result v4

    if-eq v4, v3, :cond_3

    .line 11991
    iget-object v4, v0, Lcom/metamoji/un/text/UnTextUnit;->textSprite:Lcom/metamoji/un/text/sprite/TextSprite;

    invoke-virtual {v4, v3}, Lcom/metamoji/un/text/sprite/TextSprite;->setVerticalWriting(Z)V

    .line 11995
    :cond_3
    invoke-virtual {v2, v1}, Lcom/metamoji/un/text/model/TextModel;->setModified(Z)V

    const/4 v1, 0x0

    .line 11998
    iput-boolean v1, v0, Lcom/metamoji/un/text/UnTextUnit;->_collaboModified:Z

    .line 12001
    const-string/jumbo v3, "x"

    const-wide/16 v4, 0x0

    invoke-virtual {v10, v3, v4, v5}, Lcom/metamoji/un/text/model/TextModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v6

    double-to-float v3, v6

    .line 12002
    const-string/jumbo v6, "y"

    invoke-virtual {v10, v6, v4, v5}, Lcom/metamoji/un/text/model/TextModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v6

    double-to-float v6, v6

    .line 12003
    const-string/jumbo v7, "width"

    invoke-virtual {v10, v7, v4, v5}, Lcom/metamoji/un/text/model/TextModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v7

    double-to-float v7, v7

    .line 12004
    const-string v8, "height"

    invoke-virtual {v10, v8, v4, v5}, Lcom/metamoji/un/text/model/TextModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v8

    double-to-float v8, v8

    .line 12005
    const-string v9, "contentScale"

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v10, v9, v4, v5}, Lcom/metamoji/un/text/model/TextModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v4

    double-to-float v4, v4

    move v5, v1

    .line 12007
    new-instance v1, Lcom/metamoji/df/controller/GeometricProps;

    invoke-direct {v1}, Lcom/metamoji/df/controller/GeometricProps;-><init>()V

    .line 12008
    new-instance v9, Landroid/graphics/PointF;

    invoke-direct {v9, v3, v6}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v9, v1, Lcom/metamoji/df/controller/GeometricProps;->origin:Landroid/graphics/PointF;

    .line 12009
    new-instance v3, Lcom/metamoji/cm/SizeF;

    invoke-direct {v3, v7, v8}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    iput-object v3, v1, Lcom/metamoji/df/controller/GeometricProps;->size:Lcom/metamoji/cm/SizeF;

    .line 12010
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, v1, Lcom/metamoji/df/controller/GeometricProps;->contentScale:Ljava/lang/Float;

    .line 12012
    iget-boolean v3, v2, Lcom/metamoji/un/text/model/TextModel;->unitWidthSelfAdjustment:Z

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v4, v2

    const/4 v2, 0x0

    move v6, v3

    const/4 v3, 0x0

    move-object v7, v4

    const/4 v4, 0x0

    move/from16 v18, v5

    const/4 v5, 0x0

    move/from16 v19, v6

    const/4 v6, 0x0

    move-object/from16 v20, v7

    const/4 v7, 0x1

    move-object/from16 v17, v13

    move-object/from16 v18, v14

    move/from16 v16, v15

    move/from16 v15, v19

    move-object/from16 v12, v20

    const-wide/16 v13, 0x0

    .line 12014
    invoke-direct/range {v0 .. v9}, Lcom/metamoji/un/text/UnTextUnit;->setGeometricPropsSelf(Lcom/metamoji/df/controller/GeometricProps;Lcom/metamoji/un/text/model/undo/ITextUndoManager;ZZZLjava/util/List;ZLjava/util/Map;Z)Z

    .line 12024
    const-string/jumbo v0, "rotation"

    invoke-virtual {v10, v0, v13, v14}, Lcom/metamoji/un/text/model/TextModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 12026
    invoke-virtual {v12, v0, v13, v14}, Lcom/metamoji/un/text/model/TextModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v2

    double-to-float v0, v2

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4

    move v0, v1

    .line 12027
    new-instance v1, Lcom/metamoji/df/controller/GeometricProps;

    invoke-direct {v1}, Lcom/metamoji/df/controller/GeometricProps;-><init>()V

    .line 12028
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, v1, Lcom/metamoji/df/controller/GeometricProps;->rotation:Ljava/lang/Float;

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v0, p0

    .line 12030
    invoke-direct/range {v0 .. v9}, Lcom/metamoji/un/text/UnTextUnit;->setGeometricPropsSelf(Lcom/metamoji/df/controller/GeometricProps;Lcom/metamoji/un/text/model/undo/ITextUndoManager;ZZZLjava/util/List;ZLjava/util/Map;Z)Z

    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    :goto_2
    const/4 v1, 0x0

    .line 12034
    invoke-virtual {v12, v1}, Lcom/metamoji/un/text/model/TextModel;->needsRemakeLineTable(Lcom/metamoji/un/text/model/TextPosition;)V

    .line 12037
    iput-boolean v15, v12, Lcom/metamoji/un/text/model/TextModel;->unitWidthSelfAdjustment:Z

    if-eqz v17, :cond_7

    if-eqz v18, :cond_7

    .line 12040
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    .line 12041
    invoke-virtual {v0, v1, v5}, Lcom/metamoji/un/text/UnTextUnit;->collectAllParagraphInfos(Ljava/util/List;Z)V

    .line 12044
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ctold/CtTaggableObject;

    .line 12045
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_5

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    goto :goto_4

    :cond_5
    move-object/from16 v3, v18

    .line 12048
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/ctold/CtTaggableObject;

    invoke-interface {v11, v4, v2}, Lcom/metamoji/ctold/CtObjectListener;->notifyObjectTransferred(Lcom/metamoji/ctold/CtTaggableObject;Lcom/metamoji/ctold/CtTaggableObject;)V

    .line 12049
    invoke-interface {v3, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    move-object/from16 v3, v18

    move-object/from16 v2, v17

    .line 12053
    :goto_4
    invoke-interface {v11, v2, v0}, Lcom/metamoji/ctold/CtObjectListener;->notifyObjectTransferred(Lcom/metamoji/ctold/CtTaggableObject;Lcom/metamoji/ctold/CtTaggableObject;)V

    .line 12056
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 12057
    invoke-interface {v11, v3}, Lcom/metamoji/ctold/CtObjectListener;->notifyObjectsRemoving(Ljava/util/List;)V

    .line 12061
    :cond_7
    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->getUnitNoDropShadow()Z

    move-result v1

    move/from16 v2, v16

    if-eq v2, v1, :cond_8

    .line 12062
    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->setNeedsDisplay()V

    :cond_8
    return-void
.end method

.method private reflectGeometricPropsFromModel(Lcom/metamoji/df/model/IModel;)V
    .locals 27

    move-object/from16 v0, p1

    if-nez v0, :cond_1

    :cond_0
    move-object/from16 v7, p0

    goto/16 :goto_1

    .line 12076
    :cond_1
    new-instance v1, Lcom/metamoji/df/controller/GeometricProps;

    invoke-direct {v1}, Lcom/metamoji/df/controller/GeometricProps;-><init>()V

    .line 12078
    const-string/jumbo v2, "x"

    invoke-interface {v0, v2}, Lcom/metamoji/df/model/IModel;->hasProperty(Ljava/lang/String;)Z

    move-result v3

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_2

    const-string/jumbo v3, "y"

    invoke-interface {v0, v3}, Lcom/metamoji/df/model/IModel;->hasProperty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 12079
    new-instance v6, Landroid/graphics/PointF;

    invoke-interface {v0, v2, v4, v5}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v7

    double-to-float v2, v7

    invoke-interface {v0, v3, v4, v5}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v7

    double-to-float v3, v7

    invoke-direct {v6, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v6, v1, Lcom/metamoji/df/controller/GeometricProps;->origin:Landroid/graphics/PointF;

    .line 12082
    :cond_2
    const-string/jumbo v2, "width"

    invoke-interface {v0, v2}, Lcom/metamoji/df/model/IModel;->hasProperty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "height"

    invoke-interface {v0, v3}, Lcom/metamoji/df/model/IModel;->hasProperty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 12083
    new-instance v6, Lcom/metamoji/cm/SizeF;

    invoke-interface {v0, v2, v4, v5}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v7

    double-to-float v2, v7

    invoke-interface {v0, v3, v4, v5}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v7

    double-to-float v3, v7

    invoke-direct {v6, v2, v3}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    iput-object v6, v1, Lcom/metamoji/df/controller/GeometricProps;->size:Lcom/metamoji/cm/SizeF;

    .line 12086
    :cond_3
    const-string/jumbo v2, "rotation"

    invoke-interface {v0, v2}, Lcom/metamoji/df/model/IModel;->hasProperty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 12087
    invoke-interface {v0, v2, v4, v5}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v6

    double-to-float v3, v6

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, v1, Lcom/metamoji/df/controller/GeometricProps;->rotation:Ljava/lang/Float;

    .line 12090
    :cond_4
    const-string v3, "contentScale"

    invoke-interface {v0, v3}, Lcom/metamoji/df/model/IModel;->hasProperty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 12091
    invoke-interface {v0, v3, v4, v5}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v6

    double-to-float v0, v6

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, v1, Lcom/metamoji/df/controller/GeometricProps;->contentScale:Ljava/lang/Float;

    .line 12095
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    const/4 v3, 0x1

    .line 12096
    invoke-virtual {v0, v3}, Lcom/metamoji/un/text/model/TextModel;->setModified(Z)V

    .line 12099
    invoke-static {}, Lcom/metamoji/un/text/UnTextUnitStateManager;->sharedInstance()Lcom/metamoji/un/text/UnTextUnitStateManager;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/metamoji/un/text/UnTextUnitStateManager;->setCollaboModifiedFlagOnIdle(Z)V

    .line 12102
    new-instance v8, Lcom/metamoji/df/controller/GeometricProps;

    invoke-direct {v8}, Lcom/metamoji/df/controller/GeometricProps;-><init>()V

    .line 12103
    iget-object v3, v1, Lcom/metamoji/df/controller/GeometricProps;->origin:Landroid/graphics/PointF;

    iput-object v3, v8, Lcom/metamoji/df/controller/GeometricProps;->origin:Landroid/graphics/PointF;

    .line 12104
    iget-object v3, v1, Lcom/metamoji/df/controller/GeometricProps;->size:Lcom/metamoji/cm/SizeF;

    iput-object v3, v8, Lcom/metamoji/df/controller/GeometricProps;->size:Lcom/metamoji/cm/SizeF;

    .line 12105
    iget-object v3, v1, Lcom/metamoji/df/controller/GeometricProps;->contentScale:Ljava/lang/Float;

    iput-object v3, v8, Lcom/metamoji/df/controller/GeometricProps;->contentScale:Ljava/lang/Float;

    .line 12107
    iget-boolean v3, v0, Lcom/metamoji/un/text/model/TextModel;->unitWidthSelfAdjustment:Z

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v7, p0

    .line 12109
    invoke-direct/range {v7 .. v16}, Lcom/metamoji/un/text/UnTextUnit;->setGeometricPropsSelf(Lcom/metamoji/df/controller/GeometricProps;Lcom/metamoji/un/text/model/undo/ITextUndoManager;ZZZLjava/util/List;ZLjava/util/Map;Z)Z

    .line 12120
    iget-object v6, v1, Lcom/metamoji/df/controller/GeometricProps;->rotation:Ljava/lang/Float;

    if-eqz v6, :cond_6

    iget-object v1, v1, Lcom/metamoji/df/controller/GeometricProps;->rotation:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    .line 12121
    :goto_0
    invoke-virtual {v0, v2, v4, v5}, Lcom/metamoji/un/text/model/TextModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v4

    double-to-float v2, v4

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_7

    .line 12122
    new-instance v2, Lcom/metamoji/df/controller/GeometricProps;

    invoke-direct {v2}, Lcom/metamoji/df/controller/GeometricProps;-><init>()V

    .line 12123
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v2, Lcom/metamoji/df/controller/GeometricProps;->rotation:Ljava/lang/Float;

    const/16 v25, 0x0

    const/16 v26, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x1

    move-object/from16 v17, p0

    move-object/from16 v18, v2

    .line 12125
    invoke-direct/range {v17 .. v26}, Lcom/metamoji/un/text/UnTextUnit;->setGeometricPropsSelf(Lcom/metamoji/df/controller/GeometricProps;Lcom/metamoji/un/text/model/undo/ITextUndoManager;ZZZLjava/util/List;ZLjava/util/Map;Z)Z

    :cond_7
    const/4 v1, 0x0

    .line 12129
    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/model/TextModel;->needsRemakeLineTable(Lcom/metamoji/un/text/model/TextPosition;)V

    .line 12132
    iput-boolean v3, v0, Lcom/metamoji/un/text/model/TextModel;->unitWidthSelfAdjustment:Z

    .line 12135
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/un/text/UnTextUnit;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object/from16 v7, p0

    .line 12136
    iget-object v0, v7, Lcom/metamoji/un/text/UnTextUnit;->_rubberBand:Lcom/metamoji/un/util/UnRubberBandSupport;

    invoke-virtual {v0}, Lcom/metamoji/un/util/UnRubberBandSupport;->update()V

    :goto_1
    return-void
.end method

.method private registerCollaboHandler()V
    .locals 1

    .line 11773
    iget-boolean v0, p0, Lcom/metamoji/un/text/UnTextUnit;->_registerCollabo:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 11778
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->isDirectable()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 11782
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getAppFrame()Lcom/metamoji/nt/INtAppFrame;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/nt/INtAppFrame;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 11786
    invoke-virtual {v0, p0}, Lcom/metamoji/ns/direction/NsDirectionManager;->registerHandler(Lcom/metamoji/ns/direction/INsDirectionHandler;)V

    const/4 v0, 0x1

    .line 11787
    iput-boolean v0, p0, Lcom/metamoji/un/text/UnTextUnit;->_registerCollabo:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public static registerPerformer(Lcom/metamoji/df/model/IModelManager;)V
    .locals 2

    .line 3867
    new-instance v0, Lcom/metamoji/un/text/UnTextUnit$UndoPerformer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/un/text/UnTextUnit$UndoPerformer;-><init>(Lcom/metamoji/un/text/UnTextUnit-IA;)V

    .line 3868
    const-string/jumbo v1, "textUnitUndo"

    invoke-interface {p0, v1, v0}, Lcom/metamoji/df/model/IModelManager;->registerUndoPerformer(Ljava/lang/String;Lcom/metamoji/df/model/IUndoPerformer;)V

    return-void
.end method

.method private replaceSpellCheckError(Lcom/metamoji/un/text/hotspot/HotSpotLocationForSpellCheck;Ljava/lang/String;)V
    .locals 3

    .line 11622
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    .line 11624
    iget-object v1, p1, Lcom/metamoji/un/text/hotspot/HotSpotLocationForSpellCheck;->range:Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/un/text/model/TextModel;->positionFromPosition(Lcom/metamoji/un/text/model/TextPosition;I)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v1

    .line 11625
    new-instance v2, Lcom/metamoji/un/text/model/TextRange;

    iget-object p1, p1, Lcom/metamoji/un/text/hotspot/HotSpotLocationForSpellCheck;->range:Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    invoke-direct {v2, p1, v1}, Lcom/metamoji/un/text/model/TextRange;-><init>(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/TextPosition;)V

    .line 11626
    invoke-virtual {v0, v2}, Lcom/metamoji/un/text/model/TextModel;->setSelectedTextRange(Lcom/metamoji/un/text/model/TextRange;)V

    .line 11628
    invoke-virtual {v0, p2}, Lcom/metamoji/un/text/model/TextModel;->insertText(Ljava/lang/String;)V

    return-void
.end method

.method private scrollEnd()V
    .locals 1

    .line 1324
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->isInComposition()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1325
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->selModCurCtrl:Lcom/metamoji/un/text/UnTextUnit$SelectionModifierCursorController;

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit$SelectionModifierCursorController;->show()V

    .line 1326
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->notifyImeCaretPos()V

    return-void
.end method

.method private scrollRectToVisible(Landroid/graphics/RectF;Z)V
    .locals 1

    .line 10479
    invoke-direct {p0, p1}, Lcom/metamoji/un/text/UnTextUnit;->spriteToPaperSprite(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    .line 10480
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getPageController()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/nt/NtPageController;->scrollRectToVisible(Landroid/graphics/RectF;Z)V

    return-void
.end method

.method private searchFirstContinualStrokesInRange(Lcom/metamoji/un/text/model/TextRange;)Lcom/metamoji/un/text/model/TextRange;
    .locals 17

    move-object/from16 v0, p0

    .line 7821
    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/un/text/model/TextRange;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 7825
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextModel;->getStringWsArrayObject()Lcom/metamoji/un/text/model/StringWithStrokesArray;

    move-result-object v1

    .line 7827
    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v3

    .line 7828
    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v4

    .line 7830
    iget v5, v3, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    .line 7831
    iget v6, v4, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    .line 7832
    iget v3, v3, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    .line 7833
    iget v4, v4, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    if-nez v4, :cond_1

    add-int/lit8 v6, v6, -0x1

    .line 7836
    invoke-virtual {v1, v6}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getLength()I

    move-result v4

    :cond_1
    const/4 v7, -0x1

    move v8, v5

    move v9, v7

    move v10, v9

    move v11, v10

    move v12, v11

    :goto_0
    const/4 v13, 0x0

    if-gt v8, v6, :cond_9

    .line 7844
    invoke-virtual {v1, v8}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v14

    .line 7845
    sget-object v15, Lcom/metamoji/un/text/UnTextUnit$ReeditMode;->Reedit:Lcom/metamoji/un/text/UnTextUnit$ReeditMode;

    move-object/from16 v16, v2

    iget-object v2, v0, Lcom/metamoji/un/text/UnTextUnit;->_reeditMode:Lcom/metamoji/un/text/UnTextUnit$ReeditMode;

    if-ne v15, v2, :cond_2

    invoke-virtual {v14}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->isRenderStrokes()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    sget-object v2, Lcom/metamoji/un/text/UnTextUnit$ReeditMode;->Reconvert:Lcom/metamoji/un/text/UnTextUnit$ReeditMode;

    iget-object v15, v0, Lcom/metamoji/un/text/UnTextUnit;->_reeditMode:Lcom/metamoji/un/text/UnTextUnit$ReeditMode;

    if-ne v2, v15, :cond_7

    .line 7846
    invoke-virtual {v14}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->hasStrokes()Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_3
    if-ne v7, v9, :cond_5

    if-ne v8, v5, :cond_4

    move v13, v3

    :cond_4
    move v9, v8

    move v11, v13

    :cond_5
    if-ne v8, v6, :cond_6

    move v12, v4

    goto :goto_1

    .line 7853
    :cond_6
    invoke-virtual {v14}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->getLength()I

    move-result v2

    move v12, v2

    :goto_1
    move v10, v8

    goto :goto_2

    :cond_7
    if-eq v7, v9, :cond_8

    goto :goto_3

    :cond_8
    :goto_2
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v2, v16

    goto :goto_0

    :cond_9
    move-object/from16 v16, v2

    :goto_3
    if-ltz v10, :cond_a

    .line 7864
    invoke-virtual {v1}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->getCount()I

    move-result v2

    if-ge v10, v2, :cond_a

    .line 7865
    invoke-virtual {v1, v10}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v2

    .line 7866
    invoke-virtual {v2}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->getLength()I

    move-result v2

    if-lt v12, v2, :cond_a

    add-int/lit8 v10, v10, 0x1

    move v12, v13

    :cond_a
    if-eq v7, v9, :cond_c

    .line 7875
    invoke-virtual {v1, v9}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v1

    .line 7876
    invoke-virtual {v1}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->isRenderStrokes()Z

    move-result v1

    if-nez v1, :cond_b

    add-int/lit8 v10, v9, 0x1

    move v11, v13

    goto :goto_4

    :cond_b
    move v13, v12

    .line 7882
    :goto_4
    new-instance v1, Lcom/metamoji/un/text/model/TextPosition;

    invoke-direct {v1, v9, v11}, Lcom/metamoji/un/text/model/TextPosition;-><init>(II)V

    .line 7883
    new-instance v2, Lcom/metamoji/un/text/model/TextPosition;

    invoke-direct {v2, v10, v13}, Lcom/metamoji/un/text/model/TextPosition;-><init>(II)V

    .line 7884
    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/metamoji/un/text/model/TextModel;->textRangeFromPosition(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/TextPosition;)Lcom/metamoji/un/text/model/TextRange;

    move-result-object v1

    return-object v1

    :cond_c
    return-object v16
.end method

.method private searchNextStrokesFromPosition(Lcom/metamoji/un/text/model/TextPosition;Z)Lcom/metamoji/un/text/model/TextRange;
    .locals 11

    .line 7904
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getStringWsArrayObject()Lcom/metamoji/un/text/model/StringWithStrokesArray;

    move-result-object v0

    .line 7905
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->getCount()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 7912
    :cond_0
    iget v3, p1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    .line 7913
    iget p1, p1, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    const/4 v4, 0x0

    if-ge v3, v1, :cond_1

    add-int/lit8 v5, v1, -0x1

    if-ne v3, v5, :cond_2

    .line 7915
    invoke-virtual {v0, v3}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getLength()I

    move-result v5

    if-gt v5, p1, :cond_2

    :cond_1
    move p1, v4

    move v3, p1

    :cond_2
    const/4 v5, -0x1

    move v6, v5

    :goto_0
    if-eq v3, v6, :cond_9

    if-ne v5, v6, :cond_3

    move v6, v3

    .line 7926
    :cond_3
    invoke-virtual {v0, v3}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v7

    .line 7927
    sget-object v8, Lcom/metamoji/un/text/UnTextUnit$ReeditMode;->Reedit:Lcom/metamoji/un/text/UnTextUnit$ReeditMode;

    iget-object v9, p0, Lcom/metamoji/un/text/UnTextUnit;->_reeditMode:Lcom/metamoji/un/text/UnTextUnit$ReeditMode;

    if-ne v8, v9, :cond_4

    invoke-virtual {v7}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->isRenderStrokes()Z

    move-result v8

    if-nez v8, :cond_5

    :cond_4
    sget-object v8, Lcom/metamoji/un/text/UnTextUnit$ReeditMode;->Reconvert:Lcom/metamoji/un/text/UnTextUnit$ReeditMode;

    iget-object v9, p0, Lcom/metamoji/un/text/UnTextUnit;->_reeditMode:Lcom/metamoji/un/text/UnTextUnit$ReeditMode;

    if-ne v8, v9, :cond_7

    .line 7928
    invoke-virtual {v7}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->hasStrokes()Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_5
    if-nez p2, :cond_6

    .line 7933
    new-instance p1, Lcom/metamoji/un/text/model/TextPosition;

    invoke-direct {p1, v3, v4}, Lcom/metamoji/un/text/model/TextPosition;-><init>(II)V

    .line 7934
    new-instance p2, Lcom/metamoji/un/text/model/TextPosition;

    add-int/lit8 v3, v3, 0x1

    invoke-direct {p2, v3, v4}, Lcom/metamoji/un/text/model/TextPosition;-><init>(II)V

    goto :goto_1

    .line 7936
    :cond_6
    new-instance p2, Lcom/metamoji/un/text/model/TextPosition;

    invoke-direct {p2, v3, p1}, Lcom/metamoji/un/text/model/TextPosition;-><init>(II)V

    .line 7937
    new-instance p1, Lcom/metamoji/un/text/model/TextPosition;

    add-int/lit8 v3, v3, 0x1

    invoke-direct {p1, v3, v4}, Lcom/metamoji/un/text/model/TextPosition;-><init>(II)V

    move-object v10, p2

    move-object p2, p1

    move-object p1, v10

    .line 7939
    :goto_1
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/un/text/model/TextModel;->textRangeFromPosition(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/TextPosition;)Lcom/metamoji/un/text/model/TextRange;

    move-result-object p1

    return-object p1

    :cond_7
    add-int/lit8 v3, v3, 0x1

    if-lt v3, v1, :cond_8

    move v3, v4

    :cond_8
    move p1, v4

    goto :goto_0

    :cond_9
    return-object v2
.end method

.method private sendStrokesInRange(Lcom/metamoji/un/text/model/TextRange;)V
    .locals 11

    .line 7962
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getStringWsArrayObject()Lcom/metamoji/un/text/model/StringWithStrokesArray;

    move-result-object v0

    .line 7964
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v1

    .line 7965
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v2

    .line 7967
    iget v3, v1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    .line 7968
    iget v4, v2, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    .line 7969
    iget v1, v1, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    .line 7970
    iget v2, v2, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    if-nez v2, :cond_0

    add-int/lit8 v4, v4, -0x1

    .line 7973
    invoke-virtual {v0, v4}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getLength()I

    move-result v2

    .line 7976
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v6, v3

    :goto_0
    if-gt v6, v4, :cond_4

    .line 7979
    invoke-virtual {v0, v6}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v7

    if-ne v6, v3, :cond_1

    if-ne v6, v4, :cond_1

    .line 7982
    new-instance v8, Lcom/metamoji/cm/Range;

    sub-int v9, v2, v1

    invoke-direct {v8, v1, v9}, Lcom/metamoji/cm/Range;-><init>(II)V

    goto :goto_2

    :cond_1
    if-ne v6, v3, :cond_2

    .line 7984
    new-instance v8, Lcom/metamoji/cm/Range;

    invoke-virtual {v7}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->getLength()I

    move-result v9

    sub-int/2addr v9, v1

    invoke-direct {v8, v1, v9}, Lcom/metamoji/cm/Range;-><init>(II)V

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    if-ne v6, v4, :cond_3

    .line 7986
    new-instance v9, Lcom/metamoji/cm/Range;

    invoke-direct {v9, v8, v2}, Lcom/metamoji/cm/Range;-><init>(II)V

    goto :goto_1

    .line 7988
    :cond_3
    new-instance v9, Lcom/metamoji/cm/Range;

    invoke-virtual {v7}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->getLength()I

    move-result v10

    invoke-direct {v9, v8, v10}, Lcom/metamoji/cm/Range;-><init>(II)V

    :goto_1
    move-object v8, v9

    .line 7990
    :goto_2
    invoke-virtual {v7, v8}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->getStrokesWithRange(Lcom/metamoji/cm/Range;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 7995
    :cond_4
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/text/model/TextRange;

    invoke-direct {v1, p1}, Lcom/metamoji/un/text/model/TextRange;-><init>(Lcom/metamoji/un/text/model/TextRange;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/model/TextModel;->setSelectedTextRange(Lcom/metamoji/un/text/model/TextRange;)V

    .line 7999
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getMazecAction()Lcom/metamoji/un/text/MazecAction;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/metamoji/un/text/MazecAction;->setStrokes(Ljava/util/List;)V

    return-void
.end method

.method private sendTextDataDirection(Z)V
    .locals 3

    if-nez p1, :cond_0

    goto :goto_0

    .line 11724
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->isInComposition()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 11729
    :cond_1
    iget-boolean v0, p0, Lcom/metamoji/un/text/UnTextUnit;->_collaboModified:Z

    if-nez v0, :cond_2

    goto :goto_0

    .line 11734
    :cond_2
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->getSendDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object v0

    if-nez v0, :cond_3

    :goto_0
    return-void

    .line 11739
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData;->newDirectionDataWithTextModel(Lcom/metamoji/un/text/model/TextModel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData;

    const/4 v2, 0x1

    xor-int/2addr p1, v2

    .line 11740
    invoke-direct {p0, v1, v0, p1, v2}, Lcom/metamoji/un/text/UnTextUnit;->sendTextUnitDirectionData(Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData;Lcom/metamoji/ns/direction/NsDirectionManager;ZZ)V

    const/4 p1, 0x0

    .line 11743
    iput-boolean p1, p0, Lcom/metamoji/un/text/UnTextUnit;->_collaboModified:Z

    return-void
.end method

.method private sendTextUnitDirectionData(Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData;Lcom/metamoji/ns/direction/NsDirectionManager;ZZ)V
    .locals 9

    .line 11753
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getPageController()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    .line 11754
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->layerController()Lcom/metamoji/nt/NtLayerController;

    move-result-object v1

    .line 11755
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/metamoji/nt/NtLayerController;->getLayerType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/metamoji/nt/NtLayerController;->getLayerId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/metamoji/ns/NsCollaboUtils;->boothIdWithPageId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 11756
    invoke-virtual {p1}, Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData;->getDirection()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getDirectionHandlerID()Ljava/lang/String;

    move-result-object v5

    move-object v3, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v3 .. v8}, Lcom/metamoji/ns/direction/NsDirectionManager;->sendDirection(Ljava/lang/Object;Ljava/lang/String;ZZLjava/lang/String;)V

    .line 11759
    invoke-virtual {p1}, Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData;->getDirection()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData;->isTargetTextModelDirection(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 11760
    invoke-virtual {p1}, Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData;->detachDirection()Ljava/lang/Object;

    return-void

    .line 11764
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData;->destroy()V

    return-void
.end method

.method public static setCheckSpellingWhenTyping(Z)V
    .locals 2

    .line 11465
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtFeature;->TextSpellCheck:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/metamoji/un/text/UnTextUnit;->_checkSpelling:Z

    if-ne v0, p0, :cond_0

    goto :goto_0

    .line 11469
    :cond_0
    sput-boolean p0, Lcom/metamoji/un/text/UnTextUnit;->_checkSpelling:Z

    .line 11472
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object p0

    .line 11473
    const-string v0, "MMJTextUnitAutoSpellCheck"

    sget-boolean v1, Lcom/metamoji/un/text/UnTextUnit;->_checkSpelling:Z

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static setDispTextUnitDropShadow(Z)V
    .locals 2

    xor-int/lit8 p0, p0, 0x1

    .line 11345
    sget-object v0, Lcom/metamoji/un/text/UnTextUnit$UnTextUnitOption;->UnTextUnitOption_HideDropShadow:Lcom/metamoji/un/text/UnTextUnit$UnTextUnitOption;

    invoke-static {v0}, Lcom/metamoji/un/text/UnTextUnit;->isEnableFlagTextUnitOption(Lcom/metamoji/un/text/UnTextUnit$UnTextUnitOption;)Z

    move-result v0

    if-ne v0, p0, :cond_0

    goto :goto_0

    .line 11350
    :cond_0
    sget-object v0, Lcom/metamoji/un/text/UnTextUnit$UnTextUnitOption;->UnTextUnitOption_HideDropShadow:Lcom/metamoji/un/text/UnTextUnit$UnTextUnitOption;

    invoke-static {p0, v0}, Lcom/metamoji/un/text/UnTextUnit;->setEnableFlagTextUnitOption(ZLcom/metamoji/un/text/UnTextUnit$UnTextUnitOption;)V

    .line 11352
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 11357
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-nez v0, :cond_2

    :goto_0
    return-void

    .line 11362
    :cond_2
    invoke-static {p0}, Lcom/metamoji/nt/NtTextUnitDropShadowStateChangeEventContext;->eventWithHideSetting(Z)Lcom/metamoji/nt/NtTextUnitDropShadowStateChangeEventContext;

    move-result-object p0

    .line 11363
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/metamoji/nt/NtPageController;->broadcastEventToDescendent(Lcom/metamoji/df/controller/BroadcastContext;Z)V

    return-void
.end method

.method public static setEnableFlagTextUnitOption(ZLcom/metamoji/un/text/UnTextUnit$UnTextUnitOption;)V
    .locals 1

    .line 11311
    invoke-static {}, Lcom/metamoji/un/text/UnTextUnit;->getTextUnitOption()I

    move-result v0

    if-eqz p0, :cond_0

    .line 11313
    invoke-virtual {p1}, Lcom/metamoji/un/text/UnTextUnit$UnTextUnitOption;->toIntValue()I

    move-result p0

    and-int/2addr p0, v0

    if-nez p0, :cond_1

    .line 11314
    invoke-virtual {p1}, Lcom/metamoji/un/text/UnTextUnit$UnTextUnitOption;->toIntValue()I

    move-result p0

    or-int/2addr v0, p0

    goto :goto_0

    .line 11317
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/un/text/UnTextUnit$UnTextUnitOption;->toIntValue()I

    move-result p0

    and-int/2addr p0, v0

    if-eqz p0, :cond_1

    .line 11318
    invoke-virtual {p1}, Lcom/metamoji/un/text/UnTextUnit$UnTextUnitOption;->toIntValue()I

    move-result p0

    not-int p0, p0

    and-int/2addr v0, p0

    .line 11321
    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/metamoji/un/text/UnTextUnit;->setTextUnitOption(I)V

    return-void
.end method

.method public static setEnableLockShareEditing(Z)V
    .locals 1

    xor-int/lit8 p0, p0, 0x1

    .line 11379
    sget-object v0, Lcom/metamoji/un/text/UnTextUnit$UnTextUnitOption;->UnTextUnitOption_AllowMultipleShareEdit:Lcom/metamoji/un/text/UnTextUnit$UnTextUnitOption;

    invoke-static {p0, v0}, Lcom/metamoji/un/text/UnTextUnit;->setEnableFlagTextUnitOption(ZLcom/metamoji/un/text/UnTextUnit$UnTextUnitOption;)V

    return-void
.end method

.method private setGeometricPropsCore1(Lcom/metamoji/df/controller/GeometricProps;ZLcom/metamoji/cm/mutable/Mutable;Lcom/metamoji/cm/mutable/Mutable;Lcom/metamoji/cm/mutable/Mutable;)Z
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/df/controller/GeometricProps;",
            "Z",
            "Lcom/metamoji/cm/mutable/Mutable<",
            "Ljava/lang/Float;",
            ">;",
            "Lcom/metamoji/cm/mutable/Mutable<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/metamoji/cm/mutable/Mutable<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    const/4 v4, 0x0

    .line 3147
    invoke-virtual {v1, v4}, Lcom/metamoji/cm/mutable/Mutable;->setValue(Ljava/lang/Object;)V

    const/4 v4, 0x0

    .line 3148
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/metamoji/cm/mutable/Mutable;->setValue(Ljava/lang/Object;)V

    .line 3149
    invoke-virtual {v3, v5}, Lcom/metamoji/cm/mutable/Mutable;->setValue(Ljava/lang/Object;)V

    .line 3151
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/un/text/UnTextUnit;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v5

    const-string/jumbo v6, "x"

    const-wide/16 v7, 0x0

    invoke-interface {v5, v6, v7, v8}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v9

    double-to-float v5, v9

    .line 3152
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/un/text/UnTextUnit;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v9

    const-string/jumbo v10, "y"

    invoke-interface {v9, v10, v7, v8}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v11

    double-to-float v9, v11

    .line 3153
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/un/text/UnTextUnit;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v11

    const-string/jumbo v12, "width"

    invoke-interface {v11, v12, v7, v8}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v13

    double-to-float v11, v13

    .line 3154
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/un/text/UnTextUnit;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v13

    const-string v14, "height"

    move/from16 v16, v5

    invoke-interface {v13, v14, v7, v8}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 3155
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/un/text/UnTextUnit;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v5

    const-string/jumbo v13, "rotation"

    move/from16 v17, v4

    invoke-interface {v5, v13, v7, v8}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 3163
    iget-object v5, v0, Lcom/metamoji/df/controller/GeometricProps;->origin:Landroid/graphics/PointF;

    const/16 v18, 0x1

    move-wide/from16 v19, v7

    .line 3173
    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    if-eqz v5, :cond_1

    .line 3165
    iget-object v5, v0, Lcom/metamoji/df/controller/GeometricProps;->origin:Landroid/graphics/PointF;

    .line 3166
    iget v8, v5, Landroid/graphics/PointF;->x:F

    cmpl-float v8, v16, v8

    if-nez v8, :cond_0

    iget v8, v5, Landroid/graphics/PointF;->y:F

    cmpl-float v8, v9, v8

    if-eqz v8, :cond_1

    .line 3168
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/un/text/UnTextUnit;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v8

    iget v9, v5, Landroid/graphics/PointF;->x:F

    float-to-double v1, v9

    invoke-interface {v8, v6, v1, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 3169
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/un/text/UnTextUnit;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    iget v2, v5, Landroid/graphics/PointF;->y:F

    float-to-double v5, v2

    invoke-interface {v1, v10, v5, v6}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 3173
    invoke-virtual {v3, v7}, Lcom/metamoji/cm/mutable/Mutable;->setValue(Ljava/lang/Object;)V

    move/from16 v1, v18

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 3176
    :goto_0
    iget-object v2, v0, Lcom/metamoji/df/controller/GeometricProps;->size:Lcom/metamoji/cm/SizeF;

    if-eqz v2, :cond_6

    .line 3178
    iget-object v2, v0, Lcom/metamoji/df/controller/GeometricProps;->size:Lcom/metamoji/cm/SizeF;

    .line 3179
    iget v5, v2, Lcom/metamoji/cm/SizeF;->width:F

    cmpl-float v5, v11, v5

    if-nez v5, :cond_2

    iget v5, v2, Lcom/metamoji/cm/SizeF;->height:F

    cmpl-float v5, v17, v5

    if-eqz v5, :cond_6

    .line 3181
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/un/text/UnTextUnit;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    iget v5, v2, Lcom/metamoji/cm/SizeF;->width:F

    float-to-double v5, v5

    invoke-interface {v1, v12, v5, v6}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 3182
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/un/text/UnTextUnit;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    iget v5, v2, Lcom/metamoji/cm/SizeF;->height:F

    float-to-double v5, v5

    invoke-interface {v1, v14, v5, v6}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    move-object/from16 v1, p4

    .line 3185
    invoke-virtual {v1, v7}, Lcom/metamoji/cm/mutable/Mutable;->setValue(Ljava/lang/Object;)V

    .line 3191
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextModel;->getVerticalWriting()Z

    move-result v1

    const-wide v5, 0x3f40624dd2f1a9fcL    # 5.0E-4

    if-nez v1, :cond_3

    .line 3192
    iget v8, v2, Lcom/metamoji/cm/SizeF;->width:F

    sub-float/2addr v11, v8

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-double v8, v8

    cmpl-double v8, v8, v5

    if-gez v8, :cond_4

    :cond_3
    if-eqz v1, :cond_5

    iget v1, v2, Lcom/metamoji/cm/SizeF;->height:F

    sub-float v1, v17, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    cmpl-double v1, v1, v5

    if-ltz v1, :cond_5

    :cond_4
    if-nez p2, :cond_5

    .line 3193
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v1

    iget-boolean v1, v1, Lcom/metamoji/un/text/model/TextModel;->unitWidthSelfAdjustment:Z

    if-eqz v1, :cond_5

    .line 3195
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v1

    const/4 v15, 0x0

    iput-boolean v15, v1, Lcom/metamoji/un/text/model/TextModel;->unitWidthSelfAdjustment:Z

    :cond_5
    move/from16 v1, v18

    .line 3200
    :cond_6
    iget-object v2, v0, Lcom/metamoji/df/controller/GeometricProps;->contentScale:Ljava/lang/Float;

    if-eqz v2, :cond_8

    .line 3201
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/un/text/UnTextUnit;->getContentScale()D

    move-result-wide v5

    cmpl-double v2, v19, v5

    if-nez v2, :cond_7

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 3206
    :cond_7
    iget-object v2, v0, Lcom/metamoji/df/controller/GeometricProps;->contentScale:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v8, v2

    cmpl-double v2, v5, v8

    if-eqz v2, :cond_8

    double-to-float v1, v5

    .line 3209
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    move-object/from16 v2, p3

    invoke-virtual {v2, v1}, Lcom/metamoji/cm/mutable/Mutable;->setValue(Ljava/lang/Object;)V

    move-object/from16 v2, p0

    .line 3210
    invoke-virtual {v2, v8, v9}, Lcom/metamoji/un/text/UnTextUnit;->setContentScale(D)V

    move/from16 v1, v18

    goto :goto_1

    :cond_8
    move-object/from16 v2, p0

    .line 3214
    :goto_1
    iget-object v5, v0, Lcom/metamoji/df/controller/GeometricProps;->rotation:Ljava/lang/Float;

    if-eqz v5, :cond_9

    .line 3216
    iget-object v0, v0, Lcom/metamoji/df/controller/GeometricProps;->rotation:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v4, v4, v0

    if-eqz v4, :cond_9

    .line 3219
    invoke-virtual {v2}, Lcom/metamoji/un/text/UnTextUnit;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    float-to-double v4, v0

    invoke-interface {v1, v13, v4, v5}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 3221
    invoke-virtual {v3, v7}, Lcom/metamoji/cm/mutable/Mutable;->setValue(Ljava/lang/Object;)V

    return v18

    :cond_9
    return v1
.end method

.method private setGeometricPropsCore2(ZZZZ)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 3234
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/metamoji/un/text/model/TextModel;->needsRemakeLineTable(Lcom/metamoji/un/text/model/TextPosition;)V

    .line 3246
    :cond_0
    new-instance p1, Lcom/metamoji/df/controller/GeometricProps;

    invoke-direct {p1}, Lcom/metamoji/df/controller/GeometricProps;-><init>()V

    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/UnTextUnit;->setSpriteGeometry(Lcom/metamoji/df/controller/GeometricProps;)V

    .line 3247
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->updateMaxMaxWidthHeight()V

    .line 3255
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->setNeedsDisplay()V

    .line 3258
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3259
    iget-object p1, p0, Lcom/metamoji/un/text/UnTextUnit;->insPtCurCtrl:Lcom/metamoji/un/text/UnTextUnit$InsertionPointCursorController;

    invoke-virtual {p1}, Lcom/metamoji/un/text/UnTextUnit$InsertionPointCursorController;->updateRotate()V

    .line 3260
    iget-object p1, p0, Lcom/metamoji/un/text/UnTextUnit;->selModCurCtrl:Lcom/metamoji/un/text/UnTextUnit$SelectionModifierCursorController;

    invoke-virtual {p1}, Lcom/metamoji/un/text/UnTextUnit$SelectionModifierCursorController;->updateRotate()V

    :cond_1
    if-eqz p3, :cond_2

    .line 3266
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3267
    iget-object p1, p0, Lcom/metamoji/un/text/UnTextUnit;->_rubberBand:Lcom/metamoji/un/util/UnRubberBandSupport;

    invoke-virtual {p1}, Lcom/metamoji/un/util/UnRubberBandSupport;->update()V

    :cond_2
    if-eqz p4, :cond_6

    .line 3300
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 3301
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/un/text/model/TextModel;->getParagraphTable()Lcom/metamoji/un/text/model/paragtable/ParagraphTable;

    move-result-object p2

    .line 3302
    invoke-virtual {p2}, Lcom/metamoji/un/text/model/paragtable/ParagraphTable;->count()I

    move-result p3

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p3, :cond_5

    .line 3304
    invoke-virtual {p2, p4}, Lcom/metamoji/un/text/model/paragtable/ParagraphTable;->paragraphInfoAt(I)Lcom/metamoji/un/text/model/paragtable/ParagraphInfo;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/text/model/paragtable/TaggedParagraphInfo;

    .line 3305
    invoke-virtual {v1}, Lcom/metamoji/un/text/model/paragtable/TaggedParagraphInfo;->getParagraphStyle()Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/paragtable/TaggedParagraphInfo;->getParagraphStyle()Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->getTagId()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    move-object v2, v0

    :goto_1
    if-eqz v2, :cond_4

    .line 3307
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 3310
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_6

    .line 3311
    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/UnTextUnit;->notifyObjectsGeometricChanged(Ljava/util/List;)V

    .line 3316
    :cond_6
    invoke-static {}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->getUnTextEditUserInfoView()Lcom/metamoji/un/text/UnTextEditUserInfoView;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 3318
    invoke-virtual {p1, p0}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->updateLayoutLabelWithTextUnit(Lcom/metamoji/un/text/UnTextUnit;)V

    :cond_7
    return-void
.end method

.method private setGeometricPropsSelf(Lcom/metamoji/df/controller/GeometricProps;Lcom/metamoji/un/text/model/undo/ITextUndoManager;ZZZLjava/util/List;ZLjava/util/Map;Z)Z
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/df/controller/GeometricProps;",
            "Lcom/metamoji/un/text/model/undo/ITextUndoManager;",
            "ZZZ",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)Z"
        }
    .end annotation

    move-object/from16 v6, p2

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    .line 3009
    invoke-virtual/range {p0 .. p1}, Lcom/metamoji/un/text/UnTextUnit;->getGeometricUndoOrRedo(Lcom/metamoji/df/controller/GeometricProps;)Lcom/metamoji/df/controller/GeometricProps;

    move-result-object v10

    .line 3013
    new-instance v3, Lcom/metamoji/cm/mutable/Mutable;

    invoke-direct {v3}, Lcom/metamoji/cm/mutable/Mutable;-><init>()V

    .line 3014
    new-instance v4, Lcom/metamoji/cm/mutable/Mutable;

    invoke-direct {v4}, Lcom/metamoji/cm/mutable/Mutable;-><init>()V

    .line 3015
    new-instance v5, Lcom/metamoji/cm/mutable/Mutable;

    invoke-direct {v5}, Lcom/metamoji/cm/mutable/Mutable;-><init>()V

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    .line 3016
    invoke-direct/range {v0 .. v5}, Lcom/metamoji/un/text/UnTextUnit;->setGeometricPropsCore1(Lcom/metamoji/df/controller/GeometricProps;ZLcom/metamoji/cm/mutable/Mutable;Lcom/metamoji/cm/mutable/Mutable;Lcom/metamoji/cm/mutable/Mutable;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v6, :cond_0

    if-nez p9, :cond_0

    .line 3023
    new-instance v11, Lcom/metamoji/df/controller/EditContext;

    invoke-direct {v11}, Lcom/metamoji/df/controller/EditContext;-><init>()V

    goto :goto_0

    :cond_0
    move-object v11, v3

    .line 3035
    :goto_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v12

    new-instance v13, Lcom/metamoji/un/text/UnTextUnit$13;

    invoke-direct {v13, p0, v1, v11, v8}, Lcom/metamoji/un/text/UnTextUnit$13;-><init>(Lcom/metamoji/un/text/UnTextUnit;Lcom/metamoji/df/controller/GeometricProps;Lcom/metamoji/df/controller/EditContext;Z)V

    invoke-virtual {v12, v13}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    const/4 v13, 0x1

    if-eqz v12, :cond_1

    .line 3053
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    goto :goto_1

    :cond_1
    move v12, v13

    .line 3072
    :goto_1
    iget-boolean v14, p0, Lcom/metamoji/un/text/UnTextUnit;->editing:Z

    if-eqz v14, :cond_2

    if-nez v8, :cond_2

    .line 3074
    iput-boolean v13, p0, Lcom/metamoji/un/text/UnTextUnit;->_collaboModified:Z

    .line 3075
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->sendTextUnitData()V

    :cond_2
    if-eqz v12, :cond_8

    if-eqz v11, :cond_3

    .line 3086
    invoke-virtual {v11}, Lcom/metamoji/df/controller/EditContext;->detachUndo()Lcom/metamoji/df/model/IModel;

    move-result-object v3

    :cond_3
    if-eqz v2, :cond_8

    .line 3090
    invoke-virtual {v4}, Lcom/metamoji/cm/mutable/Mutable;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v5}, Lcom/metamoji/cm/mutable/Mutable;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    move/from16 v5, p4

    move/from16 v8, p5

    invoke-direct {p0, v2, v5, v8, v4}, Lcom/metamoji/un/text/UnTextUnit;->setGeometricPropsCore2(ZZZZ)V

    if-eqz v11, :cond_7

    .line 3096
    invoke-static {v10, v1, v3}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator;->createResizeUnitParams(Lcom/metamoji/df/controller/GeometricProps;Lcom/metamoji/df/controller/GeometricProps;Lcom/metamoji/df/model/IModel;)Ljava/util/Map;

    move-result-object v1

    if-eqz v9, :cond_5

    .line 3098
    const-string v2, "param"

    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-eqz v2, :cond_7

    .line 3100
    const-string v3, "relatedResizeModel"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_4

    .line 3102
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3103
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3106
    :cond_4
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    if-nez v7, :cond_6

    .line 3110
    invoke-interface {v6, v1}, Lcom/metamoji/un/text/model/undo/ITextUndoManager;->addUndoData(Ljava/util/Map;)V

    goto :goto_2

    :cond_6
    if-eqz v7, :cond_7

    .line 3115
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3120
    :cond_7
    :goto_2
    iput-boolean v13, p0, Lcom/metamoji/un/text/UnTextUnit;->_collaboModified:Z

    .line 3122
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->enableSendTextUnitEdittingData()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3124
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextModel;->getLineTable()Lcom/metamoji/un/text/model/linetable/LineTable;

    move-result-object v1

    iget-boolean v1, v1, Lcom/metamoji/un/text/model/linetable/LineTable;->needsReconstruct:Z

    if-nez v1, :cond_8

    .line 3126
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->sendTextUnitEdittingData()V

    :cond_8
    return v12
.end method

.method private setNeedsCheckCaretHideOrNot(Lcom/metamoji/un/text/model/TextPosition;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 10213
    invoke-direct {p0, p1, p2, v0}, Lcom/metamoji/un/text/UnTextUnit;->setNeedsCheckCaretHideOrNot(Lcom/metamoji/un/text/model/TextPosition;ZZ)V

    return-void
.end method

.method private setNeedsCheckCaretHideOrNot(Lcom/metamoji/un/text/model/TextPosition;ZZ)V
    .locals 1

    .line 10216
    new-instance v0, Lcom/metamoji/un/text/UnTextUnit$42;

    invoke-direct {v0, p0, p2, p1}, Lcom/metamoji/un/text/UnTextUnit$42;-><init>(Lcom/metamoji/un/text/UnTextUnit;ZLcom/metamoji/un/text/model/TextPosition;)V

    .line 10239
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextModel;->getLineTable()Lcom/metamoji/un/text/model/linetable/LineTable;

    move-result-object p1

    iget-boolean p1, p1, Lcom/metamoji/un/text/model/linetable/LineTable;->needsReconstruct:Z

    if-eqz p1, :cond_2

    if-eqz p3, :cond_0

    goto :goto_0

    .line 10250
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    .line 10251
    invoke-virtual {p1}, Lcom/metamoji/cm/CmTaskManager;->isBackgroundThread()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 10252
    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmTaskManager;->requestRunOnBackground(Ljava/lang/Runnable;)Ljava/util/concurrent/ScheduledFuture;

    return-void

    .line 10256
    :cond_1
    iget-object p1, p0, Lcom/metamoji/un/text/UnTextUnit;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 10240
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private setRenderStrokes(Lcom/metamoji/un/text/UnTextUnit$SetRenderStrokesSwitch;Lcom/metamoji/un/text/model/TextRange;)V
    .locals 9

    .line 8096
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getStringWsArrayObject()Lcom/metamoji/un/text/model/StringWithStrokesArray;

    move-result-object v0

    .line 8097
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->getCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 8098
    invoke-virtual {p2}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v3

    iget v3, v3, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    if-le v1, v3, :cond_0

    .line 8099
    invoke-virtual {p2}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v1

    iget v1, v1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    .line 8106
    :cond_0
    invoke-virtual {p2}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v3

    iget v3, v3, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    const/4 v4, 0x0

    :goto_0
    if-gt v3, v1, :cond_5

    .line 8107
    invoke-virtual {v0, v3}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v5

    .line 8108
    invoke-virtual {v5}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->hasString()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->hasStrokes()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 8109
    invoke-virtual {v5}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->isRenderStrokes()Z

    move-result v6

    .line 8110
    invoke-virtual {p1}, Lcom/metamoji/un/text/UnTextUnit$SetRenderStrokesSwitch;->ordinal()I

    move-result v7

    if-eq v7, v2, :cond_2

    const/4 v8, 0x2

    if-eq v7, v8, :cond_1

    xor-int/lit8 v4, v6, 0x1

    .line 8129
    invoke-virtual {v5, v4}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->setRenderStrokes(Z)V

    .line 8131
    invoke-static {v6, v3}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator;->createForSwitchRenderingStringWs(ZI)Ljava/util/Map;

    move-result-object v4

    goto :goto_1

    .line 8112
    :cond_1
    invoke-virtual {v5}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->isRenderStrokes()Z

    move-result v7

    if-nez v7, :cond_3

    .line 8113
    invoke-virtual {v5, v2}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->setRenderStrokes(Z)V

    .line 8115
    invoke-static {v6, v3}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator;->createForSwitchRenderingStringWs(ZI)Ljava/util/Map;

    move-result-object v4

    goto :goto_1

    .line 8120
    :cond_2
    invoke-virtual {v5}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->isRenderStrokes()Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v4, 0x0

    .line 8121
    invoke-virtual {v5, v4}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->setRenderStrokes(Z)V

    .line 8123
    invoke-static {v6, v3}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator;->createForSwitchRenderingStringWs(ZI)Ljava/util/Map;

    move-result-object v4

    :cond_3
    :goto_1
    if-eqz v4, :cond_4

    .line 8136
    invoke-virtual {p0, v4}, Lcom/metamoji/un/text/UnTextUnit;->addUndoData(Ljava/util/Map;)V

    .line 8138
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v5

    invoke-virtual {p2}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/metamoji/un/text/model/TextModel;->needsRemakeLineTable(Lcom/metamoji/un/text/model/TextPosition;)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public static setTextUnitOption(I)V
    .locals 2

    .line 11288
    sget v0, Lcom/metamoji/un/text/UnTextUnit;->s_textUnitOption:I

    if-ne v0, p0, :cond_0

    return-void

    .line 11292
    :cond_0
    sput p0, Lcom/metamoji/un/text/UnTextUnit;->s_textUnitOption:I

    .line 11293
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object p0

    const-string v0, "MMJTextUnitOption"

    sget v1, Lcom/metamoji/un/text/UnTextUnit;->s_textUnitOption:I

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;I)V

    return-void
.end method

.method private spriteToPaperSprite(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 2

    .line 10443
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getPageController()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getPaperSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/text/UnTextUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v1, p1}, Lcom/metamoji/df/sprite/Sprite;->localToGlobal(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/Sprite;->globalToLocal(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method private spriteToPaperSprite(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 6

    .line 10447
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {p0, v0}, Lcom/metamoji/un/text/UnTextUnit;->spriteToPaperSprite(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    .line 10448
    new-instance v1, Landroid/graphics/PointF;

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {p0, v1}, Lcom/metamoji/un/text/UnTextUnit;->spriteToPaperSprite(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v1

    .line 10449
    new-instance v2, Landroid/graphics/PointF;

    iget v3, p1, Landroid/graphics/RectF;->left:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {p0, v2}, Lcom/metamoji/un/text/UnTextUnit;->spriteToPaperSprite(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v2

    .line 10450
    new-instance v3, Landroid/graphics/PointF;

    iget v4, p1, Landroid/graphics/RectF;->right:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v3, v4, p1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {p0, v3}, Lcom/metamoji/un/text/UnTextUnit;->spriteToPaperSprite(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    .line 10452
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 10453
    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget v5, v1, Landroid/graphics/PointF;->x:F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iget v5, v2, Landroid/graphics/PointF;->x:F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iget v5, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, v3, Landroid/graphics/RectF;->left:F

    .line 10454
    iget v4, v0, Landroid/graphics/PointF;->y:F

    iget v5, v1, Landroid/graphics/PointF;->y:F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iget v5, v2, Landroid/graphics/PointF;->y:F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iget v5, p1, Landroid/graphics/PointF;->y:F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, v3, Landroid/graphics/RectF;->top:F

    .line 10455
    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget v5, v1, Landroid/graphics/PointF;->x:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget v5, v2, Landroid/graphics/PointF;->x:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget v5, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, v3, Landroid/graphics/RectF;->right:F

    .line 10456
    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, v2, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, v3, Landroid/graphics/RectF;->bottom:F

    return-object v3
.end method

.method private spriteToViewPort(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 6

    .line 10423
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {p0, v0}, Lcom/metamoji/un/text/UnTextUnit;->textSpriteToViewport(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    .line 10424
    new-instance v1, Landroid/graphics/PointF;

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {p0, v1}, Lcom/metamoji/un/text/UnTextUnit;->textSpriteToViewport(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v1

    .line 10425
    new-instance v2, Landroid/graphics/PointF;

    iget v3, p1, Landroid/graphics/RectF;->left:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {p0, v2}, Lcom/metamoji/un/text/UnTextUnit;->textSpriteToViewport(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v2

    .line 10426
    new-instance v3, Landroid/graphics/PointF;

    iget v4, p1, Landroid/graphics/RectF;->right:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v3, v4, p1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {p0, v3}, Lcom/metamoji/un/text/UnTextUnit;->textSpriteToViewport(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    .line 10428
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 10429
    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget v5, v1, Landroid/graphics/PointF;->x:F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iget v5, v2, Landroid/graphics/PointF;->x:F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iget v5, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, v3, Landroid/graphics/RectF;->left:F

    .line 10430
    iget v4, v0, Landroid/graphics/PointF;->y:F

    iget v5, v1, Landroid/graphics/PointF;->y:F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iget v5, v2, Landroid/graphics/PointF;->y:F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iget v5, p1, Landroid/graphics/PointF;->y:F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, v3, Landroid/graphics/RectF;->top:F

    .line 10431
    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget v5, v1, Landroid/graphics/PointF;->x:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget v5, v2, Landroid/graphics/PointF;->x:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget v5, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, v3, Landroid/graphics/RectF;->right:F

    .line 10432
    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, v2, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, v3, Landroid/graphics/RectF;->bottom:F

    return-object v3
.end method

.method private startReconvertTask(Lcom/metamoji/un/text/model/TextRange;)V
    .locals 3

    .line 3949
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->_undoDatasForReconvert:Ljava/util/List;

    .line 3950
    const-string/jumbo v0, "textUnitUndo"

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lcom/metamoji/un/text/UnTextUnit$UndoPerformer;->makeNewUndoModelForController(Lcom/metamoji/df/controller/DfController;Ljava/lang/String;I)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->_undoModelForReconvert:Lcom/metamoji/df/model/IModel;

    .line 3951
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator;->createJSONTextRange(Lcom/metamoji/un/text/model/TextRange;)Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "undoSelectedTextRangeBefore"

    invoke-interface {v0, v2, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/Map;)V

    .line 3955
    new-instance v0, Lcom/metamoji/un/text/model/TextPosition;

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v1

    iget v1, v1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/text/model/TextPosition;-><init>(II)V

    .line 3956
    new-instance v1, Lcom/metamoji/un/text/model/TextPosition;

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    iget p1, p1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    add-int/lit8 p1, p1, -0x1

    invoke-direct {v1, p1, v2}, Lcom/metamoji/un/text/model/TextPosition;-><init>(II)V

    .line 3957
    new-instance p1, Lcom/metamoji/un/text/model/TextRange;

    invoke-direct {p1, v0, v1}, Lcom/metamoji/un/text/model/TextRange;-><init>(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/TextPosition;)V

    .line 3958
    sget-object v0, Lcom/metamoji/un/text/UnTextUnit$SetRenderStrokesSwitch;->ON:Lcom/metamoji/un/text/UnTextUnit$SetRenderStrokesSwitch;

    invoke-direct {p0, v0, p1}, Lcom/metamoji/un/text/UnTextUnit;->setRenderStrokes(Lcom/metamoji/un/text/UnTextUnit$SetRenderStrokesSwitch;Lcom/metamoji/un/text/model/TextRange;)V

    .line 3960
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextModel;->getStringWsArrayObject()Lcom/metamoji/un/text/model/StringWithStrokesArray;

    move-result-object p1

    .line 3961
    iget v0, v1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    invoke-virtual {p1, v0}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v0

    .line 3962
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->stringEndWithNewLineChar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3963
    iget v0, v1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    invoke-virtual {p1, v0}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->splitLastNewLineChar(I)Z

    :cond_0
    return-void
.end method

.method private stopSendToCollaboTimer()V
    .locals 1

    .line 11686
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->_timerForSendToCollabo:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 11687
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 11688
    iput-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->_timerForSendToCollabo:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method private static switchReeditPendingMode(Lcom/metamoji/un/text/UnTextUnit$ReeditMode;)Lcom/metamoji/un/text/UnTextUnit$ReeditMode;
    .locals 0

    .line 7745
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit$ReeditMode;->toIntValue()I

    move-result p0

    neg-int p0, p0

    invoke-static {p0}, Lcom/metamoji/un/text/UnTextUnit$ReeditMode;->fromIntValue(I)Lcom/metamoji/un/text/UnTextUnit$ReeditMode;

    move-result-object p0

    return-object p0
.end method

.method private textSpriteToViewport(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 3

    .line 8735
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/un/text/UnTextUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v2, p1}, Lcom/metamoji/df/sprite/Sprite;->localToGlobal(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/metamoji/df/sprite/Stage;->spriteToStage(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/Viewport;->stageToViewport(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method private timerUpdateInputStyleBar()V
    .locals 17

    move-object/from16 v1, p0

    .line 11002
    iget-object v2, v1, Lcom/metamoji/un/text/UnTextUnit;->_updateInputStyleBarLock:Ljava/lang/Object;

    monitor-enter v2

    .line 11006
    :try_start_0
    iget-object v0, v1, Lcom/metamoji/un/text/UnTextUnit;->_inputStyleBarUpdateAttrFlag:Ljava/util/EnumSet;

    if-nez v0, :cond_0

    .line 11007
    monitor-exit v2

    return-void

    :cond_0
    const/4 v3, 0x0

    .line 11010
    iput-object v3, v1, Lcom/metamoji/un/text/UnTextUnit;->_updateInputStyleBarRunnable:Ljava/lang/Runnable;

    .line 11011
    iput-object v3, v1, Lcom/metamoji/un/text/UnTextUnit;->_inputStyleBarUpdateAttrFlag:Ljava/util/EnumSet;

    .line 11012
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11014
    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnit;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v2

    if-nez v2, :cond_1

    goto/16 :goto_f

    .line 11020
    :cond_1
    invoke-interface {v2}, Lcom/metamoji/nt/INtEditor;->getTextUnitInputStyleBar()Lcom/metamoji/nt/NtTextUnitInputStyleBar;

    move-result-object v2

    if-nez v2, :cond_2

    goto/16 :goto_f

    .line 11024
    :cond_2
    invoke-virtual {v2}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->clearModifiedFlag()V

    .line 11026
    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/un/text/model/TextModel;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v4

    .line 11027
    invoke-virtual {v4}, Lcom/metamoji/un/text/model/TextRange;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 11030
    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/metamoji/un/text/model/TextModel;->textKindInRange(Lcom/metamoji/un/text/model/TextRange;)Ljava/util/EnumSet;

    move-result-object v6

    goto :goto_0

    :cond_3
    const-class v6, Lcom/metamoji/un/text/model/TextKind;

    invoke-static {v6}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v6

    :goto_0
    invoke-virtual {v2, v6}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->setSelectedStateTextKind(Ljava/util/EnumSet;)V

    .line 11033
    const-class v6, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-static {v6}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v6

    const/4 v7, 0x0

    if-nez v5, :cond_4

    .line 11038
    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v8

    invoke-virtual {v8, v4, v6}, Lcom/metamoji/un/text/model/TextModel;->getAttributesInRange(Lcom/metamoji/un/text/model/TextRange;Ljava/util/EnumSet;)Lcom/metamoji/un/text/model/attr/Attributes;

    move-result-object v4

    goto :goto_1

    .line 11044
    :cond_4
    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/metamoji/un/text/model/TextModel;->getAttributeForInsertTextOrStroke(Z)Lcom/metamoji/un/text/model/attr/Attributes;

    move-result-object v4

    .line 11047
    :goto_1
    const-class v8, Lcom/metamoji/un/text/model/attr/StringAttributes;

    invoke-static {v4, v8}, Lcom/metamoji/cm/CmUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/metamoji/un/text/model/attr/StringAttributes;

    .line 11063
    sget-object v9, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->FontName:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {v0, v9}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    if-nez v5, :cond_5

    .line 11065
    sget-object v9, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->FontName:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {v6, v9}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 11066
    const-string v9, ""

    goto :goto_3

    :cond_5
    if-eqz v8, :cond_7

    .line 11071
    invoke-virtual {v8}, Lcom/metamoji/un/text/model/attr/StringAttributes;->getFontName()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_6

    goto :goto_2

    .line 11077
    :cond_6
    invoke-virtual {v8}, Lcom/metamoji/un/text/model/attr/StringAttributes;->getFontName()Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    .line 11072
    :cond_7
    :goto_2
    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v9

    invoke-virtual {v9}, Lcom/metamoji/un/text/model/TextModel;->getDefaultStringAttributes()Lcom/metamoji/un/text/model/attr/StringAttributes;

    move-result-object v9

    invoke-virtual {v9}, Lcom/metamoji/un/text/model/attr/StringAttributes;->getFontName()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x1

    goto :goto_4

    :cond_8
    move-object v9, v3

    :goto_3
    move v11, v7

    .line 11083
    :goto_4
    sget-object v12, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->FontSize:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {v0, v12}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    if-nez v5, :cond_9

    .line 11085
    sget-object v12, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->FontSize:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {v6, v12}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_9

    const/4 v12, 0x0

    .line 11087
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    goto :goto_5

    :cond_9
    if-eqz v4, :cond_a

    .line 11090
    invoke-virtual {v4}, Lcom/metamoji/un/text/model/attr/Attributes;->isUseFontSize()Z

    move-result v12

    if-eqz v12, :cond_a

    .line 11091
    invoke-virtual {v4}, Lcom/metamoji/un/text/model/attr/Attributes;->getFontSize()F

    move-result v12

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    goto :goto_5

    .line 11094
    :cond_a
    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v12

    invoke-virtual {v12}, Lcom/metamoji/un/text/model/TextModel;->getDefaultStringAttributes()Lcom/metamoji/un/text/model/attr/StringAttributes;

    move-result-object v12

    invoke-virtual {v12}, Lcom/metamoji/un/text/model/attr/StringAttributes;->getFontSize()F

    move-result v12

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    const/4 v13, 0x1

    goto :goto_6

    :cond_b
    move-object v12, v3

    :goto_5
    move v13, v7

    .line 11101
    :goto_6
    sget-object v14, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->FontWeight:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {v0, v14}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    if-nez v5, :cond_c

    .line 11103
    sget-object v14, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->FontWeight:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {v6, v14}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_c

    .line 11105
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    goto :goto_7

    :cond_c
    if-eqz v4, :cond_d

    .line 11108
    invoke-virtual {v4}, Lcom/metamoji/un/text/model/attr/Attributes;->isBold()Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    goto :goto_7

    .line 11110
    :cond_d
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    goto :goto_7

    :cond_e
    move-object v14, v3

    .line 11115
    :goto_7
    sget-object v15, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->Italic:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {v0, v15}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_11

    if-nez v8, :cond_f

    .line 11117
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    goto :goto_8

    :cond_f
    if-nez v5, :cond_10

    .line 11120
    sget-object v15, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->Italic:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {v6, v15}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_10

    .line 11122
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    goto :goto_8

    .line 11124
    :cond_10
    invoke-virtual {v8}, Lcom/metamoji/un/text/model/attr/StringAttributes;->isItalic()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    goto :goto_8

    :cond_11
    move-object v8, v3

    .line 11130
    :goto_8
    sget-object v15, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->Underline:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {v0, v15}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_14

    if-nez v5, :cond_12

    .line 11132
    sget-object v15, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->Underline:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {v6, v15}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_12

    .line 11134
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    goto :goto_9

    :cond_12
    if-eqz v4, :cond_13

    .line 11137
    invoke-virtual {v4}, Lcom/metamoji/un/text/model/attr/Attributes;->isUnderline()Z

    move-result v15

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    goto :goto_9

    .line 11139
    :cond_13
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    goto :goto_9

    :cond_14
    move-object v15, v3

    .line 11144
    :goto_9
    sget-object v3, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->Strikeout:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {v0, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    if-nez v5, :cond_15

    .line 11146
    sget-object v3, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->Strikeout:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {v6, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 11148
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_a

    :cond_15
    if-eqz v4, :cond_16

    .line 11151
    invoke-virtual {v4}, Lcom/metamoji/un/text/model/attr/Attributes;->isStrikeout()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_a

    .line 11153
    :cond_16
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_a

    :cond_17
    const/4 v3, 0x0

    .line 11158
    :goto_a
    sget-object v10, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->Color:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {v0, v10}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1a

    if-nez v5, :cond_18

    .line 11160
    sget-object v10, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->Color:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {v6, v10}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_18

    .line 11162
    invoke-static {v7, v7, v7, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    :goto_b
    move/from16 v16, v7

    goto :goto_c

    :cond_18
    if-eqz v4, :cond_19

    .line 11166
    invoke-virtual {v4}, Lcom/metamoji/un/text/model/attr/Attributes;->isUseColor()Z

    move-result v10

    if-eqz v10, :cond_19

    .line 11167
    invoke-virtual {v4}, Lcom/metamoji/un/text/model/attr/Attributes;->getColor()Lcom/metamoji/un/text/model/ColorComponent;

    move-result-object v10

    invoke-virtual {v10}, Lcom/metamoji/un/text/model/ColorComponent;->getUIColor()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto :goto_b

    .line 11170
    :cond_19
    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v10

    invoke-virtual {v10}, Lcom/metamoji/un/text/model/TextModel;->getDefaultStringAttributes()Lcom/metamoji/un/text/model/attr/StringAttributes;

    move-result-object v10

    invoke-virtual {v10}, Lcom/metamoji/un/text/model/attr/StringAttributes;->getColor()Lcom/metamoji/un/text/model/ColorComponent;

    move-result-object v10

    invoke-virtual {v10}, Lcom/metamoji/un/text/model/ColorComponent;->getUIColor()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v16, 0x1

    goto :goto_c

    :cond_1a
    move/from16 v16, v7

    const/4 v10, 0x0

    .line 11177
    :goto_c
    sget-object v7, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->BackgroundColor:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {v0, v7}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    if-nez v5, :cond_1b

    .line 11179
    sget-object v0, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->BackgroundColor:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {v6, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    const/4 v0, 0x0

    .line 11181
    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_d
    const/4 v7, 0x1

    goto :goto_e

    :cond_1b
    if-eqz v4, :cond_1c

    .line 11184
    invoke-virtual {v4}, Lcom/metamoji/un/text/model/attr/Attributes;->isUseBackgroundColor()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 11185
    invoke-virtual {v4}, Lcom/metamoji/un/text/model/attr/Attributes;->getBackgroundColor()Lcom/metamoji/un/text/model/ColorComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/ColorComponent;->getUIColor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_d

    :cond_1c
    const/16 v0, 0xff

    const/4 v4, 0x0

    .line 11188
    invoke-static {v4, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move v7, v4

    goto :goto_e

    :cond_1d
    const/4 v4, 0x0

    move v7, v4

    const/4 v0, 0x0

    :goto_e
    if-eqz v9, :cond_1e

    .line 11199
    invoke-virtual {v2, v9, v11}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->setFontName(Ljava/lang/String;Z)V

    :cond_1e
    if-eqz v12, :cond_1f

    .line 11201
    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v2, v4, v13}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->setFontSize(FZ)V

    :cond_1f
    if-eqz v14, :cond_20

    .line 11203
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->setFontBold(Z)V

    :cond_20
    if-eqz v8, :cond_21

    .line 11205
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->setFontItalic(Z)V

    :cond_21
    if-eqz v15, :cond_22

    .line 11207
    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->setFontUnderline(Z)V

    :cond_22
    if-eqz v3, :cond_23

    .line 11209
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->setFontStrikeThrough(Z)V

    :cond_23
    if-eqz v10, :cond_24

    move/from16 v3, v16

    .line 11211
    invoke-virtual {v2, v10, v3}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->setTextColor(Ljava/lang/Integer;Z)V

    :cond_24
    if-eqz v0, :cond_25

    .line 11213
    invoke-virtual {v2, v0, v7}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->setTextBackgroundColor(Ljava/lang/Integer;Z)V

    :cond_25
    :goto_f
    return-void

    :catchall_0
    move-exception v0

    .line 11012
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private undoSelfBufferOff()V
    .locals 1

    const/4 v0, 0x0

    .line 10504
    iput-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->temporaryStackedUndoDatas:Ljava/util/List;

    return-void
.end method

.method private undoSelfBufferOn()V
    .locals 1

    .line 10494
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->temporaryStackedUndoDatas:Ljava/util/List;

    if-nez v0, :cond_0

    .line 10495
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->temporaryStackedUndoDatas:Ljava/util/List;

    :cond_0
    return-void
.end method

.method private unregisterCollaboHandler()V
    .locals 1

    .line 11796
    iget-boolean v0, p0, Lcom/metamoji/un/text/UnTextUnit;->_registerCollabo:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 11801
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->isDirectable()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 11805
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getAppFrame()Lcom/metamoji/nt/INtAppFrame;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/nt/INtAppFrame;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 11809
    invoke-virtual {v0, p0}, Lcom/metamoji/ns/direction/NsDirectionManager;->unregisterHandler(Lcom/metamoji/ns/direction/INsDirectionHandler;)V

    const/4 v0, 0x0

    .line 11810
    iput-boolean v0, p0, Lcom/metamoji/un/text/UnTextUnit;->_registerCollabo:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public static unregisterPerformer(Lcom/metamoji/df/model/IModelManager;)V
    .locals 2

    .line 3875
    const-string/jumbo v0, "textUnitUndo"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModelManager;->registerUndoPerformer(Ljava/lang/String;Lcom/metamoji/df/model/IUndoPerformer;)V

    return-void
.end method

.method private update(Lcom/metamoji/df/model/IModel;)V
    .locals 5

    .line 2286
    const-string/jumbo v0, "width"

    const-wide/16 v1, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v3

    double-to-float v0, v3

    .line 2287
    const-string v3, "height"

    invoke-interface {p1, v3, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v1

    double-to-float p1, v1

    .line 2290
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getBaseSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/metamoji/df/sprite/Sprite;->setWidth(F)V

    .line 2291
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getBaseSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/Sprite;->setHeight(F)V

    .line 2293
    iget-object p1, p0, Lcom/metamoji/un/text/UnTextUnit;->textSprite:Lcom/metamoji/un/text/sprite/TextSprite;

    invoke-virtual {p1}, Lcom/metamoji/un/text/sprite/TextSprite;->invalidate()V

    .line 2294
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->updateMaxMaxWidthHeight()V

    return-void
.end method

.method private updateImeCaretPos()V
    .locals 11

    .line 10780
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->composingSpan:Lcom/metamoji/un/text/model/TextRange;

    if-eqz v0, :cond_0

    .line 10782
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v0

    goto :goto_0

    .line 10784
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v0

    .line 10787
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v1

    .line 10788
    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextModel;->getLineTable()Lcom/metamoji/un/text/model/linetable/LineTable;

    move-result-object v2

    .line 10789
    invoke-virtual {v2, v0, v1}, Lcom/metamoji/un/text/model/linetable/LineTable;->getRectOfTextPosition(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/ITextInput;)Landroid/graphics/RectF;

    move-result-object v3

    .line 10790
    invoke-virtual {v2, v0}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineInfoAtPosition(Lcom/metamoji/un/text/model/TextPosition;)Lcom/metamoji/un/text/model/linetable/LineInfo;

    move-result-object v0

    .line 10793
    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextModel;->getVerticalWriting()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10794
    iget-object v1, v0, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v0, v0, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v0, v0, Lcom/metamoji/cm/SizeF;->width:F

    add-float/2addr v1, v0

    const/high16 v0, 0x41200000    # 10.0f

    add-float/2addr v1, v0

    .line 10795
    iget v0, v3, Landroid/graphics/RectF;->top:F

    .line 10796
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v2

    .line 10797
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    move v7, v0

    move v8, v2

    move v9, v3

    goto :goto_1

    .line 10800
    :cond_1
    iget v1, v3, Landroid/graphics/RectF;->left:F

    .line 10801
    iget-object v2, v0, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 10803
    iget-object v3, v0, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v3, v3, Lcom/metamoji/cm/SizeF;->height:F

    const v4, 0x3f6147ae    # 0.88f

    mul-float/2addr v3, v4

    .line 10806
    iget-object v0, v0, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v0, v0, Lcom/metamoji/cm/SizeF;->height:F

    move v9, v0

    move v7, v2

    move v8, v3

    :goto_1
    move v6, v1

    .line 10810
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Sprite;->getGlobalMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    .line 10811
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Stage;->getStageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 10812
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Viewport;->getViewportMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    const/4 v0, 0x2

    .line 10813
    new-array v0, v0, [I

    .line 10814
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/metamoji/df/sprite/Viewport;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    .line 10815
    aget v1, v0, v1

    int-to-float v1, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    int-to-float v0, v0

    invoke-virtual {v5, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/4 v10, 0x0

    .line 10831
    iget-object v4, p0, Lcom/metamoji/un/text/UnTextUnit;->_viewForSI:Lcom/metamoji/un/text/UnTextUnit$ViewForSoftInput;

    invoke-static/range {v4 .. v10}, Lcom/metamoji/un/text/util/CursorInfoUpdater;->updateCursor(Landroid/view/View;Landroid/graphics/Matrix;FFFF[Landroid/graphics/RectF;)V

    return-void
.end method

.method private updateInputStyleBar(Ljava/util/EnumSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 10948
    invoke-direct {p0, p1, v0}, Lcom/metamoji/un/text/UnTextUnit;->updateInputStyleBar(Ljava/util/EnumSet;Z)V

    return-void
.end method

.method private updateInputStyleBar(Ljava/util/EnumSet;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;",
            ">;Z)V"
        }
    .end annotation

    .line 10957
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->_updateInputStyleBarLock:Ljava/lang/Object;

    monitor-enter v0

    .line 10958
    :try_start_0
    const-class v1, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    .line 10960
    iget-object v2, p0, Lcom/metamoji/un/text/UnTextUnit;->_updateInputStyleBarRunnable:Ljava/lang/Runnable;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 10961
    iget-object v1, p0, Lcom/metamoji/un/text/UnTextUnit;->_inputStyleBarUpdateAttrFlag:Ljava/util/EnumSet;

    .line 10962
    iget-object v4, p0, Lcom/metamoji/un/text/UnTextUnit;->handler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 10963
    iput-object v3, p0, Lcom/metamoji/un/text/UnTextUnit;->_updateInputStyleBarRunnable:Ljava/lang/Runnable;

    .line 10966
    :cond_0
    iput-object v3, p0, Lcom/metamoji/un/text/UnTextUnit;->_inputStyleBarUpdateAttrFlag:Ljava/util/EnumSet;

    .line 10968
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v2

    invoke-interface {v2}, Lcom/metamoji/nt/INtEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->beTextUnitInputStyleBarShown(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 10969
    monitor-exit v0

    return-void

    .line 10974
    :cond_1
    new-instance v2, Lcom/metamoji/un/text/UnTextUnit$45;

    invoke-direct {v2, p0}, Lcom/metamoji/un/text/UnTextUnit$45;-><init>(Lcom/metamoji/un/text/UnTextUnit;)V

    iput-object v2, p0, Lcom/metamoji/un/text/UnTextUnit;->_updateInputStyleBarRunnable:Ljava/lang/Runnable;

    .line 10984
    iput-object p1, p0, Lcom/metamoji/un/text/UnTextUnit;->_inputStyleBarUpdateAttrFlag:Ljava/util/EnumSet;

    .line 10985
    invoke-virtual {p1, v1}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    if-nez p2, :cond_2

    .line 10987
    iget-object p1, p0, Lcom/metamoji/un/text/UnTextUnit;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/metamoji/un/text/UnTextUnit;->_updateInputStyleBarRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xa

    invoke-virtual {p1, p2, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 10990
    :cond_2
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->timerUpdateInputStyleBar()V

    .line 10993
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private updateMaxMaxWidthHeight()V
    .locals 17

    move-object/from16 v0, p0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 8247
    iput v1, v0, Lcom/metamoji/un/text/UnTextUnit;->maxMaxWidthHeight:F

    .line 8249
    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/TextModel;->getVerticalWriting()Z

    move-result v2

    .line 8252
    iget-object v3, v0, Lcom/metamoji/un/text/UnTextUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v3}, Lcom/metamoji/df/sprite/Sprite;->getGlobalMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    const/16 v4, 0x9

    .line 8253
    new-array v4, v4, [F

    .line 8254
    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v5, 0x3

    const-wide/16 v6, 0x0

    if-eqz v3, :cond_0

    .line 8256
    aget v3, v4, v5

    float-to-double v8, v3

    const/4 v3, 0x4

    aget v3, v4, v3

    float-to-double v3, v3

    invoke-static {v8, v9, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, v6

    :goto_0
    const/4 v8, 0x2

    .line 8259
    new-array v9, v8, [Lcom/metamoji/un/text/UnTextUnit$PaperEdge;

    const-wide v10, -0x4006de04abbbd2e8L    # -1.5707963267948966

    cmpg-double v12, v10, v3

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-gtz v12, :cond_2

    cmpg-double v12, v3, v6

    if-gez v12, :cond_2

    if-eqz v2, :cond_1

    .line 8263
    sget-object v3, Lcom/metamoji/un/text/UnTextUnit$PaperEdge;->BOTTOM:Lcom/metamoji/un/text/UnTextUnit$PaperEdge;

    aput-object v3, v9, v13

    .line 8264
    sget-object v3, Lcom/metamoji/un/text/UnTextUnit$PaperEdge;->RIGHT:Lcom/metamoji/un/text/UnTextUnit$PaperEdge;

    aput-object v3, v9, v14

    goto/16 :goto_1

    .line 8267
    :cond_1
    sget-object v3, Lcom/metamoji/un/text/UnTextUnit$PaperEdge;->TOP:Lcom/metamoji/un/text/UnTextUnit$PaperEdge;

    aput-object v3, v9, v13

    .line 8268
    sget-object v3, Lcom/metamoji/un/text/UnTextUnit$PaperEdge;->RIGHT:Lcom/metamoji/un/text/UnTextUnit$PaperEdge;

    aput-object v3, v9, v14

    goto :goto_1

    :cond_2
    const-wide v15, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    cmpg-double v12, v15, v3

    if-gtz v12, :cond_4

    cmpg-double v10, v3, v10

    if-gez v10, :cond_4

    if-eqz v2, :cond_3

    .line 8273
    sget-object v3, Lcom/metamoji/un/text/UnTextUnit$PaperEdge;->RIGHT:Lcom/metamoji/un/text/UnTextUnit$PaperEdge;

    aput-object v3, v9, v13

    .line 8274
    sget-object v3, Lcom/metamoji/un/text/UnTextUnit$PaperEdge;->TOP:Lcom/metamoji/un/text/UnTextUnit$PaperEdge;

    aput-object v3, v9, v14

    goto :goto_1

    .line 8277
    :cond_3
    sget-object v3, Lcom/metamoji/un/text/UnTextUnit$PaperEdge;->LEFT:Lcom/metamoji/un/text/UnTextUnit$PaperEdge;

    aput-object v3, v9, v13

    .line 8278
    sget-object v3, Lcom/metamoji/un/text/UnTextUnit$PaperEdge;->TOP:Lcom/metamoji/un/text/UnTextUnit$PaperEdge;

    aput-object v3, v9, v14

    goto :goto_1

    :cond_4
    const-wide v10, 0x3ff921fb54442d18L    # 1.5707963267948966

    cmpg-double v12, v10, v3

    if-gtz v12, :cond_6

    const-wide v15, 0x400921fb54442d18L    # Math.PI

    cmpg-double v12, v3, v15

    if-gez v12, :cond_6

    if-eqz v2, :cond_5

    .line 8283
    sget-object v3, Lcom/metamoji/un/text/UnTextUnit$PaperEdge;->TOP:Lcom/metamoji/un/text/UnTextUnit$PaperEdge;

    aput-object v3, v9, v13

    .line 8284
    sget-object v3, Lcom/metamoji/un/text/UnTextUnit$PaperEdge;->LEFT:Lcom/metamoji/un/text/UnTextUnit$PaperEdge;

    aput-object v3, v9, v14

    goto :goto_1

    .line 8287
    :cond_5
    sget-object v3, Lcom/metamoji/un/text/UnTextUnit$PaperEdge;->BOTTOM:Lcom/metamoji/un/text/UnTextUnit$PaperEdge;

    aput-object v3, v9, v13

    .line 8288
    sget-object v3, Lcom/metamoji/un/text/UnTextUnit$PaperEdge;->LEFT:Lcom/metamoji/un/text/UnTextUnit$PaperEdge;

    aput-object v3, v9, v14

    goto :goto_1

    :cond_6
    cmpg-double v6, v6, v3

    if-gtz v6, :cond_8

    cmpg-double v3, v3, v10

    if-gez v3, :cond_8

    if-eqz v2, :cond_7

    .line 8293
    sget-object v3, Lcom/metamoji/un/text/UnTextUnit$PaperEdge;->LEFT:Lcom/metamoji/un/text/UnTextUnit$PaperEdge;

    aput-object v3, v9, v13

    .line 8294
    sget-object v3, Lcom/metamoji/un/text/UnTextUnit$PaperEdge;->BOTTOM:Lcom/metamoji/un/text/UnTextUnit$PaperEdge;

    aput-object v3, v9, v14

    goto :goto_1

    .line 8297
    :cond_7
    sget-object v3, Lcom/metamoji/un/text/UnTextUnit$PaperEdge;->RIGHT:Lcom/metamoji/un/text/UnTextUnit$PaperEdge;

    aput-object v3, v9, v13

    .line 8298
    sget-object v3, Lcom/metamoji/un/text/UnTextUnit$PaperEdge;->BOTTOM:Lcom/metamoji/un/text/UnTextUnit$PaperEdge;

    aput-object v3, v9, v14

    .line 8303
    :cond_8
    :goto_1
    new-array v3, v8, [Lcom/metamoji/un/text/UnTextUnit$1Line;

    new-instance v4, Lcom/metamoji/un/text/UnTextUnit$1Line;

    invoke-direct {v4, v0}, Lcom/metamoji/un/text/UnTextUnit$1Line;-><init>(Lcom/metamoji/un/text/UnTextUnit;)V

    aput-object v4, v3, v13

    new-instance v4, Lcom/metamoji/un/text/UnTextUnit$1Line;

    invoke-direct {v4, v0}, Lcom/metamoji/un/text/UnTextUnit$1Line;-><init>(Lcom/metamoji/un/text/UnTextUnit;)V

    aput-object v4, v3, v14

    const/4 v4, 0x0

    if-eqz v2, :cond_9

    .line 8306
    aget-object v6, v3, v13

    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7, v4, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v0, v7}, Lcom/metamoji/un/text/UnTextUnit;->spriteToPaperSprite(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v7

    iput-object v7, v6, Lcom/metamoji/un/text/UnTextUnit$1Line;->sp:Landroid/graphics/PointF;

    .line 8307
    aget-object v6, v3, v13

    new-instance v7, Landroid/graphics/PointF;

    iget-object v10, v0, Lcom/metamoji/un/text/UnTextUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v10}, Lcom/metamoji/df/sprite/Sprite;->getHeight()F

    move-result v10

    invoke-direct {v7, v4, v10}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v0, v7}, Lcom/metamoji/un/text/UnTextUnit;->spriteToPaperSprite(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v7

    iput-object v7, v6, Lcom/metamoji/un/text/UnTextUnit$1Line;->ep:Landroid/graphics/PointF;

    .line 8309
    aget-object v6, v3, v14

    new-instance v7, Landroid/graphics/PointF;

    iget-object v10, v0, Lcom/metamoji/un/text/UnTextUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v10}, Lcom/metamoji/df/sprite/Sprite;->getWidth()F

    move-result v10

    invoke-direct {v7, v10, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v0, v7}, Lcom/metamoji/un/text/UnTextUnit;->spriteToPaperSprite(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v7

    iput-object v7, v6, Lcom/metamoji/un/text/UnTextUnit$1Line;->sp:Landroid/graphics/PointF;

    .line 8310
    aget-object v6, v3, v14

    new-instance v7, Landroid/graphics/PointF;

    iget-object v10, v0, Lcom/metamoji/un/text/UnTextUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v10}, Lcom/metamoji/df/sprite/Sprite;->getWidth()F

    move-result v10

    iget-object v11, v0, Lcom/metamoji/un/text/UnTextUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v11}, Lcom/metamoji/df/sprite/Sprite;->getHeight()F

    move-result v11

    invoke-direct {v7, v10, v11}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v0, v7}, Lcom/metamoji/un/text/UnTextUnit;->spriteToPaperSprite(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v7

    iput-object v7, v6, Lcom/metamoji/un/text/UnTextUnit$1Line;->ep:Landroid/graphics/PointF;

    goto :goto_2

    .line 8314
    :cond_9
    aget-object v6, v3, v13

    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7, v4, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v0, v7}, Lcom/metamoji/un/text/UnTextUnit;->spriteToPaperSprite(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v7

    iput-object v7, v6, Lcom/metamoji/un/text/UnTextUnit$1Line;->sp:Landroid/graphics/PointF;

    .line 8315
    aget-object v6, v3, v13

    new-instance v7, Landroid/graphics/PointF;

    iget-object v10, v0, Lcom/metamoji/un/text/UnTextUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v10}, Lcom/metamoji/df/sprite/Sprite;->getWidth()F

    move-result v10

    invoke-direct {v7, v10, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v0, v7}, Lcom/metamoji/un/text/UnTextUnit;->spriteToPaperSprite(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v7

    iput-object v7, v6, Lcom/metamoji/un/text/UnTextUnit$1Line;->ep:Landroid/graphics/PointF;

    .line 8317
    aget-object v6, v3, v14

    new-instance v7, Landroid/graphics/PointF;

    iget-object v10, v0, Lcom/metamoji/un/text/UnTextUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v10}, Lcom/metamoji/df/sprite/Sprite;->getHeight()F

    move-result v10

    invoke-direct {v7, v4, v10}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v0, v7}, Lcom/metamoji/un/text/UnTextUnit;->spriteToPaperSprite(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v7

    iput-object v7, v6, Lcom/metamoji/un/text/UnTextUnit$1Line;->sp:Landroid/graphics/PointF;

    .line 8318
    aget-object v6, v3, v14

    new-instance v7, Landroid/graphics/PointF;

    iget-object v10, v0, Lcom/metamoji/un/text/UnTextUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v10}, Lcom/metamoji/df/sprite/Sprite;->getWidth()F

    move-result v10

    iget-object v11, v0, Lcom/metamoji/un/text/UnTextUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v11}, Lcom/metamoji/df/sprite/Sprite;->getHeight()F

    move-result v11

    invoke-direct {v7, v10, v11}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v0, v7}, Lcom/metamoji/un/text/UnTextUnit;->spriteToPaperSprite(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v7

    iput-object v7, v6, Lcom/metamoji/un/text/UnTextUnit$1Line;->ep:Landroid/graphics/PointF;

    .line 8322
    :goto_2
    new-array v6, v8, [Landroid/graphics/PointF;

    move v7, v13

    :goto_3
    if-ge v7, v8, :cond_12

    .line 8324
    new-instance v10, Landroid/graphics/PointF;

    invoke-direct {v10}, Landroid/graphics/PointF;-><init>()V

    aput-object v10, v6, v7

    .line 8325
    aget-object v10, v9, v7

    invoke-virtual {v10}, Lcom/metamoji/un/text/UnTextUnit$PaperEdge;->ordinal()I

    move-result v10

    if-eqz v10, :cond_d

    if-eq v10, v14, :cond_c

    if-eq v10, v8, :cond_b

    if-eq v10, v5, :cond_a

    goto/16 :goto_4

    .line 8339
    :cond_a
    aget-object v10, v6, v7

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->getPageController()Lcom/metamoji/nt/NtPageController;

    move-result-object v11

    invoke-virtual {v11}, Lcom/metamoji/nt/NtPageController;->getPaperHeight()F

    move-result v11

    iput v11, v10, Landroid/graphics/PointF;->y:F

    .line 8340
    aget-object v10, v6, v7

    aget-object v11, v3, v7

    iget-object v11, v11, Lcom/metamoji/un/text/UnTextUnit$1Line;->ep:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->x:F

    aget-object v12, v3, v7

    iget-object v12, v12, Lcom/metamoji/un/text/UnTextUnit$1Line;->sp:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->x:F

    sub-float/2addr v11, v12

    aget-object v12, v3, v7

    iget-object v12, v12, Lcom/metamoji/un/text/UnTextUnit$1Line;->ep:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->y:F

    aget-object v15, v3, v7

    iget-object v15, v15, Lcom/metamoji/un/text/UnTextUnit$1Line;->sp:Landroid/graphics/PointF;

    iget v15, v15, Landroid/graphics/PointF;->y:F

    sub-float/2addr v12, v15

    div-float/2addr v11, v12

    aget-object v12, v6, v7

    iget v12, v12, Landroid/graphics/PointF;->y:F

    aget-object v15, v3, v7

    iget-object v15, v15, Lcom/metamoji/un/text/UnTextUnit$1Line;->sp:Landroid/graphics/PointF;

    iget v15, v15, Landroid/graphics/PointF;->y:F

    sub-float/2addr v12, v15

    mul-float/2addr v11, v12

    aget-object v12, v3, v7

    iget-object v12, v12, Lcom/metamoji/un/text/UnTextUnit$1Line;->sp:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->x:F

    add-float/2addr v11, v12

    iput v11, v10, Landroid/graphics/PointF;->x:F

    goto/16 :goto_4

    .line 8335
    :cond_b
    aget-object v10, v6, v7

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->getPageController()Lcom/metamoji/nt/NtPageController;

    move-result-object v11

    invoke-virtual {v11}, Lcom/metamoji/nt/NtPageController;->getPaperWidth()F

    move-result v11

    iput v11, v10, Landroid/graphics/PointF;->x:F

    .line 8336
    aget-object v10, v6, v7

    aget-object v11, v3, v7

    iget-object v11, v11, Lcom/metamoji/un/text/UnTextUnit$1Line;->ep:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->y:F

    aget-object v12, v3, v7

    iget-object v12, v12, Lcom/metamoji/un/text/UnTextUnit$1Line;->sp:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->y:F

    sub-float/2addr v11, v12

    aget-object v12, v3, v7

    iget-object v12, v12, Lcom/metamoji/un/text/UnTextUnit$1Line;->ep:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->x:F

    aget-object v15, v3, v7

    iget-object v15, v15, Lcom/metamoji/un/text/UnTextUnit$1Line;->sp:Landroid/graphics/PointF;

    iget v15, v15, Landroid/graphics/PointF;->x:F

    sub-float/2addr v12, v15

    div-float/2addr v11, v12

    aget-object v12, v6, v7

    iget v12, v12, Landroid/graphics/PointF;->x:F

    aget-object v15, v3, v7

    iget-object v15, v15, Lcom/metamoji/un/text/UnTextUnit$1Line;->sp:Landroid/graphics/PointF;

    iget v15, v15, Landroid/graphics/PointF;->x:F

    sub-float/2addr v12, v15

    mul-float/2addr v11, v12

    aget-object v12, v3, v7

    iget-object v12, v12, Lcom/metamoji/un/text/UnTextUnit$1Line;->sp:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->y:F

    add-float/2addr v11, v12

    iput v11, v10, Landroid/graphics/PointF;->y:F

    goto :goto_4

    .line 8331
    :cond_c
    aget-object v10, v6, v7

    iput v4, v10, Landroid/graphics/PointF;->y:F

    .line 8332
    aget-object v10, v6, v7

    aget-object v11, v3, v7

    iget-object v11, v11, Lcom/metamoji/un/text/UnTextUnit$1Line;->ep:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->x:F

    aget-object v12, v3, v7

    iget-object v12, v12, Lcom/metamoji/un/text/UnTextUnit$1Line;->sp:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->x:F

    sub-float/2addr v11, v12

    aget-object v12, v3, v7

    iget-object v12, v12, Lcom/metamoji/un/text/UnTextUnit$1Line;->ep:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->y:F

    aget-object v15, v3, v7

    iget-object v15, v15, Lcom/metamoji/un/text/UnTextUnit$1Line;->sp:Landroid/graphics/PointF;

    iget v15, v15, Landroid/graphics/PointF;->y:F

    sub-float/2addr v12, v15

    div-float/2addr v11, v12

    aget-object v12, v6, v7

    iget v12, v12, Landroid/graphics/PointF;->y:F

    aget-object v15, v3, v7

    iget-object v15, v15, Lcom/metamoji/un/text/UnTextUnit$1Line;->sp:Landroid/graphics/PointF;

    iget v15, v15, Landroid/graphics/PointF;->y:F

    sub-float/2addr v12, v15

    mul-float/2addr v11, v12

    aget-object v12, v3, v7

    iget-object v12, v12, Lcom/metamoji/un/text/UnTextUnit$1Line;->sp:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->x:F

    add-float/2addr v11, v12

    iput v11, v10, Landroid/graphics/PointF;->x:F

    goto :goto_4

    .line 8327
    :cond_d
    aget-object v10, v6, v7

    iput v4, v10, Landroid/graphics/PointF;->x:F

    .line 8328
    aget-object v10, v6, v7

    aget-object v11, v3, v7

    iget-object v11, v11, Lcom/metamoji/un/text/UnTextUnit$1Line;->ep:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->y:F

    aget-object v12, v3, v7

    iget-object v12, v12, Lcom/metamoji/un/text/UnTextUnit$1Line;->sp:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->y:F

    sub-float/2addr v11, v12

    aget-object v12, v3, v7

    iget-object v12, v12, Lcom/metamoji/un/text/UnTextUnit$1Line;->ep:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->x:F

    aget-object v15, v3, v7

    iget-object v15, v15, Lcom/metamoji/un/text/UnTextUnit$1Line;->sp:Landroid/graphics/PointF;

    iget v15, v15, Landroid/graphics/PointF;->x:F

    sub-float/2addr v12, v15

    div-float/2addr v11, v12

    aget-object v12, v6, v7

    iget v12, v12, Landroid/graphics/PointF;->x:F

    aget-object v15, v3, v7

    iget-object v15, v15, Lcom/metamoji/un/text/UnTextUnit$1Line;->sp:Landroid/graphics/PointF;

    iget v15, v15, Landroid/graphics/PointF;->x:F

    sub-float/2addr v12, v15

    mul-float/2addr v11, v12

    aget-object v12, v3, v7

    iget-object v12, v12, Lcom/metamoji/un/text/UnTextUnit$1Line;->sp:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->y:F

    add-float/2addr v11, v12

    iput v11, v10, Landroid/graphics/PointF;->y:F

    .line 8344
    :goto_4
    aget-object v10, v6, v7

    iget v10, v10, Landroid/graphics/PointF;->x:F

    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    if-nez v10, :cond_e

    aget-object v10, v6, v7

    iget v10, v10, Landroid/graphics/PointF;->x:F

    invoke-static {v10}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 8345
    :cond_e
    aget-object v10, v6, v7

    iput v1, v10, Landroid/graphics/PointF;->x:F

    .line 8346
    :cond_f
    aget-object v10, v6, v7

    iget v10, v10, Landroid/graphics/PointF;->y:F

    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    if-nez v10, :cond_10

    aget-object v10, v6, v7

    iget v10, v10, Landroid/graphics/PointF;->y:F

    invoke-static {v10}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 8347
    :cond_10
    aget-object v10, v6, v7

    iput v1, v10, Landroid/graphics/PointF;->y:F

    :cond_11
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    :cond_12
    if-eqz v2, :cond_13

    .line 8350
    aget-object v1, v6, v13

    invoke-direct {v0, v1}, Lcom/metamoji/un/text/UnTextUnit;->paperSpriteToTextSprite(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->y:F

    aget-object v2, v6, v14

    invoke-direct {v0, v2}, Lcom/metamoji/un/text/UnTextUnit;->paperSpriteToTextSprite(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v0, Lcom/metamoji/un/text/UnTextUnit;->maxMaxWidthHeight:F

    return-void

    .line 8353
    :cond_13
    aget-object v1, v6, v13

    invoke-direct {v0, v1}, Lcom/metamoji/un/text/UnTextUnit;->paperSpriteToTextSprite(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    aget-object v2, v6, v14

    invoke-direct {v0, v2}, Lcom/metamoji/un/text/UnTextUnit;->paperSpriteToTextSprite(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v0, Lcom/metamoji/un/text/UnTextUnit;->maxMaxWidthHeight:F

    return-void
.end method

.method private viewportToTextSprite(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 3

    .line 8731
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v1

    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/metamoji/df/sprite/Viewport;->viewportToStage(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/metamoji/df/sprite/Stage;->stageToSprite(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/Sprite;->globalToLocal(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method private zoomEnd()V
    .locals 1

    .line 1341
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->isInComposition()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1342
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->selModCurCtrl:Lcom/metamoji/un/text/UnTextUnit$SelectionModifierCursorController;

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit$SelectionModifierCursorController;->show()V

    .line 1343
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->notifyImeCaretPos()V

    return-void
.end method


# virtual methods
.method public GetAttributesInRange(Lcom/metamoji/un/text/model/TextRange;)Lcom/metamoji/un/text/model/attr/Attributes;
    .locals 1

    .line 11238
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/un/text/model/TextModel;->getAttributesInRange(Lcom/metamoji/un/text/model/TextRange;)Lcom/metamoji/un/text/model/attr/Attributes;

    move-result-object p1

    return-object p1
.end method

.method public GetDefaultFontSize()F
    .locals 1

    .line 11243
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getDefaultStringAttributes()Lcom/metamoji/un/text/model/attr/StringAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/attr/StringAttributes;->getFontSize()F

    move-result v0

    return v0
.end method

.method public addUndoData(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 4089
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->_undoDatasForReconvert:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 4090
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4091
    :cond_0
    sget-object v0, Lcom/metamoji/un/text/UnTextUnit;->duringChangeUnitSizeByRemakeLineTable:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4092
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->undoDatasForChangeUnitSizeByRemakeLineTable:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4093
    :cond_1
    iget-boolean v0, p0, Lcom/metamoji/un/text/UnTextUnit;->_duringInsertComposingText:Z

    if-eqz v0, :cond_2

    .line 4094
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->undoDatasForComposingText:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4095
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->undoDatas:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 4096
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4099
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/metamoji/un/text/UnTextUnit;->duringChangeFontSizeAttr:Z

    if-eqz v0, :cond_5

    .line 4100
    const-string v0, "name"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 4102
    const-string v1, "overwriteStringAttributes"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "overwriteStrokesAttributes"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4103
    :cond_4
    iput-object p1, p0, Lcom/metamoji/un/text/UnTextUnit;->preResizeUndoData:Ljava/util/Map;

    :cond_5
    return-void
.end method

.method public adjustWidthInsidePaper(F)F
    .locals 2

    .line 8366
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getVerticalWriting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8367
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Sprite;->getHeight()F

    move-result v0

    goto :goto_0

    .line 8369
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Sprite;->getWidth()F

    move-result v0

    :goto_0
    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 8373
    iget v0, p0, Lcom/metamoji/un/text/UnTextUnit;->maxMaxWidthHeight:F

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    return v0

    :cond_1
    return p1
.end method

.method public applyBackgroundColorToMazec()V
    .locals 9

    .line 8166
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getMazecAction()Lcom/metamoji/un/text/MazecAction;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 8171
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextModel;->getUnitBackgroundColor()Lcom/metamoji/un/text/model/ColorComponent;

    move-result-object v1

    .line 8173
    iget v2, v1, Lcom/metamoji/un/text/model/ColorComponent;->red:F

    .line 8174
    iget v3, v1, Lcom/metamoji/un/text/model/ColorComponent;->green:F

    .line 8175
    iget v4, v1, Lcom/metamoji/un/text/model/ColorComponent;->blue:F

    .line 8176
    iget v1, v1, Lcom/metamoji/un/text/model/ColorComponent;->alpha:F

    const-wide/16 v5, 0x0

    float-to-double v7, v1

    cmpl-double v5, v5, v7

    const/high16 v6, 0x3f800000    # 1.0f

    if-nez v5, :cond_1

    move v2, v6

    move v3, v2

    move v4, v3

    goto :goto_0

    :cond_1
    cmpg-float v5, v1, v6

    if-gez v5, :cond_2

    mul-float/2addr v2, v1

    sub-float v5, v6, v1

    mul-float/2addr v5, v6

    add-float/2addr v2, v5

    mul-float/2addr v3, v1

    add-float/2addr v3, v5

    mul-float/2addr v4, v1

    add-float/2addr v4, v5

    :cond_2
    :goto_0
    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    mul-float/2addr v3, v1

    float-to-int v3, v3

    mul-float/2addr v4, v1

    float-to-int v1, v4

    const/16 v4, 0xff

    .line 8197
    invoke-static {v4, v2, v3, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    .line 8196
    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/MazecAction;->notifyHandwritingBackgroundColorChanged(I)V

    return-void
.end method

.method public applyPenStyle(Lcom/metamoji/nt/share/NtPenStyle;Ljava/lang/Object;)V
    .locals 16

    move-object/from16 v0, p1

    .line 9485
    move-object/from16 v1, p2

    check-cast v1, Lcom/metamoji/un/text/UnTextUnit$PenStyleSet;

    iget-object v2, v1, Lcom/metamoji/un/text/UnTextUnit$PenStyleSet;->penStyle:Lcom/metamoji/nt/share/NtPenStyle;

    .line 9486
    iget-object v1, v1, Lcom/metamoji/un/text/UnTextUnit$PenStyleSet;->strokeStyle:Lcom/metamoji/mazecclient/stroke/IStrokeStyle;

    .line 9490
    const-class v3, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-static {v3}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v6

    .line 9492
    const-class v3, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

    invoke-static {v3}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v9

    .line 9497
    sget-object v10, Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;->DEFAULT:Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;

    .line 9500
    invoke-interface {v1}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getPenType()Lcom/metamoji/mazecclient/stroke/StrokePenType;

    move-result-object v3

    .line 9502
    const-string v4, "calligraphy"

    iget-object v5, v0, Lcom/metamoji/nt/share/NtPenStyle;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 9503
    sget-object v3, Lcom/metamoji/mazecclient/stroke/StrokePenType;->CALLIGRAPHY:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    goto :goto_0

    .line 9506
    :cond_0
    const-string v4, "fountainpen"

    iget-object v5, v0, Lcom/metamoji/nt/share/NtPenStyle;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 9507
    sget-object v3, Lcom/metamoji/mazecclient/stroke/StrokePenType;->FOUNTAIN:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    goto :goto_0

    .line 9510
    :cond_1
    const-string/jumbo v4, "standard"

    iget-object v5, v0, Lcom/metamoji/nt/share/NtPenStyle;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "markerpen"

    iget-object v5, v0, Lcom/metamoji/nt/share/NtPenStyle;->type:Ljava/lang/String;

    .line 9511
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 9512
    :cond_2
    sget-object v3, Lcom/metamoji/mazecclient/stroke/StrokePenType;->STANDARD:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    .line 9515
    :cond_3
    :goto_0
    iget-object v4, v0, Lcom/metamoji/nt/share/NtPenStyle;->type:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, v0, Lcom/metamoji/nt/share/NtPenStyle;->type:Ljava/lang/String;

    iget-object v5, v2, Lcom/metamoji/nt/share/NtPenStyle;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 9518
    sget-object v4, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;->PEN_TYPE:Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

    invoke-virtual {v9, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 9526
    :cond_4
    invoke-virtual {v2}, Lcom/metamoji/nt/share/NtPenStyle;->getLineColor()I

    move-result v4

    .line 9538
    invoke-virtual {v0}, Lcom/metamoji/nt/share/NtPenStyle;->getInkColors()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v0}, Lcom/metamoji/nt/share/NtPenStyle;->getLineColor()I

    move-result v5

    if-eq v4, v5, :cond_5

    .line 9539
    sget-object v4, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;->LINE_COLOR_RGB:Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

    invoke-virtual {v9, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 9541
    invoke-virtual {v0}, Lcom/metamoji/nt/share/NtPenStyle;->getLineColor()I

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v5}, Lcom/metamoji/cm/ColorUtils;->colorWithAlphaByFloat(IF)I

    move-result v4

    .line 9559
    :cond_5
    iget v5, v0, Lcom/metamoji/nt/share/NtPenStyle;->lineAlpha:F

    const/high16 v7, -0x40800000    # -1.0f

    cmpl-float v5, v7, v5

    if-eqz v5, :cond_6

    .line 9560
    sget-object v5, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;->LINE_COLOR_A:Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

    invoke-virtual {v9, v5}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 9561
    iget v5, v0, Lcom/metamoji/nt/share/NtPenStyle;->lineAlpha:F

    const/high16 v8, 0x437f0000    # 255.0f

    mul-float/2addr v5, v8

    float-to-int v5, v5

    invoke-static {v4, v5}, Lcom/metamoji/cm/ColorUtils;->colorWithAlpha(II)I

    move-result v4

    :cond_6
    move v13, v4

    .line 9606
    sget-object v4, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;->LINE_COLOR_RGB:Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

    invoke-virtual {v9, v4}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_7

    .line 9610
    new-instance v4, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    invoke-direct {v4}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;-><init>()V

    .line 9612
    new-instance v8, Lcom/metamoji/un/text/model/ColorComponent;

    const/16 v11, 0xff

    invoke-static {v13, v11}, Lcom/metamoji/cm/ColorUtils;->colorWithAlpha(II)I

    move-result v11

    invoke-direct {v8, v11}, Lcom/metamoji/un/text/model/ColorComponent;-><init>(I)V

    invoke-virtual {v4, v8}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->setColor(Lcom/metamoji/un/text/model/ColorComponent;)V

    .line 9613
    sget-object v8, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->Color:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {v6, v8}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    move-object v4, v5

    .line 9620
    :goto_1
    iget-object v8, v0, Lcom/metamoji/nt/share/NtPenStyle;->inkType:Ljava/lang/String;

    if-eqz v8, :cond_e

    .line 9622
    const-string v8, "gradation"

    iget-object v11, v0, Lcom/metamoji/nt/share/NtPenStyle;->inkType:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v14, 0x2

    if-eqz v8, :cond_a

    .line 9623
    invoke-virtual {v0}, Lcom/metamoji/nt/share/NtPenStyle;->getInkColors()Ljava/util/List;

    move-result-object v8

    .line 9624
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v15

    if-lt v15, v14, :cond_9

    .line 9625
    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v12, v8}, Lcom/metamoji/mazecclient/stroke/StrokeInk;->strokeInkGradation(II)Lcom/metamoji/mazecclient/stroke/IStrokeInk;

    move-result-object v8

    .line 9626
    invoke-interface {v1}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getInk()Lcom/metamoji/mazecclient/stroke/IStrokeInk;

    move-result-object v11

    if-eqz v11, :cond_8

    invoke-interface {v1}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getInk()Lcom/metamoji/mazecclient/stroke/IStrokeInk;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    .line 9627
    :cond_8
    sget-object v11, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;->INK:Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

    invoke-virtual {v9, v11}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_9
    move-object v8, v5

    :goto_2
    move-object v15, v8

    goto :goto_3

    .line 9631
    :cond_a
    const-string v8, "2colors"

    iget-object v15, v0, Lcom/metamoji/nt/share/NtPenStyle;->inkType:Ljava/lang/String;

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 9632
    invoke-virtual {v0}, Lcom/metamoji/nt/share/NtPenStyle;->getInkColors()Ljava/util/List;

    move-result-object v8

    .line 9633
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v15

    if-lt v15, v14, :cond_9

    .line 9634
    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v12, v8}, Lcom/metamoji/mazecclient/stroke/StrokeInk;->strokeInkCubic2Surface(II)Lcom/metamoji/mazecclient/stroke/IStrokeInk;

    move-result-object v8

    .line 9635
    invoke-interface {v1}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getInk()Lcom/metamoji/mazecclient/stroke/IStrokeInk;

    move-result-object v11

    if-eqz v11, :cond_b

    invoke-interface {v1}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getInk()Lcom/metamoji/mazecclient/stroke/IStrokeInk;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    .line 9636
    :cond_b
    sget-object v11, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;->INK:Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

    invoke-virtual {v9, v11}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 9642
    :cond_c
    sget-object v8, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;->LINE_COLOR_RGB:Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

    invoke-virtual {v9, v8}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    sget-object v8, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;->LINE_COLOR_A:Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

    .line 9643
    invoke-virtual {v9, v8}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 9644
    :cond_d
    sget-object v8, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;->INK:Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

    invoke-virtual {v9, v8}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_e
    move-object v15, v5

    .line 9649
    :goto_3
    iget-object v8, v0, Lcom/metamoji/nt/share/NtPenStyle;->inkId:Ljava/lang/String;

    if-eqz v8, :cond_f

    .line 9652
    invoke-static {v0}, Lcom/metamoji/mazecclient/stroke/StrokePenInfo;->strokePenInfoFromPenStyle(Lcom/metamoji/nt/share/NtPenStyle;)Lcom/metamoji/mazecclient/stroke/IStrokePenInfo;

    move-result-object v8

    goto :goto_4

    :cond_f
    move-object v8, v5

    .line 9656
    :goto_4
    iget v11, v2, Lcom/metamoji/nt/share/NtPenStyle;->lineWidth:F

    .line 9657
    iget v12, v0, Lcom/metamoji/nt/share/NtPenStyle;->lineWidth:F

    cmpl-float v12, v7, v12

    if-eqz v12, :cond_10

    .line 9658
    iget v12, v0, Lcom/metamoji/nt/share/NtPenStyle;->lineWidth:F

    cmpl-float v12, v11, v12

    if-eqz v12, :cond_10

    .line 9659
    sget-object v11, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;->LINE_WIDTH_RATIO:Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

    invoke-virtual {v9, v11}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 9660
    iget v11, v0, Lcom/metamoji/nt/share/NtPenStyle;->lineWidth:F

    :cond_10
    move v14, v11

    .line 9675
    sget-object v11, Lcom/metamoji/mazecclient/stroke/StrokePenType;->CALLIGRAPHY:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    if-ne v11, v3, :cond_14

    .line 9677
    iget v2, v2, Lcom/metamoji/nt/share/NtPenStyle;->penAngle:F

    .line 9678
    iget v3, v0, Lcom/metamoji/nt/share/NtPenStyle;->penAngle:F

    cmpl-float v3, v7, v3

    if-eqz v3, :cond_11

    .line 9679
    iget v3, v0, Lcom/metamoji/nt/share/NtPenStyle;->penAngle:F

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_11

    .line 9680
    sget-object v2, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;->CALLI_ANGLE:Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

    invoke-virtual {v9, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 9681
    iget v2, v0, Lcom/metamoji/nt/share/NtPenStyle;->penAngle:F

    :cond_11
    move v11, v2

    .line 9686
    invoke-interface {v1}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getCalliRate()F

    move-result v1

    .line 9687
    iget v2, v0, Lcom/metamoji/nt/share/NtPenStyle;->penRate:F

    cmpl-float v2, v7, v2

    if-eqz v2, :cond_12

    .line 9688
    iget v2, v0, Lcom/metamoji/nt/share/NtPenStyle;->penRate:F

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_12

    .line 9689
    sget-object v1, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;->CALLI_RATE:Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

    invoke-virtual {v9, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 9690
    iget v1, v0, Lcom/metamoji/nt/share/NtPenStyle;->penRate:F

    :cond_12
    move v12, v1

    .line 9694
    sget-object v0, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;->PEN_TYPE:Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

    invoke-virtual {v9, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 9696
    sget-object v0, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;->CALLI_PAINT_TYPE:Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

    invoke-virtual {v9, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 9698
    sget-object v0, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;->CALLI_ANGLE:Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

    invoke-virtual {v9, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 9699
    sget-object v0, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;->CALLI_RATE:Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

    invoke-virtual {v9, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 9707
    :cond_13
    invoke-static/range {v10 .. v15}, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->calligraphyStyle(Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;FFIFLcom/metamoji/mazecclient/stroke/IStrokeInk;)Lcom/metamoji/mazecclient/stroke/IStrokeStyle;

    move-result-object v5

    goto :goto_5

    .line 9710
    :cond_14
    sget-object v1, Lcom/metamoji/mazecclient/stroke/StrokePenType;->FOUNTAIN:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    if-ne v1, v3, :cond_17

    .line 9711
    new-instance v1, Lcom/metamoji/mazecclient/stroke/FountainProperties;

    invoke-direct {v1, v0}, Lcom/metamoji/mazecclient/stroke/FountainProperties;-><init>(Lcom/metamoji/nt/share/NtPenStyle;)V

    .line 9712
    new-instance v0, Lcom/metamoji/mazecclient/stroke/FountainProperties;

    invoke-direct {v0, v2}, Lcom/metamoji/mazecclient/stroke/FountainProperties;-><init>(Lcom/metamoji/nt/share/NtPenStyle;)V

    .line 9713
    sget-object v2, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;->PEN_TYPE:Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

    invoke-virtual {v9, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    invoke-virtual {v0, v1}, Lcom/metamoji/mazecclient/stroke/FountainProperties;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 9714
    :cond_15
    sget-object v0, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;->FOUNTAIN_PROPS:Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

    invoke-virtual {v9, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 9716
    :cond_16
    invoke-static {v13, v14, v15, v1}, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->fountainStyle(IFLcom/metamoji/mazecclient/stroke/IStrokeInk;Lcom/metamoji/mazecclient/stroke/IFountainProperties;)Lcom/metamoji/mazecclient/stroke/IStrokeStyle;

    move-result-object v5

    goto :goto_5

    .line 9719
    :cond_17
    sget-object v0, Lcom/metamoji/mazecclient/stroke/StrokePenType;->STANDARD:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    if-ne v0, v3, :cond_18

    .line 9720
    invoke-static {v13, v14, v15}, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->standartStyle(IFLcom/metamoji/mazecclient/stroke/IStrokeInk;)Lcom/metamoji/mazecclient/stroke/IStrokeStyle;

    move-result-object v5

    :cond_18
    :goto_5
    move-object v7, v5

    if-eqz v7, :cond_1a

    .line 9733
    invoke-virtual {v6}, Ljava/util/EnumSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {v9}, Ljava/util/EnumSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    :cond_19
    move-object v5, v4

    .line 9734
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v4

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/metamoji/un/text/model/TextModel;->putTextAttributes(Lcom/metamoji/un/text/model/attr/StringAttributes;Ljava/util/EnumSet;Lcom/metamoji/mazecclient/stroke/IStrokeStyle;Lcom/metamoji/mazecclient/stroke/IStrokePenInfo;Ljava/util/EnumSet;Lcom/metamoji/un/text/model/TextRange;)V

    .line 9737
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/un/text/UnTextUnit;->setNeedsDisplay()V

    .line 9739
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/un/text/UnTextUnit;->notifySelectedRangeChanged()V

    .line 9743
    :cond_1a
    invoke-direct/range {p0 .. p0}, Lcom/metamoji/un/text/UnTextUnit;->enableSendTextUnitEdittingData()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 9745
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/un/text/UnTextUnit;->sendTextUnitEdittingData()V

    .line 9749
    :cond_1b
    invoke-direct/range {p0 .. p0}, Lcom/metamoji/un/text/UnTextUnit;->appearContextMenu()V

    return-void
.end method

.method calcOffsetCorrectNotProtrudeFromPaperWhenChanginVerticalWritingSettings(Z)Landroid/graphics/PointF;
    .locals 23

    move-object/from16 v0, p0

    .line 9762
    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v1

    .line 9763
    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextModel;->getUnitWidth()F

    move-result v2

    .line 9764
    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextModel;->getUnitHeight()F

    move-result v1

    .line 9767
    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->getRotation()D

    move-result-wide v3

    const/4 v5, 0x2

    .line 9769
    new-array v6, v5, [Lcom/metamoji/un/text/UnTextUnit$PaperEdge;

    sget-object v7, Lcom/metamoji/un/text/UnTextUnit$PaperEdge;->NONE:Lcom/metamoji/un/text/UnTextUnit$PaperEdge;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    sget-object v7, Lcom/metamoji/un/text/UnTextUnit$PaperEdge;->NONE:Lcom/metamoji/un/text/UnTextUnit$PaperEdge;

    const/4 v9, 0x1

    aput-object v7, v6, v9

    .line 9771
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    invoke-static {v10, v11, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    const-wide v10, -0x4006de04abbbd2e8L    # -1.5707963267948966

    cmpg-double v7, v10, v3

    const-wide/16 v12, 0x0

    if-gtz v7, :cond_5

    cmpg-double v7, v3, v12

    if-gez v7, :cond_5

    if-nez p1, :cond_0

    cmpl-float v7, v1, v2

    if-gtz v7, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    cmpl-float v7, v2, v1

    if-lez v7, :cond_2

    .line 9774
    :cond_1
    sget-object v7, Lcom/metamoji/un/text/UnTextUnit$PaperEdge;->LEFT:Lcom/metamoji/un/text/UnTextUnit$PaperEdge;

    aput-object v7, v6, v8

    .line 9775
    sget-object v7, Lcom/metamoji/un/text/UnTextUnit$PaperEdge;->BOTTOM:Lcom/metamoji/un/text/UnTextUnit$PaperEdge;

    aput-object v7, v6, v9

    goto/16 :goto_0

    :cond_2
    if-eqz p1, :cond_3

    cmpl-float v7, v1, v2

    if-gtz v7, :cond_4

    :cond_3
    if-nez p1, :cond_17

    cmpl-float v7, v2, v1

    if-lez v7, :cond_17

    .line 9778
    :cond_4
    sget-object v7, Lcom/metamoji/un/text/UnTextUnit$PaperEdge;->TOP:Lcom/metamoji/un/text/UnTextUnit$PaperEdge;

    aput-object v7, v6, v8

    .line 9779
    sget-object v7, Lcom/metamoji/un/text/UnTextUnit$PaperEdge;->RIGHT:Lcom/metamoji/un/text/UnTextUnit$PaperEdge;

    aput-object v7, v6, v9

    goto/16 :goto_0

    :cond_5
    const-wide v14, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    cmpg-double v7, v14, v3

    if-gtz v7, :cond_b

    cmpg-double v7, v3, v10

    if-gez v7, :cond_b

    if-nez p1, :cond_6

    cmpl-float v7, v1, v2

    if-gtz v7, :cond_7

    :cond_6
    if-eqz p1, :cond_8

    cmpl-float v7, v2, v1

    if-lez v7, :cond_8

    .line 9784
    :cond_7
    sget-object v7, Lcom/metamoji/un/text/UnTextUnit$PaperEdge;->BOTTOM:Lcom/metamoji/un/text/UnTextUnit$PaperEdge;

    aput-object v7, v6, v8

    .line 9785
    sget-object v7, Lcom/metamoji/un/text/UnTextUnit$PaperEdge;->RIGHT:Lcom/metamoji/un/text/UnTextUnit$PaperEdge;

    aput-object v7, v6, v9

    goto/16 :goto_0

    :cond_8
    if-eqz p1, :cond_9

    cmpl-float v7, v1, v2

    if-gtz v7, :cond_a

    :cond_9
    if-nez p1, :cond_17

    cmpl-float v7, v2, v1

    if-lez v7, :cond_17

    .line 9788
    :cond_a
    sget-object v7, Lcom/metamoji/un/text/UnTextUnit$PaperEdge;->LEFT:Lcom/metamoji/un/text/UnTextUnit$PaperEdge;

    aput-object v7, v6, v8

    .line 9789
    sget-object v7, Lcom/metamoji/un/text/UnTextUnit$PaperEdge;->TOP:Lcom/metamoji/un/text/UnTextUnit$PaperEdge;

    aput-object v7, v6, v9

    goto/16 :goto_0

    :cond_b
    const-wide v10, 0x3ff921fb54442d18L    # 1.5707963267948966

    cmpg-double v7, v10, v3

    if-gtz v7, :cond_11

    const-wide v14, 0x400921fb54442d18L    # Math.PI

    cmpg-double v7, v3, v14

    if-gez v7, :cond_11

    if-nez p1, :cond_c

    cmpl-float v7, v1, v2

    if-gtz v7, :cond_d

    :cond_c
    if-eqz p1, :cond_e

    cmpl-float v7, v2, v1

    if-lez v7, :cond_e

    .line 9794
    :cond_d
    sget-object v7, Lcom/metamoji/un/text/UnTextUnit$PaperEdge;->RIGHT:Lcom/metamoji/un/text/UnTextUnit$PaperEdge;

    aput-object v7, v6, v8

    .line 9795
    sget-object v7, Lcom/metamoji/un/text/UnTextUnit$PaperEdge;->TOP:Lcom/metamoji/un/text/UnTextUnit$PaperEdge;

    aput-object v7, v6, v9

    goto :goto_0

    :cond_e
    if-eqz p1, :cond_f

    cmpl-float v7, v1, v2

    if-gtz v7, :cond_10

    :cond_f
    if-nez p1, :cond_17

    cmpl-float v7, v2, v1

    if-lez v7, :cond_17

    .line 9798
    :cond_10
    sget-object v7, Lcom/metamoji/un/text/UnTextUnit$PaperEdge;->BOTTOM:Lcom/metamoji/un/text/UnTextUnit$PaperEdge;

    aput-object v7, v6, v8

    .line 9799
    sget-object v7, Lcom/metamoji/un/text/UnTextUnit$PaperEdge;->LEFT:Lcom/metamoji/un/text/UnTextUnit$PaperEdge;

    aput-object v7, v6, v9

    goto :goto_0

    :cond_11
    cmpg-double v7, v12, v3

    if-gtz v7, :cond_17

    cmpg-double v7, v3, v10

    if-gez v7, :cond_17

    if-nez p1, :cond_12

    cmpl-float v7, v1, v2

    if-gtz v7, :cond_13

    :cond_12
    if-eqz p1, :cond_14

    cmpl-float v7, v2, v1

    if-lez v7, :cond_14

    .line 9804
    :cond_13
    sget-object v7, Lcom/metamoji/un/text/UnTextUnit$PaperEdge;->TOP:Lcom/metamoji/un/text/UnTextUnit$PaperEdge;

    aput-object v7, v6, v8

    .line 9805
    sget-object v7, Lcom/metamoji/un/text/UnTextUnit$PaperEdge;->LEFT:Lcom/metamoji/un/text/UnTextUnit$PaperEdge;

    aput-object v7, v6, v9

    goto :goto_0

    :cond_14
    if-eqz p1, :cond_15

    cmpl-float v7, v1, v2

    if-gtz v7, :cond_16

    :cond_15
    if-nez p1, :cond_17

    cmpl-float v7, v2, v1

    if-lez v7, :cond_17

    .line 9808
    :cond_16
    sget-object v7, Lcom/metamoji/un/text/UnTextUnit$PaperEdge;->RIGHT:Lcom/metamoji/un/text/UnTextUnit$PaperEdge;

    aput-object v7, v6, v8

    .line 9809
    sget-object v7, Lcom/metamoji/un/text/UnTextUnit$PaperEdge;->BOTTOM:Lcom/metamoji/un/text/UnTextUnit$PaperEdge;

    aput-object v7, v6, v9

    .line 9813
    :cond_17
    :goto_0
    new-array v7, v5, [I

    aput v5, v7, v9

    aput v5, v7, v8

    const-class v10, Landroid/graphics/PointF;

    invoke-static {v10, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[Landroid/graphics/PointF;

    .line 9814
    aget-object v10, v7, v8

    new-instance v11, Landroid/graphics/PointF;

    const/4 v14, 0x0

    invoke-direct {v11, v14, v14}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v0, v11}, Lcom/metamoji/un/text/UnTextUnit;->spriteToPaperSprite(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v11

    aput-object v11, v10, v8

    .line 9815
    aget-object v10, v7, v8

    new-instance v11, Landroid/graphics/PointF;

    invoke-direct {v11, v2, v14}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v0, v11}, Lcom/metamoji/un/text/UnTextUnit;->spriteToPaperSprite(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v11

    aput-object v11, v10, v9

    .line 9816
    aget-object v10, v7, v9

    new-instance v11, Landroid/graphics/PointF;

    invoke-direct {v11, v14, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v0, v11}, Lcom/metamoji/un/text/UnTextUnit;->spriteToPaperSprite(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v11

    aput-object v11, v10, v8

    .line 9817
    aget-object v10, v7, v9

    new-instance v11, Landroid/graphics/PointF;

    invoke-direct {v11, v2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v0, v11}, Lcom/metamoji/un/text/UnTextUnit;->spriteToPaperSprite(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v11

    aput-object v11, v10, v9

    .line 9819
    new-array v10, v5, [I

    aput v5, v10, v9

    aput v5, v10, v8

    const-class v11, Landroid/graphics/PointF;

    invoke-static {v11, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[Landroid/graphics/PointF;

    .line 9820
    aget-object v11, v10, v8

    new-instance v15, Landroid/graphics/PointF;

    invoke-direct {v15, v14, v14}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v0, v15}, Lcom/metamoji/un/text/UnTextUnit;->spriteToPaperSprite(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v15

    aput-object v15, v11, v8

    .line 9821
    aget-object v11, v10, v8

    new-instance v15, Landroid/graphics/PointF;

    invoke-direct {v15, v1, v14}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v0, v15}, Lcom/metamoji/un/text/UnTextUnit;->spriteToPaperSprite(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v15

    aput-object v15, v11, v9

    .line 9822
    aget-object v11, v10, v9

    new-instance v15, Landroid/graphics/PointF;

    invoke-direct {v15, v14, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v0, v15}, Lcom/metamoji/un/text/UnTextUnit;->spriteToPaperSprite(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v15

    aput-object v15, v11, v8

    .line 9823
    aget-object v11, v10, v9

    new-instance v15, Landroid/graphics/PointF;

    invoke-direct {v15, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v0, v15}, Lcom/metamoji/un/text/UnTextUnit;->spriteToPaperSprite(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v1

    aput-object v1, v11, v9

    if-nez p1, :cond_19

    .line 9827
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v2, v14}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v0, v1}, Lcom/metamoji/un/text/UnTextUnit;->spriteToPaperSprite(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v1

    .line 9828
    new-instance v2, Landroid/graphics/PointF;

    iget v11, v1, Landroid/graphics/PointF;->x:F

    aget-object v15, v10, v8

    aget-object v15, v15, v9

    iget v15, v15, Landroid/graphics/PointF;->x:F

    sub-float/2addr v11, v15

    iget v1, v1, Landroid/graphics/PointF;->y:F

    aget-object v15, v10, v8

    aget-object v15, v15, v9

    iget v15, v15, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v15

    invoke-direct {v2, v11, v1}, Landroid/graphics/PointF;-><init>(FF)V

    move v1, v8

    :goto_1
    if-ge v1, v5, :cond_19

    move v11, v8

    :goto_2
    if-ge v11, v5, :cond_18

    .line 9831
    aget-object v15, v10, v1

    aget-object v15, v15, v11

    move/from16 v16, v8

    iget v8, v15, Landroid/graphics/PointF;->x:F

    move-wide/from16 v17, v12

    iget v12, v2, Landroid/graphics/PointF;->x:F

    add-float/2addr v8, v12

    iput v8, v15, Landroid/graphics/PointF;->x:F

    .line 9832
    aget-object v8, v10, v1

    aget-object v8, v8, v11

    iget v12, v8, Landroid/graphics/PointF;->y:F

    iget v13, v2, Landroid/graphics/PointF;->y:F

    add-float/2addr v12, v13

    iput v12, v8, Landroid/graphics/PointF;->y:F

    add-int/lit8 v11, v11, 0x1

    move/from16 v8, v16

    move-wide/from16 v12, v17

    goto :goto_2

    :cond_18
    move/from16 v16, v8

    move-wide/from16 v17, v12

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_19
    move/from16 v16, v8

    move-wide/from16 v17, v12

    .line 9835
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->getPageController()Lcom/metamoji/nt/NtPageController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/nt/NtPageController;->getPaperWidth()F

    move-result v2

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->getPageController()Lcom/metamoji/nt/NtPageController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/metamoji/nt/NtPageController;->getPaperHeight()F

    move-result v8

    invoke-direct {v1, v14, v14, v2, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 9838
    new-array v2, v5, [Landroid/graphics/PointF;

    new-instance v8, Landroid/graphics/PointF;

    invoke-direct {v8}, Landroid/graphics/PointF;-><init>()V

    aput-object v8, v2, v16

    new-instance v8, Landroid/graphics/PointF;

    invoke-direct {v8}, Landroid/graphics/PointF;-><init>()V

    aput-object v8, v2, v9

    .line 9839
    new-array v8, v5, [I

    move/from16 v11, v16

    :goto_3
    if-ge v11, v5, :cond_23

    const/4 v12, -0x1

    .line 9841
    aput v12, v8, v11

    .line 9842
    aget-object v12, v6, v11

    invoke-virtual {v12}, Lcom/metamoji/un/text/UnTextUnit$PaperEdge;->ordinal()I

    move-result v12

    if-eqz v12, :cond_20

    if-eq v12, v9, :cond_1e

    if-eq v12, v5, :cond_1c

    const/4 v13, 0x3

    if-eq v12, v13, :cond_1a

    move/from16 v20, v9

    goto/16 :goto_8

    .line 9868
    :cond_1a
    aget-object v12, v2, v11

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->getPageController()Lcom/metamoji/nt/NtPageController;

    move-result-object v13

    invoke-virtual {v13}, Lcom/metamoji/nt/NtPageController;->getPaperHeight()F

    move-result v13

    iput v13, v12, Landroid/graphics/PointF;->y:F

    .line 9869
    aget-object v12, v2, v11

    aget-object v13, v10, v11

    aget-object v13, v13, v9

    iget v13, v13, Landroid/graphics/PointF;->x:F

    aget-object v15, v10, v11

    aget-object v15, v15, v16

    iget v15, v15, Landroid/graphics/PointF;->x:F

    sub-float/2addr v13, v15

    aget-object v15, v10, v11

    aget-object v15, v15, v9

    iget v15, v15, Landroid/graphics/PointF;->y:F

    aget-object v19, v10, v11

    move/from16 v20, v9

    aget-object v9, v19, v16

    iget v9, v9, Landroid/graphics/PointF;->y:F

    sub-float/2addr v15, v9

    div-float/2addr v13, v15

    aget-object v9, v2, v11

    iget v9, v9, Landroid/graphics/PointF;->y:F

    aget-object v15, v10, v11

    aget-object v15, v15, v16

    iget v15, v15, Landroid/graphics/PointF;->y:F

    sub-float/2addr v9, v15

    mul-float/2addr v13, v9

    aget-object v9, v10, v11

    aget-object v9, v9, v16

    iget v9, v9, Landroid/graphics/PointF;->x:F

    add-float/2addr v13, v9

    iput v13, v12, Landroid/graphics/PointF;->x:F

    .line 9871
    aget-object v9, v10, v11

    aget-object v9, v9, v16

    iget v9, v9, Landroid/graphics/PointF;->y:F

    aget-object v12, v10, v11

    aget-object v12, v12, v20

    iget v12, v12, Landroid/graphics/PointF;->y:F

    cmpl-float v9, v9, v12

    if-lez v9, :cond_1b

    move/from16 v9, v16

    goto :goto_4

    :cond_1b
    move/from16 v9, v20

    .line 9872
    :goto_4
    aget-object v12, v10, v11

    aget-object v12, v12, v9

    iget v12, v12, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->getPageController()Lcom/metamoji/nt/NtPageController;

    move-result-object v13

    invoke-virtual {v13}, Lcom/metamoji/nt/NtPageController;->getPaperHeight()F

    move-result v13

    cmpl-float v12, v12, v13

    if-lez v12, :cond_22

    .line 9873
    aput v9, v8, v11

    goto/16 :goto_8

    :cond_1c
    move/from16 v20, v9

    .line 9860
    aget-object v9, v2, v11

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->getPageController()Lcom/metamoji/nt/NtPageController;

    move-result-object v12

    invoke-virtual {v12}, Lcom/metamoji/nt/NtPageController;->getPaperWidth()F

    move-result v12

    iput v12, v9, Landroid/graphics/PointF;->x:F

    .line 9861
    aget-object v9, v2, v11

    aget-object v12, v10, v11

    aget-object v12, v12, v20

    iget v12, v12, Landroid/graphics/PointF;->y:F

    aget-object v13, v10, v11

    aget-object v13, v13, v16

    iget v13, v13, Landroid/graphics/PointF;->y:F

    sub-float/2addr v12, v13

    aget-object v13, v10, v11

    aget-object v13, v13, v20

    iget v13, v13, Landroid/graphics/PointF;->x:F

    aget-object v15, v10, v11

    aget-object v15, v15, v16

    iget v15, v15, Landroid/graphics/PointF;->x:F

    sub-float/2addr v13, v15

    div-float/2addr v12, v13

    aget-object v13, v2, v11

    iget v13, v13, Landroid/graphics/PointF;->x:F

    aget-object v15, v10, v11

    aget-object v15, v15, v16

    iget v15, v15, Landroid/graphics/PointF;->x:F

    sub-float/2addr v13, v15

    mul-float/2addr v12, v13

    aget-object v13, v10, v11

    aget-object v13, v13, v16

    iget v13, v13, Landroid/graphics/PointF;->y:F

    add-float/2addr v12, v13

    iput v12, v9, Landroid/graphics/PointF;->y:F

    .line 9863
    aget-object v9, v10, v11

    aget-object v9, v9, v16

    iget v9, v9, Landroid/graphics/PointF;->x:F

    aget-object v12, v10, v11

    aget-object v12, v12, v20

    iget v12, v12, Landroid/graphics/PointF;->x:F

    cmpl-float v9, v9, v12

    if-lez v9, :cond_1d

    move/from16 v9, v16

    goto :goto_5

    :cond_1d
    move/from16 v9, v20

    .line 9864
    :goto_5
    aget-object v12, v10, v11

    aget-object v12, v12, v9

    iget v12, v12, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->getPageController()Lcom/metamoji/nt/NtPageController;

    move-result-object v13

    invoke-virtual {v13}, Lcom/metamoji/nt/NtPageController;->getPaperWidth()F

    move-result v13

    cmpl-float v12, v12, v13

    if-lez v12, :cond_22

    .line 9865
    aput v9, v8, v11

    goto/16 :goto_8

    :cond_1e
    move/from16 v20, v9

    .line 9852
    aget-object v9, v2, v11

    iput v14, v9, Landroid/graphics/PointF;->y:F

    .line 9853
    aget-object v9, v2, v11

    aget-object v12, v10, v11

    aget-object v12, v12, v20

    iget v12, v12, Landroid/graphics/PointF;->x:F

    aget-object v13, v10, v11

    aget-object v13, v13, v16

    iget v13, v13, Landroid/graphics/PointF;->x:F

    sub-float/2addr v12, v13

    aget-object v13, v10, v11

    aget-object v13, v13, v20

    iget v13, v13, Landroid/graphics/PointF;->y:F

    aget-object v15, v10, v11

    aget-object v15, v15, v16

    iget v15, v15, Landroid/graphics/PointF;->y:F

    sub-float/2addr v13, v15

    div-float/2addr v12, v13

    aget-object v13, v2, v11

    iget v13, v13, Landroid/graphics/PointF;->y:F

    aget-object v15, v10, v11

    aget-object v15, v15, v16

    iget v15, v15, Landroid/graphics/PointF;->y:F

    sub-float/2addr v13, v15

    mul-float/2addr v12, v13

    aget-object v13, v10, v11

    aget-object v13, v13, v16

    iget v13, v13, Landroid/graphics/PointF;->x:F

    add-float/2addr v12, v13

    iput v12, v9, Landroid/graphics/PointF;->x:F

    .line 9855
    aget-object v9, v10, v11

    aget-object v9, v9, v16

    iget v9, v9, Landroid/graphics/PointF;->y:F

    aget-object v12, v10, v11

    aget-object v12, v12, v20

    iget v12, v12, Landroid/graphics/PointF;->y:F

    cmpg-float v9, v9, v12

    if-gez v9, :cond_1f

    move/from16 v9, v16

    goto :goto_6

    :cond_1f
    move/from16 v9, v20

    .line 9856
    :goto_6
    aget-object v12, v10, v11

    aget-object v12, v12, v9

    iget v12, v12, Landroid/graphics/PointF;->y:F

    cmpg-float v12, v12, v14

    if-gez v12, :cond_22

    .line 9857
    aput v9, v8, v11

    goto :goto_8

    :cond_20
    move/from16 v20, v9

    .line 9844
    aget-object v9, v2, v11

    iput v14, v9, Landroid/graphics/PointF;->x:F

    .line 9845
    aget-object v9, v2, v11

    aget-object v12, v10, v11

    aget-object v12, v12, v20

    iget v12, v12, Landroid/graphics/PointF;->y:F

    aget-object v13, v10, v11

    aget-object v13, v13, v16

    iget v13, v13, Landroid/graphics/PointF;->y:F

    sub-float/2addr v12, v13

    aget-object v13, v10, v11

    aget-object v13, v13, v20

    iget v13, v13, Landroid/graphics/PointF;->x:F

    aget-object v15, v10, v11

    aget-object v15, v15, v16

    iget v15, v15, Landroid/graphics/PointF;->x:F

    sub-float/2addr v13, v15

    div-float/2addr v12, v13

    aget-object v13, v2, v11

    iget v13, v13, Landroid/graphics/PointF;->x:F

    aget-object v15, v10, v11

    aget-object v15, v15, v16

    iget v15, v15, Landroid/graphics/PointF;->x:F

    sub-float/2addr v13, v15

    mul-float/2addr v12, v13

    aget-object v13, v10, v11

    aget-object v13, v13, v16

    iget v13, v13, Landroid/graphics/PointF;->y:F

    add-float/2addr v12, v13

    iput v12, v9, Landroid/graphics/PointF;->y:F

    .line 9847
    aget-object v9, v10, v11

    aget-object v9, v9, v16

    iget v9, v9, Landroid/graphics/PointF;->x:F

    aget-object v12, v10, v11

    aget-object v12, v12, v20

    iget v12, v12, Landroid/graphics/PointF;->x:F

    cmpg-float v9, v9, v12

    if-gez v9, :cond_21

    move/from16 v9, v16

    goto :goto_7

    :cond_21
    move/from16 v9, v20

    .line 9848
    :goto_7
    aget-object v12, v10, v11

    aget-object v12, v12, v9

    iget v12, v12, Landroid/graphics/PointF;->x:F

    cmpg-float v12, v12, v14

    if-gez v12, :cond_22

    .line 9849
    aput v9, v8, v11

    :cond_22
    :goto_8
    add-int/lit8 v11, v11, 0x1

    move/from16 v9, v20

    goto/16 :goto_3

    :cond_23
    move/from16 v20, v9

    .line 9879
    new-array v6, v5, [D

    move/from16 v9, v16

    :goto_9
    if-ge v9, v5, :cond_25

    .line 9881
    aput-wide v17, v6, v9

    .line 9882
    aget v11, v8, v9

    if-ltz v11, :cond_24

    aget-object v11, v2, v9

    iget v11, v11, Landroid/graphics/PointF;->x:F

    invoke-static {v11}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v11

    if-nez v11, :cond_24

    aget-object v11, v2, v9

    iget v11, v11, Landroid/graphics/PointF;->y:F

    invoke-static {v11}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v11

    if-nez v11, :cond_24

    .line 9883
    aget-object v11, v10, v9

    aget v12, v8, v9

    aget-object v11, v11, v12

    iget v11, v11, Landroid/graphics/PointF;->x:F

    aget-object v12, v2, v9

    iget v12, v12, Landroid/graphics/PointF;->x:F

    sub-float/2addr v11, v12

    float-to-double v11, v11

    move-object v15, v6

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v11, v12, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    aget-object v19, v10, v9

    aget v21, v8, v9

    aget-object v13, v19, v21

    iget v13, v13, Landroid/graphics/PointF;->y:F

    aget-object v14, v2, v9

    iget v14, v14, Landroid/graphics/PointF;->y:F

    sub-float/2addr v13, v14

    float-to-double v13, v13

    invoke-static {v13, v14, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v11, v5

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    aput-wide v5, v15, v9

    goto :goto_a

    :cond_24
    move-object v15, v6

    :goto_a
    add-int/lit8 v9, v9, 0x1

    move-object v6, v15

    const/4 v5, 0x2

    const/4 v14, 0x0

    goto :goto_9

    :cond_25
    move-object v15, v6

    .line 9886
    new-instance v5, Landroid/graphics/PointF;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 9887
    new-instance v9, Landroid/graphics/PointF;

    invoke-direct {v9, v6, v6}, Landroid/graphics/PointF;-><init>(FF)V

    move/from16 v6, v16

    const/4 v13, 0x2

    :goto_b
    if-ge v6, v13, :cond_29

    .line 9889
    aget-wide v11, v15, v6

    xor-int/lit8 v14, v6, 0x1

    aget-wide v21, v15, v14

    cmpl-double v14, v11, v21

    if-gtz v14, :cond_27

    cmpl-double v14, v11, v17

    if-eqz v14, :cond_26

    cmpl-double v11, v11, v21

    if-nez v11, :cond_26

    goto :goto_c

    :cond_26
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    .line 9892
    :cond_27
    :goto_c
    aget-object v11, v2, v6

    iget v11, v11, Landroid/graphics/PointF;->x:F

    aget-object v12, v10, v6

    aget v13, v8, v6

    aget-object v12, v12, v13

    iget v12, v12, Landroid/graphics/PointF;->x:F

    sub-float/2addr v11, v12

    .line 9893
    aget-object v12, v2, v6

    iget v12, v12, Landroid/graphics/PointF;->y:F

    aget-object v13, v10, v6

    aget v14, v8, v6

    aget-object v13, v13, v14

    iget v13, v13, Landroid/graphics/PointF;->y:F

    sub-float/2addr v12, v13

    .line 9894
    aget v13, v8, v6

    xor-int/lit8 v13, v13, 0x1

    .line 9895
    aget-object v14, v7, v6

    aget-object v14, v14, v13

    iget v14, v14, Landroid/graphics/PointF;->x:F

    aget-object v7, v7, v6

    aget-object v7, v7, v13

    iget v7, v7, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v14, v7}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v7

    if-eqz v7, :cond_28

    aget-object v7, v10, v6

    aget-object v7, v7, v13

    iget v7, v7, Landroid/graphics/PointF;->x:F

    add-float/2addr v7, v11

    aget-object v11, v10, v6

    aget-object v11, v11, v13

    iget v11, v11, Landroid/graphics/PointF;->y:F

    add-float/2addr v11, v12

    .line 9896
    invoke-virtual {v1, v7, v11}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-nez v1, :cond_28

    goto :goto_d

    .line 9900
    :cond_28
    aget-object v1, v2, v6

    invoke-direct {v0, v1}, Lcom/metamoji/un/text/UnTextUnit;->paperSpriteToTextSprite(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v5

    .line 9901
    aget-object v1, v10, v6

    aget v2, v8, v6

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Lcom/metamoji/un/text/UnTextUnit;->paperSpriteToTextSprite(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v9

    cmpl-double v1, v3, v17

    if-eqz v1, :cond_29

    .line 9904
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    .line 9905
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    .line 9907
    new-instance v6, Landroid/graphics/PointF;

    iget v7, v5, Landroid/graphics/PointF;->x:F

    float-to-double v7, v7

    mul-double/2addr v7, v1

    iget v10, v5, Landroid/graphics/PointF;->y:F

    float-to-double v10, v10

    mul-double/2addr v10, v3

    sub-double/2addr v7, v10

    double-to-float v7, v7

    iget v8, v5, Landroid/graphics/PointF;->x:F

    float-to-double v10, v8

    mul-double/2addr v10, v3

    iget v5, v5, Landroid/graphics/PointF;->y:F

    float-to-double v12, v5

    mul-double/2addr v12, v1

    add-double/2addr v10, v12

    double-to-float v5, v10

    invoke-direct {v6, v7, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 9910
    new-instance v5, Landroid/graphics/PointF;

    iget v7, v9, Landroid/graphics/PointF;->x:F

    float-to-double v7, v7

    mul-double/2addr v7, v1

    iget v10, v9, Landroid/graphics/PointF;->y:F

    float-to-double v10, v10

    mul-double/2addr v10, v3

    sub-double/2addr v7, v10

    double-to-float v7, v7

    iget v8, v9, Landroid/graphics/PointF;->x:F

    float-to-double v10, v8

    mul-double/2addr v10, v3

    iget v3, v9, Landroid/graphics/PointF;->y:F

    float-to-double v3, v3

    mul-double/2addr v3, v1

    add-double/2addr v10, v3

    double-to-float v1, v10

    invoke-direct {v5, v7, v1}, Landroid/graphics/PointF;-><init>(FF)V

    move-object v9, v5

    move-object v5, v6

    .line 9917
    :cond_29
    :goto_d
    iget v1, v5, Landroid/graphics/PointF;->x:F

    iget v2, v9, Landroid/graphics/PointF;->x:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2b

    iget v1, v5, Landroid/graphics/PointF;->y:F

    iget v2, v9, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2a

    goto :goto_e

    .line 9920
    :cond_2a
    new-instance v1, Landroid/graphics/PointF;

    const/4 v6, 0x0

    invoke-direct {v1, v6, v6}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v1

    .line 9918
    :cond_2b
    :goto_e
    new-instance v1, Landroid/graphics/PointF;

    iget v2, v5, Landroid/graphics/PointF;->x:F

    iget v3, v9, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    iget v3, v5, Landroid/graphics/PointF;->y:F

    iget v4, v9, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v4

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v1
.end method

.method public callHideSoftInput()V
    .locals 2

    .line 10927
    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->isUseMazec()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10928
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->_viewForSI:Lcom/metamoji/un/text/UnTextUnit$ViewForSoftInput;

    if-eqz v0, :cond_0

    .line 10930
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/text/UnTextUnit;->_viewForSI:Lcom/metamoji/un/text/UnTextUnit$ViewForSoftInput;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtEditorWindowController;->hideSoftInput(Landroid/view/View;)Z

    :cond_0
    return-void
.end method

.method public canFocus()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canPerformCommand(Lcom/metamoji/un/text/UnTextUnit$CommandId;)Z
    .locals 5

    .line 4691
    invoke-virtual {p1}, Lcom/metamoji/un/text/UnTextUnit$CommandId;->ordinal()I

    move-result p1

    const/16 v0, 0x23

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_c

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    return v2

    .line 4857
    :pswitch_1
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4858
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextModel;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->canPerformTextUnitStyle()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4859
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->canPerformTextUnitStyleToSystem()Z

    :cond_0
    return v1

    .line 4893
    :pswitch_2
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object p1

    sget-object v3, Lcom/metamoji/nt/NtFeature;->TextParagraphList:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {p1, v3}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result p1

    if-nez p1, :cond_1

    return v2

    .line 4897
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/metamoji/un/text/model/TextModel;->selectedParagraphInfos(Lcom/metamoji/un/text/model/TextRange;)Ljava/util/List;

    move-result-object p1

    .line 4898
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/ctold/CtTaggableObject;

    .line 4900
    instance-of v4, v3, Lcom/metamoji/un/text/model/paragtable/TaggedParagraphInfo;

    if-eqz v4, :cond_3

    .line 4901
    check-cast v3, Lcom/metamoji/un/text/model/paragtable/TaggedParagraphInfo;

    goto :goto_0

    :cond_3
    move-object v3, v0

    :goto_0
    if-eqz v3, :cond_2

    .line 4903
    invoke-virtual {v3}, Lcom/metamoji/un/text/model/paragtable/TaggedParagraphInfo;->getParagraphStyle()Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;

    move-result-object v4

    if-eqz v4, :cond_4

    sget-object v4, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;->NoList:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;

    invoke-virtual {v3}, Lcom/metamoji/un/text/model/paragtable/TaggedParagraphInfo;->getParagraphStyle()Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->getListKind()Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;

    move-result-object v3

    if-ne v4, v3, :cond_2

    :cond_4
    return v2

    :cond_5
    return v1

    .line 4879
    :pswitch_3
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object p1

    sget-object v0, Lcom/metamoji/nt/NtFeature;->TextParagraphList:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {p1, v0}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v1

    .line 4869
    :pswitch_4
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->canPerformSeparateUnit()Z

    move-result p1

    return p1

    .line 4850
    :pswitch_5
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->isEditableTextUnit()Z

    move-result p1

    return p1

    .line 4842
    :pswitch_6
    iget-boolean p1, p0, Lcom/metamoji/un/text/UnTextUnit;->editing:Z

    return p1

    .line 4835
    :pswitch_7
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->canPerformInsertCurrentDateString()Z

    move-result p1

    return p1

    .line 4817
    :pswitch_8
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/metamoji/un/text/model/TextModel;->textKindInRange(Lcom/metamoji/un/text/model/TextRange;)Ljava/util/EnumSet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/EnumSet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    return v1

    :cond_7
    return v2

    :pswitch_9
    return v1

    .line 4808
    :pswitch_a
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/metamoji/un/text/model/TextModel;->textKindInRange(Lcom/metamoji/un/text/model/TextRange;)Ljava/util/EnumSet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/EnumSet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8

    return v1

    :cond_8
    return v2

    .line 4772
    :pswitch_b
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object p1

    sget-object v0, Lcom/metamoji/nt/NtFeature;->TextReconvert:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {p1, v0}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result p1

    if-nez p1, :cond_9

    return v2

    .line 4776
    :cond_9
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->isSupportReedit()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 4778
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->isContentEmpty()Z

    move-result p1

    :goto_1
    xor-int/2addr p1, v1

    return p1

    .line 4757
    :pswitch_c
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object p1

    sget-object v0, Lcom/metamoji/nt/NtFeature;->TextReedit:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {p1, v0}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result p1

    if-nez p1, :cond_a

    return v2

    .line 4761
    :cond_a
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->isSupportReedit()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 4763
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->isContentEmpty()Z

    move-result p1

    goto :goto_1

    .line 4749
    :pswitch_d
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->isContentEmpty()Z

    move-result p1

    if-nez p1, :cond_b

    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_b

    return v1

    :cond_b
    return v2

    .line 4723
    :pswitch_e
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->isEmpty()Z

    move-result p1

    goto :goto_1

    .line 4733
    :pswitch_f
    invoke-static {}, Lcom/metamoji/un/text/ClipboardUtils;->canPaste()Z

    move-result p1

    if-eqz p1, :cond_f

    return v1

    .line 4708
    :pswitch_10
    invoke-static {}, Lcom/metamoji/nt/NtTrialManager;->getInstance()Lcom/metamoji/nt/NtTrialManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/nt/NtTrialManager;->isTrialMode()Z

    move-result p1

    if-nez p1, :cond_f

    .line 4712
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->isEmpty()Z

    move-result p1

    goto :goto_1

    .line 4696
    :pswitch_11
    invoke-static {}, Lcom/metamoji/nt/NtTrialManager;->getInstance()Lcom/metamoji/nt/NtTrialManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/nt/NtTrialManager;->isTrialMode()Z

    move-result p1

    if-nez p1, :cond_f

    .line 4698
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->isEmpty()Z

    move-result p1

    goto :goto_1

    .line 4921
    :cond_c
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object p1

    sget-object v0, Lcom/metamoji/nt/NtFeature;->AppUseQRCodeReader:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {p1, v0}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 4922
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->isEmpty()Z

    move-result p1

    xor-int/lit8 v0, p1, 0x1

    if-nez p1, :cond_e

    .line 4924
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextModel;->getStringWsArrayObject()Lcom/metamoji/un/text/model/StringWithStrokesArray;

    move-result-object p1

    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->substringWithRange(Lcom/metamoji/un/text/model/TextRange;Z)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 4925
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_d

    return v1

    :cond_d
    return v2

    :cond_e
    return v0

    :cond_f
    :goto_2
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_8
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public canPerformTextUnitStyle()Z
    .locals 1

    .line 5923
    sget-object v0, Lcom/metamoji/un/text/UnTextUnit$CommandId;->TextUnitStyle:Lcom/metamoji/un/text/UnTextUnit$CommandId;

    invoke-virtual {p0, v0}, Lcom/metamoji/un/text/UnTextUnit;->canPerformCommand(Lcom/metamoji/un/text/UnTextUnit$CommandId;)Z

    move-result v0

    return v0
.end method

.method public canPerformTextUnitStyleToSystem()Z
    .locals 2

    .line 5954
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5956
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5958
    const-string v1, "MMJNtDocumentSettings"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtDocument;->getDocumentSettingsForType(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5959
    instance-of v1, v0, Lcom/metamoji/nt/NtDocumentSettings;

    if-eqz v1, :cond_0

    .line 5960
    check-cast v0, Lcom/metamoji/nt/NtDocumentSettings;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 5965
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocumentSettings;->getUseSystemTextSettings()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public cancelReconvertTask()V
    .locals 8

    .line 4025
    const-string/jumbo v0, "undoSelectedTextRangeAfter"

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/metamoji/un/text/UnTextUnit;->_duringCancelReconvertTask:Z

    const/4 v2, 0x0

    .line 4028
    :try_start_0
    iget-object v3, p0, Lcom/metamoji/un/text/UnTextUnit;->_undoDatasForReconvert:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_3

    .line 4030
    iget-object v3, p0, Lcom/metamoji/un/text/UnTextUnit;->_undoModelForReconvert:Lcom/metamoji/df/model/IModel;

    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v5

    invoke-static {v5}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator;->createJSONTextRange(Lcom/metamoji/un/text/model/TextRange;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v3, v0, v5}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/Map;)V

    .line 4031
    iget-object v3, p0, Lcom/metamoji/un/text/UnTextUnit;->_undoModelForReconvert:Lcom/metamoji/df/model/IModel;

    const-string/jumbo v5, "undoDatas"

    iget-object v6, p0, Lcom/metamoji/un/text/UnTextUnit;->_undoDatasForReconvert:Ljava/util/List;

    invoke-interface {v3, v5, v6}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/List;)V

    .line 4035
    sget-object v3, Lcom/metamoji/un/text/UnTextUnit$ReeditMode;->RePendingReconvert:Lcom/metamoji/un/text/UnTextUnit$ReeditMode;

    iget-object v5, p0, Lcom/metamoji/un/text/UnTextUnit;->_reeditMode:Lcom/metamoji/un/text/UnTextUnit$ReeditMode;

    if-ne v3, v5, :cond_2

    .line 4037
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v3

    .line 4038
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v5

    .line 4040
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/metamoji/un/text/model/TextModel;->getStringWsArrayObject()Lcom/metamoji/un/text/model/StringWithStrokesArray;

    move-result-object v6

    iget v7, v3, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    invoke-virtual {v6, v7}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v6

    .line 4041
    invoke-virtual {v6}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->hasString()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->isRenderStrokes()Z

    move-result v6

    if-eqz v6, :cond_0

    iget v6, v3, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    if-lez v6, :cond_0

    .line 4042
    new-instance v6, Lcom/metamoji/un/text/model/TextPosition;

    iget v3, v3, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    invoke-direct {v6, v3, v2}, Lcom/metamoji/un/text/model/TextPosition;-><init>(II)V

    goto :goto_0

    .line 4044
    :cond_0
    new-instance v6, Lcom/metamoji/un/text/model/TextPosition;

    invoke-direct {v6, v3}, Lcom/metamoji/un/text/model/TextPosition;-><init>(Lcom/metamoji/un/text/model/TextPosition;)V

    .line 4045
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/text/model/TextModel;->getStringWsArrayObject()Lcom/metamoji/un/text/model/StringWithStrokesArray;

    move-result-object v3

    iget v7, v5, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    invoke-virtual {v3, v7}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v3

    .line 4046
    invoke-virtual {v3}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->hasString()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v3}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->isRenderStrokes()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v5, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    if-lez v3, :cond_1

    .line 4047
    new-instance v3, Lcom/metamoji/un/text/model/TextPosition;

    iget v5, v5, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    add-int/2addr v5, v1

    invoke-direct {v3, v5, v2}, Lcom/metamoji/un/text/model/TextPosition;-><init>(II)V

    goto :goto_1

    .line 4049
    :cond_1
    new-instance v3, Lcom/metamoji/un/text/model/TextPosition;

    invoke-direct {v3, v5}, Lcom/metamoji/un/text/model/TextPosition;-><init>(Lcom/metamoji/un/text/model/TextPosition;)V

    .line 4050
    :goto_1
    new-instance v5, Lcom/metamoji/un/text/model/TextRange;

    invoke-direct {v5, v6, v3}, Lcom/metamoji/un/text/model/TextRange;-><init>(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/TextPosition;)V

    .line 4053
    iget-object v3, p0, Lcom/metamoji/un/text/UnTextUnit;->_undoModelForReconvert:Lcom/metamoji/df/model/IModel;

    const-string/jumbo v6, "undoSelectedTextRangeBefore"

    invoke-interface {v3, v6}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    .line 4054
    iget-object v3, p0, Lcom/metamoji/un/text/UnTextUnit;->_undoModelForReconvert:Lcom/metamoji/df/model/IModel;

    invoke-interface {v3, v0}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    move-object v5, v4

    .line 4057
    :goto_2
    iput-object v4, p0, Lcom/metamoji/un/text/UnTextUnit;->_undoDatasForReconvert:Ljava/util/List;

    .line 4058
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->_undoModelForReconvert:Lcom/metamoji/df/model/IModel;

    invoke-direct {p0, v1, v0}, Lcom/metamoji/un/text/UnTextUnit;->performTextEditUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V

    if-eqz v5, :cond_4

    .line 4061
    invoke-virtual {p0, v5}, Lcom/metamoji/un/text/UnTextUnit;->setSelectedTextRange(Lcom/metamoji/un/text/model/TextRange;)V

    goto :goto_3

    .line 4065
    :cond_3
    iput-object v4, p0, Lcom/metamoji/un/text/UnTextUnit;->_undoDatasForReconvert:Ljava/util/List;

    .line 4068
    :cond_4
    :goto_3
    iput-object v4, p0, Lcom/metamoji/un/text/UnTextUnit;->_undoModelForReconvert:Lcom/metamoji/df/model/IModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4071
    iput-boolean v2, p0, Lcom/metamoji/un/text/UnTextUnit;->_duringCancelReconvertTask:Z

    return-void

    :catchall_0
    move-exception v0

    iput-boolean v2, p0, Lcom/metamoji/un/text/UnTextUnit;->_duringCancelReconvertTask:Z

    .line 4072
    throw v0
.end method

.method public changeAttrFontItalic(Z)V
    .locals 3

    .line 5811
    sget-object v0, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->Italic:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    .line 5813
    new-instance v1, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    invoke-direct {v1}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;-><init>()V

    .line 5814
    invoke-virtual {v1, p1}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->setItalic(Z)V

    .line 5816
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Lcom/metamoji/un/text/model/TextModel;->putStringAttributes(Lcom/metamoji/un/text/model/attr/StringAttributes;Lcom/metamoji/un/text/model/TextRange;Ljava/util/EnumSet;)V

    return-void
.end method

.method public changeAttrFontName(Ljava/lang/String;Z)V
    .locals 4

    const/4 v0, 0x0

    .line 5493
    iput-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->preResizeUndoData:Ljava/util/Map;

    const/4 v1, 0x0

    .line 5494
    iput-boolean v1, p0, Lcom/metamoji/un/text/UnTextUnit;->inhibitAddSelfResizeUndo:Z

    const/4 v2, 0x1

    .line 5498
    :try_start_0
    iput-boolean v2, p0, Lcom/metamoji/un/text/UnTextUnit;->duringChangeFontSizeAttr:Z

    .line 5501
    sget-object v2, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->FontName:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-static {v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    .line 5503
    new-instance v3, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    invoke-direct {v3}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;-><init>()V

    if-eqz p2, :cond_0

    move-object p1, v0

    .line 5504
    :cond_0
    invoke-virtual {v3, p1}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->setFontName(Ljava/lang/String;)V

    .line 5506
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object p1

    invoke-virtual {p1, v3, v0, v2}, Lcom/metamoji/un/text/model/TextModel;->putStringAttributes(Lcom/metamoji/un/text/model/attr/StringAttributes;Lcom/metamoji/un/text/model/TextRange;Ljava/util/EnumSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5509
    iput-boolean v1, p0, Lcom/metamoji/un/text/UnTextUnit;->duringChangeFontSizeAttr:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v1, p0, Lcom/metamoji/un/text/UnTextUnit;->duringChangeFontSizeAttr:Z

    .line 5510
    throw p1
.end method

.method public changeAttrFontSize(FZ)V
    .locals 4

    const/4 v0, 0x0

    .line 5547
    iput-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->preResizeUndoData:Ljava/util/Map;

    const/4 v1, 0x0

    .line 5548
    iput-boolean v1, p0, Lcom/metamoji/un/text/UnTextUnit;->inhibitAddSelfResizeUndo:Z

    const/4 v2, 0x1

    .line 5552
    :try_start_0
    iput-boolean v2, p0, Lcom/metamoji/un/text/UnTextUnit;->duringChangeFontSizeAttr:Z

    .line 5555
    sget-object v2, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->FontSize:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-static {v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    .line 5557
    new-instance v3, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    invoke-direct {v3}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;-><init>()V

    if-eqz p2, :cond_0

    .line 5559
    invoke-virtual {v3, v1}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->setUseFontSize(Z)V

    goto :goto_0

    .line 5561
    :cond_0
    invoke-virtual {v3, p1}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->setFontSize(F)V

    .line 5563
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object p1

    invoke-virtual {p1, v3, v0, v2}, Lcom/metamoji/un/text/model/TextModel;->putStringAttributes(Lcom/metamoji/un/text/model/attr/StringAttributes;Lcom/metamoji/un/text/model/TextRange;Ljava/util/EnumSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5566
    iput-boolean v1, p0, Lcom/metamoji/un/text/UnTextUnit;->duringChangeFontSizeAttr:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v1, p0, Lcom/metamoji/un/text/UnTextUnit;->duringChangeFontSizeAttr:Z

    .line 5567
    throw p1
.end method

.method public changeAttrFontStrikeThrough(Z)V
    .locals 3

    .line 5871
    sget-object v0, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->Strikeout:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    .line 5873
    new-instance v1, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    invoke-direct {v1}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;-><init>()V

    .line 5874
    invoke-virtual {v1, p1}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->setStrikeout(Z)V

    .line 5876
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Lcom/metamoji/un/text/model/TextModel;->putStringAttributes(Lcom/metamoji/un/text/model/attr/StringAttributes;Lcom/metamoji/un/text/model/TextRange;Ljava/util/EnumSet;)V

    return-void
.end method

.method public changeAttrFontUnderline(Z)V
    .locals 3

    .line 5841
    sget-object v0, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->Underline:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    .line 5843
    new-instance v1, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    invoke-direct {v1}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;-><init>()V

    .line 5844
    invoke-virtual {v1, p1}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->setUnderline(Z)V

    .line 5846
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Lcom/metamoji/un/text/model/TextModel;->putStringAttributes(Lcom/metamoji/un/text/model/attr/StringAttributes;Lcom/metamoji/un/text/model/TextRange;Ljava/util/EnumSet;)V

    return-void
.end method

.method public changeAttrFontWeight(I)V
    .locals 3

    .line 5782
    sget-object v0, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->FontWeight:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    .line 5784
    new-instance v1, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    invoke-direct {v1}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;-><init>()V

    .line 5785
    invoke-virtual {v1, p1}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->setFontWeight(I)V

    .line 5787
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Lcom/metamoji/un/text/model/TextModel;->putStringAttributes(Lcom/metamoji/un/text/model/attr/StringAttributes;Lcom/metamoji/un/text/model/TextRange;Ljava/util/EnumSet;)V

    return-void
.end method

.method public changeAttrTextAndBackgroundColor(Ljava/lang/Integer;ZLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Z)V"
        }
    .end annotation

    .line 5659
    const-class v0, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    move v1, p2

    .line 5661
    new-instance p2, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    invoke-direct {p2}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p6, :cond_1

    if-eqz p7, :cond_0

    .line 5665
    new-instance p7, Lcom/metamoji/un/text/model/ColorComponent;

    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result p6

    invoke-direct {p7, p6}, Lcom/metamoji/un/text/model/ColorComponent;-><init>(I)V

    invoke-virtual {p2, p7}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->setBackgroundColor(Lcom/metamoji/un/text/model/ColorComponent;)V

    .line 5666
    invoke-virtual {p2, v2}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->setUseBackgroundColor(Z)V

    goto :goto_0

    .line 5668
    :cond_0
    invoke-virtual {p2, v3}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->setUseBackgroundColor(Z)V

    .line 5671
    :goto_0
    sget-object p6, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->BackgroundColor:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {v0, p6}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz p1, :cond_2

    .line 5675
    sget-object p6, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->Color:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {v0, p6}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 p6, 0x0

    if-eqz p1, :cond_8

    if-eqz v1, :cond_3

    goto/16 :goto_3

    .line 5686
    :cond_3
    sget-object p7, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;->LINE_COLOR_RGB:Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

    sget-object v1, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;->LINE_COLOR_A:Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

    invoke-static {p7, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p7

    if-eqz p3, :cond_6

    .line 5695
    const-string v1, "gradation"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x2

    if-eqz v1, :cond_4

    if-eqz p4, :cond_5

    .line 5696
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p3

    if-lt p3, v4, :cond_5

    .line 5697
    invoke-interface {p4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-static {p3, p4}, Lcom/metamoji/mazecclient/stroke/StrokeInk;->strokeInkGradation(II)Lcom/metamoji/mazecclient/stroke/IStrokeInk;

    move-result-object p3

    goto :goto_1

    .line 5699
    :cond_4
    const-string v1, "2colors"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 5700
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p3

    if-lt p3, v4, :cond_5

    .line 5701
    invoke-interface {p4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-static {p3, p4}, Lcom/metamoji/mazecclient/stroke/StrokeInk;->strokeInkCubic2Surface(II)Lcom/metamoji/mazecclient/stroke/IStrokeInk;

    move-result-object p3

    goto :goto_1

    :cond_5
    move-object p3, p6

    .line 5704
    :goto_1
    sget-object p4, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;->INK:Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

    invoke-virtual {p7, p4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    move-object p3, p6

    :goto_2
    if-eqz p5, :cond_7

    .line 5709
    new-instance p4, Lcom/metamoji/nt/share/NtPenStyle;

    invoke-direct {p4}, Lcom/metamoji/nt/share/NtPenStyle;-><init>()V

    .line 5710
    iput-object p6, p4, Lcom/metamoji/nt/share/NtPenStyle;->penId:Ljava/lang/String;

    .line 5711
    iput-object p5, p4, Lcom/metamoji/nt/share/NtPenStyle;->inkId:Ljava/lang/String;

    .line 5712
    invoke-static {p4}, Lcom/metamoji/mazecclient/stroke/StrokePenInfo;->strokePenInfoFromPenStyle(Lcom/metamoji/nt/share/NtPenStyle;)Lcom/metamoji/mazecclient/stroke/IStrokePenInfo;

    move-result-object p6

    :cond_7
    move-object p5, p6

    .line 5716
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p4

    const/high16 p6, 0x41200000    # 10.0f

    .line 5715
    invoke-static {p4, p6, p3}, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->standartStyle(IFLcom/metamoji/mazecclient/stroke/IStrokeInk;)Lcom/metamoji/mazecclient/stroke/IStrokeStyle;

    move-result-object p4

    .line 5719
    new-instance p3, Lcom/metamoji/un/text/model/ColorComponent;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p3, p1}, Lcom/metamoji/un/text/model/ColorComponent;-><init>(I)V

    invoke-virtual {p2, p3}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->setColor(Lcom/metamoji/un/text/model/ColorComponent;)V

    .line 5721
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object p1

    move-object p6, p7

    const/4 p7, 0x0

    move-object p3, v0

    invoke-virtual/range {p1 .. p7}, Lcom/metamoji/un/text/model/TextModel;->putTextAttributes(Lcom/metamoji/un/text/model/attr/StringAttributes;Ljava/util/EnumSet;Lcom/metamoji/mazecclient/stroke/IStrokeStyle;Lcom/metamoji/mazecclient/stroke/IStrokePenInfo;Ljava/util/EnumSet;Lcom/metamoji/un/text/model/TextRange;)V

    return-void

    :cond_8
    :goto_3
    move-object p3, v0

    .line 5681
    invoke-virtual {p2, v3}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->setUseColor(Z)V

    .line 5682
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object p1

    invoke-virtual {p1, p2, p6, p3}, Lcom/metamoji/un/text/model/TextModel;->putStringAttributes(Lcom/metamoji/un/text/model/attr/StringAttributes;Lcom/metamoji/un/text/model/TextRange;Ljava/util/EnumSet;)V

    return-void
.end method

.method public changeAttrTextColor(IZLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 5606
    sget-object v0, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->Color:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    .line 5608
    new-instance v2, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    invoke-direct {v2}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 5612
    invoke-virtual {v2, v0}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->setUseColor(Z)V

    .line 5613
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object p1

    invoke-virtual {p1, v2, v1, v3}, Lcom/metamoji/un/text/model/TextModel;->putStringAttributes(Lcom/metamoji/un/text/model/attr/StringAttributes;Lcom/metamoji/un/text/model/TextRange;Ljava/util/EnumSet;)V

    return-void

    .line 5617
    :cond_0
    sget-object p2, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;->LINE_COLOR_RGB:Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

    sget-object v4, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;->LINE_COLOR_A:Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

    invoke-static {p2, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v6

    if-eqz p3, :cond_3

    .line 5626
    const-string p2, "gradation"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eqz p2, :cond_1

    if-eqz p4, :cond_2

    .line 5627
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p2

    if-lt p2, v5, :cond_2

    .line 5628
    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p4, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-static {p2, p3}, Lcom/metamoji/mazecclient/stroke/StrokeInk;->strokeInkGradation(II)Lcom/metamoji/mazecclient/stroke/IStrokeInk;

    move-result-object p2

    goto :goto_0

    .line 5630
    :cond_1
    const-string p2, "2colors"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 5631
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p2

    if-lt p2, v5, :cond_2

    .line 5632
    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p4, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-static {p2, p3}, Lcom/metamoji/mazecclient/stroke/StrokeInk;->strokeInkCubic2Surface(II)Lcom/metamoji/mazecclient/stroke/IStrokeInk;

    move-result-object p2

    goto :goto_0

    :cond_2
    move-object p2, v1

    .line 5635
    :goto_0
    sget-object p3, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;->INK:Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

    invoke-virtual {v6, p3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object p2, v1

    :goto_1
    if-eqz p5, :cond_4

    .line 5640
    new-instance p3, Lcom/metamoji/nt/share/NtPenStyle;

    invoke-direct {p3}, Lcom/metamoji/nt/share/NtPenStyle;-><init>()V

    .line 5641
    iput-object v1, p3, Lcom/metamoji/nt/share/NtPenStyle;->penId:Ljava/lang/String;

    .line 5642
    iput-object p5, p3, Lcom/metamoji/nt/share/NtPenStyle;->inkId:Ljava/lang/String;

    .line 5643
    invoke-static {p3}, Lcom/metamoji/mazecclient/stroke/StrokePenInfo;->strokePenInfoFromPenStyle(Lcom/metamoji/nt/share/NtPenStyle;)Lcom/metamoji/mazecclient/stroke/IStrokePenInfo;

    move-result-object v1

    :cond_4
    move-object v5, v1

    const/high16 p3, 0x41200000    # 10.0f

    .line 5646
    invoke-static {p1, p3, p2}, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->standartStyle(IFLcom/metamoji/mazecclient/stroke/IStrokeInk;)Lcom/metamoji/mazecclient/stroke/IStrokeStyle;

    move-result-object v4

    .line 5650
    new-instance p2, Lcom/metamoji/un/text/model/ColorComponent;

    invoke-direct {p2, p1}, Lcom/metamoji/un/text/model/ColorComponent;-><init>(I)V

    invoke-virtual {v2, p2}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->setColor(Lcom/metamoji/un/text/model/ColorComponent;)V

    .line 5652
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v1

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/metamoji/un/text/model/TextModel;->putTextAttributes(Lcom/metamoji/un/text/model/attr/StringAttributes;Ljava/util/EnumSet;Lcom/metamoji/mazecclient/stroke/IStrokeStyle;Lcom/metamoji/mazecclient/stroke/IStrokePenInfo;Ljava/util/EnumSet;Lcom/metamoji/un/text/model/TextRange;)V

    return-void
.end method

.method public changeTextAlign(Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;)V
    .locals 1

    .line 6179
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/un/text/model/TextModel;->applyParagraphAlign(Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;)V

    .line 6182
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->setNeedsDisplay()V

    return-void
.end method

.method public changedTextModelModified(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 8779
    iput-boolean p1, p0, Lcom/metamoji/un/text/UnTextUnit;->_collaboModified:Z

    .line 8781
    invoke-static {}, Lcom/metamoji/un/text/UnTextUnitStateManager;->sharedInstance()Lcom/metamoji/un/text/UnTextUnitStateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/un/text/UnTextUnitStateManager;->setCollaboModifiedFlagOnIdle(Z)V

    :cond_0
    return-void
.end method

.method public changedUnitStyle(Lcom/metamoji/un/text/model/UnitStyles;)V
    .locals 1

    .line 10137
    sget-boolean v0, Lcom/metamoji/noteanytime/ModelInfo;->isTextVerticalWritingEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/metamoji/un/text/model/UnitStyles;->verticalWriting:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 10138
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->textSprite:Lcom/metamoji/un/text/sprite/TextSprite;

    iget-object p1, p1, Lcom/metamoji/un/text/model/UnitStyles;->verticalWriting:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/metamoji/un/text/sprite/TextSprite;->setVerticalWriting(Z)V

    .line 10140
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v0, Lcom/metamoji/un/text/UnTextUnit$41;

    invoke-direct {v0, p0}, Lcom/metamoji/un/text/UnTextUnit$41;-><init>(Lcom/metamoji/un/text/UnTextUnit;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmTaskManager;->runOnUIThreadAsync(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public checkSpellingAt(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/cm/IAction1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/text/model/TextPosition;",
            "Lcom/metamoji/cm/IAction1<",
            "Ljava/util/List<",
            "Lcom/metamoji/un/text/hotspot/HotSpotLocation;",
            ">;>;)V"
        }
    .end annotation

    .line 11485
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getStringWsArrayObject()Lcom/metamoji/un/text/model/StringWithStrokesArray;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/text/UnTextUnit$47;

    invoke-direct {v1, p0, p1, p2}, Lcom/metamoji/un/text/UnTextUnit$47;-><init>(Lcom/metamoji/un/text/UnTextUnit;Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/cm/IAction1;)V

    invoke-static {v0, p1, v1}, Lcom/metamoji/un/text/hotspot/HotSpotUtil;->spellCheck(Lcom/metamoji/un/text/model/StringWithStrokesArray;Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/cm/IAction1;)V

    return-void
.end method

.method public checkUnitMinSize(Lcom/metamoji/cm/SizeF;)V
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 8398
    iget-boolean v2, v1, Lcom/metamoji/un/text/UnTextUnit;->duringSetGeometricProps:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 8399
    iput-boolean v3, v1, Lcom/metamoji/un/text/UnTextUnit;->callCheckMinSizeAtSetGeometricProps:Z

    return-void

    :cond_0
    const/4 v11, 0x0

    .line 8411
    iput-object v11, v1, Lcom/metamoji/un/text/UnTextUnit;->undoDatasBindToDrawEditContext:Ljava/util/List;

    .line 8414
    new-instance v2, Lcom/metamoji/cm/SizeF;

    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnit;->getWidth()F

    move-result v4

    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnit;->getHeight()F

    move-result v5

    invoke-direct {v2, v4, v5}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    .line 8419
    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/un/text/model/TextModel;->getVerticalWriting()Z

    move-result v4

    .line 8420
    iget v5, v2, Lcom/metamoji/cm/SizeF;->height:F

    iget v6, v0, Lcom/metamoji/cm/SizeF;->height:F

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_3

    if-nez v4, :cond_1

    iget v5, v2, Lcom/metamoji/cm/SizeF;->width:F

    iget v6, v0, Lcom/metamoji/cm/SizeF;->width:F

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_3

    :cond_1
    if-eqz v4, :cond_2

    iget v5, v0, Lcom/metamoji/cm/SizeF;->width:F

    iget v6, v2, Lcom/metamoji/cm/SizeF;->width:F

    sub-float/2addr v5, v6

    float-to-double v5, v5

    const-wide v7, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpl-double v5, v5, v7

    if-lez v5, :cond_2

    goto :goto_0

    :cond_2
    return-void

    .line 8423
    :cond_3
    :goto_0
    new-instance v5, Lcom/metamoji/cm/SizeF;

    iget v6, v2, Lcom/metamoji/cm/SizeF;->width:F

    iget v7, v0, Lcom/metamoji/cm/SizeF;->width:F

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iget v7, v2, Lcom/metamoji/cm/SizeF;->height:F

    iget v0, v0, Lcom/metamoji/cm/SizeF;->height:F

    .line 8424
    invoke-static {v7, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-direct {v5, v6, v0}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    .line 8425
    new-instance v0, Lcom/metamoji/df/controller/GeometricProps;

    invoke-direct {v0}, Lcom/metamoji/df/controller/GeometricProps;-><init>()V

    .line 8426
    iput-object v5, v0, Lcom/metamoji/df/controller/GeometricProps;->size:Lcom/metamoji/cm/SizeF;

    .line 8432
    sget-object v6, Lcom/metamoji/un/text/UnTextUnit;->duringChangeUnitSizeByRemakeLineTable:Ljava/lang/ThreadLocal;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 8434
    :try_start_0
    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v3

    .line 8435
    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnit;->getRotation()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    if-eqz v4, :cond_6

    .line 8438
    new-instance v10, Landroid/graphics/PointF;

    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnit;->getX()F

    move-result v13

    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnit;->getY()F

    move-result v14

    invoke-direct {v10, v13, v14}, Landroid/graphics/PointF;-><init>(FF)V

    cmpl-double v8, v8, v6

    if-nez v8, :cond_4

    .line 8441
    new-instance v6, Landroid/graphics/PointF;

    iget v7, v10, Landroid/graphics/PointF;->x:F

    iget v8, v2, Lcom/metamoji/cm/SizeF;->width:F

    add-float/2addr v7, v8

    iget v8, v10, Landroid/graphics/PointF;->y:F

    invoke-direct {v6, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    .line 8442
    new-instance v7, Landroid/graphics/PointF;

    iget v8, v10, Landroid/graphics/PointF;->x:F

    iget v9, v5, Lcom/metamoji/cm/SizeF;->width:F

    add-float/2addr v8, v9

    iget v9, v10, Landroid/graphics/PointF;->y:F

    invoke-direct {v7, v8, v9}, Landroid/graphics/PointF;-><init>(FF)V

    move-object/from16 v18, v3

    move/from16 v17, v4

    goto/16 :goto_1

    .line 8445
    :cond_4
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    .line 8446
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    .line 8448
    new-instance v13, Landroid/graphics/PointF;

    iget v14, v2, Lcom/metamoji/cm/SizeF;->width:F

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    move/from16 p1, v15

    iget v15, v2, Lcom/metamoji/cm/SizeF;->height:F

    neg-float v15, v15

    div-float v15, v15, p1

    invoke-direct {v13, v14, v15}, Landroid/graphics/PointF;-><init>(FF)V

    .line 8449
    new-instance v14, Landroid/graphics/PointF;

    iget v15, v13, Landroid/graphics/PointF;->x:F

    float-to-double v11, v15

    mul-double/2addr v11, v8

    iget v15, v13, Landroid/graphics/PointF;->y:F

    move-object/from16 v18, v3

    move/from16 v17, v4

    float-to-double v3, v15

    mul-double/2addr v3, v6

    sub-double/2addr v11, v3

    double-to-float v3, v11

    iget v4, v13, Landroid/graphics/PointF;->x:F

    float-to-double v11, v4

    mul-double/2addr v11, v6

    iget v4, v13, Landroid/graphics/PointF;->y:F

    move-wide/from16 v19, v6

    float-to-double v6, v4

    mul-double/2addr v6, v8

    add-double/2addr v11, v6

    double-to-float v4, v11

    invoke-direct {v14, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 8451
    iget v3, v14, Landroid/graphics/PointF;->x:F

    iget v4, v10, Landroid/graphics/PointF;->x:F

    iget v6, v2, Lcom/metamoji/cm/SizeF;->width:F

    div-float v6, v6, p1

    add-float/2addr v4, v6

    add-float/2addr v3, v4

    iput v3, v14, Landroid/graphics/PointF;->x:F

    .line 8452
    iget v3, v14, Landroid/graphics/PointF;->y:F

    iget v4, v10, Landroid/graphics/PointF;->y:F

    iget v6, v2, Lcom/metamoji/cm/SizeF;->height:F

    div-float v6, v6, p1

    add-float/2addr v4, v6

    add-float/2addr v3, v4

    iput v3, v14, Landroid/graphics/PointF;->y:F

    .line 8454
    new-instance v3, Landroid/graphics/PointF;

    iget v4, v5, Lcom/metamoji/cm/SizeF;->width:F

    div-float v4, v4, p1

    iget v6, v5, Lcom/metamoji/cm/SizeF;->height:F

    neg-float v6, v6

    div-float v6, v6, p1

    invoke-direct {v3, v4, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 8455
    new-instance v7, Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    float-to-double v11, v4

    mul-double/2addr v11, v8

    iget v4, v3, Landroid/graphics/PointF;->y:F

    move-wide/from16 v21, v8

    float-to-double v8, v4

    mul-double v8, v8, v19

    sub-double/2addr v11, v8

    double-to-float v4, v11

    iget v6, v3, Landroid/graphics/PointF;->x:F

    float-to-double v8, v6

    mul-double v8, v8, v19

    iget v3, v3, Landroid/graphics/PointF;->y:F

    float-to-double v11, v3

    mul-double v11, v11, v21

    add-double/2addr v8, v11

    double-to-float v3, v8

    invoke-direct {v7, v4, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 8457
    iget v3, v7, Landroid/graphics/PointF;->x:F

    iget v4, v10, Landroid/graphics/PointF;->x:F

    iget v6, v5, Lcom/metamoji/cm/SizeF;->width:F

    div-float v6, v6, p1

    add-float/2addr v4, v6

    add-float/2addr v3, v4

    iput v3, v7, Landroid/graphics/PointF;->x:F

    .line 8458
    iget v3, v7, Landroid/graphics/PointF;->y:F

    iget v4, v10, Landroid/graphics/PointF;->y:F

    iget v6, v5, Lcom/metamoji/cm/SizeF;->height:F

    div-float v6, v6, p1

    add-float/2addr v4, v6

    add-float/2addr v3, v4

    iput v3, v7, Landroid/graphics/PointF;->y:F

    move-object v6, v14

    .line 8461
    :goto_1
    iget v3, v7, Landroid/graphics/PointF;->x:F

    iget v4, v6, Landroid/graphics/PointF;->x:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_5

    iget v3, v7, Landroid/graphics/PointF;->y:F

    iget v4, v6, Landroid/graphics/PointF;->y:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_7

    .line 8462
    :cond_5
    new-instance v3, Landroid/graphics/PointF;

    iget v4, v10, Landroid/graphics/PointF;->x:F

    iget v8, v7, Landroid/graphics/PointF;->x:F

    iget v9, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v8, v9

    sub-float/2addr v4, v8

    iget v8, v10, Landroid/graphics/PointF;->y:F

    iget v7, v7, Landroid/graphics/PointF;->y:F

    iget v6, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v6

    sub-float/2addr v8, v7

    invoke-direct {v3, v4, v8}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v3, v0, Lcom/metamoji/df/controller/GeometricProps;->origin:Landroid/graphics/PointF;

    goto :goto_2

    :cond_6
    move-object/from16 v18, v3

    move/from16 v17, v4

    cmpl-double v3, v8, v6

    if-eqz v3, :cond_7

    .line 8468
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    .line 8469
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    .line 8483
    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnit;->getX()F

    move-result v8

    float-to-double v8, v8

    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnit;->getWidth()F

    move-result v10

    neg-float v10, v10

    iget v11, v5, Lcom/metamoji/cm/SizeF;->width:F

    add-float/2addr v10, v11

    float-to-double v10, v10

    mul-double/2addr v10, v3

    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnit;->getHeight()F

    move-result v12

    iget v13, v5, Lcom/metamoji/cm/SizeF;->height:F

    sub-float/2addr v12, v13

    float-to-double v12, v12

    mul-double/2addr v12, v6

    add-double/2addr v10, v12

    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnit;->getWidth()F

    move-result v12

    float-to-double v12, v12

    add-double/2addr v10, v12

    iget v12, v5, Lcom/metamoji/cm/SizeF;->width:F

    float-to-double v12, v12

    sub-double/2addr v10, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    add-double/2addr v8, v10

    .line 8490
    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnit;->getY()F

    move-result v10

    float-to-double v10, v10

    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnit;->getWidth()F

    move-result v14

    neg-float v14, v14

    iget v15, v5, Lcom/metamoji/cm/SizeF;->width:F

    add-float/2addr v14, v15

    float-to-double v14, v14

    mul-double/2addr v6, v14

    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnit;->getHeight()F

    move-result v14

    neg-float v14, v14

    iget v15, v5, Lcom/metamoji/cm/SizeF;->height:F

    add-float/2addr v14, v15

    float-to-double v14, v14

    mul-double/2addr v3, v14

    add-double/2addr v6, v3

    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnit;->getHeight()F

    move-result v3

    float-to-double v3, v3

    add-double/2addr v6, v3

    iget v3, v5, Lcom/metamoji/cm/SizeF;->height:F

    float-to-double v3, v3

    sub-double/2addr v6, v3

    div-double/2addr v6, v12

    add-double/2addr v10, v6

    .line 8492
    new-instance v3, Landroid/graphics/PointF;

    double-to-float v4, v8

    double-to-float v6, v10

    invoke-direct {v3, v4, v6}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v3, v0, Lcom/metamoji/df/controller/GeometricProps;->origin:Landroid/graphics/PointF;

    :cond_7
    :goto_2
    if-eqz v17, :cond_8

    .line 8501
    invoke-virtual/range {v18 .. v18}, Lcom/metamoji/un/text/model/TextModel;->getLineTable()Lcom/metamoji/un/text/model/linetable/LineTable;

    move-result-object v3

    const/4 v4, 0x0

    .line 8502
    invoke-virtual {v3, v4}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineInfoAtIndex(I)Lcom/metamoji/un/text/model/linetable/LineInfo;

    move-result-object v6

    .line 8503
    iget-object v4, v6, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v6, v6, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v6, v6, Lcom/metamoji/cm/SizeF;->width:F

    add-float/2addr v4, v6

    .line 8504
    invoke-virtual/range {v18 .. v18}, Lcom/metamoji/un/text/model/TextModel;->getPaddingRect()Lcom/metamoji/cm/EdgeInsets;

    move-result-object v6

    .line 8505
    invoke-virtual/range {v18 .. v18}, Lcom/metamoji/un/text/model/TextModel;->getDefaultStringAttributes()Lcom/metamoji/un/text/model/attr/StringAttributes;

    move-result-object v7

    invoke-virtual {v7}, Lcom/metamoji/un/text/model/attr/StringAttributes;->getFontSize()F

    move-result v7

    .line 8506
    iget v6, v6, Lcom/metamoji/cm/EdgeInsets;->right:F

    mul-float/2addr v6, v7

    add-float/2addr v4, v6

    .line 8507
    iget v6, v5, Lcom/metamoji/cm/SizeF;->width:F

    iget v7, v2, Lcom/metamoji/cm/SizeF;->width:F

    sub-float/2addr v6, v7

    add-float/2addr v4, v6

    .line 8508
    iget v6, v5, Lcom/metamoji/cm/SizeF;->width:F

    cmpg-float v4, v4, v6

    if-gtz v4, :cond_8

    .line 8509
    iget v4, v5, Lcom/metamoji/cm/SizeF;->width:F

    iget v2, v2, Lcom/metamoji/cm/SizeF;->width:F

    sub-float/2addr v4, v2

    invoke-virtual {v3, v4}, Lcom/metamoji/un/text/model/linetable/LineTable;->translateX(F)V

    .line 8514
    :cond_8
    iget-object v9, v1, Lcom/metamoji/un/text/UnTextUnit;->preResizeUndoData:Ljava/util/Map;

    iget-boolean v10, v1, Lcom/metamoji/un/text/UnTextUnit;->inhibitAddSelfResizeUndo:Z

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object v2, v0

    invoke-direct/range {v1 .. v10}, Lcom/metamoji/un/text/UnTextUnit;->setGeometricPropsSelf(Lcom/metamoji/df/controller/GeometricProps;Lcom/metamoji/un/text/model/undo/ITextUndoManager;ZZZLjava/util/List;ZLjava/util/Map;Z)Z

    const/4 v0, 0x0

    .line 8516
    iput-object v0, v1, Lcom/metamoji/un/text/UnTextUnit;->preResizeUndoData:Ljava/util/Map;

    const/4 v4, 0x0

    .line 8517
    iput-boolean v4, v1, Lcom/metamoji/un/text/UnTextUnit;->inhibitAddSelfResizeUndo:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8520
    sget-object v0, Lcom/metamoji/un/text/UnTextUnit;->duringChangeUnitSizeByRemakeLineTable:Ljava/lang/ThreadLocal;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    sget-object v2, Lcom/metamoji/un/text/UnTextUnit;->duringChangeUnitSizeByRemakeLineTable:Ljava/lang/ThreadLocal;

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 8521
    throw v0
.end method

.method public checkUnitMinSizeOnInit(Lcom/metamoji/cm/SizeF;)V
    .locals 21

    move-object/from16 v0, p1

    .line 8528
    new-instance v1, Lcom/metamoji/cm/SizeF;

    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/un/text/UnTextUnit;->getWidth()F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/un/text/UnTextUnit;->getHeight()F

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    .line 8529
    iget v2, v1, Lcom/metamoji/cm/SizeF;->height:F

    iget v3, v0, Lcom/metamoji/cm/SizeF;->height:F

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_1

    iget v2, v1, Lcom/metamoji/cm/SizeF;->width:F

    iget v3, v0, Lcom/metamoji/cm/SizeF;->width:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 8531
    :cond_1
    :goto_0
    new-instance v2, Lcom/metamoji/cm/SizeF;

    iget v3, v1, Lcom/metamoji/cm/SizeF;->width:F

    iget v4, v0, Lcom/metamoji/cm/SizeF;->width:F

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget v4, v1, Lcom/metamoji/cm/SizeF;->height:F

    iget v0, v0, Lcom/metamoji/cm/SizeF;->height:F

    .line 8532
    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-direct {v2, v3, v0}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    .line 8533
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    .line 8534
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getVerticalWriting()Z

    move-result v3

    .line 8535
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/un/text/UnTextUnit;->getRotation()D

    move-result-wide v4

    .line 8536
    const-string/jumbo v6, "y"

    const-string/jumbo v7, "x"

    const-wide/16 v8, 0x0

    if-eqz v3, :cond_4

    .line 8538
    new-instance v10, Landroid/graphics/PointF;

    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/un/text/UnTextUnit;->getX()F

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/un/text/UnTextUnit;->getY()F

    move-result v12

    invoke-direct {v10, v11, v12}, Landroid/graphics/PointF;-><init>(FF)V

    cmpl-double v8, v8, v4

    if-nez v8, :cond_2

    .line 8541
    new-instance v4, Landroid/graphics/PointF;

    iget v5, v10, Landroid/graphics/PointF;->x:F

    iget v8, v1, Lcom/metamoji/cm/SizeF;->width:F

    add-float/2addr v5, v8

    iget v8, v10, Landroid/graphics/PointF;->y:F

    invoke-direct {v4, v5, v8}, Landroid/graphics/PointF;-><init>(FF)V

    .line 8542
    new-instance v5, Landroid/graphics/PointF;

    iget v8, v10, Landroid/graphics/PointF;->x:F

    iget v9, v2, Lcom/metamoji/cm/SizeF;->width:F

    add-float/2addr v8, v9

    iget v9, v10, Landroid/graphics/PointF;->y:F

    invoke-direct {v5, v8, v9}, Landroid/graphics/PointF;-><init>(FF)V

    move/from16 v16, v3

    goto/16 :goto_1

    .line 8545
    :cond_2
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    .line 8546
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    .line 8548
    new-instance v11, Landroid/graphics/PointF;

    iget v12, v1, Lcom/metamoji/cm/SizeF;->width:F

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    iget v14, v1, Lcom/metamoji/cm/SizeF;->height:F

    neg-float v14, v14

    div-float/2addr v14, v13

    invoke-direct {v11, v12, v14}, Landroid/graphics/PointF;-><init>(FF)V

    .line 8549
    new-instance v12, Landroid/graphics/PointF;

    iget v14, v11, Landroid/graphics/PointF;->x:F

    float-to-double v14, v14

    mul-double/2addr v14, v8

    move/from16 p1, v13

    iget v13, v11, Landroid/graphics/PointF;->y:F

    move/from16 v16, v3

    move-wide/from16 v17, v4

    float-to-double v3, v13

    mul-double v3, v3, v17

    sub-double/2addr v14, v3

    double-to-float v3, v14

    iget v4, v11, Landroid/graphics/PointF;->x:F

    float-to-double v4, v4

    mul-double v4, v4, v17

    iget v11, v11, Landroid/graphics/PointF;->y:F

    float-to-double v13, v11

    mul-double/2addr v13, v8

    add-double/2addr v4, v13

    double-to-float v4, v4

    invoke-direct {v12, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 8551
    iget v3, v12, Landroid/graphics/PointF;->x:F

    iget v4, v10, Landroid/graphics/PointF;->x:F

    iget v5, v1, Lcom/metamoji/cm/SizeF;->width:F

    div-float v5, v5, p1

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v12, Landroid/graphics/PointF;->x:F

    .line 8552
    iget v3, v12, Landroid/graphics/PointF;->y:F

    iget v4, v10, Landroid/graphics/PointF;->y:F

    iget v5, v1, Lcom/metamoji/cm/SizeF;->height:F

    div-float v5, v5, p1

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v12, Landroid/graphics/PointF;->y:F

    .line 8554
    new-instance v3, Landroid/graphics/PointF;

    iget v4, v2, Lcom/metamoji/cm/SizeF;->width:F

    div-float v4, v4, p1

    iget v5, v2, Lcom/metamoji/cm/SizeF;->height:F

    neg-float v5, v5

    div-float v5, v5, p1

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 8555
    new-instance v5, Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    float-to-double v13, v4

    mul-double/2addr v13, v8

    iget v4, v3, Landroid/graphics/PointF;->y:F

    move-wide/from16 v19, v8

    float-to-double v8, v4

    mul-double v8, v8, v17

    sub-double/2addr v13, v8

    double-to-float v4, v13

    iget v8, v3, Landroid/graphics/PointF;->x:F

    float-to-double v8, v8

    mul-double v8, v8, v17

    iget v3, v3, Landroid/graphics/PointF;->y:F

    float-to-double v13, v3

    mul-double v13, v13, v19

    add-double/2addr v8, v13

    double-to-float v3, v8

    invoke-direct {v5, v4, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 8557
    iget v3, v5, Landroid/graphics/PointF;->x:F

    iget v4, v10, Landroid/graphics/PointF;->x:F

    iget v8, v2, Lcom/metamoji/cm/SizeF;->width:F

    div-float v8, v8, p1

    add-float/2addr v4, v8

    add-float/2addr v3, v4

    iput v3, v5, Landroid/graphics/PointF;->x:F

    .line 8558
    iget v3, v5, Landroid/graphics/PointF;->y:F

    iget v4, v10, Landroid/graphics/PointF;->y:F

    iget v8, v2, Lcom/metamoji/cm/SizeF;->height:F

    div-float v8, v8, p1

    add-float/2addr v4, v8

    add-float/2addr v3, v4

    iput v3, v5, Landroid/graphics/PointF;->y:F

    move-object v4, v12

    .line 8561
    :goto_1
    iget v3, v5, Landroid/graphics/PointF;->x:F

    iget v8, v4, Landroid/graphics/PointF;->x:F

    cmpl-float v3, v3, v8

    if-nez v3, :cond_3

    iget v3, v5, Landroid/graphics/PointF;->y:F

    iget v8, v4, Landroid/graphics/PointF;->y:F

    cmpl-float v3, v3, v8

    if-eqz v3, :cond_5

    .line 8562
    :cond_3
    iget v3, v10, Landroid/graphics/PointF;->x:F

    iget v8, v5, Landroid/graphics/PointF;->x:F

    iget v9, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v8, v9

    sub-float/2addr v3, v8

    float-to-double v8, v3

    invoke-virtual {v0, v7, v8, v9}, Lcom/metamoji/un/text/model/TextModel;->setProperty(Ljava/lang/String;D)V

    .line 8563
    iget v3, v10, Landroid/graphics/PointF;->y:F

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v4

    sub-float/2addr v3, v5

    float-to-double v3, v3

    invoke-virtual {v0, v6, v3, v4}, Lcom/metamoji/un/text/model/TextModel;->setProperty(Ljava/lang/String;D)V

    goto :goto_2

    :cond_4
    move/from16 v16, v3

    cmpl-double v3, v8, v4

    if-eqz v3, :cond_5

    .line 8569
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    .line 8570
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    .line 8573
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/un/text/UnTextUnit;->getX()F

    move-result v5

    float-to-double v10, v5

    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/un/text/UnTextUnit;->getWidth()F

    move-result v5

    neg-float v5, v5

    iget v12, v2, Lcom/metamoji/cm/SizeF;->width:F

    add-float/2addr v5, v12

    float-to-double v12, v5

    mul-double/2addr v12, v8

    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/un/text/UnTextUnit;->getHeight()F

    move-result v5

    iget v14, v2, Lcom/metamoji/cm/SizeF;->height:F

    sub-float/2addr v5, v14

    float-to-double v14, v5

    mul-double/2addr v14, v3

    add-double/2addr v12, v14

    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/un/text/UnTextUnit;->getWidth()F

    move-result v5

    float-to-double v14, v5

    add-double/2addr v12, v14

    iget v5, v2, Lcom/metamoji/cm/SizeF;->width:F

    float-to-double v14, v5

    sub-double/2addr v12, v14

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double/2addr v12, v14

    add-double/2addr v10, v12

    .line 8574
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/un/text/UnTextUnit;->getY()F

    move-result v5

    float-to-double v12, v5

    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/un/text/UnTextUnit;->getWidth()F

    move-result v5

    neg-float v5, v5

    move-wide/from16 v17, v14

    iget v14, v2, Lcom/metamoji/cm/SizeF;->width:F

    add-float/2addr v5, v14

    float-to-double v14, v5

    mul-double/2addr v3, v14

    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/un/text/UnTextUnit;->getHeight()F

    move-result v5

    neg-float v5, v5

    iget v14, v2, Lcom/metamoji/cm/SizeF;->height:F

    add-float/2addr v5, v14

    float-to-double v14, v5

    mul-double/2addr v8, v14

    add-double/2addr v3, v8

    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/un/text/UnTextUnit;->getHeight()F

    move-result v5

    float-to-double v8, v5

    add-double/2addr v3, v8

    iget v5, v2, Lcom/metamoji/cm/SizeF;->height:F

    float-to-double v8, v5

    sub-double/2addr v3, v8

    div-double v3, v3, v17

    add-double/2addr v12, v3

    .line 8576
    invoke-virtual {v0, v7, v10, v11}, Lcom/metamoji/un/text/model/TextModel;->setProperty(Ljava/lang/String;D)V

    .line 8577
    invoke-virtual {v0, v6, v12, v13}, Lcom/metamoji/un/text/model/TextModel;->setProperty(Ljava/lang/String;D)V

    .line 8580
    :cond_5
    :goto_2
    iget v3, v2, Lcom/metamoji/cm/SizeF;->width:F

    float-to-double v3, v3

    const-string/jumbo v5, "width"

    invoke-virtual {v0, v5, v3, v4}, Lcom/metamoji/un/text/model/TextModel;->setProperty(Ljava/lang/String;D)V

    .line 8581
    iget v3, v2, Lcom/metamoji/cm/SizeF;->height:F

    float-to-double v3, v3

    const-string v5, "height"

    invoke-virtual {v0, v5, v3, v4}, Lcom/metamoji/un/text/model/TextModel;->setProperty(Ljava/lang/String;D)V

    if-eqz v16, :cond_6

    .line 8586
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getLineTable()Lcom/metamoji/un/text/model/linetable/LineTable;

    move-result-object v0

    .line 8587
    iget v2, v2, Lcom/metamoji/cm/SizeF;->width:F

    iget v1, v1, Lcom/metamoji/cm/SizeF;->width:F

    sub-float/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/metamoji/un/text/model/linetable/LineTable;->translateX(F)V

    .line 8590
    :cond_6
    new-instance v0, Lcom/metamoji/df/controller/GeometricProps;

    invoke-direct {v0}, Lcom/metamoji/df/controller/GeometricProps;-><init>()V

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lcom/metamoji/un/text/UnTextUnit;->setSpriteGeometry(Lcom/metamoji/df/controller/GeometricProps;)V

    .line 8591
    invoke-direct {v1}, Lcom/metamoji/un/text/UnTextUnit;->updateMaxMaxWidthHeight()V

    return-void
.end method

.method public checkVisibleCursor()V
    .locals 3

    .line 4251
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->textSprite:Lcom/metamoji/un/text/sprite/TextSprite;

    invoke-virtual {v0}, Lcom/metamoji/un/text/sprite/TextSprite;->isRedererCursor()Z

    move-result v0

    .line 4256
    iget-boolean v1, p0, Lcom/metamoji/un/text/UnTextUnit;->editing:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/metamoji/df/controller/ControllerContext$MediaType;->MEDIATYPE_NONE:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    iget-object v2, p0, Lcom/metamoji/un/text/UnTextUnit;->mediaType:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/metamoji/nt/NtDocument$EditMode;->EDITMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    iget-object v2, p0, Lcom/metamoji/un/text/UnTextUnit;->editMode:Lcom/metamoji/nt/NtDocument$EditMode;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eq v0, v1, :cond_1

    .line 4261
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->textSprite:Lcom/metamoji/un/text/sprite/TextSprite;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/sprite/TextSprite;->setRendererCursor(Z)V

    .line 4262
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->setNeedsDisplay()V

    :cond_1
    return-void
.end method

.method public clearContextMenu()V
    .locals 1

    .line 4674
    iget-boolean v0, p0, Lcom/metamoji/un/text/UnTextUnit;->_visibleContextMenu:Z

    if-eqz v0, :cond_0

    .line 4675
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->cancelAllMenus()V

    const/4 v0, 0x0

    .line 4676
    iput-boolean v0, p0, Lcom/metamoji/un/text/UnTextUnit;->_visibleContextMenu:Z

    :cond_0
    return-void
.end method

.method public collectAllParagraphInfos(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/CtTaggableObject;",
            ">;Z)V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 7507
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/un/text/model/TextModel;->getLineTable()Lcom/metamoji/un/text/model/linetable/LineTable;

    move-result-object p2

    iget-boolean p2, p2, Lcom/metamoji/un/text/model/linetable/LineTable;->needsReconstruct:Z

    if-eqz p2, :cond_1

    .line 7508
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/un/text/model/TextModel;->reconstructLineTable()V

    .line 7510
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/un/text/model/TextModel;->getParagraphTable()Lcom/metamoji/un/text/model/paragtable/ParagraphTable;

    move-result-object p2

    if-nez p2, :cond_2

    goto :goto_0

    .line 7513
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/un/text/model/TextModel;->isContentEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    :goto_0
    return-void

    .line 7516
    :cond_3
    new-instance p2, Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->beginningOfDocument()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextModel;->endOfDocument()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lcom/metamoji/un/text/model/TextRange;-><init>(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/TextPosition;)V

    const/4 v0, 0x0

    .line 7517
    invoke-virtual {p2, v0}, Lcom/metamoji/un/text/model/TextRange;->setEmpty(Z)V

    const/4 v0, 0x1

    .line 7518
    invoke-virtual {p2, v0}, Lcom/metamoji/un/text/model/TextRange;->setSelectedAll(Z)V

    .line 7520
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/metamoji/un/text/model/TextModel;->selectedParagraphInfos(Lcom/metamoji/un/text/model/TextRange;)Ljava/util/List;

    move-result-object p2

    .line 7521
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public collectSelectedAuthorInfos(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/nt/NtAuthorInfo;",
            ">;)V"
        }
    .end annotation

    .line 12165
    iget-boolean v0, p0, Lcom/metamoji/un/text/UnTextUnit;->editing:Z

    if-eqz v0, :cond_4

    .line 12166
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v0

    .line 12167
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextModel;->getParagraphTable()Lcom/metamoji/un/text/model/paragtable/ParagraphTable;

    move-result-object v1

    .line 12168
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 12170
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/metamoji/un/text/model/paragtable/ParagraphTable;->getParagraphIndexFromTextPosition(Lcom/metamoji/un/text/model/TextPosition;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/metamoji/un/text/model/paragtable/ParagraphTable;->paragraphInfoAt(I)Lcom/metamoji/un/text/model/paragtable/ParagraphInfo;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 12171
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/paragtable/ParagraphInfo;->getParagraphStyle()Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_4

    .line 12172
    invoke-virtual {v3}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->getAuthorInfo()Lcom/metamoji/nt/NtAuthorInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 12173
    invoke-virtual {v3}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->getAuthorInfo()Lcom/metamoji/nt/NtAuthorInfo;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 12177
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/metamoji/un/text/model/paragtable/ParagraphTable;->getParagraphIndexFromTextPosition(Lcom/metamoji/un/text/model/TextPosition;)I

    move-result v2

    .line 12178
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/metamoji/un/text/model/paragtable/ParagraphTable;->getParagraphIndexFromTextPosition(Lcom/metamoji/un/text/model/TextPosition;)I

    move-result v0

    :goto_1
    if-gt v2, v0, :cond_4

    .line 12180
    invoke-virtual {v1, v2}, Lcom/metamoji/un/text/model/paragtable/ParagraphTable;->paragraphInfoAt(I)Lcom/metamoji/un/text/model/paragtable/ParagraphInfo;

    move-result-object v4

    if-nez v4, :cond_2

    move-object v4, v3

    goto :goto_2

    .line 12181
    :cond_2
    invoke-virtual {v4}, Lcom/metamoji/un/text/model/paragtable/ParagraphInfo;->getParagraphStyle()Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;

    move-result-object v4

    :goto_2
    if-eqz v4, :cond_3

    .line 12182
    invoke-virtual {v4}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->getAuthorInfo()Lcom/metamoji/nt/NtAuthorInfo;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 12183
    invoke-virtual {v4}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->getAuthorInfo()Lcom/metamoji/nt/NtAuthorInfo;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public commandBulletedListLevelDemote()V
    .locals 1

    .line 7581
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->demoteParagraphListLevel()V

    return-void
.end method

.method public commandBulletedListLevelPromote()V
    .locals 1

    .line 7591
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->promoteParagraphListLevel()V

    return-void
.end method

.method public commandBulletedListRemove()V
    .locals 4

    .line 7598
    new-instance v0, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    invoke-direct {v0}, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;-><init>()V

    .line 7599
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v1

    sget-object v2, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;->ListKind:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;

    sget-object v3, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;->BulletedListChar:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;

    invoke-static {v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/metamoji/un/text/model/TextModel;->putParagraphStyle(Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;Ljava/util/EnumSet;Lcom/metamoji/cm/IAction1;)V

    return-void
.end method

.method public commandClearSelect()V
    .locals 2

    .line 5343
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5344
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v0

    .line 5345
    new-instance v1, Lcom/metamoji/un/text/model/TextRange;

    invoke-direct {v1, v0}, Lcom/metamoji/un/text/model/TextRange;-><init>(Lcom/metamoji/un/text/model/TextPosition;)V

    .line 5346
    invoke-virtual {p0, v1}, Lcom/metamoji/un/text/UnTextUnit;->setSelectedTextRange(Lcom/metamoji/un/text/model/TextRange;)V

    :cond_0
    return-void
.end method

.method commandDisplayQRCode()V
    .locals 3

    .line 6333
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->isStrokeReeditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6335
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->leaveStrokeReeditModeLaterIfNeeded()V

    .line 6337
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->commandClearSelect()V

    .line 6342
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6344
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getStringWsArrayObject()Lcom/metamoji/un/text/model/StringWithStrokesArray;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextModel;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->substringWithRange(Lcom/metamoji/un/text/model/TextRange;Z)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6346
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 6347
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6348
    invoke-static {v0}, Lcom/metamoji/forSchool/qrcode/ScQRCodeUtils;->showQRCode(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public commandInsertBulletedList()V
    .locals 3

    .line 7529
    new-instance v0, Lcom/metamoji/ui/dialog/SelectBulletedListChar;

    invoke-direct {v0}, Lcom/metamoji/ui/dialog/SelectBulletedListChar;-><init>()V

    .line 7530
    new-instance v1, Lcom/metamoji/un/text/UnTextUnit$35;

    invoke-direct {v1, p0, v0}, Lcom/metamoji/un/text/UnTextUnit$35;-><init>(Lcom/metamoji/un/text/UnTextUnit;Lcom/metamoji/ui/dialog/SelectBulletedListChar;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/dialog/SelectBulletedListChar;->setOnClosedListener(Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V

    .line 7547
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v1

    invoke-interface {v1}, Lcom/metamoji/nt/INtEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 7548
    const-string v2, "SelectBulletedListChar"

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/ui/dialog/SelectBulletedListChar;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public commandInsertBulletedListNumbered()V
    .locals 3

    .line 7553
    new-instance v0, Lcom/metamoji/ui/dialog/SelectBulletedListNumberedKind;

    invoke-direct {v0}, Lcom/metamoji/ui/dialog/SelectBulletedListNumberedKind;-><init>()V

    .line 7554
    new-instance v1, Lcom/metamoji/un/text/UnTextUnit$36;

    invoke-direct {v1, p0, v0}, Lcom/metamoji/un/text/UnTextUnit$36;-><init>(Lcom/metamoji/un/text/UnTextUnit;Lcom/metamoji/ui/dialog/SelectBulletedListNumberedKind;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/dialog/SelectBulletedListNumberedKind;->setOnClosedListener(Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V

    .line 7572
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v1

    invoke-interface {v1}, Lcom/metamoji/nt/INtEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 7573
    const-string v2, "SelectBulletedListNumberedKind"

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/ui/dialog/SelectBulletedListNumberedKind;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public commandInsertLineSeparator()V
    .locals 2

    const/4 v0, 0x0

    .line 5916
    sget-object v1, Lcom/metamoji/un/text/model/TextModel;->UNICODE_LINE_SEPARATOR_STRING:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/un/text/UnTextUnit;->insertStrokes(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public commandTextUnitStyle()V
    .locals 3

    .line 5932
    new-instance v0, Lcom/metamoji/ui/dialog/TextUnitStyle;

    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextModel;->getUnitStyles()Lcom/metamoji/un/text/model/UnitStyles;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/metamoji/ui/dialog/TextUnitStyle;-><init>(Lcom/metamoji/un/text/model/UnitStyles;)V

    .line 5933
    new-instance v1, Lcom/metamoji/un/text/UnTextUnit$28;

    invoke-direct {v1, p0, v0}, Lcom/metamoji/un/text/UnTextUnit$28;-><init>(Lcom/metamoji/un/text/UnTextUnit;Lcom/metamoji/ui/dialog/TextUnitStyle;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/dialog/TextUnitStyle;->setOnClosedListener(Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V

    .line 5943
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v1

    invoke-interface {v1}, Lcom/metamoji/nt/INtEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 5944
    const-string v2, "TextUnitStyle"

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/ui/dialog/TextUnitStyle;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public commandTextUnitStyleToSystem()V
    .locals 8

    .line 5976
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5978
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5980
    const-string v2, "MMJNtDocumentSettings"

    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtDocument;->getDocumentSettingsForType(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5981
    instance-of v2, v0, Lcom/metamoji/nt/NtDocumentSettings;

    if-eqz v2, :cond_0

    .line 5982
    check-cast v0, Lcom/metamoji/nt/NtDocumentSettings;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 5988
    invoke-static {}, Lcom/metamoji/nt/NtSystemSettings;->getInstance()Lcom/metamoji/nt/NtSystemSettings;

    move-result-object v0

    const-string v2, "MMJNtTextSettings"

    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtSystemSettings;->getSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5989
    instance-of v2, v0, Lcom/metamoji/nt/NtTextUnitSettings;

    if-eqz v2, :cond_1

    .line 5990
    move-object v1, v0

    check-cast v1, Lcom/metamoji/nt/NtTextUnitSettings;

    :cond_1
    if-eqz v1, :cond_c

    .line 5995
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getLineSpacing()F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v0, v2

    .line 5996
    invoke-virtual {v1}, Lcom/metamoji/nt/NtTextUnitSettings;->getTextUnitLineHeight()F

    move-result v3

    cmpl-float v3, v3, v0

    if-eqz v3, :cond_2

    .line 5997
    invoke-virtual {v1, v0}, Lcom/metamoji/nt/NtTextUnitSettings;->setTextUnitLineHeight(F)V

    .line 6000
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getDefaultStringAttributes()Lcom/metamoji/un/text/model/attr/StringAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/attr/StringAttributes;->getFontName()Ljava/lang/String;

    move-result-object v0

    .line 6001
    invoke-virtual {v1}, Lcom/metamoji/nt/NtTextUnitSettings;->getTextUnitFontFamily()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 6002
    invoke-virtual {v1, v0}, Lcom/metamoji/nt/NtTextUnitSettings;->setTextUnitFontFamily(Ljava/lang/String;)V

    .line 6006
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getDefaultStringAttributes()Lcom/metamoji/un/text/model/attr/StringAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/attr/StringAttributes;->getFontSize()F

    move-result v0

    .line 6007
    invoke-virtual {v1}, Lcom/metamoji/nt/NtTextUnitSettings;->getTextUnitFontSize()F

    move-result v3

    cmpl-float v3, v3, v0

    if-eqz v3, :cond_4

    .line 6008
    invoke-virtual {v1, v0}, Lcom/metamoji/nt/NtTextUnitSettings;->setTextUnitFontSize(F)V

    .line 6011
    :cond_4
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getRuledLineStyle()Lcom/metamoji/un/text/model/RuledLineStyle;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/text/DataUtil;->createRuledLineStyleString(Lcom/metamoji/un/text/model/RuledLineStyle;)Ljava/lang/String;

    move-result-object v0

    .line 6012
    invoke-virtual {v1}, Lcom/metamoji/nt/NtTextUnitSettings;->getTextUnitRuledLineStyle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 6013
    invoke-virtual {v1, v0}, Lcom/metamoji/nt/NtTextUnitSettings;->setTextUnitRuledLineStyle(Ljava/lang/String;)V

    .line 6016
    :cond_5
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getUnitBorderStyle()Lcom/metamoji/un/text/model/UnitBorderStyle;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/text/DataUtil;->createTextUnitBorderStyleString(Lcom/metamoji/un/text/model/UnitBorderStyle;)Ljava/lang/String;

    move-result-object v0

    .line 6017
    invoke-virtual {v1}, Lcom/metamoji/nt/NtTextUnitSettings;->getTextUnitBorderStyle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 6018
    invoke-virtual {v1, v0}, Lcom/metamoji/nt/NtTextUnitSettings;->setTextUnitBorderStyle(Ljava/lang/String;)V

    .line 6020
    :cond_6
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getUnitBackgroundColor()Lcom/metamoji/un/text/model/ColorComponent;

    move-result-object v0

    iget v0, v0, Lcom/metamoji/un/text/model/ColorComponent;->alpha:F

    .line 6022
    invoke-virtual {v1}, Lcom/metamoji/nt/NtTextUnitSettings;->getTextUnitBackgroundColorAlpha()F

    move-result v3

    cmpl-float v3, v3, v0

    if-eqz v3, :cond_7

    .line 6023
    invoke-virtual {v1, v0}, Lcom/metamoji/nt/NtTextUnitSettings;->setTextUnitBackgroundColorAlpha(F)V

    :cond_7
    const/4 v3, 0x0

    cmpl-float v0, v3, v0

    .line 6028
    const-string v4, ""

    if-eqz v0, :cond_8

    .line 6029
    new-instance v0, Lcom/metamoji/un/text/model/ColorComponent;

    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/un/text/model/TextModel;->getUnitBackgroundColor()Lcom/metamoji/un/text/model/ColorComponent;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/metamoji/un/text/model/ColorComponent;-><init>(Lcom/metamoji/un/text/model/ColorComponent;)V

    .line 6030
    iput v2, v0, Lcom/metamoji/un/text/model/ColorComponent;->alpha:F

    .line 6031
    invoke-static {v0}, Lcom/metamoji/un/text/DataUtil;->createCSSColorStringFromMMJEdColorComponent(Lcom/metamoji/un/text/model/ColorComponent;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_8
    move-object v0, v4

    .line 6034
    :goto_1
    invoke-virtual {v1}, Lcom/metamoji/nt/NtTextUnitSettings;->getTextUnitBackgroundColor()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 6035
    invoke-virtual {v1, v0}, Lcom/metamoji/nt/NtTextUnitSettings;->setTextUnitBackgroundColor(Ljava/lang/String;)V

    .line 6038
    :cond_9
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getDefaultStringAttributes()Lcom/metamoji/un/text/model/attr/StringAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/attr/StringAttributes;->getColor()Lcom/metamoji/un/text/model/ColorComponent;

    move-result-object v0

    iget v0, v0, Lcom/metamoji/un/text/model/ColorComponent;->alpha:F

    .line 6039
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/un/text/model/TextModel;->getDefaultStringAttributes()Lcom/metamoji/un/text/model/attr/StringAttributes;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/un/text/model/attr/StringAttributes;->getColor()Lcom/metamoji/un/text/model/ColorComponent;

    move-result-object v5

    iget v5, v5, Lcom/metamoji/un/text/model/ColorComponent;->red:F

    .line 6040
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/metamoji/un/text/model/TextModel;->getDefaultStringAttributes()Lcom/metamoji/un/text/model/attr/StringAttributes;

    move-result-object v6

    invoke-virtual {v6}, Lcom/metamoji/un/text/model/attr/StringAttributes;->getColor()Lcom/metamoji/un/text/model/ColorComponent;

    move-result-object v6

    iget v6, v6, Lcom/metamoji/un/text/model/ColorComponent;->blue:F

    .line 6041
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/metamoji/un/text/model/TextModel;->getDefaultStringAttributes()Lcom/metamoji/un/text/model/attr/StringAttributes;

    move-result-object v7

    invoke-virtual {v7}, Lcom/metamoji/un/text/model/attr/StringAttributes;->getColor()Lcom/metamoji/un/text/model/ColorComponent;

    move-result-object v7

    iget v7, v7, Lcom/metamoji/un/text/model/ColorComponent;->green:F

    cmpl-float v2, v2, v0

    if-nez v2, :cond_a

    cmpl-float v2, v3, v5

    if-nez v2, :cond_a

    cmpl-float v2, v3, v7

    if-nez v2, :cond_a

    cmpl-float v2, v3, v6

    if-eqz v2, :cond_b

    .line 6043
    :cond_a
    new-instance v2, Lcom/metamoji/un/text/model/ColorComponent;

    invoke-direct {v2, v0, v5, v7, v6}, Lcom/metamoji/un/text/model/ColorComponent;-><init>(FFFF)V

    invoke-static {v2}, Lcom/metamoji/un/text/DataUtil;->createCSSColorStringFromMMJEdColorComponent(Lcom/metamoji/un/text/model/ColorComponent;)Ljava/lang/String;

    move-result-object v4

    .line 6045
    :cond_b
    invoke-virtual {v1}, Lcom/metamoji/nt/NtTextUnitSettings;->getTextUnitFontColor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 6046
    invoke-virtual {v1, v4}, Lcom/metamoji/nt/NtTextUnitSettings;->setTextUnitFontColor(Ljava/lang/String;)V

    :cond_c
    return-void
.end method

.method protected createBaseSprite()Lcom/metamoji/df/sprite/Sprite;
    .locals 1

    .line 1431
    new-instance v0, Lcom/metamoji/un/text/sprite/TextSprite;

    invoke-direct {v0}, Lcom/metamoji/un/text/sprite/TextSprite;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->textSprite:Lcom/metamoji/un/text/sprite/TextSprite;

    return-object v0
.end method

.method public delayShareSendTextUnitDataAfterUndoOrRedo(Z)V
    .locals 0

    const/4 p1, 0x1

    .line 8220
    iput-boolean p1, p0, Lcom/metamoji/un/text/UnTextUnit;->_delayShareSendAfterUndoOrRedo:Z

    return-void
.end method

.method public destroyController(Lcom/metamoji/df/controller/ControllerContext;)V
    .locals 2

    .line 1894
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->_tagIdGenerator:Lcom/metamoji/ctold/CtIdGenerator;

    invoke-virtual {v0}, Lcom/metamoji/ctold/CtIdGenerator;->close()V

    const/4 v0, 0x0

    .line 1895
    iput-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->_tagIdGenerator:Lcom/metamoji/ctold/CtIdGenerator;

    .line 1897
    invoke-static {}, Lcom/metamoji/un/text/UnTextUnitStateManager;->sharedInstance()Lcom/metamoji/un/text/UnTextUnitStateManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/metamoji/un/text/UnTextUnitStateManager;->removeTextUnitInPage(Lcom/metamoji/un/text/UnTextUnit;)V

    .line 1900
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextModel;->releaseRefernceCount()V

    .line 1902
    iput-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->textSprite:Lcom/metamoji/un/text/sprite/TextSprite;

    .line 1906
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/text/UnTextUnit$5;

    invoke-direct {v1, p0}, Lcom/metamoji/un/text/UnTextUnit$5;-><init>(Lcom/metamoji/un/text/UnTextUnit;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->runOnUIThreadAsync(Ljava/lang/Runnable;)V

    .line 1914
    invoke-super {p0, p1}, Lcom/metamoji/nt/NtUnitController;->destroyController(Lcom/metamoji/df/controller/ControllerContext;)V

    return-void
.end method

.method public didEndMakingLineTable()V
    .locals 1

    .line 10608
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->isInComposition()Z

    move-result v0

    if-nez v0, :cond_0

    .line 10609
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->addUndoDataInSelfBufferToAppUndo()V

    .line 10612
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->enableSendTextUnitEdittingData()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10614
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->sendTextUnitEdittingData()V

    :cond_1
    return-void
.end method

.method public didUndoOrRedo(Z)V
    .locals 1

    .line 10636
    iget-boolean p1, p0, Lcom/metamoji/un/text/UnTextUnit;->_delayShareSendAfterUndoOrRedo:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 10637
    iput-boolean p1, p0, Lcom/metamoji/un/text/UnTextUnit;->_delayShareSendAfterUndoOrRedo:Z

    .line 10638
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v0, Lcom/metamoji/un/text/UnTextUnit$43;

    invoke-direct {v0, p0}, Lcom/metamoji/un/text/UnTextUnit$43;-><init>(Lcom/metamoji/un/text/UnTextUnit;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public endEditTextTask()V
    .locals 4

    .line 3970
    iget-boolean v0, p0, Lcom/metamoji/un/text/UnTextUnit;->_duringInsertComposingText:Z

    if-nez v0, :cond_2

    .line 3978
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->undoModel:Lcom/metamoji/df/model/IModel;

    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator;->createJSONTextRange(Lcom/metamoji/un/text/model/TextRange;)Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "undoSelectedTextRangeAfter"

    invoke-interface {v0, v2, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/Map;)V

    .line 3982
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->undoModel:Lcom/metamoji/df/model/IModel;

    const-string/jumbo v1, "undoDatas"

    iget-object v2, p0, Lcom/metamoji/un/text/UnTextUnit;->undoDatas:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/List;)V

    const/4 v0, 0x0

    .line 3983
    iput-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->undoDatas:Ljava/util/List;

    .line 3987
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextModel;->getLineTable()Lcom/metamoji/un/text/model/linetable/LineTable;

    move-result-object v1

    iget-boolean v1, v1, Lcom/metamoji/un/text/model/linetable/LineTable;->needsReconstruct:Z

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->existUndoDataInSelfBuffer()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->isInComposition()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3990
    :cond_0
    invoke-virtual {p0, v0}, Lcom/metamoji/un/text/UnTextUnit;->beginEdit(Ljava/lang/Object;)Lcom/metamoji/df/controller/EditContext;

    move-result-object v1

    .line 3991
    iget-object v2, p0, Lcom/metamoji/un/text/UnTextUnit;->undoModel:Lcom/metamoji/df/model/IModel;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/df/controller/EditContext;->addUndo(Lcom/metamoji/df/model/IModel;Z)V

    .line 3992
    invoke-virtual {p0, v1}, Lcom/metamoji/un/text/UnTextUnit;->endEdit(Lcom/metamoji/df/controller/EditContext;)V

    goto :goto_1

    .line 3988
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/metamoji/un/text/UnTextUnit;->undoModel:Lcom/metamoji/df/model/IModel;

    invoke-direct {p0, v1}, Lcom/metamoji/un/text/UnTextUnit;->addUndoDataToSelfBuffer(Lcom/metamoji/df/model/IModel;)V

    .line 3994
    :goto_1
    iput-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->undoModel:Lcom/metamoji/df/model/IModel;

    :cond_2
    return-void
.end method

.method public endReconvertTaskIfNeeded()V
    .locals 2

    .line 4017
    sget-object v0, Lcom/metamoji/un/text/UnTextUnit$ReeditMode;->Reconvert:Lcom/metamoji/un/text/UnTextUnit$ReeditMode;

    iget-object v1, p0, Lcom/metamoji/un/text/UnTextUnit;->_reeditMode:Lcom/metamoji/un/text/UnTextUnit$ReeditMode;

    if-ne v0, v1, :cond_0

    .line 4018
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->endReconvertTask()V

    :cond_0
    return-void
.end method

.method public extractText()Ljava/lang/String;
    .locals 3

    .line 1404
    new-instance v0, Lcom/metamoji/un/text/model/TextRange;

    invoke-direct {v0}, Lcom/metamoji/un/text/model/TextRange;-><init>()V

    const/4 v1, 0x0

    .line 1405
    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/model/TextRange;->setEmpty(Z)V

    .line 1406
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/TextModel;->beginningOfDocument()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/metamoji/un/text/model/TextRange;->setStart(Lcom/metamoji/un/text/model/TextPosition;)V

    .line 1407
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/TextModel;->endOfDocument()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/metamoji/un/text/model/TextRange;->setEnd(Lcom/metamoji/un/text/model/TextPosition;)V

    const/4 v2, 0x1

    .line 1408
    invoke-virtual {v0, v2}, Lcom/metamoji/un/text/model/TextRange;->setSelectedAll(Z)V

    .line 1410
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/metamoji/un/text/model/TextModel;->formatSubstring(Lcom/metamoji/un/text/model/TextRange;Z)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1412
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 1418
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public focusToViewForSoftInputAndShowSoftInput()V
    .locals 1

    const/4 v0, 0x0

    .line 10894
    invoke-virtual {p0, v0}, Lcom/metamoji/un/text/UnTextUnit;->focusToViewForSoftInputAndShowSoftInput(Z)V

    return-void
.end method

.method public focusToViewForSoftInputAndShowSoftInput(Z)V
    .locals 2

    .line 10897
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getViewForSoftInput()Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 10898
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 10901
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 10906
    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->isUseMazec()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 10907
    new-instance p1, Landroid/view/inputmethod/EditorInfo;

    invoke-direct {p1}, Landroid/view/inputmethod/EditorInfo;-><init>()V

    .line 10908
    const-string v1, ""

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    .line 10909
    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->getInstance()Lcom/metamoji/nt/NtMazecImsManager;

    move-result-object v1

    check-cast v0, Lcom/metamoji/un/text/UnTextUnit$ViewForSoftInput;

    invoke-virtual {v0, p1}, Lcom/metamoji/un/text/UnTextUnit$ViewForSoftInput;->createInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Lcom/metamoji/nt/NtMazecImsManager;->startInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V

    .line 10915
    :cond_1
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/cm/CmTaskManager;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/metamoji/un/text/UnTextUnit$44;

    invoke-direct {v0, p0}, Lcom/metamoji/un/text/UnTextUnit$44;-><init>(Lcom/metamoji/un/text/UnTextUnit;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getComposingSpan()Lcom/metamoji/un/text/model/TextRange;
    .locals 1

    .line 10720
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->composingSpan:Lcom/metamoji/un/text/model/TextRange;

    return-object v0
.end method

.method public getDirectionHandlerID()Ljava/lang/String;
    .locals 1

    .line 11839
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getUnitId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEditorDelegate()Lcom/metamoji/nt/INtEditor;
    .locals 1

    .line 456
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 457
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGeometricUndoOrRedo(Lcom/metamoji/df/controller/GeometricProps;)Lcom/metamoji/df/controller/GeometricProps;
    .locals 6

    .line 4117
    new-instance v0, Lcom/metamoji/df/controller/GeometricProps;

    invoke-direct {v0}, Lcom/metamoji/df/controller/GeometricProps;-><init>()V

    .line 4119
    iget-object v1, p1, Lcom/metamoji/df/controller/GeometricProps;->origin:Landroid/graphics/PointF;

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    .line 4120
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    const-string/jumbo v4, "x"

    invoke-interface {v1, v4, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v4

    double-to-float v1, v4

    .line 4121
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v4

    const-string/jumbo v5, "y"

    invoke-interface {v4, v5, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 4122
    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5, v1, v4}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v5, v0, Lcom/metamoji/df/controller/GeometricProps;->origin:Landroid/graphics/PointF;

    .line 4125
    :cond_0
    iget-object v1, p1, Lcom/metamoji/df/controller/GeometricProps;->size:Lcom/metamoji/cm/SizeF;

    if-eqz v1, :cond_1

    .line 4126
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    const-string/jumbo v4, "width"

    invoke-interface {v1, v4, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v4

    double-to-float v1, v4

    .line 4127
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v4

    const-string v5, "height"

    invoke-interface {v4, v5, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 4128
    new-instance v5, Lcom/metamoji/cm/SizeF;

    invoke-direct {v5, v1, v4}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    iput-object v5, v0, Lcom/metamoji/df/controller/GeometricProps;->size:Lcom/metamoji/cm/SizeF;

    .line 4131
    :cond_1
    iget-object v1, p1, Lcom/metamoji/df/controller/GeometricProps;->rotation:Ljava/lang/Float;

    if-eqz v1, :cond_2

    .line 4132
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    const-string/jumbo v4, "rotation"

    invoke-interface {v1, v4, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 4133
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/df/controller/GeometricProps;->rotation:Ljava/lang/Float;

    .line 4136
    :cond_2
    iget-object p1, p1, Lcom/metamoji/df/controller/GeometricProps;->contentScale:Ljava/lang/Float;

    if-eqz p1, :cond_3

    .line 4137
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getContentScale()D

    move-result-wide v1

    double-to-float p1, v1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/df/controller/GeometricProps;->contentScale:Ljava/lang/Float;

    :cond_3
    return-object v0
.end method

.method public getHotSpotLocations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/un/text/hotspot/HotSpotLocation;",
            ">;"
        }
    .end annotation

    .line 332
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->hotSpotLocations:Ljava/util/List;

    return-object v0
.end method

.method public getMazecAction()Lcom/metamoji/un/text/MazecAction;
    .locals 2

    .line 7654
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->mazecAction:Lcom/metamoji/un/text/MazecAction;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->_viewForSI:Lcom/metamoji/un/text/UnTextUnit$ViewForSoftInput;

    if-eqz v0, :cond_0

    .line 7655
    new-instance v0, Lcom/metamoji/un/text/MazecAction;

    iget-object v1, p0, Lcom/metamoji/un/text/UnTextUnit;->_viewForSI:Lcom/metamoji/un/text/UnTextUnit$ViewForSoftInput;

    invoke-direct {v0, v1}, Lcom/metamoji/un/text/MazecAction;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->mazecAction:Lcom/metamoji/un/text/MazecAction;

    .line 7657
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->mazecAction:Lcom/metamoji/un/text/MazecAction;

    return-object v0
.end method

.method public getRectIncludingParagraph(Lcom/metamoji/un/text/model/paragtable/ParagraphInfo;)Landroid/graphics/RectF;
    .locals 1

    .line 12210
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/un/text/model/TextModel;->getRectIncludingParagraph(Lcom/metamoji/un/text/model/paragtable/ParagraphInfo;)Landroid/graphics/RectF;

    move-result-object p1

    return-object p1
.end method

.method public getSelectedTaggableObjectCount(Lcom/metamoji/ctold/CtTaggedObjectFilter;)I
    .locals 5

    .line 12363
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/model/TextModel;->selectedParagraphInfos(Lcom/metamoji/un/text/model/TextRange;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    .line 12366
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    return p1

    .line 12370
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ctold/CtTaggableObject;

    .line 12371
    sget-object v3, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;->CT_OBJECT_PARAGRAPH:Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getUnitId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2}, Lcom/metamoji/ctold/CtTaggableObject;->getObjectId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v4, v2}, Lcom/metamoji/ctold/CtTaggedObjectFilter;->select(Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public getSelectedTaggableObjects(Lcom/metamoji/ctold/CtTaggedObjectFilter;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ctold/CtTaggedObjectFilter;",
            ")",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/CtTaggableObject;",
            ">;"
        }
    .end annotation

    .line 12337
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/model/TextModel;->selectedParagraphInfos(Lcom/metamoji/un/text/model/TextRange;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    return-object v0

    .line 12343
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12344
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ctold/CtTaggableObject;

    .line 12345
    sget-object v3, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;->CT_OBJECT_PARAGRAPH:Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getUnitId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2}, Lcom/metamoji/ctold/CtTaggableObject;->getObjectId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v3, v4, v5}, Lcom/metamoji/ctold/CtTaggedObjectFilter;->select(Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 12346
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;
    .locals 1

    .line 2582
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v0

    return-object v0
.end method

.method public getTagIdGenerator()Lcom/metamoji/ctold/CtIdGenerator;
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->_tagIdGenerator:Lcom/metamoji/ctold/CtIdGenerator;

    return-object v0
.end method

.method public getTextInput()Lcom/metamoji/un/text/model/ITextInput;
    .locals 1

    .line 3434
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    return-object v0
.end method

.method public getTextModel()Lcom/metamoji/un/text/model/TextModel;
    .locals 1

    .line 2577
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/text/model/TextModel;

    return-object v0
.end method

.method public getUndoDatasForComposingText()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 4076
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->undoDatasForComposingText:Ljava/util/List;

    return-object v0
.end method

.method public getUnitFilterColor()Lcom/metamoji/un/text/model/ColorComponent;
    .locals 4

    .line 12235
    invoke-static {}, Lcom/metamoji/un/text/UnTextUnit;->isEnableLockShareEditing()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 12238
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->isDirectable()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    .line 12243
    :cond_1
    iget-boolean v0, p0, Lcom/metamoji/un/text/UnTextUnit;->editing:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->editMode:Lcom/metamoji/nt/NtDocument$EditMode;

    sget-object v2, Lcom/metamoji/nt/NtDocument$EditMode;->EDITMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->mediaType:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    sget-object v2, Lcom/metamoji/df/controller/ControllerContext$MediaType;->MEDIATYPE_NONE:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    if-ne v0, v2, :cond_4

    .line 12246
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->_isOwnerAndEditability:Ljava/lang/Boolean;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 12247
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getPageController()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 12249
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/nt/NtTextSearchUtil;->belongCurrentEditState(Lcom/metamoji/df/model/IModel;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->layerController()Lcom/metamoji/nt/NtLayerController;

    move-result-object v3

    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getCurrentLayer()Lcom/metamoji/nt/NtLayerController;

    move-result-object v0

    if-ne v3, v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    .line 12255
    invoke-static {}, Lcom/metamoji/un/text/UnTextUnit;->isEnableLockShareEditing()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->isLockingShareEditing()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    move v2, v0

    :goto_1
    if-eqz v2, :cond_4

    .line 12260
    new-instance v0, Lcom/metamoji/un/text/model/ColorComponent;

    const v1, 0x3e99999a    # 0.3f

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/metamoji/un/text/model/ColorComponent;-><init>(FFFF)V

    return-object v0

    :cond_4
    return-object v1
.end method

.method public getUnitNoDropShadow()Z
    .locals 1

    .line 12522
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 12527
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getUnitNoDropShadow()Z

    move-result v0

    return v0
.end method

.method public getUnitNotDelWhenEmpty()Z
    .locals 1

    .line 12564
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 12569
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getUnitNotDelWhenEmpty()Z

    move-result v0

    return v0
.end method

.method public getViewForSoftInput()Landroid/view/View;
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->_viewForSI:Lcom/metamoji/un/text/UnTextUnit$ViewForSoftInput;

    return-object v0
.end method

.method public handleDirections(Ljava/util/List;Lcom/metamoji/ns/direction/INsDirectionObserver;Ljava/lang/Runnable;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/ns/direction/NsReceivedDirection;",
            ">;",
            "Lcom/metamoji/ns/direction/INsDirectionObserver;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 11851
    const-string/jumbo v0, "textmode.direction.regard"

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 11853
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    add-int/lit8 v1, v1, -0x1

    const/4 v3, 0x0

    move-object v4, v3

    :goto_0
    const/4 v5, 0x0

    if-ltz v1, :cond_4

    .line 11861
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/metamoji/ns/direction/NsReceivedDirection;

    .line 11864
    invoke-virtual {v6}, Lcom/metamoji/ns/direction/NsReceivedDirection;->direction()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData;->isTargetTextModelDirection(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 11865
    invoke-virtual {v6}, Lcom/metamoji/ns/direction/NsReceivedDirection;->direction()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/metamoji/df/model/IModel;

    if-eqz v4, :cond_0

    .line 11869
    invoke-interface {v7}, Lcom/metamoji/df/model/IModel;->destroy()V

    goto :goto_1

    .line 11873
    :cond_0
    const-string/jumbo v8, "unitId"

    invoke-interface {v7, v8}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 11875
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getDirectionHandlerID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 11877
    new-instance v4, Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData;

    invoke-virtual {v6}, Lcom/metamoji/ns/direction/NsReceivedDirection;->direction()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6}, Lcom/metamoji/ns/direction/NsReceivedDirection;->receiveInfo()Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;

    move-result-object v6

    iget-boolean v6, v6, Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;->bySendBack:Z

    invoke-direct {v4, v7, v6}, Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData;-><init>(Ljava/lang/Object;Z)V

    .line 11878
    invoke-virtual {v2, v5, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 11881
    :cond_1
    invoke-interface {v7}, Lcom/metamoji/df/model/IModel;->destroy()V

    goto :goto_1

    .line 11885
    :cond_2
    invoke-virtual {v6}, Lcom/metamoji/ns/direction/NsReceivedDirection;->direction()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData;->isTargetDirection(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 11886
    new-instance v7, Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData;

    invoke-virtual {v6}, Lcom/metamoji/ns/direction/NsReceivedDirection;->direction()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6}, Lcom/metamoji/ns/direction/NsReceivedDirection;->receiveInfo()Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;

    move-result-object v6

    iget-boolean v6, v6, Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;->bySendBack:Z

    invoke-direct {v7, v8, v6}, Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData;-><init>(Ljava/lang/Object;Z)V

    invoke-virtual {v2, v5, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 11891
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11894
    :try_start_1
    invoke-virtual {v1}, Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData;->isTextModelTypeDirection()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 11896
    invoke-virtual {v1}, Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData;->getDirection()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 11897
    instance-of v6, v4, Lcom/metamoji/un/text/model/TextModel;

    if-eqz v6, :cond_5

    .line 11898
    check-cast v4, Lcom/metamoji/un/text/model/TextModel;

    goto :goto_3

    :cond_5
    move-object v4, v3

    :goto_3
    if-eqz v4, :cond_9

    .line 11902
    invoke-virtual {v4, v0, v5}, Lcom/metamoji/un/text/model/TextModel;->getPropertyAsBool(Ljava/lang/String;Z)Z

    move-result v6

    .line 11903
    invoke-virtual {v4, v0}, Lcom/metamoji/un/text/model/TextModel;->deleteProperty(Ljava/lang/String;)V

    .line 11905
    invoke-virtual {v1}, Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData;->bySendback()Z

    move-result v7

    if-eqz v7, :cond_6

    if-eqz v6, :cond_9

    .line 11907
    :cond_6
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v6

    new-instance v7, Lcom/metamoji/un/text/UnTextUnit$50;

    invoke-direct {v7, p0, v4}, Lcom/metamoji/un/text/UnTextUnit$50;-><init>(Lcom/metamoji/un/text/UnTextUnit;Lcom/metamoji/un/text/model/TextModel;)V

    invoke-virtual {v6, v7}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    goto :goto_4

    .line 11917
    :cond_7
    invoke-virtual {v1}, Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData;->isModelTypeDirection()Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_4

    .line 11921
    :cond_8
    invoke-virtual {v1}, Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData;->isDictionaryTypeDirection()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11929
    :catch_0
    :cond_9
    :goto_4
    :try_start_2
    invoke-virtual {v1}, Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData;->destroy()V

    goto :goto_2

    .line 11932
    :cond_a
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11936
    invoke-interface {p2}, Lcom/metamoji/ns/direction/INsDirectionObserver;->documentModified()V

    .line 11937
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getPageController()Lcom/metamoji/nt/NtPageController;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/metamoji/ns/direction/INsDirectionObserver;->pageContentsChanged(Lcom/metamoji/nt/NtPageController;)V

    .line 11940
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    return-void

    :catchall_0
    move-exception p1

    .line 11936
    invoke-interface {p2}, Lcom/metamoji/ns/direction/INsDirectionObserver;->documentModified()V

    .line 11937
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getPageController()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/metamoji/ns/direction/INsDirectionObserver;->pageContentsChanged(Lcom/metamoji/nt/NtPageController;)V

    .line 11940
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 11941
    throw p1
.end method

.method public hasTag(Lcom/metamoji/un/text/model/MMJEdTrdParagraphMark;Lcom/metamoji/un/text/model/paragtable/ParagraphInfo;)Z
    .locals 2

    .line 12224
    iget-object p1, p0, Lcom/metamoji/un/text/UnTextUnit;->_tagIdGenerator:Lcom/metamoji/ctold/CtIdGenerator;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 12227
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getObjectFilterForTag()Lcom/metamoji/ctold/CtTaggedObjectFilter;

    move-result-object p1

    .line 12228
    sget-object v0, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;->CT_OBJECT_PARAGRAPH:Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getUnitId()Ljava/lang/String;

    move-result-object v1

    check-cast p2, Lcom/metamoji/un/text/model/paragtable/TaggedParagraphInfo;

    invoke-virtual {p2}, Lcom/metamoji/un/text/model/paragtable/TaggedParagraphInfo;->getObjectId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, v1, p2}, Lcom/metamoji/ctold/CtTaggedObjectFilter;->select(Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public hasUnitBackgroundColor()Z
    .locals 2

    .line 3359
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getUnitBackgroundColor()Lcom/metamoji/un/text/model/ColorComponent;

    move-result-object v0

    iget v0, v0, Lcom/metamoji/un/text/model/ColorComponent;->alpha:F

    const/4 v1, 0x0

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hideControllers()V
    .locals 0

    .line 8810
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->hideInsertionPointCursorController()V

    .line 8811
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->hideSelectionModifierCursorController()V

    return-void
.end method

.method public hideInsertionPointCursorController()V
    .locals 2

    .line 8787
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->insPtCurCtrl:Lcom/metamoji/un/text/UnTextUnit$InsertionPointCursorController;

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit$InsertionPointCursorController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8788
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/text/UnTextUnit$39;

    invoke-direct {v1, p0}, Lcom/metamoji/un/text/UnTextUnit$39;-><init>(Lcom/metamoji/un/text/UnTextUnit;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->runOnUIThreadAsync(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public hideSelectionModifierCursorController()V
    .locals 2

    .line 8799
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->selModCurCtrl:Lcom/metamoji/un/text/UnTextUnit$SelectionModifierCursorController;

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit$SelectionModifierCursorController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8800
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/text/UnTextUnit$40;

    invoke-direct {v1, p0}, Lcom/metamoji/un/text/UnTextUnit$40;-><init>(Lcom/metamoji/un/text/UnTextUnit;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->runOnUIThreadAsync(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public inSelectedTextRect(Landroid/graphics/PointF;)Z
    .locals 16

    move-object/from16 v0, p1

    .line 10290
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/un/text/UnTextUnit;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    .line 10291
    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextRange;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_1

    .line 10296
    :cond_0
    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v3

    .line 10297
    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v4

    .line 10299
    invoke-virtual {v3, v4}, Lcom/metamoji/un/text/model/TextPosition;->compareTo(Lcom/metamoji/un/text/model/TextPosition;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v6, v5, :cond_1

    .line 10302
    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v1

    move-object v3, v4

    move-object v4, v1

    .line 10305
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextModel;->getLineTable()Lcom/metamoji/un/text/model/linetable/LineTable;

    move-result-object v1

    .line 10307
    invoke-virtual {v1, v3}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineIndex(Lcom/metamoji/un/text/model/TextPosition;)I

    move-result v5

    .line 10308
    invoke-virtual {v1, v4}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineIndex(Lcom/metamoji/un/text/model/TextPosition;)I

    move-result v7

    .line 10312
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/metamoji/un/text/model/TextModel;->caretRectInWholeViewForPosition(Lcom/metamoji/un/text/model/TextPosition;)Landroid/graphics/RectF;

    move-result-object v3

    .line 10314
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/metamoji/un/text/model/TextModel;->caretRectInWholeViewForPosition(Lcom/metamoji/un/text/model/TextPosition;)Landroid/graphics/RectF;

    move-result-object v4

    .line 10316
    invoke-virtual {v1, v5}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineInfoAtIndex(I)Lcom/metamoji/un/text/model/linetable/LineInfo;

    move-result-object v8

    if-ne v5, v7, :cond_2

    move-object v9, v8

    goto :goto_0

    .line 10322
    :cond_2
    invoke-virtual {v1, v7}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineInfoAtIndex(I)Lcom/metamoji/un/text/model/linetable/LineInfo;

    move-result-object v9

    .line 10325
    :goto_0
    new-instance v10, Landroid/graphics/RectF;

    iget-object v11, v8, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->x:F

    iget-object v12, v8, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->y:F

    iget-object v13, v8, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v13, v13, Landroid/graphics/PointF;->x:F

    iget-object v14, v8, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v14, v14, Lcom/metamoji/cm/SizeF;->width:F

    add-float/2addr v13, v14

    iget-object v14, v8, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v14, v14, Landroid/graphics/PointF;->y:F

    iget-object v15, v8, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v15, v15, Lcom/metamoji/cm/SizeF;->height:F

    add-float/2addr v14, v15

    invoke-direct {v10, v11, v12, v13, v14}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {v3, v10}, Lcom/metamoji/cm/RectUtils;->union(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v10

    .line 10327
    iget v11, v10, Landroid/graphics/RectF;->top:F

    iput v11, v3, Landroid/graphics/RectF;->top:F

    .line 10328
    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    iput v10, v3, Landroid/graphics/RectF;->bottom:F

    .line 10331
    new-instance v10, Landroid/graphics/RectF;

    iget-object v11, v9, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->x:F

    iget-object v12, v9, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->y:F

    iget-object v13, v9, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v13, v13, Landroid/graphics/PointF;->x:F

    iget-object v14, v9, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v14, v14, Lcom/metamoji/cm/SizeF;->width:F

    add-float/2addr v13, v14

    iget-object v14, v9, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v14, v14, Landroid/graphics/PointF;->y:F

    iget-object v9, v9, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v9, v9, Lcom/metamoji/cm/SizeF;->height:F

    add-float/2addr v14, v9

    invoke-direct {v10, v11, v12, v13, v14}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {v4, v10}, Lcom/metamoji/cm/RectUtils;->union(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v9

    .line 10333
    iget v10, v9, Landroid/graphics/RectF;->top:F

    iput v10, v4, Landroid/graphics/RectF;->top:F

    .line 10334
    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    iput v9, v4, Landroid/graphics/RectF;->bottom:F

    if-ne v5, v7, :cond_3

    .line 10338
    invoke-static {v3, v4}, Lcom/metamoji/cm/RectUtils;->union(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    .line 10339
    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v3, v0}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_7

    return v6

    :cond_3
    if-eq v5, v7, :cond_7

    .line 10344
    invoke-virtual {v1, v7}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineInfoAtIndex(I)Lcom/metamoji/un/text/model/linetable/LineInfo;

    move-result-object v1

    .line 10347
    iget-object v5, v8, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget-object v7, v8, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v7, v7, Lcom/metamoji/cm/SizeF;->height:F

    add-float/2addr v5, v7

    iget v7, v0, Landroid/graphics/PointF;->y:F

    cmpg-float v5, v5, v7

    const/4 v7, 0x0

    if-gtz v5, :cond_4

    iget v5, v0, Landroid/graphics/PointF;->y:F

    iget-object v1, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    cmpg-float v1, v5, v1

    if-gez v1, :cond_4

    .line 10350
    iget v1, v0, Landroid/graphics/PointF;->x:F

    cmpg-float v1, v7, v1

    if-gtz v1, :cond_4

    iget v1, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/un/text/UnTextUnit;->getWidth()F

    move-result v5

    cmpg-float v1, v1, v5

    if-gez v1, :cond_4

    return v6

    .line 10355
    :cond_4
    iget v1, v3, Landroid/graphics/RectF;->right:F

    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/un/text/UnTextUnit;->getWidth()F

    move-result v5

    cmpg-float v1, v1, v5

    if-gez v1, :cond_5

    .line 10356
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/un/text/UnTextUnit;->getWidth()F

    move-result v1

    iput v1, v3, Landroid/graphics/RectF;->right:F

    .line 10357
    :cond_5
    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v5, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v1, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-eqz v1, :cond_6

    return v6

    .line 10361
    :cond_6
    iget v1, v4, Landroid/graphics/RectF;->left:F

    invoke-static {v1, v7}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v4, Landroid/graphics/RectF;->left:F

    .line 10362
    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v4, v1, v0}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_7

    return v6

    :cond_7
    :goto_1
    return v2
.end method

.method protected init(Lcom/metamoji/df/controller/ControllerContext;)V
    .locals 0

    .line 1659
    invoke-super {p0, p1}, Lcom/metamoji/nt/NtUnitController;->init(Lcom/metamoji/df/controller/ControllerContext;)V

    .line 1662
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextModel;->retainRefernceCount()V

    .line 1665
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->registerCollaboHandler()V

    .line 1668
    iget-object p1, p0, Lcom/metamoji/un/text/UnTextUnit;->_tagChangedEventHandler:Lcom/metamoji/cm/ICmEventHandler;

    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/UnTextUnit;->addTagEventHandler(Lcom/metamoji/cm/ICmEventHandler;)V

    return-void
.end method

.method protected initAfter(Lcom/metamoji/df/controller/ControllerContext;I)V
    .locals 13

    .line 1676
    invoke-super {p0, p1, p2}, Lcom/metamoji/nt/NtUnitController;->initAfter(Lcom/metamoji/df/controller/ControllerContext;I)V

    .line 1678
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    const-string/jumbo p2, "textmode.sizecheck.doinit"

    const/4 v0, -0x1

    invoke-interface {p1, p2, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result p1

    if-eq v0, p1, :cond_0

    .line 1681
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    .line 1684
    :cond_0
    sget-object p2, Lcom/metamoji/un/text/UnTextUnit$TextUnitSizeCheckDoInitType;->TextUnitSizeCheckDoInitType_PlainTextPaste:Lcom/metamoji/un/text/UnTextUnit$TextUnitSizeCheckDoInitType;

    invoke-virtual {p2}, Lcom/metamoji/un/text/UnTextUnit$TextUnitSizeCheckDoInitType;->toIntValue()I

    move-result p2

    if-ne p1, p2, :cond_d

    .line 1685
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/un/text/model/TextModel;->getVerticalWriting()Z

    move-result p2

    .line 1686
    const-string v0, ""

    const/4 v1, 0x0

    const/high16 v2, 0x41200000    # 10.0f

    const-wide/16 v3, 0x0

    const/high16 v5, 0x40800000    # 4.0f

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    if-eqz p2, :cond_6

    .line 1688
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object p2

    const-string/jumbo v8, "width"

    invoke-interface {p2, v8, v3, v4}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v3

    .line 1691
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getPageController()Lcom/metamoji/nt/NtPageController;

    move-result-object p2

    .line 1692
    invoke-virtual {p2}, Lcom/metamoji/nt/NtPageController;->getPaperWidth()F

    move-result v9

    float-to-double v9, v9

    .line 1695
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v11

    .line 1697
    invoke-virtual {v11}, Lcom/metamoji/nt/NtNoteController;->getZoom()F

    move-result v12

    cmpl-float v1, v1, v12

    if-eqz v1, :cond_1

    .line 1698
    invoke-virtual {v11}, Lcom/metamoji/nt/NtNoteController;->getZoom()F

    move-result v1

    div-float/2addr v2, v1

    .line 1699
    :cond_1
    invoke-virtual {p2}, Lcom/metamoji/nt/NtPageController;->getViewportWidth()F

    move-result p2

    float-to-double v11, p2

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v9

    float-to-double v1, v2

    sub-double/2addr v9, v1

    cmpl-double p2, v3, v9

    if-lez p2, :cond_c

    .line 1704
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/un/text/model/TextModel;->getDefaultFontHeight()F

    move-result p2

    float-to-double v1, p2

    .line 1706
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/un/text/model/TextModel;->getLineSpacing()F

    move-result p2

    float-to-double v11, p2

    mul-double/2addr v11, v1

    sub-double/2addr v3, v11

    add-double/2addr v1, v11

    div-double/2addr v3, v1

    cmpg-double p2, v3, v6

    if-gez p2, :cond_2

    move-wide v3, v6

    :cond_2
    sub-double/2addr v9, v11

    div-double/2addr v9, v1

    cmpg-double p2, v9, v6

    if-gez p2, :cond_3

    goto :goto_0

    :cond_3
    move-wide v6, v9

    .line 1719
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/un/text/model/TextModel;->getDefaultStringAttributes()Lcom/metamoji/un/text/model/attr/StringAttributes;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/un/text/model/attr/StringAttributes;->getFontSize()F

    move-result p2

    float-to-double v1, p2

    mul-double/2addr v1, v6

    div-double/2addr v1, v3

    .line 1720
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-float v1, v1

    cmpg-float v2, v1, v5

    if-gez v2, :cond_4

    goto :goto_1

    :cond_4
    move v5, v1

    :goto_1
    cmpg-float p2, v5, p2

    if-gez p2, :cond_c

    .line 1726
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/un/text/model/TextModel;->getDefaultStringAttributes()Lcom/metamoji/un/text/model/attr/StringAttributes;

    move-result-object p2

    .line 1728
    instance-of v1, p2, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    if-eqz v1, :cond_5

    .line 1729
    check-cast p2, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    invoke-virtual {p2}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->getFontName()Ljava/lang/String;

    move-result-object v0

    .line 1730
    :cond_5
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object p2

    invoke-virtual {p2, v0, v5}, Lcom/metamoji/un/text/model/TextModel;->makeFontSetting(Ljava/lang/String;F)V

    .line 1732
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object p2

    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getDefaultFontHeight()F

    move-result v0

    float-to-double v0, v0

    invoke-interface {p2, v8, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    goto/16 :goto_4

    .line 1739
    :cond_6
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object p2

    const-string v8, "height"

    invoke-interface {p2, v8, v3, v4}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v3

    .line 1742
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getPageController()Lcom/metamoji/nt/NtPageController;

    move-result-object p2

    .line 1743
    invoke-virtual {p2}, Lcom/metamoji/nt/NtPageController;->getPaperWidth()F

    .line 1744
    invoke-virtual {p2}, Lcom/metamoji/nt/NtPageController;->getPaperHeight()F

    move-result v9

    float-to-double v9, v9

    .line 1746
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v11

    .line 1748
    invoke-virtual {v11}, Lcom/metamoji/nt/NtNoteController;->getZoom()F

    move-result v12

    cmpl-float v1, v1, v12

    if-eqz v1, :cond_7

    .line 1749
    invoke-virtual {v11}, Lcom/metamoji/nt/NtNoteController;->getZoom()F

    move-result v1

    div-float/2addr v2, v1

    .line 1750
    :cond_7
    invoke-virtual {p2}, Lcom/metamoji/nt/NtPageController;->getViewportHeight()F

    move-result p2

    float-to-double v11, p2

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v9

    float-to-double v1, v2

    sub-double/2addr v9, v1

    cmpl-double p2, v3, v9

    if-lez p2, :cond_c

    .line 1755
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/un/text/model/TextModel;->getDefaultFontHeight()F

    move-result p2

    float-to-double v1, p2

    .line 1757
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/un/text/model/TextModel;->getLineSpacing()F

    move-result p2

    float-to-double v11, p2

    mul-double/2addr v11, v1

    sub-double/2addr v3, v11

    add-double/2addr v1, v11

    div-double/2addr v3, v1

    cmpg-double p2, v3, v6

    if-gez p2, :cond_8

    move-wide v3, v6

    :cond_8
    sub-double/2addr v9, v11

    div-double/2addr v9, v1

    cmpg-double p2, v9, v6

    if-gez p2, :cond_9

    goto :goto_2

    :cond_9
    move-wide v6, v9

    .line 1770
    :goto_2
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/un/text/model/TextModel;->getDefaultStringAttributes()Lcom/metamoji/un/text/model/attr/StringAttributes;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/un/text/model/attr/StringAttributes;->getFontSize()F

    move-result p2

    float-to-double v1, p2

    mul-double/2addr v1, v6

    div-double/2addr v1, v3

    .line 1771
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-float v1, v1

    cmpg-float v2, v1, v5

    if-gez v2, :cond_a

    goto :goto_3

    :cond_a
    move v5, v1

    :goto_3
    cmpg-float p2, v5, p2

    if-gez p2, :cond_c

    .line 1777
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/un/text/model/TextModel;->getDefaultStringAttributes()Lcom/metamoji/un/text/model/attr/StringAttributes;

    move-result-object p2

    .line 1779
    instance-of v1, p2, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    if-eqz v1, :cond_b

    .line 1780
    check-cast p2, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    invoke-virtual {p2}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->getFontName()Ljava/lang/String;

    move-result-object v0

    .line 1781
    :cond_b
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object p2

    invoke-virtual {p2, v0, v5}, Lcom/metamoji/un/text/model/TextModel;->makeFontSetting(Ljava/lang/String;F)V

    .line 1783
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object p2

    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getDefaultFontHeight()F

    move-result v0

    float-to-double v0, v0

    invoke-interface {p2, v8, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 1801
    :cond_c
    :goto_4
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/metamoji/un/text/model/TextModel;->needsRemakeLineTable(Lcom/metamoji/un/text/model/TextPosition;Z)V

    .line 1804
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object p2

    const-string/jumbo v0, "textmode.locationcheck.paper"

    invoke-interface {p2, v0, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 1806
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getBaseSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/metamoji/df/sprite/Sprite;->setVisible(Z)V

    .line 1807
    iget-object p1, p0, Lcom/metamoji/un/text/UnTextUnit;->_rubberBand:Lcom/metamoji/un/util/UnRubberBandSupport;

    invoke-virtual {p1, p2}, Lcom/metamoji/un/util/UnRubberBandSupport;->setEnableVisible(Z)V

    .line 1811
    :cond_d
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance p2, Lcom/metamoji/un/text/UnTextUnit$4;

    invoke-direct {p2, p0}, Lcom/metamoji/un/text/UnTextUnit$4;-><init>(Lcom/metamoji/un/text/UnTextUnit;)V

    invoke-virtual {p1, p2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 1820
    iget-object p1, p0, Lcom/metamoji/un/text/UnTextUnit;->textSprite:Lcom/metamoji/un/text/sprite/TextSprite;

    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->isVisibleHotSpots()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/metamoji/un/text/sprite/TextSprite;->setRendererMarkInViewMode(Z)V

    .line 1822
    iget-object p1, p0, Lcom/metamoji/un/text/UnTextUnit;->textSprite:Lcom/metamoji/un/text/sprite/TextSprite;

    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/un/text/model/TextModel;->getVerticalWriting()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/metamoji/un/text/sprite/TextSprite;->setVerticalWriting(Z)V

    return-void
.end method

.method public insertStrokes(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 3631
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->endReconvertTaskIfNeeded()V

    .line 3633
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Stage;->setQueueing(Z)V

    if-nez p2, :cond_0

    .line 3635
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/metamoji/un/text/model/TextModel;->insertStrokes(Ljava/util/List;)V

    goto :goto_0

    .line 3638
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/metamoji/un/text/model/TextModel;->insertText(Ljava/lang/String;Ljava/util/List;)V

    .line 3640
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/UnTextUnit;->setNeedsCheckCaretHideOrNot(Lcom/metamoji/un/text/model/TextPosition;)V

    .line 3641
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/metamoji/df/sprite/Stage;->setQueueing(Z)V

    .line 3644
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->isStrokeReeditMode()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3645
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/un/text/UnTextUnit;->_fromPosOnSearchNextReeditRange:Lcom/metamoji/un/text/model/TextPosition;

    .line 3646
    :cond_1
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->reeditNextStrokesLaterIfNeeded()V

    .line 3650
    sget-object p1, Lcom/metamoji/un/text/UnTextUnit$CancelModeType;->Menu:Lcom/metamoji/un/text/UnTextUnit$CancelModeType;

    invoke-direct {p0, p1}, Lcom/metamoji/un/text/UnTextUnit;->cancelMode(Lcom/metamoji/un/text/UnTextUnit$CancelModeType;)V

    return-void
.end method

.method public invalidateRange(Lcom/metamoji/un/text/model/TextRange;)V
    .locals 0

    if-nez p1, :cond_0

    .line 2548
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextModel;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object p1

    .line 2550
    :cond_0
    invoke-direct {p0, p1}, Lcom/metamoji/un/text/UnTextUnit;->getInvalidateRangeRect(Lcom/metamoji/un/text/model/TextRange;)Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/UnTextUnit;->setNeedsDisplay(Landroid/graphics/RectF;)V

    return-void
.end method

.method public isContentEmpty()Z
    .locals 1

    .line 3352
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->isContentEmpty()Z

    move-result v0

    return v0
.end method

.method public isEditableTextUnit()Z
    .locals 3

    .line 2195
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->_isOwnerAndEditability:Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 2198
    :cond_0
    invoke-static {}, Lcom/metamoji/un/text/UnTextUnit;->isEnableLockShareEditing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2199
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getPageController()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2201
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->isOnRestoringPurging()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->isTemporaryRestored()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2203
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2205
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 2208
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->isDoingUndoRedoCommand()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2211
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->isLockingShareEditing()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public isInComposition()Z
    .locals 1

    .line 10716
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->composingSpan:Lcom/metamoji/un/text/model/TextRange;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isLockingShareEditing()Z
    .locals 2

    .line 11387
    invoke-static {}, Lcom/metamoji/un/text/UnTextUnit;->isEnableLockShareEditing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11390
    iget-boolean v0, p0, Lcom/metamoji/un/text/UnTextUnit;->editing:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/metamoji/un/text/UnTextUnitStateManager;->sharedInstance()Lcom/metamoji/un/text/UnTextUnitStateManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getUnitId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/UnTextUnitStateManager;->isEdittingByOtherUsers(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isOwnerAndEditability()Z
    .locals 1

    .line 12503
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->allowToEditOthersWritings()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 12507
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getParent()Lcom/metamoji/df/controller/DfController;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtUnitController;

    .line 12508
    invoke-virtual {v0, p0}, Lcom/metamoji/nt/NtUnitController;->getAuthorInfoOfChild(Lcom/metamoji/nt/NtUnitController;)Lcom/metamoji/nt/NtAuthorInfo;

    move-result-object v0

    .line 12510
    invoke-static {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->isAuthorMyself(Lcom/metamoji/nt/NtAuthorInfo;)Z

    move-result v0

    return v0
.end method

.method public isSelectableTextUnit()Z
    .locals 3

    .line 2223
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->_isOwnerAndEditability:Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 2226
    :cond_0
    invoke-static {}, Lcom/metamoji/un/text/UnTextUnit;->isEnableLockShareEditing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2227
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getPageController()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2229
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->isOnRestoringPurging()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->isTemporaryRestored()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2231
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2233
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 2236
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->isDoingUndoRedoCommand()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2239
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->isLockingShareEditing()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public isStrokeReconvertMode()Z
    .locals 1

    .line 7755
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->isStrokeReeditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->_reeditMode:Lcom/metamoji/un/text/UnTextUnit$ReeditMode;

    invoke-static {v0}, Lcom/metamoji/un/text/UnTextUnit;->isReconvertMode(Lcom/metamoji/un/text/UnTextUnit$ReeditMode;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isStrokeReeditMode()Z
    .locals 1

    .line 7766
    iget-boolean v0, p0, Lcom/metamoji/un/text/UnTextUnit;->isStrokeReditMode:Z

    return v0
.end method

.method public isVisibleHotSpots()Z
    .locals 2

    .line 10659
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/metamoji/nt/NtDocument$EditMode;->VIEWMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    iget-object v1, p0, Lcom/metamoji/un/text/UnTextUnit;->editMode:Lcom/metamoji/nt/NtDocument$EditMode;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/metamoji/df/controller/ControllerContext$MediaType;->MEDIATYPE_NONE:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    iget-object v1, p0, Lcom/metamoji/un/text/UnTextUnit;->mediaType:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public killFocus(Z)V
    .locals 3

    .line 2053
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2055
    invoke-interface {p1}, Lcom/metamoji/nt/INtEditor;->getTextUnitInputStyleBar()Lcom/metamoji/nt/NtTextUnitInputStyleBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->setUnitController(Lcom/metamoji/un/text/UnTextUnit;)V

    .line 2062
    :cond_0
    sget-object p1, Lcom/metamoji/un/text/UnTextUnit$CancelModeType;->MenuAndStrokeReedit:Lcom/metamoji/un/text/UnTextUnit$CancelModeType;

    invoke-direct {p0, p1}, Lcom/metamoji/un/text/UnTextUnit;->cancelMode(Lcom/metamoji/un/text/UnTextUnit$CancelModeType;)V

    .line 2065
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->clearBackgroundColorToMazec()V

    .line 2068
    invoke-static {}, Lcom/metamoji/un/text/UnTextUnitStateManager;->sharedInstance()Lcom/metamoji/un/text/UnTextUnitStateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/text/UnTextUnitStateManager;->focusTextUnit()Lcom/metamoji/un/text/UnTextUnit;

    move-result-object p1

    if-ne p0, p1, :cond_1

    .line 2069
    invoke-static {}, Lcom/metamoji/un/text/UnTextUnitStateManager;->sharedInstance()Lcom/metamoji/un/text/UnTextUnitStateManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/metamoji/un/text/UnTextUnitStateManager;->setFocusTextUnit(Lcom/metamoji/un/text/UnTextUnit;)V

    .line 2073
    :cond_1
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v1, Lcom/metamoji/un/text/UnTextUnit$7;

    invoke-direct {v1, p0}, Lcom/metamoji/un/text/UnTextUnit$7;-><init>(Lcom/metamoji/un/text/UnTextUnit;)V

    invoke-virtual {p1, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 2085
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getInteractiveEventManager()Lcom/metamoji/nt/NtInteractiveEventManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/metamoji/nt/NtInteractiveEventManager;->removeLongPressListener(Lcom/metamoji/df/sprite/LongPressListener;)V

    .line 2086
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getInteractiveEventManager()Lcom/metamoji/nt/NtInteractiveEventManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/metamoji/nt/NtInteractiveEventManager;->removeViewportListener(Lcom/metamoji/df/sprite/ViewportListener;)V

    .line 2090
    iget-boolean p1, p0, Lcom/metamoji/un/text/UnTextUnit;->editing:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 2092
    iput-boolean v1, p0, Lcom/metamoji/un/text/UnTextUnit;->editing:Z

    .line 2094
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->setNeedsDisplay()V

    .line 2109
    :cond_2
    iget-object p1, p0, Lcom/metamoji/un/text/UnTextUnit;->insPtCurCtrl:Lcom/metamoji/un/text/UnTextUnit$InsertionPointCursorController;

    invoke-virtual {p1}, Lcom/metamoji/un/text/UnTextUnit$InsertionPointCursorController;->killFocus()V

    .line 2110
    iget-object p1, p0, Lcom/metamoji/un/text/UnTextUnit;->selModCurCtrl:Lcom/metamoji/un/text/UnTextUnit$SelectionModifierCursorController;

    invoke-virtual {p1}, Lcom/metamoji/un/text/UnTextUnit$SelectionModifierCursorController;->killFocus()V

    .line 2116
    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->isUseMazec()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2117
    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->getInstance()Lcom/metamoji/nt/NtMazecImsManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/nt/NtMazecImsManager;->finishInput()V

    .line 2120
    :cond_3
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v2, Lcom/metamoji/un/text/UnTextUnit$8;

    invoke-direct {v2, p0}, Lcom/metamoji/un/text/UnTextUnit$8;-><init>(Lcom/metamoji/un/text/UnTextUnit;)V

    invoke-virtual {p1, v2}, Lcom/metamoji/cm/CmTaskManager;->runOnUIThreadAsync(Ljava/lang/Runnable;)V

    .line 2130
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object p1

    iget-object p1, p1, Lcom/metamoji/un/text/model/TextModel;->unitControllerDelegate:Lcom/metamoji/un/text/IUnTextUnitDelegate;

    if-eqz p1, :cond_4

    .line 2131
    iget-object p1, p0, Lcom/metamoji/un/text/UnTextUnit;->_viewForSI:Lcom/metamoji/un/text/UnTextUnit$ViewForSoftInput;

    iget-object p1, p1, Lcom/metamoji/un/text/UnTextUnit$ViewForSoftInput;->_ic:Lcom/metamoji/un/text/TUInputConnection;

    invoke-virtual {p1}, Lcom/metamoji/un/text/TUInputConnection;->finishComposingText()Z

    .line 2134
    :cond_4
    invoke-static {v0}, Lcom/metamoji/nt/NtMazecImsManager;->setToggleListener(Lcom/metamoji/nt/NtMazecImsManager$ToggleListener;)V

    .line 2137
    invoke-static {p0}, Lcom/metamoji/ui/dialog/UiDialog;->removeOnGlobalShowDismissListener(Lcom/metamoji/ui/dialog/UiDialog$OnGlobalShowDismissListener;)V

    .line 2140
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->sendTextUnitData()V

    .line 2143
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->checkVisibleCursor()V

    .line 2146
    iget-object p1, p0, Lcom/metamoji/un/text/UnTextUnit;->textSprite:Lcom/metamoji/un/text/sprite/TextSprite;

    invoke-virtual {p1, v1}, Lcom/metamoji/un/text/sprite/TextSprite;->setRendererMarkInViewMode(Z)V

    .line 2154
    iget-object p1, p0, Lcom/metamoji/un/text/UnTextUnit;->hotSpotLocations:Ljava/util/List;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 2155
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/metamoji/un/text/model/TextModel;->needsRemakeLineTable(Lcom/metamoji/un/text/model/TextPosition;)V

    .line 2163
    :cond_5
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->isDirectable()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 2164
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/nt/NtDocument;->clearUndo()V

    :cond_6
    return-void
.end method

.method public lastSearchResultTextRange()Lcom/metamoji/un/text/model/TextRange;
    .locals 2

    .line 10390
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getSearchResults()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 10394
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getSearchResults()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    return-object v1

    .line 10400
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextModel;->getSearchResults()Ljava/util/List;

    move-result-object v1

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/text/model/TextRange;

    return-object v0
.end method

.method public linkHitTest(Landroid/graphics/PointF;)Ljava/lang/String;
    .locals 1

    .line 10704
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->isVisibleHotSpots()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10705
    invoke-direct {p0, p1}, Lcom/metamoji/un/text/UnTextUnit;->hotspotURLStringFromPoint(Landroid/graphics/PointF;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public listenBroadcast(Lcom/metamoji/df/controller/BroadcastContext;)Z
    .locals 6

    .line 1441
    invoke-super {p0, p1}, Lcom/metamoji/nt/NtUnitController;->listenBroadcast(Lcom/metamoji/df/controller/BroadcastContext;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1447
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->isVisibleHotSpots()Z

    move-result v0

    .line 1452
    iget-object v2, p0, Lcom/metamoji/un/text/UnTextUnit;->_isOwnerAndEditability:Ljava/lang/Boolean;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 1453
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->isOwnerAndEditability()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/metamoji/un/text/UnTextUnit;->_isOwnerAndEditability:Ljava/lang/Boolean;

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v3

    .line 1457
    :goto_0
    instance-of v4, p1, Lcom/metamoji/df/controller/MediaChangedBroadcastContext;

    if-eqz v4, :cond_3

    .line 1458
    check-cast p1, Lcom/metamoji/df/controller/MediaChangedBroadcastContext;

    .line 1460
    iget-object v2, p0, Lcom/metamoji/un/text/UnTextUnit;->mediaType:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    .line 1461
    invoke-virtual {p1}, Lcom/metamoji/df/controller/MediaChangedBroadcastContext;->getMediaType()Lcom/metamoji/df/controller/ControllerContext$MediaType;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/un/text/UnTextUnit;->mediaType:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    if-eq v2, p1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_3

    .line 1464
    :cond_3
    instance-of v4, p1, Lcom/metamoji/nt/NtToolModeChangedContext;

    if-eqz v4, :cond_4

    .line 1465
    check-cast p1, Lcom/metamoji/nt/NtToolModeChangedContext;

    .line 1467
    iget-object v2, p0, Lcom/metamoji/un/text/UnTextUnit;->editMode:Lcom/metamoji/nt/NtDocument$EditMode;

    .line 1468
    iget-object v4, p0, Lcom/metamoji/un/text/UnTextUnit;->toolMode:Lcom/metamoji/nt/NtDocument$ToolMode;

    .line 1469
    invoke-virtual {p1}, Lcom/metamoji/nt/NtToolModeChangedContext;->getEditMode()Lcom/metamoji/nt/NtDocument$EditMode;

    move-result-object v5

    iput-object v5, p0, Lcom/metamoji/un/text/UnTextUnit;->editMode:Lcom/metamoji/nt/NtDocument$EditMode;

    .line 1470
    invoke-virtual {p1}, Lcom/metamoji/nt/NtToolModeChangedContext;->getToolMode()Lcom/metamoji/nt/NtDocument$ToolMode;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/un/text/UnTextUnit;->toolMode:Lcom/metamoji/nt/NtDocument$ToolMode;

    .line 1471
    iget-object v5, p0, Lcom/metamoji/un/text/UnTextUnit;->editMode:Lcom/metamoji/nt/NtDocument$EditMode;

    if-ne v2, v5, :cond_5

    if-eq v4, p1, :cond_2

    goto :goto_1

    .line 1473
    :cond_4
    instance-of v4, p1, Lcom/metamoji/nt/NtTextUnitDropShadowStateChangeEventContext;

    if-eqz v4, :cond_6

    .line 1479
    instance-of p1, p1, Lcom/metamoji/ns/NsRoomSettingChangedEventContext;

    if-eqz p1, :cond_5

    .line 1480
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->isOwnerAndEditability()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/un/text/UnTextUnit;->_isOwnerAndEditability:Ljava/lang/Boolean;

    :cond_5
    :goto_1
    move v2, v1

    goto :goto_3

    .line 1484
    :cond_6
    instance-of p1, p1, Lcom/metamoji/ns/NsRoomSettingChangedEventContext;

    if-eqz p1, :cond_8

    .line 1485
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->isOwnerAndEditability()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/un/text/UnTextUnit;->_isOwnerAndEditability:Ljava/lang/Boolean;

    .line 1488
    iget-boolean v2, p0, Lcom/metamoji/un/text/UnTextUnit;->editing:Z

    if-eqz v2, :cond_7

    .line 1490
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_7

    move p1, v1

    goto :goto_2

    :cond_7
    move p1, v3

    :goto_2
    move v2, v1

    goto :goto_4

    :cond_8
    :goto_3
    move p1, v3

    .line 1500
    :goto_4
    iget-object v4, p0, Lcom/metamoji/un/text/UnTextUnit;->mediaType:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    sget-object v5, Lcom/metamoji/df/controller/ControllerContext$MediaType;->MEDIATYPE_NONE:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    if-ne v4, v5, :cond_9

    goto :goto_5

    :cond_9
    move v1, v3

    .line 1501
    :goto_5
    iget-object v4, p0, Lcom/metamoji/un/text/UnTextUnit;->textSprite:Lcom/metamoji/un/text/sprite/TextSprite;

    invoke-virtual {v4}, Lcom/metamoji/un/text/sprite/TextSprite;->isRenderSpellErrorMark()Z

    move-result v4

    if-eq v4, v1, :cond_a

    .line 1502
    iget-object v4, p0, Lcom/metamoji/un/text/UnTextUnit;->textSprite:Lcom/metamoji/un/text/sprite/TextSprite;

    invoke-virtual {v4, v1}, Lcom/metamoji/un/text/sprite/TextSprite;->setRenderSpellErrorMark(Z)V

    .line 1505
    :cond_a
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->checkVisibleCursor()V

    if-eqz v2, :cond_b

    .line 1509
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->setNeedsDisplay()V

    .line 1513
    :cond_b
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->isVisibleHotSpots()Z

    move-result v1

    if-eq v1, v0, :cond_d

    .line 1515
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->hotSpotLocations:Ljava/util/List;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c

    .line 1516
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/model/TextModel;->needsRemakeLineTable(Lcom/metamoji/un/text/model/TextPosition;)V

    .line 1520
    :cond_c
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->textSprite:Lcom/metamoji/un/text/sprite/TextSprite;

    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->isVisibleHotSpots()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/sprite/TextSprite;->setRendererMarkInViewMode(Z)V

    :cond_d
    if-eqz p1, :cond_e

    .line 1525
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/cm/CmTaskManager;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/metamoji/un/text/UnTextUnit$3;

    invoke-direct {v0, p0}, Lcom/metamoji/un/text/UnTextUnit$3;-><init>(Lcom/metamoji/un/text/UnTextUnit;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_e
    return v3
.end method

.method public localToViewPoint(Landroid/graphics/PointF;Landroid/view/View;)Landroid/graphics/PointF;
    .locals 1

    .line 8746
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getBaseSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/Sprite;->localToGlobal(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    .line 8749
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/Stage;->spriteToStage(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    .line 8752
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v0

    .line 8753
    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/Viewport;->stageToViewport(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    .line 8756
    invoke-static {p1, v0, p2}, Lcom/metamoji/cm/CmUtils;->transformPoint(Landroid/graphics/PointF;Landroid/view/View;Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public longPressCancel(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 0

    return-void
.end method

.method public longPressEnd(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 0

    return-void
.end method

.method public longPressMove(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 0

    return-void
.end method

.method public longPressStart(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 3

    .line 1302
    new-instance v0, Landroid/graphics/PointF;

    invoke-interface {p1}, Lcom/metamoji/df/sprite/TouchEvent;->getX()F

    move-result v1

    invoke-interface {p1}, Lcom/metamoji/df/sprite/TouchEvent;->getY()F

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {p0, v0}, Lcom/metamoji/un/text/UnTextUnit;->viewportToTextSprite(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    .line 1303
    iget v0, p1, Landroid/graphics/PointF;->x:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getWidth()F

    move-result v2

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    iget v0, p1, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getHeight()F

    move-result v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    .line 1305
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->isInComposition()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1308
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->appearContextMenu()V

    :cond_0
    return-void
.end method

.method public moveCaretToPoint(Landroid/graphics/PointF;)V
    .locals 1

    .line 2660
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/un/text/model/TextModel;->closestPositionToPoint(Landroid/graphics/PointF;)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    .line 2661
    new-instance v0, Lcom/metamoji/un/text/model/TextRange;

    invoke-direct {v0, p1}, Lcom/metamoji/un/text/model/TextRange;-><init>(Lcom/metamoji/un/text/model/TextPosition;)V

    .line 2662
    invoke-virtual {p0, v0}, Lcom/metamoji/un/text/UnTextUnit;->setSelectedTextRange(Lcom/metamoji/un/text/model/TextRange;)V

    const/4 p1, 0x1

    .line 2665
    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/UnTextUnit;->notifySelectedRangeChanged(Z)V

    return-void
.end method

.method public noFocusing()Z
    .locals 2

    .line 2179
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->_isOwnerAndEditability:Ljava/lang/Boolean;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 2182
    :cond_0
    invoke-static {}, Lcom/metamoji/un/text/UnTextUnit;->isEnableLockShareEditing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2185
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->isLockingShareEditing()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public notificateAuthorInfoCreating(Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;)V
    .locals 1

    .line 12196
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;->getAuthorInfo()Lcom/metamoji/nt/NtAuthorInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 12197
    invoke-static {}, Lcom/metamoji/nt/NtAuthorInfo;->newAuthorInfoOfNow()Lcom/metamoji/nt/NtAuthorInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;->setAuthorInfo(Lcom/metamoji/nt/NtAuthorInfo;)V

    :cond_0
    return-void
.end method

.method public notifySelectedRangeChanged()V
    .locals 1

    const/4 v0, 0x0

    .line 3486
    invoke-virtual {p0, v0, v0}, Lcom/metamoji/un/text/UnTextUnit;->notifySelectedRangeChanged(ZZ)V

    return-void
.end method

.method public notifySelectedRangeChanged(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 3489
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/un/text/UnTextUnit;->notifySelectedRangeChanged(ZZ)V

    return-void
.end method

.method public notifySelectedRangeChanged(ZZ)V
    .locals 2

    .line 3492
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getMazecAction()Lcom/metamoji/un/text/MazecAction;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3494
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextModel;->getStrokesBeforeCaret()Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/MazecAction;->notifyCursorChanged(Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;)V

    .line 3495
    :cond_0
    const-class v0, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/metamoji/un/text/UnTextUnit;->updateInputStyleBar(Ljava/util/EnumSet;)V

    .line 3500
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v0

    .line 3501
    invoke-static {}, Lcom/metamoji/un/text/UnTextUnit;->isCheckSpellingWhenTyping()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    if-eqz p2, :cond_3

    .line 3503
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/metamoji/un/text/model/TextModel;->getAttributesInRange(Lcom/metamoji/un/text/model/TextRange;)Lcom/metamoji/un/text/model/attr/Attributes;

    move-result-object p1

    const-class p2, Lcom/metamoji/un/text/model/attr/StringAttributes;

    invoke-static {p1, p2}, Lcom/metamoji/cm/CmUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/text/model/attr/StringAttributes;

    if-eqz p1, :cond_3

    .line 3505
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/attr/StringAttributes;->isSpellErrorMark()Z

    move-result p1

    if-nez p1, :cond_3

    .line 3506
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance p2, Lcom/metamoji/un/text/UnTextUnit$14;

    invoke-direct {p2, p0, v0}, Lcom/metamoji/un/text/UnTextUnit$14;-><init>(Lcom/metamoji/un/text/UnTextUnit;Lcom/metamoji/un/text/model/TextRange;)V

    invoke-virtual {p1, p2}, Lcom/metamoji/cm/CmTaskManager;->runOnUIThreadAsync(Ljava/lang/Runnable;)V

    .line 3535
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->updateImmSelection()V

    .line 3536
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->notifyImeCaretPos()V

    return-void
.end method

.method public onGlobalDialogDismiss()V
    .locals 1

    .line 1385
    invoke-static {}, Lcom/metamoji/un/text/UnTextUnit;->getFocusedTextUnit()Lcom/metamoji/un/text/UnTextUnit;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1387
    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->focusToViewForSoftInputAndShowSoftInput()V

    :cond_0
    return-void
.end method

.method public onGlobalDialogShow()V
    .locals 2

    .line 1369
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/text/UnTextUnit;->_viewForSI:Lcom/metamoji/un/text/UnTextUnit$ViewForSoftInput;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtEditorWindowController;->hideSoftInput(Landroid/view/View;)Z

    .line 1374
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1375
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->isSoftInputVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1376
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->_viewForSI:Lcom/metamoji/un/text/UnTextUnit$ViewForSoftInput;

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit$ViewForSoftInput;->clearFocus()V

    .line 1380
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->leaveStrokeReeditMode()Z

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5

    .line 896
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v0

    const/high16 v1, -0x80000000

    and-int/2addr v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const v4, 0x7fffffff

    and-int/2addr v0, v4

    if-eqz v0, :cond_8

    if-ltz v0, :cond_1

    const/16 p1, 0x1f

    if-le v0, p1, :cond_2

    :cond_1
    const/16 p1, 0x80

    if-gt p1, v0, :cond_5

    const/16 p1, 0x9f

    if-gt v0, p1, :cond_5

    .line 902
    :cond_2
    invoke-static {}, Lcom/metamoji/cm/CharacterSet;->newlineCharacterSet()Lcom/metamoji/cm/CharacterSet;

    move-result-object p1

    int-to-char p2, v0

    invoke-virtual {p1, p2}, Lcom/metamoji/cm/CharacterSet;->characterIsMember(I)Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 v0, 0xa

    goto :goto_1

    :cond_3
    const/16 p1, 0x9

    if-ne v0, p1, :cond_4

    move v0, p1

    goto :goto_1

    :cond_4
    return v2

    .line 910
    :cond_5
    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->isUseMazec()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 911
    sget p1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_HIDE_MAZEC_MESSAGE:I

    invoke-static {p1}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(I)V

    .line 912
    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->toggleImeAndMazec()V

    return v3

    .line 917
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->endReconvertTaskIfNeeded()V

    .line 919
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/metamoji/df/sprite/Stage;->setQueueing(Z)V

    if-nez v1, :cond_7

    .line 921
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "%c"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/un/text/model/TextModel;->insertText(Ljava/lang/String;)V

    goto :goto_2

    .line 923
    :cond_7
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/metamoji/un/text/model/TextModel;->insertCombiningAccent(I)V

    .line 924
    :goto_2
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/UnTextUnit;->setNeedsCheckCaretHideOrNot(Lcom/metamoji/un/text/model/TextPosition;)V

    .line 925
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/metamoji/df/sprite/Stage;->setQueueing(Z)V

    .line 926
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->notifySelectedRangeChanged()V

    .line 928
    sget-object p1, Lcom/metamoji/un/text/UnTextUnit$CancelModeType;->MenuAndStrokeReedit:Lcom/metamoji/un/text/UnTextUnit$CancelModeType;

    invoke-direct {p0, p1}, Lcom/metamoji/un/text/UnTextUnit;->cancelMode(Lcom/metamoji/un/text/UnTextUnit$CancelModeType;)V

    return v3

    :cond_8
    const/16 v0, 0x43

    if-ne v0, p1, :cond_a

    .line 935
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getComposingSpan()Lcom/metamoji/un/text/model/TextRange;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 936
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextModel;->getStringWsArrayObject()Lcom/metamoji/un/text/model/StringWithStrokesArray;

    move-result-object p1

    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getComposingSpan()Lcom/metamoji/un/text/model/TextRange;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->substringWithRange(Lcom/metamoji/un/text/model/TextRange;Z)Ljava/lang/CharSequence;

    move-result-object p1

    .line 937
    iget-object p2, p0, Lcom/metamoji/un/text/UnTextUnit;->_viewForSI:Lcom/metamoji/un/text/UnTextUnit$ViewForSoftInput;

    iget-object p2, p2, Lcom/metamoji/un/text/UnTextUnit$ViewForSoftInput;->_ic:Lcom/metamoji/un/text/TUInputConnection;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-interface {p1, v2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1, v3}, Lcom/metamoji/un/text/TUInputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    return v3

    .line 941
    :cond_9
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->endReconvertTaskIfNeeded()V

    .line 943
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/metamoji/df/sprite/Stage;->setQueueing(Z)V

    .line 944
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextModel;->deleteBackward()V

    .line 945
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/UnTextUnit;->setNeedsCheckCaretHideOrNot(Lcom/metamoji/un/text/model/TextPosition;)V

    .line 946
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/metamoji/df/sprite/Stage;->setQueueing(Z)V

    .line 947
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->notifySelectedRangeChanged()V

    .line 950
    sget-object p1, Lcom/metamoji/un/text/UnTextUnit$CancelModeType;->MenuAndStrokeReedit:Lcom/metamoji/un/text/UnTextUnit$CancelModeType;

    invoke-direct {p0, p1}, Lcom/metamoji/un/text/UnTextUnit;->cancelMode(Lcom/metamoji/un/text/UnTextUnit$CancelModeType;)V

    return v3

    :cond_a
    const/16 v0, 0x7a

    const/4 v1, 0x0

    if-eq p1, v0, :cond_d

    const/16 v0, 0x7b

    if-eq p1, v0, :cond_b

    packed-switch p1, :pswitch_data_0

    move-object p1, v1

    move-object v0, p1

    goto :goto_5

    .line 960
    :pswitch_0
    sget-object p1, Lcom/metamoji/un/text/model/TextLayoutDirection;->Right:Lcom/metamoji/un/text/model/TextLayoutDirection;

    goto :goto_3

    .line 958
    :pswitch_1
    sget-object p1, Lcom/metamoji/un/text/model/TextLayoutDirection;->Left:Lcom/metamoji/un/text/model/TextLayoutDirection;

    goto :goto_3

    .line 964
    :pswitch_2
    sget-object p1, Lcom/metamoji/un/text/model/TextLayoutDirection;->Down:Lcom/metamoji/un/text/model/TextLayoutDirection;

    goto :goto_3

    .line 962
    :pswitch_3
    sget-object p1, Lcom/metamoji/un/text/model/TextLayoutDirection;->Up:Lcom/metamoji/un/text/model/TextLayoutDirection;

    :goto_3
    move-object v0, v1

    goto :goto_5

    .line 976
    :cond_b
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 978
    sget-object p1, Lcom/metamoji/un/text/model/TextLayoutDirection;->Down:Lcom/metamoji/un/text/model/TextLayoutDirection;

    goto :goto_4

    .line 982
    :cond_c
    sget-object p1, Lcom/metamoji/un/text/model/TextLayoutDirection;->Right:Lcom/metamoji/un/text/model/TextLayoutDirection;

    goto :goto_4

    .line 966
    :cond_d
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 968
    sget-object p1, Lcom/metamoji/un/text/model/TextLayoutDirection;->Up:Lcom/metamoji/un/text/model/TextLayoutDirection;

    goto :goto_4

    .line 972
    :cond_e
    sget-object p1, Lcom/metamoji/un/text/model/TextLayoutDirection;->Left:Lcom/metamoji/un/text/model/TextLayoutDirection;

    :goto_4
    move-object v0, p1

    move-object p1, v1

    .line 986
    :goto_5
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v4

    if-eqz p1, :cond_13

    .line 988
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result p2

    if-eqz p2, :cond_11

    .line 989
    invoke-virtual {v4}, Lcom/metamoji/un/text/model/TextModel;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p2

    .line 990
    invoke-virtual {v4}, Lcom/metamoji/un/text/model/TextModel;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v0

    .line 991
    iget-boolean v1, p0, Lcom/metamoji/un/text/UnTextUnit;->_selectBack:Z

    if-eqz v1, :cond_f

    .line 992
    invoke-virtual {v4}, Lcom/metamoji/un/text/model/TextModel;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p2

    invoke-virtual {v4, p2, p1, v3}, Lcom/metamoji/un/text/model/TextModel;->positionFromPosition(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/TextLayoutDirection;I)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p2

    goto :goto_6

    .line 994
    :cond_f
    invoke-virtual {v4}, Lcom/metamoji/un/text/model/TextModel;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v0

    invoke-virtual {v4, v0, p1, v3}, Lcom/metamoji/un/text/model/TextModel;->positionFromPosition(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/TextLayoutDirection;I)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v0

    .line 996
    :goto_6
    invoke-virtual {p2, v0}, Lcom/metamoji/un/text/model/TextPosition;->compareTo(Lcom/metamoji/un/text/model/TextPosition;)I

    move-result p1

    if-gtz p1, :cond_10

    .line 997
    new-instance p1, Lcom/metamoji/un/text/model/TextRange;

    invoke-direct {p1, p2, v0}, Lcom/metamoji/un/text/model/TextRange;-><init>(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/TextPosition;)V

    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/UnTextUnit;->setSelectedTextRange(Lcom/metamoji/un/text/model/TextRange;)V

    goto :goto_7

    .line 999
    :cond_10
    iget-boolean p1, p0, Lcom/metamoji/un/text/UnTextUnit;->_selectBack:Z

    xor-int/2addr p1, v3

    iput-boolean p1, p0, Lcom/metamoji/un/text/UnTextUnit;->_selectBack:Z

    .line 1000
    new-instance p1, Lcom/metamoji/un/text/model/TextRange;

    invoke-direct {p1, v0, p2}, Lcom/metamoji/un/text/model/TextRange;-><init>(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/TextPosition;)V

    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/UnTextUnit;->setSelectedTextRange(Lcom/metamoji/un/text/model/TextRange;)V

    .line 1002
    :goto_7
    invoke-virtual {p0, v3}, Lcom/metamoji/un/text/UnTextUnit;->notifySelectedRangeChanged(Z)V

    goto :goto_9

    .line 1004
    :cond_11
    iget-boolean p2, p0, Lcom/metamoji/un/text/UnTextUnit;->_selectBack:Z

    if-eqz p2, :cond_12

    invoke-virtual {v4}, Lcom/metamoji/un/text/model/TextModel;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p2

    goto :goto_8

    :cond_12
    invoke-virtual {v4}, Lcom/metamoji/un/text/model/TextModel;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p2

    .line 1005
    :goto_8
    invoke-virtual {v4, p2, p1, v3}, Lcom/metamoji/un/text/model/TextModel;->positionFromPosition(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/TextLayoutDirection;I)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    .line 1006
    new-instance p2, Lcom/metamoji/un/text/model/TextRange;

    invoke-direct {p2, p1}, Lcom/metamoji/un/text/model/TextRange;-><init>(Lcom/metamoji/un/text/model/TextPosition;)V

    invoke-virtual {p0, p2}, Lcom/metamoji/un/text/UnTextUnit;->setSelectedTextRange(Lcom/metamoji/un/text/model/TextRange;)V

    .line 1007
    invoke-virtual {p0, v3}, Lcom/metamoji/un/text/UnTextUnit;->notifySelectedRangeChanged(Z)V

    :goto_9
    return v3

    :cond_13
    if-eqz v0, :cond_1d

    .line 1013
    iget-boolean p1, p0, Lcom/metamoji/un/text/UnTextUnit;->_selectBack:Z

    if-eqz p1, :cond_14

    invoke-virtual {v4}, Lcom/metamoji/un/text/model/TextModel;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    goto :goto_a

    :cond_14
    invoke-virtual {v4}, Lcom/metamoji/un/text/model/TextModel;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    .line 1015
    :goto_a
    iput-boolean v2, p0, Lcom/metamoji/un/text/UnTextUnit;->_selectBack:Z

    .line 1016
    sget-object v2, Lcom/metamoji/un/text/UnTextUnit$53;->$SwitchMap$com$metamoji$un$text$model$TextLayoutDirection:[I

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextLayoutDirection;->ordinal()I

    move-result v0

    aget v0, v2, v0

    if-eq v0, v3, :cond_1a

    const/4 v2, 0x2

    if-eq v0, v2, :cond_19

    const/4 v2, 0x3

    if-eq v0, v2, :cond_18

    const/4 v2, 0x4

    if-eq v0, v2, :cond_15

    goto :goto_c

    .line 1039
    :cond_15
    invoke-virtual {v4}, Lcom/metamoji/un/text/model/TextModel;->getLineTable()Lcom/metamoji/un/text/model/linetable/LineTable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineIndex(Lcom/metamoji/un/text/model/TextPosition;)I

    move-result v0

    add-int/2addr v0, v3

    .line 1040
    invoke-virtual {v4}, Lcom/metamoji/un/text/model/TextModel;->getLineTable()Lcom/metamoji/un/text/model/linetable/LineTable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineCount()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 1042
    invoke-virtual {v4}, Lcom/metamoji/un/text/model/TextModel;->getLineTable()Lcom/metamoji/un/text/model/linetable/LineTable;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineInfoAtIndex(I)Lcom/metamoji/un/text/model/linetable/LineInfo;

    move-result-object v0

    .line 1043
    invoke-virtual {v4}, Lcom/metamoji/un/text/model/TextModel;->getVerticalWriting()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1044
    iget-object v0, v0, Lcom/metamoji/un/text/model/linetable/LineInfo;->position:Lcom/metamoji/un/text/model/TextPosition;

    sget-object v1, Lcom/metamoji/un/text/model/TextLayoutDirection;->Up:Lcom/metamoji/un/text/model/TextLayoutDirection;

    invoke-virtual {v4, v0, v1, v3}, Lcom/metamoji/un/text/model/TextModel;->positionFromPosition(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/TextLayoutDirection;I)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v0

    goto :goto_b

    .line 1046
    :cond_16
    iget-object v0, v0, Lcom/metamoji/un/text/model/linetable/LineInfo;->position:Lcom/metamoji/un/text/model/TextPosition;

    sget-object v1, Lcom/metamoji/un/text/model/TextLayoutDirection;->Left:Lcom/metamoji/un/text/model/TextLayoutDirection;

    invoke-virtual {v4, v0, v1, v3}, Lcom/metamoji/un/text/model/TextModel;->positionFromPosition(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/TextLayoutDirection;I)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v0

    :goto_b
    move-object v1, v0

    goto :goto_c

    .line 1050
    :cond_17
    invoke-virtual {v4}, Lcom/metamoji/un/text/model/TextModel;->endOfDocument()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v1

    goto :goto_c

    .line 1030
    :cond_18
    iput-boolean v3, p0, Lcom/metamoji/un/text/UnTextUnit;->_selectBack:Z

    .line 1031
    invoke-virtual {v4}, Lcom/metamoji/un/text/model/TextModel;->getLineTable()Lcom/metamoji/un/text/model/linetable/LineTable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineIndex(Lcom/metamoji/un/text/model/TextPosition;)I

    move-result v0

    .line 1032
    invoke-virtual {v4}, Lcom/metamoji/un/text/model/TextModel;->getLineTable()Lcom/metamoji/un/text/model/linetable/LineTable;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineInfoAtIndex(I)Lcom/metamoji/un/text/model/linetable/LineInfo;

    move-result-object v0

    .line 1033
    iget-object v1, v0, Lcom/metamoji/un/text/model/linetable/LineInfo;->position:Lcom/metamoji/un/text/model/TextPosition;

    goto :goto_c

    .line 1025
    :cond_19
    invoke-virtual {v4}, Lcom/metamoji/un/text/model/TextModel;->endOfDocument()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v1

    goto :goto_c

    .line 1020
    :cond_1a
    iput-boolean v3, p0, Lcom/metamoji/un/text/UnTextUnit;->_selectBack:Z

    .line 1021
    invoke-virtual {v4}, Lcom/metamoji/un/text/model/TextModel;->beginningOfDocument()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v1

    .line 1057
    :goto_c
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result p2

    if-eqz p2, :cond_1c

    .line 1059
    invoke-virtual {p1, v1}, Lcom/metamoji/un/text/model/TextPosition;->compareTo(Lcom/metamoji/un/text/model/TextPosition;)I

    move-result p2

    if-gtz p2, :cond_1b

    .line 1060
    new-instance p2, Lcom/metamoji/un/text/model/TextRange;

    invoke-direct {p2, p1, v1}, Lcom/metamoji/un/text/model/TextRange;-><init>(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/TextPosition;)V

    invoke-virtual {p0, p2}, Lcom/metamoji/un/text/UnTextUnit;->setSelectedTextRange(Lcom/metamoji/un/text/model/TextRange;)V

    goto :goto_d

    .line 1063
    :cond_1b
    new-instance p2, Lcom/metamoji/un/text/model/TextRange;

    invoke-direct {p2, v1, p1}, Lcom/metamoji/un/text/model/TextRange;-><init>(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/TextPosition;)V

    invoke-virtual {p0, p2}, Lcom/metamoji/un/text/UnTextUnit;->setSelectedTextRange(Lcom/metamoji/un/text/model/TextRange;)V

    .line 1065
    :goto_d
    invoke-virtual {p0, v3}, Lcom/metamoji/un/text/UnTextUnit;->notifySelectedRangeChanged(Z)V

    goto :goto_e

    .line 1069
    :cond_1c
    new-instance p1, Lcom/metamoji/un/text/model/TextRange;

    invoke-direct {p1, v1}, Lcom/metamoji/un/text/model/TextRange;-><init>(Lcom/metamoji/un/text/model/TextPosition;)V

    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/UnTextUnit;->setSelectedTextRange(Lcom/metamoji/un/text/model/TextRange;)V

    .line 1070
    invoke-virtual {p0, v3}, Lcom/metamoji/un/text/UnTextUnit;->notifySelectedRangeChanged(Z)V

    :goto_e
    return v3

    :cond_1d
    return v2

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/16 p2, 0x17

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1082
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/un/text/UnTextUnit;->_viewForSI:Lcom/metamoji/un/text/UnTextUnit$ViewForSoftInput;

    invoke-virtual {p1, p2}, Lcom/metamoji/nt/NtEditorWindowController;->showSoftInput(Landroid/view/View;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onToggleImeAndMazecHideAfter()V
    .locals 2

    .line 2253
    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->isUseMazec()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2254
    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->getInstance()Lcom/metamoji/nt/NtMazecImsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtMazecImsManager;->finishInput()V

    .line 2257
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->_viewForSI:Lcom/metamoji/un/text/UnTextUnit$ViewForSoftInput;

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit$ViewForSoftInput;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 2259
    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public onToggleImeAndMazecShowBefore()V
    .locals 3

    .line 2268
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->_viewForSI:Lcom/metamoji/un/text/UnTextUnit$ViewForSoftInput;

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit$ViewForSoftInput;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 2270
    iget-object v1, p0, Lcom/metamoji/un/text/UnTextUnit;->_viewForSI:Lcom/metamoji/un/text/UnTextUnit$ViewForSoftInput;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 2272
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->isUseMazec()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2273
    new-instance v0, Landroid/view/inputmethod/EditorInfo;

    invoke-direct {v0}, Landroid/view/inputmethod/EditorInfo;-><init>()V

    .line 2274
    const-string v1, ""

    iput-object v1, v0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    .line 2275
    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->getInstance()Lcom/metamoji/nt/NtMazecImsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/un/text/UnTextUnit;->_viewForSI:Lcom/metamoji/un/text/UnTextUnit$ViewForSoftInput;

    invoke-virtual {v2, v0}, Lcom/metamoji/un/text/UnTextUnit$ViewForSoftInput;->createInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/metamoji/nt/NtMazecImsManager;->startInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V

    :cond_1
    return-void
.end method

.method public onViewportSizeChanged(Lcom/metamoji/cm/CmContext;)V
    .locals 1

    .line 10190
    iget-boolean p1, p0, Lcom/metamoji/un/text/UnTextUnit;->editing:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/metamoji/df/controller/ControllerContext$MediaType;->MEDIATYPE_NONE:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->mediaType:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/metamoji/nt/NtDocument$EditMode;->EDITMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->editMode:Lcom/metamoji/nt/NtDocument$EditMode;

    if-ne p1, v0, :cond_0

    .line 10192
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextModel;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/metamoji/un/text/UnTextUnit;->setNeedsCheckCaretHideOrNot(Lcom/metamoji/un/text/model/TextPosition;Z)V

    :cond_0
    return-void
.end method

.method public overrideAttributesByStyleBar(Lcom/metamoji/un/text/model/attr/Attributes;)Lcom/metamoji/un/text/model/attr/Attributes;
    .locals 1

    .line 11224
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 11226
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getTextUnitInputStyleBar()Lcom/metamoji/nt/NtTextUnitInputStyleBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->overrideAttributes(Lcom/metamoji/un/text/model/attr/Attributes;)Lcom/metamoji/un/text/model/attr/Attributes;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public pageActivated(Lcom/metamoji/df/controller/DfPageController;)V
    .locals 1

    .line 10157
    invoke-super {p0, p1}, Lcom/metamoji/nt/NtUnitController;->pageActivated(Lcom/metamoji/df/controller/DfPageController;)V

    .line 10160
    invoke-static {}, Lcom/metamoji/un/text/UnTextUnitStateManager;->sharedInstance()Lcom/metamoji/un/text/UnTextUnitStateManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/metamoji/un/text/UnTextUnitStateManager;->addTextUnitInPage(Lcom/metamoji/un/text/UnTextUnit;Lcom/metamoji/df/controller/DfPageController;)V

    return-void
.end method

.method public pageDeactivating(Lcom/metamoji/df/controller/DfPageController;)V
    .locals 0

    .line 10172
    invoke-super {p0, p1}, Lcom/metamoji/nt/NtUnitController;->pageDeactivating(Lcom/metamoji/df/controller/DfPageController;)V

    .line 10174
    invoke-static {}, Lcom/metamoji/un/text/UnTextUnitStateManager;->sharedInstance()Lcom/metamoji/un/text/UnTextUnitStateManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/metamoji/un/text/UnTextUnitStateManager;->removeTextUnitInPage(Lcom/metamoji/un/text/UnTextUnit;)V

    .line 10177
    iget-boolean p1, p0, Lcom/metamoji/un/text/UnTextUnit;->editing:Z

    if-eqz p1, :cond_0

    .line 10179
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->sendTextUnitData()V

    :cond_0
    return-void
.end method

.method public penStyleFromSelection(Ljava/lang/Object;)Lcom/metamoji/nt/share/NtPenStyle;
    .locals 0

    .line 9471
    check-cast p1, Lcom/metamoji/un/text/UnTextUnit$PenStyleSet;

    iget-object p1, p1, Lcom/metamoji/un/text/UnTextUnit$PenStyleSet;->penStyle:Lcom/metamoji/nt/share/NtPenStyle;

    return-object p1
.end method

.method public performCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z
    .locals 2

    .line 3382
    sget-object v0, Lcom/metamoji/un/text/UnTextUnit$53;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    invoke-virtual {p1}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 3413
    :pswitch_0
    sget-object v0, Lcom/metamoji/un/text/UnTextUnit$CommandId;->SelectAll:Lcom/metamoji/un/text/UnTextUnit$CommandId;

    invoke-virtual {p0, v0}, Lcom/metamoji/un/text/UnTextUnit;->canPerformCommand(Lcom/metamoji/un/text/UnTextUnit$CommandId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3414
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->commandSelectAll()V

    goto :goto_0

    .line 3409
    :pswitch_1
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->commandCut()V

    goto :goto_0

    .line 3406
    :pswitch_2
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->commandCopy()V

    goto :goto_0

    .line 3403
    :pswitch_3
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->commandPaste()V

    goto :goto_0

    .line 3399
    :pswitch_4
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->handleChangeTextUnitVerticalWriting()V

    goto :goto_0

    .line 3396
    :pswitch_5
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->commandTextInputStyleBar()V

    goto :goto_0

    .line 3393
    :pswitch_6
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->appearContextMenu()V

    goto :goto_0

    :pswitch_7
    const/high16 v0, -0x40800000    # -1.0f

    .line 3390
    invoke-direct {p0, v0}, Lcom/metamoji/un/text/UnTextUnit;->commandTextUnitFontSizeIncDec(F)V

    goto :goto_0

    :pswitch_8
    const/high16 v0, 0x3f800000    # 1.0f

    .line 3386
    invoke-direct {p0, v0}, Lcom/metamoji/un/text/UnTextUnit;->commandTextUnitFontSizeIncDec(F)V

    .line 3420
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/metamoji/nt/NtUnitController;->performCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public performUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V
    .locals 2

    .line 3728
    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v0

    .line 3729
    const-string/jumbo v1, "textUnitUndo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3730
    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/text/UnTextUnit;->performTextEditUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V

    return-void

    .line 3735
    :cond_0
    const-string/jumbo p1, "unknown undo model type ({0})"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public preDestroyController(Lcom/metamoji/df/controller/ControllerContext;)V
    .locals 5

    .line 1833
    iget-boolean v0, p0, Lcom/metamoji/un/text/UnTextUnit;->editing:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/metamoji/un/text/UnTextUnitStateManager;->sharedInstance()Lcom/metamoji/un/text/UnTextUnitStateManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getUnitId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/metamoji/un/text/UnTextUnitStateManager;->isEdittingByOtherUsers(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1835
    invoke-virtual {p1}, Lcom/metamoji/df/controller/ControllerContext;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/metamoji/df/controller/ControllerContext;->isPurged()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/metamoji/df/controller/ControllerContext;->isRestored()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1837
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1839
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 1842
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->isDoingUndoRedoCommand()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1843
    invoke-static {}, Lcom/metamoji/un/text/UnTextUnitStateManager;->sharedInstance()Lcom/metamoji/un/text/UnTextUnitStateManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getUnitId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/metamoji/un/text/UnTextUnitStateManager;->getOtherEdittingUserIdWithUnitId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1846
    invoke-static {}, Lcom/metamoji/un/text/UnTextUnitStateManager;->sharedInstance()Lcom/metamoji/un/text/UnTextUnitStateManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getUnitId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/metamoji/un/text/UnTextUnitStateManager;->removeEditUserInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1849
    :cond_1
    invoke-static {}, Lcom/metamoji/un/text/UnTextUnitStateManager;->sharedInstance()Lcom/metamoji/un/text/UnTextUnitStateManager;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Lcom/metamoji/un/text/UnTextUnitStateManager;->changeEditStateProperty(Lcom/metamoji/un/text/UnTextUnit;Z)V

    .line 1855
    :cond_2
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->unregisterCollaboHandler()V

    .line 1858
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getDocTagManager()Lcom/metamoji/ctold/CtDocTagManager;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1859
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->_tagChangedEventHandler:Lcom/metamoji/cm/ICmEventHandler;

    invoke-virtual {p0, v0}, Lcom/metamoji/un/text/UnTextUnit;->removeTagEventHandler(Lcom/metamoji/cm/ICmEventHandler;)V

    .line 1862
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getAppFrame()Lcom/metamoji/nt/INtAppFrame;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/metamoji/nt/INtAppFrame;->removeUndoOrRedoListener(Lcom/metamoji/nt/IUndoOrRedoEventHandler;)V

    .line 1885
    iput-boolean v2, p0, Lcom/metamoji/un/text/UnTextUnit;->_alive:Z

    .line 1886
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    iput-object v1, v0, Lcom/metamoji/un/text/model/TextModel;->unitControllerDelegate:Lcom/metamoji/un/text/IUnTextUnitDelegate;

    .line 1888
    invoke-super {p0, p1}, Lcom/metamoji/nt/NtUnitController;->preDestroyController(Lcom/metamoji/df/controller/ControllerContext;)V

    return-void
.end method

.method public processInhibitCommand(Lcom/metamoji/nt/NtCommand;)Z
    .locals 1

    .line 9441
    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_UNDO:Lcom/metamoji/nt/NtCommand;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_REDO:Lcom/metamoji/nt/NtCommand;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_FONTSIZE_BIGGER:Lcom/metamoji/nt/NtCommand;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_FONTSIZE_SMALLER:Lcom/metamoji/nt/NtCommand;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_SEARCH_TEXT_PREV:Lcom/metamoji/nt/NtCommand;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_SEARCH_TEXT_NEXT:Lcom/metamoji/nt/NtCommand;

    if-ne p1, v0, :cond_1

    .line 9447
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->isInComposition()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 9450
    :cond_1
    invoke-super {p0, p1}, Lcom/metamoji/nt/NtUnitController;->processInhibitCommand(Lcom/metamoji/nt/NtCommand;)Z

    move-result p1

    return p1
.end method

.method public remakeLineTableAfter()V
    .locals 9

    .line 8677
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/model/TextModel;->makeParagraphTable(Lcom/metamoji/un/text/model/TextPosition;)V

    .line 8679
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->_taggedParagraphDic:Ljava/util/Map;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 8680
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8682
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/TextModel;->getParagraphTable()Lcom/metamoji/un/text/model/paragtable/ParagraphTable;

    move-result-object v2

    .line 8683
    invoke-virtual {v2}, Lcom/metamoji/un/text/model/paragtable/ParagraphTable;->count()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    .line 8685
    invoke-virtual {v2, v4}, Lcom/metamoji/un/text/model/paragtable/ParagraphTable;->paragraphInfoAt(I)Lcom/metamoji/un/text/model/paragtable/ParagraphInfo;

    move-result-object v5

    check-cast v5, Lcom/metamoji/un/text/model/paragtable/TaggedParagraphInfo;

    .line 8686
    invoke-virtual {v5}, Lcom/metamoji/un/text/model/paragtable/TaggedParagraphInfo;->getParagraphStyle()Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Lcom/metamoji/un/text/model/paragtable/TaggedParagraphInfo;->getParagraphStyle()Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->getTagId()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_0
    move-object v6, v1

    .line 8687
    :goto_1
    iget-object v7, p0, Lcom/metamoji/un/text/UnTextUnit;->_taggedParagraphDic:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/metamoji/cm/RectEx;

    if-eqz v7, :cond_2

    .line 8689
    invoke-virtual {v5}, Lcom/metamoji/un/text/model/paragtable/TaggedParagraphInfo;->getObjectBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v8

    .line 8690
    invoke-virtual {v7, v8}, Lcom/metamoji/cm/RectEx;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 8692
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8695
    :cond_1
    iget-object v5, p0, Lcom/metamoji/un/text/UnTextUnit;->_taggedParagraphDic:Ljava/util/Map;

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 8698
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 8699
    invoke-virtual {p0, v0}, Lcom/metamoji/un/text/UnTextUnit;->notifyObjectsGeometricChanged(Ljava/util/List;)V

    .line 8701
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v2

    new-instance v3, Lcom/metamoji/un/text/UnTextUnit$37;

    invoke-direct {v3, p0, v0}, Lcom/metamoji/un/text/UnTextUnit$37;-><init>(Lcom/metamoji/un/text/UnTextUnit;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lcom/metamoji/cm/CmTaskManager;->runOnUIThreadAsync(Ljava/lang/Runnable;)V

    .line 8707
    :cond_4
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->_taggedParagraphDic:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 8709
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/metamoji/un/text/UnTextUnit;->_taggedParagraphDic:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 8710
    iget-object v2, p0, Lcom/metamoji/un/text/UnTextUnit;->_taggedParagraphDic:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 8711
    new-instance v4, Lcom/metamoji/un/text/model/paragtable/TaggedParagraphInfo;

    invoke-direct {v4, p0, v3}, Lcom/metamoji/un/text/model/paragtable/TaggedParagraphInfo;-><init>(Lcom/metamoji/un/text/UnTextUnit;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 8715
    :cond_5
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v2

    new-instance v3, Lcom/metamoji/un/text/UnTextUnit$38;

    invoke-direct {v3, p0, v0}, Lcom/metamoji/un/text/UnTextUnit$38;-><init>(Lcom/metamoji/un/text/UnTextUnit;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lcom/metamoji/cm/CmTaskManager;->runOnUIThreadAsync(Ljava/lang/Runnable;)V

    .line 8722
    :cond_6
    iput-object v1, p0, Lcom/metamoji/un/text/UnTextUnit;->_taggedParagraphDic:Ljava/util/Map;

    return-void
.end method

.method public remakeLineTableBefore()V
    .locals 7

    .line 8643
    new-instance v0, Lcom/metamoji/un/text/model/paragtable/TaggedParagraphInfoFactory;

    invoke-direct {v0, p0}, Lcom/metamoji/un/text/model/paragtable/TaggedParagraphInfoFactory;-><init>(Lcom/metamoji/un/text/UnTextUnit;)V

    .line 8644
    invoke-static {v0}, Lcom/metamoji/un/text/model/paragtable/ParagraphInfoFactory;->setFactory(Lcom/metamoji/un/text/model/paragtable/ParagraphInfoFactory;)V

    const/4 v0, 0x0

    .line 8647
    iput-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->_taggedParagraphDic:Ljava/util/Map;

    .line 8648
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextModel;->getParagraphTable()Lcom/metamoji/un/text/model/paragtable/ParagraphTable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 8650
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/metamoji/un/text/UnTextUnit;->_taggedParagraphDic:Ljava/util/Map;

    .line 8651
    invoke-virtual {v1}, Lcom/metamoji/un/text/model/paragtable/ParagraphTable;->count()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 8653
    invoke-virtual {v1, v3}, Lcom/metamoji/un/text/model/paragtable/ParagraphTable;->paragraphInfoAt(I)Lcom/metamoji/un/text/model/paragtable/ParagraphInfo;

    move-result-object v4

    check-cast v4, Lcom/metamoji/un/text/model/paragtable/TaggedParagraphInfo;

    .line 8654
    invoke-virtual {v4}, Lcom/metamoji/un/text/model/paragtable/TaggedParagraphInfo;->getParagraphStyle()Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/metamoji/un/text/model/paragtable/TaggedParagraphInfo;->getParagraphStyle()Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->getTagId()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_0
    move-object v5, v0

    :goto_1
    if-eqz v5, :cond_1

    .line 8660
    :try_start_0
    invoke-virtual {v4}, Lcom/metamoji/un/text/model/paragtable/TaggedParagraphInfo;->getObjectBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 8663
    :catchall_0
    new-instance v4, Lcom/metamoji/cm/RectEx;

    invoke-direct {v4}, Lcom/metamoji/cm/RectEx;-><init>()V

    .line 8667
    :goto_2
    iget-object v6, p0, Lcom/metamoji/un/text/UnTextUnit;->_taggedParagraphDic:Ljava/util/Map;

    if-eqz v6, :cond_1

    .line 8668
    invoke-interface {v6, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public removeSpellErrorLocations(Lcom/metamoji/un/text/model/TextPosition;)V
    .locals 7

    .line 11553
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    .line 11554
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getStringWsArrayObject()Lcom/metamoji/un/text/model/StringWithStrokesArray;

    move-result-object v1

    .line 11555
    invoke-virtual {v1, p1}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->attributesAt(Lcom/metamoji/un/text/model/TextPosition;)Lcom/metamoji/un/text/model/attr/Attributes;

    move-result-object v2

    const-class v3, Lcom/metamoji/un/text/model/attr/StringAttributes;

    invoke-static {v2, v3}, Lcom/metamoji/cm/CmUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/text/model/attr/StringAttributes;

    if-eqz v2, :cond_0

    .line 11557
    invoke-virtual {v2}, Lcom/metamoji/un/text/model/attr/StringAttributes;->isSpellErrorMark()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const/4 v2, -0x1

    .line 11558
    invoke-virtual {v0, p1, v2}, Lcom/metamoji/un/text/model/TextModel;->positionFromPosition(Lcom/metamoji/un/text/model/TextPosition;I)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    .line 11559
    invoke-virtual {v1, p1}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->attributesAt(Lcom/metamoji/un/text/model/TextPosition;)Lcom/metamoji/un/text/model/attr/Attributes;

    move-result-object v2

    const-class v3, Lcom/metamoji/un/text/model/attr/StringAttributes;

    invoke-static {v2, v3}, Lcom/metamoji/cm/CmUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/text/model/attr/StringAttributes;

    :cond_1
    if-eqz v2, :cond_2

    .line 11562
    invoke-virtual {v2}, Lcom/metamoji/un/text/model/attr/StringAttributes;->isSpellErrorMark()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 11564
    sget-object v3, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->SpellErrorMark:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-static {v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p1}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->rangeForSameAttributes(Lcom/metamoji/un/text/model/attr/Attributes;Ljava/util/EnumSet;Lcom/metamoji/un/text/model/TextPosition;)Lcom/metamoji/un/text/model/TextRange;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 11568
    new-instance v1, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    invoke-direct {v1}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;-><init>()V

    const/4 v2, 0x0

    .line 11569
    invoke-virtual {v1, v2}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->setSpellErrorMark(Z)V

    .line 11571
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/metamoji/un/text/model/TextModel;->positionFromPosition(Lcom/metamoji/un/text/model/TextPosition;I)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v2

    .line 11572
    new-instance v6, Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    invoke-direct {v6, p1, v2}, Lcom/metamoji/un/text/model/TextRange;-><init>(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/TextPosition;)V

    .line 11574
    sget-object p1, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->SpellErrorMark:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-static {p1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    const-class p1, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

    .line 11575
    invoke-static {p1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 11574
    invoke-virtual/range {v0 .. v6}, Lcom/metamoji/un/text/model/TextModel;->putTextAttributesCore(Lcom/metamoji/un/text/model/attr/StringAttributes;Ljava/util/EnumSet;Lcom/metamoji/mazecclient/stroke/IStrokeStyle;Lcom/metamoji/mazecclient/stroke/IStrokePenInfo;Ljava/util/EnumSet;Lcom/metamoji/un/text/model/TextRange;)V

    :cond_2
    return-void
.end method

.method public requestCursorUpdates(I)Z
    .locals 1

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    .line 10765
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->updateImeCaretPos()V

    :cond_0
    and-int/lit8 p1, p1, 0x2

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 10767
    :goto_0
    iput-boolean p1, p0, Lcom/metamoji/un/text/UnTextUnit;->_monitorCaretPos:Z

    return v0
.end method

.method public rubberBandChanged(Lcom/metamoji/df/controller/GeometricProps;)Z
    .locals 12

    .line 2706
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->leaveStrokeReeditMode()Z

    .line 2710
    iget-object v0, p1, Lcom/metamoji/df/controller/GeometricProps;->size:Lcom/metamoji/cm/SizeF;

    if-eqz v0, :cond_2

    .line 2711
    new-instance v0, Lcom/metamoji/cm/SizeF;

    iget-object v1, p1, Lcom/metamoji/df/controller/GeometricProps;->size:Lcom/metamoji/cm/SizeF;

    invoke-direct {v0, v1}, Lcom/metamoji/cm/SizeF;-><init>(Lcom/metamoji/cm/SizeF;)V

    .line 2712
    iget v1, v0, Lcom/metamoji/cm/SizeF;->width:F

    const/4 v2, 0x0

    cmpl-float v1, v2, v1

    const/high16 v3, 0x3f000000    # 0.5f

    if-nez v1, :cond_0

    .line 2713
    iput v3, v0, Lcom/metamoji/cm/SizeF;->width:F

    .line 2714
    :cond_0
    iget v1, v0, Lcom/metamoji/cm/SizeF;->height:F

    cmpl-float v1, v2, v1

    if-nez v1, :cond_1

    .line 2715
    iput v3, v0, Lcom/metamoji/cm/SizeF;->height:F

    .line 2716
    :cond_1
    iget-object v1, p1, Lcom/metamoji/df/controller/GeometricProps;->size:Lcom/metamoji/cm/SizeF;

    invoke-virtual {v1, v0}, Lcom/metamoji/cm/SizeF;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2717
    iput-object v0, p1, Lcom/metamoji/df/controller/GeometricProps;->size:Lcom/metamoji/cm/SizeF;

    .line 2724
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Stage;->setQueueing(Z)V

    const/4 v0, 0x0

    .line 2727
    iput-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->preResizeUndoData:Ljava/util/Map;

    const/4 v0, 0x0

    .line 2728
    iput-boolean v0, p0, Lcom/metamoji/un/text/UnTextUnit;->inhibitAddSelfResizeUndo:Z

    .line 2730
    const-string/jumbo v1, "textUnitResize"

    invoke-virtual {p0, v1}, Lcom/metamoji/un/text/UnTextUnit;->startEditTextTask(Ljava/lang/String;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    move-object v2, p0

    move-object v3, p1

    .line 2731
    invoke-direct/range {v2 .. v11}, Lcom/metamoji/un/text/UnTextUnit;->setGeometricPropsSelf(Lcom/metamoji/df/controller/GeometricProps;Lcom/metamoji/un/text/model/undo/ITextUndoManager;ZZZLjava/util/List;ZLjava/util/Map;Z)Z

    move-result p1

    .line 2732
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->endEditTextTask()V

    .line 2734
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/metamoji/df/sprite/Stage;->setQueueing(Z)V

    return p1
.end method

.method public scrollChanged()V
    .locals 0

    .line 1355
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->notifyImeCaretPos()V

    return-void
.end method

.method public scrollChanging()V
    .locals 0

    return-void
.end method

.method public scrollEnd(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 1330
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->scrollEnd()V

    :cond_0
    return-void
.end method

.method public scrollInertiaEnd(Z)V
    .locals 0

    .line 1333
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->scrollEnd()V

    return-void
.end method

.method public scrollInertiaStart()V
    .locals 0

    return-void
.end method

.method public scrollStart()V
    .locals 0

    .line 1320
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->hideControllers()V

    return-void
.end method

.method public selectRangeAfterSendStrokes(I)V
    .locals 2

    .line 8003
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->isStrokeReeditMode()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-lez p1, :cond_1

    .line 8009
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v0

    .line 8010
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/metamoji/un/text/model/TextModel;->positionFromPosition(Lcom/metamoji/un/text/model/TextPosition;I)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    .line 8011
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/metamoji/un/text/model/TextModel;->textRangeFromPosition(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/TextPosition;)Lcom/metamoji/un/text/model/TextRange;

    move-result-object p1

    .line 8012
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/metamoji/un/text/model/TextPosition;->lineEndPosition:Z

    .line 8015
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/un/text/model/TextModel;->setSelectedTextRange(Lcom/metamoji/un/text/model/TextRange;)V

    .line 8017
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/un/text/UnTextUnit;->_fromPosOnSearchNextReeditRange:Lcom/metamoji/un/text/model/TextPosition;

    .line 8019
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->notifySelectedRangeChanged()V

    .line 8021
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextModel;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/UnTextUnit;->setNeedsCheckCaretHideOrNot(Lcom/metamoji/un/text/model/TextPosition;)V

    .line 8027
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->setNeedsDisplay()V

    .line 8031
    iget-object p1, p0, Lcom/metamoji/un/text/UnTextUnit;->selModCurCtrl:Lcom/metamoji/un/text/UnTextUnit$SelectionModifierCursorController;

    invoke-virtual {p1}, Lcom/metamoji/un/text/UnTextUnit$SelectionModifierCursorController;->show()V

    return-void

    .line 8035
    :cond_1
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->leaveStrokeReeditMode()Z

    return-void
.end method

.method public sendModifiedInfomation()V
    .locals 1

    const/4 v0, 0x0

    .line 8149
    invoke-virtual {p0, v0}, Lcom/metamoji/un/text/UnTextUnit;->sendModifiedInfomation(Z)V

    return-void
.end method

.method public sendModifiedInfomation(Z)V
    .locals 1

    .line 8152
    iget-boolean v0, p0, Lcom/metamoji/un/text/UnTextUnit;->editing:Z

    if-eqz v0, :cond_1

    .line 8153
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->enableSendTextUnitEdittingData()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 8154
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->sendTextUnitEdittingData()V

    :cond_0
    return-void

    .line 8157
    :cond_1
    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/UnTextUnit;->sendTextUnitDataWithRegardDirectionFlag(Z)V

    return-void
.end method

.method public sendTextUnitData()V
    .locals 1

    const/4 v0, 0x0

    .line 11638
    invoke-virtual {p0, v0}, Lcom/metamoji/un/text/UnTextUnit;->sendTextUnitDataWithRegardDirectionFlag(Z)V

    return-void
.end method

.method public sendTextUnitDataWithRegardDirectionFlag(Z)V
    .locals 3

    .line 11647
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->stopSendToCollaboTimer()V

    .line 11649
    const-string/jumbo v0, "textmode.direction.regard"

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 11650
    iget-object v2, p0, Lcom/metamoji/un/text/UnTextUnit;->_model:Lcom/metamoji/df/model/IModel;

    invoke-interface {v2, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V

    .line 11654
    :cond_0
    invoke-direct {p0, v1}, Lcom/metamoji/un/text/UnTextUnit;->sendTextDataDirection(Z)V

    if-eqz p1, :cond_1

    .line 11657
    iget-object p1, p0, Lcom/metamoji/un/text/UnTextUnit;->_model:Lcom/metamoji/df/model/IModel;

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public sendTextUnitEdittingData()V
    .locals 4

    .line 11666
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->stopSendToCollaboTimer()V

    .line 11669
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->enableSendTextUnitEdittingData()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 11673
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->_timerForSendToCollabo:Ljava/util/Timer;

    .line 11674
    new-instance v1, Lcom/metamoji/un/text/UnTextUnit$49;

    invoke-direct {v1, p0}, Lcom/metamoji/un/text/UnTextUnit$49;-><init>(Lcom/metamoji/un/text/UnTextUnit;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public setCollaboOtherEdittingFlag(Z)V
    .locals 1

    .line 12146
    iget-boolean v0, p0, Lcom/metamoji/un/text/UnTextUnit;->_collaboOtherEditting:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 12150
    :cond_0
    iput-boolean p1, p0, Lcom/metamoji/un/text/UnTextUnit;->_collaboOtherEditting:Z

    .line 12151
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->setNeedsDisplay()V

    return-void
.end method

.method public setComposingSpan(Lcom/metamoji/un/text/model/TextRange;)V
    .locals 2

    .line 10724
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->composingSpan:Lcom/metamoji/un/text/model/TextRange;

    if-eq p1, v0, :cond_3

    if-eqz p1, :cond_0

    .line 10725
    invoke-virtual {p1, v0}, Lcom/metamoji/un/text/model/TextRange;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 10727
    :cond_0
    iput-object p1, p0, Lcom/metamoji/un/text/UnTextUnit;->composingSpan:Lcom/metamoji/un/text/model/TextRange;

    .line 10728
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->setNeedsDisplay()V

    .line 10729
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    .line 10730
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->composingSpan:Lcom/metamoji/un/text/model/TextRange;

    if-eqz v0, :cond_1

    .line 10732
    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_UNDO:Lcom/metamoji/nt/NtCommand;

    sget-object v1, Lcom/metamoji/nt/NtCommandManager$Grayout;->DISABLE:Lcom/metamoji/nt/NtCommandManager$Grayout;

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/nt/NtCommandManager;->enableCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/NtCommandManager$Grayout;)Z

    .line 10733
    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_REDO:Lcom/metamoji/nt/NtCommand;

    sget-object v1, Lcom/metamoji/nt/NtCommandManager$Grayout;->DISABLE:Lcom/metamoji/nt/NtCommandManager$Grayout;

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/nt/NtCommandManager;->enableCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/NtCommandManager$Grayout;)Z

    .line 10734
    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_FONTSIZE_BIGGER:Lcom/metamoji/nt/NtCommand;

    sget-object v1, Lcom/metamoji/nt/NtCommandManager$Grayout;->DISABLE:Lcom/metamoji/nt/NtCommandManager$Grayout;

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/nt/NtCommandManager;->enableCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/NtCommandManager$Grayout;)Z

    .line 10735
    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_FONTSIZE_SMALLER:Lcom/metamoji/nt/NtCommand;

    sget-object v1, Lcom/metamoji/nt/NtCommandManager$Grayout;->DISABLE:Lcom/metamoji/nt/NtCommandManager$Grayout;

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/nt/NtCommandManager;->enableCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/NtCommandManager$Grayout;)Z

    .line 10736
    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_SEARCH_TEXT_NEXT:Lcom/metamoji/nt/NtCommand;

    sget-object v1, Lcom/metamoji/nt/NtCommandManager$Grayout;->DISABLE:Lcom/metamoji/nt/NtCommandManager$Grayout;

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/nt/NtCommandManager;->enableCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/NtCommandManager$Grayout;)Z

    .line 10737
    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_SEARCH_TEXT_PREV:Lcom/metamoji/nt/NtCommand;

    sget-object v1, Lcom/metamoji/nt/NtCommandManager$Grayout;->DISABLE:Lcom/metamoji/nt/NtCommandManager$Grayout;

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/nt/NtCommandManager;->enableCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/NtCommandManager$Grayout;)Z

    goto :goto_0

    .line 10741
    :cond_1
    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_UNDO:Lcom/metamoji/nt/NtCommand;

    sget-object v1, Lcom/metamoji/nt/NtCommandManager$Grayout;->AUTO:Lcom/metamoji/nt/NtCommandManager$Grayout;

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/nt/NtCommandManager;->enableCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/NtCommandManager$Grayout;)Z

    .line 10742
    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_REDO:Lcom/metamoji/nt/NtCommand;

    sget-object v1, Lcom/metamoji/nt/NtCommandManager$Grayout;->AUTO:Lcom/metamoji/nt/NtCommandManager$Grayout;

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/nt/NtCommandManager;->enableCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/NtCommandManager$Grayout;)Z

    .line 10743
    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_FONTSIZE_BIGGER:Lcom/metamoji/nt/NtCommand;

    sget-object v1, Lcom/metamoji/nt/NtCommandManager$Grayout;->AUTO:Lcom/metamoji/nt/NtCommandManager$Grayout;

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/nt/NtCommandManager;->enableCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/NtCommandManager$Grayout;)Z

    .line 10744
    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_FONTSIZE_SMALLER:Lcom/metamoji/nt/NtCommand;

    sget-object v1, Lcom/metamoji/nt/NtCommandManager$Grayout;->AUTO:Lcom/metamoji/nt/NtCommandManager$Grayout;

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/nt/NtCommandManager;->enableCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/NtCommandManager$Grayout;)Z

    .line 10745
    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_SEARCH_TEXT_NEXT:Lcom/metamoji/nt/NtCommand;

    sget-object v1, Lcom/metamoji/nt/NtCommandManager$Grayout;->AUTO:Lcom/metamoji/nt/NtCommandManager$Grayout;

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/nt/NtCommandManager;->enableCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/NtCommandManager$Grayout;)Z

    .line 10746
    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_SEARCH_TEXT_PREV:Lcom/metamoji/nt/NtCommand;

    sget-object v1, Lcom/metamoji/nt/NtCommandManager$Grayout;->AUTO:Lcom/metamoji/nt/NtCommandManager$Grayout;

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/nt/NtCommandManager;->enableCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/NtCommandManager$Grayout;)Z

    .line 10749
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 10750
    invoke-interface {p1}, Lcom/metamoji/nt/INtEditor;->getTextUnitInputStyleBar()Lcom/metamoji/nt/NtTextUnitInputStyleBar;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_3

    .line 10752
    invoke-virtual {p1}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->checkControlEnable()V

    :cond_3
    return-void
.end method

.method public setDuringInsertComposingText(Z)V
    .locals 0

    .line 3921
    iput-boolean p1, p0, Lcom/metamoji/un/text/UnTextUnit;->_duringInsertComposingText:Z

    if-nez p1, :cond_0

    .line 3923
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->notifyImeCaretPos()V

    :cond_0
    return-void
.end method

.method public setFocus(Lcom/metamoji/nt/NtFocusOption;)V
    .locals 3

    .line 1924
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1928
    :cond_0
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getTextUnitInputStyleBar()Lcom/metamoji/nt/NtTextUnitInputStyleBar;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->setUnitController(Lcom/metamoji/un/text/UnTextUnit;)V

    .line 1931
    invoke-static {p0}, Lcom/metamoji/nt/NtMazecImsManager;->setToggleListener(Lcom/metamoji/nt/NtMazecImsManager$ToggleListener;)V

    .line 1932
    iget-object v1, p0, Lcom/metamoji/un/text/UnTextUnit;->_viewForSI:Lcom/metamoji/un/text/UnTextUnit$ViewForSoftInput;

    if-nez v1, :cond_1

    .line 1933
    new-instance v1, Lcom/metamoji/un/text/UnTextUnit$ViewForSoftInput;

    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/metamoji/un/text/UnTextUnit$ViewForSoftInput;-><init>(Lcom/metamoji/un/text/UnTextUnit;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/metamoji/un/text/UnTextUnit;->_viewForSI:Lcom/metamoji/un/text/UnTextUnit$ViewForSoftInput;

    .line 1938
    :cond_1
    iget-object v1, p0, Lcom/metamoji/un/text/UnTextUnit;->_viewForSI:Lcom/metamoji/un/text/UnTextUnit$ViewForSoftInput;

    invoke-interface {v0, v1}, Lcom/metamoji/nt/INtEditor;->attachViewForSoftInput(Landroid/view/View;)V

    .line 1939
    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->isUseMazec()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1940
    new-instance v0, Landroid/view/inputmethod/EditorInfo;

    invoke-direct {v0}, Landroid/view/inputmethod/EditorInfo;-><init>()V

    .line 1941
    const-string v1, ""

    iput-object v1, v0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    .line 1942
    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->getInstance()Lcom/metamoji/nt/NtMazecImsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/un/text/UnTextUnit;->_viewForSI:Lcom/metamoji/un/text/UnTextUnit$ViewForSoftInput;

    invoke-virtual {v2, v0}, Lcom/metamoji/un/text/UnTextUnit$ViewForSoftInput;->createInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/metamoji/nt/NtMazecImsManager;->startInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V

    .line 1946
    :cond_2
    invoke-static {}, Lcom/metamoji/un/text/UnTextUnitStateManager;->sharedInstance()Lcom/metamoji/un/text/UnTextUnitStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnitStateManager;->focusTextUnit()Lcom/metamoji/un/text/UnTextUnit;

    move-result-object v0

    if-eq p0, v0, :cond_3

    .line 1947
    invoke-static {}, Lcom/metamoji/un/text/UnTextUnitStateManager;->sharedInstance()Lcom/metamoji/un/text/UnTextUnitStateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/metamoji/un/text/UnTextUnitStateManager;->setFocusTextUnit(Lcom/metamoji/un/text/UnTextUnit;)V

    .line 1951
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->applyBackgroundColorToMazec()V

    .line 1954
    invoke-static {p0}, Lcom/metamoji/ui/dialog/UiDialog;->addOnGlobalShowDismissListener(Lcom/metamoji/ui/dialog/UiDialog$OnGlobalShowDismissListener;)V

    .line 1961
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->isDirectable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1962
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->clearUndo()V

    .line 1974
    :cond_4
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getInteractiveEventManager()Lcom/metamoji/nt/NtInteractiveEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/metamoji/nt/NtInteractiveEventManager;->addLongPressListener(Lcom/metamoji/df/sprite/LongPressListener;)V

    .line 1975
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getInteractiveEventManager()Lcom/metamoji/nt/NtInteractiveEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/metamoji/nt/NtInteractiveEventManager;->addViewportListener(Lcom/metamoji/df/sprite/ViewportListener;)V

    .line 1980
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->insPtCurCtrl:Lcom/metamoji/un/text/UnTextUnit$InsertionPointCursorController;

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit$InsertionPointCursorController;->setFocus()V

    .line 1981
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->selModCurCtrl:Lcom/metamoji/un/text/UnTextUnit$SelectionModifierCursorController;

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit$SelectionModifierCursorController;->setFocus()V

    const/4 v0, 0x1

    .line 1985
    iput-boolean v0, p0, Lcom/metamoji/un/text/UnTextUnit;->editing:Z

    .line 1988
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->setNeedsDisplay()V

    if-eqz p1, :cond_5

    .line 2001
    invoke-virtual {p1}, Lcom/metamoji/nt/NtFocusOption;->isTapPosAvailable()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2002
    invoke-virtual {p1}, Lcom/metamoji/nt/NtFocusOption;->getTapPos()Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/UnTextUnit;->moveCaretToPoint(Landroid/graphics/PointF;)V

    goto :goto_0

    .line 2004
    :cond_5
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->moveCaretToEnd()V

    .line 2008
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->checkVisibleCursor()V

    .line 2011
    iget-object p1, p0, Lcom/metamoji/un/text/UnTextUnit;->textSprite:Lcom/metamoji/un/text/sprite/TextSprite;

    invoke-virtual {p1, v0}, Lcom/metamoji/un/text/sprite/TextSprite;->setRendererMarkInViewMode(Z)V

    .line 2017
    sget-object p1, Lcom/metamoji/rb/RbConstants$Activity;->HANDLES_TO_RESIZE:Lcom/metamoji/rb/RbConstants$Activity;

    .line 2019
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/text/UnTextUnit$6;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/un/text/UnTextUnit$6;-><init>(Lcom/metamoji/un/text/UnTextUnit;Lcom/metamoji/rb/RbConstants$Activity;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Viewport;->post(Ljava/lang/Runnable;)Z

    .line 2035
    iget-object p1, p0, Lcom/metamoji/un/text/UnTextUnit;->hotSpotLocations:Ljava/util/List;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_6

    .line 2036
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/metamoji/un/text/model/TextModel;->needsRemakeLineTable(Lcom/metamoji/un/text/model/TextPosition;)V

    .line 2039
    :cond_6
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->notifyImeCaretPos()V

    return-void
.end method

.method public setGeometricProps(Lcom/metamoji/df/controller/GeometricProps;Lcom/metamoji/df/controller/EditContext;Lcom/metamoji/nt/NtUnitController$GeometricPropsOption;)V
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v7, p2

    .line 2764
    const-string v8, "height"

    const-string/jumbo v9, "width"

    const-string/jumbo v10, "y"

    const-string/jumbo v11, "x"

    const-string/jumbo v12, "textmode.locationcheck.paper"

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/metamoji/un/text/UnTextUnit;->preResizeUndoData:Ljava/util/Map;

    const/4 v13, 0x0

    .line 2765
    iput-boolean v13, v1, Lcom/metamoji/un/text/UnTextUnit;->inhibitAddSelfResizeUndo:Z

    const/4 v14, 0x1

    .line 2768
    iput-boolean v14, v1, Lcom/metamoji/un/text/UnTextUnit;->duringSetGeometricProps:Z

    .line 2769
    iput-boolean v13, v1, Lcom/metamoji/un/text/UnTextUnit;->callCheckMinSizeAtSetGeometricProps:Z

    .line 2775
    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnit;->hasFocus()Z

    move-result v15

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    const/16 v18, 0x0

    const-wide/high16 v19, 0x4024000000000000L    # 10.0

    .line 2783
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/metamoji/un/text/UnTextUnit;->getGeometricUndoOrRedo(Lcom/metamoji/df/controller/GeometricProps;)Lcom/metamoji/df/controller/GeometricProps;

    move-result-object v6

    .line 2786
    iget-object v3, v2, Lcom/metamoji/df/controller/GeometricProps;->size:Lcom/metamoji/cm/SizeF;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v3, :cond_2

    .line 2788
    :try_start_1
    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnit;->getWidth()F

    move-result v3

    iget-object v4, v2, Lcom/metamoji/df/controller/GeometricProps;->size:Lcom/metamoji/cm/SizeF;

    iget v4, v4, Lcom/metamoji/cm/SizeF;->width:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnit;->getHeight()F

    move-result v3

    iget-object v4, v2, Lcom/metamoji/df/controller/GeometricProps;->size:Lcom/metamoji/cm/SizeF;

    iget v4, v4, Lcom/metamoji/cm/SizeF;->height:F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v13

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v14

    :goto_1
    move/from16 v23, v3

    goto :goto_2

    :catchall_0
    move-exception v0

    move v3, v13

    const/4 v2, -0x1

    goto/16 :goto_11

    :catch_0
    move v3, v13

    move v6, v15

    const/4 v2, -0x1

    goto/16 :goto_19

    :cond_2
    move/from16 v23, v13

    .line 2791
    :goto_2
    :try_start_2
    new-instance v4, Lcom/metamoji/cm/mutable/Mutable;

    invoke-direct {v4}, Lcom/metamoji/cm/mutable/Mutable;-><init>()V

    .line 2792
    new-instance v5, Lcom/metamoji/cm/mutable/Mutable;

    invoke-direct {v5}, Lcom/metamoji/cm/mutable/Mutable;-><init>()V

    move-object v3, v6

    .line 2793
    new-instance v6, Lcom/metamoji/cm/mutable/Mutable;

    invoke-direct {v6}, Lcom/metamoji/cm/mutable/Mutable;-><init>()V

    move-object/from16 v24, v3

    const/4 v3, 0x0

    move-object/from16 v25, v24

    .line 2794
    invoke-direct/range {v1 .. v6}, Lcom/metamoji/un/text/UnTextUnit;->setGeometricPropsCore1(Lcom/metamoji/df/controller/GeometricProps;ZLcom/metamoji/cm/mutable/Mutable;Lcom/metamoji/cm/mutable/Mutable;Lcom/metamoji/cm/mutable/Mutable;)Z

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v3, :cond_a

    .line 2798
    :try_start_3
    invoke-virtual {v5}, Lcom/metamoji/cm/mutable/Mutable;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v6}, Lcom/metamoji/cm/mutable/Mutable;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-direct {v1, v3, v14, v13, v5}, Lcom/metamoji/un/text/UnTextUnit;->setGeometricPropsCore2(ZZZZ)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v7, :cond_3

    .line 2805
    :try_start_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 2807
    :cond_3
    :try_start_5
    iput-boolean v14, v1, Lcom/metamoji/un/text/UnTextUnit;->inhibitAddSelfResizeUndo:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v3, v0

    :goto_3
    if-eqz v3, :cond_4

    move-object/from16 v5, v25

    .line 2812
    :try_start_6
    invoke-static {v5, v2, v0}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator;->createResizeUnitParams(Lcom/metamoji/df/controller/GeometricProps;Lcom/metamoji/df/controller/GeometricProps;Lcom/metamoji/df/model/IModel;)Ljava/util/Map;

    move-result-object v5

    .line 2813
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    :cond_4
    move-object v5, v0

    .line 2818
    :goto_4
    :try_start_7
    iput-object v5, v1, Lcom/metamoji/un/text/UnTextUnit;->preResizeUndoData:Ljava/util/Map;

    .line 2821
    invoke-virtual {v4}, Lcom/metamoji/cm/mutable/Mutable;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 2825
    invoke-virtual {v4}, Lcom/metamoji/cm/mutable/Mutable;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move v6, v15

    float-to-double v14, v4

    move-wide/from16 v24, v14

    const-wide/16 v13, 0x0

    cmpl-double v15, v13, v24

    if-nez v15, :cond_5

    const/high16 v4, 0x3f800000    # 1.0f

    .line 2829
    :cond_5
    :try_start_8
    iget-object v2, v2, Lcom/metamoji/df/controller/GeometricProps;->contentScale:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 2831
    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v15

    invoke-virtual {v15}, Lcom/metamoji/un/text/model/TextModel;->getDefaultStringAttributes()Lcom/metamoji/un/text/model/attr/StringAttributes;

    move-result-object v15

    invoke-virtual {v15}, Lcom/metamoji/un/text/model/attr/StringAttributes;->getFontSize()F

    move-result v15

    mul-float/2addr v2, v15

    div-float/2addr v2, v4

    .line 2832
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v15

    .line 2835
    invoke-direct {v1, v2}, Lcom/metamoji/un/text/UnTextUnit;->changeFontSizeOfWholeChar(F)Ljava/util/List;

    move-result-object v2

    if-eqz v5, :cond_7

    if-eqz v2, :cond_7

    .line 2840
    const-string v4, "param"

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-eqz v4, :cond_7

    .line 2842
    const-string v5, "fontSizeUndoModel"

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_6
    move v6, v15

    const-wide/16 v13, 0x0

    :cond_7
    :goto_5
    if-eqz v3, :cond_8

    .line 2859
    invoke-direct {v1, v7, v3}, Lcom/metamoji/un/text/UnTextUnit;->createUndoModelAndAdd(Lcom/metamoji/df/controller/EditContext;Ljava/util/List;)V

    if-eqz v23, :cond_8

    .line 2864
    iput-object v3, v1, Lcom/metamoji/un/text/UnTextUnit;->undoDatasBindToDrawEditContext:Ljava/util/List;

    :cond_8
    if-nez v23, :cond_9

    .line 2874
    iget-boolean v2, v1, Lcom/metamoji/un/text/UnTextUnit;->callCheckMinSizeAtSetGeometricProps:Z

    if-eqz v2, :cond_9

    const/16 v23, 0x1

    :cond_9
    if-eqz v23, :cond_b

    .line 2882
    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/metamoji/un/text/model/TextModel;->needsRemakeLineTable(Lcom/metamoji/un/text/model/TextPosition;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_6

    :catchall_1
    move-exception v0

    const-wide/16 v13, 0x0

    goto/16 :goto_10

    :catch_1
    move v6, v15

    :catch_2
    const/4 v2, -0x1

    const/4 v3, 0x0

    goto/16 :goto_19

    :cond_a
    move v6, v15

    const-wide/16 v13, 0x0

    :cond_b
    :goto_6
    const/4 v2, 0x0

    .line 2891
    iput-boolean v2, v1, Lcom/metamoji/un/text/UnTextUnit;->callCheckMinSizeAtSetGeometricProps:Z

    .line 2892
    iput-boolean v2, v1, Lcom/metamoji/un/text/UnTextUnit;->duringSetGeometricProps:Z

    .line 2894
    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnit;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const/4 v2, -0x1

    invoke-interface {v0, v12, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v2, v0, :cond_c

    .line 2896
    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnit;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v2

    invoke-interface {v2, v12}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    .line 2899
    :cond_c
    sget-object v2, Lcom/metamoji/un/text/UnTextUnit$TextUnitSizeCheckDoInitType;->TextUnitSizeCheckDoInitType_PlainTextPaste:Lcom/metamoji/un/text/UnTextUnit$TextUnitSizeCheckDoInitType;

    invoke-virtual {v2}, Lcom/metamoji/un/text/UnTextUnit$TextUnitSizeCheckDoInitType;->toIntValue()I

    move-result v2

    if-ne v2, v0, :cond_14

    if-nez v7, :cond_14

    .line 2904
    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnit;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-interface {v0, v11, v13, v14}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v2

    .line 2905
    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnit;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-interface {v0, v10, v13, v14}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v4

    .line 2906
    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnit;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-interface {v0, v9, v13, v14}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v9

    .line 2907
    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnit;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-interface {v0, v8, v13, v14}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v7

    .line 2909
    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnit;->getPageController()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    .line 2910
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getPaperWidth()F

    move-result v11

    float-to-double v11, v11

    .line 2911
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getPaperHeight()F

    move-result v15

    float-to-double v13, v15

    .line 2918
    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnit;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v15

    invoke-virtual {v15}, Lcom/metamoji/nt/NtNoteController;->getZoom()F

    move-result v15

    cmpl-float v15, v18, v15

    if-eqz v15, :cond_d

    .line 2919
    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnit;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v15

    invoke-virtual {v15}, Lcom/metamoji/nt/NtNoteController;->getZoom()F

    move-result v15

    move-wide/from16 p1, v2

    float-to-double v2, v15

    div-double v19, v19, v2

    goto :goto_7

    :cond_d
    move-wide/from16 p1, v2

    .line 2921
    :goto_7
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getViewportWidth()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3, v11, v12}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    sub-double v2, v2, v19

    .line 2922
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getViewportHeight()F

    move-result v11

    float-to-double v11, v11

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(DD)D

    move-result-wide v11

    sub-double v11, v11, v19

    .line 2924
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getViewportOffsetX()F

    move-result v13

    float-to-double v13, v13

    move-wide/from16 v22, v2

    const-wide/16 v2, 0x0

    invoke-static {v13, v14, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v13

    div-double v19, v19, v16

    add-double v13, v13, v19

    .line 2925
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getViewportOffsetY()F

    move-result v0

    move-wide/from16 v24, v4

    float-to-double v4, v0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    add-double v2, v2, v19

    add-double v4, p1, v9

    add-double v15, v13, v22

    cmpl-double v0, v4, v15

    if-ltz v0, :cond_e

    sub-double/2addr v15, v9

    goto :goto_8

    :cond_e
    move-wide/from16 v15, p1

    :goto_8
    cmpg-double v0, v15, v13

    if-gez v0, :cond_f

    goto :goto_9

    :cond_f
    move-wide v13, v15

    :goto_9
    add-double v4, v24, v7

    add-double/2addr v11, v2

    cmpl-double v0, v4, v11

    if-ltz v0, :cond_10

    sub-double/2addr v11, v7

    goto :goto_a

    :cond_10
    move-wide/from16 v11, v24

    :goto_a
    cmpg-double v0, v11, v2

    if-gez v0, :cond_11

    goto :goto_b

    :cond_11
    move-wide v2, v11

    :goto_b
    cmpl-double v0, p1, v13

    if-nez v0, :cond_13

    cmpl-double v0, v24, v2

    if-eqz v0, :cond_12

    goto :goto_d

    .line 2973
    :cond_12
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v2, Lcom/metamoji/un/text/UnTextUnit$12;

    invoke-direct {v2, v1}, Lcom/metamoji/un/text/UnTextUnit$12;-><init>(Lcom/metamoji/un/text/UnTextUnit;)V

    :goto_c
    invoke-virtual {v0, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    goto :goto_f

    :cond_13
    :goto_d
    double-to-float v0, v13

    double-to-float v2, v2

    .line 2949
    iget-object v3, v1, Lcom/metamoji/un/text/UnTextUnit;->handler:Landroid/os/Handler;

    new-instance v4, Lcom/metamoji/un/text/UnTextUnit$11;

    invoke-direct {v4, v1, v0, v2}, Lcom/metamoji/un/text/UnTextUnit$11;-><init>(Lcom/metamoji/un/text/UnTextUnit;FF)V

    :goto_e
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v13, 0x0

    goto/16 :goto_20

    :cond_14
    :goto_f
    move v13, v6

    goto/16 :goto_20

    :catchall_2
    move-exception v0

    :goto_10
    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 2891
    :goto_11
    iput-boolean v3, v1, Lcom/metamoji/un/text/UnTextUnit;->callCheckMinSizeAtSetGeometricProps:Z

    .line 2892
    iput-boolean v3, v1, Lcom/metamoji/un/text/UnTextUnit;->duringSetGeometricProps:Z

    .line 2894
    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnit;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v3

    invoke-interface {v3, v12, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v3

    if-eq v2, v3, :cond_15

    .line 2896
    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnit;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v2

    invoke-interface {v2, v12}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    .line 2899
    :cond_15
    sget-object v2, Lcom/metamoji/un/text/UnTextUnit$TextUnitSizeCheckDoInitType;->TextUnitSizeCheckDoInitType_PlainTextPaste:Lcom/metamoji/un/text/UnTextUnit$TextUnitSizeCheckDoInitType;

    invoke-virtual {v2}, Lcom/metamoji/un/text/UnTextUnit$TextUnitSizeCheckDoInitType;->toIntValue()I

    move-result v2

    if-ne v2, v3, :cond_1d

    if-nez v7, :cond_1d

    .line 2904
    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnit;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v2

    const-wide/16 v13, 0x0

    invoke-interface {v2, v11, v13, v14}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v2

    .line 2905
    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnit;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v4

    invoke-interface {v4, v10, v13, v14}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v4

    .line 2906
    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnit;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v6

    invoke-interface {v6, v9, v13, v14}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v6

    .line 2907
    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnit;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v9

    invoke-interface {v9, v8, v13, v14}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v8

    .line 2909
    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnit;->getPageController()Lcom/metamoji/nt/NtPageController;

    move-result-object v10

    .line 2910
    invoke-virtual {v10}, Lcom/metamoji/nt/NtPageController;->getPaperWidth()F

    move-result v11

    float-to-double v11, v11

    .line 2911
    invoke-virtual {v10}, Lcom/metamoji/nt/NtPageController;->getPaperHeight()F

    move-result v13

    float-to-double v13, v13

    .line 2918
    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnit;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v15

    invoke-virtual {v15}, Lcom/metamoji/nt/NtNoteController;->getZoom()F

    move-result v15

    cmpl-float v15, v18, v15

    if-eqz v15, :cond_16

    .line 2919
    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnit;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v15

    invoke-virtual {v15}, Lcom/metamoji/nt/NtNoteController;->getZoom()F

    move-result v15

    move-wide/from16 p1, v2

    float-to-double v2, v15

    div-double v19, v19, v2

    goto :goto_12

    :cond_16
    move-wide/from16 p1, v2

    .line 2921
    :goto_12
    invoke-virtual {v10}, Lcom/metamoji/nt/NtPageController;->getViewportWidth()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3, v11, v12}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    sub-double v2, v2, v19

    .line 2922
    invoke-virtual {v10}, Lcom/metamoji/nt/NtPageController;->getViewportHeight()F

    move-result v11

    float-to-double v11, v11

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(DD)D

    move-result-wide v11

    sub-double v11, v11, v19

    .line 2924
    invoke-virtual {v10}, Lcom/metamoji/nt/NtPageController;->getViewportOffsetX()F

    move-result v13

    float-to-double v13, v13

    move-wide/from16 v21, v2

    const-wide/16 v2, 0x0

    invoke-static {v13, v14, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v13

    div-double v19, v19, v16

    add-double v13, v13, v19

    .line 2925
    invoke-virtual {v10}, Lcom/metamoji/nt/NtPageController;->getViewportOffsetY()F

    move-result v10

    move-wide/from16 v23, v4

    float-to-double v4, v10

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    add-double v2, v2, v19

    add-double v4, p1, v6

    add-double v15, v13, v21

    cmpl-double v4, v4, v15

    if-ltz v4, :cond_17

    sub-double/2addr v15, v6

    goto :goto_13

    :cond_17
    move-wide/from16 v15, p1

    :goto_13
    cmpg-double v4, v15, v13

    if-gez v4, :cond_18

    goto :goto_14

    :cond_18
    move-wide v13, v15

    :goto_14
    add-double v4, v23, v8

    add-double/2addr v11, v2

    cmpl-double v4, v4, v11

    if-ltz v4, :cond_19

    sub-double/2addr v11, v8

    goto :goto_15

    :cond_19
    move-wide/from16 v11, v23

    :goto_15
    cmpg-double v4, v11, v2

    if-gez v4, :cond_1a

    goto :goto_16

    :cond_1a
    move-wide v2, v11

    :goto_16
    cmpl-double v4, p1, v13

    if-nez v4, :cond_1c

    cmpl-double v4, v23, v2

    if-eqz v4, :cond_1b

    goto :goto_17

    .line 2973
    :cond_1b
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v2

    new-instance v3, Lcom/metamoji/un/text/UnTextUnit$12;

    invoke-direct {v3, v1}, Lcom/metamoji/un/text/UnTextUnit$12;-><init>(Lcom/metamoji/un/text/UnTextUnit;)V

    invoke-virtual {v2, v3}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    goto :goto_18

    :cond_1c
    :goto_17
    double-to-float v4, v13

    double-to-float v2, v2

    .line 2949
    iget-object v3, v1, Lcom/metamoji/un/text/UnTextUnit;->handler:Landroid/os/Handler;

    new-instance v5, Lcom/metamoji/un/text/UnTextUnit$11;

    invoke-direct {v5, v1, v4, v2}, Lcom/metamoji/un/text/UnTextUnit$11;-><init>(Lcom/metamoji/un/text/UnTextUnit;FF)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2984
    :cond_1d
    :goto_18
    throw v0

    :catch_3
    move v6, v15

    const/4 v2, -0x1

    move v3, v13

    .line 2891
    :goto_19
    iput-boolean v3, v1, Lcom/metamoji/un/text/UnTextUnit;->callCheckMinSizeAtSetGeometricProps:Z

    .line 2892
    iput-boolean v3, v1, Lcom/metamoji/un/text/UnTextUnit;->duringSetGeometricProps:Z

    .line 2894
    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnit;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-interface {v0, v12, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v2, v0, :cond_1e

    .line 2896
    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnit;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v2

    invoke-interface {v2, v12}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    .line 2899
    :cond_1e
    sget-object v2, Lcom/metamoji/un/text/UnTextUnit$TextUnitSizeCheckDoInitType;->TextUnitSizeCheckDoInitType_PlainTextPaste:Lcom/metamoji/un/text/UnTextUnit$TextUnitSizeCheckDoInitType;

    invoke-virtual {v2}, Lcom/metamoji/un/text/UnTextUnit$TextUnitSizeCheckDoInitType;->toIntValue()I

    move-result v2

    if-ne v2, v0, :cond_14

    if-nez v7, :cond_14

    .line 2904
    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnit;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-wide/16 v13, 0x0

    invoke-interface {v0, v11, v13, v14}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v4

    .line 2905
    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnit;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-interface {v0, v10, v13, v14}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v10

    .line 2906
    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnit;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-interface {v0, v9, v13, v14}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v21

    .line 2907
    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnit;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-interface {v0, v8, v13, v14}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v7

    .line 2909
    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnit;->getPageController()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    .line 2910
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getPaperWidth()F

    move-result v2

    float-to-double v12, v2

    .line 2911
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getPaperHeight()F

    move-result v2

    float-to-double v14, v2

    .line 2918
    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnit;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/nt/NtNoteController;->getZoom()F

    move-result v2

    cmpl-float v2, v18, v2

    if-eqz v2, :cond_1f

    .line 2919
    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnit;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/nt/NtNoteController;->getZoom()F

    move-result v2

    move-wide/from16 p1, v4

    float-to-double v3, v2

    div-double v19, v19, v3

    goto :goto_1a

    :cond_1f
    move-wide/from16 p1, v4

    .line 2921
    :goto_1a
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getViewportWidth()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    sub-double v2, v2, v19

    .line 2922
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getViewportHeight()F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5, v14, v15}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    sub-double v4, v4, v19

    .line 2924
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getViewportOffsetX()F

    move-result v12

    float-to-double v12, v12

    const-wide/16 v14, 0x0

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    div-double v19, v19, v16

    add-double v12, v12, v19

    .line 2925
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getViewportOffsetY()F

    move-result v0

    move-wide/from16 v16, v10

    float-to-double v9, v0

    invoke-static {v9, v10, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    add-double v9, v9, v19

    add-double v14, p1, v21

    add-double/2addr v2, v12

    cmpl-double v0, v14, v2

    if-ltz v0, :cond_20

    sub-double v2, v2, v21

    goto :goto_1b

    :cond_20
    move-wide/from16 v2, p1

    :goto_1b
    cmpg-double v0, v2, v12

    if-gez v0, :cond_21

    goto :goto_1c

    :cond_21
    move-wide v12, v2

    :goto_1c
    add-double v2, v16, v7

    add-double/2addr v4, v9

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_22

    sub-double/2addr v4, v7

    goto :goto_1d

    :cond_22
    move-wide/from16 v4, v16

    :goto_1d
    cmpg-double v0, v4, v9

    if-gez v0, :cond_23

    goto :goto_1e

    :cond_23
    move-wide v9, v4

    :goto_1e
    cmpl-double v0, p1, v12

    if-nez v0, :cond_25

    cmpl-double v0, v16, v9

    if-eqz v0, :cond_24

    goto :goto_1f

    .line 2973
    :cond_24
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v2, Lcom/metamoji/un/text/UnTextUnit$12;

    invoke-direct {v2, v1}, Lcom/metamoji/un/text/UnTextUnit$12;-><init>(Lcom/metamoji/un/text/UnTextUnit;)V

    goto/16 :goto_c

    :cond_25
    :goto_1f
    double-to-float v0, v12

    double-to-float v2, v9

    .line 2949
    iget-object v3, v1, Lcom/metamoji/un/text/UnTextUnit;->handler:Landroid/os/Handler;

    new-instance v4, Lcom/metamoji/un/text/UnTextUnit$11;

    invoke-direct {v4, v1, v0, v2}, Lcom/metamoji/un/text/UnTextUnit$11;-><init>(Lcom/metamoji/un/text/UnTextUnit;FF)V

    goto/16 :goto_e

    :goto_20
    if-eqz v13, :cond_26

    .line 2988
    iget-object v0, v1, Lcom/metamoji/un/text/UnTextUnit;->_rubberBand:Lcom/metamoji/un/util/UnRubberBandSupport;

    invoke-virtual {v0}, Lcom/metamoji/un/util/UnRubberBandSupport;->update()V

    :cond_26
    return-void
.end method

.method public setGeometricUndoOrRedo(Lcom/metamoji/df/controller/GeometricProps;Lcom/metamoji/df/model/IModel;ZZ)V
    .locals 1

    .line 4155
    new-instance v0, Lcom/metamoji/un/text/UnTextUnit$17;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/metamoji/un/text/UnTextUnit$17;-><init>(Lcom/metamoji/un/text/UnTextUnit;Lcom/metamoji/df/controller/GeometricProps;Lcom/metamoji/df/model/IModel;Z)V

    if-eqz p4, :cond_0

    .line 4163
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void

    .line 4165
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setGeometricUndoOrRedoCore(Lcom/metamoji/df/controller/GeometricProps;Lcom/metamoji/df/model/IModel;Z)V
    .locals 12

    if-nez p3, :cond_0

    if-eqz p2, :cond_0

    .line 4171
    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v4

    .line 4173
    invoke-interface {v4, p2, p3}, Lcom/metamoji/df/model/IModelManager;->callUndoPerformer(Lcom/metamoji/df/model/IModel;Z)V

    .line 4177
    :cond_0
    iget-object v4, p1, Lcom/metamoji/df/controller/GeometricProps;->origin:Landroid/graphics/PointF;

    const/4 v10, 0x0

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    .line 4178
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v4

    iget-object v6, p1, Lcom/metamoji/df/controller/GeometricProps;->origin:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    float-to-double v6, v6

    const-string/jumbo v8, "x"

    invoke-interface {v4, v8, v6, v7}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 4179
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v4

    iget-object v6, p1, Lcom/metamoji/df/controller/GeometricProps;->origin:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    float-to-double v6, v6

    const-string/jumbo v8, "y"

    invoke-interface {v4, v8, v6, v7}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    move v4, v5

    goto :goto_0

    :cond_1
    move v4, v10

    .line 4183
    :goto_0
    iget-object v6, p1, Lcom/metamoji/df/controller/GeometricProps;->size:Lcom/metamoji/cm/SizeF;

    if-eqz v6, :cond_2

    .line 4184
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v6

    iget-object v7, p1, Lcom/metamoji/df/controller/GeometricProps;->size:Lcom/metamoji/cm/SizeF;

    iget v7, v7, Lcom/metamoji/cm/SizeF;->width:F

    float-to-double v7, v7

    const-string/jumbo v9, "width"

    invoke-interface {v6, v9, v7, v8}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 4185
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v6

    iget-object v7, p1, Lcom/metamoji/df/controller/GeometricProps;->size:Lcom/metamoji/cm/SizeF;

    iget v7, v7, Lcom/metamoji/cm/SizeF;->height:F

    float-to-double v7, v7

    const-string v9, "height"

    invoke-interface {v6, v9, v7, v8}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 4188
    :cond_2
    iget-object v6, p1, Lcom/metamoji/df/controller/GeometricProps;->rotation:Ljava/lang/Float;

    if-eqz v6, :cond_3

    .line 4189
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v4

    const-string/jumbo v6, "rotation"

    iget-object v7, p1, Lcom/metamoji/df/controller/GeometricProps;->rotation:Ljava/lang/Float;

    invoke-interface {v4, v6, v7}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/Number;)V

    move v11, v5

    goto :goto_1

    :cond_3
    move v11, v4

    .line 4193
    :goto_1
    iget-object v4, p1, Lcom/metamoji/df/controller/GeometricProps;->contentScale:Ljava/lang/Float;

    if-eqz v4, :cond_4

    .line 4194
    iget-object v4, p1, Lcom/metamoji/df/controller/GeometricProps;->contentScale:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {p0, v4, v5}, Lcom/metamoji/un/text/UnTextUnit;->setContentScale(D)V

    :cond_4
    if-eqz p3, :cond_5

    if-eqz p2, :cond_5

    .line 4198
    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v4

    .line 4200
    invoke-interface {v4, p2, p3}, Lcom/metamoji/df/model/IModelManager;->callUndoPerformer(Lcom/metamoji/df/model/IModel;Z)V

    :cond_5
    if-nez p3, :cond_6

    if-eqz p2, :cond_6

    .line 4205
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v2

    iget-boolean v3, v2, Lcom/metamoji/un/text/model/TextModel;->unitWidthSelfAdjustment:Z

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/metamoji/un/text/UnTextUnit;->setGeometricPropsSelf(Lcom/metamoji/df/controller/GeometricProps;Lcom/metamoji/un/text/model/undo/ITextUndoManager;ZZZLjava/util/List;ZLjava/util/Map;Z)Z

    .line 4212
    :cond_6
    new-instance v1, Lcom/metamoji/df/controller/GeometricProps;

    invoke-direct {v1}, Lcom/metamoji/df/controller/GeometricProps;-><init>()V

    invoke-virtual {p0, v1}, Lcom/metamoji/un/text/UnTextUnit;->setSpriteGeometry(Lcom/metamoji/df/controller/GeometricProps;)V

    .line 4213
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->updateMaxMaxWidthHeight()V

    .line 4216
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->setNeedsDisplay()V

    if-eqz v11, :cond_a

    .line 4223
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4224
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/TextModel;->getParagraphTable()Lcom/metamoji/un/text/model/paragtable/ParagraphTable;

    move-result-object v2

    .line 4225
    invoke-virtual {v2}, Lcom/metamoji/un/text/model/paragtable/ParagraphTable;->count()I

    move-result v3

    :goto_2
    if-ge v10, v3, :cond_9

    .line 4227
    invoke-virtual {v2, v10}, Lcom/metamoji/un/text/model/paragtable/ParagraphTable;->paragraphInfoAt(I)Lcom/metamoji/un/text/model/paragtable/ParagraphInfo;

    move-result-object v4

    check-cast v4, Lcom/metamoji/un/text/model/paragtable/TaggedParagraphInfo;

    .line 4228
    invoke-virtual {v4}, Lcom/metamoji/un/text/model/paragtable/TaggedParagraphInfo;->getParagraphStyle()Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {v4}, Lcom/metamoji/un/text/model/paragtable/TaggedParagraphInfo;->getParagraphStyle()Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->getTagId()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_7
    const/4 v5, 0x0

    :goto_3
    if-eqz v5, :cond_8

    .line 4230
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 4233
    :cond_9
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_a

    .line 4234
    invoke-virtual {p0, v1}, Lcom/metamoji/un/text/UnTextUnit;->notifyObjectsGeometricChanged(Ljava/util/List;)V

    .line 4239
    :cond_a
    invoke-static {}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->getUnTextEditUserInfoView()Lcom/metamoji/un/text/UnTextEditUserInfoView;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 4241
    invoke-virtual {v1, p0}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->updateLayoutLabelWithTextUnit(Lcom/metamoji/un/text/UnTextUnit;)V

    :cond_b
    return-void
.end method

.method public setHotSpotLocations(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/un/text/hotspot/HotSpotLocation;",
            ">;)V"
        }
    .end annotation

    .line 335
    iput-object p1, p0, Lcom/metamoji/un/text/UnTextUnit;->hotSpotLocations:Ljava/util/List;

    return-void
.end method

.method public setNeedsCheckCaretHideOrNot(Lcom/metamoji/un/text/model/TextPosition;)V
    .locals 1

    const/4 v0, 0x0

    .line 10202
    invoke-direct {p0, p1, v0}, Lcom/metamoji/un/text/UnTextUnit;->setNeedsCheckCaretHideOrNot(Lcom/metamoji/un/text/model/TextPosition;Z)V

    return-void
.end method

.method public setNeedsDisplay()V
    .locals 3

    .line 2405
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->textSprite:Lcom/metamoji/un/text/sprite/TextSprite;

    invoke-virtual {v0}, Lcom/metamoji/un/text/sprite/TextSprite;->getBounds()Landroid/graphics/RectF;

    move-result-object v0

    .line 2407
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v2, 0x40800000    # 4.0f

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/metamoji/cm/RectUtils;->setWidth(Landroid/graphics/RectF;F)V

    .line 2408
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v1

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/metamoji/cm/RectUtils;->setHeight(Landroid/graphics/RectF;F)V

    .line 2413
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/cm/CmTaskManager;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/metamoji/un/text/UnTextUnit$9;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/un/text/UnTextUnit$9;-><init>(Lcom/metamoji/un/text/UnTextUnit;Landroid/graphics/RectF;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setNeedsDisplay(Landroid/graphics/RectF;)V
    .locals 2

    .line 2440
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2441
    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 2446
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/cm/CmTaskManager;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v1, Lcom/metamoji/un/text/UnTextUnit$10;

    invoke-direct {v1, p0, v0}, Lcom/metamoji/un/text/UnTextUnit$10;-><init>(Lcom/metamoji/un/text/UnTextUnit;Landroid/graphics/Rect;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setNeedsDisplayFrom(Lcom/metamoji/un/text/model/TextPosition;)V
    .locals 8

    if-nez p1, :cond_0

    .line 2316
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->setNeedsDisplay()V

    return-void

    .line 2318
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    .line 2319
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getLineTable()Lcom/metamoji/un/text/model/linetable/LineTable;

    move-result-object v1

    .line 2320
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getVerticalWriting()Z

    move-result v0

    .line 2322
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 2323
    iget-object v3, p0, Lcom/metamoji/un/text/UnTextUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v3, v2}, Lcom/metamoji/df/sprite/Sprite;->buildBounds(Landroid/graphics/RectF;)Z

    .line 2324
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/metamoji/un/text/model/TextModel;->caretRectInWholeViewForPosition(Lcom/metamoji/un/text/model/TextPosition;)Landroid/graphics/RectF;

    move-result-object v3

    .line 2326
    iget v4, p1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    const/4 v5, 0x0

    if-nez v4, :cond_2

    iget v4, p1, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    if-nez v4, :cond_2

    if-eqz v0, :cond_1

    .line 2330
    iget p1, v2, Landroid/graphics/RectF;->right:F

    iput p1, v3, Landroid/graphics/RectF;->right:F

    goto :goto_0

    .line 2332
    :cond_1
    iput v5, v3, Landroid/graphics/RectF;->top:F

    goto :goto_0

    .line 2336
    :cond_2
    invoke-virtual {v1, p1}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineIndex(Lcom/metamoji/un/text/model/TextPosition;)I

    move-result p1

    const/4 v4, 0x1

    if-lt p1, v4, :cond_3

    add-int/lit8 p1, p1, -0x1

    .line 2339
    :cond_3
    invoke-virtual {v1, p1}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineInfoAtIndex(I)Lcom/metamoji/un/text/model/linetable/LineInfo;

    move-result-object v1

    .line 2340
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    .line 2341
    iget-object v7, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    invoke-static {v6, v7}, Lcom/metamoji/cm/RectUtils;->setOrigin(Landroid/graphics/RectF;Landroid/graphics/PointF;)V

    .line 2342
    iget-object v1, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    invoke-static {v6, v1}, Lcom/metamoji/cm/RectUtils;->setSize(Landroid/graphics/RectF;Lcom/metamoji/cm/SizeF;)V

    if-lt p1, v4, :cond_5

    if-eqz v0, :cond_4

    .line 2346
    iget p1, v6, Landroid/graphics/RectF;->left:F

    iput p1, v3, Landroid/graphics/RectF;->right:F

    goto :goto_0

    .line 2348
    :cond_4
    iget p1, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v1

    add-float/2addr p1, v1

    iput p1, v3, Landroid/graphics/RectF;->top:F

    goto :goto_0

    :cond_5
    if-eqz v0, :cond_6

    .line 2352
    iget p1, v2, Landroid/graphics/RectF;->right:F

    iput p1, v3, Landroid/graphics/RectF;->right:F

    goto :goto_0

    .line 2354
    :cond_6
    iput v5, v3, Landroid/graphics/RectF;->top:F

    :goto_0
    if-eqz v0, :cond_7

    .line 2361
    iput v5, v2, Landroid/graphics/RectF;->top:F

    .line 2362
    iget p1, v3, Landroid/graphics/RectF;->right:F

    iput p1, v2, Landroid/graphics/RectF;->right:F

    goto :goto_1

    .line 2365
    :cond_7
    iput v5, v2, Landroid/graphics/RectF;->left:F

    .line 2366
    iget p1, v3, Landroid/graphics/RectF;->top:F

    iput p1, v2, Landroid/graphics/RectF;->top:F

    .line 2397
    :goto_1
    invoke-virtual {p0, v2}, Lcom/metamoji/un/text/UnTextUnit;->setNeedsDisplay(Landroid/graphics/RectF;)V

    return-void
.end method

.method public setQueueing(Z)V
    .locals 1

    .line 10757
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/Stage;->setQueueing(Z)V

    return-void
.end method

.method public setSearchResultTextRange(Lcom/metamoji/un/text/model/TextRange;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 10375
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/metamoji/un/text/model/TextModel;->setSearchResults(Ljava/util/List;)V

    goto :goto_0

    .line 10377
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10378
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10379
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/metamoji/un/text/model/TextModel;->setSearchResults(Ljava/util/List;)V

    .line 10382
    :goto_0
    invoke-virtual {p0, v0}, Lcom/metamoji/un/text/UnTextUnit;->setNeedsDisplayFrom(Lcom/metamoji/un/text/model/TextPosition;)V

    return-void
.end method

.method public setSelectedTextRange(Lcom/metamoji/un/text/model/TextRange;)V
    .locals 5

    .line 2588
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    .line 2590
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v1

    .line 2591
    invoke-virtual {v0, p1}, Lcom/metamoji/un/text/model/TextModel;->setSelectedTextRange(Lcom/metamoji/un/text/model/TextRange;)V

    .line 2595
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->caretNotHide()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2596
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 2598
    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v2

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/metamoji/un/text/model/TextPosition;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2600
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/metamoji/un/text/model/TextModel;->caretRectInWholeViewForPosition(Lcom/metamoji/un/text/model/TextPosition;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-direct {p0, v2, v3}, Lcom/metamoji/un/text/UnTextUnit;->scrollRectToVisible(Landroid/graphics/RectF;Z)V

    goto :goto_0

    .line 2601
    :cond_0
    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v2

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/metamoji/un/text/model/TextPosition;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2603
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/metamoji/un/text/model/TextModel;->caretRectInWholeViewForPosition(Lcom/metamoji/un/text/model/TextPosition;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-direct {p0, v2, v3}, Lcom/metamoji/un/text/UnTextUnit;->scrollRectToVisible(Landroid/graphics/RectF;Z)V

    goto :goto_0

    .line 2609
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/metamoji/un/text/model/TextModel;->caretRectInWholeViewForPosition(Lcom/metamoji/un/text/model/TextPosition;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-direct {p0, v2, v3}, Lcom/metamoji/un/text/UnTextUnit;->scrollRectToVisible(Landroid/graphics/RectF;Z)V

    .line 2628
    :cond_2
    :goto_0
    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextRange;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2629
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->setNeedsDisplay()V

    goto :goto_1

    .line 2631
    :cond_3
    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/model/TextModel;->caretRectInWholeViewForPosition(Lcom/metamoji/un/text/model/TextPosition;)Landroid/graphics/RectF;

    move-result-object v1

    .line 2634
    invoke-virtual {p0, v1}, Lcom/metamoji/un/text/UnTextUnit;->setNeedsDisplay(Landroid/graphics/RectF;)V

    .line 2636
    :goto_1
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 2637
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->setNeedsDisplay()V

    goto :goto_2

    .line 2639
    :cond_4
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/un/text/model/TextModel;->caretRectInWholeViewForPosition(Lcom/metamoji/un/text/model/TextPosition;)Landroid/graphics/RectF;

    move-result-object p1

    .line 2642
    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/UnTextUnit;->setNeedsDisplay(Landroid/graphics/RectF;)V

    .line 2647
    :goto_2
    sget-object p1, Lcom/metamoji/un/text/UnTextUnit$CancelModeType;->MenuAndStrokeReedit:Lcom/metamoji/un/text/UnTextUnit$CancelModeType;

    invoke-direct {p0, p1}, Lcom/metamoji/un/text/UnTextUnit;->cancelMode(Lcom/metamoji/un/text/UnTextUnit$CancelModeType;)V

    return-void
.end method

.method protected setSpriteGeometry(Lcom/metamoji/df/controller/GeometricProps;)V
    .locals 0

    .line 3340
    invoke-super {p0, p1}, Lcom/metamoji/nt/NtUnitController;->setSpriteGeometry(Lcom/metamoji/df/controller/GeometricProps;)V

    .line 3342
    iget-object p1, p0, Lcom/metamoji/un/text/UnTextUnit;->textSprite:Lcom/metamoji/un/text/sprite/TextSprite;

    invoke-virtual {p1}, Lcom/metamoji/un/text/sprite/TextSprite;->boundsChange()V

    return-void
.end method

.method public setSupportReedit(Z)V
    .locals 0

    .line 7665
    iput-boolean p1, p0, Lcom/metamoji/un/text/UnTextUnit;->_isSupportReedit:Z

    return-void
.end method

.method public setUnitNoDropShadow(Z)V
    .locals 3

    .line 12536
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 12541
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getUnitNoDropShadow()Z

    move-result v1

    if-ne p1, v1, :cond_1

    :goto_0
    return-void

    .line 12546
    :cond_1
    const-string/jumbo v2, "textUnitNoDropShadow"

    invoke-virtual {p0, v2}, Lcom/metamoji/un/text/UnTextUnit;->startEditTextTask(Ljava/lang/String;)V

    .line 12548
    invoke-static {v1}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator;->createUnitNoDropShadow(Z)Ljava/util/Map;

    move-result-object v1

    .line 12549
    invoke-virtual {p0, v1}, Lcom/metamoji/un/text/UnTextUnit;->addUndoData(Ljava/util/Map;)V

    .line 12551
    invoke-virtual {v0, p1}, Lcom/metamoji/un/text/model/TextModel;->setUnitNoDropShadow(Z)V

    const/4 p1, 0x1

    .line 12552
    invoke-virtual {v0, p1}, Lcom/metamoji/un/text/model/TextModel;->setModified(Z)V

    .line 12554
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->endEditTextTask()V

    .line 12555
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->sendTextUnitData()V

    .line 12556
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->setNeedsDisplay()V

    return-void
.end method

.method public setUnitNoDropShadowUndoOrRedo(Z)V
    .locals 0

    .line 12271
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->sendTextUnitData()V

    .line 12272
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->setNeedsDisplay()V

    return-void
.end method

.method public setUnitNotDelWhenEmpty(Z)V
    .locals 3

    .line 12578
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 12583
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getUnitNotDelWhenEmpty()Z

    move-result v1

    if-ne p1, v1, :cond_1

    :goto_0
    return-void

    .line 12588
    :cond_1
    const-string/jumbo v2, "textUnitNotDelWhenEmpty"

    invoke-virtual {p0, v2}, Lcom/metamoji/un/text/UnTextUnit;->startEditTextTask(Ljava/lang/String;)V

    .line 12590
    invoke-static {v1}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator;->createUnitNotDelWhenEmpty(Z)Ljava/util/Map;

    move-result-object v1

    .line 12591
    invoke-virtual {p0, v1}, Lcom/metamoji/un/text/UnTextUnit;->addUndoData(Ljava/util/Map;)V

    .line 12593
    invoke-virtual {v0, p1}, Lcom/metamoji/un/text/model/TextModel;->setUnitNotDelWhenEmpty(Z)V

    const/4 p1, 0x1

    .line 12594
    invoke-virtual {v0, p1}, Lcom/metamoji/un/text/model/TextModel;->setModified(Z)V

    .line 12596
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->endEditTextTask()V

    .line 12598
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->sendTextUnitData()V

    return-void
.end method

.method public setUnitNotDelWhenEmptyUndoOrRedo(Z)V
    .locals 0

    .line 12279
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->sendTextUnitData()V

    return-void
.end method

.method public shareSendTextUnitData()V
    .locals 1

    .line 8206
    iget-boolean v0, p0, Lcom/metamoji/un/text/UnTextUnit;->editing:Z

    if-eqz v0, :cond_1

    .line 8207
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->enableSendTextUnitEdittingData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8209
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->sendTextUnitEdittingData()V

    :cond_0
    return-void

    .line 8213
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->sendTextUnitData()V

    return-void
.end method

.method public sizeChanged(II)V
    .locals 0

    return-void
.end method

.method public skipStrokeReedit()V
    .locals 1

    .line 3693
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->isStrokeReconvertMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3694
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->cancelReconvertTask()V

    .line 3698
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->reeditNextStrokesLaterIfNeeded()V

    return-void
.end method

.method public startEditTextTask(Ljava/lang/String;)V
    .locals 3

    .line 3929
    iget-boolean v0, p0, Lcom/metamoji/un/text/UnTextUnit;->_duringInsertComposingText:Z

    if-nez v0, :cond_0

    .line 3931
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->undoDatas:Ljava/util/List;

    .line 3933
    const-string/jumbo v0, "textUnitUndo"

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lcom/metamoji/un/text/UnTextUnit$UndoPerformer;->makeNewUndoModelForController(Lcom/metamoji/df/controller/DfController;Ljava/lang/String;I)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->undoModel:Lcom/metamoji/df/model/IModel;

    .line 3939
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator;->createJSONTextRange(Lcom/metamoji/un/text/model/TextRange;)Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "undoSelectedTextRangeBefore"

    invoke-interface {v0, v2, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/Map;)V

    .line 3940
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->undoModel:Lcom/metamoji/df/model/IModel;

    const-string/jumbo v1, "taskName"

    invoke-interface {v0, v1, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public tagHitTest(Landroid/graphics/PointF;)Lcom/metamoji/ctold/CtTaggableObject;
    .locals 5

    .line 1552
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->isVisibleHotSpots()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1553
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getParagraphTable()Lcom/metamoji/un/text/model/paragtable/ParagraphTable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1555
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/paragtable/ParagraphTable;->count()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 1557
    invoke-virtual {v0, v2}, Lcom/metamoji/un/text/model/paragtable/ParagraphTable;->paragraphInfoAt(I)Lcom/metamoji/un/text/model/paragtable/ParagraphInfo;

    move-result-object v3

    check-cast v3, Lcom/metamoji/un/text/model/paragtable/TaggedParagraphInfo;

    .line 1559
    sget-object v4, Lcom/metamoji/un/text/model/MMJEdTrdParagraphMark;->Voice:Lcom/metamoji/un/text/model/MMJEdTrdParagraphMark;

    invoke-virtual {p0, v4, v3}, Lcom/metamoji/un/text/UnTextUnit;->hasTag(Lcom/metamoji/un/text/model/MMJEdTrdParagraphMark;Lcom/metamoji/un/text/model/paragtable/ParagraphInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1560
    invoke-virtual {v3}, Lcom/metamoji/un/text/model/paragtable/TaggedParagraphInfo;->getObjectBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v4

    .line 1562
    invoke-virtual {v4, p1}, Lcom/metamoji/cm/RectEx;->contains(Landroid/graphics/PointF;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public transcribeUnitBorderStyle(Lcom/metamoji/un/text/model/UnitBorderStyle;)Lcom/metamoji/un/text/model/UnitBorderStyle;
    .locals 2

    .line 8603
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/UnitBorderStyle;->getIntValue()I

    move-result p1

    invoke-static {p1}, Lcom/metamoji/un/text/model/UnitBorderStyle;->valueOf(I)Lcom/metamoji/un/text/model/UnitBorderStyle;

    move-result-object p1

    .line 8604
    sget-object v0, Lcom/metamoji/un/text/model/UnitBorderStyle;->None:Lcom/metamoji/un/text/model/UnitBorderStyle;

    if-ne v0, p1, :cond_0

    .line 8606
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getUnitNoDropShadow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8612
    sget-object v0, Lcom/metamoji/nt/NtDocument$EditMode;->EDITMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    iget-object v1, p0, Lcom/metamoji/un/text/UnTextUnit;->editMode:Lcom/metamoji/nt/NtDocument$EditMode;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/metamoji/df/controller/ControllerContext$MediaType;->MEDIATYPE_NONE:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    iget-object v1, p0, Lcom/metamoji/un/text/UnTextUnit;->mediaType:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/metamoji/nt/NtDocument$ToolMode;->PEN:Lcom/metamoji/nt/NtDocument$ToolMode;

    iget-object v1, p0, Lcom/metamoji/un/text/UnTextUnit;->toolMode:Lcom/metamoji/nt/NtDocument$ToolMode;

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/metamoji/un/text/UnTextUnit;->editing:Z

    if-nez v0, :cond_0

    .line 8616
    invoke-static {}, Lcom/metamoji/un/text/UnTextUnit;->getDispTextUnitDropShadow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->_isOwnerAndEditability:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 8617
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8619
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getPageController()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8621
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->layerController()Lcom/metamoji/nt/NtLayerController;

    move-result-object v1

    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getCurrentLayer()Lcom/metamoji/nt/NtLayerController;

    move-result-object v0

    if-ne v1, v0, :cond_0

    .line 8622
    sget-object p1, Lcom/metamoji/un/text/model/UnitBorderStyle;->StyleBonyari:Lcom/metamoji/un/text/model/UnitBorderStyle;

    .line 8629
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/text/UnTextUnit;->_collaboOtherEditting:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/metamoji/df/controller/ControllerContext$MediaType;->MEDIATYPE_NONE:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    iget-object v1, p0, Lcom/metamoji/un/text/UnTextUnit;->mediaType:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 8630
    iput-boolean v0, p1, Lcom/metamoji/un/text/model/UnitBorderStyle;->_plusBonyari:Z

    return-object p1

    :cond_1
    const/4 v0, 0x0

    .line 8632
    iput-boolean v0, p1, Lcom/metamoji/un/text/model/UnitBorderStyle;->_plusBonyari:Z

    return-object p1
.end method

.method public updateCursorControlerPositions()V
    .locals 1

    .line 8765
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->insPtCurCtrl:Lcom/metamoji/un/text/UnTextUnit$InsertionPointCursorController;

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit$InsertionPointCursorController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8766
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->insPtCurCtrl:Lcom/metamoji/un/text/UnTextUnit$InsertionPointCursorController;

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit$InsertionPointCursorController;->updatePosition()V

    .line 8767
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->selModCurCtrl:Lcom/metamoji/un/text/UnTextUnit$SelectionModifierCursorController;

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit$SelectionModifierCursorController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8768
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->selModCurCtrl:Lcom/metamoji/un/text/UnTextUnit$SelectionModifierCursorController;

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit$SelectionModifierCursorController;->updatePosition()V

    :cond_1
    return-void
.end method

.method public updateImmSelection()V
    .locals 7

    .line 3543
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->_viewForSI:Lcom/metamoji/un/text/UnTextUnit$ViewForSoftInput;

    if-eqz v0, :cond_0

    .line 3544
    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit$ViewForSoftInput;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v1, v0

    if-eqz v1, :cond_2

    .line 3547
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v0

    .line 3548
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v2

    .line 3549
    invoke-virtual {v2}, Lcom/metamoji/un/text/model/TextModel;->beginningOfDocument()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v3

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/metamoji/un/text/model/TextModel;->offsetFromPosition(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/TextPosition;)I

    move-result v3

    .line 3552
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit;->composingSpan:Lcom/metamoji/un/text/model/TextRange;

    if-eqz v0, :cond_1

    .line 3553
    invoke-virtual {v2}, Lcom/metamoji/un/text/model/TextModel;->beginningOfDocument()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v0

    iget-object v4, p0, Lcom/metamoji/un/text/UnTextUnit;->composingSpan:Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {v4}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/metamoji/un/text/model/TextModel;->offsetFromPosition(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/TextPosition;)I

    move-result v0

    .line 3554
    iget-object v4, p0, Lcom/metamoji/un/text/UnTextUnit;->composingSpan:Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {v4}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v4

    iget-object v5, p0, Lcom/metamoji/un/text/UnTextUnit;->composingSpan:Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {v5}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/metamoji/un/text/model/TextModel;->offsetFromPosition(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/TextPosition;)I

    move-result v2

    add-int/2addr v2, v0

    move v5, v0

    move v6, v2

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    move v5, v0

    move v6, v5

    .line 3556
    :goto_1
    iget-object v2, p0, Lcom/metamoji/un/text/UnTextUnit;->_viewForSI:Lcom/metamoji/un/text/UnTextUnit$ViewForSoftInput;

    move v4, v3

    invoke-virtual/range {v1 .. v6}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    :cond_2
    return-void
.end method

.method public updateInputStyleBar()V
    .locals 2

    .line 10944
    const-class v0, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/metamoji/un/text/UnTextUnit;->updateInputStyleBar(Ljava/util/EnumSet;Z)V

    return-void
.end method

.method public updateSearchResult(Ljava/lang/String;Lcom/metamoji/un/text/SearchWordUtil$CompareOptionType;)I
    .locals 3

    .line 1581
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1583
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextModel;->beginningOfDocument()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v1

    .line 1585
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/TextModel;->getStringWsArrayObject()Lcom/metamoji/un/text/model/StringWithStrokesArray;

    move-result-object v2

    invoke-static {v2, p1, v1, p2}, Lcom/metamoji/un/text/SearchWordUtil;->searchForward(Lcom/metamoji/un/text/model/StringWithStrokesArray;Ljava/lang/String;Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/SearchWordUtil$CompareOptionType;)Lcom/metamoji/un/text/model/TextRange;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1587
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1588
    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v1

    goto :goto_0

    .line 1593
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x0

    if-lez p1, :cond_1

    .line 1594
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/metamoji/un/text/model/TextModel;->setSearchResults(Ljava/util/List;)V

    goto :goto_1

    .line 1596
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/metamoji/un/text/model/TextModel;->setSearchResults(Ljava/util/List;)V

    .line 1598
    :goto_1
    invoke-virtual {p0, p2}, Lcom/metamoji/un/text/UnTextUnit;->setNeedsDisplayFrom(Lcom/metamoji/un/text/model/TextPosition;)V

    .line 1600
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    return p1
.end method

.method public willUndoOrRedo(Z)V
    .locals 1

    .line 10623
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->existUndoDataInSelfBuffer()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 10626
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->joinUndoModels()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    const/4 v0, 0x1

    .line 10627
    invoke-direct {p0, v0, p1}, Lcom/metamoji/un/text/UnTextUnit;->performTextEditUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V

    .line 10628
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->cleanupUndoDataSelfBuffer()V

    :cond_0
    return-void
.end method

.method public zoomChanged()V
    .locals 0

    .line 1360
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->notifyImeCaretPos()V

    return-void
.end method

.method public zoomChanging()V
    .locals 0

    return-void
.end method

.method public zoomEnd(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 1347
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->zoomEnd()V

    :cond_0
    return-void
.end method

.method public zoomReboundEnd(Z)V
    .locals 0

    .line 1350
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit;->zoomEnd()V

    return-void
.end method

.method public zoomReboundStart()V
    .locals 0

    return-void
.end method

.method public zoomStart()V
    .locals 0

    .line 1337
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->hideControllers()V

    return-void
.end method
