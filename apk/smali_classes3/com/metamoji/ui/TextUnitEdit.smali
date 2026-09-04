.class public Lcom/metamoji/ui/TextUnitEdit;
.super Landroid/view/View;
.source "TextUnitEdit.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Lcom/metamoji/un/text/IUnTextUnitDelegate;
.implements Lcom/metamoji/un/text/ITUInputConnectionClient;
.implements Lcom/metamoji/un/text/model/undo/ITextUndoManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/TextUnitEdit$InsertionPointCursorController;,
        Lcom/metamoji/ui/TextUnitEdit$SelectionModifierCursorController;,
        Lcom/metamoji/ui/TextUnitEdit$SavedState;,
        Lcom/metamoji/ui/TextUnitEdit$CommandId;,
        Lcom/metamoji/ui/TextUnitEdit$PositionListener;,
        Lcom/metamoji/ui/TextUnitEdit$TextViewPositionListener;,
        Lcom/metamoji/ui/TextUnitEdit$CursorController;,
        Lcom/metamoji/ui/TextUnitEdit$HandleView;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static sCursorControllerTempRect:Landroid/graphics/Rect;


# instance fields
.field private _composingSpan:Lcom/metamoji/un/text/model/TextRange;

.field private _eatTouchRelease:Z

.field private _fontSize:F

.field private _insertionPointCursorController:Lcom/metamoji/ui/TextUnitEdit$InsertionPointCursorController;

.field private _mazecAction:Lcom/metamoji/un/text/MazecAction;

.field private _monitorCaretPos:Z

.field private _placeHolder:Ljava/lang/String;

.field private _placeHolderLayout:Landroid/text/StaticLayout;

.field private _restoreTextModelId:I

.field private _selectHandleCenter:Landroid/graphics/drawable/Drawable;

.field private _selectHandleLeft:Landroid/graphics/drawable/Drawable;

.field private _selectHandleRight:Landroid/graphics/drawable/Drawable;

.field private _selectionModifierCursorController:Lcom/metamoji/ui/TextUnitEdit$SelectionModifierCursorController;

.field private _textModel:Lcom/metamoji/un/text/model/TextModel;

.field private _textSprite:Lcom/metamoji/un/text/sprite/TextSprite;

.field private mPositionListener:Lcom/metamoji/ui/TextUnitEdit$PositionListener;


# direct methods
.method static bridge synthetic -$$Nest$fget_fontSize(Lcom/metamoji/ui/TextUnitEdit;)F
    .locals 0

    iget p0, p0, Lcom/metamoji/ui/TextUnitEdit;->_fontSize:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fget_insertionPointCursorController(Lcom/metamoji/ui/TextUnitEdit;)Lcom/metamoji/ui/TextUnitEdit$InsertionPointCursorController;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/TextUnitEdit;->_insertionPointCursorController:Lcom/metamoji/ui/TextUnitEdit$InsertionPointCursorController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_selectHandleCenter(Lcom/metamoji/ui/TextUnitEdit;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/TextUnitEdit;->_selectHandleCenter:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_selectHandleLeft(Lcom/metamoji/ui/TextUnitEdit;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/TextUnitEdit;->_selectHandleLeft:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_selectHandleRight(Lcom/metamoji/ui/TextUnitEdit;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/TextUnitEdit;->_selectHandleRight:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_selectionModifierCursorController(Lcom/metamoji/ui/TextUnitEdit;)Lcom/metamoji/ui/TextUnitEdit$SelectionModifierCursorController;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/TextUnitEdit;->_selectionModifierCursorController:Lcom/metamoji/ui/TextUnitEdit$SelectionModifierCursorController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_textModel(Lcom/metamoji/ui/TextUnitEdit;)Lcom/metamoji/un/text/model/TextModel;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/TextUnitEdit;->_textModel:Lcom/metamoji/un/text/model/TextModel;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fput_selectHandleCenter(Lcom/metamoji/ui/TextUnitEdit;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/ui/TextUnitEdit;->_selectHandleCenter:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static bridge synthetic -$$Nest$fput_selectHandleLeft(Lcom/metamoji/ui/TextUnitEdit;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/ui/TextUnitEdit;->_selectHandleLeft:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static bridge synthetic -$$Nest$fput_selectHandleRight(Lcom/metamoji/ui/TextUnitEdit;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/ui/TextUnitEdit;->_selectHandleRight:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetPositionListener(Lcom/metamoji/ui/TextUnitEdit;)Lcom/metamoji/ui/TextUnitEdit$PositionListener;
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/TextUnitEdit;->getPositionListener()Lcom/metamoji/ui/TextUnitEdit$PositionListener;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhandleCommandMenu(Lcom/metamoji/ui/TextUnitEdit;Lcom/metamoji/ui/TextUnitEdit$CommandId;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/TextUnitEdit;->handleCommandMenu(Lcom/metamoji/ui/TextUnitEdit$CommandId;Ljava/lang/Object;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misInComposition(Lcom/metamoji/ui/TextUnitEdit;)Z
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/TextUnitEdit;->isInComposition()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetSelectedTextRange(Lcom/metamoji/ui/TextUnitEdit;Lcom/metamoji/un/text/model/TextRange;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/TextUnitEdit;->setSelectedTextRange(Lcom/metamoji/un/text/model/TextRange;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetsCursorControllerTempRect()Landroid/graphics/Rect;
    .locals 1

    sget-object v0, Lcom/metamoji/ui/TextUnitEdit;->sCursorControllerTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1303
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/metamoji/ui/TextUnitEdit;->sCursorControllerTempRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 127
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 106
    iput v0, p0, Lcom/metamoji/ui/TextUnitEdit;->_restoreTextModelId:I

    const/4 v0, 0x0

    .line 1191
    iput-boolean v0, p0, Lcom/metamoji/ui/TextUnitEdit;->_monitorCaretPos:Z

    const/4 v0, 0x0

    .line 128
    invoke-direct {p0, p1, v0}, Lcom/metamoji/ui/TextUnitEdit;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 122
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    .line 106
    iput v0, p0, Lcom/metamoji/ui/TextUnitEdit;->_restoreTextModelId:I

    const/4 v0, 0x0

    .line 1191
    iput-boolean v0, p0, Lcom/metamoji/ui/TextUnitEdit;->_monitorCaretPos:Z

    .line 123
    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/TextUnitEdit;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 117
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, -0x1

    .line 106
    iput p3, p0, Lcom/metamoji/ui/TextUnitEdit;->_restoreTextModelId:I

    const/4 p3, 0x0

    .line 1191
    iput-boolean p3, p0, Lcom/metamoji/ui/TextUnitEdit;->_monitorCaretPos:Z

    .line 118
    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/TextUnitEdit;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 729
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 732
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v0

    .line 733
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v1

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/metamoji/un/text/model/TextModel;->caretRectInWholeViewForPosition(Lcom/metamoji/un/text/model/TextPosition;)Landroid/graphics/RectF;

    move-result-object v1

    .line 735
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 736
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v2

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/metamoji/un/text/model/TextModel;->caretRectInWholeViewForPosition(Lcom/metamoji/un/text/model/TextPosition;)Landroid/graphics/RectF;

    move-result-object v2

    .line 738
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/text/model/TextModel;->getLineTable()Lcom/metamoji/un/text/model/linetable/LineTable;

    move-result-object v3

    .line 739
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineIndex(Lcom/metamoji/un/text/model/TextPosition;)I

    move-result v4

    .line 740
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineIndex(Lcom/metamoji/un/text/model/TextPosition;)I

    move-result v0

    if-eq v4, v0, :cond_1

    .line 743
    new-instance v0, Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    .line 744
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    const/4 v4, 0x0

    invoke-direct {v0, v4, v1, v3, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v1, v0

    goto :goto_0

    .line 748
    :cond_1
    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 756
    :cond_2
    :goto_0
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 757
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 758
    iget v2, v1, Landroid/graphics/RectF;->bottom:F

    const/high16 v3, 0x420c0000    # 35.0f

    mul-float/2addr v0, v3

    add-float/2addr v2, v0

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 761
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 762
    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    const/4 v1, 0x2

    .line 763
    new-array v1, v1, [I

    .line 764
    invoke-virtual {p0, v1}, Lcom/metamoji/ui/TextUnitEdit;->getLocationInWindow([I)V

    const/4 v2, 0x0

    .line 765
    aget v2, v1, v2

    const/4 v3, 0x1

    aget v1, v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 768
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 769
    invoke-virtual {p0, v1}, Lcom/metamoji/ui/TextUnitEdit;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 770
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 774
    invoke-static {p1, p2, v0}, Lcom/metamoji/nt/NtEditorWindowController;->ShowContextMenu(Ljava/util/ArrayList;Lcom/metamoji/ui/MenuEventListener;Landroid/graphics/Rect;)V

    return-void
.end method

.method private canPerformCommand(Lcom/metamoji/ui/TextUnitEdit$CommandId;)Z
    .locals 3

    .line 783
    invoke-virtual {p1}, Lcom/metamoji/ui/TextUnitEdit$CommandId;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    if-eq p1, v0, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    const/4 v2, 0x5

    if-eq p1, v2, :cond_0

    goto :goto_1

    .line 841
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit;->isContentEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v1

    .line 815
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->isEmpty()Z

    move-result p1

    :goto_0
    xor-int/2addr p1, v0

    return p1

    .line 825
    :cond_3
    invoke-static {}, Lcom/metamoji/un/text/ClipboardUtils;->canPaste()Z

    move-result p1

    if-eqz p1, :cond_6

    return v0

    .line 800
    :cond_4
    invoke-static {}, Lcom/metamoji/nt/NtTrialManager;->getInstance()Lcom/metamoji/nt/NtTrialManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/nt/NtTrialManager;->isTrialMode()Z

    move-result p1

    if-nez p1, :cond_6

    .line 804
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->isEmpty()Z

    move-result p1

    goto :goto_0

    .line 788
    :cond_5
    invoke-static {}, Lcom/metamoji/nt/NtTrialManager;->getInstance()Lcom/metamoji/nt/NtTrialManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/nt/NtTrialManager;->isTrialMode()Z

    move-result p1

    if-nez p1, :cond_6

    .line 790
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->isEmpty()Z

    move-result p1

    goto :goto_0

    :cond_6
    :goto_1
    return v1
.end method

.method private commandCopy()V
    .locals 2

    .line 904
    sget-object v0, Lcom/metamoji/ui/TextUnitEdit$CommandId;->Copy:Lcom/metamoji/ui/TextUnitEdit$CommandId;

    invoke-direct {p0, v0}, Lcom/metamoji/ui/TextUnitEdit;->canPerformCommand(Lcom/metamoji/ui/TextUnitEdit$CommandId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 905
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    .line 906
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/un/text/ClipboardUtils;->copy(Lcom/metamoji/un/text/model/TextModel;Lcom/metamoji/un/text/model/TextRange;)V

    :cond_0
    return-void
.end method

.method private commandCut()V
    .locals 1

    .line 915
    sget-object v0, Lcom/metamoji/ui/TextUnitEdit$CommandId;->Cut:Lcom/metamoji/ui/TextUnitEdit$CommandId;

    invoke-direct {p0, v0}, Lcom/metamoji/ui/TextUnitEdit;->canPerformCommand(Lcom/metamoji/ui/TextUnitEdit$CommandId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 916
    invoke-direct {p0}, Lcom/metamoji/ui/TextUnitEdit;->commandCopy()V

    .line 918
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->cut()V

    .line 920
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit;->notifySelectedRangeChanged()V

    .line 923
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit;->clearContextMenu()V

    :cond_0
    return-void
.end method

.method private commandDelete()V
    .locals 1

    .line 957
    sget-object v0, Lcom/metamoji/ui/TextUnitEdit$CommandId;->Delete:Lcom/metamoji/ui/TextUnitEdit$CommandId;

    invoke-direct {p0, v0}, Lcom/metamoji/ui/TextUnitEdit;->canPerformCommand(Lcom/metamoji/ui/TextUnitEdit$CommandId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 958
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->deleteBackward()V

    .line 959
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit;->notifySelectedRangeChanged()V

    :cond_0
    return-void
.end method

.method private commandPaste()V
    .locals 2

    .line 932
    invoke-direct {p0}, Lcom/metamoji/ui/TextUnitEdit;->isInComposition()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 935
    :cond_0
    new-instance v0, Lcom/metamoji/un/text/ClipboardUtils$PasteContent;

    invoke-direct {v0}, Lcom/metamoji/un/text/ClipboardUtils$PasteContent;-><init>()V

    .line 936
    invoke-static {v0}, Lcom/metamoji/un/text/ClipboardUtils;->getPasteContent(Lcom/metamoji/un/text/ClipboardUtils$PasteContent;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 937
    iget-object v1, v0, Lcom/metamoji/un/text/ClipboardUtils$PasteContent;->swsArray:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 938
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v1

    iget-object v0, v0, Lcom/metamoji/un/text/ClipboardUtils$PasteContent;->swsArray:Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/metamoji/un/text/model/TextModel;->paste(Ljava/util/List;)V

    goto :goto_0

    .line 940
    :cond_1
    iget-object v1, v0, Lcom/metamoji/un/text/ClipboardUtils$PasteContent;->plainText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    .line 941
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v1

    iget-object v0, v0, Lcom/metamoji/un/text/ClipboardUtils$PasteContent;->plainText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/metamoji/un/text/model/TextModel;->paste(Ljava/lang/CharSequence;)V

    .line 943
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/TextUnitEdit;->setNeedsCheckCaretHideOrNot(Lcom/metamoji/un/text/model/TextPosition;)V

    .line 945
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit;->notifySelectedRangeChanged()V

    .line 948
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit;->clearContextMenu()V

    :cond_3
    :goto_1
    return-void
.end method

.method private commandSelect()V
    .locals 2

    .line 968
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    .line 970
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/model/TextModel;->characterRangeAtPosition(Lcom/metamoji/un/text/model/TextPosition;)Lcom/metamoji/un/text/model/TextRange;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 972
    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/model/TextModel;->setSelectedTextRange(Lcom/metamoji/un/text/model/TextRange;)V

    .line 974
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit;->notifySelectedRangeChanged()V

    .line 976
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit;->setNeedsDisplay()V

    .line 979
    iget-object v0, p0, Lcom/metamoji/ui/TextUnitEdit;->_selectionModifierCursorController:Lcom/metamoji/ui/TextUnitEdit$SelectionModifierCursorController;

    invoke-virtual {v0}, Lcom/metamoji/ui/TextUnitEdit$SelectionModifierCursorController;->show()V

    .line 988
    new-instance v0, Lcom/metamoji/ui/TextUnitEdit$4;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/TextUnitEdit$4;-><init>(Lcom/metamoji/ui/TextUnitEdit;)V

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/TextUnitEdit;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private commandSelectAll()V
    .locals 2

    .line 1004
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v0

    const/4 v1, 0x0

    .line 1005
    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/model/TextRange;->setEmpty(Z)V

    .line 1006
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextModel;->beginningOfDocument()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/model/TextRange;->setStart(Lcom/metamoji/un/text/model/TextPosition;)V

    .line 1007
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextModel;->endOfDocument()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/model/TextRange;->setEnd(Lcom/metamoji/un/text/model/TextPosition;)V

    const/4 v1, 0x1

    .line 1008
    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/model/TextRange;->setSelectedAll(Z)V

    .line 1010
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit;->notifySelectedRangeChanged()V

    .line 1012
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit;->setNeedsDisplay()V

    .line 1015
    iget-object v0, p0, Lcom/metamoji/ui/TextUnitEdit;->_selectionModifierCursorController:Lcom/metamoji/ui/TextUnitEdit$SelectionModifierCursorController;

    invoke-virtual {v0}, Lcom/metamoji/ui/TextUnitEdit$SelectionModifierCursorController;->show()V

    .line 1025
    new-instance v0, Lcom/metamoji/ui/TextUnitEdit$5;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/TextUnitEdit$5;-><init>(Lcom/metamoji/ui/TextUnitEdit;)V

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/TextUnitEdit;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private getPositionListener()Lcom/metamoji/ui/TextUnitEdit$PositionListener;
    .locals 2

    .line 1851
    iget-object v0, p0, Lcom/metamoji/ui/TextUnitEdit;->mPositionListener:Lcom/metamoji/ui/TextUnitEdit$PositionListener;

    if-nez v0, :cond_0

    .line 1852
    new-instance v0, Lcom/metamoji/ui/TextUnitEdit$PositionListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/metamoji/ui/TextUnitEdit$PositionListener;-><init>(Lcom/metamoji/ui/TextUnitEdit;Lcom/metamoji/ui/TextUnitEdit-IA;)V

    iput-object v0, p0, Lcom/metamoji/ui/TextUnitEdit;->mPositionListener:Lcom/metamoji/ui/TextUnitEdit$PositionListener;

    .line 1854
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/TextUnitEdit;->mPositionListener:Lcom/metamoji/ui/TextUnitEdit$PositionListener;

    return-object v0
.end method

.method private handleCommandMenu(Lcom/metamoji/ui/TextUnitEdit$CommandId;Ljava/lang/Object;)V
    .locals 0

    .line 851
    invoke-virtual {p1}, Lcom/metamoji/ui/TextUnitEdit$CommandId;->ordinal()I

    move-result p1

    if-eqz p1, :cond_5

    const/4 p2, 0x1

    if-eq p1, p2, :cond_4

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    return-void

    .line 890
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/ui/TextUnitEdit;->commandSelectAll()V

    return-void

    .line 883
    :cond_1
    invoke-direct {p0}, Lcom/metamoji/ui/TextUnitEdit;->commandSelect()V

    return-void

    .line 876
    :cond_2
    invoke-direct {p0}, Lcom/metamoji/ui/TextUnitEdit;->commandDelete()V

    return-void

    .line 869
    :cond_3
    invoke-direct {p0}, Lcom/metamoji/ui/TextUnitEdit;->commandPaste()V

    return-void

    .line 862
    :cond_4
    invoke-direct {p0}, Lcom/metamoji/ui/TextUnitEdit;->commandCut()V

    return-void

    .line 855
    :cond_5
    invoke-direct {p0}, Lcom/metamoji/ui/TextUnitEdit;->commandCopy()V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 133
    sget-object v1, Lcom/metamoji/noteanytime/R$styleable;->TextUnitEdit:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 134
    sget p2, Lcom/metamoji/noteanytime/R$styleable;->TextUnitEdit_fontSize:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/metamoji/ui/TextUnitEdit;->_fontSize:F

    .line 135
    sget p2, Lcom/metamoji/noteanytime/R$styleable;->TextUnitEdit_placeHolder:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/TextUnitEdit;->_placeHolder:Ljava/lang/String;

    .line 139
    :cond_0
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/TextUnitEdit;->setFocusable(Z)V

    const/4 p1, 0x1

    .line 140
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/TextUnitEdit;->setClickable(Z)V

    .line 141
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/TextUnitEdit;->setLongClickable(Z)V

    .line 143
    new-instance p2, Lcom/metamoji/ui/TextUnitEdit$InsertionPointCursorController;

    invoke-direct {p2, p0}, Lcom/metamoji/ui/TextUnitEdit$InsertionPointCursorController;-><init>(Lcom/metamoji/ui/TextUnitEdit;)V

    iput-object p2, p0, Lcom/metamoji/ui/TextUnitEdit;->_insertionPointCursorController:Lcom/metamoji/ui/TextUnitEdit$InsertionPointCursorController;

    .line 144
    new-instance p2, Lcom/metamoji/ui/TextUnitEdit$SelectionModifierCursorController;

    invoke-direct {p2, p0}, Lcom/metamoji/ui/TextUnitEdit$SelectionModifierCursorController;-><init>(Lcom/metamoji/ui/TextUnitEdit;)V

    iput-object p2, p0, Lcom/metamoji/ui/TextUnitEdit;->_selectionModifierCursorController:Lcom/metamoji/ui/TextUnitEdit$SelectionModifierCursorController;

    .line 145
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 147
    iget-object v0, p0, Lcom/metamoji/ui/TextUnitEdit;->_insertionPointCursorController:Lcom/metamoji/ui/TextUnitEdit$InsertionPointCursorController;

    invoke-virtual {p2, v0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 148
    iget-object v0, p0, Lcom/metamoji/ui/TextUnitEdit;->_selectionModifierCursorController:Lcom/metamoji/ui/TextUnitEdit$SelectionModifierCursorController;

    invoke-virtual {p2, v0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 151
    :cond_1
    new-instance p2, Lcom/metamoji/ui/TextUnitEdit$1;

    invoke-direct {p2, p0}, Lcom/metamoji/ui/TextUnitEdit$1;-><init>(Lcom/metamoji/ui/TextUnitEdit;)V

    invoke-virtual {p0, p2}, Lcom/metamoji/ui/TextUnitEdit;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 p2, 0x0

    .line 160
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/TextUnitEdit;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method private isInComposition()Z
    .locals 1

    .line 1123
    iget-object v0, p0, Lcom/metamoji/ui/TextUnitEdit;->_composingSpan:Lcom/metamoji/un/text/model/TextRange;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private notifyImeCaretPos()V
    .locals 1

    .line 1203
    iget-boolean v0, p0, Lcom/metamoji/ui/TextUnitEdit;->_monitorCaretPos:Z

    if-eqz v0, :cond_0

    .line 1204
    invoke-direct {p0}, Lcom/metamoji/ui/TextUnitEdit;->updateImeCaretPos()V

    :cond_0
    return-void
.end method

.method private onTapUpEvent()V
    .locals 1

    .line 485
    iget-object v0, p0, Lcom/metamoji/ui/TextUnitEdit;->_textModel:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 489
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit;->hideSelectionModifierCursorController()V

    .line 490
    iget-object v0, p0, Lcom/metamoji/ui/TextUnitEdit;->_insertionPointCursorController:Lcom/metamoji/ui/TextUnitEdit$InsertionPointCursorController;

    invoke-virtual {v0}, Lcom/metamoji/ui/TextUnitEdit$InsertionPointCursorController;->show()V

    return-void
.end method

.method private scrollRectToVisible(Landroid/graphics/RectF;Z)V
    .locals 1

    .line 673
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 674
    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    xor-int/lit8 p1, p2, 0x1

    .line 675
    invoke-virtual {p0, v0, p1}, Lcom/metamoji/ui/TextUnitEdit;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    return-void
.end method

.method private setNeedsDisplay(Landroid/graphics/RectF;)V
    .locals 1

    .line 679
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 680
    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 681
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/TextUnitEdit;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method private setSelectedTextRange(Lcom/metamoji/un/text/model/TextRange;)V
    .locals 5

    .line 595
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    .line 597
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v1

    .line 598
    invoke-virtual {v0, p1}, Lcom/metamoji/un/text/model/TextModel;->setSelectedTextRange(Lcom/metamoji/un/text/model/TextRange;)V

    .line 603
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 605
    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v2

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/metamoji/un/text/model/TextPosition;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 607
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/metamoji/un/text/model/TextModel;->caretRectInWholeViewForPosition(Lcom/metamoji/un/text/model/TextPosition;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-direct {p0, v2, v3}, Lcom/metamoji/ui/TextUnitEdit;->scrollRectToVisible(Landroid/graphics/RectF;Z)V

    goto :goto_0

    .line 608
    :cond_0
    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v2

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/metamoji/un/text/model/TextPosition;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 610
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/metamoji/un/text/model/TextModel;->caretRectInWholeViewForPosition(Lcom/metamoji/un/text/model/TextPosition;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-direct {p0, v2, v3}, Lcom/metamoji/ui/TextUnitEdit;->scrollRectToVisible(Landroid/graphics/RectF;Z)V

    goto :goto_0

    .line 616
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/metamoji/un/text/model/TextModel;->caretRectInWholeViewForPosition(Lcom/metamoji/un/text/model/TextPosition;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-direct {p0, v2, v3}, Lcom/metamoji/ui/TextUnitEdit;->scrollRectToVisible(Landroid/graphics/RectF;Z)V

    .line 621
    :cond_2
    :goto_0
    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextRange;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 622
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit;->setNeedsDisplay()V

    goto :goto_1

    .line 624
    :cond_3
    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/model/TextModel;->caretRectInWholeViewForPosition(Lcom/metamoji/un/text/model/TextPosition;)Landroid/graphics/RectF;

    move-result-object v1

    .line 627
    invoke-direct {p0, v1}, Lcom/metamoji/ui/TextUnitEdit;->setNeedsDisplay(Landroid/graphics/RectF;)V

    .line 629
    :goto_1
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 630
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit;->setNeedsDisplay()V

    return-void

    .line 632
    :cond_4
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/un/text/model/TextModel;->caretRectInWholeViewForPosition(Lcom/metamoji/un/text/model/TextPosition;)Landroid/graphics/RectF;

    move-result-object p1

    .line 635
    invoke-direct {p0, p1}, Lcom/metamoji/ui/TextUnitEdit;->setNeedsDisplay(Landroid/graphics/RectF;)V

    return-void
.end method

.method private toMeasureSpecModeString(I)Ljava/lang/String;
    .locals 1

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_2

    if-eqz p1, :cond_1

    const/high16 v0, 0x40000000    # 2.0f

    if-eq p1, v0, :cond_0

    .line 295
    const-string p1, "UNKNOWN"

    return-object p1

    .line 292
    :cond_0
    const-string p1, "EXACTLY"

    return-object p1

    .line 293
    :cond_1
    const-string p1, "UNSPECIFIED"

    return-object p1

    .line 291
    :cond_2
    const-string p1, "AT_MOST"

    return-object p1
.end method

.method private updateImeCaretPos()V
    .locals 9

    .line 1211
    iget-object v0, p0, Lcom/metamoji/ui/TextUnitEdit;->_composingSpan:Lcom/metamoji/un/text/model/TextRange;

    if-eqz v0, :cond_0

    .line 1213
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v0

    goto :goto_0

    .line 1215
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v0

    .line 1218
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v1

    .line 1219
    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextModel;->getLineTable()Lcom/metamoji/un/text/model/linetable/LineTable;

    move-result-object v2

    .line 1220
    invoke-virtual {v2, v0, v1}, Lcom/metamoji/un/text/model/linetable/LineTable;->getRectOfTextPosition(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/ITextInput;)Landroid/graphics/RectF;

    move-result-object v1

    .line 1221
    invoke-virtual {v2, v0}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineInfoAtPosition(Lcom/metamoji/un/text/model/TextPosition;)Lcom/metamoji/un/text/model/linetable/LineInfo;

    move-result-object v0

    .line 1223
    iget v4, v1, Landroid/graphics/RectF;->left:F

    .line 1224
    iget-object v1, v0, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v5, v1, Landroid/graphics/PointF;->y:F

    .line 1225
    iget v6, v0, Lcom/metamoji/un/text/model/linetable/LineInfo;->baseline:F

    .line 1226
    iget-object v0, v0, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v7, v0, Lcom/metamoji/cm/SizeF;->height:F

    .line 1228
    iget-object v0, p0, Lcom/metamoji/ui/TextUnitEdit;->_textSprite:Lcom/metamoji/un/text/sprite/TextSprite;

    invoke-virtual {v0}, Lcom/metamoji/un/text/sprite/TextSprite;->getGlobalMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    const/4 v0, 0x2

    .line 1229
    new-array v0, v0, [I

    .line 1230
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/TextUnitEdit;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    .line 1231
    aget v1, v0, v1

    int-to-float v1, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    int-to-float v0, v0

    invoke-virtual {v3, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/4 v8, 0x0

    move-object v2, p0

    .line 1247
    invoke-static/range {v2 .. v8}, Lcom/metamoji/un/text/util/CursorInfoUpdater;->updateCursor(Landroid/view/View;Landroid/graphics/Matrix;FFFF[Landroid/graphics/RectF;)V

    return-void
.end method


# virtual methods
.method public addUndoData(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public adjustWidthInsidePaper(F)F
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public appearContextMenu()V
    .locals 5

    .line 694
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 697
    sget-object v1, Lcom/metamoji/ui/TextUnitEdit$CommandId;->Select:Lcom/metamoji/ui/TextUnitEdit$CommandId;

    invoke-direct {p0, v1}, Lcom/metamoji/ui/TextUnitEdit;->canPerformCommand(Lcom/metamoji/ui/TextUnitEdit$CommandId;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 698
    new-instance v1, Lcom/metamoji/ui/UiMenuItem;

    sget-object v3, Lcom/metamoji/ui/TextUnitEdit$CommandId;->Select:Lcom/metamoji/ui/TextUnitEdit$CommandId;

    sget v4, Lcom/metamoji/noteanytime/R$string;->ContextMenu_Select:I

    invoke-direct {v1, v3, v2, v4}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 700
    :cond_0
    sget-object v1, Lcom/metamoji/ui/TextUnitEdit$CommandId;->SelectAll:Lcom/metamoji/ui/TextUnitEdit$CommandId;

    invoke-direct {p0, v1}, Lcom/metamoji/ui/TextUnitEdit;->canPerformCommand(Lcom/metamoji/ui/TextUnitEdit$CommandId;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 701
    new-instance v1, Lcom/metamoji/ui/UiMenuItem;

    sget-object v3, Lcom/metamoji/ui/TextUnitEdit$CommandId;->SelectAll:Lcom/metamoji/ui/TextUnitEdit$CommandId;

    sget v4, Lcom/metamoji/noteanytime/R$string;->ContextMenu_SelectAll:I

    invoke-direct {v1, v3, v2, v4}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 705
    :cond_1
    sget-object v1, Lcom/metamoji/ui/TextUnitEdit$CommandId;->Cut:Lcom/metamoji/ui/TextUnitEdit$CommandId;

    invoke-direct {p0, v1}, Lcom/metamoji/ui/TextUnitEdit;->canPerformCommand(Lcom/metamoji/ui/TextUnitEdit$CommandId;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 706
    new-instance v1, Lcom/metamoji/ui/UiMenuItem;

    sget-object v3, Lcom/metamoji/ui/TextUnitEdit$CommandId;->Cut:Lcom/metamoji/ui/TextUnitEdit$CommandId;

    sget v4, Lcom/metamoji/noteanytime/R$string;->ContextMenu_Cut:I

    invoke-direct {v1, v3, v2, v4}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 708
    :cond_2
    sget-object v1, Lcom/metamoji/ui/TextUnitEdit$CommandId;->Copy:Lcom/metamoji/ui/TextUnitEdit$CommandId;

    invoke-direct {p0, v1}, Lcom/metamoji/ui/TextUnitEdit;->canPerformCommand(Lcom/metamoji/ui/TextUnitEdit$CommandId;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 709
    new-instance v1, Lcom/metamoji/ui/UiMenuItem;

    sget-object v3, Lcom/metamoji/ui/TextUnitEdit$CommandId;->Copy:Lcom/metamoji/ui/TextUnitEdit$CommandId;

    sget v4, Lcom/metamoji/noteanytime/R$string;->ContextMenu_Copy:I

    invoke-direct {v1, v3, v2, v4}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 711
    :cond_3
    sget-object v1, Lcom/metamoji/ui/TextUnitEdit$CommandId;->Paste:Lcom/metamoji/ui/TextUnitEdit$CommandId;

    invoke-direct {p0, v1}, Lcom/metamoji/ui/TextUnitEdit;->canPerformCommand(Lcom/metamoji/ui/TextUnitEdit$CommandId;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 712
    new-instance v1, Lcom/metamoji/ui/UiMenuItem;

    sget-object v3, Lcom/metamoji/ui/TextUnitEdit$CommandId;->Paste:Lcom/metamoji/ui/TextUnitEdit$CommandId;

    sget v4, Lcom/metamoji/noteanytime/R$string;->ContextMenu_Paste:I

    invoke-direct {v1, v3, v2, v4}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 714
    :cond_4
    sget-object v1, Lcom/metamoji/ui/TextUnitEdit$CommandId;->Delete:Lcom/metamoji/ui/TextUnitEdit$CommandId;

    invoke-direct {p0, v1}, Lcom/metamoji/ui/TextUnitEdit;->canPerformCommand(Lcom/metamoji/ui/TextUnitEdit$CommandId;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 715
    new-instance v1, Lcom/metamoji/ui/UiMenuItem;

    sget-object v3, Lcom/metamoji/ui/TextUnitEdit$CommandId;->Delete:Lcom/metamoji/ui/TextUnitEdit$CommandId;

    sget v4, Lcom/metamoji/noteanytime/R$string;->ContextMenu_Remove:I

    invoke-direct {v1, v3, v2, v4}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 718
    :cond_5
    new-instance v1, Lcom/metamoji/ui/TextUnitEdit$3;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/TextUnitEdit$3;-><init>(Lcom/metamoji/ui/TextUnitEdit;)V

    .line 725
    invoke-direct {p0, v0, v1}, Lcom/metamoji/ui/TextUnitEdit;->appearContextMenuInPosition(Ljava/util/ArrayList;Lcom/metamoji/ui/MenuEventListener;)V

    return-void
.end method

.method public applyBackgroundColorToMazec()V
    .locals 0

    return-void
.end method

.method public changedTextModelModified(Z)V
    .locals 0

    return-void
.end method

.method public changedUnitStyle(Lcom/metamoji/un/text/model/UnitStyles;)V
    .locals 0

    return-void
.end method

.method public checkSpellingAt(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/cm/IAction1;)V
    .locals 0
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

    return-void
.end method

.method public checkUnitMinSize(Lcom/metamoji/cm/SizeF;)V
    .locals 3

    .line 1055
    iget p1, p1, Lcom/metamoji/cm/SizeF;->height:F

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float v0, p1

    .line 1056
    iget-object v1, p0, Lcom/metamoji/ui/TextUnitEdit;->_textModel:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextModel;->getUnitHeight()F

    move-result v1

    cmpl-float v1, v0, v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/metamoji/ui/TextUnitEdit;->_textSprite:Lcom/metamoji/un/text/sprite/TextSprite;

    invoke-virtual {v1}, Lcom/metamoji/un/text/sprite/TextSprite;->getHeight()F

    move-result v1

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 1057
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/metamoji/ui/TextUnitEdit;->_textModel:Lcom/metamoji/un/text/model/TextModel;

    const-string v2, "height"

    invoke-virtual {v1, v2, p1}, Lcom/metamoji/un/text/model/TextModel;->setProperty(Ljava/lang/String;I)V

    .line 1058
    iget-object p1, p0, Lcom/metamoji/ui/TextUnitEdit;->_textSprite:Lcom/metamoji/un/text/sprite/TextSprite;

    invoke-virtual {p1, v0}, Lcom/metamoji/un/text/sprite/TextSprite;->setHeight(F)V

    .line 1059
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit;->requestLayout()V

    return-void
.end method

.method public checkUnitMinSizeOnInit(Lcom/metamoji/cm/SizeF;)V
    .locals 2

    .line 1066
    iget p1, p1, Lcom/metamoji/cm/SizeF;->height:F

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1067
    iget-object v0, p0, Lcom/metamoji/ui/TextUnitEdit;->_textModel:Lcom/metamoji/un/text/model/TextModel;

    const-string v1, "height"

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/un/text/model/TextModel;->setProperty(Ljava/lang/String;I)V

    return-void
.end method

.method public clearContextMenu()V
    .locals 0

    .line 778
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->cancelAllMenus()V

    return-void
.end method

.method public delayShareSendTextUnitDataAfterUndoOrRedo(Z)V
    .locals 0

    return-void
.end method

.method public detatchTextModel()Lcom/metamoji/un/text/model/TextModel;
    .locals 3

    .line 275
    iget-object v0, p0, Lcom/metamoji/ui/TextUnitEdit;->_textModel:Lcom/metamoji/un/text/model/TextModel;

    const/4 v1, 0x0

    .line 276
    iput-object v1, v0, Lcom/metamoji/un/text/model/TextModel;->unitControllerDelegate:Lcom/metamoji/un/text/IUnTextUnitDelegate;

    .line 278
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit;->initTextModel()V

    .line 281
    invoke-direct {p0}, Lcom/metamoji/ui/TextUnitEdit;->isInComposition()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 282
    invoke-virtual {p0, v1}, Lcom/metamoji/ui/TextUnitEdit;->setComposingSpan(Lcom/metamoji/un/text/model/TextRange;)V

    :cond_0
    return-object v0
.end method

.method public didEndMakingLineTable()V
    .locals 0

    return-void
.end method

.method public endEditTextTask()V
    .locals 0

    return-void
.end method

.method public endReconvertTaskIfNeeded()V
    .locals 0

    return-void
.end method

.method public getComposingSpan()Lcom/metamoji/un/text/model/TextRange;
    .locals 1

    .line 1127
    iget-object v0, p0, Lcom/metamoji/ui/TextUnitEdit;->_composingSpan:Lcom/metamoji/un/text/model/TextRange;

    return-object v0
.end method

.method public getGeometricUndoOrRedo(Lcom/metamoji/df/controller/GeometricProps;)Lcom/metamoji/df/controller/GeometricProps;
    .locals 0

    const/4 p1, 0x0

    return-object p1
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

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMazecAction()Lcom/metamoji/un/text/MazecAction;
    .locals 1

    .line 1103
    iget-object v0, p0, Lcom/metamoji/ui/TextUnitEdit;->_mazecAction:Lcom/metamoji/un/text/MazecAction;

    if-nez v0, :cond_0

    .line 1104
    new-instance v0, Lcom/metamoji/un/text/MazecAction;

    invoke-direct {v0, p0}, Lcom/metamoji/un/text/MazecAction;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/metamoji/ui/TextUnitEdit;->_mazecAction:Lcom/metamoji/un/text/MazecAction;

    .line 1106
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/TextUnitEdit;->_mazecAction:Lcom/metamoji/un/text/MazecAction;

    return-object v0
.end method

.method public getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;
    .locals 1

    .line 1183
    iget-object v0, p0, Lcom/metamoji/ui/TextUnitEdit;->_textModel:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v0

    return-object v0
.end method

.method public getTextModel()Lcom/metamoji/un/text/model/TextModel;
    .locals 1

    .line 1098
    iget-object v0, p0, Lcom/metamoji/ui/TextUnitEdit;->_textModel:Lcom/metamoji/un/text/model/TextModel;

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

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUnitFilterColor()Lcom/metamoji/un/text/model/ColorComponent;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public hasTag(Lcom/metamoji/un/text/model/MMJEdTrdParagraphMark;Lcom/metamoji/un/text/model/paragtable/ParagraphInfo;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public hideControllers()V
    .locals 0

    .line 1267
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit;->hideInsertionPointCursorController()V

    .line 1268
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit;->hideSelectionModifierCursorController()V

    return-void
.end method

.method public hideInsertionPointCursorController()V
    .locals 2

    .line 1271
    iget-object v0, p0, Lcom/metamoji/ui/TextUnitEdit;->_insertionPointCursorController:Lcom/metamoji/ui/TextUnitEdit$InsertionPointCursorController;

    invoke-virtual {v0}, Lcom/metamoji/ui/TextUnitEdit$InsertionPointCursorController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1272
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ui/TextUnitEdit$7;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/TextUnitEdit$7;-><init>(Lcom/metamoji/ui/TextUnitEdit;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->runOnUIThreadAsync(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public hideSelectionModifierCursorController()V
    .locals 2

    .line 1282
    iget-object v0, p0, Lcom/metamoji/ui/TextUnitEdit;->_selectionModifierCursorController:Lcom/metamoji/ui/TextUnitEdit$SelectionModifierCursorController;

    invoke-virtual {v0}, Lcom/metamoji/ui/TextUnitEdit$SelectionModifierCursorController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1283
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ui/TextUnitEdit$8;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/TextUnitEdit$8;-><init>(Lcom/metamoji/ui/TextUnitEdit;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->runOnUIThreadAsync(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public hideSoftInput()Z
    .locals 3

    .line 439
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 441
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method public initTextModel()V
    .locals 5

    .line 225
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 227
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 229
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v1

    .line 230
    iget v2, p0, Lcom/metamoji/ui/TextUnitEdit;->_restoreTextModelId:I

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne v3, v2, :cond_2

    .line 232
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getTextUnitSettings()Lcom/metamoji/un/text/IUnTextSettings;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/metamoji/un/text/UnTextUnit;->createNewTextModel(Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/un/text/IUnTextSettings;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/text/model/TextModel;

    iput-object v0, p0, Lcom/metamoji/ui/TextUnitEdit;->_textModel:Lcom/metamoji/un/text/model/TextModel;

    .line 235
    new-instance v1, Lcom/metamoji/ui/TextUnitEdit$2;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/TextUnitEdit$2;-><init>(Lcom/metamoji/ui/TextUnitEdit;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/model/TextModel;->setUnitStyles(Lcom/metamoji/un/text/model/UnitStyles;)V

    .line 245
    iget-object v0, p0, Lcom/metamoji/ui/TextUnitEdit;->_textModel:Lcom/metamoji/un/text/model/TextModel;

    iput-boolean v4, v0, Lcom/metamoji/un/text/model/TextModel;->unitWidthSelfAdjustment:Z

    goto :goto_1

    .line 248
    :cond_2
    invoke-interface {v1, v2}, Lcom/metamoji/df/model/IModelManager;->getModelByID(I)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/text/model/TextModel;

    iput-object v0, p0, Lcom/metamoji/ui/TextUnitEdit;->_textModel:Lcom/metamoji/un/text/model/TextModel;

    .line 249
    iput v3, p0, Lcom/metamoji/ui/TextUnitEdit;->_restoreTextModelId:I

    .line 252
    const-string/jumbo v1, "width"

    invoke-virtual {v0, v1, v4}, Lcom/metamoji/un/text/model/TextModel;->setProperty(Ljava/lang/String;I)V

    .line 256
    :goto_1
    iget-object v0, p0, Lcom/metamoji/ui/TextUnitEdit;->_textSprite:Lcom/metamoji/un/text/sprite/TextSprite;

    .line 257
    new-instance v1, Lcom/metamoji/un/text/sprite/TextSprite;

    invoke-direct {v1}, Lcom/metamoji/un/text/sprite/TextSprite;-><init>()V

    iput-object v1, p0, Lcom/metamoji/ui/TextUnitEdit;->_textSprite:Lcom/metamoji/un/text/sprite/TextSprite;

    .line 258
    iget-object v2, p0, Lcom/metamoji/ui/TextUnitEdit;->_textModel:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {v1, v2}, Lcom/metamoji/un/text/sprite/TextSprite;->setTextModel(Lcom/metamoji/un/text/model/TextModel;)V

    .line 259
    iget-object v1, p0, Lcom/metamoji/ui/TextUnitEdit;->_textSprite:Lcom/metamoji/un/text/sprite/TextSprite;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/metamoji/un/text/sprite/TextSprite;->isRedererCursor()Z

    move-result v4

    :cond_3
    invoke-virtual {v1, v4}, Lcom/metamoji/un/text/sprite/TextSprite;->setRendererCursor(Z)V

    .line 261
    iget-object v0, p0, Lcom/metamoji/ui/TextUnitEdit;->_textModel:Lcom/metamoji/un/text/model/TextModel;

    iput-object p0, v0, Lcom/metamoji/un/text/model/TextModel;->unitControllerDelegate:Lcom/metamoji/un/text/IUnTextUnitDelegate;

    .line 262
    iget-object v0, p0, Lcom/metamoji/ui/TextUnitEdit;->_textModel:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {v0, p0}, Lcom/metamoji/un/text/model/TextModel;->setEditTextUndoManager(Lcom/metamoji/un/text/model/undo/ITextUndoManager;)V

    const/4 v0, 0x1

    .line 264
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/TextUnitEdit;->setFocusableInTouchMode(Z)V

    .line 266
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit;->requestLayout()V

    return-void
.end method

.method public insertStrokes(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
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

    if-nez p2, :cond_0

    .line 1112
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/metamoji/un/text/model/TextModel;->insertStrokes(Ljava/util/List;)V

    goto :goto_0

    .line 1115
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/metamoji/un/text/model/TextModel;->insertText(Ljava/lang/String;Ljava/util/List;)V

    .line 1117
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/TextUnitEdit;->setNeedsCheckCaretHideOrNot(Lcom/metamoji/un/text/model/TextPosition;)V

    return-void
.end method

.method public isContentEmpty()Z
    .locals 1

    .line 1034
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->isContentEmpty()Z

    move-result v0

    return v0
.end method

.method public isVisibleHotSpots()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public moveCaretToPoint(Landroid/graphics/PointF;)V
    .locals 1

    .line 588
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/un/text/model/TextModel;->closestPositionToPoint(Landroid/graphics/PointF;)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    .line 589
    new-instance v0, Lcom/metamoji/un/text/model/TextRange;

    invoke-direct {v0, p1}, Lcom/metamoji/un/text/model/TextRange;-><init>(Lcom/metamoji/un/text/model/TextPosition;)V

    .line 590
    invoke-direct {p0, v0}, Lcom/metamoji/ui/TextUnitEdit;->setSelectedTextRange(Lcom/metamoji/un/text/model/TextRange;)V

    .line 591
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit;->notifySelectedRangeChanged()V

    return-void
.end method

.method public notifySelectedRangeChanged()V
    .locals 2

    .line 642
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit;->getMazecAction()Lcom/metamoji/un/text/MazecAction;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 644
    iget-object v1, p0, Lcom/metamoji/ui/TextUnitEdit;->_textModel:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextModel;->getStrokesBeforeCaret()Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/MazecAction;->notifyCursorChanged(Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;)V

    .line 646
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit;->updateImmSelection()V

    return-void
.end method

.method public onCheckIsTextEditor()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    const/4 v0, 0x1

    .line 420
    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const v0, 0x10000001

    .line 421
    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 424
    const-string v0, "com.metamoji.mazec-api?ver=2"

    iput-object v0, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    .line 426
    new-instance p1, Lcom/metamoji/un/text/TUInputConnection;

    invoke-direct {p1, p0, p0}, Lcom/metamoji/un/text/TUInputConnection;-><init>(Landroid/view/View;Lcom/metamoji/un/text/ITUInputConnectionClient;)V

    return-object p1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 373
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 375
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 377
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit;->hideControllers()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 394
    iget-object v0, p0, Lcom/metamoji/ui/TextUnitEdit;->_textModel:Lcom/metamoji/un/text/model/TextModel;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 399
    :cond_0
    new-instance v0, Lcom/metamoji/df/sprite/CanvasContext;

    invoke-direct {v0}, Lcom/metamoji/df/sprite/CanvasContext;-><init>()V

    .line 400
    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/CanvasContext;->setCanvas(Landroid/graphics/Canvas;)V

    .line 401
    iget-object v1, p0, Lcom/metamoji/ui/TextUnitEdit;->_textSprite:Lcom/metamoji/un/text/sprite/TextSprite;

    invoke-virtual {v1, v0}, Lcom/metamoji/un/text/sprite/TextSprite;->paint(Lcom/metamoji/df/sprite/Context;)V

    .line 404
    iget-object v0, p0, Lcom/metamoji/ui/TextUnitEdit;->_placeHolderLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/ui/TextUnitEdit;->_textModel:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->isContentEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 405
    iget-object v0, p0, Lcom/metamoji/ui/TextUnitEdit;->_textModel:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/model/TextModel;->caretRectInWholeViewForPosition(Lcom/metamoji/un/text/model/TextPosition;)Landroid/graphics/RectF;

    move-result-object v0

    .line 406
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 407
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v0, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 408
    iget-object v0, p0, Lcom/metamoji/ui/TextUnitEdit;->_placeHolderLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 409
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    return-void

    .line 395
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 343
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 346
    iget-object p2, p0, Lcom/metamoji/ui/TextUnitEdit;->_textSprite:Lcom/metamoji/un/text/sprite/TextSprite;

    invoke-virtual {p2}, Lcom/metamoji/un/text/sprite/TextSprite;->isRedererCursor()Z

    move-result p2

    if-eq p2, p1, :cond_0

    .line 351
    iget-object p2, p0, Lcom/metamoji/ui/TextUnitEdit;->_textSprite:Lcom/metamoji/un/text/sprite/TextSprite;

    invoke-virtual {p2, p1}, Lcom/metamoji/un/text/sprite/TextSprite;->setRendererCursor(Z)V

    .line 352
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit;->setNeedsDisplay()V

    :cond_0
    if-nez p1, :cond_1

    .line 356
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit;->hideControllers()V

    return-void

    .line 358
    :cond_1
    invoke-direct {p0}, Lcom/metamoji/ui/TextUnitEdit;->notifyImeCaretPos()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 513
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_5

    if-ltz p2, :cond_0

    const/16 v2, 0x1f

    if-le p2, v2, :cond_1

    :cond_0
    const/16 v2, 0x80

    if-gt v2, p2, :cond_4

    const/16 v2, 0x9f

    if-gt p2, v2, :cond_4

    .line 517
    :cond_1
    invoke-static {}, Lcom/metamoji/cm/CharacterSet;->newlineCharacterSet()Lcom/metamoji/cm/CharacterSet;

    move-result-object v2

    int-to-char p2, p2

    invoke-virtual {v2, p2}, Lcom/metamoji/cm/CharacterSet;->characterIsMember(I)Z

    move-result p2

    if-eqz p2, :cond_2

    const/16 p2, 0xa

    goto :goto_0

    :cond_2
    const/16 p2, 0x3d

    if-ne p2, p1, :cond_3

    return v1

    :cond_3
    return v0

    .line 529
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "%c"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/un/text/model/TextModel;->insertText(Ljava/lang/String;)V

    .line 530
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/TextUnitEdit;->setNeedsCheckCaretHideOrNot(Lcom/metamoji/un/text/model/TextPosition;)V

    .line 532
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit;->notifySelectedRangeChanged()V

    return v1

    :cond_5
    const/16 p2, 0x43

    if-ne p2, p1, :cond_6

    .line 538
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit;->endReconvertTaskIfNeeded()V

    .line 541
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextModel;->deleteBackward()V

    .line 542
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/TextUnitEdit;->setNeedsCheckCaretHideOrNot(Lcom/metamoji/un/text/model/TextPosition;)V

    .line 544
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit;->notifySelectedRangeChanged()V

    return v1

    :cond_6
    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_1

    .line 556
    :pswitch_0
    sget-object p1, Lcom/metamoji/un/text/model/TextLayoutDirection;->Right:Lcom/metamoji/un/text/model/TextLayoutDirection;

    goto :goto_1

    .line 554
    :pswitch_1
    sget-object p1, Lcom/metamoji/un/text/model/TextLayoutDirection;->Left:Lcom/metamoji/un/text/model/TextLayoutDirection;

    goto :goto_1

    .line 560
    :pswitch_2
    sget-object p1, Lcom/metamoji/un/text/model/TextLayoutDirection;->Down:Lcom/metamoji/un/text/model/TextLayoutDirection;

    goto :goto_1

    .line 558
    :pswitch_3
    sget-object p1, Lcom/metamoji/un/text/model/TextLayoutDirection;->Up:Lcom/metamoji/un/text/model/TextLayoutDirection;

    :goto_1
    if-eqz p1, :cond_7

    .line 563
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/un/text/model/TextModel;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p2

    .line 564
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    invoke-virtual {v0, p2, p1, v1}, Lcom/metamoji/un/text/model/TextModel;->positionFromPosition(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/TextLayoutDirection;I)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    .line 565
    new-instance p2, Lcom/metamoji/un/text/model/TextRange;

    invoke-direct {p2, p1}, Lcom/metamoji/un/text/model/TextRange;-><init>(Lcom/metamoji/un/text/model/TextPosition;)V

    invoke-direct {p0, p2}, Lcom/metamoji/ui/TextUnitEdit;->setSelectedTextRange(Lcom/metamoji/un/text/model/TextRange;)V

    .line 566
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit;->notifySelectedRangeChanged()V

    return v1

    :cond_7
    return v0

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 p2, 0x17

    const/4 v0, 0x0

    if-eq p1, p2, :cond_0

    return v0

    .line 579
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "input_method"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_1

    .line 581
    invoke-virtual {p1, p0, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method protected onMeasure(II)V
    .locals 10

    .line 301
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 308
    iget-object v1, p0, Lcom/metamoji/ui/TextUnitEdit;->_textModel:Lcom/metamoji/un/text/model/TextModel;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v1

    if-eqz v1, :cond_4

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v1, v0, :cond_0

    goto :goto_1

    .line 314
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    const/4 p1, 0x1

    if-eqz v5, :cond_1

    .line 317
    iget-object p2, p0, Lcom/metamoji/ui/TextUnitEdit;->_textModel:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {p2}, Lcom/metamoji/un/text/model/TextModel;->getUnitWidth()F

    move-result p2

    int-to-float v0, v5

    cmpl-float p2, p2, v0

    if-eqz p2, :cond_1

    .line 318
    iget-object p2, p0, Lcom/metamoji/ui/TextUnitEdit;->_textModel:Lcom/metamoji/un/text/model/TextModel;

    const-string/jumbo v0, "width"

    invoke-virtual {p2, v0, v5}, Lcom/metamoji/un/text/model/TextModel;->setProperty(Ljava/lang/String;I)V

    .line 319
    iget-object p2, p0, Lcom/metamoji/ui/TextUnitEdit;->_textModel:Lcom/metamoji/un/text/model/TextModel;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Lcom/metamoji/un/text/model/TextModel;->needsRemakeLineTable(Lcom/metamoji/un/text/model/TextPosition;Z)V

    .line 320
    iget-object p2, p0, Lcom/metamoji/ui/TextUnitEdit;->_textModel:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {p2}, Lcom/metamoji/un/text/model/TextModel;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/metamoji/ui/TextUnitEdit;->setNeedsCheckCaretHideOrNot(Lcom/metamoji/un/text/model/TextPosition;)V

    .line 321
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit;->invalidate()V

    .line 323
    :cond_1
    iget-object p2, p0, Lcom/metamoji/ui/TextUnitEdit;->_textModel:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {p2}, Lcom/metamoji/un/text/model/TextModel;->getUnitHeight()F

    move-result p2

    float-to-int p2, p2

    .line 325
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 327
    iget-object v0, p0, Lcom/metamoji/ui/TextUnitEdit;->_textSprite:Lcom/metamoji/un/text/sprite/TextSprite;

    int-to-float v1, v5

    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/sprite/TextSprite;->setWidth(F)V

    .line 328
    iget-object v0, p0, Lcom/metamoji/ui/TextUnitEdit;->_textSprite:Lcom/metamoji/un/text/sprite/TextSprite;

    if-eqz v5, :cond_2

    int-to-float v1, p2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/sprite/TextSprite;->setHeight(F)V

    .line 331
    iget-object v0, p0, Lcom/metamoji/ui/TextUnitEdit;->_placeHolder:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 332
    new-instance v4, Landroid/text/TextPaint;

    invoke-direct {v4, p1}, Landroid/text/TextPaint;-><init>(I)V

    const p1, -0x777778

    .line 333
    invoke-virtual {v4, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 334
    iget p1, p0, Lcom/metamoji/ui/TextUnitEdit;->_fontSize:F

    invoke-virtual {v4, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 335
    new-instance v2, Landroid/text/StaticLayout;

    iget-object v3, p0, Lcom/metamoji/ui/TextUnitEdit;->_placeHolder:Ljava/lang/String;

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v2, p0, Lcom/metamoji/ui/TextUnitEdit;->_placeHolderLayout:Landroid/text/StaticLayout;

    .line 338
    :cond_3
    invoke-virtual {p0, v5, p2}, Lcom/metamoji/ui/TextUnitEdit;->setMeasuredDimension(II)V

    return-void

    .line 309
    :cond_4
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public onPreDraw()Z
    .locals 2

    .line 384
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/model/TextModel;->caretRectInWholeViewForPosition(Lcom/metamoji/un/text/model/TextPosition;)Landroid/graphics/RectF;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/metamoji/ui/TextUnitEdit;->scrollRectToVisible(Landroid/graphics/RectF;Z)V

    .line 386
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x1

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 181
    instance-of v0, p1, Lcom/metamoji/ui/TextUnitEdit$SavedState;

    if-nez v0, :cond_0

    .line 182
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 186
    :cond_0
    check-cast p1, Lcom/metamoji/ui/TextUnitEdit$SavedState;

    .line 187
    invoke-virtual {p1}, Lcom/metamoji/ui/TextUnitEdit$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 189
    iget p1, p1, Lcom/metamoji/ui/TextUnitEdit$SavedState;->textModelId:I

    iput p1, p0, Lcom/metamoji/ui/TextUnitEdit;->_restoreTextModelId:I

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 170
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 171
    iget-object v1, p0, Lcom/metamoji/ui/TextUnitEdit;->_textModel:Lcom/metamoji/un/text/model/TextModel;

    if-eqz v1, :cond_0

    .line 172
    new-instance v1, Lcom/metamoji/ui/TextUnitEdit$SavedState;

    invoke-direct {v1, v0}, Lcom/metamoji/ui/TextUnitEdit$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 173
    iget-object v0, p0, Lcom/metamoji/ui/TextUnitEdit;->_textModel:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getModelID()I

    move-result v0

    iput v0, v1, Lcom/metamoji/ui/TextUnitEdit$SavedState;->textModelId:I

    return-object v1

    :cond_0
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 448
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 450
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 452
    iget-object v2, p0, Lcom/metamoji/ui/TextUnitEdit;->_textModel:Lcom/metamoji/un/text/model/TextModel;

    if-nez v2, :cond_0

    return v1

    .line 457
    :cond_0
    iget-boolean v2, p0, Lcom/metamoji/ui/TextUnitEdit;->_eatTouchRelease:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    if-ne v0, v4, :cond_1

    .line 459
    iput-boolean v3, p0, Lcom/metamoji/ui/TextUnitEdit;->_eatTouchRelease:Z

    return v1

    :cond_1
    if-ne v0, v4, :cond_2

    .line 463
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_0
    if-eqz v0, :cond_4

    .line 469
    invoke-direct {p0}, Lcom/metamoji/ui/TextUnitEdit;->isInComposition()Z

    move-result v0

    if-eqz v0, :cond_3

    return v4

    .line 472
    :cond_3
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/TextUnitEdit;->moveCaretToPoint(Landroid/graphics/PointF;)V

    .line 476
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit;->showSoftInput()Z

    .line 479
    invoke-direct {p0}, Lcom/metamoji/ui/TextUnitEdit;->onTapUpEvent()V

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    :goto_1
    return v4

    :cond_5
    return v3
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 364
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    if-nez p1, :cond_0

    .line 367
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit;->hideControllers()V

    :cond_0
    return-void
.end method

.method public overrideAttributesByStyleBar(Lcom/metamoji/un/text/model/attr/Attributes;)Lcom/metamoji/un/text/model/attr/Attributes;
    .locals 0

    return-object p1
.end method

.method public performLongClick()Z
    .locals 2

    .line 496
    iget-object v0, p0, Lcom/metamoji/ui/TextUnitEdit;->_textModel:Lcom/metamoji/un/text/model/TextModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/metamoji/ui/TextUnitEdit;->isInComposition()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 500
    :cond_0
    invoke-super {p0}, Landroid/view/View;->performLongClick()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 502
    iput-boolean v0, p0, Lcom/metamoji/ui/TextUnitEdit;->_eatTouchRelease:Z

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public remakeLineTableAfter()V
    .locals 0

    return-void
.end method

.method public remakeLineTableBefore()V
    .locals 0

    return-void
.end method

.method public removeSpellErrorLocations(Lcom/metamoji/un/text/model/TextPosition;)V
    .locals 0

    return-void
.end method

.method public requestCursorUpdates(I)Z
    .locals 1

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    .line 1196
    invoke-direct {p0}, Lcom/metamoji/ui/TextUnitEdit;->updateImeCaretPos()V

    :cond_0
    and-int/lit8 p1, p1, 0x2

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1198
    :goto_0
    iput-boolean p1, p0, Lcom/metamoji/ui/TextUnitEdit;->_monitorCaretPos:Z

    return v0
.end method

.method public selectRangeAfterSendStrokes(I)V
    .locals 0

    return-void
.end method

.method public setComposingSpan(Lcom/metamoji/un/text/model/TextRange;)V
    .locals 1

    .line 1131
    iget-object v0, p0, Lcom/metamoji/ui/TextUnitEdit;->_composingSpan:Lcom/metamoji/un/text/model/TextRange;

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_0

    .line 1132
    invoke-virtual {p1, v0}, Lcom/metamoji/un/text/model/TextRange;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1134
    :cond_0
    iput-object p1, p0, Lcom/metamoji/ui/TextUnitEdit;->_composingSpan:Lcom/metamoji/un/text/model/TextRange;

    .line 1135
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit;->setNeedsDisplay()V

    :cond_1
    return-void
.end method

.method public setDuringInsertComposingText(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 1144
    invoke-direct {p0}, Lcom/metamoji/ui/TextUnitEdit;->notifyImeCaretPos()V

    :cond_0
    return-void
.end method

.method public setGeometricUndoOrRedo(Lcom/metamoji/df/controller/GeometricProps;Lcom/metamoji/df/model/IModel;ZZ)V
    .locals 0

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

    return-void
.end method

.method public setNeedsCheckCaretHideOrNot(Lcom/metamoji/un/text/model/TextPosition;)V
    .locals 1

    .line 1156
    new-instance p1, Lcom/metamoji/ui/TextUnitEdit$6;

    invoke-direct {p1, p0}, Lcom/metamoji/ui/TextUnitEdit$6;-><init>(Lcom/metamoji/ui/TextUnitEdit;)V

    .line 1172
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getLineTable()Lcom/metamoji/un/text/model/linetable/LineTable;

    move-result-object v0

    iget-boolean v0, v0, Lcom/metamoji/un/text/model/linetable/LineTable;->needsReconstruct:Z

    if-nez v0, :cond_0

    .line 1173
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 1177
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/TextUnitEdit;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setNeedsDisplay()V
    .locals 0

    .line 1040
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit;->invalidate()V

    return-void
.end method

.method public setNeedsDisplayFrom(Lcom/metamoji/un/text/model/TextPosition;)V
    .locals 0

    .line 1045
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit;->invalidate()V

    return-void
.end method

.method public setQueueing(Z)V
    .locals 0

    return-void
.end method

.method public setSupportReedit(Z)V
    .locals 0

    return-void
.end method

.method public setUnitNoDropShadowUndoOrRedo(Z)V
    .locals 0

    return-void
.end method

.method public setUnitNotDelWhenEmptyUndoOrRedo(Z)V
    .locals 0

    return-void
.end method

.method public shareSendTextUnitData()V
    .locals 0

    return-void
.end method

.method public showSoftInput()Z
    .locals 2

    .line 431
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 433
    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method public skipStrokeReedit()V
    .locals 0

    return-void
.end method

.method public startEditTextTask(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public transcribeUnitBorderStyle(Lcom/metamoji/un/text/model/UnitBorderStyle;)Lcom/metamoji/un/text/model/UnitBorderStyle;
    .locals 0

    return-object p1
.end method

.method public updateCursorControlerPositions()V
    .locals 0

    return-void
.end method

.method public updateImmSelection()V
    .locals 7

    .line 652
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v1, :cond_1

    .line 655
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v0

    .line 656
    iget-object v2, p0, Lcom/metamoji/ui/TextUnitEdit;->_textModel:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/TextModel;->beginningOfDocument()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v3

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/metamoji/un/text/model/TextModel;->offsetFromPosition(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/TextPosition;)I

    move-result v3

    .line 659
    iget-object v0, p0, Lcom/metamoji/ui/TextUnitEdit;->_composingSpan:Lcom/metamoji/un/text/model/TextRange;

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Lcom/metamoji/ui/TextUnitEdit;->_textModel:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->beginningOfDocument()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v2

    iget-object v4, p0, Lcom/metamoji/ui/TextUnitEdit;->_composingSpan:Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {v4}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/metamoji/un/text/model/TextModel;->offsetFromPosition(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/TextPosition;)I

    move-result v0

    .line 661
    iget-object v2, p0, Lcom/metamoji/ui/TextUnitEdit;->_textModel:Lcom/metamoji/un/text/model/TextModel;

    iget-object v4, p0, Lcom/metamoji/ui/TextUnitEdit;->_composingSpan:Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {v4}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v4

    iget-object v5, p0, Lcom/metamoji/ui/TextUnitEdit;->_composingSpan:Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {v5}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/metamoji/un/text/model/TextModel;->offsetFromPosition(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/TextPosition;)I

    move-result v2

    add-int/2addr v2, v0

    move v5, v0

    move v6, v2

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    move v5, v0

    move v6, v5

    :goto_0
    move v4, v3

    move-object v2, p0

    .line 663
    invoke-virtual/range {v1 .. v6}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    :cond_1
    return-void
.end method
